uint64_t sub_1D603D950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1D5BC4580(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = v3[35];
  v12 = v3[36];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v11);
  (*(v12 + 8))(v11, v12);
  v13 = type metadata accessor for PuzzleStatsState();
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {
    sub_1D5D12CE8(v10, sub_1D5BC4580);
  }

  else
  {
    v14 = *(v10 + 2);

    sub_1D5D12CE8(v10, type metadata accessor for PuzzleStatsState);
    if (*(v14 + 16))
    {
      v15 = sub_1D5B69D90(a1, a2);
      if (v16)
      {
        v17 = (*(v14 + 56) + (v15 << 6));
        v19 = v17[2];
        v18 = v17[3];
        v20 = v17[1];
        v26 = *v17;
        v27 = v20;
        v28 = v19;
        v29 = v18;
        sub_1D5D12A1C(&v26, v25);

        v22 = v27;
        *a3 = v26;
        a3[1] = v22;
        v23 = v29;
        a3[2] = v28;
        a3[3] = v23;
        return result;
      }
    }
  }

  sub_1D5E9E58C();
  swift_allocError();
  *v24 = 0;
  v24[1] = 0;
  return swift_willThrow();
}

uint64_t sub_1D603DB30(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[26] = a1;
  v4[27] = v1;

  if (v1)
  {
    v6 = v4[17];

    return MEMORY[0x1EEE6DFA0](sub_1D603E130, v6, 0);
  }

  else
  {

    v7 = swift_task_alloc();
    v4[28] = v7;
    *v7 = v5;
    v7[1] = sub_1D603DCBC;

    return sub_1D603E4E0(a1);
  }
}

uint64_t sub_1D603DCBC()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D603DDCC, v1, 0);
}

size_t sub_1D603DDCC()
{
  v1 = v0[26];
  if (v1 >> 62)
  {
    v2 = sub_1D7263BFC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_16:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_3:
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1D69986E4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v28 = v0[20];
  v29 = v0[21];
  v5 = v0[19];
  v26 = v0[26] + 32;
  v27 = v1 & 0xC000000000000001;
  v6 = v31;
  v30 = v2;
  do
  {
    if (v27)
    {
      v7 = MEMORY[0x1DA6FB460](v4, v0[26]);
    }

    else
    {
      v7 = *(v26 + 8 * v4);
      swift_unknownObjectRetain();
    }

    v8 = v0[21];
    swift_getObjectType();
    v9 = [v7 identifier];
    v10 = sub_1D726207C();
    v12 = v11;

    *v8 = v10;
    *(v29 + 8) = v12;
    *(v29 + 16) = [v7 difficulty];
    v13 = [v7 publishDate];
    if (v13)
    {
      v14 = v13;
      sub_1D72588BC();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v17 = v0[21];
    v16 = v0[22];
    v18 = v0[18];
    v19 = sub_1D725891C();
    (*(*(v19 - 8) + 56))(v18, v15, 1, v19);
    sub_1D5D12DB0(v18, v17 + v5[6], sub_1D5B5B2A0);
    *(v17 + v5[7]) = [v7 ignoreFromStatsAndStreaks];
    v20 = FCPuzzleProviding.puzzleTypeTraits.getter();
    swift_unknownObjectRelease();
    *(v17 + v5[8]) = v20;
    sub_1D5D12DB0(v17, v16, type metadata accessor for PuzzleStatsProcessingData);
    v22 = *(v31 + 16);
    v21 = *(v31 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1D69986E4(v21 > 1, v22 + 1, 1);
    }

    v23 = v0[22];
    ++v4;
    *(v31 + 16) = v22 + 1;
    sub_1D5D12DB0(v23, v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v22, type metadata accessor for PuzzleStatsProcessingData);
  }

  while (v30 != v4);

LABEL_17:
  sub_1D6986CC4(v6);

  v24 = v0[12];

  v25 = v0[1];

  return v25(v24);
}

uint64_t sub_1D603E130()
{
  v30 = v0;
  v1 = *(v0 + 216);

  *(v0 + 104) = v1;
  v2 = v1;
  sub_1D5BA6EF4();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232) == 5;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725C42C();
    __swift_project_value_buffer(v16, qword_1EDFFCFA8);
    v17 = sub_1D725C3FC();
    v18 = sub_1D7262EDC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;

      v22 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = sub_1D5BC5100(v22, v24, &v29);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_1D5B42000, v17, v18, "PuzzleStatsService: Skipped deprecated puzzles [%s]", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }
  }

  else
  {

    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 216);
    v5 = sub_1D725C42C();
    __swift_project_value_buffer(v5, qword_1EDFFCFA8);
    v6 = v4;
    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 216);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1D726497C();
      v15 = sub_1D5BC5100(v13, v14, &v29);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D5B42000, v7, v8, "PuzzleStatsService: Error fetching puzzles [%s]", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA6FD500](v12, -1, -1);
      MEMORY[0x1DA6FD500](v11, -1, -1);
    }

    else
    {
    }
  }

  v26 = *(v0 + 96);

  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_1D603E4E0(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D603E500, v1, 0);
}

uint64_t sub_1D603E500()
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);

  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (!v5)
  {

    goto LABEL_8;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D7263BFC())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_1D5B42000, v3, v4, "PuzzleStatsService: adding puzzle info to %ld history items", v1, 0xCu);
    MEMORY[0x1DA6FD500](v1, -1, -1);
LABEL_8:

    v0[9] = v6;
    v3 = v0[7];
    sub_1D5B68374(v0[8] + 112, (v0 + 2));
    if (v3 >> 62)
    {
      break;
    }

    v6 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[10] = v6;
    if (!v6)
    {
      goto LABEL_18;
    }

LABEL_10:
    v0[11] = sub_1D726290C();
    if (v6 >= 1)
    {
      v8 = v0[7];
      v0[12] = 0;
      if ((v0[9] & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA6FB460](0, v8);
      }

      else
      {
        v9 = swift_unknownObjectRetain();
      }

      v0[13] = v9;

      return MEMORY[0x1EEE6DFA0](sub_1D603E748, 0, 0);
    }

    __break(1u);
LABEL_22:
    ;
  }

  v6 = sub_1D7263BFC();
  v0[10] = v6;
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_18:
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v10 = v0[1];

  return v10();
}

uint64_t sub_1D603E748()
{
  *(v0 + 112) = sub_1D72628FC();
  v2 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D603E7D4, v2, v1);
}

uint64_t sub_1D603E7D4()
{
  v1 = v0[13];
  v2 = v0[8];

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 104))(v1, v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D603E880, v2, 0);
}

uint64_t sub_1D603E880()
{
  v1 = v0[12];
  v2 = v0[10];
  swift_unknownObjectRelease();
  if (v1 + 1 == v2)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    v3 = v0[1];

    return v3();
  }

  else
  {
    ++v0[12];
    if ((v0[9] & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460]();
    }

    else
    {
      v5 = swift_unknownObjectRetain();
    }

    v0[13] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1D603E748, 0, 0);
  }
}

uint64_t sub_1D603E964(void *a1)
{
  v3 = [a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  sub_1D603D950(v4, v6, v18);
  if (v2)
  {

    return v1;
  }

  else
  {

    v8 = 0;
    v1 = 0;
    v17[2] = v18[2];
    v17[3] = v18[3];
    v17[0] = v18[0];
    v17[1] = v18[1];
    v9 = 1 << *(*&v18[0] + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(*&v18[0] + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(*(*&v18[0] + 56) + ((v13 << 9) | (8 * v14))) + 16);
      v16 = __OFADD__(v1, v15);
      v1 += v15;
      if (v16)
      {
        __break(1u);
LABEL_15:

        sub_1D5D12A54(v17);

        return v1;
      }
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_15;
      }

      v11 = *(*&v18[0] + 64 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D603EABC(void *a1)
{
  v3 = [a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  sub_1D603D950(v4, v6, v18);
  if (v2)
  {

    return v1;
  }

  else
  {

    v8 = 0;
    v1 = 0;
    v17[2] = v18[2];
    v17[3] = v18[3];
    v17[0] = v18[0];
    v17[1] = v18[1];
    v9 = 1 << *(*(&v18[0] + 1) + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(*(&v18[0] + 1) + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v8;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(*(*(&v18[0] + 1) + 56) + ((v13 << 9) | (8 * v14))) + 16);
      v16 = __OFADD__(v1, v15);
      v1 += v15;
      if (v16)
      {
        __break(1u);
LABEL_15:

        sub_1D5D12A54(v17);

        return v1;
      }
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_15;
      }

      v11 = *(*(&v18[0] + 1) + 64 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D603EC14(void *a1)
{
  v2 = [a1 identifier];
  v3 = sub_1D726207C();
  v5 = v4;

  sub_1D603D950(v3, v5, v30);
  if (v1)
  {
    *&result = COERCE_DOUBLE();
  }

  else
  {
    *&result = COERCE_DOUBLE();
    v7 = 0;
    v8 = 0;
    v28 = v30[2];
    v29 = v30[3];
    v26 = v30[0];
    v27 = v30[1];
    v9 = 1 << *(*&v30[0] + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(*&v30[0] + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v7;
LABEL_12:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(*(*&v30[0] + 56) + ((v13 << 9) | (8 * v14))) + 16);
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        __break(1u);
LABEL_15:
        v17 = 0;
        v18 = 0;
        v19 = 1 << *(v27 + 32);
        v20 = -1;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        v21 = v20 & *(v27 + 64);
        v22 = (v19 + 63) >> 6;
        while (v21)
        {
          v23 = v17;
LABEL_24:
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
          v25 = *(*(*(v27 + 56) + ((v23 << 9) | (8 * v24))) + 16);
          v16 = __OFADD__(v18, v25);
          v18 += v25;
          if (v16)
          {
            __break(1u);
LABEL_27:
            sub_1D5D12A54(&v26);
            if (v18 < 1)
            {
              *&result = 0.0;
            }

            else
            {
              *&result = v8 / v18;
            }

            return result;
          }
        }

        while (1)
        {
          v23 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_32;
          }

          if (v23 >= v22)
          {
            goto LABEL_27;
          }

          v21 = *(v27 + 64 + 8 * v23);
          ++v17;
          if (v21)
          {
            v17 = v23;
            goto LABEL_24;
          }
        }
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_15;
      }

      v11 = *(*&v30[0] + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D603EE1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = type metadata accessor for PuzzleStreak();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = v28 - v12;
  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  sub_1D603D950(v15, v17, v32);
  if (v2)
  {
  }

  v19 = v30;

  v31[2] = v32[2];
  v31[3] = v33;
  v31[0] = v32[0];
  v31[1] = v32[1];
  v20 = *(&v33 + 1);
  v21 = *(*(&v33 + 1) + 16);
  if (v21)
  {
    v28[1] = 0;
    v29 = v4;
    v22 = *(&v33 + 1) + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    result = sub_1D5D12D48(v22, v13, type metadata accessor for PuzzleStreak);
    v23 = v19;
    if (v21 == 1)
    {
LABEL_5:
      sub_1D5D12A54(v31);
      sub_1D5D12DB0(v13, v23, type metadata accessor for PuzzleStreak);
      return (*(v5 + 56))(v23, 0, 1, v29);
    }

    else
    {
      v24 = 1;
      while (v24 < *(v20 + 16))
      {
        sub_1D5D12D48(v22 + *(v5 + 72) * v24, v8, type metadata accessor for PuzzleStreak);
        sub_1D7257ACC();
        v26 = v25;
        sub_1D7257ACC();
        if (v26 >= v27)
        {
          result = sub_1D5D12CE8(v8, type metadata accessor for PuzzleStreak);
        }

        else
        {
          sub_1D5D12CE8(v13, type metadata accessor for PuzzleStreak);
          result = sub_1D5D12DB0(v8, v13, type metadata accessor for PuzzleStreak);
        }

        v23 = v19;
        if (v21 == ++v24)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1D5D12A54(v31);
    return (*(v5 + 56))(v19, 1, 1, v4);
  }

  return result;
}

uint64_t sub_1D603F108(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D725891C();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = sub_1D7258C2C();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = sub_1D7257DEC();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v7 = type metadata accessor for PuzzleStreak();
  v3[33] = v7;
  v3[34] = *(v7 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D603F31C, v2, 0);
}

uint64_t sub_1D603F31C()
{
  v1 = [*(v0 + 152) identifier];
  v2 = sub_1D726207C();
  v4 = v3;

  sub_1D603D950(v2, v4, (v0 + 16));

  v6 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v6;
  v7 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v7;
  v8 = *(v0 + 136);
  v32 = *(v8 + 16);
  if (v32)
  {
    v9 = 0;
    v31 = *(v0 + 272);
    v30 = *MEMORY[0x1E6969A58];
    v28 = (*(v0 + 224) + 8);
    v29 = (*(v0 + 176) + 8);
    v27 = (*(v0 + 248) + 8);
    v26 = *(v0 + 136);
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
        return result;
      }

      v36 = *(v0 + 256);
      v38 = *(v0 + 240);
      v34 = *(v0 + 232);
      v10 = *(v0 + 208);
      v37 = *(v0 + 216);
      v11 = *(v0 + 192);
      v33 = *(v0 + 200);
      v35 = *(v0 + 184);
      v12 = *(v0 + 168);
      sub_1D5D12D48(v8 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v9, *(v0 + 280), type metadata accessor for PuzzleStreak);
      sub_1D7258BCC();
      sub_1D5BC3F04(0, &qword_1EDF19B90, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v13 = sub_1D7258C0C();
      v14 = *(v13 - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D7273AE0;
      (*(v14 + 104))(v16 + v15, v30, v13);
      sub_1D5BFA8DC(v16);
      swift_setDeallocating();
      (*(v14 + 8))(v16 + v15, v13);
      swift_deallocClassInstance();
      sub_1D7257A7C();
      sub_1D72588DC();
      v17 = *v29;
      (*v29)(v10, v12);
      sub_1D72588CC();
      sub_1D72588DC();
      v17(v11, v12);
      sub_1D7258B2C();

      v17(v35, v12);
      v17(v33, v12);
      (*v28)(v34, v37);
      v18 = sub_1D7257D5C();
      LOBYTE(v11) = v19;
      (*v27)(v36, v38);
      if ((v11 & 1) == 0 && v18 <= 24)
      {
        break;
      }

      ++v9;
      result = sub_1D5D12CE8(*(v0 + 280), type metadata accessor for PuzzleStreak);
      v8 = v26;
      if (v32 == v9)
      {
        goto LABEL_10;
      }
    }

    v20 = *(v0 + 288);
    v21 = *(v0 + 296);
    v22 = *(v0 + 280);
    sub_1D5D12A54(v0 + 80);
    sub_1D5D12DB0(v22, v20, type metadata accessor for PuzzleStreak);
    sub_1D5D12DB0(v20, v21, type metadata accessor for PuzzleStreak);
    v23 = swift_task_alloc();
    *(v0 + 304) = v23;
    *v23 = v0;
    v23[1] = sub_1D603F8E0;
    v24 = *(v0 + 152);

    return sub_1D603FB38(v24);
  }

  else
  {
LABEL_10:
    sub_1D5D12A54(v0 + 80);
    (*(*(v0 + 272) + 56))(*(v0 + 144), 1, 1, *(v0 + 264));

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_1D603F8E0(char a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 312) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D603F9F8, v2, 0);
}

uint64_t sub_1D603F9F8()
{
  v1 = *(v0 + 296);
  if (*(v0 + 312))
  {
    sub_1D5D12CE8(v1, type metadata accessor for PuzzleStreak);
    v2 = 1;
  }

  else
  {
    sub_1D5D12DB0(v1, *(v0 + 144), type metadata accessor for PuzzleStreak);
    v2 = 0;
  }

  (*(*(v0 + 272) + 56))(*(v0 + 144), v2, 1, *(v0 + 264));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D603FB38(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D603FB58, v1, 0);
}

uint64_t sub_1D603FB58()
{
  v1 = v0[3];
  v2 = v1[23];
  v3 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v2);
  v7 = (*(v3 + 152) + **(v3 + 152));
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D603FC88;
  v5 = v0[2];

  return v7(v5, v2, v3);
}

uint64_t sub_1D603FC88(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D603FDDC, v7, 0);
  }
}

uint64_t sub_1D603FDDC()
{
  result = v0[5];
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[3];
    v25 = v2 - 1;
    v5 = (result + 40);
    v26 = v0[5];
    while (v3 < *(result + 16))
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = v4[17];
      v8 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v9);
      v10 = *(v8 + 8);
      v11 = *(v10 + 56);

      v12 = v11(v7, v6, v9, v10);
      v13 = v12;
      if (v12 && (v14 = [v12 usedReveal]) != 0)
      {
        v15 = v14;
        v16 = [v14 BOOLValue];

        v17 = v16 ^ 1;
      }

      else
      {
        v17 = 1;
      }

      v19 = v4[17];
      v18 = v4[18];
      __swift_project_boxed_opaque_existential_1(v4 + 14, v19);
      v20 = (*(*(v18 + 8) + 32))(v7, v6, v19);

      result = v26;
      if (((v20 | v17) & 1) == 0)
      {
        v5 += 2;
        if (v25 != v3++)
        {
          continue;
        }
      }

      v22 = (v20 | v17) ^ 1;
      v0 = v24;
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_13:

    v23 = v0[1];

    return v23(v22 & 1);
  }

  return result;
}

uint64_t sub_1D603FFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, &v23);
  if (v2)
  {
  }

  v22[2] = v25;
  v22[3] = v26;
  v22[0] = v23;
  v22[1] = v24;
  v9 = *(&v24 + 1);
  if (*(*(&v24 + 1) + 16))
  {
    v10 = sub_1D5C5E034(10);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v17 = v11 ^ 1;
    v18 = sub_1D5C5E034(20);
    if (v19)
    {
      v14 = *(*(v9 + 56) + 8 * v18);
    }

    else
    {
      v14 = 0;
    }

    v16 = v19 ^ 1;
    v20 = sub_1D5C5E034(30);
    if (v21)
    {
      v15 = 0;
      v13 = *(*(v9 + 56) + 8 * v20);
    }

    else
    {
      v13 = 0;
      v15 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 1;
    v16 = 1;
    v17 = 1;
  }

  result = sub_1D5D12A54(v22);
  *a2 = v12;
  *(a2 + 8) = v17 & 1;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1D6040100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v23);
  if (v2)
  {
  }

  v22[2] = v24;
  v22[3] = v25;
  v22[0] = v23[0];
  v22[1] = v23[1];
  v9 = v24;
  if (*(v24 + 16))
  {
    v10 = sub_1D5C5E034(10);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v17 = v11 ^ 1;
    v18 = sub_1D5C5E034(20);
    if (v19)
    {
      v14 = *(*(v9 + 56) + 8 * v18);
    }

    else
    {
      v14 = 0;
    }

    v16 = v19 ^ 1;
    v20 = sub_1D5C5E034(30);
    if (v21)
    {
      v15 = 0;
      v13 = *(*(v9 + 56) + 8 * v20);
    }

    else
    {
      v13 = 0;
      v15 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 1;
    v16 = 1;
    v17 = 1;
  }

  result = sub_1D5D12A54(v22);
  *a2 = v12;
  *(a2 + 8) = v17 & 1;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1D6040260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v23);
  if (v2)
  {
  }

  v22[2] = v24;
  v22[3] = v25;
  v22[0] = v23[0];
  v22[1] = v23[1];
  v9 = *(&v24 + 1);
  if (*(*(&v24 + 1) + 16))
  {
    v10 = sub_1D5C5E034(10);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v17 = v11 ^ 1;
    v18 = sub_1D5C5E034(20);
    if (v19)
    {
      v14 = *(*(v9 + 56) + 8 * v18);
    }

    else
    {
      v14 = 0;
    }

    v16 = v19 ^ 1;
    v20 = sub_1D5C5E034(30);
    if (v21)
    {
      v15 = 0;
      v13 = *(*(v9 + 56) + 8 * v20);
    }

    else
    {
      v13 = 0;
      v15 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 1;
    v16 = 1;
    v17 = 1;
  }

  result = sub_1D5D12A54(v22);
  *a2 = v12;
  *(a2 + 8) = v17 & 1;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1D60403C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  sub_1D603D950(v5, v7, v23);
  if (v2)
  {
  }

  v22[2] = v23[2];
  v22[3] = v24;
  v22[0] = v23[0];
  v22[1] = v23[1];
  v9 = v24;
  if (*(v24 + 16))
  {
    v10 = sub_1D5C5E034(10);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
    }

    else
    {
      v12 = 0;
    }

    v17 = v11 ^ 1;
    v18 = sub_1D5C5E034(20);
    if (v19)
    {
      v14 = *(*(v9 + 56) + 8 * v18);
    }

    else
    {
      v14 = 0;
    }

    v16 = v19 ^ 1;
    v20 = sub_1D5C5E034(30);
    if (v21)
    {
      v15 = 0;
      v13 = *(*(v9 + 56) + 8 * v20);
    }

    else
    {
      v13 = 0;
      v15 = 1;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 1;
    v16 = 1;
    v17 = 1;
  }

  result = sub_1D5D12A54(v22);
  *a2 = v12;
  *(a2 + 8) = v17 & 1;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16 & 1;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1D6040520(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 201) = a4;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  sub_1D6044238(0);
  *(v6 + 56) = swift_task_alloc();
  v7 = type metadata accessor for PuzzleLeaderboardResult(0);
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  sub_1D604426C(0);
  *(v6 + 112) = swift_task_alloc();
  v9 = type metadata accessor for PuzzleLeaderboardEntry();
  *(v6 + 120) = v9;
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6040720, v5, 0);
}

void sub_1D6040720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v61 = v10;
  v11 = *(v10 + 120);
  v12 = *(v10 + 128);
  v13 = *(v10 + 112);
  sub_1D5D12D48(*(v10 + 40), v13, sub_1D604426C);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    v14 = *(v10 + 88);
    v15 = *(v10 + 96);
    v16 = *(v10 + 16);
    sub_1D5D12CE8(*(v10 + 112), sub_1D604426C);
    (*(v15 + 56))(v16, 1, 1, v14);
LABEL_12:

    v41 = *(v10 + 8);

    v41();
    return;
  }

  v17 = *(v10 + 64);
  v18 = *(v10 + 40);
  sub_1D5D12DB0(*(v10 + 112), *(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
  v60 = *(v18 + *(v17 + 20));

  sub_1D60420F4(&v60, sub_1D6044FD0, sub_1D6044FB8);
  v19 = *(v10 + 160);
  v20 = v60;
  v21 = *(v19 + *(*(v10 + 120) + 28));
  if (v21 == 1)
  {
    sub_1D5D12D48(v19, *(v10 + 152), type metadata accessor for PuzzleLeaderboardEntry);
    if (v20[2] >= 3uLL)
    {
      v22 = *(*(v10 + 128) + 80);
      sub_1D5EC2840(v20, v20 + ((v22 + 32) & ~v22), 0, 5uLL);
      v24 = v23;

      v20 = v24;
    }

    v25 = *(v10 + 152);
    v26 = *(v10 + 104);
    v27 = *(v10 + 88);
    v28 = *(v10 + 64);
    v29 = *(v10 + 40);
    sub_1D5D12CE8(*(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
    v21 = *(v29 + *(v28 + 24));
    v30 = (v29 + *(v28 + 28));
LABEL_11:
    v36 = *v30;
    v35 = v30[1];
    sub_1D5D12DB0(v25, v26, type metadata accessor for PuzzleLeaderboardEntry);
    *(v26 + v27[5]) = v20;
    *(v26 + v27[6]) = v21;
    v37 = (v26 + v27[7]);
    *v37 = v36;
    v37[1] = v35;

    v38 = *(v10 + 96);
    v39 = *(v10 + 88);
    v40 = *(v10 + 16);
    sub_1D5D12DB0(*(v10 + 104), v40, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v38 + 56))(v40, 0, 1, v39);
    goto LABEL_12;
  }

  v31 = *(*(v10 + 40) + *(*(v10 + 64) + 24));
  *(v10 + 168) = v31;
  if (v21 == v31)
  {
    sub_1D5D12D48(v19, *(v10 + 144), type metadata accessor for PuzzleLeaderboardEntry);
    v32 = v20[2];
    if (v32 >= 3)
    {
      v55 = v32 - 2;
      v56 = (2 * v32) | 1;
      v57 = *(*(v10 + 128) + 80);
      sub_1D5EC2840(v20, v20 + ((v57 + 32) & ~v57), v55, v56);
      v59 = v58;

      v20 = v59;
    }

    v25 = *(v10 + 144);
    v26 = *(v10 + 104);
    v27 = *(v10 + 88);
    v33 = *(v10 + 64);
    v34 = *(v10 + 40);
    sub_1D5D12CE8(*(v10 + 160), type metadata accessor for PuzzleLeaderboardEntry);
    v30 = (v34 + *(v33 + 28));
    goto LABEL_11;
  }

  v42 = *(v10 + 48);
  v43 = *(v10 + 24);

  v44 = *(v42 + 248);
  ObjectType = swift_getObjectType();
  v46 = [v43 identifier];
  v47 = sub_1D726207C();
  v49 = v48;

  *(v10 + 176) = v49;
  *(v10 + 200) = 1;
  v50 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    v51 = *(v10 + 201);
    v52 = swift_task_alloc();
    *(v10 + 184) = v52;
    *v52 = v10;
    v52[1] = sub_1D6040C10;
    v53 = *(v10 + 56);
    v54 = *(v10 + 32);
    v63 = ObjectType;
    v64 = v44;

    PuzzleGameCenterServiceType.leaderboard(for:difficulty:scope:range:)(v53, v47, v49, v54, v51 & 1, (v10 + 200), v50, 3, a9, a10);
  }
}

uint64_t sub_1D6040C10()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);

    v4 = sub_1D6041054;
  }

  else
  {
    v3 = *(v2 + 48);

    v4 = sub_1D6040D3C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D6040D3C()
{
  v29 = v0;
  v1 = v0[8];
  v2 = v0[7];
  if ((*(v0[9] + 48))(v2, 1, v1) == 1)
  {
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[2];
    sub_1D5D12CE8(v0[20], type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D12CE8(v2, sub_1D6044238);
    (*(v4 + 56))(v5, 1, 1, v3);
LABEL_8:

    v27 = v0[1];

    return v27();
  }

  v6 = v0[24];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[10];
  sub_1D5D12DB0(v2, v9, type metadata accessor for PuzzleLeaderboardResult);
  sub_1D5D12D48(v7, v8, type metadata accessor for PuzzleLeaderboardEntry);
  v28 = *(v9 + *(v1 + 20));

  sub_1D60420F4(&v28, sub_1D6044FD0, sub_1D6044FB8);
  if (!v6)
  {
    v11 = v0[20];
    v12 = v0[21];
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[11];
    v16 = v0[8];
    v17 = v0[5];
    sub_1D5D12CE8(v0[10], type metadata accessor for PuzzleLeaderboardResult);
    sub_1D5D12CE8(v11, type metadata accessor for PuzzleLeaderboardEntry);
    v18 = v28;
    v19 = (v17 + *(v16 + 28));
    v21 = *v19;
    v20 = v19[1];
    sub_1D5D12DB0(v13, v14, type metadata accessor for PuzzleLeaderboardEntry);
    *(v14 + v15[5]) = v18;
    *(v14 + v15[6]) = v12;
    v22 = (v14 + v15[7]);
    *v22 = v21;
    v22[1] = v20;
    v24 = v0[12];
    v23 = v0[13];
    v25 = v0[11];
    v26 = v0[2];

    sub_1D5D12DB0(v23, v26, type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult);
    (*(v24 + 56))(v26, 0, 1, v25);
    goto LABEL_8;
  }
}

uint64_t sub_1D6041054()
{
  sub_1D5D12CE8(*(v0 + 160), type metadata accessor for PuzzleLeaderboardEntry);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D604116C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 160);
  __swift_destroy_boxed_opaque_existential_1(v0 + 200);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 256);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D60411CC()
{
  sub_1D604116C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D60411F8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D5B64680;

  return sub_1D6038290(a1, a2, a3);
}

uint64_t sub_1D60412AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6036AEC;

  return sub_1D603B3A4(a1);
}

uint64_t sub_1D6041344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D60413DC;

  return sub_1D603CF6C(a1);
}

uint64_t sub_1D60413DC(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1D60414E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D603D374();
}

uint64_t sub_1D6041574(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D5B64684;

  return sub_1D603D4B4(a1, a2);
}

uint64_t sub_1D6041620()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64684;

  return sub_1D5BC3E40(0);
}

