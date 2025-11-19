char *sub_218F8D97C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v17 = v4;
    while (v19)
    {
      v9 = MEMORY[0x21CECE0F0](v6, v4);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v23 = v9;
      a1(&v21, &v23);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v7;
      }

      swift_unknownObjectRelease();
      v11 = v22;
      if (v22)
      {
        v12 = i;
        v13 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2191F8C80(0, *(v7 + 2) + 1, 1, v7);
        }

        v15 = *(v7 + 2);
        v14 = *(v7 + 3);
        if (v15 >= v14 >> 1)
        {
          v7 = sub_2191F8C80((v14 > 1), v15 + 1, 1, v7);
        }

        *(v7 + 2) = v15 + 1;
        v8 = &v7[16 * v15];
        *(v8 + 4) = v13;
        *(v8 + 5) = v11;
        v4 = v17;
        i = v12;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    if (v6 >= *(v18 + 16))
    {
      goto LABEL_20;
    }

    v9 = *(v4 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_218F8DB48(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218F9396C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_219BF3C84() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218F9396C);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for TagFeedModel);
      sub_21872D044(v20, v30, type metadata accessor for TagFeedModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2191F7090(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2191F7090(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TagFeedModel);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_218F8DE60(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_21897ED8C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953B70();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218953C5C();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E49D1C();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_27CC12A30, sub_218953C5C);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_27CC0B158, sub_218953C5C);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218E49D1C);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_21897ED8C);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F8FC4(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F8FC4(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218E49D1C);
  }

  return v49;
}