uint64_t sub_1D60416B4()
{
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1D726294C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_1D6BD1334(0, 0, v4, &unk_1D7291E80, v6);
}

void sub_1D60417E0(void *a1, char a2)
{
  sub_1D5BC3F04(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v30 - v7;
  v9 = sub_1D725891C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v13 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v30 - v16;
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v30 - v21;
  if (a2)
  {
    v23 = [a1 puzzleStatsStartDate];
    if (v23)
    {
      v24 = v23;
      sub_1D72588BC();

      v31 = v2;
      v25 = *(v10 + 32);
      v25(v22, v17, v9);
      v26 = sub_1D726294C();
      (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
      (*(v10 + 16))(v13, v22, v9);
      v27 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v28 = (v11 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = swift_allocObject();
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      v25((v29 + v27), v13, v9);
      *(v29 + v28) = v31;

      sub_1D6BD1334(0, 0, v8, &unk_1D7291E90, v29);

      (*(v10 + 8))(v22, v9);
    }
  }
}

uint64_t sub_1D6041AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D725891C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6041B64, 0, 0);
}

uint64_t sub_1D6041B64()
{
  v21 = v0;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_1D725C42C();
  __swift_project_value_buffer(v5, qword_1EDFFCFA8);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_1D725C3FC();
  v7 = sub_1D7262EDC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1D5BC4174(&qword_1EDF3C3B0, 255, MEMORY[0x1E6969530]);
    v14 = sub_1D72644BC();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1D5BC5100(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1D5B42000, v6, v7, "PuzzleStatsService: Received new starting date [%s]. Updating stats...", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_1D6041DD8;

  return sub_1D5BC3E40(0);
}

uint64_t sub_1D6041DD8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1D6041F6C()
{
  result = qword_1EC882B30;
  if (!qword_1EC882B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B30);
  }

  return result;
}

uint64_t sub_1D6041FC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9DC(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1D726449C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D726276C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D6042554(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D60420F4(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for PuzzleLeaderboardEntry() - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1D62FFAE0(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_1D60421B4(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_1D60421B4(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for PuzzleLeaderboardEntry();
        v10 = sub_1D726276C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for PuzzleLeaderboardEntry() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

void sub_1D60422F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v32 - v18;
  v34 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v39 = -v21;
    v40 = v20;
    v23 = a1 - a3;
    v33 = v21;
    v24 = v20 + v21 * a3;
LABEL_5:
    v37 = v22;
    v38 = a3;
    v35 = v24;
    v36 = v23;
    while (1)
    {
      sub_1D5D12D48(v24, v19, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12D48(v22, v14, type metadata accessor for PuzzleLeaderboardEntry);
      v25 = *(v8 + 28);
      v26 = v8;
      v27 = *&v19[v25];
      v28 = *&v14[v25];
      sub_1D5D12CE8(v14, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12CE8(v19, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v27 < v28;
      v8 = v26;
      if (!v29)
      {
LABEL_4:
        a3 = v38 + 1;
        v22 = v37 + v33;
        v23 = v36 - 1;
        v24 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v30 = v41;
      sub_1D5D12DB0(v24, v41, type metadata accessor for PuzzleLeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D5D12DB0(v30, v22, type metadata accessor for PuzzleLeaderboardEntry);
      v22 += v39;
      v24 += v39;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D6042554(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1D62FF50C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1D6043400((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D698BA94(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1D698BA94((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1D6043400((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

void sub_1D6042AA0(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v130 = type metadata accessor for PuzzleLeaderboardEntry();
  v9 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v10);
  v119 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v127 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v129 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v128 = &v111 - v20;
  v21 = a3[1];
  if (v21 < 1)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
LABEL_99:
      v131 = v106;
      a4 = *(v106 + 2);
      if (a4 >= 2)
      {
        v107 = v9;
        while (*a3)
        {
          v108 = *&v106[16 * a4];
          v109 = v106;
          v9 = *&v106[16 * a4 + 24];
          sub_1D60435F4(*a3 + *(v107 + 72) * v108, *a3 + *(v107 + 72) * *&v106[16 * a4 + 16], *a3 + *(v107 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v108)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v109 = sub_1D62FF50C(v109);
          }

          if (a4 - 2 >= *(v109 + 2))
          {
            goto LABEL_124;
          }

          v110 = &v109[16 * a4];
          *v110 = v108;
          *(v110 + 1) = v9;
          v131 = v109;
          sub_1D62FF480(a4 - 1);
          v106 = v131;
          a4 = *(v131 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v106 = sub_1D62FF50C(a4);
    goto LABEL_99;
  }

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v115 = a4;
  v117 = a3;
  v112 = v9;
  while (1)
  {
    v24 = v22;
    v25 = v22 + 1;
    v120 = v23;
    if (v25 >= v21)
    {
      v21 = v25;
    }

    else
    {
      v113 = v6;
      v26 = *a3;
      v27 = *(v9 + 72);
      v5 = *a3 + v27 * v25;
      v28 = v128;
      sub_1D5D12D48(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
      v29 = v129;
      sub_1D5D12D48(v26 + v27 * v24, v129, type metadata accessor for PuzzleLeaderboardEntry);
      v30 = *(v130 + 28);
      v31 = *(v28 + v30);
      v123 = *(v29 + v30);
      v124 = v31;
      sub_1D5D12CE8(v29, type metadata accessor for PuzzleLeaderboardEntry);
      sub_1D5D12CE8(v28, type metadata accessor for PuzzleLeaderboardEntry);
      v114 = v24;
      v32 = v24 + 2;
      v125 = v27;
      v33 = v26 + v27 * v32;
      while (v21 != v32)
      {
        LODWORD(v126) = v124 < v123;
        v34 = v128;
        sub_1D5D12D48(v33, v128, type metadata accessor for PuzzleLeaderboardEntry);
        v35 = v129;
        sub_1D5D12D48(v5, v129, type metadata accessor for PuzzleLeaderboardEntry);
        v36 = *(v130 + 28);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_1D5D12CE8(v35, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D5D12CE8(v34, type metadata accessor for PuzzleLeaderboardEntry);
        ++v32;
        v33 += v125;
        v5 += v125;
        if (((v126 ^ (v37 >= v38)) & 1) == 0)
        {
          v21 = v32 - 1;
          break;
        }
      }

      a3 = v117;
      v9 = v112;
      v6 = v113;
      v24 = v114;
      a4 = v115;
      if (v124 < v123)
      {
        if (v21 < v114)
        {
          goto LABEL_127;
        }

        if (v114 < v21)
        {
          v39 = v125 * (v21 - 1);
          v40 = v21 * v125;
          v124 = v21;
          v41 = v21;
          v42 = v114;
          v43 = v114 * v125;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v117;
              if (!*v117)
              {
                goto LABEL_133;
              }

              v5 = v44 + v43;
              sub_1D5D12DB0(v44 + v43, v119, type metadata accessor for PuzzleLeaderboardEntry);
              if (v43 < v39 || v5 >= v44 + v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D5D12DB0(v119, v44 + v39, type metadata accessor for PuzzleLeaderboardEntry);
            }

            ++v42;
            v39 -= v125;
            v40 -= v125;
            v43 += v125;
          }

          while (v42 < v41);
          a3 = v117;
          v9 = v112;
          v24 = v114;
          a4 = v115;
          v21 = v124;
        }
      }
    }

    v45 = a3[1];
    if (v21 >= v45)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v21, v24))
    {
      goto LABEL_126;
    }

    if (v21 - v24 >= a4)
    {
LABEL_32:
      v47 = v21;
      if (v21 < v24)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v24, a4))
    {
      goto LABEL_128;
    }

    if ((v24 + a4) >= v45)
    {
      v46 = a3[1];
    }

    else
    {
      v46 = v24 + a4;
    }

    if (v46 < v24)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v21 == v46)
    {
      goto LABEL_32;
    }

    v92 = *a3;
    v93 = *(v9 + 72);
    v94 = *a3 + v93 * (v21 - 1);
    v95 = v24;
    v96 = -v93;
    v113 = v6;
    v114 = v95;
    v97 = v95 - v21;
    v126 = v92;
    v118 = v93;
    v5 = v92 + v21 * v93;
    v98 = v130;
    v121 = v46;
LABEL_86:
    v123 = v97;
    v124 = v21;
    v122 = v5;
    v125 = v94;
    v99 = v94;
LABEL_87:
    a4 = v128;
    sub_1D5D12D48(v5, v128, type metadata accessor for PuzzleLeaderboardEntry);
    v100 = v129;
    sub_1D5D12D48(v99, v129, type metadata accessor for PuzzleLeaderboardEntry);
    v101 = *(v98 + 28);
    v102 = *(a4 + v101);
    v103 = *(v100 + v101);
    sub_1D5D12CE8(v100, type metadata accessor for PuzzleLeaderboardEntry);
    sub_1D5D12CE8(a4, type metadata accessor for PuzzleLeaderboardEntry);
    if (v102 < v103)
    {
      break;
    }

    v98 = v130;
LABEL_85:
    v21 = v124 + 1;
    v94 = v125 + v118;
    v97 = v123 - 1;
    v5 = v122 + v118;
    v47 = v121;
    if (v124 + 1 != v121)
    {
      goto LABEL_86;
    }

    v9 = v112;
    v6 = v113;
    a3 = v117;
    v24 = v114;
    if (v121 < v114)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = v120;
    }

    else
    {
      v23 = sub_1D698BA94(0, *(v120 + 2) + 1, 1, v120);
    }

    a4 = *(v23 + 2);
    v48 = *(v23 + 3);
    v5 = a4 + 1;
    if (a4 >= v48 >> 1)
    {
      v23 = sub_1D698BA94((v48 > 1), a4 + 1, 1, v23);
    }

    *(v23 + 2) = v5;
    v49 = &v23[16 * a4];
    *(v49 + 4) = v24;
    *(v49 + 5) = v47;
    v50 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v121 = v47;
    if (a4)
    {
      while (2)
      {
        v51 = v5 - 1;
        if (v5 >= 4)
        {
          v56 = &v23[16 * v5 + 32];
          v57 = *(v56 - 64);
          v58 = *(v56 - 56);
          v62 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          if (v62)
          {
            goto LABEL_112;
          }

          v61 = *(v56 - 48);
          v60 = *(v56 - 40);
          v62 = __OFSUB__(v60, v61);
          v54 = v60 - v61;
          v55 = v62;
          if (v62)
          {
            goto LABEL_113;
          }

          v63 = &v23[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v62 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v62)
          {
            goto LABEL_115;
          }

          v62 = __OFADD__(v54, v66);
          v67 = v54 + v66;
          if (v62)
          {
            goto LABEL_118;
          }

          if (v67 >= v59)
          {
            v85 = &v23[16 * v51 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v62 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v62)
            {
              goto LABEL_122;
            }

            if (v54 < v88)
            {
              v51 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v55)
            {
              goto LABEL_114;
            }

            v68 = &v23[16 * v5];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = __OFSUB__(v69, v70);
            v72 = v69 - v70;
            v73 = v71;
            if (v71)
            {
              goto LABEL_117;
            }

            v74 = &v23[16 * v51 + 32];
            v76 = *v74;
            v75 = *(v74 + 1);
            v62 = __OFSUB__(v75, v76);
            v77 = v75 - v76;
            if (v62)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v72, v77))
            {
              goto LABEL_121;
            }

            if (v72 + v77 < v54)
            {
              goto LABEL_66;
            }

            if (v54 < v77)
            {
              v51 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v52 = *(v23 + 4);
            v53 = *(v23 + 5);
            v62 = __OFSUB__(v53, v52);
            v54 = v53 - v52;
            v55 = v62;
            goto LABEL_52;
          }

          v78 = &v23[16 * v5];
          v80 = *v78;
          v79 = *(v78 + 1);
          v62 = __OFSUB__(v79, v80);
          v72 = v79 - v80;
          v73 = v62;
LABEL_66:
          if (v73)
          {
            goto LABEL_116;
          }

          v81 = &v23[16 * v51];
          v83 = *(v81 + 4);
          v82 = *(v81 + 5);
          v62 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v62)
          {
            goto LABEL_119;
          }

          if (v84 < v72)
          {
            break;
          }
        }

        a4 = v51 - 1;
        if (v51 - 1 >= v5)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v89 = v23;
        v90 = *&v23[16 * a4 + 32];
        v5 = *&v23[16 * v51 + 40];
        sub_1D60435F4(*a3 + *(v9 + 72) * v90, *a3 + *(v9 + 72) * *&v23[16 * v51 + 32], *a3 + *(v9 + 72) * v5, v50);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v90)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = sub_1D62FF50C(v89);
        }

        if (a4 >= *(v89 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v89[16 * a4];
        *(v91 + 4) = v90;
        *(v91 + 5) = v5;
        v131 = v89;
        sub_1D62FF480(v51);
        v23 = v131;
        v5 = *(v131 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v21 = a3[1];
    v22 = v121;
    a4 = v115;
    if (v121 >= v21)
    {
      goto LABEL_96;
    }
  }

  if (v126)
  {
    v104 = v127;
    sub_1D5D12DB0(v5, v127, type metadata accessor for PuzzleLeaderboardEntry);
    v98 = v130;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D5D12DB0(v104, v99, type metadata accessor for PuzzleLeaderboardEntry);
    v99 += v96;
    v5 += v96;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

uint64_t sub_1D6043400(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
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

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_1D60435F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for PuzzleLeaderboardEntry();
  MEMORY[0x1EEE9AC00](v8, v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = &v42 - v13;
  v15 = *(v14 + 72);
  if (!v15)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_62;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_63;
  }

  v17 = (a2 - a1) / v15;
  v55 = a1;
  v54 = a4;
  if (v17 >= v16 / v15)
  {
    v19 = v16 / v15 * v15;
    if (a4 < a2 || a2 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v19;
    if (v19 >= 1)
    {
      v28 = -v15;
      v29 = v27;
      v46 = a4;
      v47 = a1;
      v50 = v8;
      v45 = -v15;
      do
      {
        v43 = v27;
        v30 = a2;
        v31 = a2 + v28;
        v48 = a2;
        v49 = a2 + v28;
        while (1)
        {
          if (v30 <= a1)
          {
            v55 = v30;
            v53 = v43;
            goto LABEL_60;
          }

          v33 = a3;
          v44 = v27;
          a3 += v28;
          v34 = v29 + v28;
          v35 = v51;
          sub_1D5D12D48(v29 + v28, v51, type metadata accessor for PuzzleLeaderboardEntry);
          v36 = v52;
          sub_1D5D12D48(v31, v52, type metadata accessor for PuzzleLeaderboardEntry);
          v37 = *(v8 + 28);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          sub_1D5D12CE8(v36, type metadata accessor for PuzzleLeaderboardEntry);
          sub_1D5D12CE8(v35, type metadata accessor for PuzzleLeaderboardEntry);
          if (v38 < v39)
          {
            break;
          }

          v27 = v34;
          if (v33 < v29 || a3 >= v29)
          {
            v32 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v31 = v49;
            v8 = v32;
            v28 = v45;
          }

          else
          {
            v31 = v49;
            v8 = v50;
            v28 = v45;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v34;
          a1 = v47;
          v30 = v48;
          if (v34 <= v46)
          {
            a2 = v48;
            goto LABEL_59;
          }
        }

        v40 = v46;
        if (v33 < v48 || a3 >= v48)
        {
          a2 = v49;
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v28 = v45;
        }

        else
        {
          v41 = v33 == v48;
          a2 = v49;
          v8 = v50;
          v27 = v44;
          v28 = v45;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v47;
      }

      while (v29 > v40);
    }

LABEL_59:
    v55 = a2;
    v53 = v27;
  }

  else
  {
    v18 = v17 * v15;
    if (a4 < a1 || a1 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v18;
    v53 = a4 + v18;
    if (v18 >= 1 && a2 < a3)
    {
      v48 = a3;
      v50 = v8;
      do
      {
        v21 = v51;
        sub_1D5D12D48(a2, v51, type metadata accessor for PuzzleLeaderboardEntry);
        v22 = v52;
        sub_1D5D12D48(a4, v52, type metadata accessor for PuzzleLeaderboardEntry);
        v23 = *(v8 + 28);
        v24 = *(v21 + v23);
        v25 = *(v22 + v23);
        sub_1D5D12CE8(v22, type metadata accessor for PuzzleLeaderboardEntry);
        sub_1D5D12CE8(v21, type metadata accessor for PuzzleLeaderboardEntry);
        if (v24 >= v25)
        {
          if (a1 < a4 || a1 >= a4 + v15)
          {
            v8 = v50;
            swift_arrayInitWithTakeFrontToBack();
            v26 = v48;
          }

          else
          {
            v26 = v48;
            v8 = v50;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v54 = a4 + v15;
          a4 += v15;
        }

        else if (a1 < a2 || a1 >= a2 + v15)
        {
          v8 = v50;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v15;
          v26 = v48;
        }

        else
        {
          v26 = v48;
          v8 = v50;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v15;
        }

        a1 += v15;
        v55 = a1;
      }

      while (a4 < v49 && a2 < v26);
    }
  }

LABEL_60:
  sub_1D62FF538(&v55, &v54, &v53);
}

uint64_t sub_1D6043B20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C6650 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4274636566726570 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4264657472617473 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6670 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C6690 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x736B6165727473 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1D6043DD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PuzzleStreak() - 8;
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v13 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v39 = v15;
  v17 = *(v16 + 16);
  if (v17)
  {
    v32[1] = v10;
    v38 = a2;
    v40 = MEMORY[0x1E69E7CC0];
    v37 = v9;
    v18 = v6;

    v36 = v11;

    v35 = v12;

    v34 = v14;

    v33 = v13;

    sub_1D5BFC364(0, v17, 0);
    v19 = v40;
    v20 = v18;
    v21 = *(v18 + 80);
    v32[0] = v16;
    v22 = v16 + ((v21 + 32) & ~v21);
    v23 = *(v20 + 72);
    do
    {
      sub_1D5D12D48(v22, v8, type metadata accessor for PuzzleStreak);
      v24 = PuzzleStreak.debugDescription.getter();
      v26 = v25;
      sub_1D5D12CE8(v8, type metadata accessor for PuzzleStreak);
      v40 = v19;
      v28 = *(v19 + 16);
      v27 = *(v19 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1D5BFC364((v27 > 1), v28 + 1, 1);
        v19 = v40;
      }

      *(v19 + 16) = v28 + 1;
      v29 = v19 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v22 += v23;
      --v17;
    }

    while (v17);

    v30 = v39;

    v13 = v33;

    v14 = v34;

    v12 = v35;

    v11 = v36;

    v9 = v37;

    a2 = v38;
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v30 = v39;
  }

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;
  a2[4] = v13;
  a2[5] = v30;
  a2[6] = v19;
  return result;
}

unint64_t sub_1D60440DC()
{
  result = qword_1EC882B50;
  if (!qword_1EC882B50)
  {
    sub_1D5D127FC(255, &qword_1EC882B48);
    sub_1D604417C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B50);
  }

  return result;
}

unint64_t sub_1D604417C()
{
  result = qword_1EC882B58;
  if (!qword_1EC882B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B58);
  }

  return result;
}

uint64_t sub_1D60442A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D73C6650 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4264657472617473 && a2 == 0xEE006C6576654C79 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D73C6670 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C6690 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5374736568676968 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5365676172657661 && a2 == 0xED00007365726F63 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736B6165727473 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D6044504@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D5D12440(0, &unk_1EC882B70, sub_1D6044E4C, &type metadata for PuzzleTypeDebugStats.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  v11 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D6044E4C();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v26 = v7;
  sub_1D5D125C4();
  v28 = 0;
  sub_1D5D1262C();
  sub_1D726431C();
  v25 = v29;
  v28 = 1;
  sub_1D726431C();
  v24 = v29;
  sub_1D5D127FC(0, &unk_1EDF055A0);
  v28 = 2;
  sub_1D5D12850(&qword_1EDF05590);
  sub_1D726431C();
  v23 = v29;
  sub_1D5D127FC(0, &qword_1EDF055F0);
  v28 = 3;
  sub_1D5D128D4(&unk_1EDF055D8);
  sub_1D726431C();
  v22 = v29;
  v28 = 4;
  sub_1D726431C();
  v21 = v29;
  v28 = 5;
  sub_1D726431C();
  v12 = v26;
  v13 = v29;
  sub_1D5B49DA8(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v28 = 6;
  sub_1D5B99580(&qword_1EDF3C830);
  sub_1D726431C();
  (*(v12 + 8))(v10, v6);
  v14 = v29;
  v15 = v25;

  v16 = v21;
  v17 = v24;

  v18 = v23;

  v19 = v22;

  __swift_destroy_boxed_opaque_existential_1(v27);

  *a2 = v15;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  a2[4] = v16;
  a2[5] = v13;
  a2[6] = v14;
  return result;
}

uint64_t sub_1D6044B50()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D5B64680;

  return sub_1D6041620();
}

uint64_t sub_1D6044C04(uint64_t a1)
{
  v4 = *(sub_1D725891C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D5B64684;

  return sub_1D6041AA4(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1D6044D24()
{
  result = qword_1EDF0F6E8[0];
  if (!qword_1EDF0F6E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0F6E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed23PuzzleStatsServiceErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6044DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1D6044E1C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1D6044E4C()
{
  result = qword_1EC882B68;
  if (!qword_1EC882B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B68);
  }

  return result;
}

unint64_t sub_1D6044EB4()
{
  result = qword_1EC882B80;
  if (!qword_1EC882B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B80);
  }

  return result;
}

unint64_t sub_1D6044F0C()
{
  result = qword_1EC882B88;
  if (!qword_1EC882B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B88);
  }

  return result;
}

unint64_t sub_1D6044F64()
{
  result = qword_1EC882B90;
  if (!qword_1EC882B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882B90);
  }

  return result;
}

id VideoDurationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *VideoDurationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v28.receiver = v4;
  v28.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v28, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  [v12 setCornerRadius_];

  v13 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.282352941 green:0.282352941 blue:0.290196078 alpha:1.0];
  [v11 setBackgroundColor_];

  v14 = OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label;
  [v11 addSubview_];
  v15 = *&v11[v14];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 whiteColor];
  [v17 setTextColor_];

  [*&v11[v14] setTextAlignment_];
  v19 = *&v11[v14];
  v20 = objc_opt_self();
  v21 = *MEMORY[0x1E69DB980];
  v22 = v19;
  v23 = [v20 systemFontOfSize:12.0 weight:v21];
  v24 = [v23 fontDescriptor];
  v25 = [v24 fontDescriptorWithDesign_];

  if (v25)
  {
    v26 = [v20 fontWithDescriptor:v25 size:12.0];

    v23 = v26;
  }

  [v22 setFont_];

  return v11;
}

Swift::Void __swiftcall VideoDurationView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label];
  [v0 bounds];
  [v1 setFrame_];
}

id VideoDurationView.intrinsicContentSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17VideoDurationView_label);
  result = [v1 font];
  if (result)
  {
    v3 = result;
    [result capHeight];

    return [v1 intrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id VideoDurationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t dispatch thunk of RecipeImageShareAttributeProviderType.shareImage(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6036AEC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of RecipeImageShareAttributeProviderType.shareIcon(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D6045DDC;

  return v9(a1, a2, a3);
}

uint64_t sub_1D6045880(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6036AEC;

  return sub_1D60459A8(a1);
}

uint64_t sub_1D6045914(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D6045DDC;

  return sub_1D60459A8(a1);
}

uint64_t sub_1D60459C8()
{
  v1 = [*(v0 + 48) thumbnailMedium];
  if (v1 && (v2 = v1, v3 = [v1 thumbnailAssetHandle], *(v0 + 56) = v3, v2, v3))
  {
    v4 = [v3 filePath];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726207C();
      v8 = v7;

      *(v0 + 32) = v6;
      *(v0 + 40) = v8;
      sub_1D5F129A4();
      swift_allocObject();
      v9 = sub_1D725BB1C();
    }

    else
    {
      *(swift_task_alloc() + 16) = v3;
      sub_1D5F129A4();
      swift_allocObject();
      v9 = sub_1D725BBAC();
    }

    *(v0 + 64) = v9;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_1D6045B94;

    return MEMORY[0x1EEE44EE0](v0 + 16);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10(0);
  }
}

uint64_t sub_1D6045B94()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D6045D64;
  }

  else
  {

    v2 = sub_1D6045CB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D6045CB0()
{
  v1 = *(v0 + 56);
  v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v3 = sub_1D726203C();

  v4 = [v2 initWithContentsOfFile_];

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1D6045D64()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t FormatAccessibilityNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatAccessibilityNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatAccessibilityNode.property.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  return sub_1D5D07778(v3, v4);
}

unint64_t FormatAccessibilityNode.property.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return sub_1D5D06D9C(v4, v5);
}

uint64_t FormatAccessibilityNode.invalidation.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 98);
  v10 = *(v1 + 96);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 50) = v9;
  *(a1 + 48) = v10;
  return sub_1D6046038(v3, v4, v5, v6, v7, v8, v10 | (v9 << 16));
}

uint64_t sub_1D6046038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  if (((a7 >> 17) & 0x7F) != 0x7F)
  {
    return sub_1D5D0A5BC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t FormatAccessibilityNode.invalidation.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 50);
  v6 = *(a1 + 48);
  swift_beginAccess();
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96) | (*(v1 + 98) << 16);
  v14 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v14;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v6;
  *(v1 + 98) = v5;
  return sub_1D5C67600(v7, v8, v9, v10, v11, v12, v13);
}

uint64_t FormatAccessibilityNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[14];
  v4 = v1[15];
  v5 = v1[16];
  v6 = v1[17];
  v7 = v1[18];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6);
}

uint64_t FormatAccessibilityNode.__allocating_init(identifier:property:invalidation:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = *(a3 + 8);
  v24 = *(a4 + 40);
  v25 = *(a4 + 32);
  v26 = *(a4 + 50);
  v13 = *(a4 + 48);
  v27 = *(a5 + 5);
  v28 = *(a5 + 4);
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 98) = -2;
  swift_beginAccess();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  swift_beginAccess();
  v14 = *(v10 + 48);
  v15 = *(v10 + 56);
  v16 = *(v10 + 64);
  v17 = *(v10 + 72);
  v18 = *(v10 + 80);
  v19 = *(v10 + 88);
  v20 = *(v10 + 96) | (*(v10 + 98) << 16);
  v21 = *(a4 + 16);
  *(v10 + 48) = *a4;
  *(v10 + 64) = v21;
  *(v10 + 80) = v25;
  *(v10 + 88) = v24;
  *(v10 + 96) = v13;
  *(v10 + 98) = v26;
  sub_1D5C67600(v14, v15, v16, v17, v18, v19, v20);
  v22 = *a5;
  *(v10 + 120) = a5[1];
  *(v10 + 104) = v22;
  *(v10 + 136) = v28;
  *(v10 + 144) = v27;
  return v10;
}

uint64_t FormatAccessibilityNode.init(identifier:property:invalidation:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, __int128 *a5)
{
  v10 = *a3;
  v11 = *(a3 + 8);
  v23 = *(a4 + 40);
  v24 = *(a4 + 32);
  v25 = *(a4 + 50);
  v12 = *(a4 + 48);
  v26 = *(a5 + 5);
  v27 = *(a5 + 4);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(v5 + 98) = -2;
  swift_beginAccess();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  swift_beginAccess();
  v13 = *(v5 + 48);
  v14 = *(v5 + 56);
  v15 = *(v5 + 64);
  v16 = *(v5 + 72);
  v17 = *(v5 + 80);
  v18 = *(v5 + 88);
  v19 = *(v5 + 96) | (*(v5 + 98) << 16);
  v20 = *(a4 + 16);
  *(v5 + 48) = *a4;
  *(v5 + 64) = v20;
  *(v5 + 80) = v24;
  *(v5 + 88) = v23;
  *(v5 + 96) = v12;
  *(v5 + 98) = v25;
  sub_1D5C67600(v13, v14, v15, v16, v17, v18, v19);
  v21 = *a5;
  *(v5 + 120) = a5[1];
  *(v5 + 104) = v21;
  *(v5 + 136) = v27;
  *(v5 + 144) = v26;
  return v5;
}

uint64_t FormatAccessibilityNode.deinit()
{

  sub_1D5D06D9C(*(v0 + 32), *(v0 + 40));
  sub_1D5C67600(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 98) << 16));
  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  return v0;
}

uint64_t FormatAccessibilityNode.__deallocating_deinit()
{

  sub_1D5D06D9C(*(v0 + 32), *(v0 + 40));
  sub_1D5C67600(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96) | (*(v0 + 98) << 16));
  sub_1D5EB2398(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6046474(uint64_t a1, uint64_t a2)
{
  result = sub_1D6047BB0(&qword_1EC882BA8, a2, type metadata accessor for FormatAccessibilityNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60464CC(void *a1, uint64_t a2)
{
  a1[1] = sub_1D6047BB0(&qword_1EDF27850, a2, type metadata accessor for FormatAccessibilityNode);
  a1[2] = sub_1D6047BB0(&unk_1EDF0D648, v3, type metadata accessor for FormatAccessibilityNode);
  result = sub_1D6047BB0(&qword_1EC882BB0, v4, type metadata accessor for FormatAccessibilityNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60465A8(uint64_t a1, uint64_t a2)
{
  result = sub_1D6047BB0(&qword_1EC882BB8, a2, type metadata accessor for FormatAccessibilityNode);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6046600(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v113 = a2;
  v112 = a8;
  sub_1D6047B58();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v107 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v99 - v19;
  v106 = type metadata accessor for FormatNodeStateData.Data();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v21);
  v108 = (&v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  swift_beginAccess();
  v23 = *(a3 + 96) | (*(a3 + 98) << 16);
  v111 = a5;
  if (v23 < 0xFE0000)
  {
    v100 = a1;
    v101 = a7;
    v102 = a6;
    v25 = *(a3 + 56);
    v27 = *(a3 + 64);
    v26 = *(a3 + 72);
    v29 = *(a3 + 80);
    v28 = *(a3 + 88);
    v110 = *(a3 + 48);
    sub_1D5D0A5BC(v110, v25, v27, v26, v29, v28, v23);

    v104 = v28;
    if ((v23 & 0x800000) != 0)
    {
      v117 = BYTE2(v23) & 1;
      v118 = v110;
      v119 = v25;
      v120 = v27;
      v121 = v26;
      v122 = v29;
      v123 = v28;
      v124 = v23;
      v125 = BYTE2(v23) & 1;
      v36 = a4;
      v37 = v114;
      v38 = sub_1D688DD04(a4);
      v114 = v37;
      if (v37)
      {
        return sub_1D5C67600(v110, v25, v27, v26, v29, v104, v23);
      }

      v40 = v38;
      v109 = v36;
      v103 = v20;
      sub_1D5C67600(v110, v25, v27, v26, v29, v104, v23);
      v24 = 1;
      a6 = v102;
      a5 = v111;
      v110 = v40;
    }

    else
    {
      v99 = v29;
      v103 = v20;
      v118 = a4;
      v30 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v31 = v30();
      v32 = v110;
      v33 = v114;
      v34 = sub_1D5E02AFC(v31, v110);
      v114 = v33;
      if (v33)
      {
        sub_1D5C67600(v32, v25, v27, v26, v99, v104, v23);
      }

      v39 = *&v34;
      v109 = a4;
      sub_1D5C67600(v32, v25, v27, v26, v99, v104, v23);

      v24 = 0;
      v110 = v39;
      a6 = v102;
      a5 = v111;
    }

    a7 = v101;
    a1 = v100;
  }

  else
  {
    v109 = a4;
    v103 = v20;

    v110 = 0;
    v24 = 255;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v41 = *(a3 + 32);
  v42 = *(a3 + 40);
  sub_1D5D07778(v41, *(a3 + 40));

  if (v42)
  {
    v43 = 4;
  }

  else
  {
    v43 = 0;
  }

  v44 = (v41 >> 60) & 3 | v43;
  if (v44 <= 2)
  {
    LODWORD(v104) = v42;
    if (!v44)
    {
      v61 = type metadata accessor for FormatAccessibilityLayoutValue();
      v62 = swift_allocObject();
      *(v62 + 16) = a5;
      *(v62 + 24) = a6;
      *(v62 + 32) = 18;
      v116 = a1;
      swift_getKeyPath();
      v121 = v61;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
      v118 = v62;
      sub_1D5EB563C(0);
      v101 = v63;
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
      v64 = v24;
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

      v65 = v110;
      v66 = v64;
      sub_1D72599FC();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      v115 = v41;
      v118 = v65;
      LOBYTE(v119) = v64;

      v67 = v114;
      sub_1D6EFC244(v109, v113, &v118, &v116);

      v114 = v67;
      if (!v67)
      {

        v109 = v116;
        v84 = v108;
        *v108 = v116;
        v85 = v106;
        swift_storeEnumTagMultiPayload();
        v86 = v103;
        sub_1D6047CB4(v84, v103, type metadata accessor for FormatNodeStateData.Data);
        (*(v105 + 56))(v86, 0, 1, v85);
        v87 = v107;
        sub_1D6047CB4(v86, v107, sub_1D6047B58);
        swift_beginAccess();
        v113 = v41;

        sub_1D6D60A18(v87, v111, a6);
        swift_endAccess();
        sub_1D6047C90(v65, v66);
        sub_1D5D06D9C(v113, v104);

        goto LABEL_40;
      }

      sub_1D5D06D9C(v41, v104);
      v59 = v65;
      v60 = v64;
      return sub_1D6047C90(v59, v60);
    }

    LODWORD(v102) = v24;
    v101 = v41 & 0xCFFFFFFFFFFFFFFFLL;
    if (v44 == 1)
    {
      v51 = type metadata accessor for FormatAccessibilityLayoutValue();
      v52 = swift_allocObject();
      v53 = v52;
      *(v52 + 16) = a5;
      *(v52 + 24) = a6;
      v54 = 19;
    }

    else
    {
      v51 = type metadata accessor for FormatAccessibilityLayoutValue();
      v52 = swift_allocObject();
      v53 = v52;
      *(v52 + 16) = a5;
      *(v52 + 24) = a6;
      v54 = 20;
    }

    *(v52 + 32) = v54;
    v116 = a1;
    swift_getKeyPath();
    v121 = v51;
    v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
    v118 = v53;
    sub_1D5EB563C(0);
    sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
    sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

    sub_1D72599FC();

    __swift_destroy_boxed_opaque_existential_1(&v118);
    v115 = v101;
    v68 = v110;
    v118 = v110;
    v69 = v102;
    LOBYTE(v119) = v102;

    v70 = v114;
    sub_1D6EFC244(v109, v113, &v118, &v116);
    v114 = v70;
    if (v70)
    {
LABEL_31:

      sub_1D5D06D9C(v41, v104);
      v59 = v68;
      v60 = v69;
      return sub_1D6047C90(v59, v60);
    }

    v71 = v108;
    *v108 = v116;
    v72 = v106;
    swift_storeEnumTagMultiPayload();
    v73 = a6;
    v74 = v103;
    sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
    (*(v105 + 56))(v74, 0, 1, v72);
    v75 = v107;
    sub_1D6047CB4(v74, v107, sub_1D6047B58);
    swift_beginAccess();

    sub_1D6D60A18(v75, v111, v73);
    swift_endAccess();
    sub_1D6047C90(v68, v102);
    v76 = v41;
  }

  else
  {
    if (v44 <= 4)
    {
      LODWORD(v102) = v24;
      LODWORD(v104) = v42;
      if (v44 == 3)
      {
        v101 = v41 & 0xCFFFFFFFFFFFFFFFLL;
        v45 = type metadata accessor for FormatAccessibilityLayoutValue();
        v46 = swift_allocObject();
        *(v46 + 16) = a5;
        *(v46 + 24) = a6;
        *(v46 + 32) = 21;
        v116 = a1;
        swift_getKeyPath();
        v121 = v45;
        v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
        v118 = v46;
        sub_1D5EB563C(0);
        sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
        v47 = a6;
        sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

        sub_1D72599FC();

        __swift_destroy_boxed_opaque_existential_1(&v118);
        v115 = v101;
        v48 = v110;
        v118 = v110;
        v49 = v102;
        LOBYTE(v119) = v102;
        v50 = v114;
        sub_1D6EFC244(v109, v113, &v118, &v116);
        v114 = v50;
        if (v50)
        {

          sub_1D6047C90(v48, v49);
          return sub_1D5D06D9C(v41, v104);
        }

        v71 = v108;
        *v108 = v116;
        v88 = v106;
        swift_storeEnumTagMultiPayload();
        v74 = v103;
        sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
        (*(v105 + 56))(v74, 0, 1, v88);
        v89 = v41;
        v90 = v107;
        sub_1D6047CB4(v74, v107, sub_1D6047B58);
        swift_beginAccess();

        sub_1D6D60A18(v90, v111, v47);
        swift_endAccess();
        sub_1D6047C90(v48, v102);
        sub_1D5D06D9C(v89, v104);

        goto LABEL_38;
      }

      v77 = type metadata accessor for FormatAccessibilityLayoutValue();
      v78 = swift_allocObject();
      *(v78 + 16) = a5;
      *(v78 + 24) = a6;
      *(v78 + 32) = 22;
      v116 = a1;
      swift_getKeyPath();
      v121 = v77;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
      v118 = v78;
      sub_1D5EB563C(0);
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

      sub_1D72599FC();

      __swift_destroy_boxed_opaque_existential_1(&v118);
      v115 = v41;
      v68 = v110;
      v118 = v110;
      v69 = v102;
      LOBYTE(v119) = v102;

      v79 = v114;
      sub_1D6EFC244(v109, v113, &v118, &v116);
      v114 = v79;
      if (v79)
      {
        goto LABEL_31;
      }

      v109 = v116;
      v84 = v108;
      *v108 = v116;
      v96 = v106;
      swift_storeEnumTagMultiPayload();
      v97 = v69;
      v86 = v103;
      sub_1D6047CB4(v84, v103, type metadata accessor for FormatNodeStateData.Data);
      (*(v105 + 56))(v86, 0, 1, v96);
      v113 = v41;
      v98 = v107;
      sub_1D6047CB4(v86, v107, sub_1D6047B58);
      swift_beginAccess();

      sub_1D6D60A18(v98, v111, a6);
      swift_endAccess();
      sub_1D6047C90(v68, v97);
      sub_1D5D06D9C(v113, v104);

LABEL_40:

      sub_1D6047D1C(v86, sub_1D6047B58);
      v95 = v84;
      return sub_1D6047D1C(v95, type metadata accessor for FormatNodeStateData.Data);
    }

    if (v44 != 5)
    {
      v80 = type metadata accessor for FormatAccessibilityLayoutValue();
      v81 = swift_allocObject();
      v82 = a1;
      v83 = v81;
      *(v81 + 16) = a5;
      *(v81 + 24) = a6;
      *(v81 + 32) = v41;
      v116 = v82;
      swift_getKeyPath();
      v121 = v80;
      v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
      v118 = v83;
      sub_1D5EB563C(0);
      sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
      sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

      sub_1D72599FC();
      sub_1D6047C90(v110, v24);

      return __swift_destroy_boxed_opaque_existential_1(&v118);
    }

    LODWORD(v104) = v42;
    v101 = a7;
    v100 = v41 & 0xCFFFFFFFFFFFFFFFLL;
    v55 = type metadata accessor for FormatAccessibilityLayoutValue();
    v56 = swift_allocObject();
    *(v56 + 16) = a5;
    *(v56 + 24) = a6;
    *(v56 + 32) = 23;
    v116 = a1;
    swift_getKeyPath();
    v121 = v55;
    v122 = sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
    v118 = v56;
    sub_1D5EB563C(0);
    sub_1D6047BB0(&qword_1EDF3C118, 255, sub_1D5EB563C);
    sub_1D6047BB0(&qword_1EDF3BFE0, 255, sub_1D6047BF8);

    sub_1D72599FC();

    __swift_destroy_boxed_opaque_existential_1(&v118);
    v115 = v100;
    v57 = v110;
    v118 = v110;
    LOBYTE(v119) = v24;

    v58 = v114;
    sub_1D6EFC244(v109, v113, &v118, &v116);
    v114 = v58;
    if (v58)
    {

      sub_1D5D06D9C(v41, v104);
      v59 = v57;
      v60 = v24;
      return sub_1D6047C90(v59, v60);
    }

    v113 = v116;
    LODWORD(v102) = v24;
    v71 = v108;
    *v108 = v116;
    v91 = v106;
    swift_storeEnumTagMultiPayload();
    v92 = a6;
    v74 = v103;
    sub_1D6047CB4(v71, v103, type metadata accessor for FormatNodeStateData.Data);
    (*(v105 + 56))(v74, 0, 1, v91);
    v93 = v41;
    v94 = v107;
    sub_1D6047CB4(v74, v107, sub_1D6047B58);
    swift_beginAccess();

    sub_1D6D60A18(v94, v111, v92);
    swift_endAccess();
    sub_1D6047C90(v57, v102);
    v76 = v93;
  }

  sub_1D5D06D9C(v76, v104);

LABEL_38:

  sub_1D6047D1C(v74, sub_1D6047B58);
  v95 = v71;
  return sub_1D6047D1C(v95, type metadata accessor for FormatNodeStateData.Data);
}

void sub_1D6047B58()
{
  if (!qword_1EDF2C470)
  {
    type metadata accessor for FormatNodeStateData.Data();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF2C470);
    }
  }
}

uint64_t sub_1D6047BB0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D6047BF8()
{
  if (!qword_1EDF3BFD8)
  {
    type metadata accessor for FormatAccessibilityLayoutValue();
    sub_1D6047BB0(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue);
    v0 = sub_1D7259FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BFD8);
    }
  }
}

uint64_t sub_1D6047C90(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D6047CA8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1D6047CA8(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1D6047CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6047D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatAnimationNodeGroupAnimation.mediaTiming.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v12[6] = *(v1 + 120);
  v13[0] = v3;
  *(v13 + 9) = *(v1 + 145);
  v4 = *(v1 + 40);
  v5 = *(v1 + 72);
  v12[2] = *(v1 + 56);
  v12[3] = v5;
  v12[4] = *(v1 + 88);
  v12[5] = v2;
  v12[0] = *(v1 + 24);
  v12[1] = v4;
  v6 = *(v1 + 104);
  v7 = *(v1 + 136);
  a1[6] = *(v1 + 120);
  a1[7] = v7;
  *(a1 + 121) = *(v1 + 145);
  v8 = *(v1 + 40);
  v9 = *(v1 + 72);
  a1[2] = *(v1 + 56);
  a1[3] = v9;
  a1[4] = *(v1 + 88);
  a1[5] = v6;
  *a1 = *(v1 + 24);
  a1[1] = v8;
  return sub_1D6047E28(v12, &v11);
}

uint64_t sub_1D6047E28(uint64_t a1, uint64_t a2)
{
  sub_1D6047E8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D6047E8C()
{
  if (!qword_1EDF10BF0)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF10BF0);
    }
  }
}

__n128 FormatAnimationNodeGroupAnimation.__allocating_init(animations:mediaTiming:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = a2[4];
  *(v4 + 104) = a2[5];
  v6 = a2[7];
  *(v4 + 120) = a2[6];
  *(v4 + 136) = v6;
  *(v4 + 145) = *(a2 + 121);
  v7 = *a2;
  *(v4 + 40) = a2[1];
  result = a2[2];
  v9 = a2[3];
  *(v4 + 56) = result;
  *(v4 + 72) = v9;
  *(v4 + 88) = v5;
  *(v4 + 16) = a1;
  *(v4 + 24) = v7;
  return result;
}

uint64_t FormatAnimationNodeGroupAnimation.init(animations:mediaTiming:)(uint64_t a1, __int128 *a2)
{
  v3 = a2[4];
  *(v2 + 104) = a2[5];
  v4 = a2[7];
  *(v2 + 120) = a2[6];
  *(v2 + 136) = v4;
  *(v2 + 145) = *(a2 + 121);
  v5 = *a2;
  *(v2 + 40) = a2[1];
  v6 = a2[3];
  *(v2 + 56) = a2[2];
  *(v2 + 72) = v6;
  *(v2 + 88) = v3;
  *(v2 + 16) = a1;
  *(v2 + 24) = v5;
  return v2;
}

uint64_t sub_1D6047F98(id (*a1)(void *a1))
{
  v3 = v2;
  v24 = [objc_allocWithZone(MEMORY[0x1E6979308]) init];
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (v5)
  {
    *&v37 = MEMORY[0x1E69E7CC0];
    result = sub_1D7263ECC();
    v7 = 0;
    while (v7 < *(v4 + 16))
    {
      v8 = *(v4 + 32 + 8 * v7) >> 62;
      if (v8)
      {
        if (v8 == 1)
        {

          v9 = v3;
          v10 = sub_1D694B308(a1);
        }

        else
        {

          v9 = v3;
          v10 = sub_1D6047F98(a1);
        }

        v11 = v10;
        v3 = v9;

        if (v9)
        {
LABEL_14:

          return v5;
        }
      }

      else
      {

        v11 = sub_1D6AACBAC(a1);

        if (v3)
        {
          goto LABEL_14;
        }
      }

      ++v7;

      v12 = *(v11 + 16);

      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      result = sub_1D7263EAC();
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_1D6048660();
    v13 = sub_1D726265C();

    [v24 setAnimations_];

    v14 = *(v1 + 120);
    v42 = *(v1 + 104);
    v43 = v14;
    v44[0] = *(v1 + 136);
    *(v44 + 9) = *(v1 + 145);
    v15 = *(v1 + 40);
    v16 = *(v1 + 72);
    v39 = *(v1 + 56);
    v40 = v16;
    v41 = *(v1 + 88);
    v37 = *(v1 + 24);
    v38 = v15;
    type metadata accessor for FormatAnimation();
    v5 = swift_allocObject();
    v17 = *(v1 + 120);
    v35[5] = *(v1 + 104);
    v35[6] = v17;
    v36[0] = *(v1 + 136);
    *(v36 + 9) = *(v1 + 145);
    v18 = *(v1 + 40);
    v19 = *(v1 + 72);
    v35[2] = *(v1 + 56);
    v35[3] = v19;
    v35[4] = *(v1 + 88);
    v35[0] = *(v1 + 24);
    v35[1] = v18;
    sub_1D68137D4(a1, v35);
    if (v3)
    {

      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v5 + 16) = v24;
      *(v5 + 24) = 0;
      *(v5 + 32) = 0xE000000000000000;
      *(v5 + 56) = 0u;
      *(v5 + 72) = 0u;
      v33 = v43;
      v34[0] = v44[0];
      *(v34 + 9) = *(v44 + 9);
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v32 = v42;
      v27 = v37;
      v28 = v38;
      if (sub_1D60486AC(&v27) == 1 || (v20 = v28) == 0)
      {
        *(v5 + 40) = 0;
        *(v5 + 48) = 1;
      }

      else
      {
        v21 = off_1F51AF338[0];
        type metadata accessor for FormatNodeContext();
        v26 = v24;

        v22 = v21();
        v23 = sub_1D5E02AFC(v22, v20);

        *(v5 + 40) = v23;
        *(v5 + 48) = 0;
      }
    }

    return v5;
  }

  return result;
}

uint64_t FormatAnimationNodeGroupAnimation.deinit()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 145);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return v0;
}

uint64_t FormatAnimationNodeGroupAnimation.__deallocating_deinit()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v7[0] = v2;
  *(v7 + 9) = *(v0 + 145);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  sub_1D6048FE4(v6, sub_1D6047E8C);
  return swift_deallocClassInstance();
}

uint64_t sub_1D60484A4(uint64_t a1)
{
  result = sub_1D6048598(&qword_1EC882BC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D604850C(void *a1)
{
  a1[1] = sub_1D6048598(&qword_1EC882BC8);
  a1[2] = sub_1D6048598(&qword_1EC882BD0);
  result = sub_1D6048598(&qword_1EC882BD8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6048598(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatAnimationNodeGroupAnimation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60485D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D666223C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1D6048660()
{
  result = qword_1EC882BE0;
  if (!qword_1EC882BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC882BE0);
  }

  return result;
}

uint64_t sub_1D60486AC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

size_t sub_1D60486D0(uint64_t a1, uint64_t a2)
{
  sub_1D5EA74B8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 112);
  v104 = *(a1 + 96);
  v105 = v9;
  v106 = *(a1 + 128);
  v107 = *(a1 + 144);
  v10 = *(a1 + 48);
  v100 = *(a1 + 32);
  v101 = v10;
  v11 = *(a1 + 80);
  v102 = *(a1 + 64);
  v103 = v11;
  v12 = *(a1 + 16);
  v98 = *a1;
  v99 = v12;
  v13 = MEMORY[0x1E69E6F90];
  sub_1D6048F4C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  v70 = xmmword_1D7273AE0;
  v62 = v14;
  *(v14 + 16) = xmmword_1D7273AE0;
  sub_1D6048F4C(0, &qword_1EC880490, sub_1D5EA74B8, v13);
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v72 = *(v5 + 72);
  v73 = v15;
  v63 = swift_allocObject();
  *(v63 + 16) = v70;
  sub_1D6048F4C(0, &qword_1EC8803C0, sub_1D5E4F38C, v13);
  v71 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v70;
  v18 = *(a1 + 112);
  v88[6] = *(a1 + 96);
  v88[7] = v18;
  v88[8] = *(a1 + 128);
  v89 = *(a1 + 144);
  v19 = *(a1 + 48);
  v88[2] = *(a1 + 32);
  v88[3] = v19;
  v20 = *(a1 + 80);
  v88[4] = *(a1 + 64);
  v88[5] = v20;
  v21 = *(a1 + 16);
  v88[0] = *a1;
  v88[1] = v21;
  if (a2)
  {
    v22 = *(a2 + 120);
    v81 = *(a2 + 104);
    v82 = v22;
    v83[0] = *(a2 + 136);
    *(v83 + 9) = *(a2 + 145);
    v23 = *(a2 + 56);
    v77 = *(a2 + 40);
    v78 = v23;
    v24 = *(a2 + 88);
    v79 = *(a2 + 72);
    v80 = v24;
    v76 = *(a2 + 24);
    sub_1D6047E28(&v76, v86);
    v96 = v82;
    v97[0] = v83[0];
    *(v97 + 9) = *(v83 + 9);
    v92 = v78;
    v93 = v79;
    v94 = v80;
    v95 = v81;
    v90 = v76;
    v91 = v77;
  }

  else
  {
    sub_1D6048FB0(&v90);
  }

  v25 = sub_1D6814648(v88, &v90);
  v86[6] = v96;
  v87[0] = v97[0];
  *(v87 + 9) = *(v97 + 9);
  v86[2] = v92;
  v86[3] = v93;
  v86[4] = v94;
  v86[5] = v95;
  v86[0] = v90;
  v86[1] = v91;
  sub_1D6048FE4(v86, sub_1D6047E8C);
  *(v17 + 56) = &type metadata for FormatInspection;
  *(v17 + 64) = &off_1F51E3FD0;
  *(v17 + 32) = v25;
  v26 = sub_1D5F62BFC(v17);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1(v17 + 32);
  swift_deallocClassInstance();
  v27 = sub_1D7073500(v26);

  v28 = v63;
  v29 = v73;
  sub_1D711AD20(1701869908, 0xE400000000000000, v27, 0x70756F7247, 0xE500000000000000, (v63 + v73));
  v30 = type metadata accessor for FormatInspectionItem(0);
  v31 = *(v30 - 8);
  v69 = *(v31 + 56);
  *&v70 = v30;
  v68 = v31 + 56;
  v69(v28 + v29, 0, 1);
  v32 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v33 = *(a2 + 16);

    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_6;
    }

LABEL_21:

    v38 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *&v76 = v63;
    sub_1D6986D54(v38);
    sub_1D6795150(0x6F6974616D696E41, 0xE90000000000006ELL, 0, 0, v76, &v76);

    v58 = v62;
    *(v62 + 56) = &type metadata for FormatInspectionGroup;
    *(v58 + 64) = &off_1F518B2C0;
    v59 = swift_allocObject();
    *(v58 + 32) = v59;
    v60 = v77;
    *(v59 + 16) = v76;
    *(v59 + 32) = v60;
    *(v59 + 48) = v78;
    v61 = sub_1D7073500(v58);
    swift_setDeallocating();
    sub_1D6048FE4(v58 + 32, sub_1D5E4F358);
    swift_deallocClassInstance();
    return v61;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v34)
  {
    goto LABEL_21;
  }

LABEL_6:
  v85 = v32;
  result = sub_1D69972A4(0, v34, 0);
  v36 = 0;
  v37 = *(v33 + 16);
  v66 = v8;
  v67 = v37;
  v38 = v85;
  v64 = v34;
  v65 = v33;
  while (v67 != v36)
  {
    if (v36 >= *(v33 + 16))
    {
      goto LABEL_24;
    }

    v39 = *(v33 + 8 * v36 + 32);

    *&v76 = 0x6F6974616D696E41;
    *(&v76 + 1) = 0xEA0000000000206ELL;
    v74[0] = ++v36;
    v40 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v40);

    v41 = v76;
    v42 = swift_allocObject();
    v43 = v39 >> 62;
    if (v39 >> 62)
    {
      v44 = *((v39 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v82 = v104;
      v83[0] = v105;
      v83[1] = v106;
      v84 = v107;
      v78 = v100;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v76 = v98;
      v77 = v99;
      if (v43 == 1)
      {

        v45 = sub_1D694C4CC(&v76, v44);
      }

      else
      {

        v45 = sub_1D60486D0(&v76, v44);
      }
    }

    else
    {
      v46 = *(v39 + 16);
      v82 = v104;
      v83[0] = v105;
      v83[1] = v106;
      v84 = v107;
      v78 = v100;
      v79 = v101;
      v80 = v102;
      v81 = v103;
      v76 = v98;
      v77 = v99;

      v45 = sub_1D6AAD820(&v76, v46);
    }

    v47 = v45;

    v42[7] = &type metadata for FormatInspection;
    v42[8] = &off_1F51E3FD0;
    v42[4] = v47;
    v75 = MEMORY[0x1E69E7CC0];
    sub_1D6997338(0, 1, 0);
    v48 = v75;
    sub_1D5B68374((v42 + 4), v74);
    sub_1D5E4F38C();
    sub_1D5E4F358(0);
    swift_dynamicCast();
    v75 = v48;
    v50 = *(v48 + 16);
    v49 = *(v48 + 24);
    if (v50 >= v49 >> 1)
    {
      sub_1D6997338((v49 > 1), v50 + 1, 1);
      v48 = v75;
    }

    *(v48 + 16) = v50 + 1;
    v51 = v48 + 40 * v50;
    v52 = v76;
    v53 = v77;
    *(v51 + 64) = v78;
    *(v51 + 32) = v52;
    *(v51 + 48) = v53;
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_1((v42 + 4));
    swift_deallocClassInstance();
    v54 = sub_1D7073500(v48);

    v55 = v66;
    sub_1D711AD20(v41, *(&v41 + 1), v54, 0, 0, v66);
    (v69)(v55, 0, 1, v70);

    v85 = v38;
    v57 = *(v38 + 16);
    v56 = *(v38 + 24);
    if (v57 >= v56 >> 1)
    {
      sub_1D69972A4(v56 > 1, v57 + 1, 1);
      v38 = v85;
    }

    *(v38 + 16) = v57 + 1;
    result = sub_1D5E4F52C(v55, v38 + v73 + v57 * v72);
    v33 = v65;
    if (v64 == v36)
    {

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1D6048F4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1D6048FB0(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t sub_1D6048FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D6049044()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_opt_self() defaultSessionConfiguration];
    v4 = [objc_opt_self() sessionWithConfiguration_];

    v5 = *(v0 + 16);
    *(v0 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_1D60490E8()
{
  v1 = *v0;
  v2 = sub_1D725891C();
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D7257C7C();
  v92 = *(v5 - 8);
  v93 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v90 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D604FF7C(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v89 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v73 - v17;
  v19 = sub_1D72585BC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v94 = &v73 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v73 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v95 = &v73 - v34;
  if (qword_1EC87D698 != -1)
  {
    swift_once();
  }

  v35 = qword_1EC885608;
  sub_1D604F8FC(&qword_1EC882C38, v33, type metadata accessor for DebugNewsroomService);
  v88 = v35;
  v96 = v1;
  sub_1D725964C();
  v36 = v99;
  v37 = v100;

  v38 = HIBYTE(v37) & 0xF;
  if ((v37 & 0x2000000000000000) == 0)
  {
    v38 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {
    goto LABEL_16;
  }

  if (qword_1EC87D6A0 != -1)
  {
    swift_once();
  }

  v84 = qword_1EC885610;
  sub_1D725964C();
  v39 = v99;
  v40 = v100;

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v80 = v23;
    if (qword_1EC87D690 != -1)
    {
      swift_once();
    }

    v83 = v0;
    sub_1D725964C();
    v97 = v98;
    v42 = v94;
    sub_1D5E4ADC8(v94);
    sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
    v99 = sub_1D72644BC();
    v100 = v43;
    v44 = v20;
    v45 = v20 + 8;
    v46 = *(v20 + 8);
    v46(v42, v19);
    MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
    sub_1D725855C();

    v81 = *(v44 + 48);
    v82 = v44 + 48;
    result = v81(v18, 1, v19);
    v91 = v19;
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v48 = *(v44 + 32);
      v49 = v91;
      v79 = v44 + 32;
      v78 = v48;
      v48(v30, v18, v91);
      v50 = v95;
      sub_1D725849C();
      v46(v30, v49);
      v51 = v93;
      v52 = swift_allocBox();
      v54 = v53;
      sub_1D7257BCC();
      v55 = v92;
      if ((*(v92 + 48))(v11, 1, v51) == 1)
      {
        sub_1D5BFC5B8(v11, sub_1D604FF7C);
        swift_deallocBox();
        type metadata accessor for DebugNewsroomServiceError();
        sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
        swift_allocError();
        v56 = v91;
        (*(v44 + 16))(v57, v50, v91);
        swift_storeEnumTagMultiPayload();
        sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v58 = sub_1D725BAFC();
        v46(v50, v56);
      }

      else
      {
        v75 = v46;
        v76 = v52;
        v74 = v44;
        v77 = v45;
        (*(v55 + 32))(v54, v11, v51);
        sub_1D5B5BEC0(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
        sub_1D7257B5C();
        *(swift_allocObject() + 16) = xmmword_1D7270C10;
        v59 = v83;
        sub_1D725964C();
        sub_1D7257B2C();

        sub_1D725964C();
        sub_1D7257B2C();

        sub_1D7257B7C();
        v60 = *(v55 + 16);
        v61 = v90;
        v60(v90, v54, v51);
        v62 = v89;
        sub_1D7257BDC();
        (*(v55 + 8))(v61, v51);
        if (v81(v62, 1, v91) == 1)
        {
          sub_1D5BFC5B8(v62, sub_1D5B4D3E0);
          type metadata accessor for DebugNewsroomServiceError();
          sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
          swift_allocError();
          v60(v63, v54, v51);
          swift_storeEnumTagMultiPayload();
          sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v58 = sub_1D725BAFC();
          v75(v95, v91);
        }

        else
        {
          v64 = v80;
          v65 = v91;
          v78(v80, v62, v91);
          sub_1D72577EC();
          v66 = swift_allocBox();
          (*(v74 + 16))(v94, v64, v65);
          sub_1D72577AC();
          sub_1D725774C();
          v67 = [objc_opt_self() sharedHTTPCookieStorage];
          v68 = v85;
          sub_1D72587BC();
          v69 = sub_1D725881C();
          (*(v86 + 8))(v68, v87);
          [v67 removeCookiesSinceDate_];

          MEMORY[0x1EEE9AC00](v70, v71);
          *(&v73 - 4) = v59;
          *(&v73 - 3) = v66;
          *(&v73 - 2) = v76;
          sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v58 = sub_1D725BBAC();
          v72 = v75;
          v75(v64, v65);
          v72(v95, v65);
        }
      }

      return v58;
    }
  }

  else
  {
LABEL_16:
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    sub_1D60502C0(0, &qword_1EDF3B8E0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1D725BAFC();
  }

  return result;
}

void sub_1D6049E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a3;
  v12 = sub_1D72577EC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  v18 = swift_projectBox();

  v19 = sub_1D6049044();
  swift_beginAccess();
  (*(v13 + 16))(v16, v18, v12);
  v20 = sub_1D725776C();
  (*(v13 + 8))(v16, v12);
  v21 = swift_allocObject();
  v21[2] = v24;
  v21[3] = a4;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = sub_1D5DF743C;
  v21[7] = v17;
  aBlock[4] = sub_1D604FFBC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = &block_descriptor_23;
  v22 = _Block_copy(aBlock);

  v23 = [v19 dataTaskWithRequest:v20 completionHandler:v22];
  _Block_release(v22);

  [v23 resume];
}

void sub_1D604A080(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10)
{
  v78 = a2;
  v79 = a3;
  v76 = a10;
  v77 = a1;
  v80 = a9;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7257C7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D72577EC();
  v23 = swift_projectBox();
  v24 = swift_projectBox();
  if (a4)
  {
    v25 = a4;
    a5(a4);
    v26 = a4;

LABEL_4:

    return;
  }

  v73 = v22;
  v74 = a6;
  v68 = v21;
  v69 = v18;
  v70 = v17;
  v71 = v16;
  v28 = v77;
  v27 = v78;
  v75 = a5;
  v72 = v24;
  v29 = v79;
  if (!v79 || (objc_opt_self(), (v30 = swift_dynamicCastObjCClass()) == 0))
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    v56 = swift_allocError();
    v58 = v57;
    sub_1D604F9B8();
    v60 = *(v59 + 64);
    *v58 = v29;
    *(v58 + 1) = v28;
    *(v58 + 2) = v27;
    swift_beginAccess();
    (*(*(v73 - 8) + 16))(&v58[v60], v23);
    swift_storeEnumTagMultiPayload();
    v61 = v29;
    sub_1D5F13DE4(v28, v27);
    v75(v56);

    return;
  }

  v31 = v30;
  v79 = v29;
  v32 = [v31 allHeaderFields];
  v33 = sub_1D7261D3C();

  v34 = sub_1D71BCCC4(v33);

  if (!v34)
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    v62 = swift_allocError();
    v64 = v63;
    v65 = [v31 allHeaderFields];
    v66 = sub_1D7261D3C();

    *v64 = v66;
    swift_storeEnumTagMultiPayload();
    v75(v62);

    v26 = v79;

    goto LABEL_4;
  }

  v35 = sub_1D7261D2C();
  v36 = v72;
  swift_beginAccess();
  v37 = v68;
  v38 = v69;
  v39 = v36;
  v40 = v70;
  (*(v69 + 16))(v68, v39, v70);
  v41 = v71;
  sub_1D7257BDC();
  (*(v38 + 8))(v37, v40);
  v42 = sub_1D72585BC();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    goto LABEL_25;
  }

  v44 = objc_opt_self();
  v45 = sub_1D725844C();
  (*(v43 + 8))(v41, v42);
  v46 = [v44 cookiesWithResponseHeaderFields:v35 forURL:v45];

  sub_1D5B5A498(0, &qword_1EC882C00);
  v47 = sub_1D726267C();

  if (v47 >> 62)
  {
    v48 = sub_1D7263BFC();
    v49 = v80;
    if (v48)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v80;
    if (v48)
    {
LABEL_11:
      v50 = objc_opt_self();
      if (v48 >= 1)
      {
        v51 = v50;
        v52 = 0;
        do
        {
          if ((v47 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x1DA6FB460](v52, v47);
          }

          else
          {
            v53 = *(v47 + 8 * v52 + 32);
          }

          v54 = v53;
          ++v52;
          v55 = [v51 sharedHTTPCookieStorage];
          [v55 setCookie_];

          v49 = v80;
        }

        while (v48 != v52);
        goto LABEL_22;
      }

      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }
  }

LABEL_22:

  v49(v67);
}

uint64_t sub_1D604A700(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v73 = *v3;
  v7 = sub_1D72577EC();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = v9;
  v69 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v70 = &v63 - v12;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v74 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v66 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v67 = &v63 - v26;
  v27 = sub_1D725895C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60502C0(0, &qword_1EC882C70, &type metadata for MIMEPart, MEMORY[0x1E69E6F90]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D7270C10;

  v33 = sub_1D6011D6C(a1, a2);
  *(v32 + 32) = 0x7461642D6D726F66;
  *(v32 + 40) = 0xE900000000000061;
  *(v32 + 48) = xmmword_1D72924A0;
  *(v32 + 64) = 0u;
  *(v32 + 80) = 0u;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  v36 = *a3;
  v35 = a3[1];
  v37 = a3[4];
  v38 = a3[5];
  v39 = a3[2];
  v40 = a3[3];
  *(v32 + 112) = 0x7461642D6D726F66;
  *(v32 + 120) = 0xE900000000000061;
  *(v32 + 128) = xmmword_1D72924B0;
  *(v32 + 144) = v36;
  *(v32 + 152) = v35;
  *(v32 + 160) = v37;
  *(v32 + 168) = v38;
  *(v32 + 176) = v39;
  *(v32 + 184) = v40;
  v77 = 0x646565467377654ELL;
  v78 = 0xE90000000000002DLL;

  sub_1D5E3E824(v39, v40);
  sub_1D725894C();
  v41 = sub_1D725893C();
  v43 = v42;
  (*(v28 + 8))(v31, v27);
  MEMORY[0x1DA6F9910](v41, v43);

  v44 = v78;
  v65 = v77;
  v45 = qword_1EC87D690;

  if (v45 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v46, type metadata accessor for DebugNewsroomService);
  sub_1D725964C();
  v75 = v76;
  sub_1D5E4ADC8(v20);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
  v77 = sub_1D72644BC();
  v78 = v47;
  v48 = *(v17 + 8);
  v48(v20, v16);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v49 = v74;
  sub_1D725855C();

  result = (*(v17 + 48))(v49, 1, v16);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v51 = v66;
    (*(v17 + 32))(v66, v49, v16);
    v52 = v16;
    v53 = v67;
    sub_1D725849C();
    v64 = v52;
    v73 = v48;
    v48(v51, v52);
    (*(v17 + 16))(v20, v53, v52);
    v54 = v70;
    sub_1D72577AC();
    sub_1D725774C();
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1D7263D4C();

    v77 = 0xD00000000000001ELL;
    v78 = 0x80000001D73C6940;
    v55 = v65;
    MEMORY[0x1DA6F9910](v65, v44);

    sub_1D72577DC();

    sub_1D604AEA0(v55, v44, v32);

    sub_1D72577CC();
    sub_1D604E2FC(v54);
    v57 = v71;
    v56 = v72;
    v58 = v69;
    (*(v71 + 16))(v69, v54, v72);
    v59 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v60 = swift_allocObject();
    (*(v57 + 32))(v60 + v59, v58, v56);
    v61 = sub_1D725B92C();
    v62 = sub_1D725BA8C();

    (*(v57 + 8))(v54, v56);
    v73(v53, v64);
    return v62;
  }

  return result;
}

uint64_t sub_1D604AEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA6F9910]();
  MEMORY[0x1DA6F9910](2573, 0xE200000000000000);
  v4 = sub_1D6011D6C(11565, 0xE200000000000000);
  v34 = v5;
  v35 = v4;
  v40 = xmmword_1D728EF50;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 3);
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *v7;
      v12 = v7[2];
      v13 = v7[4];
      v36 = v7[1];
      v37 = v7[3];
      v14 = v7[5];
      v15 = v7[6];

      v38 = v15;
      sub_1D5E3E824(v14, v15);
      sub_1D72586AC();
      sub_1D7263D4C();

      v39[0] = 0xD000000000000015;
      v39[1] = 0x80000001D73C6960;

      MEMORY[0x1DA6F9910](v8, v9);

      v16 = sub_1D6011D6C(0xD000000000000015, 0x80000001D73C6960);
      v18 = v17;
      sub_1D72586AC();
      sub_1D5B952F8(v16, v18);
      if (v11)
      {
        strcpy(v39, "; name=");
        BYTE1(v39[1]) = 0;
        WORD1(v39[1]) = 0;
        HIDWORD(v39[1]) = -402653184;

        MEMORY[0x1DA6F9910](v10, v11);

        MEMORY[0x1DA6F9910](34, 0xE100000000000000);
        v19 = sub_1D6011D6C(v39[0], v39[1]);
        v21 = v20;
        sub_1D72586AC();
        sub_1D5B952F8(v19, v21);
      }

      if (v12)
      {
        strcpy(v39, "; filename=");
        BYTE5(v39[1]) = 0;
        HIWORD(v39[1]) = -5120;

        MEMORY[0x1DA6F9910](v36, v12);

        MEMORY[0x1DA6F9910](34, 0xE100000000000000);
        v22 = sub_1D6011D6C(v39[0], v39[1]);
        v24 = v23;
        sub_1D72586AC();
        sub_1D5B952F8(v22, v24);
      }

      if (qword_1EC87DBE0 != -1)
      {
        swift_once();
      }

      sub_1D72586AC();
      if (v13)
      {

        sub_1D7263D4C();

        strcpy(v39, "Content-Type: ");
        HIBYTE(v39[1]) = -18;
        MEMORY[0x1DA6F9910](v37, v13);

        v25 = sub_1D6011D6C(v39[0], v39[1]);
        v27 = v26;
        sub_1D72586AC();
        sub_1D5B952F8(v25, v27);
        sub_1D72586AC();
      }

      sub_1D72586AC();
      sub_1D72586AC();
      sub_1D72586AC();

      sub_1D5B952F8(v14, v38);
      v7 += 10;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](11565, 0xE200000000000000);
  v28 = sub_1D6011D6C(11565, 0xE200000000000000);
  v30 = v29;
  sub_1D72586AC();
  sub_1D5B952F8(v35, v34);
  sub_1D5B952F8(v28, v30);
  return v40;
}

uint64_t sub_1D604B2A4(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v35 = &v33 - v19;
  v20 = sub_1D72577EC();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v22, type metadata accessor for DebugNewsroomService);
  sub_1D725964C();
  v34 = v2;
  v25 = v42;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1D7263D4C();

  v40 = 0xD00000000000001ALL;
  v41 = 0x80000001D73C68C0;
  MEMORY[0x1DA6F9910](a1, v38);
  v38 = v40;
  v39 = v25;
  sub_1D5E4ADC8(v12);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
  v40 = sub_1D72644BC();
  v41 = v26;
  v27 = *(v9 + 8);
  v27(v12, v8);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  sub_1D725855C();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_1D725849C();

    v27(v16, v8);
    sub_1D72577AC();
    v29 = sub_1D725774C();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v24;
    sub_1D725BDCC();
    v31 = sub_1D725B92C();
    sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
    v32 = sub_1D725BA8C();

    (*(v36 + 8))(v24, v37);
    return v32;
  }

  return result;
}

uint64_t sub_1D604B77C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v35 = &v33 - v19;
  v20 = sub_1D72577EC();
  v36 = *(v20 - 8);
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v22, type metadata accessor for DebugNewsroomService);
  sub_1D725964C();
  v34 = v2;
  v25 = v42;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1D7263D4C();

  v40 = 0xD000000000000019;
  v41 = 0x80000001D73C68E0;
  MEMORY[0x1DA6F9910](a1, v38);
  v38 = v40;
  v39 = v25;
  sub_1D5E4ADC8(v12);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
  v40 = sub_1D72644BC();
  v41 = v26;
  v27 = *(v9 + 8);
  v27(v12, v8);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  sub_1D725855C();

  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    sub_1D725849C();

    v27(v16, v8);
    sub_1D72577AC();
    v29 = sub_1D725774C();
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v33 - 2) = v34;
    *(&v33 - 1) = v24;
    sub_1D725BDCC();
    v31 = sub_1D725B92C();
    sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
    v32 = sub_1D725BA8C();

    (*(v36 + 8))(v24, v37);
    return v32;
  }

  return result;
}

uint64_t sub_1D604BC54(uint64_t a1, char *a2)
{
  v56 = a2;
  v3 = v2;
  v55 = *v3;
  v5 = sub_1D72577EC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  v26 = v57;
  v27 = sub_1D604C220();
  if (v26)
  {
    return a1;
  }

  v56 = v8;
  v57 = a1;
  v45 = v21;
  v46 = v25;
  v50 = v17;
  v51 = v12;
  v52 = v14;
  v47 = v27;
  v48 = v28;
  v49 = 0;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v28, type metadata accessor for DebugNewsroomService);
  v55 = v3;
  sub_1D725964C();
  v29 = v61;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D7263D4C();

  v58 = 0xD00000000000001ALL;
  v59 = 0x80000001D73C68C0;
  MEMORY[0x1DA6F9910](*v57, v57[1]);
  v44 = v58;
  v60 = v29;
  v30 = v50;
  sub_1D5E4ADC8(v50);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
  v31 = v13;
  v58 = sub_1D72644BC();
  v59 = v32;
  v33 = v52;
  v57 = *(v52 + 8);
  (v57)(v30, v13);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v34 = v51;
  sub_1D725855C();

  result = (*(v33 + 48))(v34, 1, v31);
  v36 = v56;
  if (result != 1)
  {
    v37 = v45;
    (*(v33 + 32))(v45, v34, v31);
    v38 = v46;
    sub_1D725849C();

    (v57)(v37, v31);
    (*(v33 + 16))(v30, v38, v31);
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    v39 = v47;
    v40 = v48;
    sub_1D5E3E824(v47, v48);
    v41 = sub_1D72577CC();
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v44 - 2) = v55;
    *(&v44 - 1) = v36;
    sub_1D725BDCC();
    v43 = sub_1D725B92C();
    sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
    a1 = sub_1D725BA8C();

    sub_1D5B952F8(v39, v40);
    (v57)(v38, v31);
    (*(v53 + 8))(v36, v54);
    return a1;
  }

  __break(1u);
  return result;
}