char *sub_218F8E3CC(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v17 = i;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CECE0F0](v6, a3);
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v22 = v9;
      a1(&v20, &v22);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v7;
      }

      swift_unknownObjectRelease();
      if (v20)
      {
        v19 = v20;
        v11 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2191F902C(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        v14 = v19;
        if (v13 >= v12 >> 1)
        {
          v15 = sub_2191F902C((v12 > 1), v13 + 1, 1, v7);
          v14 = v19;
          v7 = v15;
        }

        *(v7 + 2) = v13 + 1;
        v8 = &v7[24 * v13];
        *(v8 + 2) = v14;
        *(v8 + 6) = v11;
        i = v17;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v9 = *(a3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v10 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_218F8E5AC(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v20[0] = *(v6 - 2);
    v20[1] = v9;
    v20[2] = v10;

    swift_unknownObjectRetain();

    a1(&v17, v20);
    if (v3)
    {
      break;
    }

    swift_unknownObjectRelease();
    if (v17)
    {
      v16 = v17;
      v11 = v18;
      v12 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2191F9198(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_2191F9198((v13 > 1), v14 + 1, 1, v7);
      }

      *(v7 + 2) = v14 + 1;
      v8 = &v7[32 * v14];
      *(v8 + 2) = v16;
      *(v8 + 6) = v11;
      *(v8 + 7) = v12;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  swift_unknownObjectRelease();
  return v7;
}

void *sub_218F8E744(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218F93878(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedCuration(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for TagFeedCurationServiceConfig() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218F93878);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for TagFeedCuration);
      sub_21872D044(v20, v30, type metadata accessor for TagFeedCuration);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2191F92D0(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2191F92D0(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TagFeedCuration);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_218F8EA5C(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_218F93898(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TagFeedCurationServiceConfig();
  v9 = MEMORY[0x28223BE20](v27);
  v26 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v24 = &v22 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (a3 + 32);
  v22 = v11;
  v25 = (v11 + 48);
  v15 = MEMORY[0x277D84F90];
  v16 = a1;
  v23 = a1;
  while (1)
  {
    v17 = *v14++;
    v28 = v17;

    v16(&v28);
    if (v3)
    {
      break;
    }

    if ((*v25)(v8, 1, v27) == 1)
    {
      sub_218F93498(v8, sub_218F93898);
    }

    else
    {
      v18 = v24;
      sub_21872D044(v8, v24, type metadata accessor for TagFeedCurationServiceConfig);
      sub_21872D044(v18, v26, type metadata accessor for TagFeedCurationServiceConfig);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2191F9304(0, v15[2] + 1, 1, v15);
      }

      v20 = v15[2];
      v19 = v15[3];
      if (v20 >= v19 >> 1)
      {
        v15 = sub_2191F9304(v19 > 1, v20 + 1, 1, v15);
      }

      v15[2] = v20 + 1;
      sub_21872D044(v26, v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v20, type metadata accessor for TagFeedCurationServiceConfig);
      v16 = v23;
    }

    if (!--v13)
    {
      return v15;
    }
  }

  return v15;
}

char *sub_218F8ED54(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v20[0] = *(v6 - 2);
    v20[1] = v9;
    v20[2] = v10;

    a1(&v18, v20);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v17 = v18;
      v11 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2191F94E0(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_2191F94E0((v12 > 1), v13 + 1, 1, v7);
        v14 = v17;
        v7 = v15;
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[24 * v13];
      *(v8 + 2) = v14;
      *(v8 + 6) = v11;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_218F8EEE4(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = *(v6 - 1);
    v10 = *v6;
    v20[0] = *(v6 - 2);
    v20[1] = v9;
    v20[2] = v10;

    a1(&v18, v20);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v17 = v18;
      v11 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2191F94CC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      v14 = v17;
      if (v13 >= v12 >> 1)
      {
        v15 = sub_2191F94CC((v12 > 1), v13 + 1, 1, v7);
        v14 = v17;
        v7 = v15;
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[24 * v13];
      *(v8 + 2) = v14;
      *(v8 + 6) = v11;
    }

    v6 += 3;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_218F8F074(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v30 = a1;
  sub_2187335C8();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for AudioFeedTrack(0);
  v24 = *(v29 - 8);
  v8 = MEMORY[0x28223BE20](v29);
  v28 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v23 = &v21 - v10;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v12 = 0;
    v26 = a3 & 0xFFFFFFFFFFFFFF8;
    v27 = a3 & 0xC000000000000001;
    v13 = (v24 + 48);
    v14 = MEMORY[0x277D84F90];
    v22 = a3;
    v25 = i;
    while (v27)
    {
      v15 = MEMORY[0x21CECE0F0](v12, a3);
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v31 = v15;
      v30(&v31);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v14;
      }

      swift_unknownObjectRelease();
      if ((*v13)(v7, 1, v29) == 1)
      {
        sub_218F93498(v7, sub_2187335C8);
      }

      else
      {
        v17 = v23;
        sub_21872D044(v7, v23, type metadata accessor for AudioFeedTrack);
        sub_21872D044(v17, v28, type metadata accessor for AudioFeedTrack);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2191F79E0(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_2191F79E0(v18 > 1, v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        sub_21872D044(v28, v14 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, type metadata accessor for AudioFeedTrack);
        a3 = v22;
      }

      ++v12;
      if (v16 == v25)
      {
        return v14;
      }
    }

    if (v12 >= *(v26 + 16))
    {
      goto LABEL_21;
    }

    v15 = *(a3 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_218F8F3CC(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_21880B928();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1AC00();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_280EE3738, sub_21880B928);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_280EE3730, sub_21880B928);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218A1AC00);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_2188118D4);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F7F60(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F7F60(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218A1AC00);
  }

  return v49;
}

void *sub_218F8F938(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v34 = a2;
  sub_218F935CC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEB824();
  v10 = MEMORY[0x28223BE20](v9);
  v33 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v31 = &v27 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v15 = (a3 + 32);
  v16 = (v12 + 48);
  v30 = v12;
  v32 = (v12 + 32);
  v17 = MEMORY[0x277D84F90];
  v28 = v9;
  v29 = a1;
  v27 = (v12 + 48);
  while (1)
  {
    v18 = *v15++;
    v35 = v18;
    a1(&v35);
    if (v3)
    {
      break;
    }

    if ((*v16)(v8, 1, v9) == 1)
    {
      sub_218F93498(v8, sub_218F935CC);
    }

    else
    {
      v19 = v31;
      v20 = *v32;
      (*v32)(v31, v8, v9);
      v20(v33, v19, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2191F9968(0, v17[2] + 1, 1, v17);
      }

      v22 = v17[2];
      v21 = v17[3];
      v23 = v30;
      if (v22 >= v21 >> 1)
      {
        v25 = sub_2191F9968(v21 > 1, v22 + 1, 1, v17);
        v23 = v30;
        v17 = v25;
      }

      v17[2] = v22 + 1;
      v24 = v17 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v22;
      v9 = v28;
      v20(v24, v33, v28);
      a1 = v29;
      v16 = v27;
    }

    if (!--v14)
    {
      return v17;
    }
  }

  return v17;
}

char *sub_218F8FC08(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  sub_218F935AC(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDF3C4();
  v10 = MEMORY[0x28223BE20](v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_218F93498(v8, sub_218F935AC);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2191F99D0(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_2191F99D0(v21 > 1, v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

char *sub_218F8FEF8(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218A8CBB8();
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954178();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218954264();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F93B98();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_280EE3648, sub_218954264);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_280EE3640, sub_218954264);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218F93B98);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218A8CBB8);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191F9E3C(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191F9E3C(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218F93B98);
  }

  return v49;
}

uint64_t sub_218F90464(void (*a1)(void *__return_ptr, char *), uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  sub_218950B84();
  v28 = v4;
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A7B8DC();
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  (*(v9 + 16))(v11, v2, v8);
  sub_2186D5774(&qword_280EE5768, sub_218950928);
  sub_219BF56A4();
  v17 = *(v13 + 44);
  sub_2186D5774(&qword_280EE5760, sub_218950928);
  sub_219BF5E84();
  if (*&v15[v17] == v31[0])
  {
    v25 = v16;
LABEL_3:
    sub_218F93498(v15, sub_218A7B8DC);
    return v25;
  }

  else
  {
    v19 = (v26 + 2);
    ++v26;
    v27 = v6;
    v25 = MEMORY[0x277D84F90];
    while (1)
    {
      v20 = sub_219BF5EC4();
      v22 = v27;
      v21 = v28;
      (*v19)(v27);
      v20(v31, 0);
      sub_219BF5E94();
      v29(v31, v22);
      if (v3)
      {
        break;
      }

      v23 = (*v26)(v22, v21);
      if (v31[0])
      {
        MEMORY[0x21CECC690](v23);
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v25 = v32;
      }

      sub_219BF5E84();
      if (*&v15[v17] == v31[0])
      {
        goto LABEL_3;
      }
    }

    (*v26)(v22, v21);
    sub_218F93498(v15, sub_218A7B8DC);
    v24 = v25;

    return v24;
  }
}

char *sub_218F9085C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CECE0F0](v6, a3);
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      v18 = v8;
      a1(&v17, &v18);
      if (v3)
      {

        swift_unknownObjectRelease();
        return v7;
      }

      swift_unknownObjectRelease();
      if (v17)
      {
        v16 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2191FAEE8(0, *(v7 + 2) + 1, 1, v7);
        }

        v11 = *(v7 + 2);
        v10 = *(v7 + 3);
        v12 = v16;
        if (v11 >= v10 >> 1)
        {
          v13 = sub_2191FAEE8((v10 > 1), v11 + 1, 1, v7);
          v12 = v16;
          v7 = v13;
        }

        *(v7 + 2) = v11 + 1;
        *&v7[16 * v11 + 32] = v12;
      }

      ++v6;
      if (v9 == i)
      {
        return v7;
      }
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_20;
    }

    v8 = *(a3 + 8 * v6 + 32);
    swift_unknownObjectRetain();
    v9 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_218F90A28(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218F42030();
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F935EC();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218F936D8();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F937C4();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_27CC13F78, sub_218F936D8);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_27CC13F70, sub_218F936D8);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218F937C4);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218F42030);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191FB4DC(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191FB4DC(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218F937C4);
  }

  return v49;
}

void *sub_218F90F94(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218F9356C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineFeedModel(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_219BF3C84() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218F9356C);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for MagazineFeedModel);
      sub_21872D044(v20, v30, type metadata accessor for MagazineFeedModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2191F8A9C(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2191F8A9C(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for MagazineFeedModel);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_218F912AC(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v46 = a1;
  v47 = a2;
  sub_218F938B8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897EC04();
  v9 = v8;
  v39 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v36 - v13;
  MEMORY[0x28223BE20](v12);
  v37 = &v36 - v14;
  sub_218953B70();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F938D8();
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16);
  sub_2186D5774(&qword_27CC13F98, sub_218953B70);
  sub_219BF56A4();
  v24 = *(v21 + 44);
  sub_2186D5774(&qword_27CC13F90, sub_218953B70);
  sub_219BF5E84();
  if (*&v23[v24] == v48)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v23, sub_218F938D8);
  }

  else
  {
    v25 = v38;
    v43 = (v39 + 16);
    v44 = (v39 + 8);
    v41 = (v39 + 32);
    v42 = (v39 + 48);
    v49 = MEMORY[0x277D84F90];
    v26 = v37;
    while (1)
    {
      v27 = sub_219BF5EC4();
      (*v43)(v26);
      v27(&v48, 0);
      sub_219BF5E94();
      v46(v26);
      if (v4)
      {
        break;
      }

      (*v44)(v26, v9);
      if ((*v42)(v25, 1, v9) == 1)
      {
        sub_218F93498(v25, sub_218F938B8);
      }

      else
      {
        v40 = 0;
        v28 = *v41;
        v29 = v36;
        (*v41)(v36, v25, v9);
        v28(v45, v29, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_2191FB544(0, *(v49 + 2) + 1, 1, v49);
        }

        v31 = *(v49 + 2);
        v30 = *(v49 + 3);
        v32 = v39;
        if (v31 >= v30 >> 1)
        {
          v34 = sub_2191FB544(v30 > 1, v31 + 1, 1, v49);
          v32 = v39;
          v49 = v34;
        }

        v33 = v49;
        *(v49 + 2) = v31 + 1;
        v4 = v40;
        v28(&v33[((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31], v45, v9);
        v26 = v37;
        v25 = v38;
      }

      sub_219BF5E84();
      if (*&v23[v24] == v48)
      {
        goto LABEL_3;
      }
    }

    (*v44)(v26, v9);
    sub_218F93498(v23, sub_218F938D8);
  }

  return v49;
}

void *sub_218F91818(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_218F93858(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchResultsGroup();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for SearchResponse.SearchResultsGroup(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_218F93498(v9, sub_218F93858);
    }

    else
    {
      v20 = v28;
      sub_21872D044(v9, v28, type metadata accessor for SearchResultsGroup);
      sub_21872D044(v20, v30, type metadata accessor for SearchResultsGroup);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2191F7430(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_2191F7430(v21 > 1, v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_21872D044(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for SearchResultsGroup);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_218F91B30(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v25 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(type metadata accessor for TodayFeedGroup() - 8);
  v26 = v11;
  v30 = (v11 + 32);
  v31 = (v11 + 48);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v33 = MEMORY[0x277D84F90];
  v27 = v10;
  v28 = a1;
  v25 = v18;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v31)(v8, 1, v10) == 1)
    {
      sub_218F93498(v8, sub_2188118D4);
    }

    else
    {
      v19 = v29;
      v20 = *v30;
      (*v30)(v29, v8, v10);
      v20(v32, v19, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2191F7F60(0, *(v33 + 2) + 1, 1, v33);
      }

      v22 = *(v33 + 2);
      v21 = *(v33 + 3);
      if (v22 >= v21 >> 1)
      {
        v33 = sub_2191F7F60(v21 > 1, v22 + 1, 1, v33);
      }

      v23 = v33;
      *(v33 + 2) = v22 + 1;
      v10 = v27;
      v20(&v23[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v32, v27);
      a1 = v28;
      v18 = v25;
    }

    v17 += v18;
    if (!--v15)
    {
      return v33;
    }
  }

  return v33;
}

char *sub_218F91E58(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v47 = a1;
  v48 = a2;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40594();
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v14;
  sub_218C8AAD8();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F93B04();
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16, v22);
  sub_2186D5774(&qword_27CC13FB8, sub_218C8AAD8);
  sub_219BF56A4();
  v25 = *(v21 + 44);
  sub_2186D5774(&qword_27CC10500, sub_218C8AAD8);
  sub_219BF5E84();
  if (*&v24[v25] == v49)
  {
    v50 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v24, sub_218F93B04);
  }

  else
  {
    v26 = v39;
    v44 = (v40 + 16);
    v45 = (v40 + 8);
    v42 = (v40 + 32);
    v43 = (v40 + 48);
    v50 = MEMORY[0x277D84F90];
    v27 = v38;
    while (1)
    {
      v28 = sub_219BF5EC4();
      (*v44)(v27);
      v28(&v49, 0);
      sub_219BF5E94();
      v47(v27);
      if (v4)
      {
        break;
      }

      (*v45)(v27, v9);
      if ((*v43)(v26, 1, v9) == 1)
      {
        sub_218F93498(v26, sub_218F93AE4);
      }

      else
      {
        v41 = 0;
        v29 = *v42;
        v30 = v37;
        (*v42)(v37, v26, v9);
        v29(v46, v30, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2191FBD14(0, *(v50 + 2) + 1, 1, v50);
        }

        v32 = *(v50 + 2);
        v31 = *(v50 + 3);
        v33 = v40;
        if (v32 >= v31 >> 1)
        {
          v35 = sub_2191FBD14(v31 > 1, v32 + 1, 1, v50);
          v33 = v40;
          v50 = v35;
        }

        v34 = v50;
        *(v50 + 2) = v32 + 1;
        v4 = v41;
        v29(&v34[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v46, v9);
        v27 = v38;
        v26 = v39;
      }

      sub_219BF5E84();
      if (*&v24[v25] == v49)
      {
        goto LABEL_3;
      }
    }

    (*v45)(v27, v9);
    sub_218F93498(v24, sub_218F93B04);
  }

  return v50;
}

char *sub_218F923C4(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v47 = a1;
  v48 = a2;
  sub_218D51CC0();
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0();
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v14;
  sub_218951F54();
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D75F00();
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16, v22);
  sub_2186D5774(&qword_280EE3620, sub_218951F54);
  sub_219BF56A4();
  v25 = *(v21 + 44);
  sub_2186D5774(&unk_280EE3610, sub_218951F54);
  sub_219BF5E84();
  if (*&v24[v25] == v49)
  {
    v50 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v24, sub_218D75F00);
  }

  else
  {
    v26 = v39;
    v44 = (v40 + 16);
    v45 = (v40 + 8);
    v42 = (v40 + 32);
    v43 = (v40 + 48);
    v50 = MEMORY[0x277D84F90];
    v27 = v38;
    while (1)
    {
      v28 = sub_219BF5EC4();
      (*v44)(v27);
      v28(&v49, 0);
      sub_219BF5E94();
      v47(v27);
      if (v4)
      {
        break;
      }

      (*v45)(v27, v9);
      if ((*v43)(v26, 1, v9) == 1)
      {
        sub_218F93498(v26, sub_218D51CC0);
      }

      else
      {
        v41 = 0;
        v29 = *v42;
        v30 = v37;
        (*v42)(v37, v26, v9);
        v29(v46, v30, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2191F8B18(0, *(v50 + 2) + 1, 1, v50);
        }

        v32 = *(v50 + 2);
        v31 = *(v50 + 3);
        v33 = v40;
        if (v32 >= v31 >> 1)
        {
          v35 = sub_2191F8B18(v31 > 1, v32 + 1, 1, v50);
          v33 = v40;
          v50 = v35;
        }

        v34 = v50;
        *(v50 + 2) = v32 + 1;
        v4 = v41;
        v29(&v34[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v46, v9);
        v27 = v38;
        v26 = v39;
      }

      sub_219BF5E84();
      if (*&v24[v25] == v49)
      {
        goto LABEL_3;
      }
    }

    (*v45)(v27, v9);
    sub_218F93498(v24, sub_218D75F00);
  }

  return v50;
}

char *sub_218F92930(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v47 = a1;
  v48 = a2;
  sub_218ADCF1C();
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8A9EC();
  v9 = v8;
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v38 = &v37 - v14;
  sub_2189BD538(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9399C();
  v21 = v20 - 8;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, v5, v16, v22);
  sub_2186D5774(&qword_27CC0C090, sub_2189BD538);
  sub_219BF56A4();
  v25 = *(v21 + 44);
  sub_2186D5774(&qword_27CC0C098, sub_2189BD538);
  sub_219BF5E84();
  if (*&v24[v25] == v49)
  {
    v50 = MEMORY[0x277D84F90];
LABEL_3:
    sub_218F93498(v24, sub_218F9399C);
  }

  else
  {
    v26 = v39;
    v44 = (v40 + 16);
    v45 = (v40 + 8);
    v42 = (v40 + 32);
    v43 = (v40 + 48);
    v50 = MEMORY[0x277D84F90];
    v27 = v38;
    while (1)
    {
      v28 = sub_219BF5EC4();
      (*v44)(v27);
      v28(&v49, 0);
      sub_219BF5E94();
      v47(v27);
      if (v4)
      {
        break;
      }

      (*v45)(v27, v9);
      if ((*v43)(v26, 1, v9) == 1)
      {
        sub_218F93498(v26, sub_218ADCF1C);
      }

      else
      {
        v41 = 0;
        v29 = *v42;
        v30 = v37;
        (*v42)(v37, v26, v9);
        v29(v46, v30, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_2191FC53C(0, *(v50 + 2) + 1, 1, v50);
        }

        v32 = *(v50 + 2);
        v31 = *(v50 + 3);
        v33 = v40;
        if (v32 >= v31 >> 1)
        {
          v35 = sub_2191FC53C(v31 > 1, v32 + 1, 1, v50);
          v33 = v40;
          v50 = v35;
        }

        v34 = v50;
        *(v50 + 2) = v32 + 1;
        v4 = v41;
        v29(&v34[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v46, v9);
        v27 = v38;
        v26 = v39;
      }

      sub_219BF5E84();
      if (*&v24[v25] == v49)
      {
        goto LABEL_3;
      }
    }

    (*v45)(v27, v9);
    sub_218F93498(v24, sub_218F9399C);
  }

  return v50;
}

uint64_t sub_218F92E9C(uint64_t a1, uint64_t a2)
{
  sub_219BF7314();

  v4 = MEMORY[0x277D837D0];
  v5 = MEMORY[0x21CECC6D0](a1, MEMORY[0x277D837D0]);
  MEMORY[0x21CECC330](v5);

  MEMORY[0x21CECC330](0x65766F6D6572202CLL, 0xEA00000000003D64);
  v6 = MEMORY[0x21CECC6D0](a2, v4);
  MEMORY[0x21CECC330](v6);

  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return 0x3D64656464617BLL;
}

uint64_t sub_218F92F80@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = [*a1 UMCCanonicalID];
  if (!result)
  {
    goto LABEL_5;
  }

  v8 = result;
  v9 = sub_219BF5414();
  v11 = v10;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v12 = sub_219BF4714();
  LOBYTE(v8) = sub_2188537B8(v9, v11, v12);

  if (v8 & 1) == 0 || (result = sub_2188537B8(v9, v11, a3), (result))
  {

LABEL_5:
    *a4 = 0;
    a4[1] = 0;
    return result;
  }

  *a4 = v9;
  a4[1] = v11;
  return result;
}

id sub_218F93064@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = [*a1 UMCCanonicalID];
  if (result)
  {
    v6 = result;
    v7 = sub_219BF5414();
    v9 = v8;

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v10 = sub_219BF4714();
    LOBYTE(v6) = sub_2188537B8(v7, v9, v10);

    if (v6)
    {
      *a3 = v7;
      a3[1] = v9;
      return result;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_218F93138(unint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v5 = a3;
  v8 = *a3;

  v10 = sub_218845F78(v9);

  v38 = a2;
  v39 = v10;
  v11 = sub_218F8C6C4(sub_218C824A0, v37, a1);

  if (a4)
  {
    sub_218F93498(v5, type metadata accessor for SportsSyncFavoritesFetchResult);

    v13 = MEMORY[0x277D84F90];
    if (*(v11 + 2))
    {
LABEL_28:
      __swift_destroy_boxed_opaque_existential_1(a2);
      return v11;
    }

LABEL_26:
    if (!*(v13 + 16))
    {

      v11 = 0;
    }

    goto LABEL_28;
  }

  v32 = v11;
  MEMORY[0x28223BE20](v12);
  v33 = a2;
  v31[2] = a2;
  v14 = sub_218F8C6C4(sub_218F9347C, v31, a1);

  v15 = sub_218845F78(v14);

  v36 = *(v8 + 16);
  if (!v36)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_25:

    sub_218F93498(v5, type metadata accessor for SportsSyncFavoritesFetchResult);
    v11 = v32;
    a2 = v33;
    if (*(v32 + 2))
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v17 = 0;
  v35 = v8 + 32;
  v18 = v15 + 56;
  v13 = MEMORY[0x277D84F90];
  v34 = v5;
  while (v17 < *(v8 + 16))
  {
    v19 = (v35 + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    ++v17;
    if (!*(v15 + 16))
    {

      goto LABEL_17;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v22 = sub_219BF7AE4();
    v23 = -1 << *(v15 + 32);
    v24 = v22 & ~v23;
    if ((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v25 = ~v23;
      while (1)
      {
        v26 = (*(v15 + 48) + 16 * v24);
        v27 = *v26 == v21 && v26[1] == v20;
        if (v27 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      if (v17 == v36)
      {
        goto LABEL_25;
      }
    }

    else
    {
LABEL_17:
      result = swift_isUniquelyReferenced_nonNull_native();
      v40 = v13;
      if ((result & 1) == 0)
      {
        result = sub_21870B65C(0, *(v13 + 16) + 1, 1);
        v13 = v40;
      }

      v29 = *(v13 + 16);
      v28 = *(v13 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_21870B65C((v28 > 1), v29 + 1, 1);
        v13 = v40;
      }

      *(v13 + 16) = v29 + 1;
      v30 = v13 + 16 * v29;
      *(v30 + 32) = v21;
      *(v30 + 40) = v20;
      v5 = v34;
      if (v17 == v36)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218F93498(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F935EC()
{
  if (!qword_27CC13A90)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_2186D5774(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_2186D5774(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13A90);
    }
  }
}

void sub_218F936D8()
{
  if (!qword_27CC13A70)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_2186D5774(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_2186D5774(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13A70);
    }
  }
}

void sub_218F937C4()
{
  if (!qword_27CC13F68)
  {
    sub_218F936D8();
    sub_2186D5774(&qword_27CC13F70, sub_218F936D8);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13F68);
    }
  }
}

void sub_218F938D8()
{
  if (!qword_27CC13F88)
  {
    sub_218953B70();
    sub_2186D5774(&qword_27CC13F90, sub_218953B70);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13F88);
    }
  }
}

void sub_218F9399C()
{
  if (!qword_27CC13FA0)
  {
    sub_2189BD538(255);
    sub_2186D5774(&qword_27CC0C098, sub_2189BD538);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13FA0);
    }
  }
}

void sub_218F93A50()
{
  if (!qword_280E8D480)
  {
    sub_218953E34();
    sub_2186D5774(&qword_280EE3670, sub_218953E34);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D480);
    }
  }
}

void sub_218F93B04()
{
  if (!qword_27CC13FB0)
  {
    sub_218C8AAD8();
    sub_2186D5774(&qword_27CC10500, sub_218C8AAD8);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13FB0);
    }
  }
}

void sub_218F93B98()
{
  if (!qword_280E8D478)
  {
    sub_218954264();
    sub_2186D5774(&qword_280EE3640, sub_218954264);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D478);
    }
  }
}

unint64_t sub_218F93C6C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_218F93CA0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_218F93CA0(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_218F93CB4()
{
  result = qword_27CC13FC8;
  if (!qword_27CC13FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13FC8);
  }

  return result;
}

uint64_t sub_218F93D18()
{
  sub_219BEEFF4();
  sub_219BEEFE4();
  sub_218F936D8();
  sub_219BEB2B4();
  if (v3)
  {
    sub_219BEDC74();
    swift_dynamicCast();
  }

  else
  {
    sub_218806FD0(v2);
  }

  type metadata accessor for SearchMoreFeedServiceConfig();
  sub_218F93E28(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig);
  v0 = sub_219BEEFD4();

  return v0;
}

uint64_t sub_218F93E28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ChannelHeroServiceRequest()
{
  result = qword_280EBF418;
  if (!qword_280EBF418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F93EE4()
{
  type metadata accessor for ChannelSectionsGroupModel();
  if (v0 <= 0x3F)
  {
    sub_2187E7248();
    if (v1 <= 0x3F)
    {
      sub_2186C66AC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for FCOperationPurpose(319);
        if (v3 <= 0x3F)
        {
          sub_219BEFBD4();
          if (v4 <= 0x3F)
          {
            sub_2186D6710(319, &qword_280E8E080);
            if (v5 <= 0x3F)
            {
              sub_2186E2394();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_218F93FF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v50 = a5;
  v51 = a6;
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v55 = sub_219BF2094();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF2D74();
  if (*(a1 + 16))
  {
    v14 = sub_21870F700(v12, v13);
    v16 = v15;

    if (v16)
    {
      v17 = *(*(a1 + 56) + 8 * v14);
      sub_218F95364(0, &unk_280E8BC60, type metadata accessor for AudioFeedModel, MEMORY[0x277D84560]);
      v18 = *(type metadata accessor for AudioFeedModel(0) - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_219C09BA0;
      *(v20 + v19) = v17;
      swift_storeEnumTagMultiPayload();
      *a7 = v20;
    }
  }

  else
  {
  }

  v46 = a7;
  v22 = sub_219BF2D94();
  v23 = *(v22 + 16);
  if (!v23)
  {

    v29 = MEMORY[0x277D84F90];
LABEL_24:
    MEMORY[0x28223BE20](v41);
    v42 = v48;
    v45[-6] = v47;
    v45[-5] = v42;
    v43 = v50;
    v45[-4] = v49;
    v45[-3] = v43;
    v45[-2] = v51;
    v44 = sub_218DDFDC8(sub_218F95340, &v45[-8], v29);

    *v46 = v44;
    return result;
  }

  v25 = *(v9 + 16);
  v24 = v9 + 16;
  v26 = *(v24 + 64);
  v45[1] = v22;
  v27 = v22 + ((v26 + 32) & ~v26);
  v52 = *(v24 + 56);
  v53 = v25;
  v54 = v24;
  v28 = (v24 - 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    v30 = v55;
    v53(v11, v27, v55);
    v31 = sub_219BF2084();
    result = (*v28)(v11, v30);
    v32 = *(v31 + 16);
    v33 = v29[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v34 <= v29[3] >> 1)
    {
      if (*(v31 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v36 = v33 + v32;
      }

      else
      {
        v36 = v33;
      }

      v29 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v36, 1, v29);
      if (*(v31 + 16))
      {
LABEL_18:
        v37 = (v29[3] >> 1) - v29[2];
        result = sub_219BF3C84();
        if (v37 < v32)
        {
          goto LABEL_28;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = v29[2];
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_29;
          }

          v29[2] = v40;
        }

        goto LABEL_8;
      }
    }

    if (v32)
    {
      goto LABEL_27;
    }

LABEL_8:
    v27 += v52;
    if (!--v23)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_218F94410@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v38 = a3;
  v40 = a6;
  v39 = a5;
  v35 = a2;
  v36 = a4;
  v37 = a7;
  sub_218F95364(0, qword_280EDCBA0, type metadata accessor for AudioFeedModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for AudioFeedModel(0);
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v33 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2164();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v16, a1, v13);
  if ((*(v14 + 88))(v16, v13) == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v16, v13);
    v21 = (*(v18 + 32))(v20, v16, v17);
    MEMORY[0x28223BE20](v21);
    v22 = v35;
    v23 = v36;
    *(&v33 - 6) = v38;
    *(&v33 - 5) = v23;
    v24 = v40;
    *(&v33 - 4) = v39;
    *(&v33 - 3) = v24;
    *(&v33 - 2) = v20;
    v25 = sub_2189489E4(sub_218F9549C, (&v33 - 8), v22);
    *v37 = v25;
    return (*(v18 + 8))(v20, v17);
  }

  else
  {
    v27 = v37;
    (*(v14 + 8))(v16, v13);
    sub_218F94A3C(a1, v36, v39, v40, v10);
    v28 = v34;
    if ((*(v34 + 48))(v10, 1, v11) == 1)
    {
      result = sub_218F953C8(v10, qword_280EDCBA0, type metadata accessor for AudioFeedModel);
      *v27 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = v10;
      v30 = v33;
      sub_218F95438(v29, v33);
      sub_218F95364(0, &unk_280E8BC60, type metadata accessor for AudioFeedModel, MEMORY[0x277D84560]);
      v31 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_219C09BA0;
      result = sub_218F95438(v30, v32 + v31);
      *v27 = v32;
    }
  }

  return result;
}

uint64_t sub_218F94874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15[1] = a3;
  v7 = MEMORY[0x277D2D148];
  sub_218F95364(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - v9;
  sub_21871D24C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  *(v11 + 48) = sub_219BF2154();
  *(v11 + 56) = v12;
  MEMORY[0x21CEC80A0](v11);

  v13 = sub_219BEBD44();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_219BEE204();

  sub_218F953C8(v10, &unk_280EE34A0, v7);
  type metadata accessor for AudioFeedModel(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218F94A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a2;
  v55 = a3;
  v56 = a4;
  v57 = a5;
  sub_2186EAE28();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1DF4();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x28223BE20](v8);
  v47 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018();
  v11 = v10;
  v53 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F95364(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v46 - v15;
  sub_2186EAB88();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF3C84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v23 + 16);
  v46[1] = a1;
  v26(v25, a1, v22);
  v27 = (*(v23 + 88))(v25, v22);
  if (v27 != *MEMORY[0x277D34128])
  {
    v35 = v57;
    if (v27 != *MEMORY[0x277D34108])
    {
      if (v27 == *MEMORY[0x277D34100])
      {
        (*(v23 + 96))(v25, v22);
        sub_219BEE184();
        swift_unknownObjectRelease();
        (*(v53 + 32))(v35, v13, v11);
        v30 = type metadata accessor for AudioFeedModel(0);
        swift_storeEnumTagMultiPayload();
        v31 = *(*(v30 - 8) + 56);
        v32 = v35;
        goto LABEL_3;
      }

      if (v27 != *MEMORY[0x277D34130] && v27 != *MEMORY[0x277D34118] && v27 != *MEMORY[0x277D340E8] && v27 != *MEMORY[0x277D340F8] && v27 != *MEMORY[0x277D34120])
      {
        if (v27 == *MEMORY[0x277D34110])
        {
          (*(v23 + 96))(v25, v22);
          v37 = v47;
          v38 = v48;
          v39 = v49;
          (*(v48 + 32))(v47, v25, v49);
          v40 = v50;
          sub_219BEE114();
          (*(v38 + 8))(v37, v39);
          (*(v51 + 32))(v35, v40, v52);
          v30 = type metadata accessor for AudioFeedModel(0);
          swift_storeEnumTagMultiPayload();
          v31 = *(*(v30 - 8) + 56);
          v32 = v35;
          goto LABEL_3;
        }

        if (v27 != *MEMORY[0x277D340F0])
        {
          sub_218F95364(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_219C09BA0;
          v58 = 0;
          v59 = 0xE000000000000000;
          sub_219BF7484();
          v42 = v35;
          v43 = v58;
          v44 = v59;
          *(v41 + 56) = MEMORY[0x277D837D0];
          *(v41 + 64) = sub_2186FC3BC();
          *(v41 + 32) = v43;
          *(v41 + 40) = v44;
          MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v41);

          v45 = type metadata accessor for AudioFeedModel(0);
          (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
          return (*(v23 + 8))(v25, v22);
        }
      }
    }

    (*(v23 + 8))(v25, v22);
    v34 = type metadata accessor for AudioFeedModel(0);
    v31 = *(*(v34 - 8) + 56);
    v32 = v35;
    v33 = 1;
    return v31(v32, v33, 1, v34);
  }

  (*(v23 + 96))(v25, v22);
  v28 = sub_219BEBD44();
  (*(*(v28 - 8) + 56))(v16, 1, 1, v28);
  sub_219BEE204();
  swift_unknownObjectRelease();
  sub_218F953C8(v16, &unk_280EE34A0, MEMORY[0x277D2D148]);
  v29 = v57;
  (*(v19 + 32))(v57, v21, v18);
  v30 = type metadata accessor for AudioFeedModel(0);
  swift_storeEnumTagMultiPayload();
  v31 = *(*(v30 - 8) + 56);
  v32 = v29;
LABEL_3:
  v33 = 0;
  v34 = v30;
  return v31(v32, v33, 1, v34);
}

uint64_t sub_218F952F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218F95364(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F953C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218F95364(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218F95438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F954C4(void *a1, uint64_t a2, char a3)
{
  v4 = [a1 horizontalSizeClass];
  sub_21950F8F4();
  if (v5)
  {

    a3 = 1;
  }

  if (v4 == 2)
  {
    v6 = sub_219BED0C4();
    v7 = objc_opt_self();
    v8 = *MEMORY[0x277D743F8];
    if ((a3 & 1) == 0)
    {
      if (v6)
      {
        v11 = 0x4046000000000000;
      }

      else
      {
        v11 = 0x4048000000000000;
      }

      goto LABEL_15;
    }

    if (v6)
    {
      v9 = 30.0;
LABEL_16:
      v10 = [v7 systemFontOfSize:v9 weight:v8];
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if ((a3 & 1) == 0)
  {
    v12 = sub_219BED0C4();
    v7 = objc_opt_self();
    v8 = *MEMORY[0x277D743F8];
    if ((v12 & 1) == 0)
    {
      v11 = 0x4045000000000000;
      goto LABEL_15;
    }

LABEL_12:
    v11 = 0x4041000000000000;
LABEL_15:
    v9 = *&v11;
    goto LABEL_16;
  }

  v10 = [objc_opt_self() systemFontOfSize:28.0 weight:*MEMORY[0x277D743F8]];
LABEL_17:
  v13 = v10;
  v14 = sub_219BF6BE4();

  return v14;
}

id sub_218F9560C(void *a1, uint64_t a2)
{
  v3 = [a1 horizontalSizeClass];
  v4 = *(a2 + 8);
  if ([v4 sportsType] == 3 && (objc_msgSend(v4, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    if (v3 == 2)
    {
      v7 = sub_219BED0C4();
      v8 = objc_opt_self();
      v9 = *MEMORY[0x277D743F8];
      if (v7)
      {
        v10 = [v8 systemFontOfSize:15.0 weight:v9];
      }

      else
      {
        v10 = [v8 systemFontOfSize:20.0 weight:v9];
      }
    }

    else
    {
      v10 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D743F8]];
    }

    v11 = v10;
    v12 = sub_219BF6BE4();

    return v12;
  }

  else
  {
    if (v3 == 2)
    {
      v5 = [objc_opt_self() systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
    }

    else
    {
      if (sub_219BED0C4())
      {
        sub_2186C6148(0, &qword_280E8DB00);
        return sub_219BF6BC4();
      }

      v5 = [objc_opt_self() systemFontOfSize:12.0 weight:*MEMORY[0x277D74418]];
    }

    return v5;
  }
}

id sub_218F957EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ([v1 sportsType] == 3 && (objc_msgSend(v1, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    sub_219BF6394();
    swift_getObjectType();
    v14 = FCTagProviding.forceBasicTagMasthead.getter();
    swift_unknownObjectRelease();
    if (v14)
    {
      v15 = [objc_opt_self() systemBackgroundColor];
    }

    else
    {
      v15 = sub_219BF6384();
    }

    v16 = v15;
    v17 = sub_219BF6CB4();

    return v17;
  }

  else
  {
    sub_219BF6394();
    swift_getObjectType();
    v2 = FCTagProviding.forceBasicTagMasthead.getter();
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = [objc_opt_self() systemBackgroundColor];
    }

    else
    {
      v3 = sub_219BF6384();
    }

    v4 = v3;
    v5 = sub_219BF6CB4();

    [v5 ts_luminance];
    v7 = v6;

    sub_2186C6148(0, &qword_280E8DA80);
    sub_219BF6D04();
    v9 = v8;
    v10 = objc_allocWithZone(MEMORY[0x277D75348]);
    if (v9 >= v7)
    {
      v11 = 0.24;
      v12 = 0.26;
    }

    else
    {
      v11 = 0.92;
      v12 = 0.96;
    }

    return [v10 initWithRed:v11 green:v11 blue:v12 alpha:0.6];
  }
}

id sub_218F959F4(uint64_t a1, void *a2, char a3)
{
  v4 = sub_218F954C4(a2, a1, a3);
  v5 = *(a1 + 8);
  v6 = [v5 sportsPrimaryName];
  if (!v6)
  {
    v6 = [v5 name];
  }

  v7 = v6;
  sub_219BF5414();

  sub_218818FB4(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v4;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = v9;
  v13 = v4;
  v14 = v11;
  sub_219BF6394();
  swift_getObjectType();
  LOBYTE(v9) = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  if (v9)
  {
    v15 = [objc_opt_self() systemBackgroundColor];
  }

  else
  {
    v15 = sub_219BF6384();
  }

  v16 = v15;
  v17 = sub_219BF6CB4();

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

  return v21;
}

id sub_218F95C74(uint64_t a1, void *a2)
{
  sub_21950F8F4();
  v5 = v4;
  if (v4)
  {
    v6 = sub_218F9560C(a2, a1);
    v7 = sub_218F957EC(a1);
    sub_218818FB4(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v9 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v10 = sub_2186C6148(0, &qword_280E8DB00);
    *(inited + 40) = v6;
    v11 = *MEMORY[0x277D740C0];
    *(inited + 64) = v10;
    *(inited + 72) = v11;
    *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
    *(inited + 80) = v7;
    v12 = v9;
    v13 = v6;
    v14 = v11;
    v15 = v7;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588();
    swift_arrayDestroy();
    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_21899E604();
    v18 = sub_219BF5204();

    v5 = [v16 initWithString:v17 attributes:v18];
  }

  return v5;
}

id sub_218F95E6C(void *a1)
{
  if (UIAccessibilityIsInvertColorsEnabled() || ((sub_219BF6394(), swift_getObjectType(), v2 = FCTagProviding.forceBasicTagMasthead.getter(), swift_unknownObjectRelease(), (v2 & 1) == 0) ? (v3 = sub_219BF6384()) : (v3 = [objc_opt_self() systemBackgroundColor]), v4 = v3, objc_msgSend(v3, sel_ts_luminance), v6 = v5, v4, sub_2186C6148(0, &qword_280E8DA80), sub_219BF6D04(), v7 >= v6))
  {
    v8 = a1;
    v9 = 2;
  }

  else
  {
    v8 = a1;
    v9 = 1;
  }

  return [v8 setOverrideUserInterfaceStyle_];
}

uint64_t sub_218F95F74(uint64_t a1, void *a2)
{
  sub_21950F57C(a2, v7);
  v3 = v8;
  result = sub_2189A70A0(v7);
  if (v3)
  {
    result = sub_219BED0C4();
    if ((result & 1) == 0)
    {
      v5 = [a2 horizontalSizeClass];
      result = sub_21950F8F4();
      if (v6)
      {

        if (v5 == 1)
        {
          return result;
        }
      }

      else if (v5 == 1)
      {
        return result;
      }

      return sub_219BED0C4();
    }
  }

  return result;
}

id sub_218F9605C(uint64_t a1, void *a2)
{
  sub_21950F57C(a2, v10);
  v4 = v11;
  result = sub_2189A70A0(v10);
  if (v4)
  {
    if ((sub_219BED0C4() & 1) == 0)
    {
      v6 = [a2 horizontalSizeClass];
      sub_21950F8F4();
      if (v7)
      {
      }

      if (v6 != 1)
      {
        sub_219BED0C4();
      }
    }

    result = sub_21950F8F4();
    if (v8)
    {

      if ([a2 horizontalSizeClass] == 1)
      {
        result = [*(a1 + 8) sportsTheme];
        v9 = 4.0;
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = [*(a1 + 8) sportsTheme];
        v9 = 8.0;
        if (!result)
        {
          return result;
        }
      }

      [result sportsLogoMastheadHorizontalPaddingOffset];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218F961D0()
{
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00);
  v0 = sub_219BF6BB4();
  v1 = [objc_opt_self() configurationWithFont_];

  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  if (v3)
  {
    [v3 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t FollowingMySportsModel.hashValue.getter()
{
  sub_219BF7AA4();
  type metadata accessor for FollowingMySportsModel();
  sub_218F967CC(&qword_27CC13FD0);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218F963AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218F967CC(&qword_27CC13FD8);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

id FollowingMySportsModel.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() nss_NewsURLForMySports];
  if (result)
  {

    sub_219BEAF74();
    v3 = sub_219BEAF84();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 0, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218F964E0@<X0>(uint64_t a1@<X8>)
{
  result = [objc_opt_self() nss_NewsURLForMySports];
  if (result)
  {

    sub_219BEAF74();
    v3 = sub_219BEAF84();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 0, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s7NewsUI222FollowingMySportsModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for FollowingMySportsModel() + 36);
  v5 = *(a1 + v4 + 2);
  v6 = *(a1 + v4) | (v5 << 16);
  v7 = *(a2 + v4) | (*(a2 + v4 + 2) << 16);
  v8 = (v5 >> 5) & 3;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0x600000) == 0x400000)
      {
        v9 = v7 ^ v6;
LABEL_11:
        v10 = v9 ^ 1;
        return v10 & 1;
      }
    }

    else if (v7 == 6291456)
    {
      v10 = 1;
      return v10 & 1;
    }

    goto LABEL_22;
  }

  if (v8)
  {
    if ((v7 & 0x600000) == 0x200000)
    {
      v10 = (v7 ^ v6) == 0;
      return v10 & 1;
    }

    goto LABEL_22;
  }

  if ((v7 & 0x600000) != 0 || v7 != v6)
  {
    goto LABEL_22;
  }

  if (BYTE1(v6) == 2)
  {
    if (BYTE1(v7) != 2)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v10 = 0;
  if (BYTE1(v7) != 2 && (((v7 >> 8) ^ (v6 >> 8)) & 1) == 0)
  {
LABEL_18:
    if ((v6 & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else if ((v7 & 0x80000000) == 0)
    {
LABEL_20:
      v9 = BYTE2(v7) ^ BYTE2(v6);
      goto LABEL_11;
    }

LABEL_22:
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_218F967CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingMySportsModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218F96848(void *a1, void *a2)
{
  v3 = v2;
  v6 = [sub_219BF6394() theme];
  swift_unknownObjectRelease();
  if (!v6 || (swift_getObjectType(), v11 = sub_219BF6114(), swift_unknownObjectRelease(), !v11))
  {
    v11 = *(*__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    [a1 setBackgroundColor_];
    goto LABEL_8;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = a2;
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 setBackgroundColor_];

  v10 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

LABEL_8:
}

void sub_218F969B4(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = [sub_219BF6394() theme];
  swift_unknownObjectRelease();
  if (!v9 || (swift_getObjectType(), v17 = sub_219BF6114(), swift_unknownObjectRelease(), !v17))
  {
    v17 = *(*__swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_7:
    [a1 setBackgroundColor_];
    goto LABEL_8;
  }

  if (!a2)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = a2;
  v11 = [v10 view];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 setBackgroundColor_];

  v13 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];

LABEL_8:
  [a1 setAlwaysBounceVertical_];
  [a1 setKeyboardDismissMode_];
  v14 = [a4 alternativeFeedDescriptor];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 feedConfiguration];

    if (v16 == 7)
    {
      [a1 setScrollEnabled_];
      [a1 ts:1 adjustsContentInsetsWhenScrollDisabled:?];
    }
  }
}

void sub_218F96BAC(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v4 = [sub_219BF6394() theme];
    swift_unknownObjectRelease();
    if (!v4 || (swift_getObjectType(), v6 = sub_219BF6114(), swift_unknownObjectRelease(), (v5 = v6) == 0))
    {
      v5 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    v7 = v5;
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_218F96C9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 theme])
  {
    swift_getObjectType();
    if (!sub_219BF6114())
    {
      v4 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    if (!sub_219BF6104())
    {
      v8 = sub_219BF6114();
      if (v8)
      {
        v9 = v8;
        sub_219BF6CB4();
      }

      else
      {
        sub_219BE6C54();
      }
    }

    v10 = sub_219BE6C74();
    v11 = MEMORY[0x277D6D7C0];
    a2[3] = v10;
    a2[4] = v11;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_219BE6C34();

    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = sub_219BE6C74();
    v6 = MEMORY[0x277D6D7C0];
    a2[3] = v5;
    a2[4] = v6;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_219BE6C64();
  }
}

uint64_t sub_218F96DE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 theme])
  {
    swift_getObjectType();
    if (!sub_219BF6114())
    {
      v4 = *(*__swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    }

    if (!sub_219BF6104())
    {
      v8 = sub_219BF6114();
      if (v8)
      {
        v9 = v8;
        sub_219BF6CB4();
      }

      else
      {
        sub_219BE5A84();
      }
    }

    v10 = sub_219BE5AA4();
    v11 = MEMORY[0x277D6D2E8];
    a2[3] = v10;
    a2[4] = v11;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_219BE5A74();

    return swift_unknownObjectRelease();
  }

  else
  {
    v5 = sub_219BE5AA4();
    v6 = MEMORY[0x277D6D2E8];
    a2[3] = v5;
    a2[4] = v6;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_219BE5A94();
  }
}

void sub_218F96F58(void *a1, id a2)
{
  if ([a2 feedConfiguration] == 8)
  {
    v8 = [objc_opt_self() whiteColor];
    [a1 setTintColor_];
  }

  else
  {
    v4 = [objc_msgSend(a2 backingTag)];
    swift_unknownObjectRelease();
    if (!v4)
    {
      return;
    }

    v5 = [v4 feedControlColor];
    swift_unknownObjectRelease();
    if (!v5)
    {
      return;
    }

    v6 = [objc_msgSend(a2 backingTag)];
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = [v6 darkStyleFeedControlColor];
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_219BF6C94();

    [a1 setTintColor_];
  }
}

uint64_t sub_218F97108()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_workerFactory), *(v0 + OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_workerFactory + 24));
  v1 = sub_219233C38();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC7NewsUI235PuzzleStreakBackgroundWorkerManager_registeredWorkers;
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

uint64_t sub_218F97550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218F978DC();
  *a1 = result;
  return result;
}

void sub_218F97580(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0x8000000219CD75C0;
    v9 = 0xD000000000000024;
    if (v2 == 6)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = 0x8000000219CD75E0;
    }

    v10 = 0x8000000219CD7580;
    v11 = 0xD000000000000016;
    if (v2 != 4)
    {
      v11 = 0xD00000000000001DLL;
      v10 = 0x8000000219CD75A0;
    }

    if (*v1 <= 5u)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (*v1 <= 5u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v8;
    }

    *a1 = v12;
    a1[1] = v13;
  }

  else
  {
    v3 = 0xED00006C61636967;
    v4 = 0x6F6C6F6E6F726863;
    v5 = 0x8000000219CD7530;
    v6 = 0xD00000000000001CLL;
    if (v2 != 2)
    {
      v6 = 0xD000000000000023;
      v5 = 0x8000000219CD7550;
    }

    if (*v1)
    {
      v4 = 0xD000000000000014;
      v3 = 0x8000000219CD7330;
    }

    if (*v1 <= 1u)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if (*v1 > 1u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_218F9775C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000024;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001DLL;
    }

    v6 = 0xD000000000000016;
    if (v1 != 4)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6F6C6F6E6F726863;
    v3 = 0xD00000000000001CLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000023;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_218F97888()
{
  result = qword_27CC14020;
  if (!qword_27CC14020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14020);
  }

  return result;
}

uint64_t sub_218F978DC()
{
  v0 = sub_219BF7614();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_218F97928()
{
  result = qword_280EA7DC0;
  if (!qword_280EA7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA7DC0);
  }

  return result;
}

uint64_t sub_218F97990(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFFFFFF && *(a1 + 498))
  {
    return (*a1 + 0xFFFFFFF);
  }

  v3 = ((*(a1 + 496) >> 15) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 480) >> 50) & 0x3C00 | ((*(a1 + 480) & 7) << 7) | (*(a1 + 496) << 12) & 0x7E00000 | (*(a1 + 496) >> 1 << 14)))) ^ 0xFFFFFFF;
  if (v3 >= 0xFFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218F97A24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFFFFFE)
  {
    *(result + 488) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 496) = 0;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0xFFFFFFF;
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 498) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFFFFFF)
    {
      *(result + 498) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x7FFFFFF) - (a2 << 27);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 8) = 0u;
      *(result + 248) = 0u;
      *(result + 264) = 0u;
      *(result + 280) = 0u;
      *(result + 296) = 0u;
      *(result + 312) = 0u;
      *(result + 328) = 0u;
      *(result + 344) = 0u;
      *(result + 360) = 0u;
      *(result + 376) = 0u;
      *(result + 392) = 0u;
      *(result + 408) = 0u;
      *(result + 424) = 0u;
      *(result + 440) = 0u;
      *(result + 456) = 0u;
      *(result + 472) = 0;
      *(result + 480) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 488) = 0;
      *(result + 496) = (v3 >> 13) & 0xFE | (v3 >> 12) & 0xFE00;
    }
  }

  return result;
}

uint64_t sub_218F97B9C(uint64_t result, __int16 a2)
{
  v2 = *(result + 480) & 0xFFFFFFFFFFFFFF8;
  v3 = *(result + 496) & 0x101 | (a2 << 15);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 480) = v2;
  *(result + 496) = v3;
  return result;
}

double sub_218F97BD8()
{
  memcpy(__dst, v0, 0x1F2uLL);
  sub_218F97C64(__dst);
  return *(sub_21892DEF8(__dst) + 8);
}

uint64_t sub_218F97C24(uint64_t a1)
{
  v2 = sub_218F97C70();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218F97C70()
{
  result = qword_27CC14028[0];
  if (!qword_27CC14028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC14028);
  }

  return result;
}

id FoodRecipeItemsFetchResult.maybeUnpersonalizedScoredRecipeItems.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  if (v2 < 0)
  {
    swift_willThrow();
    return (v2 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v3 = v1[1];
    v4 = v1[2];
    *a1 = *v1;
    a1[1] = v3;
    a1[2] = v4;
    return sub_2189B6874();
  }
}

uint64_t FoodRecipeItemsFetchResult.maybeUnscoredRecipeItems.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v1[3] < 0)
  {
    *a1 = *v1;
    a1[1] = v3;
    a1[2] = v4;
  }

  else
  {
    v5 = *v1;
    sub_2189B6874();
    sub_218F97E88(v5, v3, v4, a1);
  }
}

void sub_218F97DE8()
{
  qword_280F61B20 = MEMORY[0x277D84F90];
  *algn_280F61B28 = MEMORY[0x277D84F90];
  qword_280F61B30 = MEMORY[0x277D84F90];
  unk_280F61B38 = 0;
}

uint64_t FoodRecipeItemsFetchResult.personalizedScoredRecipeItems.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  if (v2 < 0)
  {
    v3 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
    return swift_willThrow();
  }

  if (v2)
  {
    sub_218F98174();
    swift_allocError();
    return swift_willThrow();
  }

  v5 = v1[1];
  v6 = v1[2];
  *a1 = *v1;
  a1[1] = v5;
  a1[2] = v6;
  return sub_2189B6874();
}

uint64_t sub_218F97E88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = result;
    v23 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    sub_218C3EE8C();
    v9 = v7 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    do
    {
      sub_219BEE2C4();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v9 += v10;
      --v5;
    }

    while (v5);
    v6 = v23;
  }

  v11 = *(a2 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    sub_218C3EE8C();
    v14 = a2 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80));
    v15 = *(*(v13 - 8) + 72);
    do
    {
      sub_219BEE2C4();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v14 += v15;
      --v11;
    }

    while (v11);
    v12 = v24;
  }

  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v25 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    sub_218C3EE8C();
    v19 = a3 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80));
    v20 = *(*(v18 - 8) + 72);
    do
    {
      sub_219BEE2C4();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      result = sub_219BF73E4();
      v19 += v20;
      --v16;
    }

    while (v16);
    v17 = v25;
  }

  *a4 = v6;
  a4[1] = v12;
  a4[2] = v17;
  return result;
}

unint64_t sub_218F98174()
{
  result = qword_280EBB6B8;
  if (!qword_280EBB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBB6B8);
  }

  return result;
}

uint64_t FoodRecipeItemsFetchResult.Recipes.all.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FoodRecipeItemsFetchResult.Recipes.recent.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t FoodRecipeItemsFetchResult.Recipes.trending.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_218F982DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F && *(a1 + 32))
  {
    return (*a1 + 63);
  }

  v3 = (*(a1 + 24) & 6 | ((*(a1 + 24) >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*(a1 + 24) >> 58) >> 2) & 7))) ^ 0x3F;
  if (v3 >= 0x3E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218F98338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 63;
    *(result + 8) = 0;
    if (a3 >= 0x3F)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_218F983DC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_218F98444()
{
  result = qword_27CC140B0;
  if (!qword_27CC140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC140B0);
  }

  return result;
}