id sub_1D604C220()
{
  v2 = v0;
  v23[4] = *MEMORY[0x1E69E9840];
  sub_1D72578EC();
  swift_allocObject();
  v3 = sub_1D72578DC();
  type metadata accessor for DebugNewsroomLayoutData();
  sub_1D604F8FC(&qword_1EC882C68, 255, type metadata accessor for DebugNewsroomLayoutData);
  v4 = sub_1D72578BC();
  v6 = v5;

  if (!v1)
  {
    v7 = objc_opt_self();
    v8 = sub_1D725865C();
    v23[0] = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v23];

    if (v9)
    {
      v10 = v23[0];
      sub_1D7263AEC();
      swift_unknownObjectRelease();
      sub_1D604FD34();
      if (swift_dynamicCast())
      {
        sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
        v12 = *(v2 + *(v11 + 40));
        if (v12[2])
        {
          v13 = sub_1D5B69D90(0xD000000000000017, 0x80000001D73C6900);
          if (v14)
          {
            v23[0] = *(v12[7] + 8 * v13);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v22;
              sub_1D6050034(v22, sub_1D604FFEC, 0, isUniquelyReferenced_nonNull_native, v23);

              v16 = sub_1D7261D2C();

              v17 = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v12;
              sub_1D6D79510(v16, 0xD000000000000017, 0x80000001D73C6900, v17);
              v18 = sub_1D7261D2C();

              v23[0] = 0;
              v19 = [v7 dataWithJSONObject:v18 options:0 error:v23];

              v20 = v23[0];
              if (v19)
              {
                v3 = sub_1D725867C();
                sub_1D5B952F8(v4, v6);

                return v3;
              }

              v3 = v20;
              goto LABEL_10;
            }
          }
        }
      }

      v3 = type metadata accessor for DebugNewsroomServiceError();
      sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    v3 = v23[0];
LABEL_10:
    sub_1D725829C();

LABEL_13:
    swift_willThrow();
    sub_1D5B952F8(v4, v6);
  }

  return v3;
}