uint64_t sub_218F98498@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  if (v7 < 0)
  {
    v13 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = sub_218F9885C(v5, a2);
    v15 = sub_218F9885C(v4, a2);
    result = sub_218F9885C(v6, a2);
    *a3 = v14;
    a3[1] = v15;
    a3[2] = result;
    a3[3] = v7;
  }

  else
  {
    v9 = sub_218F98560(*a1, a2);
    v10 = sub_218F98560(v4, a2);
    result = sub_218F98560(v6, a2);
    *a3 = v9;
    a3[1] = v10;
    a3[2] = result;
    a3[3] = (v7 & 1) != 0;
  }

  return result;
}

uint64_t sub_218F98560(uint64_t a1, uint64_t a2)
{
  sub_218C3EE8C();
  v5 = v4;
  v6 = MEMORY[0x28223BE20](v4);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v36 = *(a1 + 16);
  if (!v36)
  {
    return MEMORY[0x277D84F90];
  }

  v11 = 0;
  v13 = *(v8 + 16);
  v12 = v8 + 16;
  v32 = (*(v12 + 64) + 32) & ~*(v12 + 64);
  v33 = a1 + v32;
  v34 = v13;
  v39 = *(v12 + 56);
  v14 = a2 + 56;
  v31 = (v12 - 8);
  v37 = (v12 + 16);
  v15 = MEMORY[0x277D84F90];
  v35 = v12;
  v13(v10, a1 + v32, v5);
  while (1)
  {
    v16 = sub_219BEE294();
    v18 = v17;
    if (*(a2 + 16) && (v19 = v16, sub_219BF7AA4(), sub_219BF5524(), v20 = sub_219BF7AE4(), v21 = -1 << *(a2 + 32), v22 = v20 & ~v21, ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = (*(a2 + 48) + 16 * v22);
        v25 = *v24 == v19 && v24[1] == v18;
        if (v25 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      (*v31)(v10, v5);
    }

    else
    {
LABEL_15:

      v26 = *v37;
      (*v37)(v38, v10, v5);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C34408(0, *(v15 + 16) + 1, 1);
        v15 = v40;
      }

      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C34408(v28 > 1, v29 + 1, 1);
        v15 = v40;
      }

      *(v15 + 16) = v29 + 1;
      v26((v15 + v32 + v29 * v39), v38, v5);
    }

    if (++v11 == v36)
    {
      return v15;
    }

    v34(v10, v33 + v39 * v11, v5);
  }
}