id sub_1D604C660()
{
  v2 = v0;
  v23[4] = *MEMORY[0x1E69E9840];
  sub_1D72578EC();
  swift_allocObject();
  v3 = sub_1D72578DC();
  type metadata accessor for DebugNewsroomThemeData();
  sub_1D604F8FC(&qword_1EC882C78, 255, type metadata accessor for DebugNewsroomThemeData);
  v4 = sub_1D72578BC();
  v6 = v5;

  if (!v1)
  {
    v7 = objc_opt_self();
    v8 = sub_1D725865C();
    v23[0] = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:v23];

    if (v9)
    {
      v10 = v23[0];
      sub_1D7263AEC();
      swift_unknownObjectRelease();
      sub_1D604FD34();
      if (swift_dynamicCast())
      {
        sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
        v12 = *(v2 + *(v11 + 40));
        if (v12[2])
        {
          v13 = sub_1D5B69D90(0xD000000000000016, 0x80000001D73C6980);
          if (v14)
          {
            v23[0] = *(v12[7] + 8 * v13);
            swift_unknownObjectRetain();
            if (swift_dynamicCast())
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v22;
              sub_1D6050034(v22, sub_1D604FFEC, 0, isUniquelyReferenced_nonNull_native, v23);

              v16 = sub_1D7261D2C();

              v17 = swift_isUniquelyReferenced_nonNull_native();
              v23[0] = v12;
              sub_1D6D79510(v16, 0xD000000000000016, 0x80000001D73C6980, v17);
              v18 = sub_1D7261D2C();

              v23[0] = 0;
              v19 = [v7 dataWithJSONObject:v18 options:0 error:v23];

              v20 = v23[0];
              if (v19)
              {
                v3 = sub_1D725867C();
                sub_1D5B952F8(v4, v6);

                return v3;
              }

              v3 = v20;
              goto LABEL_10;
            }
          }
        }
      }

      v3 = type metadata accessor for DebugNewsroomServiceError();
      sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    v3 = v23[0];
LABEL_10:
    sub_1D725829C();

LABEL_13:
    swift_willThrow();
    sub_1D5B952F8(v4, v6);
  }

  return v3;
}

uint64_t sub_1D604CAA0(uint64_t a1, char *a2)
{
  v56 = a2;
  v3 = v2;
  v55 = *v3;
  v5 = sub_1D72577EC();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v44 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v44 - v24;
  v26 = v57;
  v27 = sub_1D604C660();
  if (v26)
  {
    return a1;
  }

  v56 = v8;
  v57 = a1;
  v45 = v21;
  v46 = v25;
  v50 = v17;
  v51 = v12;
  v52 = v14;
  v47 = v27;
  v48 = v28;
  v49 = 0;
  if (qword_1EC87D690 != -1)
  {
    swift_once();
  }

  sub_1D604F8FC(&qword_1EC882C38, v28, type metadata accessor for DebugNewsroomService);
  v55 = v3;
  sub_1D725964C();
  v29 = v61;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1D7263D4C();

  v58 = 0xD000000000000019;
  v59 = 0x80000001D73C68E0;
  MEMORY[0x1DA6F9910](*v57, v57[1]);
  v44 = v58;
  v60 = v29;
  v30 = v50;
  sub_1D5E4ADC8(v50);
  sub_1D604F8FC(&qword_1EDF18AC0, 255, MEMORY[0x1E6968FB0]);
  v31 = v13;
  v58 = sub_1D72644BC();
  v59 = v32;
  v33 = v52;
  v57 = *(v52 + 8);
  (v57)(v30, v13);
  MEMORY[0x1DA6F9910](1768972591, 0xE400000000000000);
  v34 = v51;
  sub_1D725855C();

  result = (*(v33 + 48))(v34, 1, v31);
  v36 = v56;
  if (result != 1)
  {
    v37 = v45;
    (*(v33 + 32))(v45, v34, v31);
    v38 = v46;
    sub_1D725849C();

    (v57)(v37, v31);
    (*(v33 + 16))(v30, v38, v31);
    sub_1D72577AC();
    sub_1D725774C();
    sub_1D72577DC();
    v39 = v47;
    v40 = v48;
    sub_1D5E3E824(v47, v48);
    v41 = sub_1D72577CC();
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v44 - 2) = v55;
    *(&v44 - 1) = v36;
    sub_1D725BDCC();
    v43 = sub_1D725B92C();
    sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
    a1 = sub_1D725BA8C();

    sub_1D5B952F8(v39, v40);
    (v57)(v38, v31);
    (*(v53 + 8))(v36, v54);
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D604D06C(uint64_t a1, void *a2)
{
  v4 = sub_1D72577EC();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D72585BC();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = &v63 - v14;
  v15 = sub_1D725BD1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v63 - v32;
  v34 = *(v16 + 16);
  v71 = a1;
  v34(&v63 - v32, a1, v15, v31);
  (*(v16 + 56))(v33, 0, 1, v15);
  v35 = *(type metadata accessor for DebugNewsroomLayoutData() + 52);
  v36 = *(v21 + 56);
  sub_1D604FD98(v33, v24, sub_1D5B5C268);
  sub_1D604FD98(a2 + v35, &v24[v36], sub_1D5B5C268);
  v37 = *(v16 + 48);
  if (v37(v24, 1, v15) != 1)
  {
    sub_1D604FD98(v24, v28, sub_1D5B5C268);
    if (v37(&v24[v36], 1, v15) != 1)
    {
      (*(v16 + 32))(v19, &v24[v36], v15);
      sub_1D604F8FC(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38]);
      v38 = sub_1D7261FBC();
      v39 = *(v16 + 8);
      v39(v19, v15);
      sub_1D5BFC5B8(v33, sub_1D5B5C268);
      v39(v28, v15);
      sub_1D5BFC5B8(v24, sub_1D5B5C268);
      if ((v38 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1D5BFC5B8(v33, sub_1D5B5C268);
    (*(v16 + 8))(v28, v15);
LABEL_6:
    sub_1D5BFC5B8(v24, sub_1D5D3A7E0);
    goto LABEL_10;
  }

  sub_1D5BFC5B8(v33, sub_1D5B5C268);
  if (v37(&v24[v36], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5BFC5B8(v24, sub_1D5B5C268);
LABEL_8:
  v40 = a2[8];
  if (v40)
  {
    v41 = a2[7];
    sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;

    sub_1D725BABC();
    v43 = sub_1D725B92C();
    v44 = sub_1D725BB6C();

    return v44;
  }

LABEL_10:
  v46 = a2[13];
  if (v46)
  {
    v47 = sub_1D725BC9C();
    if (*(v46 + 16))
    {
      v49 = sub_1D5B69D90(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = v66;
        v53 = *(v46 + 56) + *(v66 + 72) * v49;
        v54 = *(v66 + 16);
        v55 = v63;
        v56 = v68;
        v54(v63, v53, v68);
        v57 = v65;
        (*(v52 + 32))(v65, v55, v56);
        v54(v64, v57, v56);
        v58 = v67;
        sub_1D72577AC();
        sub_1D725774C();
        sub_1D604E2FC(v58);
        v59 = sub_1D725B92C();
        sub_1D604F944(0);
        sub_1D725BA8C();

        v60 = sub_1D725B92C();
        v61 = sub_1D725BB6C();

        (*(v69 + 8))(v58, v70);
        (*(v52 + 8))(v57, v56);
        return v61;
      }
    }

    else
    {
    }
  }

  type metadata accessor for DebugNewsroomServiceError();
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
  swift_allocError();
  sub_1D604F88C(a2, v62, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer, sub_1D604FC94);
  swift_storeEnumTagMultiPayload();
  sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D604D8F8(uint64_t a1, void *a2)
{
  v4 = sub_1D72577EC();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v67 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D72585BC();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68, v7);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v63 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = &v63 - v14;
  v15 = sub_1D725BD1C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0();
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v63 - v32;
  v34 = *(v16 + 16);
  v71 = a1;
  v34(&v63 - v32, a1, v15, v31);
  (*(v16 + 56))(v33, 0, 1, v15);
  v35 = *(type metadata accessor for DebugNewsroomThemeData() + 48);
  v36 = *(v21 + 56);
  sub_1D604FD98(v33, v24, sub_1D5B5C268);
  sub_1D604FD98(a2 + v35, &v24[v36], sub_1D5B5C268);
  v37 = *(v16 + 48);
  if (v37(v24, 1, v15) != 1)
  {
    sub_1D604FD98(v24, v28, sub_1D5B5C268);
    if (v37(&v24[v36], 1, v15) != 1)
    {
      (*(v16 + 32))(v19, &v24[v36], v15);
      sub_1D604F8FC(&qword_1EDF178B8, 255, MEMORY[0x1E69D6B38]);
      v38 = sub_1D7261FBC();
      v39 = *(v16 + 8);
      v39(v19, v15);
      sub_1D5BFC5B8(v33, sub_1D5B5C268);
      v39(v28, v15);
      sub_1D5BFC5B8(v24, sub_1D5B5C268);
      if ((v38 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1D5BFC5B8(v33, sub_1D5B5C268);
    (*(v16 + 8))(v28, v15);
LABEL_6:
    sub_1D5BFC5B8(v24, sub_1D5D3A7E0);
    goto LABEL_10;
  }

  sub_1D5BFC5B8(v33, sub_1D5B5C268);
  if (v37(&v24[v36], 1, v15) != 1)
  {
    goto LABEL_6;
  }

  sub_1D5BFC5B8(v24, sub_1D5B5C268);
LABEL_8:
  v40 = a2[6];
  if (v40)
  {
    v41 = a2[5];
    sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;

    sub_1D725BABC();
    v43 = sub_1D725B92C();
    v44 = sub_1D725BB6C();

    return v44;
  }

LABEL_10:
  v46 = a2[12];
  if (v46)
  {
    v47 = sub_1D725BC9C();
    if (*(v46 + 16))
    {
      v49 = sub_1D5B69D90(v47, v48);
      v51 = v50;

      if (v51)
      {
        v52 = v66;
        v53 = *(v46 + 56) + *(v66 + 72) * v49;
        v54 = *(v66 + 16);
        v55 = v63;
        v56 = v68;
        v54(v63, v53, v68);
        v57 = v65;
        (*(v52 + 32))(v65, v55, v56);
        v54(v64, v57, v56);
        v58 = v67;
        sub_1D72577AC();
        sub_1D725774C();
        sub_1D604E2FC(v58);
        v59 = sub_1D725B92C();
        sub_1D604F944(0);
        sub_1D725BA8C();

        v60 = sub_1D725B92C();
        v61 = sub_1D725BB6C();

        (*(v69 + 8))(v58, v70);
        (*(v52 + 8))(v57, v56);
        return v61;
      }
    }

    else
    {
    }
  }

  type metadata accessor for DebugNewsroomServiceError();
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
  swift_allocError();
  sub_1D604F88C(a2, v62, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer, sub_1D604FE18);
  swift_storeEnumTagMultiPayload();
  sub_1D5B5BEC0(0, &qword_1EC882BF0, sub_1D604F944, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BAFC();
}

uint64_t sub_1D604E184(uint64_t a1, unint64_t a2)
{
  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatFile();

  v5 = sub_1D6011D6C(a1, a2);
  v7 = v6;
  sub_1D604F8FC(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
  sub_1D725A69C();
  sub_1D5B952F8(v5, v7);

  if (!v2)
  {
    sub_1D604F944(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

id sub_1D604E2A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  sub_1D604F944(0);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1D604E2FC(uint64_t a1)
{
  v2 = sub_1D72577EC();
  swift_allocBox();
  (*(*(v2 - 8) + 16))(v3, a1, v2);
  v4 = [objc_opt_self() sharedHTTPCookieStorage];
  v5 = [v4 cookies];

  if (v5)
  {
    sub_1D5B5A498(0, &qword_1EC882C00);
    sub_1D726267C();
  }

  v6 = objc_opt_self();
  sub_1D5B5A498(0, &qword_1EC882C00);
  v7 = sub_1D726265C();

  v8 = [v6 requestHeaderFieldsWithCookies_];

  sub_1D7261D3C();
  v9 = sub_1D725778C();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1D60502C0(0, &qword_1EC882C08, MEMORY[0x1E6969080], MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v11 = sub_1D725BBAC();

  return v11;
}

uint64_t sub_1D604E51C()
{
  type metadata accessor for FormatJSONDecoder();
  swift_allocObject();
  sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatFile();
  sub_1D604F8FC(&qword_1EDF34750, 255, type metadata accessor for FormatFile);
  sub_1D725A69C();

  if (!v0)
  {
    sub_1D604F944(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_1D604E610@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D72620CC();
  result = sub_1D726209C();
  if (v7)
  {
    *a2 = result;
    a2[1] = v7;
  }

  else
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    swift_allocError();
    v9 = v8;
    v10 = sub_1D72577EC();
    (*(*(v10 - 8) + 16))(v9, a1, v10);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1D604E774(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D72577EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  sub_1D604E2FC(a2);
  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v9 = sub_1D725B92C();
  v10 = sub_1D725BA8C();

  return v10;
}

uint64_t sub_1D604E8E8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[4] = *MEMORY[0x1E69E9840];
  sub_1D604FC74(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1D6011D6C(a1, a2);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = sub_1D725865C();
  v25[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v25];

  if (!v16)
  {
    v20 = v25[0];
    sub_1D725829C();

LABEL_7:
    swift_willThrow();
    return sub_1D5B952F8(v11, v13);
  }

  v17 = v25[0];
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  sub_1D604FD34();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  v18 = v24;
  sub_1D725A6CC();
  swift_allocObject();
  sub_1D725A6BC();
  sub_1D604F8FC(&qword_1EC882C50, 255, sub_1D604FC74);
  sub_1D725A69C();
  sub_1D5B952F8(v11, v13);

  if (v3)
  {
  }

  sub_1D604FC94(0, &qword_1EC880FD8, type metadata accessor for DebugNewsroomContainer);
  v22 = v21;
  v23 = *(v21 + 36);
  sub_1D604FF14(v10, a3 + v23, sub_1D604FC74);
  result = sub_1D604FD98(a3 + v23, a3, type metadata accessor for DebugNewsroomLayoutData);
  *(a3 + *(v22 + 40)) = v18;
  return result;
}

uint64_t sub_1D604EC2C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[4] = *MEMORY[0x1E69E9840];
  sub_1D604FEF4(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  v11 = sub_1D6011D6C(a1, a2);
  v13 = v12;
  v14 = objc_opt_self();
  v15 = sub_1D725865C();
  v25[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:v25];

  if (!v16)
  {
    v20 = v25[0];
    sub_1D725829C();

LABEL_7:
    swift_willThrow();
    return sub_1D5B952F8(v11, v13);
  }

  v17 = v25[0];
  sub_1D7263AEC();
  swift_unknownObjectRelease();
  sub_1D604FD34();
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  v18 = v24;
  sub_1D725A6CC();
  swift_allocObject();
  sub_1D725A6BC();
  sub_1D604F8FC(&qword_1EC882C60, 255, sub_1D604FEF4);
  sub_1D725A69C();
  sub_1D5B952F8(v11, v13);

  if (v3)
  {
  }

  sub_1D604FE18(0, &qword_1EC880FE8, type metadata accessor for DebugNewsroomContainer);
  v22 = v21;
  v23 = *(v21 + 36);
  sub_1D604FF14(v10, a3 + v23, sub_1D604FEF4);
  result = sub_1D604FD98(a3 + v23, a3, type metadata accessor for DebugNewsroomThemeData);
  *(a3 + *(v22 + 40)) = v18;
  return result;
}

void sub_1D604EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D72577EC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = swift_projectBox();

  v18 = sub_1D6049044();
  swift_beginAccess();
  (*(v12 + 16))(v15, v17, v11);
  v19 = sub_1D725776C();
  (*(v12 + 8))(v15, v11);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a6;
  v20[5] = sub_1D604F980;
  v20[6] = v16;
  aBlock[4] = sub_1D604F988;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D60B572C;
  aBlock[3] = &block_descriptor_16;
  v21 = _Block_copy(aBlock);

  v22 = [v18 dataTaskWithRequest:v19 completionHandler:v21];
  _Block_release(v21);

  [v22 resume];
}

void sub_1D604F1CC(uint64_t a1, unint64_t a2, void *a3, void *a4, void (*a5)(void *), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, unint64_t))
{
  v13 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v15 = sub_1D72577EC();
  v16 = swift_projectBox();
  if (a4)
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    v17 = swift_allocError();
    v19 = v18;
    sub_1D604FBC4();
    v21 = *(v20 + 48);
    *v19 = a4;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(&v19[v21], v16, v15);
    swift_storeEnumTagMultiPayload();
    v22 = a4;
    v23 = a4;
    a5(v17);

LABEL_9:
    return;
  }

  v49 = v15;
  if (!a3 || (objc_opt_self(), (v24 = swift_dynamicCastObjCClass()) == 0))
  {
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    a4 = swift_allocError();
    v30 = v29;
    sub_1D604F9B8();
    v32 = *(v31 + 64);
    *v30 = a3;
    *(v30 + 1) = a1;
    *(v30 + 2) = a2;
    swift_beginAccess();
    (*(*(v49 - 8) + 16))(&v30[v32], v16);
    swift_storeEnumTagMultiPayload();
    v33 = a3;
    sub_1D5F13DE4(a1, a2);
    a5(a4);
    goto LABEL_9;
  }

  v25 = v24;
  v48 = a3;
  if ([v25 statusCode] == 200)
  {
    if (a2 >> 60 != 15)
    {
      sub_1D5E3E824(a1, a2);
      a8(a1, a2);
      sub_1D5B952E4(a1, a2);

      goto LABEL_19;
    }

    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    v26 = swift_allocError();
    v28 = v27;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(v28, v16);
    swift_storeEnumTagMultiPayload();
    a5(v26);
    goto LABEL_18;
  }

  if (a2 >> 60 == 15)
  {
LABEL_17:
    type metadata accessor for DebugNewsroomServiceError();
    sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
    v26 = swift_allocError();
    v43 = v42;
    sub_1D604FAD0();
    v45 = *(v44 + 64);
    v46 = [v25 statusCode];
    *(v43 + 1) = 0;
    *(v43 + 2) = 0;
    *v43 = v46;
    swift_beginAccess();
    (*(*(v15 - 8) + 16))(&v43[v45], v16, v15);
    swift_storeEnumTagMultiPayload();
    a5(v26);
LABEL_18:

    goto LABEL_19;
  }

  sub_1D5E3E824(a1, a2);
  sub_1D72620CC();
  sub_1D604FB70();
  v34 = sub_1D72620AC();
  if (!v35)
  {
    sub_1D5B952E4(a1, a2);
    goto LABEL_17;
  }

  v36 = v35;
  v47 = v34;
  type metadata accessor for DebugNewsroomServiceError();
  sub_1D604F8FC(&qword_1EC882BE8, 255, type metadata accessor for DebugNewsroomServiceError);
  v37 = swift_allocError();
  v39 = v38;
  sub_1D604FAD0();
  v41 = *(v40 + 64);
  *v39 = [v25 &selRef_cancelAllOperations];
  *(v39 + 1) = v47;
  *(v39 + 2) = v36;
  swift_beginAccess();
  (*(*(v49 - 8) + 16))(&v39[v41], v16, v49);
  swift_storeEnumTagMultiPayload();
  a5(v37);

  sub_1D5B952E4(a1, a2);
LABEL_19:
}

uint64_t sub_1D604F88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D604F8FC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1D604F9B8()
{
  if (!qword_1EC882C10)
  {
    sub_1D604FA68();
    sub_1D60502C0(255, &qword_1EDF18A90, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
    sub_1D72577EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC882C10);
    }
  }
}

void sub_1D604FA68()
{
  if (!qword_1EC882C18)
  {
    sub_1D5B5A498(255, &unk_1EC881750);
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882C18);
    }
  }
}

void sub_1D604FAD0()
{
  if (!qword_1EC882C20)
  {
    sub_1D60502C0(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D72577EC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC882C20);
    }
  }
}

unint64_t sub_1D604FB70()
{
  result = qword_1EC882C28;
  if (!qword_1EC882C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882C28);
  }

  return result;
}

void sub_1D604FBC4()
{
  if (!qword_1EC882C30)
  {
    sub_1D5BA6EF4();
    sub_1D72577EC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC882C30);
    }
  }
}

void sub_1D604FC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DebugNewsroomLayoutData();
    v7 = sub_1D604F8FC(&qword_1EC880FE0, 255, type metadata accessor for DebugNewsroomLayoutData);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D604FD34()
{
  if (!qword_1EC882C48)
  {
    v0 = sub_1D7261E1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC882C48);
    }
  }
}

uint64_t sub_1D604FD98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D604FE18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for DebugNewsroomThemeData();
    v7 = sub_1D604F8FC(qword_1EC880FF0, 255, type metadata accessor for DebugNewsroomThemeData);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D604FF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D604FFEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1D6050034(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v36 = v6;
  while (v9)
  {
    v39 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v43[0] = *v15;
    v43[1] = v16;
    v43[2] = v17;

    swift_unknownObjectRetain();
    a2(&v40, v43);
    swift_unknownObjectRelease();

    v18 = v40;
    v19 = v41;
    v20 = v42;
    v21 = *v44;
    v23 = sub_1D5B69D90(v40, v41);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v39 & 1) == 0)
      {
        sub_1D6D815C8();
      }
    }

    else
    {
      sub_1D6D6C1D0(v26, v39 & 1);
      v28 = sub_1D5B69D90(v18, v19);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

      v23 = v28;
    }

    v9 &= v9 - 1;
    v30 = *v44;
    if (v27)
    {

      *(v30[7] + 8 * v23) = v20;
      swift_unknownObjectRelease();
    }

    else
    {
      v30[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (v30[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v19;
      *(v30[7] + 8 * v23) = v20;
      v32 = v30[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v30[2] = v34;
    }

    a4 = 1;
    v11 = v12;
    v6 = v36;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_1D5B87E38();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v39 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D60502C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_9Tm()
{
  v1 = sub_1D72577EC();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void FCRecipe.traits.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 thumbnailExtraLarge];
  if (v3 || (v3 = [v1 thumbnailLarge]) != 0 || (v3 = objc_msgSend(v1, sel_thumbnailMedium)) != 0 || (v3 = objc_msgSend(v1, sel_thumbnailSmall)) != 0)
  {
    v4 = 0x4000000000104;
    v5 = v3;
    [v3 thumbnailSize];
    v7 = v6;
    v9 = v8;

    v10 = v7 / v9;
    if (v7 / v9 > 0.9)
    {
      v11 = v10 > 1.1 || v10 <= 0.9;
      v12 = 256;
      if (!v11)
      {
        v12 = 768;
      }

      v4 = v12 + 0x4000000000104;
    }
  }

  else
  {
    v4 = 0x4000000000000;
  }

  *a1 = v4;
}

id FCRecipe.thumbnailForMinimumSize(size:scale:)(double a1, double a2, double a3)
{
  if (a1 * a3 == 0.0 && a2 * a3 == 0.0)
  {
    return 0;
  }

  v5 = [v3 thumbnailSmall];
  if (!v5)
  {
    v5 = [v3 thumbnailMedium];
    if (!v5)
    {
      v7 = [v3 thumbnailLarge];
      if (v7)
      {
        v6 = v7;
        [v7 thumbnailSize];
        if (FCSizeIsLargerThanEqualToSize())
        {
          v8 = [v3 thumbnailSmall];

          return v8;
        }

        goto LABEL_11;
      }

      v5 = [v3 thumbnailExtraLarge];
      if (!v5)
      {
        goto LABEL_12;
      }
    }
  }

  v6 = v5;
  [v5 thumbnailSize];
  if (FCSizeIsLargerThanEqualToSize())
  {
    return v6;
  }

LABEL_11:

LABEL_12:
  result = [v3 thumbnailExtraLarge];
  if (!result)
  {
    result = [v3 thumbnailLarge];
    if (!result)
    {
      result = [v3 thumbnailMedium];
      if (!result)
      {
        return [v3 thumbnailSmall];
      }
    }
  }

  return result;
}

void sub_1D6050728()
{
  v1 = [v0 thumbnailExtraLarge];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 thumbnailAssetHandle];

    if (!v3)
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = [v3 filePath];

    if (v4)
    {
      v5 = &selRef_thumbnailExtraLarge;
LABEL_17:

      v15 = [v0 *v5];
      return;
    }
  }

  v6 = [v0 thumbnailLarge];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 thumbnailAssetHandle];

  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = [v8 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailLarge;
    goto LABEL_17;
  }

LABEL_9:
  v9 = [v0 thumbnailMedium];
  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 thumbnailAssetHandle];

  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = [v11 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailMedium;
    goto LABEL_17;
  }

LABEL_13:
  v12 = [v0 thumbnailSmall];
  if (!v12)
  {
    return;
  }

  v13 = v12;
  v14 = [v12 thumbnailAssetHandle];

  if (!v14)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v4 = [v14 filePath];

  if (v4)
  {
    v5 = &selRef_thumbnailSmall;
    goto LABEL_17;
  }
}

uint64_t sub_1D6050928@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 identifier];
  if (!v4)
  {
    sub_1D726207C();
    v4 = sub_1D726203C();
  }

  v5 = [v2 articles];
  sub_1D5B5D6A0();
  v6 = sub_1D726267C();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6FB460](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  v9 = [v8 identifier];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
LABEL_12:
  }

  v10 = [objc_opt_self() nss:v4 NewsURLForRecipeID:v9 articleID:?];

  sub_1D72584EC();
  v11 = sub_1D72585BC();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, 0, 1, v11);
}