uint64_t sub_218F9885C(unint64_t a1, uint64_t a2)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v20)
  {
    v4 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    v21 = a1;
    v5 = a1 + 32;
    v6 = a2 + 56;
    while (1)
    {
      if (v23)
      {
        a1 = MEMORY[0x21CECE0F0](v4, v21);
      }

      else
      {
        if (v4 >= *(v22 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v5 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = [a1 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v13 = sub_219BF7AE4(), v14 = -1 << *(a2 + 32), v15 = v13 & ~v14, ((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (1)
        {
          v17 = (*(a2 + 48) + 16 * v15);
          v18 = *v17 == v10 && v17[1] == v12;
          if (v18 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v6 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

      if (v4 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v20 = a1;
    i = sub_219BF7214();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218F98A6C(uint64_t a1)
{
  v2 = sub_219BE4BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE4B74();
  v14 = MEMORY[0x277D84F98];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v3 + 8);
    while (v8 < *(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v8, v2);
      sub_218F98C60(&v14, v5);
      ++v8;
      (*v9)(v5, v2);
      if (v7 == v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);

    (*v9)(v5, v2);

    type metadata accessor for BrowseNonPresentationRequirements();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
LABEL_5:

    v10 = sub_219BE4B84();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = v13;
    *(v13 + 16) = v14;
  }

  return result;
}

uint64_t sub_218F98C60(uint64_t *a1, uint64_t a2)
{
  v36 = a1;
  v4 = sub_219BE4B94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_219BE4BB4();
  (*(v5 + 104))(v11, *MEMORY[0x277D34950], v4);
  sub_218EDCE0C(&qword_27CC140B8, MEMORY[0x277D34968]);
  v14 = sub_219BF53A4();
  v15 = *(v5 + 8);
  v15(v11, v4);
  v37 = v15;
  result = (v15)(v13, v4);
  if ((v14 & 1) == 0)
  {
    sub_219BE4BB4();
    v17 = *v36;
    if (*(*v36 + 16) && (v18 = sub_21931F11C(v8), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F98];
    }

    v37(v8, v4);
    v21 = sub_219BE4BA4();
    if (*(v20 + 16))
    {
      v35 = v2;
      v22 = sub_21931EF10(v21);
      v24 = v23;

      if (v24)
      {
        v25 = *(*(v20 + 56) + 8 * v22);
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {

      v25 = 0;
    }

    result = sub_219BE4BC4();
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v28 = sub_219BE4BA4();
      v29 = v36;
      v35 = a2;
      v30 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v20;
      sub_21948D370(v27, v30, isUniquelyReferenced_nonNull_native);

      v32 = v38;

      sub_219BE4BB4();
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v29;
      sub_21948D4E8(v32, v13, v33);
      v37(v13, v4);

      *v29 = v38;
    }
  }

  return result;
}

uint64_t sub_218F98F90@<X0>(uint64_t a1@<X8>)
{
  sub_218F993E4(0, &qword_27CC140C0, sub_218C8A804, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  sub_218F99448();
  v7 = v6;
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE4B94();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  swift_beginAccess();

  sub_218C87B48(v17, v5);

  sub_218C8A804();
  v19 = v18;
  if ((*(*(v18 - 8) + 48))(v5, 1, v18) == 1)
  {
    sub_218F994B8(v5);
    sub_218F99544();
    v21 = v20;
    v22 = *(*(v20 - 8) + 56);
    v23 = a1;
    return v22(v23, 1, 1, v21);
  }

  v44 = v13;
  v45 = v11;
  v46 = a1;
  v24 = *&v5[*(v19 + 48)];
  v25 = *(v7 + 48);
  v26 = *(v11 + 32);
  v26(v9, v5, v10);
  *&v9[v25] = v24;
  v27 = *&v9[*(v7 + 48)];
  v43 = v26;
  v26(v16, v9, v10);
  v47 = v27;

  v29 = sub_218C87CE8(v28);
  v31 = v30;

  if (!v29)
  {
    (*(v45 + 8))(v16, v10);

    sub_218F99544();
    v21 = v41;
    v22 = *(*(v41 - 8) + 56);
    v23 = v46;
    return v22(v23, 1, 1, v21);
  }

  v42 = v1;
  v32 = v31 < 2;
  if (v31 >= 2)
  {
    v33 = v31 - 1;
  }

  else
  {
    v33 = 0;
  }

  sub_2199D6114(v33, v32, v29);
  v34 = v44;
  (*(v45 + 16))(v44, v16, v10);
  v35 = v47;
  if (!*(v47 + 16))
  {

    v35 = 0;
  }

  swift_beginAccess();
  sub_2199D61E8(v35, v34);
  swift_endAccess();
  sub_218F99544();
  v37 = v36;
  v38 = *(v36 + 48);
  v39 = v46;
  v43(v46, v16, v10);
  *(v39 + v38) = v29;
  return (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
}

void sub_218F993E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218F99448()
{
  if (!qword_27CC140C8)
  {
    sub_219BE4B94();
    sub_218C8A878();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC140C8);
    }
  }
}

uint64_t sub_218F994B8(uint64_t a1)
{
  sub_218F993E4(0, &qword_27CC140C0, sub_218C8A804, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218F99544()
{
  if (!qword_27CC21340)
  {
    sub_219BE4B94();
    sub_218F993E4(255, &unk_27CC13240, MEMORY[0x277D34998], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC21340);
    }
  }
}

uint64_t sub_218F995F4()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_27CCD8688);
  __swift_project_value_buffer(v0, qword_27CCD8688);
  if (qword_280E8D8C8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61788;
  return sub_219BED9E4();
}

uint64_t sub_218F996A0()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_27CCD86A0);
  __swift_project_value_buffer(v0, qword_27CCD86A0);
  if (qword_280E8D8A0 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61768;
  return sub_219BED9E4();
}

uint64_t sub_218F9974C()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_280F61890);
  __swift_project_value_buffer(v0, qword_280F61890);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61720;
  return sub_219BED9E4();
}

uint64_t sub_218F997FC()
{
  v0 = sub_219BEDA24();
  __swift_allocate_value_buffer(v0, qword_27CCD86B8);
  __swift_project_value_buffer(v0, qword_27CCD86B8);
  if (qword_27CC08540 != -1)
  {
    swift_once();
  }

  v1 = qword_27CCD8A08;
  return sub_219BED9E4();
}

uint64_t sub_218F998B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218D454D8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BF5474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [v2 supergroupConfigJson];
  if (!v11 || (v12 = v11, sub_219BF5414(), v12, sub_219BF5464(), v13 = sub_219BF5424(), v15 = v14, , (*(v8 + 8))(v10, v7), v15 >> 60 == 15))
  {
    v17 = type metadata accessor for ChannelSupergroupConfig();
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    v16 = type metadata accessor for ChannelSupergroupConfig();
    sub_218F99B98();
    sub_219BE1974();
    sub_218822A58(v13, v15);

    v18 = *(*(v16 - 8) + 56);
    v18(v6, 0, 1, v16);
    sub_218F99C4C(v6, a1);
    return v18(a1, 0, 1, v16);
  }
}

unint64_t sub_218F99B98()
{
  result = qword_280EC58F8;
  if (!qword_280EC58F8)
  {
    type metadata accessor for ChannelSupergroupConfig();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC58F8);
  }

  return result;
}

uint64_t sub_218F99BF0(uint64_t a1)
{
  sub_218D454D8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F99C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSupergroupConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F99CB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9A4C0(0, &qword_27CC140F0, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsMastheadTagFeedGroup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F9A408();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218F9A524(&unk_280E92630, MEMORY[0x277D31C50]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218F9A45C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F99F5C(uint64_t a1)
{
  v2 = sub_218F9A408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F99F98(uint64_t a1)
{
  v2 = sub_218F9A408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F9A014(void *a1)
{
  sub_218F9A4C0(0, &qword_27CC14100, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F9A408();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218F9A524(&qword_280E92640, MEMORY[0x277D31C50]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F9A274(uint64_t a1)
{
  result = sub_218F9A524(&qword_27CC140E0, type metadata accessor for SportsMastheadTagFeedGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F9A2CC(void *a1)
{
  a1[1] = sub_218F9A524(&qword_27CC140E8, type metadata accessor for SportsMastheadTagFeedGroup);
  a1[2] = sub_218F9A524(&unk_27CC1C700, type metadata accessor for SportsMastheadTagFeedGroup);
  result = sub_218F9A524(&unk_27CC1C810, type metadata accessor for SportsMastheadTagFeedGroup);
  a1[3] = result;
  return result;
}

uint64_t sub_218F9A378(uint64_t a1)
{
  v2 = sub_218F9A524(&qword_27CC140E8, type metadata accessor for SportsMastheadTagFeedGroup);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218F9A408()
{
  result = qword_27CC140F8;
  if (!qword_27CC140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC140F8);
  }

  return result;
}

uint64_t sub_218F9A45C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsMastheadTagFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F9A4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F9A408();
    v7 = a3(a1, &type metadata for SportsMastheadTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F9A524(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_218F9A580()
{
  result = qword_27CC14108;
  if (!qword_27CC14108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14108);
  }

  return result;
}

unint64_t sub_218F9A5D8()
{
  result = qword_27CC14110;
  if (!qword_27CC14110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14110);
  }

  return result;
}

unint64_t sub_218F9A630()
{
  result = qword_27CC14118;
  if (!qword_27CC14118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14118);
  }

  return result;
}

unint64_t sub_218F9A6A8(unint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    v33 = v4 & 0xFFFFFFFFFFFFFF8;
    v34 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v31 = i;
    v32 = v4 + 32;
    v30 = v4;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v4);
      v9 = __OFADD__(v6, 1);
      v10 = v6 + 1;
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      v11 = v3;
      sub_218F9BC84(&v41, a2, &v40);
      if (v3)
      {
        goto LABEL_41;
      }

      swift_unknownObjectRelease();
      v12 = v40;
      v13 = v40 >> 62;
      if (v40 >> 62)
      {
        v14 = sub_219BF7214();
      }

      else
      {
        v14 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v7 >> 62;
      if (v7 >> 62)
      {
        v28 = sub_219BF7214();
        v17 = v28 + v14;
        if (__OFADD__(v28, v14))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          swift_unknownObjectRelease();
          return v7;
        }
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_40;
        }
      }

      v37 = v10;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v15)
        {
          v18 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v18 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v38 = v14;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v13)
      {
        v21 = sub_219BF7214();
        if (!v21)
        {
LABEL_4:

          if (v38 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v21)
        {
          goto LABEL_4;
        }
      }

      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_45;
      }

      v36 = v7;
      if (v13)
      {
        if (v21 < 1)
        {
          goto LABEL_47;
        }

        sub_218860238(0, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
        sub_218F9BF5C(&qword_280E8ED30, &qword_280E8ED48, sub_21897A4D4);
        for (j = 0; j != v21; ++j)
        {
          v23 = sub_218A353D0(v39, j, v12);
          v25 = *v24;
          (v23)(v39, 0);
          *(v18 + 8 * v19 + 32 + 8 * j) = v25;
        }
      }

      else
      {
        sub_21897A4D4();
        swift_arrayInitWithCopy();
      }

      v7 = v36;
      v3 = v11;
      v4 = v30;
      if (v38 >= 1)
      {
        v26 = *(v18 + 16);
        v9 = __OFADD__(v26, v38);
        v27 = v26 + v38;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v18 + 16) = v27;
      }

LABEL_5:
      v6 = v37;
      if (v37 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);
    swift_unknownObjectRetain();
    v9 = __OFADD__(v6, 1);
    v10 = v6 + 1;
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_218F9AA60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v110 = a3;
  v7 = *v4;
  v116 = v4;
  v115 = v7;
  v8 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_218860238(0, &unk_280E90990, MEMORY[0x277D33108], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v117 = &v108 - v13;
  sub_218860238(0, &qword_280E90478, MEMORY[0x277D33868], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v114 = &v108 - v15;
  sub_218860238(0, &unk_280E92600, MEMORY[0x277D31CD8], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v113 = &v108 - v17;
  v109 = sub_219BF1494();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v119 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF1904();
  v19 = *(v112 - 8);
  v20 = MEMORY[0x28223BE20](v112);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v108 - v23;
  CACurrentMediaTime();
  v120 = a1;
  sub_218718690(a1, v123);
  v111 = a2;
  v25 = sub_219BE5414();
  v26 = sub_219BF6214();
  v27 = os_log_type_enabled(v25, v26);
  v118 = v10;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v122 = v29;
    *v28 = 136446210;
    __swift_project_boxed_opaque_existential_1(v123, v124);
    v30 = sub_219BE1D74();
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v123);
    v33 = sub_2186D1058(v30, v32, &v122);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_2186C1000, v25, v26, "Will collect group tag images, id=%{public}s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x21CECF960](v29, -1, -1);
    MEMORY[0x21CECF960](v28, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v123);
  }

  sub_218860238(0, &qword_280E8B838, MEMORY[0x277D33658], MEMORY[0x277D84560]);
  v34 = sub_219BF1E34();
  v35 = *(v34 - 8);
  v36 = *(v35 + 72);
  v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C0B8C0;
  v39 = v38 + v37;
  v40 = *(v35 + 104);
  v40(v39, *MEMORY[0x277D33640], v34);
  v40(v39 + v36, *MEMORY[0x277D33650], v34);
  v40(v39 + 2 * v36, *MEMORY[0x277D33648], v34);
  v41 = sub_218C3DC84(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v122 = v41;
  v42 = v120;
  v43 = v120[3];
  v44 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v43);
  sub_21885FB90(v43, v44);
  v45 = sub_219BF18A4();
  v46 = *(v19 + 8);
  v47 = v24;
  v48 = v112;
  v46(v47, v112);
  v49 = v42[3];
  v50 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v49);
  sub_21885FB90(v49, v50);
  v51 = sub_219BF1894();
  v46(v22, v48);
  v123[0] = v45;
  sub_2191EF800(v51);
  v52 = v123[0];
  sub_219BDC594();
  sub_218F9BEEC();
  v53 = v113;
  sub_219BDC7D4();

  v54 = sub_219BED9B4();
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  v55 = sub_219BF2474();
  (*(*(v55 - 8) + 56))(v114, 1, 1, v55);
  v56 = sub_219BF10A4();
  (*(*(v56 - 8) + 56))(v117, 1, 1, v56);
  v57 = v119;
  v58 = sub_219BF1484();
  MEMORY[0x28223BE20](v58);
  *(&v108 - 2) = v57;
  *(&v108 - 1) = &v122;
  v117 = v52;
  sub_2192490F4(sub_218F9BF40, (&v108 - 4), v52);
  v116 = 0;
  v59 = v42[3];
  v60 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v59);
  v61 = (*(v60 + 48))(v59, v60);
  v62 = sub_218ACECF4(v61);

  v63 = v42[3];
  v64 = v42[4];
  __swift_project_boxed_opaque_existential_1(v42, v63);
  v65 = (*(v64 + 40))(v63, v64);
  v66 = v65;
  if (v65 >> 62)
  {
    goto LABEL_28;
  }

  v67 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  if (v67)
  {
    v68 = MEMORY[0x277D84F90];
    v123[0] = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v67 < 0)
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v70 = 0;
    do
    {
      if ((v66 & 0xC000000000000001) != 0)
      {
        v71 = MEMORY[0x21CECE0F0](v70, v66);
      }

      else
      {
        v71 = *(v66 + 8 * v70 + 32);
        swift_unknownObjectRetain();
      }

      ++v70;
      v72 = [v71 sourceChannel];
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v67 != v70);

    v73 = v123[0];
  }

  else
  {
    v68 = MEMORY[0x277D84F90];

    v73 = MEMORY[0x277D84F90];
  }

  v74 = sub_218ACEF18(v73);

  v123[0] = v62;
  sub_2191EF708(v74);
  v75 = v123[0];
  v76 = v120[3];
  v77 = v120[4];
  __swift_project_boxed_opaque_existential_1(v120, v76);
  v78 = (*(v77 + 56))(v76, v77);
  v62 = v78;
  if (v78 >> 62)
  {
    v66 = sub_219BF7214();
    if (v66)
    {
LABEL_17:
      v123[0] = v68;
      result = sub_219BF73F4();
      if ((v66 & 0x8000000000000000) == 0)
      {
        v115 = v75;
        v79 = 0;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v80 = MEMORY[0x21CECE0F0](v79, v62);
          }

          else
          {
            if ((v79 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_27:
              __break(1u);
LABEL_28:
              v67 = sub_219BF7214();
              goto LABEL_6;
            }

            if (v79 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v80 = *(v62 + 8 * v79 + 32);
          }

          v81 = v80;
          ++v79;
          v82 = [v80 sourceChannel];

          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v66 == v79)
          {

            v83 = v123[0];
            v75 = v115;
            goto LABEL_31;
          }
        }
      }

      goto LABEL_59;
    }
  }

  else
  {
    v66 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v66)
    {
      goto LABEL_17;
    }
  }

  v83 = MEMORY[0x277D84F90];
LABEL_31:
  v123[0] = v75;
  sub_2191EF708(v83);
  v84 = 0;
  v85 = v123[0];
  v123[0] = v68;
  v86 = *(v85 + 16);
  while (v86 != v84)
  {
    if (v84 >= *(v85 + 16))
    {
      __break(1u);
      goto LABEL_57;
    }

    if (*(v85 + 8 * v84++ + 32))
    {
      v88 = swift_unknownObjectRetain();
      MEMORY[0x21CECC690](v88);
      if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v68 = v123[0];
    }
  }

  v123[0] = v68;
  sub_218860238(0, &qword_280E8ED00, sub_2186D8870, MEMORY[0x277D83940]);
  sub_218F9BF5C(&qword_280E8ECF0, &qword_280E8ED00, sub_2186D8870);
  v89 = sub_219BF56E4();

  v84 = sub_218F9A6A8(v89, &v122);

  if (!(v84 >> 62))
  {
    v90 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_40;
  }

LABEL_57:
  v90 = sub_219BF7214();
LABEL_40:
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    v123[0] = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v90 < 0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v92 = 0;
    do
    {
      if ((v84 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x21CECE0F0](v92, v84);
      }

      else
      {
        v93 = *(v84 + 8 * v92 + 32);
      }

      v94 = v93;
      ++v92;
      v95 = [v93 contentManifest];

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v90 != v92);
    v96 = v123[0];
  }

  else
  {
    v96 = MEMORY[0x277D84F90];
  }

  OfflineFeedManifest.init(_:)(v96, v118);
  sub_218718690(v120, v123);
  v97 = sub_219BE5414();
  v98 = sub_219BF6214();
  if (!os_log_type_enabled(v97, v98))
  {

    __swift_destroy_boxed_opaque_existential_1(v123);
    goto LABEL_55;
  }

  v99 = swift_slowAlloc();
  v100 = swift_slowAlloc();
  v121 = v100;
  *v99 = 136446466;
  __swift_project_boxed_opaque_existential_1(v123, v124);
  v101 = sub_219BE1D74();
  v103 = v102;
  __swift_destroy_boxed_opaque_existential_1(v123);
  v104 = sub_2186D1058(v101, v103, &v121);

  *(v99 + 4) = v104;
  *(v99 + 12) = 2050;
  result = sub_219BF5CD4();
  if ((*&v105 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v105 <= -9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v105 < 9.22337204e18)
  {
    *(v99 + 14) = v105;
    _os_log_impl(&dword_2186C1000, v97, v98, "Did collect group tag images, id=%{public}s, time=%{public}lldms", v99, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x21CECF960](v100, -1, -1);
    MEMORY[0x21CECF960](v99, -1, -1);

LABEL_55:
    v106 = v110;
    sub_2187538EC(v118, v110);
    v107 = type metadata accessor for OfflineFeedGroupProcessorResult();
    *(v106 + *(v107 + 20)) = v91;
    *(v106 + *(v107 + 24)) = v84;
    (*(v108 + 8))(v119, v109);
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_218F9B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  sub_218860238(0, &qword_280E90198, MEMORY[0x277D33D98], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v24 = sub_219BF3384();
  v6 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF1494();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BF2E14();
  v13 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v21, v9);

  sub_219BF2E04();
  v16 = v23;
  sub_219BF3084();
  if (v16)
  {

    (*(v6 + 56))(v5, 1, 1, v24);
    (*(v13 + 8))(v15, v22);
    return sub_218F9BFB4(v5);
  }

  else
  {
    v18 = v24;
    (*(v6 + 56))(v5, 0, 1, v24);
    (*(v6 + 32))(v8, v5, v18);
    v19 = sub_219BF3364();
    sub_218DDBEE0(v19);

    (*(v6 + 8))(v8, v18);
    return (*(v13 + 8))(v15, v22);
  }
}

uint64_t sub_218F9BC84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v20 = a3;
  v25 = sub_219BF1E34();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v8 = *a2;
  v21 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v5 + 8;
  v23 = v5 + 16;
  v26 = v8;
  result = swift_bridgeObjectRetain_n();
  v15 = 0;
  if (!v12)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v25;
      (*(v5 + 16))(v7, *(v26 + 48) + *(v5 + 72) * (v16 | (v15 << 6)), v25);
      v18 = sub_219BF1E24();
      result = (*(v5 + 8))(v7, v17);
      if (v18)
      {
        break;
      }

      if (!v12)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x21CECC690](result);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
    }

    result = sub_219BF5A54();
    v21 = v27;
  }

  while (v12);
LABEL_6:
  while (1)
  {
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      *v20 = v21;
      return result;
    }

    v12 = *(v9 + 8 * v19);
    ++v15;
    if (v12)
    {
      v15 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_218F9BEEC()
{
  result = qword_280E9FAB0;
  if (!qword_280E9FAB0)
  {
    type metadata accessor for OfflineFeedGroupTagImagesProcessor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9FAB0);
  }

  return result;
}

uint64_t sub_218F9BF5C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_218860238(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218F9BFB4(uint64_t a1)
{
  sub_218860238(0, &qword_280E90198, MEMORY[0x277D33D98], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F9C040()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1(v0 + 176);
  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  return swift_deallocClassInstance();
}

uint64_t sub_218F9C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v7 = sub_219BE9FA4();
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v51 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v52 = type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  v9 = MEMORY[0x28223BE20](v52);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v45 - v12;
  sub_2189519D8();
  sub_219BE6934();
  memcpy(v57, v56, 0x151uLL);
  memcpy(v58, v56, 0x151uLL);
  v14 = sub_21898EAD4(v58) == 1;
  v47 = v11;
  v48 = v13;
  v45 = a3;
  v46 = a2;
  if (v14)
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_218F9C8D4(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v11, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v15 = sub_219BE5884();
    v16 = a1;
    v17 = *(v15 - 8);
    v18 = *(v17 + 72);
    v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C0B8C0;
    v21 = (v20 + v19);
    *v21 = 0;
    v22 = *(v17 + 104);
    v22(v21, *MEMORY[0x277D6D298], v15);
    *(v21 + v18) = 0x4024000000000000;
    v22((v21 + v18), *MEMORY[0x277D6D290], v15);
    v22((v21 + 2 * v18), *MEMORY[0x277D6D288], v15);
    v23 = v51;
    *v51 = v20;
    v24 = *MEMORY[0x277D6E9A0];
    v25 = sub_219BE9F94();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    v26 = (*(v49 + 104))(v23, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v26);
    v40 = &v45 - 6;
    v27 = v46;
    *(&v45 - 4) = v45;
    *(&v45 - 3) = v16;
    *(&v45 - 2) = v27;
    v43 = sub_218F9E7F0;
  }

  else
  {
    sub_21892DE88(v58);
    sub_218F9E778(v57);
    sub_219BE6934();
    memcpy(v53, v54, 0x151uLL);
    sub_218F9C8D4(v53, a3, v13);
    memcpy(v55, v53, 0x151uLL);
    sub_218F9E778(v55);
    sub_218F9E814(v13, v11, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_218F9E970(0, &qword_27CC14120, MEMORY[0x277D6D2A0], MEMORY[0x277D84560]);
    v28 = sub_219BE5884();
    v29 = *(v28 - 8);
    v30 = *(v29 + 72);
    v31 = a1;
    v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_219C0B8C0;
    v34 = (v33 + v32);
    *v34 = 0;
    v35 = *(v29 + 104);
    v35(v33 + v32, *MEMORY[0x277D6D298], v28);
    *(v34 + v30) = 0;
    v35(v33 + v32 + v30, *MEMORY[0x277D6D290], v28);
    v35(v33 + v32 + 2 * v30, *MEMORY[0x277D6D288], v28);
    v36 = v51;
    *v51 = v33;
    v37 = *MEMORY[0x277D6E9A0];
    v38 = sub_219BE9F94();
    (*(*(v38 - 8) + 104))(v36, v37, v38);
    v39 = (*(v49 + 104))(v36, *MEMORY[0x277D6E998], v50);
    MEMORY[0x28223BE20](v39);
    v40 = &v45 - 6;
    v42 = v45;
    v41 = v46;
    *(&v45 - 4) = v31;
    *(&v45 - 3) = v42;
    *(&v45 - 2) = v41;
    v43 = sub_218F9E7CC;
  }

  sub_218949014(v43, v40);
  type metadata accessor for ChannelPickerLayoutModel();
  sub_218F9E9D4(&qword_27CC1C0E0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_218F9E9D4(&qword_27CC0D178, type metadata accessor for ChannelPickerLayoutModel);
  sub_219BE81A4();
  return sub_218F9E87C(v48, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
}

__n128 sub_218F9C8D4@<Q0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v71 = a2;
  v74 = a3;
  v73 = type metadata accessor for ChannelPickerHeaderViewLayoutOptions(0);
  MEMORY[0x28223BE20](v73);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v78, a1, 0x151uLL);
  sub_21898EAD4(v78);
  v9 = sub_21892DE88(v78);
  if (*(v9 + 160))
  {
    memcpy(v77, a1, 0x151uLL);
    sub_21898EAD4(v77);
    v10 = sub_21892DE88(v77);
    v11 = *(v10 + 168);
    if (*(v10 + 176))
    {
      *&v70 = *(v10 + 176);
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
      v11 = sub_219BDB5E4();
      *&v70 = v14;
    }
  }

  else
  {
    *&v70 = 0;
    v11 = *(v9 + 152);
  }

  memcpy(v77, a1, 0x151uLL);
  v15 = sub_21898EAD4(v77);
  v16 = sub_21892DE88(v77);
  v17 = *(v16 + 48);
  if (v15 == 1)
  {
    if (!v17)
    {
      memcpy(v76, a1, 0x151uLL);
      v18 = sub_21892DE88(v76);
      v19 = *v18;
      v20 = v18[1];
      v21 = 0xE400000000000000;
      v22 = 1684632167;
LABEL_13:
      *&v69 = v22;
      goto LABEL_14;
    }
  }

  else if (!v17)
  {
    memcpy(v76, a1, 0x151uLL);
    v24 = sub_21892DE88(v76);
    v19 = *v24;
    v20 = v24[1];
    v21 = 0xE400000000000000;
    v22 = 1953720684;
    goto LABEL_13;
  }

  *&v69 = *(v16 + 40);
  memcpy(v76, a1, 0x151uLL);
  v23 = sub_21892DE88(v76);
  v19 = *v23;
  v20 = v23[1];
  v21 = v17;
LABEL_14:

  memcpy(v76, a1, 0x151uLL);
  sub_21898EAD4(v76);
  v25 = sub_21892DE88(v76);
  v26 = *(v25 + 24);
  if (!v26)
  {
    goto LABEL_20;
  }

  v27 = *(v25 + 16);
  if (v26 == 0xE000000000000000 && !v27)
  {
    v28 = 0;
    goto LABEL_21;
  }

  if (sub_219BF78F4())
  {
    v28 = 0;
    v27 = 0;
  }

  else
  {
LABEL_20:
    memcpy(v75, a1, sizeof(v75));
    sub_21898EAD4(v75);
    v28 = *(sub_21892DE88(v75) + 16);
  }

LABEL_21:
  v29 = 0xE000000000000000;
  if (v20)
  {
    v29 = v20;
  }

  *v75 = v69;
  *&v75[8] = v21;
  if (v20)
  {
    v30 = v19;
  }

  else
  {
    v30 = 0;
  }

  *&v75[16] = v30;
  *&v75[24] = v29;
  *&v75[32] = v28;
  *&v75[40] = v27;
  *&v75[48] = 0;
  *&v75[56] = v11;
  *&v75[64] = v70;
  __swift_project_boxed_opaque_existential_1((v72 + 176), *(v72 + 200));
  v31 = sub_219BE8164();
  (*(*(v31 - 8) + 16))(v5, v71, v31);

  sub_219BE7FF4();
  v32 = v73;
  *&v5[*(v73 + 20)] = 0x4035000000000000;
  *&v5[*(v32 + 24)] = 0x4026000000000000;
  *&v5[*(v32 + 28)] = v33;
  sub_219067368(COERCE_DOUBLE(v75), v5, v8);
  sub_218F9E87C(v5, type metadata accessor for ChannelPickerHeaderViewLayoutOptions);
  CGRectGetWidth(*&v8[v6[5]]);
  sub_219BE7FF4();
  sub_219BF6B54();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = &v8[v6[6]];
  v43 = &v8[v6[7]];
  v44 = v6[9];
  v45 = &v8[v6[8]];
  LODWORD(v72) = v45[32];
  LODWORD(v73) = v8[v44];
  v46 = type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  v47 = v8;
  v48 = v74;
  v49 = v74 + *(v46 + 20);
  v50 = *MEMORY[0x277D6E758];
  v51 = sub_219BE9834();
  v52 = *(*(v51 - 8) + 104);
  v53 = *v43;
  v54 = *(v43 + 1);
  v55 = *v42;
  v66 = *(v42 + 1);
  v67 = v55;
  v56 = *(v45 + 1);
  v70 = *v45;
  v71 = v53;
  v68 = v56;
  v69 = v54;
  v52(v49, v50, v51);
  v57 = (v49 + v6[5]);
  *v57 = v35;
  v57[1] = v37;
  v57[2] = v39;
  v57[3] = v41;
  v58 = (v49 + v6[6]);
  v59 = v66;
  *v58 = v67;
  v58[1] = v59;
  v60 = (v49 + v6[7]);
  v61 = v69;
  *v60 = v71;
  v60[1] = v61;
  v62 = v49 + v6[8];
  v63 = v68;
  *v62 = v70;
  *(v62 + 16) = v63;
  *(v62 + 32) = v72;
  *(v49 + v6[9]) = v73;
  sub_218F9E87C(v47, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  v64 = *&v75[48];
  *(v48 + 32) = *&v75[32];
  *(v48 + 48) = v64;
  *(v48 + 64) = *&v75[64];
  result = *&v75[16];
  *v48 = *v75;
  *(v48 + 16) = result;
  *(v48 + *(v46 + 24)) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_218F9CEAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v65 = a3;
  v68 = a2;
  v70 = a1;
  v72 = a4;
  v4 = type metadata accessor for ChannelEngagementLayoutOptions();
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelCategoryLayoutOptions();
  MEMORY[0x28223BE20](v8);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v71);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ChannelCoinLayoutOptions();
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v15);
  v17 = (&v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951C88();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v17[9];
      v78[8] = v17[8];
      v78[9] = v38;
      v78[10] = v17[10];
      v39 = v17[5];
      v78[4] = v17[4];
      v78[5] = v39;
      v40 = v17[7];
      v78[6] = v17[6];
      v78[7] = v40;
      v41 = v17[1];
      v78[0] = *v17;
      v78[1] = v41;
      v42 = v17[3];
      v78[2] = v17[2];
      v78[3] = v42;
      v43 = sub_219BE8164();
      v44 = v69;
      (*(*(v43 - 8) + 16))(v69, v70, v43);
      *(v44 + v8[5]) = 0x4020000000000000;
      *(v44 + v8[6]) = 0x4031000000000000;
      *(v44 + v8[7]) = 0;
      *(v44 + v8[8]) = 0;
      sub_2198C0B5C(v78, *&v44, v77);
      sub_218BFB180(v78, v11);
      v45 = v77[7];
      v11[17] = v77[6];
      v11[18] = v45;
      v46 = v77[9];
      v11[19] = v77[8];
      v11[20] = v46;
      v47 = v77[3];
      v11[13] = v77[2];
      v11[14] = v47;
      v48 = v77[5];
      v11[15] = v77[4];
      v11[16] = v48;
      v49 = v77[1];
      v11[11] = v77[0];
      v11[12] = v49;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v44, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v78);
    }

    v57 = v17;
    v55 = v66;
    sub_218980AD8(v57, v66);
    v58 = sub_219BE8164();
    v59 = v67;
    (*(*(v58 - 8) + 16))(v67, v70, v58);
    __swift_project_boxed_opaque_existential_1((v65 + 136), *(v65 + 160));
    sub_218AC2AA8(v55, v78);
    sub_218A5A148();
    v61 = (v11 + *(v60 + 48));
    sub_218F9E814(v55, v11, type metadata accessor for ChannelPickerEngagementModel);
    v62 = v78[1];
    *v61 = v78[0];
    v61[1] = v62;
    v63 = v78[3];
    v61[2] = v78[2];
    v61[3] = v63;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    sub_218F9E87C(v59, type metadata accessor for ChannelEngagementLayoutOptions);
    v56 = type metadata accessor for ChannelPickerEngagementModel;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = v17[4];
      v20 = v17[5];
      v21 = v17[2];
      v75[3] = v17[3];
      v75[4] = v19;
      v76[0] = v20;
      *(v76 + 9) = *(v17 + 89);
      v22 = v17[1];
      v75[0] = *v17;
      v75[1] = v22;
      v75[2] = v21;
      v23 = sub_219BE8164();
      (*(*(v23 - 8) + 16))(v14, v70, v23);
      sub_2189519D8();
      sub_219BE6934();
      memcpy(v77, v74, 0x151uLL);
      sub_218F9E778(v77);
      sub_219BE6934();
      memcpy(v78, v73, 0x151uLL);
      sub_218F9E778(v78);
      __asm { FMOV            V0.2D, #24.0 }

      *&v14[v12[8]] = _Q0;
      *&v14[v12[9]] = 0x4020000000000000;
      *&v14[v12[10]] = 0x4031000000000000;
      v14[v12[5]] = 3;
      v14[v12[6]] = 1;
      v14[v12[11]] = 0;
      v14[v12[7]] = 0;
      v74[0] = *(v76 + 8);
      v73[0] = 0x6C61636F6CLL;
      v73[1] = 0xE500000000000000;
      sub_2187F3BD4();
      v29 = sub_219BF7084();
      sub_218EBB0BC(v75, v14, v29 & 1, v74);
      sub_218BFB1DC(v75, v11);
      v30 = v74[13];
      v11[19] = v74[12];
      v11[20] = v30;
      *(v11 + 329) = *(&v74[13] + 9);
      v31 = v74[9];
      v11[15] = v74[8];
      v11[16] = v31;
      v32 = v74[11];
      v11[17] = v74[10];
      v11[18] = v32;
      v33 = v74[5];
      v11[11] = v74[4];
      v11[12] = v33;
      v34 = v74[7];
      v11[13] = v74[6];
      v11[14] = v34;
      v35 = v74[1];
      v11[7] = v74[0];
      v11[8] = v35;
      v36 = v74[3];
      v11[9] = v74[2];
      v11[10] = v36;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v14, type metadata accessor for ChannelCoinLayoutOptions);
      return sub_218980BE4(v75);
    }

    v50 = v17[7];
    v77[6] = v17[6];
    v77[7] = v50;
    v77[8] = v17[8];
    *(&v77[8] + 9) = *(v17 + 137);
    v51 = v17[3];
    v77[2] = v17[2];
    v77[3] = v51;
    v52 = v17[5];
    v77[4] = v17[4];
    v77[5] = v52;
    v53 = v17[1];
    v77[0] = *v17;
    v77[1] = v53;
    v54 = sub_219BE8164();
    v55 = v69;
    (*(*(v54 - 8) + 16))(v69, v70, v54);
    *(v55 + v8[5]) = 0x4020000000000000;
    *(v55 + v8[6]) = 0x4031000000000000;
    *(v55 + v8[7]) = 0;
    *(v55 + v8[8]) = 0;
    v74[6] = v77[6];
    v74[7] = v77[7];
    v74[8] = v77[8];
    *(&v74[8] + 9) = *(&v77[8] + 9);
    v74[2] = v77[2];
    v74[3] = v77[3];
    v74[4] = v77[4];
    v74[5] = v77[5];
    v74[0] = v77[0];
    v74[1] = v77[1];
    sub_2198C03D4(v74, *&v55, &v78[10]);
    v78[6] = v77[6];
    v78[7] = v77[7];
    v78[8] = v77[8];
    *(&v78[8] + 9) = *(&v77[8] + 9);
    v78[2] = v77[2];
    v78[3] = v77[3];
    v78[4] = v77[4];
    v78[5] = v77[5];
    v78[0] = v77[0];
    v78[1] = v77[1];
    memcpy(v11, v78, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    v56 = type metadata accessor for ChannelCategoryLayoutOptions;
  }

  return sub_218F9E87C(v55, v56);
}

uint64_t sub_218F9D774@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v103 = a4;
  v115 = a3;
  v125 = a1;
  v118 = a5;
  v6 = type metadata accessor for ChannelEngagementLayoutOptions();
  MEMORY[0x28223BE20](v6 - 8);
  v106 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChannelPickerEngagementModel();
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for ChannelCategoryLayoutOptions();
  MEMORY[0x28223BE20](v109);
  v110 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for ChannelPickerLayoutModel();
  MEMORY[0x28223BE20](v117);
  v116 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ChannelTagLayoutOptions();
  MEMORY[0x28223BE20](v102);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ChannelPickerElementModel();
  MEMORY[0x28223BE20](v114);
  v113 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951C88();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v100 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E8DC();
  v111 = v18;
  MEMORY[0x28223BE20](v18);
  v112 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F9E970(0, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v108 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v99 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v99 - v26;
  sub_218BFAEC4();
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8();
  v101 = v33;
  v105 = a2;
  sub_219BE6974();
  v34 = sub_219BE23E4();
  (*(v30 + 8))(v32, v29);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v16 + 16);
    v36(v27, v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * (v35 - 1), v15);

    v37 = *(v16 + 56);
    v37(v27, 0, 1, v15);
  }

  else
  {

    v37 = *(v16 + 56);
    v37(v27, 1, 1, v15);
    v36 = *(v16 + 16);
  }

  v36(v25, v125, v15);
  v37(v25, 0, 1, v15);
  v38 = v112;
  v39 = *(v111 + 12);
  sub_218F9EA1C(v27, v112);
  sub_218F9EA1C(v25, v38 + v39);
  v40 = *(v16 + 48);
  if (v40(v38, 1, v15) == 1)
  {
    sub_218F9EAB0(v25);
    sub_218F9EAB0(v27);
    if (v40(v38 + v39, 1, v15) == 1)
    {
      sub_218F9EAB0(v38);
      v41 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v111 = v27;
  v42 = v38;
  v43 = v38;
  v44 = v108;
  sub_218F9EA1C(v42, v108);
  if (v40(v43 + v39, 1, v15) == 1)
  {
    sub_218F9EAB0(v25);
    sub_218F9EAB0(v111);
    (*(v16 + 8))(v44, v15);
    v38 = v43;
LABEL_9:
    sub_218F9E87C(v38, sub_218F9E8DC);
    v41 = 0;
    goto LABEL_11;
  }

  v45 = v100;
  (*(v16 + 32))(v100, v43 + v39, v15);
  sub_218F9E9D4(&qword_27CC0EF88, sub_218951C88);
  v41 = sub_219BF53A4();
  v46 = *(v16 + 8);
  v46(v45, v15);
  sub_218F9EAB0(v25);
  sub_218F9EAB0(v111);
  v46(v44, v15);
  sub_218F9EAB0(v43);
LABEL_11:
  v47 = v113;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v69 = v47[9];
      v124[8] = v47[8];
      v124[9] = v69;
      v124[10] = v47[10];
      v70 = v47[5];
      v124[4] = v47[4];
      v124[5] = v70;
      v71 = v47[7];
      v124[6] = v47[6];
      v124[7] = v71;
      v72 = v47[1];
      v124[0] = *v47;
      v124[1] = v72;
      v73 = v47[3];
      v124[2] = v47[2];
      v124[3] = v73;
      v74 = sub_219BE8164();
      v75 = v110;
      (*(*(v74 - 8) + 16))(v110, v115, v74);
      v76 = v109;
      *(v75 + *(v109 + 20)) = 0x4020000000000000;
      *(v75 + v76[6]) = 0x4031000000000000;
      *(v75 + v76[7]) = 0;
      *(v75 + v76[8]) = v41 & 1;
      sub_2198C0B5C(v124, *&v75, v123);
      v77 = v116;
      sub_218BFB180(v124, v116);
      v78 = v123[7];
      v77[17] = v123[6];
      v77[18] = v78;
      v79 = v123[9];
      v77[19] = v123[8];
      v77[20] = v79;
      v80 = v123[3];
      v77[13] = v123[2];
      v77[14] = v80;
      v81 = v123[5];
      v77[15] = v123[4];
      v77[16] = v81;
      v82 = v123[1];
      v77[11] = v123[0];
      v77[12] = v82;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v75, type metadata accessor for ChannelCategoryLayoutOptions);
      return sub_218980B3C(v124);
    }

    v92 = v104;
    sub_218980AD8(v47, v104);
    v93 = sub_219BE8164();
    v94 = v106;
    (*(*(v93 - 8) + 16))(v106, v115, v93);
    __swift_project_boxed_opaque_existential_1((v103 + 136), *(v103 + 160));
    sub_218AC2AA8(v92, v124);
    sub_218A5A148();
    v96 = &v116[*(v95 + 48)];
    sub_218F9E814(v92, v116, type metadata accessor for ChannelPickerEngagementModel);
    v97 = v124[1];
    *v96 = v124[0];
    *(v96 + 1) = v97;
    v98 = v124[3];
    *(v96 + 2) = v124[2];
    *(v96 + 3) = v98;
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    sub_218F9E87C(v94, type metadata accessor for ChannelEngagementLayoutOptions);
    v90 = type metadata accessor for ChannelPickerEngagementModel;
    v91 = v92;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v49 = v47[4];
      v50 = v47[5];
      v51 = v47[2];
      v121[3] = v47[3];
      v121[4] = v49;
      v122[0] = v50;
      *(v122 + 9) = *(v47 + 89);
      v52 = v47[1];
      v121[0] = *v47;
      v121[1] = v52;
      v121[2] = v51;
      v53 = sub_219BE8164();
      v54 = v107;
      (*(*(v53 - 8) + 16))(v107, v115, v53);
      sub_219BE6934();
      memcpy(v123, v120, 0x151uLL);
      sub_218F9E778(v123);
      sub_219BE6934();
      memcpy(v124, v119, 0x151uLL);
      sub_218F9E778(v124);
      v55 = v102;
      __asm { FMOV            V0.2D, #24.0 }

      *(v54 + *(v102 + 32)) = _Q0;
      *(v54 + v55[9]) = 0x4020000000000000;
      *(v54 + v55[10]) = 0x4031000000000000;
      *(v54 + v55[5]) = 3;
      *(v54 + v55[6]) = 1;
      *(v54 + v55[7]) = 0;
      *(v54 + v55[11]) = v41 & 1;
      sub_219275728(v121, v54, v120);
      v61 = v116;
      sub_218BFB1DC(v121, v116);
      v62 = v120[11];
      *(v61 + 17) = v120[10];
      *(v61 + 18) = v62;
      *(v61 + 38) = *&v120[12];
      v63 = v120[7];
      *(v61 + 13) = v120[6];
      *(v61 + 14) = v63;
      v64 = v120[9];
      *(v61 + 15) = v120[8];
      *(v61 + 16) = v64;
      v65 = v120[3];
      *(v61 + 9) = v120[2];
      *(v61 + 10) = v65;
      v66 = v120[5];
      *(v61 + 11) = v120[4];
      *(v61 + 12) = v66;
      v67 = v120[1];
      *(v61 + 7) = v120[0];
      *(v61 + 8) = v67;
      swift_storeEnumTagMultiPayload();
      sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
      sub_219BE75D4();
      sub_218F9E87C(v54, type metadata accessor for ChannelTagLayoutOptions);
      return sub_218980BE4(v121);
    }

    v83 = v47[7];
    v123[6] = v47[6];
    v123[7] = v83;
    v123[8] = v47[8];
    *(&v123[8] + 9) = *(v47 + 137);
    v84 = v47[3];
    v123[2] = v47[2];
    v123[3] = v84;
    v85 = v47[5];
    v123[4] = v47[4];
    v123[5] = v85;
    v86 = v47[1];
    v123[0] = *v47;
    v123[1] = v86;
    v87 = sub_219BE8164();
    v88 = *&v110;
    (*(*(v87 - 8) + 16))(v110, v115, v87);
    v89 = v109;
    *(*&v88 + *(v109 + 20)) = 0x4020000000000000;
    *(*&v88 + v89[6]) = 0x4031000000000000;
    *(*&v88 + v89[7]) = 0;
    *(*&v88 + v89[8]) = v41 & 1;
    v120[6] = v123[6];
    v120[7] = v123[7];
    v120[8] = v123[8];
    *(&v120[8] + 9) = *(&v123[8] + 9);
    v120[2] = v123[2];
    v120[3] = v123[3];
    v120[4] = v123[4];
    v120[5] = v123[5];
    v120[0] = v123[0];
    v120[1] = v123[1];
    sub_2198C03D4(v120, v88, &v124[10]);
    v124[6] = v123[6];
    v124[7] = v123[7];
    v124[8] = v123[8];
    *(&v124[8] + 9) = *(&v123[8] + 9);
    v124[2] = v123[2];
    v124[3] = v123[3];
    v124[4] = v123[4];
    v124[5] = v123[5];
    v124[0] = v123[0];
    v124[1] = v123[1];
    memcpy(v116, v124, 0x140uLL);
    swift_storeEnumTagMultiPayload();
    sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    sub_219BE75D4();
    v90 = type metadata accessor for ChannelCategoryLayoutOptions;
    v91 = *&v88;
  }

  return sub_218F9E87C(v91, v90);
}

uint64_t sub_218F9E50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_218F9E5D4, 0, 0);
}