uint64_t sub_1D6050B0C()
{

  return swift_deallocClassInstance();
}

char *sub_1D6050B78(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  v13 = *&v11[OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel];
  v14 = v11;
  [v14 addSubview_];
  [*&v11[v12] setTextAlignment_];
  [*&v11[v12] setNumberOfLines_];

  return v14;
}

id GapOfflineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void GapOfflineView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14GapOfflineView_offlineLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D726402C();
  __break(1u);
}

id GapOfflineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D6050E64()
{
  sub_1D5BBAE78(&qword_1EDF31C90);

  JUMPOUT(0x1DA6F6FC0);
}

uint64_t FormatPostPurchaseData.postPurchaseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FormatPostPurchaseData();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6051024(v1, v6);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 2, v7))
  {
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a1, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a1, v9, 1, v7);
}

uint64_t type metadata accessor for FormatPostPurchaseData()
{
  result = qword_1EDF281D0;
  if (!qword_1EDF281D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6051024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPostPurchaseData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D60510B0()
{
  v0 = sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D6051108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v61 = *(v2 + 16);
  if (!v61)
  {

    v56 = a2;
    v4 = MEMORY[0x1E69E7CC8];
    goto LABEL_28;
  }

  v3 = 0;
  v60 = v2 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  v59 = v2;
  do
  {
    v5 = (v60 + 104 * v3);
    v6 = v5[2];
    v7 = *v5;
    v72[1] = v5[1];
    v72[2] = v6;
    v72[0] = v7;
    v8 = v5[3];
    v9 = v5[4];
    v10 = v5[5];
    v73 = *(v5 + 12);
    v72[4] = v9;
    v72[5] = v10;
    v72[3] = v8;
    v11 = *&v72[0];
    v62 = v3 + 1;
    v12 = v5[5];
    v63[4] = v5[4];
    v63[5] = v12;
    v64 = *(v5 + 12);
    v13 = v5[1];
    v63[0] = *v5;
    v63[1] = v13;
    v14 = v5[3];
    v63[2] = v5[2];
    v63[3] = v14;
    sub_1D6053088(v72, &v65);
    sub_1D6053088(v72, &v65);
    sub_1D60514A8(v63, &v65);
    v78 = v69;
    v79 = v70;
    v80 = v71;
    v74 = v65;
    v75 = v66;
    v76 = v67;
    v77 = v68;

    sub_1D60530E4(v72);
    v15 = 0;
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 56);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      goto LABEL_9;
    }

    while (1)
    {
LABEL_10:
      v32 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }

      if (v32 >= v19)
      {
        break;
      }

      v18 = *(v11 + 56 + 8 * v32);
      ++v15;
      if (v18)
      {
        while (1)
        {
          v33 = (*(v11 + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v18)))));
          v35 = *v33;
          v34 = v33[1];

          sub_1D6053138(&v74, &v65);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v63[0] = v4;
          v37 = sub_1D5B69D90(v35, v34);
          v39 = v4[2];
          v40 = (v38 & 1) == 0;
          v41 = __OFADD__(v39, v40);
          v42 = v39 + v40;
          if (v41)
          {
            goto LABEL_30;
          }

          v43 = v38;
          if (v4[3] >= v42)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v54 = v37;
              sub_1D6D81784();
              v37 = v54;
            }
          }

          else
          {
            sub_1D6D6C4CC(v42, isUniquelyReferenced_nonNull_native);
            v37 = sub_1D5B69D90(v35, v34);
            if ((v43 & 1) != (v44 & 1))
            {
              goto LABEL_32;
            }
          }

          v18 &= v18 - 1;
          if (v43)
          {
            break;
          }

          v4 = *&v63[0];
          *(*&v63[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v45 = (v4[6] + 16 * v37);
          *v45 = v35;
          v45[1] = v34;
          v46 = (v4[7] + 112 * v37);
          v48 = v79;
          v47 = v80;
          v49 = v78;
          v46[3] = v77;
          v46[4] = v49;
          v46[5] = v48;
          v46[6] = v47;
          v51 = v75;
          v50 = v76;
          *v46 = v74;
          v46[1] = v51;
          v46[2] = v50;
          v52 = v4[2];
          v41 = __OFADD__(v52, 1);
          v53 = v52 + 1;
          if (v41)
          {
            goto LABEL_31;
          }

          v4[2] = v53;
          v15 = v32;
          if (!v18)
          {
            goto LABEL_10;
          }

LABEL_9:
          v32 = v15;
        }

        v20 = v37;

        v4 = *&v63[0];
        v21 = (*(*&v63[0] + 56) + 112 * v20);
        v23 = v21[1];
        v22 = v21[2];
        v65 = *v21;
        v66 = v23;
        v67 = v22;
        v24 = v21[6];
        v26 = v21[3];
        v25 = v21[4];
        v70 = v21[5];
        v71 = v24;
        v68 = v26;
        v69 = v25;
        v27 = v77;
        v28 = v78;
        v29 = v80;
        v21[5] = v79;
        v21[6] = v29;
        v21[3] = v27;
        v21[4] = v28;
        v30 = v74;
        v31 = v76;
        v21[1] = v75;
        v21[2] = v31;
        *v21 = v30;
        sub_1D6053170(&v65);
        v15 = v32;
        if (v18)
        {
          goto LABEL_9;
        }
      }
    }

    sub_1D6053170(&v74);

    v3 = v62;
    if (v62 == v61)
    {
      goto LABEL_26;
    }
  }

  while (v62 < *(v59 + 16));
  __break(1u);
LABEL_26:

  v56 = a2;
LABEL_28:
  *v56 = v4;
  return result;
}

uint64_t sub_1D60514A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = a1[8];
  v16 = a1[9];
  v10 = a1[11];
  v22 = a1[10];
  v23 = a1[1];
  v17 = a1[12];
  v24 = v3;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v8;

  sub_1D60531A0(v4, v5);
  sub_1D6052B40(&v23, &v29);
  v20 = v30;
  v21 = v29;
  v19 = v31;
  v18 = v32;
  if (v7)
  {

    sub_1D60531A0(v16, v22);

    sub_1D5D559EC(v4, v5);
    sub_1D60531E4(v7, v9, v16, v22);
    v23 = v7;
    v24 = v9;
    v25 = v16;
    v26 = v22;
    v27 = v10;
    v28 = v17;
    result = sub_1D6052B40(&v23, &v29);
    v12 = v29;
    v13 = v30;
    v14 = v31;
    v15 = v32;
  }

  else
  {

    sub_1D5D559EC(v4, v5);
    result = sub_1D60531E4(0, v9, v16, v22);
    v15 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a2 = v21;
  *(a2 + 16) = v20;
  *(a2 + 32) = v19;
  *(a2 + 48) = v18;
  *(a2 + 56) = v12;
  *(a2 + 72) = v13;
  *(a2 + 88) = v14;
  *(a2 + 104) = v15;
  return result;
}