uint64_t sub_218F9E5D4()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_218948C7C(sub_218F9E758, v3);

  type metadata accessor for ChannelPickerLayoutSectionDescriptor();
  type metadata accessor for ChannelPickerLayoutModel();
  sub_218F9E9D4(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_218F9E9D4(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_218F9E814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F9E87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218F9E8DC()
{
  if (!qword_27CC14128)
  {
    sub_218F9E970(255, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC14128);
    }
  }
}

void sub_218F9E970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F9E9D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218F9EA1C(uint64_t a1, uint64_t a2)
{
  sub_218F9E970(0, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F9EAB0(uint64_t a1)
{
  sub_218F9E970(0, &qword_27CC0EF78, sub_218951C88, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218F9EB3C(uint64_t a1)
{
  sub_218747E58(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  result = sub_218F9F10C(a1, v39);
  v11 = v39[0];
  if ((~v39[0] & 0xF000000000000007) != 0)
  {
    v12 = *(v1 + 112);
    v13 = *(v1 + 64);
    v14 = sub_219BDFA44();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_218718690(v1 + 72, v39);
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    v36 = v12;
    sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0);
    if (v33)
    {
      sub_21875F93C(&v32, v34);
      *&v32 = v11;
      v15 = sub_2194DA78C(v34);
      v17 = v16;
      v19 = v18;
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    else
    {
      sub_2187448D0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v15 = qword_280ED32D8;
      v17 = qword_280ED32E0;
      v19 = qword_280ED32E8;

      sub_2188202A8(v17);
    }

    v31 = v11;
    v33 = sub_219BDD274();
    *&v32 = v13;
    sub_2189B4E2C(v9, v7);
    sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0);
    v20 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v21 = (v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = v9;
    v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
    v29 = v11;
    v23 = swift_allocObject();
    *(v23 + 16) = v13;
    sub_2189B4EAC(v7, v23 + v20);
    v24 = v23 + v21;
    v25 = v34[1];
    *v24 = v34[0];
    *(v24 + 16) = v25;
    *(v24 + 32) = v35;
    v26 = (v23 + v22);
    v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v26 = 0;
    v26[1] = 0;
    *v27 = v15;
    v27[1] = v17;
    v27[2] = v19;
    swift_retain_n();

    sub_2188202A8(v17);
    sub_2186CF94C();
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v17);
    sub_2187448D0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218CF8590(v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_2187448D0(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8408);
    return sub_218970170(v29);
  }

  return result;
}

uint64_t sub_218F9F10C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218747E58(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34[-v6];
  v8 = type metadata accessor for AudioFeedTrack(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_219BDD944();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for AudioPlaylistFeedRouteModel();
  MEMORY[0x28223BE20](v15);
  v17 = &v34[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218F9F4B0(a1, v17, type metadata accessor for AudioPlaylistFeedRouteModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    v19 = v2[18];
    v20 = v2[19];
    __swift_project_boxed_opaque_existential_1(v2 + 15, v19);
    (*(v20 + 8))(v18, v19, v20);
    swift_unknownObjectRelease();
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_21872CFDC(v7, v11, type metadata accessor for AudioFeedTrack);
    v30 = swift_allocBox();
    result = sub_21872CFDC(v11, v31, type metadata accessor for AudioFeedTrack);
    v33 = v30 | 0x1000000000000002;
  }

  else
  {
    sub_21872CFDC(v17, v14, MEMORY[0x277D2FB40]);
    sub_2187B2C48();
    v22 = v21;
    v23 = swift_allocBox();
    v25 = v24;
    v26 = *(v22 + 48);
    sub_2187B2DA0();
    v28 = *(v27 + 48);
    sub_218F9F4B0(v14, v25, MEMORY[0x277D2FB40]);
    v29 = MEMORY[0x277D84F90];
    *(v25 + v28) = MEMORY[0x277D84F90];
    result = sub_218CF8654(v14);
    *(v25 + v26) = v29;
    v33 = v23 | 2;
  }

  *a2 = v33;
  return result;
}

uint64_t sub_218F9F4B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F9F5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218F9F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_218F9FA30(v10, &v9);
  sub_218F9F7EC();
  swift_allocObject();
  sub_218F9FA8C();

  v7 = sub_219BE6E64();
  sub_218F9FAE0(v10);
  return v7;
}

uint64_t sub_218F9F6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_218F9F92C(v10, &v9);
  sub_218F9F7EC();
  swift_allocObject();
  sub_218F9F988();

  v7 = sub_219BE6E64();
  sub_218F9F9DC(v10);
  return v7;
}

uint64_t sub_218F9F77C()
{
  sub_218F9F7EC();
  swift_allocObject();
  sub_218F9F8D8();

  return sub_219BE6E64();
}

void sub_218F9F7EC()
{
  if (!qword_27CC14130)
  {
    type metadata accessor for SearchMoreSectionDescriptor();
    type metadata accessor for SearchMoreModel(255);
    sub_218F9F5CC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor);
    sub_218F9F5CC(&qword_27CC0B890, type metadata accessor for SearchMoreModel);
    v0 = sub_219BE6E74();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC14130);
    }
  }
}

unint64_t sub_218F9F8D8()
{
  result = qword_27CC14138;
  if (!qword_27CC14138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14138);
  }

  return result;
}

unint64_t sub_218F9F988()
{
  result = qword_27CC1E170;
  if (!qword_27CC1E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1E170);
  }

  return result;
}

unint64_t sub_218F9FA8C()
{
  result = qword_27CC14140;
  if (!qword_27CC14140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14140);
  }

  return result;
}