uint64_t SportsEmbedConfiguration.embedConfigs(tagId:embedConfigKind:groupType:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  v63 = *v5;
  v11 = sub_1D6051F7C(a1, a2, a4, a5);
  v12 = a3 >> 61;
  if (v11)
  {
    v13 = v11;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = v14;
    *(v14 + 16) = xmmword_1D7279970;
    if (v12 <= 2)
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v17 = 0xE700000000000000;
          v16 = 0x74656B63617242;
        }

        else
        {
          v17 = 0xEA00000000007265;
          v16 = 0x79616C502079654BLL;
        }
      }

      else
      {
        v17 = 0xE900000000000065;
        v16 = 0x726F635320786F42;
      }
    }

    else if (v12 > 4)
    {
      if (v12 == 5)
      {
        v17 = 0xE800000000000000;
        v16 = 0x676E69646E617453;
      }

      else
      {
        v17 = 0xE500000000000000;
        v16 = 0x65726F6353;
      }
    }

    else if (v12 == 3)
    {
      v16 = 0x6F635320656E694CLL;
      v17 = 0xEA00000000006572;
    }

    else
    {
      v16 = 0x52207972756A6E49;
      v17 = 0xED000074726F7065;
    }

    v33 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D5B7E2C0();
    v15[8] = v34;
    v15[4] = v16;
    v15[5] = v17;
    v35 = *(v13 + 16);
    v36 = MEMORY[0x1E69E65A8];
    v15[12] = MEMORY[0x1E69E6530];
    v15[13] = v36;
    v15[9] = v35;
    v15[17] = v33;
    v15[18] = v34;
    v15[14] = v10;
    v15[15] = a2;

    sub_1D7262EDC();
    sub_1D725C30C();
    goto LABEL_61;
  }

  if (v12 == 1)
  {
    sub_1D5E4CF90();
    sub_1D725BE8C();
    v18 = *(v63 + 64);
    swift_unknownObjectRetain();

    if (v18)
    {
      v62 = v10;
      v19 = [v18 identifier];
      v20 = sub_1D726207C();
      v21 = v18;
      v23 = v22;

      v13 = sub_1D605202C(v20, v23, a4, a5);

      if (v13)
      {
        if (qword_1EDF05878 != -1)
        {
          swift_once();
        }

        sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1D7274590;
        v25 = MEMORY[0x1E69E6158];
        *(v24 + 56) = MEMORY[0x1E69E6158];
        v26 = sub_1D5B7E2C0();
        *(v24 + 64) = v26;
        *(v24 + 32) = 0x74656B63617242;
        *(v24 + 40) = 0xE700000000000000;
        v27 = *(v13 + 16);
        v28 = MEMORY[0x1E69E65A8];
        *(v24 + 96) = MEMORY[0x1E69E6530];
        *(v24 + 104) = v28;
        *(v24 + 72) = v27;
        *(v24 + 136) = v25;
        *(v24 + 144) = v26;
        *(v24 + 112) = v62;
        *(v24 + 120) = a2;

        v29 = [v21 identifier];
        v30 = sub_1D726207C();
        v32 = v31;

        *(v24 + 176) = v25;
        *(v24 + 184) = v26;
        *(v24 + 152) = v30;
        *(v24 + 160) = v32;
        sub_1D7262EDC();
LABEL_60:
        sub_1D725C30C();
        swift_unknownObjectRelease();
LABEL_61:

        return v13;
      }

      swift_unknownObjectRelease();
      v10 = v62;
    }
  }

  v37 = 0xE900000000000065;
  v38 = SportsEmbedConfigurationKind.leagueTag.getter(a3);
  if (v38)
  {
    v39 = v38;
    v40 = [v38 identifier];
    v41 = sub_1D726207C();
    v43 = v42;

    v13 = sub_1D605202C(v41, v43, a4, a5);

    if (v13)
    {
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v44 = swift_allocObject();
      v45 = v44;
      *(v44 + 16) = xmmword_1D7274590;
      v46 = 0xE900000000000065;
      if (v12 <= 2)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v46 = 0xE700000000000000;
            v47 = 0x74656B63617242;
          }

          else
          {
            v46 = 0xEA00000000007265;
            v47 = 0x79616C502079654BLL;
          }
        }

        else
        {
          v47 = 0x726F635320786F42;
        }
      }

      else if (v12 > 4)
      {
        if (v12 == 5)
        {
          v46 = 0xE800000000000000;
          v47 = 0x676E69646E617453;
        }

        else
        {
          v46 = 0xE500000000000000;
          v47 = 0x65726F6353;
        }
      }

      else if (v12 == 3)
      {
        v47 = 0x6F635320656E694CLL;
        v46 = 0xEA00000000006572;
      }

      else
      {
        v47 = 0x52207972756A6E49;
        v46 = 0xED000074726F7065;
      }

      v53 = MEMORY[0x1E69E6158];
      *(v44 + 56) = MEMORY[0x1E69E6158];
      v54 = sub_1D5B7E2C0();
      v45[8] = v54;
      v45[4] = v47;
      v45[5] = v46;
      v55 = *(v13 + 16);
      v56 = MEMORY[0x1E69E65A8];
      v45[12] = MEMORY[0x1E69E6530];
      v45[13] = v56;
      v45[9] = v55;
      v45[17] = v53;
      v45[18] = v54;
      v45[14] = v10;
      v45[15] = a2;

      v57 = [v39 identifier];
      v58 = sub_1D726207C();
      v60 = v59;

      v45[22] = v53;
      v45[23] = v54;
      v45[19] = v58;
      v45[20] = v60;
      sub_1D7262EDC();
      goto LABEL_60;
    }

    swift_unknownObjectRelease();
    v37 = 0xE900000000000065;
  }

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v48 = swift_allocObject();
  v49 = v48;
  *(v48 + 16) = xmmword_1D7270C10;
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        v37 = 0xE700000000000000;
        v50 = 0x74656B63617242;
      }

      else
      {
        v37 = 0xEA00000000007265;
        v50 = 0x79616C502079654BLL;
      }
    }

    else
    {
      v50 = 0x726F635320786F42;
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      v37 = 0xE800000000000000;
      v50 = 0x676E69646E617453;
    }

    else
    {
      v37 = 0xE500000000000000;
      v50 = 0x65726F6353;
    }
  }

  else if (v12 == 3)
  {
    v50 = 0x6F635320656E694CLL;
    v37 = 0xEA00000000006572;
  }

  else
  {
    v50 = 0x52207972756A6E49;
    v37 = 0xED000074726F7065;
  }

  v51 = MEMORY[0x1E69E6158];
  *(v48 + 56) = MEMORY[0x1E69E6158];
  v52 = sub_1D5B7E2C0();
  v49[4] = v50;
  v49[5] = v37;
  v49[12] = v51;
  v49[13] = v52;
  v49[8] = v52;
  v49[9] = v10;
  v49[10] = a2;

  sub_1D7262EDC();
  sub_1D725C30C();

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6051F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_1D5B69D90(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = (*(v5 + 56) + 112 * v8);
  v11 = v10[1];
  v12 = *(v11 + 16);
  v13 = *v10;

  if (v12)
  {

    v14 = sub_1D5B69D90(a3, a4);
    if (v15)
    {
      v16 = *(*(v11 + 56) + 8 * v14);

      v13 = v16;
    }
  }

  return v13;
}

uint64_t sub_1D605202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  if (!*(v5 + 16))
  {
    return 0;
  }

  v8 = sub_1D5B69D90(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = (*(v5 + 56) + 112 * v8);
  v12 = v10[7];
  v11 = v10[8];
  v13 = v10[9];
  v14 = v10[10];
  if (v12)
  {
    v27 = v10[7];
    v15 = v10[8];
    v25 = v10[9];
    v26 = v10[10];
  }

  else
  {
    v17 = v10[3];
    v15 = v10[1];
    v18 = v10[2];
    v27 = *v10;
    v23 = v10[9];
    v24 = v10[8];

    v25 = v18;
    v26 = v17;
    sub_1D60531A0(v18, v17);

    v13 = v23;
    v11 = v24;
  }

  v19 = *(v15 + 16);
  sub_1D6053258(v12, v11, v13, v14);
  if (v19 && (v20 = sub_1D5B69D90(a3, a4), (v21 & 1) != 0))
  {
    v22 = *(*(v15 + 56) + 8 * v20);

    v27 = v22;
  }

  else
  {
  }

  sub_1D5D559EC(v25, v26);

  return v27;
}

uint64_t SportsEmbedConfiguration.recordConfig(tagId:embedConfigKind:groupType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = 0xE900000000000065;
  sub_1D6052874(a1, a2, a4, a5, &v49);
  if (*(&v49 + 1))
  {
    v47 = v49;
    v45 = v50;
    if (qword_1EDF05878 != -1)
    {
      swift_once();
    }

    sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7270C10;
    v14 = a3 >> 61;
    if ((a3 >> 61) <= 2)
    {
      if (v14)
      {
        if (v14 == 1)
        {
          v12 = 0xE700000000000000;
          v15 = 0x74656B63617242;
        }

        else
        {
          v12 = 0xEA00000000007265;
          v15 = 0x79616C502079654BLL;
        }
      }

      else
      {
        v15 = 0x726F635320786F42;
      }
    }

    else if (v14 > 4)
    {
      if (v14 == 5)
      {
        v12 = 0xE800000000000000;
        v15 = 0x676E69646E617453;
      }

      else
      {
        v12 = 0xE500000000000000;
        v15 = 0x65726F6353;
      }
    }

    else if (v14 == 3)
    {
      v15 = 0x6F635320656E694CLL;
      v12 = 0xEA00000000006572;
    }

    else
    {
      v15 = 0x52207972756A6E49;
      v12 = 0xED000074726F7065;
    }

    v28 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v29 = v13;
    v30 = sub_1D5B7E2C0();
    v29[4] = v15;
    v29[5] = v12;
    v29[12] = v28;
    v29[13] = v30;
    v29[8] = v30;
    v29[9] = a1;
    v29[10] = a2;

    sub_1D7262EDC();
    sub_1D725C30C();

    v33 = v45;
    v32 = v47;
LABEL_26:
    a6[1] = v33;
    goto LABEL_49;
  }

  v16 = SportsEmbedConfigurationKind.leagueTag.getter(a3);
  if (v16)
  {
    v17 = v16;
    v48 = a6;
    v18 = [v16 identifier];
    v19 = sub_1D726207C();
    v21 = v20;

    sub_1D6052980(v19, v21, a4, a5, &v49);

    if (*(&v49 + 1))
    {
      v46 = v49;
      v44 = v50;
      if (qword_1EDF05878 != -1)
      {
        swift_once();
      }

      sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D7279970;
      v23 = MEMORY[0x1E69E6158];
      *(v22 + 56) = MEMORY[0x1E69E6158];
      v24 = sub_1D5B7E2C0();
      v25 = v24;
      *(v22 + 64) = v24;
      *(v22 + 32) = a1;
      *(v22 + 40) = a2;
      v26 = a3 >> 61;
      a6 = v48;
      if ((a3 >> 61) <= 2)
      {
        if (v26)
        {
          if (v26 == 1)
          {
            v12 = 0xE700000000000000;
            v27 = 0x74656B63617242;
          }

          else
          {
            v12 = 0xEA00000000007265;
            v27 = 0x79616C502079654BLL;
          }
        }

        else
        {
          v27 = 0x726F635320786F42;
        }
      }

      else if (v26 > 4)
      {
        if (v26 == 5)
        {
          v12 = 0xE800000000000000;
          v27 = 0x676E69646E617453;
        }

        else
        {
          v12 = 0xE500000000000000;
          v27 = 0x65726F6353;
        }
      }

      else if (v26 == 3)
      {
        v27 = 0x6F635320656E694CLL;
        v12 = 0xEA00000000006572;
      }

      else
      {
        v27 = 0x52207972756A6E49;
        v12 = 0xED000074726F7065;
      }

      *(v22 + 96) = v23;
      *(v22 + 104) = v24;
      *(v22 + 72) = v27;
      *(v22 + 80) = v12;

      v40 = [v17 identifier];
      v41 = sub_1D726207C();
      v43 = v42;

      *(v22 + 136) = v23;
      *(v22 + 144) = v25;
      *(v22 + 112) = v41;
      *(v22 + 120) = v43;
      sub_1D7262EDC();
      sub_1D725C30C();

      result = swift_unknownObjectRelease();
      v33 = v44;
      v32 = v46;
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
    a6 = v48;
  }

  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  sub_1D5B67864(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D7270C10;
  v35 = a3 >> 61;
  if ((a3 >> 61) <= 2)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        v12 = 0xE700000000000000;
        v36 = 0x74656B63617242;
      }

      else
      {
        v12 = 0xEA00000000007265;
        v36 = 0x79616C502079654BLL;
      }
    }

    else
    {
      v36 = 0x726F635320786F42;
    }
  }

  else if (v35 > 4)
  {
    if (v35 == 5)
    {
      v12 = 0xE800000000000000;
      v36 = 0x676E69646E617453;
    }

    else
    {
      v12 = 0xE500000000000000;
      v36 = 0x65726F6353;
    }
  }

  else if (v35 == 3)
  {
    v36 = 0x6F635320656E694CLL;
    v12 = 0xEA00000000006572;
  }

  else
  {
    v36 = 0x52207972756A6E49;
    v12 = 0xED000074726F7065;
  }

  v37 = MEMORY[0x1E69E6158];
  *(v34 + 56) = MEMORY[0x1E69E6158];
  v38 = v34;
  v39 = sub_1D5B7E2C0();
  v38[4] = v36;
  v38[5] = v12;
  v38[12] = v37;
  v38[13] = v39;
  v38[8] = v39;
  v38[9] = a1;
  v38[10] = a2;

  sub_1D7262EDC();
  sub_1D725C30C();

  v32 = 0uLL;
  a6[1] = 0u;
LABEL_49:
  *a6 = v32;
  return result;
}

uint64_t sub_1D6052874@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (result = sub_1D5B69D90(result, a2), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 112 * result);
    v12 = v11[2];
    v13 = v11[3];
    v14 = v11[4];
    v15 = v11[5];
    v16 = v11[6];
    v17 = *(v16 + 16);
    result = sub_1D60531A0(v12, v13);
    if (v17)
    {

      v18 = sub_1D5B69D90(a3, a4);
      if (v19)
      {
        v20 = (*(v16 + 56) + 32 * v18);
        v22 = *v20;
        v21 = v20[1];
        v24 = v20[2];
        v23 = v20[3];

        result = sub_1D5D559EC(v12, v13);
        *a5 = v22;
        a5[1] = v21;
        a5[2] = v24;
        a5[3] = v23;
        return result;
      }
    }

    *a5 = v12;
    a5[1] = v13;
    a5[2] = v14;
    a5[3] = v15;
  }

  else
  {
    *a5 = 0u;
    *(a5 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1D6052980@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *v5;
  if (*(v7 + 16) && (result = sub_1D5B69D90(result, a2), (v10 & 1) != 0))
  {
    v11 = (*(v7 + 56) + 112 * result);
    v13 = v11[7];
    v12 = v11[8];
    v14 = v11[9];
    v15 = v11[10];
    if (v13)
    {
      v30 = v11[9];
      v31 = v11[10];
      v32 = v11[11];
      v33 = v11[12];
      v16 = v11[13];
    }

    else
    {
      v16 = v11[6];
      v17 = v11[3];
      v32 = v11[4];
      v33 = v11[5];
      v18 = v11[2];
      v28 = v11[9];
      v29 = v11[8];
      v27 = v11[10];

      v30 = v18;
      v31 = v17;
      sub_1D60531A0(v18, v17);

      v15 = v27;
      v14 = v28;
      v12 = v29;
    }

    v19 = *(v16 + 16);
    sub_1D6053258(v13, v12, v14, v15);
    if (v19 && (v20 = sub_1D5B69D90(a3, a4), (v21 & 1) != 0))
    {
      v22 = (*(v16 + 56) + 32 * v20);
      v24 = *v22;
      v23 = v22[1];
      v26 = v22[2];
      v25 = v22[3];

      sub_1D5D559EC(v30, v31);

      *a5 = v24;
      a5[1] = v23;
      a5[2] = v26;
      a5[3] = v25;
    }

    else
    {
      sub_1D60531A0(v30, v31);

      sub_1D5D559EC(v30, v31);

      *a5 = v30;
      a5[1] = v31;
      a5[2] = v32;
      a5[3] = v33;
    }
  }

  else
  {
    *a5 = 0u;
    *(a5 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1D6052B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];

  sub_1D60531A0(v4, v5);
  v49 = v2;

  v52 = v5;
  v53 = v4;
  v50 = v7;
  v51 = v6;
  sub_1D5D559EC(v4, v5);
  v56 = *(v3 + 16);
  if (!v56)
  {
    v11 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
LABEL_30:

    *a2 = v49;
    a2[1] = v10;
    a2[2] = v53;
    a2[3] = v52;
    a2[4] = v51;
    a2[5] = v50;
    a2[6] = v11;
    return result;
  }

  v8 = 0;
  v9 = (v3 + 80);
  v10 = MEMORY[0x1E69E7CC8];
  v11 = MEMORY[0x1E69E7CC8];
  v55 = v3;
  while (v8 < *(v3 + 16))
  {
    v60 = v11;
    v57 = v8;
    v15 = *(v9 - 6);
    v14 = *(v9 - 5);
    v16 = *(v9 - 4);
    v17 = *(v9 - 3);
    v19 = *(v9 - 2);
    v18 = *(v9 - 1);
    v20 = *v9;

    v58 = v17;
    v59 = v18;
    sub_1D60531A0(v17, v19);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v15;
    v23 = sub_1D5B69D90(v15, v14);
    v24 = v10[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_32;
    }

    v27 = v22;
    if (v10[3] >= v26)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v22)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D6D81768();
        if (v27)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      sub_1D6D6C4B0(v26, isUniquelyReferenced_nonNull_native);
      v28 = sub_1D5B69D90(v61, v14);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_36;
      }

      v23 = v28;
      if (v27)
      {
LABEL_14:
        *(v10[7] + 8 * v23) = v16;

        v11 = v60;
        if (!v19)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    v10[(v23 >> 6) + 8] |= 1 << v23;
    v30 = (v10[6] + 16 * v23);
    *v30 = v61;
    v30[1] = v14;
    *(v10[7] + 8 * v23) = v16;
    v31 = v10[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_34;
    }

    v10[2] = v33;

    v11 = v60;
    if (!v19)
    {
LABEL_3:

      v12 = v58;
      v13 = 0;
LABEL_4:
      sub_1D5D559EC(v12, v13);
      goto LABEL_5;
    }

LABEL_19:

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = sub_1D5B69D90(v61, v14);
    v37 = v11[2];
    v38 = (v36 & 1) == 0;
    v32 = __OFADD__(v37, v38);
    v39 = v37 + v38;
    if (v32)
    {
      goto LABEL_33;
    }

    v40 = v36;
    if (v11[3] < v39)
    {
      sub_1D6D6C1E8(v39, v34);
      v35 = sub_1D5B69D90(v61, v14);
      if ((v40 & 1) != (v41 & 1))
      {
        goto LABEL_36;
      }

LABEL_24:
      if (v40)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    if (v34)
    {
      goto LABEL_24;
    }

    v43 = v35;
    sub_1D6D815E0();
    v35 = v43;
    if (v40)
    {
LABEL_25:
      v42 = (v11[7] + 32 * v35);
      *v42 = v58;
      v42[1] = v19;
      v42[2] = v59;
      v42[3] = v20;

      v12 = v58;
      v13 = v19;
      goto LABEL_4;
    }

LABEL_27:
    v11[(v35 >> 6) + 8] |= 1 << v35;
    v44 = (v11[6] + 16 * v35);
    *v44 = v61;
    v44[1] = v14;
    v45 = (v11[7] + 32 * v35);
    *v45 = v58;
    v45[1] = v19;
    v45[2] = v59;
    v45[3] = v20;

    sub_1D5D559EC(v58, v19);
    v46 = v11[2];
    v32 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v32)
    {
      goto LABEL_35;
    }

    v11[2] = v47;
LABEL_5:
    v3 = v55;
    v8 = v57 + 1;
    v9 += 7;
    if (v56 == v57 + 1)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed31SportsEmbedConfigResourceRecordVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed29SportsEmbedGroupConfiguration33_7DB1C8B1ED2AE3FE9CBBCB017D4368DFLLVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1D6052FD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D605301C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}