uint64_t sub_218F9FB34(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE9414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v18, v19);
    sub_2186CF94C();
    swift_dynamicCast();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v13 = a1;

    sub_219BE6454();

    v14 = sub_219BF53D4();

    v15 = [v13 objectForKey_];

    if (v15)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v18, v19);
      swift_dynamicCast();
      *&v19[0] = 0xF000000000000040;
      (*(v7 + 104))(v9, *MEMORY[0x277D6E598], v6);
      sub_219BE6474();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  (*(v7 + 8))(v9, v6);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_218F9FE40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v15, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_218FA08BC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_13_3;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_218FA0220(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v15, &v16);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    type metadata accessor for SavedFeedViewController();
    sub_219BF6584();

    v6 = v17;
    if (v17)
    {
      sub_219BE8664();
      v7 = sub_219BE7BC4();

      v8 = v7;

      v9 = sub_219BF53D4();

      [a1 setObject:v8 forKey:v9];

      v10 = 0;
    }

    else
    {
      v11 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v12 = sub_219BF53D4();
      v13 = [v11 initWithMessage_];

      v10 = v13;
      v8 = v13;
    }

    a2(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218FA04C4(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v14, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_218FA08A4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_81;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

double sub_218FA08F8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BEEA84();
  v30 = *(v5 - 8);
  v6 = v30;
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryFeedContentConfig();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[1];
  v29 = *v2;
  v13 = v29;
  v27 = v11;
  v28 = v12;
  sub_218FA0C54(a1, v11, type metadata accessor for HistoryFeedContentConfig);
  v14 = type metadata accessor for HistoryFeedServiceConfig();
  v15 = *(v2 + v14[6]);
  v16 = *(v2 + v14[7]);
  v17 = *(v6 + 16);
  v18 = v2 + v14[8];
  v19 = v31;
  v17(v8, v18, v31);
  v20 = v28;
  *a2 = v13;
  *(a2 + 1) = v20;
  v21 = v27;
  sub_218FA0C54(v27, &a2[v14[5]], type metadata accessor for HistoryFeedContentConfig);
  *&a2[v14[6]] = v15;
  *&a2[v14[7]] = v16;
  v22 = v19;
  v17(&a2[v14[8]], v8, v19);
  v23 = v15;
  swift_unknownObjectRetain();

  v24 = [v16 autoRefreshMinimumInterval];
  (*(v30 + 8))(v8, v22);
  sub_218988A30(v21);
  result = v24;
  *&a2[v14[9]] = v24;
  return result;
}

unint64_t sub_218FA0C00()
{
  result = qword_280EDA408;
  if (!qword_280EDA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDA408);
  }

  return result;
}

uint64_t sub_218FA0C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for WebEmbedResource()
{
  result = qword_280ED7028;
  if (!qword_280ED7028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FA0D30()
{
  result = sub_219BDB954();
  if (v1 <= 0x3F)
  {
    result = sub_219BE76C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_218FA0DBC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(a3, a1, v6, v8);
  (v11)(v10, a1, v6);
  v12 = type metadata accessor for WebEmbedResource();
  v13 = *(v12 + 20);
  v14 = a2;
  sub_21900CD8C(v10, a2, a3 + v13);
  v15 = sub_219BDB794();
  if (v16)
  {
    v17 = v16;
    if (v15 == 1702195828 && v16 == 0xE400000000000000 || (v18 = v15, (sub_219BF78F4() & 1) != 0))
    {
      (*(v7 + 8))(a1, v6);

      v19 = 1;
    }

    else
    {
      if (v18 == 49 && v17 == 0xE100000000000000)
      {
        v19 = 1;
      }

      else
      {
        v19 = sub_219BF78F4();
      }

      (*(v7 + 8))(a1, v6);
    }

    v20 = *(v12 + 24);
    v21 = v19 & 1;
  }

  else
  {
    (*(v7 + 8))(a1, v6);

    v20 = *(v12 + 24);
    v21 = 1;
  }

  *(a3 + v20) = v21;
}

uint64_t sub_218FA0FF4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA2D8();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for AudioFeedGroupConfig();
  v11 = *(v28 - 8);
  v12 = MEMORY[0x28223BE20](v28);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  result = type metadata accessor for AudioFeedConfig();
  v18 = *(v1 + *(result + 20));
  v26 = *(v18 + 16);
  if (v26)
  {
    v23 = a1;
    v19 = 0;
    v27 = v11;
    v25 = v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = (v8 + 32);
    while (v19 < *(v18 + 16))
    {
      sub_21872AB74(v25 + *(v27 + 72) * v19, v16, type metadata accessor for AudioFeedGroupConfig);
      sub_21872AB74(v16, v14, type metadata accessor for AudioFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        (*v24)(v10, v14, v7);
        sub_219BEDD14();

        sub_2187353C8(v5, type metadata accessor for CuratedAudioFeedGroupConfigData);
        v21 = sub_219BF7614();

        (*(v8 + 8))(v10, v7);
        v20 = v16;
        if (!v21)
        {
          a1 = v23;
          sub_218BE8AFC(v16, v23);
          v22 = 0;
LABEL_10:
          v11 = v27;
          return (*(v11 + 56))(a1, v22, 1, v28);
        }
      }

      else
      {
        sub_2187353C8(v16, type metadata accessor for AudioFeedGroupConfig);
        v20 = v14;
      }

      ++v19;
      result = sub_2187353C8(v20, type metadata accessor for AudioFeedGroupConfig);
      if (v26 == v19)
      {
        v22 = 1;
        a1 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 1;
    return (*(v11 + 56))(a1, v22, 1, v28);
  }

  return result;
}

uint64_t sub_218FA1368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7370756F7267;
  if (v2 != 1)
  {
    v4 = 0x617461646174656DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x446873696C627570;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000657461;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7370756F7267;
  if (*a2 != 1)
  {
    v8 = 0x617461646174656DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x446873696C627570;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000657461;
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

uint64_t sub_218FA1468()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FA1510()
{
  sub_219BF5524();
}

uint64_t sub_218FA15A4()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

uint64_t sub_218FA1648@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FA3208();
  *a1 = result;
  return result;
}

void sub_218FA1678(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657461;
  v4 = 0xE600000000000000;
  v5 = 0x7370756F7267;
  if (v2 != 1)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x446873696C627570;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_218FA16DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_218FA3208();
  *a1 = result;
  return result;
}

uint64_t sub_218FA1704(uint64_t a1)
{
  v2 = sub_218FA2F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FA1740(uint64_t a1)
{
  v2 = sub_218FA2F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FA177C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_2186ED99C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA2E84(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v43 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - v11;
  sub_218FA2FE8(0, &qword_280EE72E8, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FA2F94();
  v18 = v44;
  sub_219BF7B04();
  if (v18)
  {
    v27 = a1;
  }

  else
  {
    v38 = v7;
    v39 = v12;
    v40 = a1;
    v44 = v15;
    v19 = sub_219BDBD34();
    v47 = 0;
    sub_218FA253C(&unk_280EE9C70, MEMORY[0x277CC9578]);
    v20 = v43;
    sub_219BE2C94();
    v21 = *(v19 - 8);
    v22 = *(v21 + 48);
    if (v22(v20, 1, v19) == 1)
    {
      v23 = v39;
      sub_219BDBD24();
      if (v22(v20, 1, v19) != 1)
      {
        sub_2187353C8(v20, sub_2186DCF58);
      }
    }

    else
    {
      v23 = v39;
      (*(v21 + 32))(v39, v20, v19);
    }

    (*(v21 + 56))(v23, 0, 1, v19);
    sub_218FA2EB8();
    v25 = v24;
    v46 = 1;
    sub_218FA253C(&qword_280EE7D90, sub_218FA2EB8);
    v26 = v38;
    sub_219BE2C94();
    v29 = *(v25 - 8);
    if ((*(v29 + 48))(v26, 1, v25) == 1)
    {
      sub_2187353C8(v26, sub_218FA2E84);
      v30 = 0;
    }

    else
    {
      v31 = sub_219BE1E44();
      v32 = v26;
      v30 = v31;
      (*(v29 + 8))(v32, v25);
    }

    v33 = v41;
    sub_219BEE5B4();
    v45 = 2;
    sub_218FA253C(&qword_280E91B88, MEMORY[0x277D32028]);
    v34 = v42;
    v35 = v17;
    sub_219BE2C94();
    v36 = v44;
    sub_218734714(v23, v30, v34, v33);
    (*(v36 + 8))(v35, v14);
    v27 = v40;
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_218FA1D7C(void *a1)
{
  v3 = v1;
  sub_218FA2FE8(0, &qword_27CC14160, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FA2F94();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_218FA253C(&qword_280EE9CA0, MEMORY[0x277CC9578]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for AudioFeedConfig() + 20));
    v11[15] = 1;
    sub_2186E6D8C(0);
    sub_218FA304C(&qword_27CC14168, sub_2186E6D8C, sub_218FA2F60);
    sub_219BF7834();
    v11[14] = 2;
    sub_2186ED99C(0);
    sub_218FA304C(&qword_27CC14170, sub_2186ED99C, sub_218FA30BC);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

BOOL sub_218FA2034(uint64_t a1, uint64_t a2)
{
  v2 = 0x756F59726F66;
  v3 = *(a2 + 24);
  v4 = sub_218BE7530();
  v5 = (v3 + 32);
  v6 = *(v3 + 16);
  v7 = v4;
  do
  {
    v9 = v6;
    if (v6-- == 0)
    {
      break;
    }

    v11 = *v5;
    if (v11 > 2)
    {
      if (v11 == 3)
      {
        v14 = 0xE700000000000000;
        v13 = 0x6C6C6177796170;
      }

      else
      {
        if (v11 == 4)
        {
          v13 = 0x64657461727563;
        }

        else
        {
          v13 = 0x4C7974696C697475;
        }

        if (v11 == 4)
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xEC000000736B6E69;
        }
      }
    }

    else
    {
      if (v11 == 1)
      {
        v12 = 0x7478654E7075;
      }

      else
      {
        v12 = v2;
      }

      if (*v5)
      {
        v13 = v12;
      }

      else
      {
        v13 = 1869768040;
      }

      if (*v5)
      {
        v14 = 0xE600000000000000;
      }

      else
      {
        v14 = 0xE400000000000000;
      }
    }

    v15 = 0x4C7974696C697475;
    if (v7 == 4)
    {
      v15 = 0x64657461727563;
    }

    v16 = 0xEC000000736B6E69;
    if (v7 == 4)
    {
      v16 = 0xE700000000000000;
    }

    if (v7 == 3)
    {
      v15 = 0x6C6C6177796170;
      v16 = 0xE700000000000000;
    }

    v17 = v2;
    if (v7 == 1)
    {
      v18 = 0x7478654E7075;
    }

    else
    {
      v18 = v2;
    }

    v19 = 0xE600000000000000;
    if (!v7)
    {
      v18 = 1869768040;
      v19 = 0xE400000000000000;
    }

    if (v7 <= 2)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v7 <= 2)
    {
      v21 = v19;
    }

    else
    {
      v21 = v16;
    }

    if (v13 == v20 && v14 == v21)
    {

      return v9 != 0;
    }

    v8 = sub_219BF78F4();

    ++v5;
    v2 = v17;
  }

  while ((v8 & 1) == 0);
  return v9 != 0;
}

uint64_t sub_218FA22A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 20));
  if (*(*(a1 + 24) + 16))
  {
    v6[2] = MEMORY[0x28223BE20](a1);

    return sub_2195E68A8(sub_218FA2E64, v6, v4);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_218FA2354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  sub_2186ED99C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872AB74(v5, v13, sub_2186DCF58);
  sub_21872AB74(v5 + *(a2 + 28), v10, sub_2186ED99C);

  return sub_218734714(v13, a1, v10, a3);
}

uint64_t sub_218FA253C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_218FA2584()
{
  v0 = sub_219BF1934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA2E30(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA290C(v9);
  sub_2186FA2D8();
  v11 = v10;
  v12 = *(v10 - 8);
  if ((*(v12 + 48))(v9, 1, v10) == 1)
  {
    sub_2187353C8(v9, sub_218FA2E30);
    return MEMORY[0x277D84F90];
  }

  sub_219BEDD14();
  (*(v12 + 8))(v9, v11);
  (*(v1 + 16))(v3, &v6[*(v4 + 20)], v0);
  sub_2187353C8(v6, type metadata accessor for CuratedAudioFeedGroupConfigData);
  sub_219BF1724();
  (*(v1 + 8))(v3, v0);
  v13 = sub_219BF5AB4();

  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_15:

    return MEMORY[0x277D84F90];
  }

  v14 = sub_219BF7214();
  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  v25 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v17 = v25;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v16, v13);
      }

      else
      {
      }

      v18 = sub_219BF16A4();
      v20 = v19;

      v25 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_21870B65C((v21 > 1), v22 + 1, 1);
        v17 = v25;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      v23 = v17 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
    }

    while (v14 != v16);

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_218FA290C@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA2D8();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedGroupConfig();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for AudioFeedConfig();
  v14 = *(v1 + *(result + 20));
  v15 = *(v14 + 16);
  if (v15)
  {
    v26 = v7;
    v27 = a1;
    v16 = 0;
    v17 = v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v32 = v9;
    v33 = (v7 + 32);
    v29 = (v7 + 8);
    v30 = v17;
    v18 = v28;
    v31 = v10;
    while (v16 < *(v14 + 16))
    {
      sub_21872AB74(v17 + *(v10 + 72) * v16, v12, type metadata accessor for AudioFeedGroupConfig);
      if (swift_getEnumCaseMultiPayload() <= 2)
      {
        result = sub_2187353C8(v12, type metadata accessor for AudioFeedGroupConfig);
      }

      else
      {
        v19 = v15;
        v20 = *v33;
        (*v33)(v18, v12, v6);
        v21 = v34;
        v22 = v18;
        sub_219BEDD14();

        sub_2187353C8(v21, type metadata accessor for CuratedAudioFeedGroupConfigData);
        v23 = sub_219BF7614();

        if (v23 == 1)
        {
          result = (*v29)(v22, v6);
          v18 = v22;
          v10 = v31;
          v15 = v19;
        }

        else
        {
          if (!v23)
          {
            a1 = v27;
            v20(v27, v28, v6);
            v24 = 0;
            goto LABEL_13;
          }

          v15 = v19;
          v18 = v28;
          result = (*v29)(v28, v6);
          v10 = v31;
        }

        v17 = v30;
      }

      if (v15 == ++v16)
      {
        v24 = 1;
        a1 = v27;
LABEL_13:
        v7 = v26;
        return (*(v7 + 56))(a1, v24, 1, v6);
      }
    }

    __break(1u);
  }

  else
  {
    v24 = 1;
    return (*(v7 + 56))(a1, v24, 1, v6);
  }

  return result;
}

uint64_t sub_218FA2C9C()
{
  v0 = type metadata accessor for CuratedAudioFeedGroupConfigData();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA2E30(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA290C(v5);
  sub_2186FA2D8();
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_2187353C8(v5, sub_218FA2E30);
    return 0;
  }

  else
  {
    sub_219BEDD14();
    (*(v8 + 8))(v5, v7);
    v10 = sub_2190D0DD0();
    sub_2187353C8(v2, type metadata accessor for CuratedAudioFeedGroupConfigData);
    return v10;
  }
}

void sub_218FA2EB8()
{
  if (!qword_280EE7D88)
  {
    type metadata accessor for AudioFeedGroupConfig();
    sub_218FA253C(&qword_280ECF628, type metadata accessor for AudioFeedGroupConfig);
    sub_218FA2F60();
    v0 = sub_219BE1E54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7D88);
    }
  }
}

unint64_t sub_218FA2F94()
{
  result = qword_280EDB428;
  if (!qword_280EDB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB428);
  }

  return result;
}

void sub_218FA2FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FA2F94();
    v7 = a3(a1, &type metadata for AudioFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218FA304C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_218FA3104()
{
  result = qword_27CC14178;
  if (!qword_27CC14178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14178);
  }

  return result;
}

unint64_t sub_218FA315C()
{
  result = qword_280EDB418;
  if (!qword_280EDB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB418);
  }

  return result;
}

unint64_t sub_218FA31B4()
{
  result = qword_280EDB420;
  if (!qword_280EDB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB420);
  }

  return result;
}

uint64_t sub_218FA3208()
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

uint64_t sub_218FA3254()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218FA328C()
{
  v1 = *(*(*v0 + 16) + 32);

  return v1;
}

uint64_t sub_218FA32C4()
{
  v1 = *(*(*v0 + 16) + 48);

  return v1;
}

void *sub_218FA32FC()
{
  v1 = *(*(*v0 + 16) + 64);
  v2 = v1;
  return v1;
}

unint64_t sub_218FA332C()
{
  v1 = *(*v0 + 16);
  v2 = *(v1 + 104);
  if (v2 == 255)
  {
    return 0xD000000000000017;
  }

  v3 = *(v1 + 96);
  if (v2)
  {
    v4 = *(v1 + 80);
    sub_218FA396C(v4, *(v1 + 88), *(v1 + 96), 1);
    return v4;
  }

  else
  {
    v5 = v3;
  }

  return v3;
}

uint64_t sub_218FA33EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_218FA39BC(&qword_27CC14198, a2, type metadata accessor for FollowingEditorialModel);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

size_t sub_218FA347C(unint64_t a1)
{
  v2 = type metadata accessor for FollowingModel();
  MEMORY[0x28223BE20](v2);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218950B84();
  v29 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = &v27 - v11;
  if (a1 >> 62)
  {
    v25 = v10;
    v26 = sub_219BF7214();
    v10 = v25;
    v13 = v26;
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  if (!v13)
  {
    return v14;
  }

  v15 = v10;
  v30 = MEMORY[0x277D84F90];
  result = sub_218C34A38(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = v30;
    v17 = v15;
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v28 = v6 + 32;
      do
      {
        v19 = v17;
        *v4 = MEMORY[0x21CECE0F0](v18);
        swift_storeEnumTagMultiPayload();
        sub_218FA39BC(&qword_280EDC630, 255, type metadata accessor for FollowingModel);
        sub_219BE5FB4();
        v30 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_218C34A38(v20 > 1, v21 + 1, 1);
          v14 = v30;
        }

        ++v18;
        *(v14 + 16) = v21 + 1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v21, v12, v29);
        v17 = v19;
      }

      while (v13 != v18);
    }

    else
    {
      v22 = (v15 + 32);
      v28 = sub_218FA39BC(&qword_280EDC630, 255, type metadata accessor for FollowingModel);
      do
      {
        *v4 = *v22;
        swift_storeEnumTagMultiPayload();

        sub_219BE5FB4();
        v30 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_218C34A38(v23 > 1, v24 + 1, 1);
          v14 = v30;
        }

        *(v14 + 16) = v24 + 1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v24, v9, v29);
        ++v22;
        --v13;
      }

      while (v13);
    }

    return v14;
  }

  __break(1u);
  return result;
}

id sub_218FA396C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_unknownObjectRetain();
  }

  else
  {

    return a3;
  }
}

uint64_t sub_218FA39BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_218FA3A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218FA433C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218FA3A60(uint64_t a1)
{
  v2 = sub_218838968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FA3A9C(uint64_t a1)
{
  v2 = sub_218838968();

  return MEMORY[0x2821FE720](a1, v2);
}

id sub_218FA3AE0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188388E0(0, &qword_280E8CFA8, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = *(a1 + 24);
  v32 = a1;
  v11 = a1;
  v13 = &v32 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_218838968();
  sub_219BF7B34();
  if (v2)
  {
    v31 = v1;
    __swift_destroy_boxed_opaque_existential_1(v32);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v9;
    v37 = 0;
    sub_218FA41D8();
    v15 = v8;
    sub_219BF7734();
    v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_type] = v35;
    LOBYTE(v35) = 1;
    v17 = sub_219BF76F4();
    v18 = &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_identifier];
    *v18 = v17;
    v18[1] = v19;
    LOBYTE(v35) = 2;
    v20 = sub_219BF7694();
    v21 = &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_title];
    *v21 = v20;
    v21[1] = v22;
    sub_219BDB954();
    LOBYTE(v35) = 3;
    sub_2188390BC(&unk_280EE9D10);
    sub_219BF76E4();
    sub_218AB007C(v6, &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_url]);
    sub_218839100();
    v37 = 4;
    sub_218839150(&qword_280E8F3B8, sub_218FA422C);
    sub_219BF76E4();
    *&v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_activityTraits] = v35;
    LOBYTE(v35) = 5;
    v23 = sub_219BF7694();
    v24 = &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_bookmark];
    *v24 = v23;
    v24[1] = v25;
    v37 = 6;
    sub_218FA4280();
    sub_219BF76E4();
    v26 = &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_scrollPosition];
    v27 = v36;
    *v26 = v35;
    *(v26 + 1) = v27;
    LOBYTE(v35) = 7;
    v28 = sub_219BF76D4();
    v29 = &v1[OBJC_IVAR____TtC7NewsUI216NewsActivityInfo_feedConfigurationRawValue];
    *v29 = v28;
    v29[8] = v30 & 1;
    v34.receiver = v1;
    v34.super_class = ObjectType;
    v31 = objc_msgSendSuper2(&v34, sel_init);
    (*(v14 + 8))(v13, v15);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  return v31;
}

id sub_218FA4188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = sub_218FA3AE0(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_218FA41D8()
{
  result = qword_280EE0D70;
  if (!qword_280EE0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0D70);
  }

  return result;
}

unint64_t sub_218FA422C()
{
  result = qword_280EE0278;
  if (!qword_280EE0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE0278);
  }

  return result;
}

unint64_t sub_218FA4280()
{
  result = qword_280EDBB50;
  if (!qword_280EDBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBB50);
  }

  return result;
}

unint64_t sub_218FA42E8()
{
  result = qword_27CC141C0;
  if (!qword_27CC141C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC141C0);
  }

  return result;
}

uint64_t sub_218FA433C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974697669746361 && a2 == 0xEE00737469617254 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F506C6C6F726373 && a2 == 0xEE006E6F69746973 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219D049C0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_218FA46A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_218FA58F0(0, &qword_280E91A38, sub_2186E9484);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListSavedFeedGroupKnobs();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA58F0(0, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v72 = type metadata accessor for SavedFeedGroupKnobs();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FA58F0(0, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v62 - v16;
  sub_218FA58F0(0, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for SavedFeedKnobsConfig();
  v20 = *(v79 - 8);
  v21 = MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v73 = &v62 - v23;
  sub_218FA58F0(0, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for SavedFeedConfig();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_218FA5944(a1, v26, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_218FA59B0(v26, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
    }
  }

  else
  {
    sub_218FA5A0C(v26, v30, type metadata accessor for SavedFeedConfig);
  }

  v35 = v78;
  sub_218FA5A0C(v30, v78, type metadata accessor for SavedFeedConfig);
  v36 = v74;
  sub_218FA5944(v74, v19, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_218FA5944(v39, v70, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_218FA5944(v11, v67, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_2186E9484();
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_218F70F9C(v53, 0, v66);
        sub_218FA59B0(v11, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_218FA59B0(v54, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
        }
      }

      else
      {
        sub_218FA59B0(v11, qword_280EADAC0, type metadata accessor for ArticleListSavedFeedGroupKnobs);
        v52 = v66;
        sub_218FA5A0C(v46, v66, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      }

      sub_218FA5A0C(v52, v49, type metadata accessor for ArticleListSavedFeedGroupKnobs);
      sub_218FA59B0(v36, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
      sub_218FA59B0(v75, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
      sub_218FA59B0(v76, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_218FA59B0(v42, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
      }
    }

    else
    {
      sub_218FA59B0(v36, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
      sub_218FA59B0(v75, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
      sub_218FA59B0(v39, &qword_280ED07C8, type metadata accessor for SavedFeedGroupKnobs);
      v49 = v71;
      sub_218FA5A0C(v42, v71, type metadata accessor for SavedFeedGroupKnobs);
    }

    v57 = v69;
    sub_218FA5A0C(v49, v69, type metadata accessor for SavedFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_218FA5A0C(v59, v73, type metadata accessor for SavedFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_218FA59B0(v19, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
    }
  }

  else
  {
    sub_218FA59B0(v36, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
    sub_218FA59B0(v75, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
    v55 = v73;
    sub_218FA5A0C(v19, v73, type metadata accessor for SavedFeedKnobsConfig);
  }

  v60 = type metadata accessor for SavedFeedContentConfig();
  return sub_218FA5A0C(v55, v35 + *(v60 + 20), type metadata accessor for SavedFeedKnobsConfig);
}

uint64_t sub_218FA51A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_218FA58F0(0, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_218FA58F0(0, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_218FA57F8();
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FA5854();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SavedFeedConfig();
    v18 = 0;
    sub_218FA58A8(&qword_280ED9F28, type metadata accessor for SavedFeedConfig);
    sub_219BF7674();
    type metadata accessor for SavedFeedKnobsConfig();
    v17 = 1;
    sub_218FA58A8(&qword_280ECD728, type metadata accessor for SavedFeedKnobsConfig);
    sub_219BF7674();
    sub_218FA46A4(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FA5470@<X0>(char *a1@<X8>)
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

uint64_t sub_218FA54D0@<X0>(char *a1@<X8>)
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

uint64_t sub_218FA5534(uint64_t a1)
{
  v2 = sub_218FA5854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FA5570(uint64_t a1)
{
  v2 = sub_218FA5854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FA5630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218FA58F0(0, qword_280ECD6E8, type metadata accessor for SavedFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_218FA58F0(0, qword_280ED9EE0, type metadata accessor for SavedFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_218FA5A74(a1, &v16 - v11, type metadata accessor for SavedFeedConfig);
  v13 = type metadata accessor for SavedFeedConfig();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_218FA5A74(v3 + *(a2 + 20), v9, type metadata accessor for SavedFeedKnobsConfig);
  v14 = type metadata accessor for SavedFeedKnobsConfig();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_218FA46A4(v12, v9, a3);
}

void sub_218FA57F8()
{
  if (!qword_280E8CE30)
  {
    sub_218FA5854();
    v0 = sub_219BF7774();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8CE30);
    }
  }
}

unint64_t sub_218FA5854()
{
  result = qword_280EC6EF8[0];
  if (!qword_280EC6EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC6EF8);
  }

  return result;
}

uint64_t sub_218FA58A8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_218FA58F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_218FA5944(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_218FA58F0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218FA59B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_218FA58F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218FA5A0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218FA5A74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218FA5AF0()
{
  result = qword_27CC141C8;
  if (!qword_27CC141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC141C8);
  }

  return result;
}

unint64_t sub_218FA5B48()
{
  result = qword_280EC6EE8;
  if (!qword_280EC6EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6EE8);
  }

  return result;
}

unint64_t sub_218FA5BA0()
{
  result = qword_280EC6EF0;
  if (!qword_280EC6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6EF0);
  }

  return result;
}

id sub_218FA5C90()
{
  swift_beginAccess();

  v0 = sub_219BF53D4();

  return v0;
}

uint64_t sub_218FA5D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_219BF5414();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

id sub_218FA5E94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_219BF53D4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_218FA5F34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_219BF5414();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_218FA614C(uint64_t a1)
{
  v3 = OBJC_IVAR___TSEditorialItem_attributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_218FA61A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TSEditorialItem_attributes;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_218FA63A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  return sub_2188383F8(v1 + v3, a1);
}

uint64_t sub_218FA6530(uint64_t a1)
{
  v3 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  sub_218FA6590(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_218FA6590(uint64_t a1, uint64_t a2)
{
  sub_21873F65C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FA65F4(uint64_t a1, uint64_t *a2)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2188383F8(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR___TSEditorialItem_actionURL;
  swift_beginAccess();
  sub_218FA6590(v6, v7 + v8);
  return swift_endAccess();
}

void *sub_218FA6758()
{
  v1 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_218FA6804(uint64_t a1)
{
  v3 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_218FA685C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_218FA69B8()
{
  swift_beginAccess();
  v0 = swift_unknownObjectRetain();

  return v0;
}

uint64_t sub_218FA6A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_218FA6ADC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_218FA6B30(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id EditorialItem.__allocating_init(identifier:title:subtitle:subtitleColor:attributes:actionURL:thumbnailImage:backingTag:headline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v17 = objc_allocWithZone(v13);
  v18 = &v17[OBJC_IVAR___TSEditorialItem_subtitle];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v17[OBJC_IVAR___TSEditorialItem_subtitleColor];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR___TSEditorialItem_actionURL;
  v21 = sub_219BDB954();
  (*(*(v21 - 8) + 56))(&v17[v20], 1, 1, v21);
  v22 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  *&v17[OBJC_IVAR___TSEditorialItem_thumbnailImage] = 0;
  v23 = OBJC_IVAR___TSEditorialItem_backingTag;
  *&v17[OBJC_IVAR___TSEditorialItem_backingTag] = 0;
  v24 = OBJC_IVAR___TSEditorialItem_headline;
  *&v17[OBJC_IVAR___TSEditorialItem_headline] = 0;
  v25 = &v17[OBJC_IVAR___TSEditorialItem_identifier];
  *v25 = a1;
  *(v25 + 1) = a2;
  v26 = &v17[OBJC_IVAR___TSEditorialItem_title];
  *v26 = a3;
  *(v26 + 1) = a4;
  swift_beginAccess();
  *v18 = a5;
  *(v18 + 1) = a6;
  swift_beginAccess();
  *v19 = a7;
  *(v19 + 1) = a8;
  swift_beginAccess();
  *&v17[v22] = a11;
  swift_beginAccess();
  *&v17[v23] = a12;
  v27 = a11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_218DB6168(a10, &v17[v20]);
  swift_endAccess();
  *&v17[OBJC_IVAR___TSEditorialItem_attributes] = a9;
  swift_beginAccess();
  *&v17[v24] = a13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v36.receiver = v17;
  v36.super_class = v35;
  v28 = objc_msgSendSuper2(&v36, sel_init);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218838478(a10);
  return v28;
}

id EditorialItem.init(identifier:title:subtitle:subtitleColor:attributes:actionURL:thumbnailImage:backingTag:headline:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v13 = sub_218FA72AC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v13;
}

id EditorialItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EditorialItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_218FA72AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v16 = &v13[OBJC_IVAR___TSEditorialItem_subtitle];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___TSEditorialItem_subtitleColor];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR___TSEditorialItem_actionURL;
  v19 = sub_219BDB954();
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  v20 = OBJC_IVAR___TSEditorialItem_thumbnailImage;
  *&v13[OBJC_IVAR___TSEditorialItem_thumbnailImage] = 0;
  v21 = OBJC_IVAR___TSEditorialItem_backingTag;
  *&v13[OBJC_IVAR___TSEditorialItem_backingTag] = 0;
  v22 = OBJC_IVAR___TSEditorialItem_headline;
  *&v13[OBJC_IVAR___TSEditorialItem_headline] = 0;
  v23 = &v13[OBJC_IVAR___TSEditorialItem_identifier];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v13[OBJC_IVAR___TSEditorialItem_title];
  *v24 = a3;
  *(v24 + 1) = a4;
  swift_beginAccess();
  *v16 = a5;
  *(v16 + 1) = a6;
  swift_beginAccess();
  *v17 = a7;
  *(v17 + 1) = a8;
  swift_beginAccess();
  *&v13[v20] = a11;
  swift_beginAccess();
  *&v13[v21] = a12;
  v25 = a11;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_218DB6168(a10, &v13[v18]);
  swift_endAccess();
  *&v13[OBJC_IVAR___TSEditorialItem_attributes] = a9;
  swift_beginAccess();
  *&v13[v22] = a13;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v34.receiver = v13;
  v34.super_class = type metadata accessor for EditorialItem();
  v26 = objc_msgSendSuper2(&v34, sel_init);
  sub_218838478(a10);
  return v26;
}

uint64_t type metadata accessor for EditorialItem()
{
  result = qword_280EDE368;
  if (!qword_280EDE368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_15Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return swift_unknownObjectRetain();
}

void sub_218FA759C()
{
  sub_21873F65C(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218FA7C90(char a1)
{
  v3 = sub_219BE00C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE00B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  __swift_project_boxed_opaque_existential_1((v1 + 88), *(v1 + 112));
  (*(v4 + 104))(v6, **(&unk_2782428A8 + a1), v3);
  sub_219BE00A4();
  (*(v8 + 16))(v11, v13, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  sub_219BDD154();

  return (*(v8 + 8))(v13, v7);
}

unint64_t sub_218FA7F0C()
{
  result = qword_27CC141F8;
  if (!qword_27CC141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC141F8);
  }

  return result;
}

uint64_t sub_218FA7F60()
{
  sub_219BE00B4();

  return sub_219B7CE0C();
}

uint64_t getEnumTagSinglePayload for TagFeedGroupKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD3)
  {
    goto LABEL_17;
  }

  if (a2 + 45 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 45) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 45;
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

      return (*a1 | (v4 << 8)) - 45;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 45;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2E;
  v8 = v6 - 46;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TagFeedGroupKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 45 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 45) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD3)
  {
    v4 = 0;
  }

  if (a2 > 0xD2)
  {
    v5 = ((a2 - 211) >> 8) + 1;
    *result = a2 + 45;
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
    *result = a2 + 45;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}