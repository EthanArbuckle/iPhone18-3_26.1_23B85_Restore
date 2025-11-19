uint64_t sub_1D6CD9C94(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_26:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_26;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1D6CD9DA8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1D6CDA0C4(id *a1@<X0>, SEL *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v8 = objc_msgSend(v7, *a2)) != 0)
  {
    v9 = v8;
    v10 = sub_1D726207C();
    v12 = v11;

    *a4 = v10;
    a4[1] = v12;
  }

  else
  {
    sub_1D5F82C30();
    swift_allocError();
    *v13 = a3;
    swift_willThrow();
  }
}

uint64_t sub_1D6CDA338()
{
  sub_1D5C483D4();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  v1 = sub_1D725BA8C();

  return v1;
}

void *sub_1D6CDA3B4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16) && (v7 = sub_1D5B69D90(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = v9;
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

void sub_1D6CDA440(void *a1, uint64_t a2)
{
  v19 = a1;
  sub_1D5E2B010();
  sub_1D6CDC4B0();
  v4 = a1;
  if (swift_dynamicCast())
  {
    sub_1D5B63F14(v17, v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v5 = sub_1D725AA4C();
    v7 = v6;
    v8 = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_viewMap;
    swift_beginAccess();
    v9 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a2 + v8);
    *(a2 + v8) = 0x8000000000000000;
    sub_1D6D78654(v9, v5, v7, isUniquelyReferenced_nonNull_native);

    *(a2 + v8) = v19;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1D6CDC514(v17, sub_1D6CDC574);
  }

  v11 = [v4 subviews];
  v12 = sub_1D726267C();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_13:

    return;
  }

  v13 = sub_1D7263BFC();
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1DA6FB460](i, v12);
      }

      else
      {
        v15 = *(v12 + 8 * i + 32);
      }

      v16 = v15;
      sub_1D6CDA440(v15, a2);
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1D6CDA64C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_1D7263F4C();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1D7263F5C();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = sub_1D726290C();
  v2[20] = sub_1D72628FC();
  v6 = sub_1D726285C();
  v2[21] = v6;
  v2[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDA7AC, v6, v5);
}

uint64_t sub_1D6CDA7AC()
{
  v1 = v0[10];
  type metadata accessor for FormatLayoutView();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8NewsFeed16FormatLayoutView_viewControllers;
    v4 = v2;
    swift_beginAccess();
    v5 = *(v4 + v3);
    v0[23] = v5;
    if (v5 >> 62)
    {
LABEL_38:
      v6 = sub_1D7263BFC();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[24] = v6;
    v1 = v0[10];
    if (v6)
    {
      v0[25] = OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView;
      v7 = v1;

      v8 = 0;
      while (1)
      {
        v9 = v0[23];
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1DA6FB460](v8);
        }

        else
        {
          if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v10 = *(v9 + 8 * v8 + 32);
        }

        v11 = v10;
        v0[26] = v10;
        v0[27] = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        type metadata accessor for WebEmbedViewController();
        v12 = swift_dynamicCastClass();
        v0[28] = v12;
        if (v12)
        {
          v13 = v11;
          v14 = [v13 view];
          if (!v14)
          {
            goto LABEL_42;
          }

          v17 = v14;
          v18 = [v13 view];

          if (!v18)
          {
            goto LABEL_43;
          }

          v19 = v0[25];
          v20 = v0[11];
          [v18 frame];
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;

          v29 = *(v20 + v19);
          [v17 convertRect:v29 toCoordinateSpace:{v22, v24, v26, v28}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          [v29 frame];
          v57.origin.x = v38;
          v57.origin.y = v39;
          v57.size.width = v40;
          v57.size.height = v41;
          v56.origin.x = v31;
          v56.origin.y = v33;
          v56.size.width = v35;
          v56.size.height = v37;
          if (CGRectIntersectsRect(v56, v57))
          {
            break;
          }
        }

        v8 = v0[27];
        if (v8 == v0[24])
        {
          v44 = v0[10];

          v1 = v0[10];
          goto LABEL_20;
        }
      }

      v0[29] = sub_1D72628FC();
      v42 = sub_1D726285C();
      v16 = v43;
      v0[30] = v42;
      v0[31] = v43;
      v14 = sub_1D6CDACDC;
      v15 = v42;

      return MEMORY[0x1EEE6DFA0](v14, v15, v16);
    }
  }

LABEL_20:
  sub_1D725FBCC();
  if (swift_dynamicCastClass())
  {
    v54 = (*MEMORY[0x1E69D8860] + MEMORY[0x1E69D8860]);
    v45 = v1;
    v46 = swift_task_alloc();
    v0[38] = v46;
    *v46 = v0;
    v46[1] = sub_1D6CDB870;

    return v54();
  }

  else
  {
    v48 = [v1 subviews];
    sub_1D5E2B010();
    v49 = sub_1D726267C();
    v0[39] = v49;

    if (v49 >> 62)
    {
      v14 = sub_1D7263BFC();
    }

    else
    {
      v14 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0[40] = v14;
    v15 = v0[39];
    if (v14)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x1DA6FB460](0);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v14, v15, v16);
        }

        v50 = *(v15 + 32);
      }

      v51 = v50;
      v0[41] = v50;
      v0[42] = 1;
      v52 = swift_task_alloc();
      v0[43] = v52;
      *v52 = v0;
      v52[1] = sub_1D6CDBB48;

      return sub_1D6CDA64C(v51);
    }

    else
    {

      v53 = v0[1];

      return v53();
    }
  }
}

uint64_t sub_1D6CDACDC()
{
  v1 = sub_1D5E29560(&unk_1F5118D90);
  *(v0 + 256) = v1;
  v2 = swift_task_alloc();
  *(v0 + 264) = v2;
  *v2 = v0;
  v2[1] = sub_1D6CDAD94;

  return MEMORY[0x1EEE441D8](v1);
}

uint64_t sub_1D6CDAD94()
{
  v1 = *v0;

  v2 = *(v1 + 248);
  v3 = *(v1 + 240);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAED8, v3, v2);
}

uint64_t sub_1D6CDAED8()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAF3C, v1, v2);
}

uint64_t sub_1D6CDAF3C()
{
  sub_1D726496C();
  *(v0 + 64) = xmmword_1D7348C70;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDAFBC, 0, 0);
}

uint64_t sub_1D6CDAFBC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_1D6CDC5CC(&qword_1EDF04298, MEMORY[0x1E69E8820]);
  sub_1D726494C();
  sub_1D6CDC5CC(&qword_1EDF042A0, MEMORY[0x1E69E87E8]);
  sub_1D7263F6C();
  v5 = *(v2 + 8);
  v0[34] = v5;
  v0[35] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1D6CDB140;
  v8 = v0[15];
  v7 = v0[16];

  return MEMORY[0x1EEE6DE58](v8, v0 + 5, v7, v4);
}

uint64_t sub_1D6CDB140()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = v2[34];
    v4 = v2[15];
    v5 = v2[12];

    v3(v4, v5);
    v6 = sub_1D6CDB760;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = v2[17];
    v9 = v2[18];
    v11 = v2[16];
    (v2[34])(v2[15], v2[12]);
    (*(v10 + 8))(v9, v11);
    v7 = v2[21];
    v8 = v2[22];
    v6 = sub_1D6CDB2B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D6CDB2B0()
{
  v1 = *(v0 + 216);
  if (v1 != *(v0 + 192))
  {
    while (1)
    {
      v7 = *(v0 + 184);
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v1);
      }

      else
      {
        if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v8 = *(v7 + 8 * v1 + 32);
      }

      v9 = v8;
      *(v0 + 208) = v8;
      *(v0 + 216) = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      type metadata accessor for WebEmbedViewController();
      v10 = swift_dynamicCastClass();
      *(v0 + 224) = v10;
      if (v10)
      {
        v11 = v9;
        v12 = [v11 view];
        if (!v12)
        {
          goto LABEL_37;
        }

        v15 = v12;
        v16 = [v11 view];

        if (!v16)
        {
          goto LABEL_38;
        }

        v17 = *(v0 + 200);
        v18 = *(v0 + 88);
        [v16 frame];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v27 = *(v18 + v17);
        [v15 convertRect:v27 toCoordinateSpace:{v20, v22, v24, v26}];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        [v27 frame];
        v51.origin.x = v36;
        v51.origin.y = v37;
        v51.size.width = v38;
        v51.size.height = v39;
        v50.origin.x = v29;
        v50.origin.y = v31;
        v50.size.width = v33;
        v50.size.height = v35;
        if (CGRectIntersectsRect(v50, v51))
        {
          break;
        }
      }

      v1 = *(v0 + 216);
      if (v1 == *(v0 + 192))
      {
        goto LABEL_2;
      }
    }

    *(v0 + 232) = sub_1D72628FC();
    v40 = sub_1D726285C();
    v14 = v41;
    *(v0 + 240) = v40;
    *(v0 + 248) = v41;
    v12 = sub_1D6CDACDC;
    v13 = v40;

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

LABEL_2:
  v2 = *(v0 + 80);

  v3 = *(v0 + 80);
  sub_1D725FBCC();
  if (swift_dynamicCastClass())
  {
    v48 = (*MEMORY[0x1E69D8860] + MEMORY[0x1E69D8860]);
    v4 = v3;
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = sub_1D6CDB870;

    return v48();
  }

  v42 = [v3 subviews];
  sub_1D5E2B010();
  v43 = sub_1D726267C();
  *(v0 + 312) = v43;

  if (v43 >> 62)
  {
LABEL_34:
    v12 = sub_1D7263BFC();
  }

  else
  {
    v12 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 320) = v12;
  v13 = *(v0 + 312);
  if (v12)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x1DA6FB460](0);
      goto LABEL_26;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v44 = *(v13 + 32);
LABEL_26:
      v45 = v44;
      *(v0 + 328) = v44;
      *(v0 + 336) = 1;
      v46 = swift_task_alloc();
      *(v0 + 344) = v46;
      *v46 = v0;
      v46[1] = sub_1D6CDBB48;

      return sub_1D6CDA64C(v45);
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1D6CDB760()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[21];
  v2 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D6CDB7D4, v1, v2);
}

uint64_t sub_1D6CDB7D4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6CDB870()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D6CDB990, v3, v2);
}

uint64_t sub_1D6CDB990()
{
  v1 = [*(v0 + 80) subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();
  *(v0 + 312) = v2;

  if (v2 >> 62)
  {
    result = sub_1D7263BFC();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 320) = result;
  v4 = *(v0 + 312);
  if (result)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1DA6FB460](0);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;
    *(v0 + 328) = v5;
    *(v0 + 336) = 1;
    v7 = swift_task_alloc();
    *(v0 + 344) = v7;
    *v7 = v0;
    v7[1] = sub_1D6CDBB48;

    return sub_1D6CDA64C(v6);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D6CDBB48()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1D6CDBDD0;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_1D6CDBC64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D6CDBC64()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 320);

  if (v1 == v2)
  {

    v3 = *(v0 + 8);

    v3();
    return;
  }

  v4 = *(v0 + 336);
  v5 = *(v0 + 312);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1DA6FB460](*(v0 + 336));
  }

  else
  {
    if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v6 = *(v5 + 8 * v4 + 32);
  }

  v7 = v6;
  *(v0 + 328) = v6;
  *(v0 + 336) = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  *(v0 + 344) = v8;
  *v8 = v0;
  v8[1] = sub_1D6CDBB48;

  sub_1D6CDA64C(v7);
}

uint64_t sub_1D6CDBDD0()
{
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D6CDBE60()
{
  sub_1D6CDC514(v0 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_bindResult, type metadata accessor for DebugFormatCanvasBindResult);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatCanvasViewResult()
{
  result = qword_1EC894DE8;
  if (!qword_1EC894DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CDBF4C()
{
  result = type metadata accessor for DebugFormatCanvasBindResult();
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

uint64_t sub_1D6CDBFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D7263F4C();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D6CDC0F8, 0, 0);
}

uint64_t sub_1D6CDC0F8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D7263F5C();
  v5 = sub_1D6CDC5CC(&qword_1EDF04298, MEMORY[0x1E69E8820]);
  sub_1D726494C();
  sub_1D6CDC5CC(&qword_1EDF042A0, MEMORY[0x1E69E87E8]);
  sub_1D7263F6C();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D6CDC288;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D6CDC288()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6CDC444, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D6CDC444()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D6CDC4B0()
{
  result = qword_1EC894DF8;
  if (!qword_1EC894DF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC894DF8);
  }

  return result;
}

uint64_t sub_1D6CDC514(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6CDC574()
{
  if (!qword_1EC894E00)
  {
    sub_1D6CDC4B0();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC894E00);
    }
  }
}

uint64_t sub_1D6CDC5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6CDC614@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  v76 = a1;
  v71 = a2;
  v72 = sub_1D725ECFC();
  v73 = *(v72 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72, v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v66 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v66 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for FormatDecorationContext();
  v69 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v68 = v19;
  v70 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CDD04C();
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D72585BC();
  MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  v74 = &v66 - v31;
  v32 = *v2;
  if ((*v2 & 0x8000000000000000) == 0)
  {
    v33 = v30;
    v34 = v29;
    v35 = v28;
    v36 = *(v32 + 96);
    v78[4] = *(v32 + 80);
    v78[5] = v36;
    v78[6] = *(v32 + 112);
    v79 = *(v32 + 128);
    v37 = *(v32 + 16);
    v38 = *(v32 + 48);
    v39 = *(v32 + 64);
    v78[1] = *(v32 + 32);
    v78[2] = v38;
    v78[3] = v39;
    v78[0] = v37;
    sub_1D5D093E8(v78, v77);
    v40 = v76;
    sub_1D7259F1C();
    v42 = v41;
    sub_1D7259CAC();
    v43 = sub_1D725A3AC();
    (*(*(v43 - 8) + 56))(v23, 0, 1, v43);
    v44 = v74;
    v45 = v75;
    sub_1D6D566B8(v40, v23, v74, v42);
    sub_1D5D09904(v78);
    result = sub_1D6CDD150(v23);
    if (v45)
    {
      return result;
    }

    v75 = swift_allocObject();
    v47 = v70;
    sub_1D6AB2614(v76, v70);
    v76 = *(v34 + 32);
    v48 = v33;
    v76(v33, v44, v35);
    v49 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v50 = (v68 + *(v34 + 80) + v49) & ~*(v34 + 80);
    v51 = swift_allocObject();
    sub_1D6068458(v47, v51 + v49);
    v52 = v51 + v50;
    v53 = v75;
    v76(v52, v48, v35);
    *(v53 + 16) = sub_1D6CDD1AC;
    goto LABEL_4;
  }

  v54 = v12;
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v32 & 0x7FFFFFFFFFFFFFFFLL;
  v56 = *(v55 + 24);
  v77[0] = *(v55 + 16);

  swift_retain_n();
  v57 = v75;
  sub_1D6CDC614(v76);
  if (!v57)
  {
    v58 = v16;

    v77[0] = v56;

    sub_1D6CDC614(v76);

    v53 = swift_allocObject();
    v59 = v73 + 32;
    v60 = *(v73 + 32);
    v67 = v8;
    v61 = v8;
    v62 = v72;
    v60(v61, v54, v72);
    v60(v74, v58, v62);
    v63 = *(v59 + 48);
    v64 = (v63 + 16) & ~v63;
    v65 = (v3 + v63 + v64) & ~v63;
    v51 = swift_allocObject();
    v60((v51 + v64), v67, v62);
    v60((v51 + v65), v74, v62);
    *(v53 + 16) = sub_1D6CDD0A4;
LABEL_4:
    *(v53 + 24) = v51;
    *v71 = v53;
    return (*(v73 + 104))();
  }
}

BOOL static FormatPatternContent.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    if (v3 < 0)
    {
      v11 = v3 & 0x7FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v18[0] = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      *&v16[0] = v12;
      *(&v16[0] + 1) = v13;

      if (static FormatPatternContent.== infix(_:_:)(v18, v16))
      {
        v14 = static FormatPatternContent.== infix(_:_:)(v18 + 8, v16 + 8);

        if (v14)
        {
          return 1;
        }
      }

      else
      {
      }
    }

    return 0;
  }

  if (v3 < 0)
  {
    return 0;
  }

  v4 = *(v3 + 96);
  v16[4] = *(v3 + 80);
  v16[5] = v4;
  v16[6] = *(v3 + 112);
  v17 = *(v3 + 128);
  v5 = *(v3 + 32);
  v16[0] = *(v3 + 16);
  v16[1] = v5;
  v6 = *(v3 + 64);
  v16[2] = *(v3 + 48);
  v16[3] = v6;
  v7 = *(v2 + 96);
  v18[4] = *(v2 + 80);
  v18[5] = v7;
  v18[6] = *(v2 + 112);
  v19 = *(v2 + 128);
  v8 = *(v2 + 32);
  v18[0] = *(v2 + 16);
  v18[1] = v8;
  v9 = *(v2 + 64);
  v18[2] = *(v2 + 48);
  v18[3] = v9;

  v10 = _s8NewsFeed17FormatRemoteImageV2eeoiySbAC_ACtFZ_0(v18, v16);

  return v10;
}

unint64_t sub_1D6CDCE4C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  v4 = sub_1D725844C();
  v5 = [v3 assetHandleForURL:v4 lifetimeHint:1];

  a2[3] = sub_1D5C169F4();
  result = sub_1D5EECFF8();
  a2[4] = result;
  *a2 = v5;
  return result;
}

uint64_t sub_1D6CDCEC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = [a1 userInterfaceStyle];
  if (v7 == 2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (v7 >= 2)
  {
    a3 = v8;
  }

  v9 = sub_1D725ECFC();
  v10 = *(*(v9 - 8) + 16);

  return v10(a4, a3, v9);
}

unint64_t sub_1D6CDCF88(uint64_t a1)
{
  result = sub_1D66A90EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CDCFB0(void *a1)
{
  a1[1] = sub_1D66A8DA4();
  a1[2] = sub_1D66A8F74();
  result = sub_1D6CDCFE8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CDCFE8()
{
  result = qword_1EDF0EE40;
  if (!qword_1EDF0EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0EE40);
  }

  return result;
}

void sub_1D6CDD04C()
{
  if (!qword_1EDF3BF60)
  {
    sub_1D725A3AC();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3BF60);
    }
  }
}

uint64_t sub_1D6CDD0A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1D725ECFC() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = v2 + ((*(v5 + 64) + v6 + v7) & ~v6);

  return sub_1D6CDCEC4(a1, v2 + v7, v8, a2);
}

uint64_t sub_1D6CDD150(uint64_t a1)
{
  sub_1D6CDD04C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D6CDD1AC@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FormatDecorationContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_1D72585BC();

  return sub_1D6CDCE4C(v1 + v4, a1);
}

unint64_t sub_1D6CDD298(uint64_t a1)
{
  result = sub_1D6CDD2C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CDD2C0()
{
  result = qword_1EC894E08;
  if (!qword_1EC894E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894E08);
  }

  return result;
}

unint64_t sub_1D6CDD314(void *a1)
{
  a1[1] = sub_1D6698AB8();
  a1[2] = sub_1D66FC0BC();
  result = sub_1D6CDD34C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CDD34C()
{
  result = qword_1EC894E10;
  if (!qword_1EC894E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894E10);
  }

  return result;
}

uint64_t PuzzleStackAccessoryView.__allocating_init(with:provider:colorTheme:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  ObjectType = swift_getObjectType();
  sub_1D6CDDCF8(a1, a2, a4, a5, a6, v13, ObjectType, a3);
  v16 = v15;
  sub_1D5B74328(a5);
  swift_unknownObjectRelease();
  return v16;
}

uint64_t PuzzleStackAccessoryView.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PuzzleStackAccessoryView.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double PuzzleStackAccessoryView.height.getter()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

void *PuzzleStackAccessoryView.containerView.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView);
  v2 = v1;
  return v1;
}

uint64_t PuzzleStackAccessoryView.init(with:provider:colorTheme:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  sub_1D6CDDCF8(a1, a2, a4, a5, a6, v6, ObjectType, a3);
  v15 = v14;
  sub_1D5B74328(a5);
  swift_unknownObjectRelease();
  return v15;
}

Swift::Void __swiftcall PuzzleStackAccessoryView.layoutSubviews()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView];
  if (v2)
  {
    [v0 bounds];
    [v2 setFrame_];
  }

  v13 = v2;
  v3 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
  v15 = *(v3 + 16);
  if (v15)
  {
    v4 = 0;
    v5 = (v3 + 40);
    v6 = 0.0;
    v14 = *&v0[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
    do
    {
      if (v4 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      ++v4;
      v7 = *(v5 - 1);
      v8 = *v5;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 32);
      v11 = v7;
      v12 = v10(ObjectType, v8);
      [v1 bounds];
      [v11 &selRef_isHiddenFromAutoFavorites];

      v3 = v14;
      v6 = v6 + v12;
      v5 += 2;
    }

    while (v15 != v4);
    v2 = v13;
    if (!v13)
    {
      return;
    }

    goto LABEL_8;
  }

  v6 = 0.0;
  if (v2)
  {
LABEL_8:
    [v1 bounds];
    [v2 setFrame_];
  }
}

void PuzzleStackAccessoryView.updateHeight(for:)(double a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews];
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = 0;
    v7 = (v3 + 40);
    v8 = 0.0;
    while (v6 < *(v3 + 16))
    {
      ++v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      v13 = v9;
      v12(ObjectType, v10, a1);
      v14 = (*(v10 + 32))(ObjectType, v10);

      v8 = v8 + v14;
      v7 += 2;
      if (v4 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0.0;
LABEL_7:
    v15 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
    swift_beginAccess();
    *&v2[v15] = v8;
    [v2 setNeedsLayout];
  }
}

id PuzzleStackAccessoryView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PuzzleStackAccessoryView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6CDDB98()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D6CDDBF0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double sub_1D6CDDCB0()
{
  v1 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D6CDDCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v45 = a6;
  v50 = *(a3 + 8);
  v51 = *a3;
  v12 = &a6[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_identifier];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a1 + 32;
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v15 + 72 * v14;
      v17 = v14;
      while (1)
      {
        if (v17 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v18 = *(v16 + 16);
        v19 = *(v16 + 48);
        v58 = *(v16 + 32);
        v59 = v19;
        v20 = *(v16 + 16);
        v57[0] = *v16;
        v57[1] = v20;
        v21 = *(v16 + 48);
        v55[2] = v58;
        v55[3] = v21;
        v60 = *(v16 + 64);
        v14 = v17 + 1;
        v56 = *(v16 + 64);
        v55[0] = v57[0];
        v55[1] = v18;
        v54[0] = v51;
        v54[1] = v50;
        v22 = *(a8 + 40);
        sub_1D6007B88(v57, v53);
        v23 = v22(v55, v54, a4, a5, a7, a8);
        v25 = v24;
        sub_1D6007C34(v57);
        if (v23)
        {
          break;
        }

        v16 += 72;
        ++v17;
        if (v13 == v14)
        {
          goto LABEL_15;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1D6990074(0, v46[2] + 1, 1, v46);
      }

      v27 = v46[2];
      v26 = v46[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v30 = sub_1D6990074((v26 > 1), v27 + 1, 1, v46);
        v28 = v27 + 1;
        v46 = v30;
      }

      v46[2] = v28;
      v29 = &v46[2 * v27];
      v29[4] = v23;
      v29[5] = v25;
      v15 = a1 + 32;
    }

    while (v13 - 1 != v17);
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  sub_1D5DEA2E0(v51, v50);

  v31 = OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews;
  *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_stackViews] = v46;
  v32 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v33 = *&v45[v31];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 40);
    v37 = 0.0;
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v39 = *(v36 - 1);
      v38 = *v36;
      v40 = swift_getObjectType();
      v41 = v39;
      [v32 addSubview_];
      v42 = (*(v38 + 32))(v40, v38);

      v37 = v37 + v42;
      v36 += 2;
      if (v34 == v35)
      {
        goto LABEL_21;
      }
    }

LABEL_23:
    __break(1u);
  }

  else
  {
    v37 = 0.0;
LABEL_21:

    *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_height] = v37;
    *&v45[OBJC_IVAR____TtC8NewsFeed24PuzzleStackAccessoryView_containerView] = v32;
    v52.receiver = v45;
    v52.super_class = ObjectType;
    v43 = v32;
    [objc_msgSendSuper2(&v52 initWithFrame_];
  }
}

uint64_t sub_1D6CDE0AC(uint64_t a1, __int128 *a2)
{
  sub_1D693329C(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v93 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (v91 - v6);
  v8 = *(a1 + 112);
  v102 = *(a1 + 96);
  v103 = v8;
  v104 = *(a1 + 128);
  v105 = *(a1 + 144);
  v9 = *(a1 + 48);
  v98 = *(a1 + 32);
  v99 = v9;
  v10 = *(a1 + 80);
  v100 = *(a1 + 64);
  v101 = v10;
  v11 = *(a1 + 16);
  v96 = *a1;
  v97 = v11;
  v12 = a2[7];
  v139 = a2[6];
  v140[0] = v12;
  *(v140 + 9) = *(a2 + 121);
  v13 = a2[3];
  v135 = a2[2];
  v136 = v13;
  v14 = a2[5];
  v137 = a2[4];
  v138 = v14;
  v15 = a2[1];
  v133 = *a2;
  v134 = v15;
  sub_1D693329C(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D727E3C0;
  v17 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v17;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v18 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v18;
  v19 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v19;
  v20 = *(a1 + 16);
  v114 = *a1;
  v115 = v20;
  v21 = a2[7];
  v112 = a2[6];
  v113[0] = v21;
  *(v113 + 9) = *(a2 + 121);
  v22 = a2[3];
  v108 = a2[2];
  v109 = v22;
  v23 = a2[5];
  v110 = a2[4];
  v111 = v23;
  v24 = a2[1];
  v106 = *a2;
  v107 = v24;
  sub_1D6B05BB8(&v106, v123);
  *(v16 + 56) = &type metadata for FormatInspectionGroup;
  *(v16 + 64) = &off_1F518B2C0;
  v25 = swift_allocObject();
  *(v16 + 32) = v25;
  v91[1] = v16 + 32;
  v26 = v123[1];
  *(v25 + 16) = v123[0];
  *(v25 + 32) = v26;
  *(v25 + 48) = v124;
  v27 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v27;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v28 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v28;
  v29 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v29;
  v30 = *(a1 + 16);
  v114 = *a1;
  v115 = v30;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D63288F8(&v106, v125);
  *(v16 + 96) = &type metadata for FormatInspectionGroup;
  *(v16 + 104) = &off_1F518B2C0;
  v31 = swift_allocObject();
  *(v16 + 72) = v31;
  v32 = v125[1];
  *(v31 + 16) = v125[0];
  *(v31 + 32) = v32;
  *(v31 + 48) = v126;
  v33 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v33;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v34 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v34;
  v35 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v35;
  v36 = *(a1 + 16);
  v114 = *a1;
  v115 = v36;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D6201D30(&v114, &v106, v127);
  *(v16 + 136) = &type metadata for FormatInspectionGroup;
  *(v16 + 144) = &off_1F518B2C0;
  v37 = swift_allocObject();
  *(v16 + 112) = v37;
  v38 = v127[1];
  *(v37 + 16) = v127[0];
  *(v37 + 32) = v38;
  *(v37 + 48) = v128;
  v39 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v39;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v40 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v40;
  v41 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v41;
  v42 = *(a1 + 16);
  v114 = *a1;
  v115 = v42;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D715C878(&v106, v129);
  *(v16 + 176) = &type metadata for FormatInspectionGroup;
  *(v16 + 184) = &off_1F518B2C0;
  v43 = swift_allocObject();
  *(v16 + 152) = v43;
  v44 = v129[1];
  *(v43 + 16) = v129[0];
  *(v43 + 32) = v44;
  *(v43 + 48) = v130;
  v45 = *(a1 + 112);
  v120 = *(a1 + 96);
  v121[0] = v45;
  v121[1] = *(a1 + 128);
  v122 = *(a1 + 144);
  v46 = *(a1 + 48);
  v116 = *(a1 + 32);
  v117 = v46;
  v47 = *(a1 + 80);
  v118 = *(a1 + 64);
  v119 = v47;
  v48 = *(a1 + 16);
  v114 = *a1;
  v115 = v48;
  v112 = v139;
  v113[0] = v140[0];
  *(v113 + 9) = *(v140 + 9);
  v108 = v135;
  v109 = v136;
  v110 = v137;
  v111 = v138;
  v106 = v133;
  v107 = v134;
  sub_1D6AD82E4(&v106, v131);
  *(v16 + 216) = &type metadata for FormatInspectionGroup;
  *(v16 + 224) = &off_1F518B2C0;
  v49 = swift_allocObject();
  *(v16 + 192) = v49;
  v50 = v131[1];
  *(v49 + 16) = v131[0];
  *(v49 + 32) = v50;
  *(v49 + 48) = v132;
  v120 = v139;
  v121[0] = v140[0];
  *(v121 + 9) = *(v140 + 9);
  v116 = v135;
  v117 = v136;
  v118 = v137;
  v119 = v138;
  v114 = v133;
  v115 = v134;
  sub_1D6A4238C(&v114, &v106);
  *(v16 + 256) = &type metadata for FormatInspectionGroup;
  *(v16 + 264) = &off_1F518B2C0;
  v51 = swift_allocObject();
  v92 = v16;
  *(v16 + 232) = v51;
  v52 = v107;
  *(v51 + 16) = v106;
  *(v51 + 32) = v52;
  *(v51 + 48) = v108;
  *(&v97 + 1) = &type metadata for FeedIssue;
  *&v98 = sub_1D5EE5AA4();
  v53 = swift_allocObject();
  *&v96 = v53;
  v54 = v140[0];
  v53[7] = v139;
  v53[8] = v54;
  *(v53 + 137) = *(v140 + 9);
  v55 = v136;
  v53[3] = v135;
  v53[4] = v55;
  v56 = v138;
  v53[5] = v137;
  v53[6] = v56;
  v57 = v134;
  v53[1] = v133;
  v53[2] = v57;
  sub_1D5ECF2C4(&v133, &v114);
  sub_1D713A66C(&v96, &v114);
  __swift_destroy_boxed_opaque_existential_1(&v96);
  v58 = v114;
  *&v96 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 0, 0);
  v59 = v96;
  if (v58)
  {
    while (1)
    {
      v60 = v58 & -v58;
      *&v114 = 91;
      *(&v114 + 1) = 0xE100000000000000;
      v95 = v60;
      v94 = sub_1D713AFE4();
      sub_1D5BBE0A8();
      sub_1D5BB0AB8();
      v61 = sub_1D7261F3C();
      v63 = v62;

      MEMORY[0x1DA6F9910](v61, v63);

      MEMORY[0x1DA6F9910](93, 0xE100000000000000);
      v64 = sub_1D5FD24A4(1uLL, v114, *(&v114 + 1));
      v66 = v65;

      result = sub_1D726398C();
      if (__OFSUB__(result, 1))
      {
        break;
      }

      result = sub_1D726396C();
      if (v68)
      {
        v69 = v66;
      }

      else
      {
        v69 = result;
      }

      if (v69 >> 14 < v64 >> 14)
      {
        goto LABEL_13;
      }

      v70 = sub_1D72639BC();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      v77 = MEMORY[0x1DA6F97E0](v70, v72, v74, v76);
      v79 = v78;

      v80 = type metadata accessor for FormatInspectionItem(0);
      v81 = (v7 + *(v80 + 24));
      *v81 = 0;
      v81[1] = 0xE000000000000000;
      v82 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v82 - 8) + 56))(v81, 0, 1, v82);
      *v7 = v77;
      v7[1] = v79;
      v7[2] = 0;
      v7[3] = 0;
      v83 = v7 + *(v80 + 28);
      *v83 = 0;
      *(v83 + 1) = 0;
      v83[16] = -1;
      (*(*(v80 - 8) + 56))(v7, 0, 1, v80);
      *&v96 = v59;
      v85 = *(v59 + 16);
      v84 = *(v59 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_1D69972A4(v84 > 1, v85 + 1, 1);
        v59 = v96;
      }

      *(v59 + 16) = v85 + 1;
      sub_1D5E4F52C(v7, v59 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v85);
      v86 = v60 == v58;
      v58 ^= v60;
      if (v86)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v59, &v114);

    v87 = v92;
    *(v92 + 296) = &type metadata for FormatInspectionGroup;
    *(v87 + 304) = &off_1F518B2C0;
    v88 = swift_allocObject();
    *(v87 + 272) = v88;
    v89 = v115;
    *(v88 + 16) = v114;
    *(v88 + 32) = v89;
    *(v88 + 48) = v116;
    v90 = sub_1D7073500(v87);
    swift_setDeallocating();
    sub_1D5E4F358(0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v90;
  }

  return result;
}

id SharingArticleImageActivityItemSource.__allocating_init(headline:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SharingArticleImageActivityItemSource.init(headline:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

void SharingArticleImageActivityItemSource.activityViewControllerPlaceholderItem(_:)(void *a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline) articleID];
  if (!v3)
  {
    a1[3] = MEMORY[0x1E69E6158];
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    return;
  }

  v4 = FCThumbnailForHeadline();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 thumbnailAssetHandle];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 filePath];

    if (v8)
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v9)
      {
        a1[3] = sub_1D62B7E2C();

        *a1 = v9;
        return;
      }
    }

LABEL_9:
    a1[3] = sub_1D67B380C();
    *a1 = MEMORY[0x1E69E7CA0] + 8;
    return;
  }

  __break(1u);
}

void SharingArticleImageActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

LABEL_18:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v13 = [*(v2 + OBJC_IVAR____TtC8NewsFeed37SharingArticleImageActivityItemSource_headline) articleID];
  if (!v13)
  {
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    return;
  }

  v14 = FCThumbnailForHeadline();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v14;
  v16 = [v14 thumbnailAssetHandle];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 filePath];

    if (v18)
    {
      v19 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithContentsOfFile_];

      if (v19)
      {
        *(a2 + 24) = sub_1D62B7E2C();

        *a2 = v19;
        return;
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

id SharingArticleImageActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleImageActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_1D6CDF070(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D6CDF0B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D6CDF148@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v376 = a8;
  v356 = a6;
  v357 = a7;
  v378 = a5;
  v402 = a4;
  v379 = a3;
  v358 = a2;
  v348 = a9;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v344 = &v334 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatPropertyDefinition(0);
  v347 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v338 = &v334 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v341 = &v334 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v334 - v25;
  v373 = type metadata accessor for FormatOption();
  v364 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373, v27);
  v339 = &v334 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v340 = &v334 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v355 = &v334 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v334 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v372 = &v334 - v41;
  sub_1D6D09328(0);
  v362 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v346 = &v334 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v345 = &v334 - v47;
  sub_1D6AC4E74();
  v336 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v337 = &v334 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  *(&v343 + 1) = &v334 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v359, v54);
  v361 = &v334 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D0A158(0);
  MEMORY[0x1EEE9AC00](v56 - 8, v57);
  v59 = &v334 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60, v61);
  v363 = &v334 - v62;
  v63 = type metadata accessor for FeedCustomItem();
  v366 = *(v63 - 8);
  v367 = v63;
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v342 = &v334 - v67;
  MEMORY[0x1EEE9AC00](v68, v69);
  v350 = &v334 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v349 = &v334 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v352 = &v334 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v354 = &v334 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v353 = &v334 - v82;
  MEMORY[0x1EEE9AC00](v83, v84);
  v368 = (&v334 - v85);
  v86 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v87 = *(v86 + 16);
  v335 = v26;
  *&v343 = v88;
  v351 = v59;
  v371 = v86;
  v89 = 0;
  if (v87)
  {
    v90 = (v86 + 32);
    do
    {
      v91 = *v90++;
      v92 = qword_1D7349118[v91];
      if ((v92 & ~v89) == 0)
      {
        v92 = 0;
      }

      v89 |= v92;
      --v87;
    }

    while (v87);
  }

  v93 = swift_allocObject();
  *(v93 + 16) = v89;
  sub_1D6D09390(0, &qword_1EDF15598, type metadata accessor for FeedCustomItem, type metadata accessor for FeedItemSorter);
  v370 = v94;
  v95 = swift_allocObject();
  *(v95 + 16) = MEMORY[0x1E69E7CC0];
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1D6D0A18C;
  *(v96 + 24) = v93;
  swift_beginAccess();
  v97 = *(v95 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v95 + 16) = v97;
  v377 = a1;
  v360 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v97 = sub_1D699094C(0, v97[2] + 1, 1, v97);
    *(v95 + 16) = v97;
  }

  v100 = v97[2];
  v99 = v97[3];
  if (v100 >= v99 >> 1)
  {
    v97 = sub_1D699094C((v99 > 1), v100 + 1, 1, v97);
  }

  v365 = a11;
  v374 = a10;
  v97[2] = v100 + 1;
  v101 = &v97[2 * v100];
  v101[4] = sub_1D6D0A194;
  v101[5] = v96;
  *(v95 + 16) = v97;
  swift_endAccess();

  v102 = *(v377 + *(type metadata accessor for GroupLayoutBindingContext() + 56));
  v103 = *(v102 + 16);
  v104 = v402;

  if (v103)
  {
    v105 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, v379, v104);
    v104 = v402;
    if (v106)
    {
      v107 = *(*(v102 + 56) + 8 * v105);
      if (*(v107 + 16))
      {

        v109 = v374;
        v110 = v369;
        v111 = sub_1D5BF08EC(v108, v376, v374);
        v112 = v110;
        if (v110)
        {

          goto LABEL_17;
        }

        v369 = 0;
        v139 = sub_1D714EB38(v111);

        v140 = v402;
        if (v139)
        {
          if (v139[2])
          {
            v141 = v363;
            sub_1D6D003FC(v139, v95, v378, 1, v363);

            if ((*(v366 + 48))(v141, 1, v367) != 1)
            {
              v148 = v141;
              v149 = v354;
              v150 = sub_1D6D0A058(v148, v354, type metadata accessor for FeedCustomItem);
              if ((v365 & 1) == 0)
              {
                MEMORY[0x1EEE9AC00](v150, v151);
                *(&v334 - 2) = v149;
                v152 = v369;
                v107 = sub_1D5BF5F6C(sub_1D6D0A54C, (&v334 - 4), v107);
                v369 = v152;
              }

              v153 = v360;
              strcpy(&v393, "FeedCustomItem");
              HIBYTE(v393) = -18;
              *&v394 = v379;
              *(&v394 + 1) = v402;
              sub_1D5BDACA8(&v393, v107);

              v154 = v353;
              sub_1D6D0A058(v149, v353, type metadata accessor for FeedCustomItem);
              v155 = v154;
              v156 = v368;
              sub_1D6D0A058(v155, v368, type metadata accessor for FeedCustomItem);
              v157 = *v156;
              v158 = v156[1];
              v159 = v358;
              v160 = v376;
              v161 = v374;
              v354 = sub_1D6196E44(v358, v376, v374, v157, v158);
              v401 = v354;
              v162 = sub_1D6196F00(v159, v160, v161, v157, v158);
              v400 = v162;
              v366 = v157;
              v363 = v158;
              if (v161)
              {
                v163 = v361;
                v164 = v153;
                if (*(v159 + 16) && (v165 = sub_1D5B69D90(v376, v374), (v166 & 1) != 0))
                {
                  v167 = *(*(*(v159 + 56) + 8 * v165) + 136);
                  v168 = v375;
                  if (*(v167 + 16))
                  {

                    v169 = sub_1D5B69D90(v157, v158);
                    if (v170)
                    {
                      v171 = (*(v167 + 56) + 48 * v169);
                      v172 = *v171;
                      v173 = v171[1];
                      v174 = v171[2];
                      v175 = v171[3];
                      v176 = v171[5];
                      v378 = v171[4];

                      v402 = v174;

                      v379 = v175;
                      v163 = v361;

                      v376 = v176;
                      v164 = v360;

                      goto LABEL_72;
                    }
                  }

                  v172 = 0;
                  v173 = 0;
                  v402 = 0;
                  v378 = 0;
                  v379 = 0;
                  v376 = 0;
                }

                else
                {
                  v172 = 0;
                  v173 = 0;
                  v402 = 0;
                  v378 = 0;
                  v379 = 0;
                  v376 = 0;
                  v168 = v375;
                }
              }

              else
              {
                v172 = 0;
                v173 = 0;
                v402 = 0;
                v378 = 0;
                v379 = 0;
                v376 = 0;
                v168 = v375;
                v163 = v361;
                v164 = v153;
              }

              goto LABEL_72;
            }

            sub_1D6D0A444(v141, sub_1D6D0A158);
            sub_1D5ED8048();
            v112 = swift_allocError();
            strcpy(v142, "FeedCustomItem");
            *(v142 + 15) = -18;
            v143 = v402;
            *(v142 + 16) = v379;
            *(v142 + 24) = v143;
            goto LABEL_47;
          }
        }

        sub_1D5ED8048();
        v112 = swift_allocError();
        strcpy(v142, "FeedCustomItem");
        *(v142 + 15) = -18;
        *(v142 + 16) = v379;
        *(v142 + 24) = v140;
LABEL_47:
        *(v142 + 32) = v378;
        *(v142 + 40) = 1;
        *(v142 + 48) = v376;
        *(v142 + 56) = v109;
        *(v142 + 64) = 0;
        swift_willThrow();
        goto LABEL_16;
      }
    }
  }

  sub_1D5ED8048();
  v112 = swift_allocError();
  strcpy(v113, "FeedCustomItem");
  v113[15] = -18;
  v114 = v378;
  *(v113 + 2) = v379;
  *(v113 + 3) = v104;
  *(v113 + 4) = v114;
  *(v113 + 5) = 1;
  v115 = v374;
  *(v113 + 6) = v376;
  *(v113 + 7) = v115;
  v113[64] = 0;
  swift_willThrow();
LABEL_16:

LABEL_17:

  if ((*(v375 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    return swift_willThrow();
  }

  v116 = *(v371 + 16);
  v376 = 0;
  v117 = 0;
  if (v116)
  {
    v118 = (v371 + 32);
    do
    {
      v119 = *v118++;
      v120 = qword_1D7349118[v119];
      if ((v120 & ~v117) == 0)
      {
        v120 = 0;
      }

      v117 |= v120;
      --v116;
    }

    while (v116);
  }

  v121 = swift_allocObject();
  *(v121 + 16) = v117;
  v122 = swift_allocObject();
  *(v122 + 16) = MEMORY[0x1E69E7CC0];
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1D6D0A5F0;
  *(v123 + 24) = v121;
  swift_beginAccess();
  v124 = *(v122 + 16);

  v125 = swift_isUniquelyReferenced_nonNull_native();
  *(v122 + 16) = v124;
  if ((v125 & 1) == 0)
  {
    v124 = sub_1D699094C(0, v124[2] + 1, 1, v124);
    *(v122 + 16) = v124;
  }

  v127 = v124[2];
  v126 = v124[3];
  if (v127 >= v126 >> 1)
  {
    v124 = sub_1D699094C((v126 > 1), v127 + 1, 1, v124);
  }

  v124[2] = v127 + 1;
  v128 = &v124[2 * v127];
  v128[4] = sub_1D6D0A524;
  v128[5] = v123;
  *(v122 + 16) = v124;
  swift_endAccess();

  v129 = *(v102 + 16);
  v130 = v402;

  if (!v129 || (v131 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, v379, v130), (v132 & 1) == 0) || (v133 = *(*(v102 + 56) + 8 * v131), !*(v133 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v138, "FeedCustomItem");
    *(v138 + 15) = -18;
    *(v138 + 16) = v379;
    *(v138 + 24) = v130;
LABEL_34:
    *(v138 + 32) = v378;
LABEL_35:
    *(v138 + 40) = 1;
    *(v138 + 48) = 0;
    *(v138 + 56) = 0;
    *(v138 + 64) = 0;
    swift_willThrow();
  }

  v135 = v376;
  v136 = sub_1D5BF08EC(v134, 0, 0);
  if (v135)
  {
  }

  v369 = 0;
  v144 = sub_1D714EB38(v136);

  if (!v144)
  {
LABEL_57:

    sub_1D5ED8048();
    swift_allocError();
    strcpy(v138, "FeedCustomItem");
    *(v138 + 15) = -18;
    v177 = v402;
    *(v138 + 16) = v379;
    *(v138 + 24) = v177;
    goto LABEL_34;
  }

  if (!v144[2])
  {

    goto LABEL_57;
  }

  v145 = v351;
  v146 = v378;
  sub_1D6D003FC(v144, v122, v378, 1, v351);

  if ((*(v366 + 48))(v145, 1, v367) == 1)
  {

    sub_1D6D0A444(v145, sub_1D6D0A158);
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v138, "FeedCustomItem");
    *(v138 + 15) = -18;
    v147 = v402;
    *(v138 + 16) = v379;
    *(v138 + 24) = v147;
    *(v138 + 32) = v146;
    goto LABEL_35;
  }

  v178 = v145;
  v179 = v343;
  v180 = sub_1D6D0A058(v178, v343, type metadata accessor for FeedCustomItem);
  if ((v365 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v180, v181);
    *(&v334 - 2) = v179;
    v182 = v369;
    v133 = sub_1D5BF5F6C(sub_1D5BF619C, (&v334 - 4), v133);
    v369 = v182;
  }

  v168 = v375;
  strcpy(&v393, "FeedCustomItem");
  HIBYTE(v393) = -18;
  *&v394 = v379;
  *(&v394 + 1) = v402;
  sub_1D5BDACA8(&v393, v133);

  v183 = v342;
  sub_1D6D0A058(v179, v342, type metadata accessor for FeedCustomItem);
  v184 = v183;
  v185 = v368;
  sub_1D6D0A058(v184, v368, type metadata accessor for FeedCustomItem);
  v186 = *v185;
  v187 = v185[1];
  v188 = v358;
  v354 = sub_1D6196E44(v358, 42, 0xE100000000000000, *v185, v187);
  v401 = v354;
  v162 = sub_1D6196F00(v188, 42, 0xE100000000000000, v186, v187);
  v400 = v162;
  v189 = *(v188 + 16);
  v366 = v186;
  v363 = v187;
  if (v189)
  {
    v190 = sub_1D5B69D90(42, 0xE100000000000000);
    v163 = v361;
    if ((v191 & 1) != 0 && (v192 = *(*(*(v188 + 56) + 8 * v190) + 136), *(v192 + 16)))
    {

      v193 = sub_1D5B69D90(v186, v187);
      if (v194)
      {
        v195 = (*(v192 + 56) + 48 * v193);
        v172 = *v195;
        v173 = v195[1];
        v196 = v195[2];
        v197 = v195[3];
        v198 = v195[5];
        v378 = v195[4];

        v402 = v196;

        v379 = v197;
        v163 = v361;

        v376 = v198;

        v164 = v360;
        goto LABEL_72;
      }
    }

    else
    {
    }

    v172 = 0;
    v173 = 0;
    v402 = 0;
    v378 = 0;
    v379 = 0;
    v376 = 0;
    v164 = v360;
  }

  else
  {

    v172 = 0;
    v173 = 0;
    v402 = 0;
    v378 = 0;
    v379 = 0;
    v376 = 0;
    v164 = v360;
    v163 = v361;
  }

LABEL_72:
  *(&v394 + 1) = v367;
  v199 = sub_1D6D098EC(&qword_1EDF15710, type metadata accessor for FeedCustomItem);
  *&v395 = v199;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v393);
  sub_1D6D09934(v368, boxed_opaque_existential_1, type metadata accessor for FeedCustomItem);
  sub_1D6818590(&v393, v163);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v374 = v172;
  v370 = v199;
  v371 = v173;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v202 = v163;
      v163 = *(&v343 + 1);
      sub_1D6D0A058(v202, *(&v343 + 1), type metadata accessor for FeedWebEmbed);
      v203 = sub_1D6944620();
      sub_1D5D505F0(v203);
      v204 = sub_1D69449D8();
      sub_1D5B886D0(v204);
      v205 = type metadata accessor for FeedWebEmbed;
    }

    else
    {
      v205 = type metadata accessor for FeedItem;
    }

    sub_1D6D0A444(v163, v205);
    v218 = v377;
    goto LABEL_81;
  }

  v206 = v352;
  sub_1D6D0A058(v163, v352, type metadata accessor for FeedCustomItem);
  v207 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v208 = *(v207 + 8);
  v209 = v206 + *(v367 + 20);
  v211 = *(v209 + 16);
  v210 = *(v209 + 24);
  if (!*(v208 + 16))
  {
    goto LABEL_138;
  }

  v212 = sub_1D5B69D90(v211, v210);
  if ((v213 & 1) == 0)
  {

LABEL_138:

    sub_1D67F58E4(v374, v371);

    LOBYTE(v398) = 0;
    v396 = 0u;
    v397 = 0u;
    v394 = 0u;
    v395 = 0u;
    v393 = 0u;
    goto LABEL_139;
  }

  v361 = v211;
  v214 = v337;
  sub_1D6D09934(*(v208 + 56) + *(v336 + 72) * v212, v337, sub_1D6AC4E74);
  v215 = *(v214 + 32);
  v216 = *(v214 + 64);
  v384 = *(v214 + 48);
  v385 = v216;
  v386 = *(v214 + 80);
  v217 = *(v214 + 16);
  v381 = *v214;
  v382 = v217;
  v383 = v215;
  sub_1D62B7D1C(&v381, &v380);
  sub_1D6D0A444(v214, sub_1D6AC4E74);

  v389 = v383;
  v390 = v384;
  v391 = v385;
  LOBYTE(v392) = v386;
  v387 = v381;
  v388 = v382;
  if (v386 >> 6 <= 1u)
  {
    sub_1D67F58E4(v374, v371);

    v395 = v389;
    v396 = v390;
    v397 = v391;
    LOBYTE(v398) = v392;
    v393 = v387;
    v394 = v388;
    v211 = v361;
LABEL_139:
    type metadata accessor for FormatLayoutError();
    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v294 = v211;
    v294[1] = v210;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D6D09524(&v393, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
    sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
    v245 = v352;
    return sub_1D6D0A444(v245, type metadata accessor for FeedCustomItem);
  }

  LODWORD(v351) = v386;
  v336 = *(&v383 + 1);
  v295 = v383;
  v342 = *(&v384 + 1);
  v337 = v384;
  v343 = v385;
  v380 = v383;
  sub_1D6D098B8(0);
  sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8);
  sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition);
  v353 = v295;

  v296 = sub_1D72623BC();
  result = type metadata accessor for FormatCustomItem.Resolved();
  v297 = *(v209 + *(result + 28));
  v361 = *(v297 + 2);
  if (!v361)
  {
LABEL_159:

    v380 = v297;
    sub_1D5B5AD98();
    sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98);
    sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption);
    result = sub_1D72623AC();
    v312 = result;
    v313 = v353;
    v361 = *(v353 + 16);
    if (!v361)
    {
LABEL_170:
      sub_1D60CF6F4(v313, v336, v337, v342, v343, *(&v343 + 1), v351);

      sub_1D62B7D78(&v381);
      sub_1D6D0A444(v352, type metadata accessor for FeedCustomItem);
      v172 = v374;
      v168 = v375;
      v218 = v377;
      v173 = v371;
LABEL_81:
      v220 = v400;
      v219 = v401;
      v221 = *(v218 + 88);
      v377 = v400;
      if (v365)
      {
        swift_beginAccess();
        if ((v221 & 1) != 0 || !*(v168[4] + 16) || (, sub_1D5B69D90(v356, v357), v223 = v222, , (v223 & 1) == 0))
        {
          v224 = *(v168[10] + 16);
          if (v224)
          {
            sub_1D5B69D90(v366, v363);
            v224 = 0x4000000000;
            if ((v225 & 1) == 0)
            {
              v224 = 0;
            }
          }

          *&v393 = v224;

          v226 = sub_1D713CCF4();
          v227 = sub_1D5BA8750(v226, v219);

          v228 = sub_1D5BA8750(MEMORY[0x1E69E7CC0], v227);
          *(&v382 + 1) = v367;
          *&v383 = v370;
          v229 = __swift_allocate_boxed_opaque_existential_1(&v381);
          sub_1D6D09934(v368, v229, type metadata accessor for FeedCustomItem);
          sub_1D5B68374(&v381, &v387);

          v230 = v228;
          if (v173)
          {
            v230 = sub_1D5BA8750(&unk_1F50F6C70, v228);
            sub_1D5BFB68C(&unk_1F50F6C90);
          }

          v367 = v228;
          v370 = v219;
          *(&v389 + 1) = v230;
          v231 = v220[2];
          if (v231)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v231, 0);
            v232 = v393;
            v233 = v220 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v234 = *(v364 + 72);
            v235 = v231;
            do
            {
              v236 = v372;
              sub_1D6D09934(v233, v372, type metadata accessor for FormatOption);
              v237 = swift_allocBox();
              sub_1D6D0A058(v236, v238, type metadata accessor for FormatOption);
              *&v393 = v232;
              v240 = *(v232 + 16);
              v239 = *(v232 + 24);
              if (v240 >= v239 >> 1)
              {
                sub_1D5D24610((v239 > 1), v240 + 1, 1);
                v232 = v393;
              }

              *(v232 + 16) = v240 + 1;
              *(v232 + 8 * v240 + 32) = v237 | 0x1000000000000004;
              v233 += v234;
              --v235;
            }

            while (v235);
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v172 = v374;
            v173 = v371;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v232 = MEMORY[0x1E69E7CC0];
          }

          *&v390 = v232;
          *(&v390 + 1) = v172;
          *&v391 = v173;
          *(&v391 + 1) = v402;
          *&v392 = v379;
          *(&v392 + 1) = v378;
          v399 = v376;
          v393 = v387;
          v394 = v388;
          v395 = v389;
          v396 = v390;
          v397 = v391;
          v398 = v392;
          v263 = v357;

          sub_1D67F5880(v172, v173);
          sub_1D6D60C48(&v393, v356, v263);
          v264 = v349;
          sub_1D6D09934(v368, v349, type metadata accessor for FeedCustomItem);
          v265 = v264;
          v266 = v345;
          sub_1D6D09934(v265, v345, type metadata accessor for FeedCustomItem);
          if (v173)
          {
            v267 = sub_1D5BA8750(&unk_1F50F6CA0, v367);
            sub_1D5BFB68C(&unk_1F50F6CC0);
            v268 = v377;
          }

          else
          {
            v268 = v377;
            v267 = v367;
          }

          *(v266 + *(v362 + 28)) = v267;
          if (v231)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v231, 0);
            v274 = v393;
            v275 = v268 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v276 = *(v364 + 72);
            do
            {
              v277 = v372;
              sub_1D6D09934(v275, v372, type metadata accessor for FormatOption);
              v278 = swift_allocBox();
              sub_1D6D0A058(v277, v279, type metadata accessor for FormatOption);
              *&v393 = v274;
              v281 = *(v274 + 16);
              v280 = *(v274 + 24);
              if (v281 >= v280 >> 1)
              {
                sub_1D5D24610((v280 > 1), v281 + 1, 1);
                v274 = v393;
              }

              *(v274 + 16) = v281 + 1;
              *(v274 + 8 * v281 + 32) = v278 | 0x1000000000000004;
              v275 += v276;
              --v231;
            }

            while (v231);
            sub_1D6D0A444(v349, type metadata accessor for FeedCustomItem);
            v266 = v345;
LABEL_132:
            v172 = v374;
            v173 = v371;
LABEL_136:
            v290 = v362;
            *(v266 + *(v362 + 32)) = v274;
            v291 = (v266 + *(v290 + 36));
            *v291 = v172;
            v291[1] = v173;
            v292 = v378;
            v293 = v379;
            v291[2] = v402;
            v291[3] = v293;
            v291[4] = v292;
            v291[5] = v376;
            sub_1D6D0A058(v266, v348, sub_1D6D09328);
            swift_endAccess();

            return sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
          }

          v289 = v349;
          goto LABEL_135;
        }
      }

      else
      {
        swift_beginAccess();
        if ((v221 & 1) != 0 || !*(v168[3] + 16) || (, sub_1D5B69D90(v356, v357), v242 = v241, , (v242 & 1) == 0))
        {
          v246 = *(v168[10] + 16);
          if (v246)
          {
            sub_1D5B69D90(v366, v363);
            v246 = 0x4000000000;
            if ((v247 & 1) == 0)
            {
              v246 = 0;
            }
          }

          *&v393 = v246;

          v248 = sub_1D713CCF4();
          v249 = sub_1D5BA8750(v248, v219);

          v250 = sub_1D5BA8750(MEMORY[0x1E69E7CC0], v249);
          *(&v382 + 1) = v367;
          *&v383 = v370;
          v251 = __swift_allocate_boxed_opaque_existential_1(&v381);
          sub_1D6D09934(v368, v251, type metadata accessor for FeedCustomItem);
          sub_1D5B68374(&v381, &v387);

          v252 = v250;
          if (v173)
          {
            v252 = sub_1D5BA8750(&unk_1F50F6CD0, v250);
            sub_1D5BFB68C(&unk_1F50F6CF0);
          }

          v367 = v250;
          v370 = v219;
          *(&v389 + 1) = v252;
          v253 = v220[2];
          if (v253)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v253, 0);
            v254 = v393;
            v255 = v220 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v256 = *(v364 + 72);
            v257 = v253;
            do
            {
              v258 = v372;
              sub_1D6D09934(v255, v372, type metadata accessor for FormatOption);
              v259 = swift_allocBox();
              sub_1D6D0A058(v258, v260, type metadata accessor for FormatOption);
              *&v393 = v254;
              v262 = *(v254 + 16);
              v261 = *(v254 + 24);
              if (v262 >= v261 >> 1)
              {
                sub_1D5D24610((v261 > 1), v262 + 1, 1);
                v254 = v393;
              }

              *(v254 + 16) = v262 + 1;
              *(v254 + 8 * v262 + 32) = v259 | 0x1000000000000004;
              v255 += v256;
              --v257;
            }

            while (v257);
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v172 = v374;
            v173 = v371;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v381);
            v254 = MEMORY[0x1E69E7CC0];
          }

          *&v390 = v254;
          *(&v390 + 1) = v172;
          *&v391 = v173;
          *(&v391 + 1) = v402;
          *&v392 = v379;
          *(&v392 + 1) = v378;
          v399 = v376;
          v393 = v387;
          v394 = v388;
          v395 = v389;
          v396 = v390;
          v397 = v391;
          v398 = v392;
          v269 = v357;

          sub_1D67F5880(v172, v173);
          sub_1D6D60C48(&v393, v356, v269);
          v270 = v350;
          sub_1D6D09934(v368, v350, type metadata accessor for FeedCustomItem);
          v271 = v270;
          v266 = v346;
          sub_1D6D09934(v271, v346, type metadata accessor for FeedCustomItem);
          if (v173)
          {
            v272 = sub_1D5BA8750(&unk_1F50F6D00, v367);
            sub_1D5BFB68C(&unk_1F50F6D20);
            v273 = v377;
          }

          else
          {
            v273 = v377;
            v272 = v367;
          }

          *(v266 + *(v362 + 28)) = v272;
          if (v253)
          {
            *&v393 = MEMORY[0x1E69E7CC0];
            sub_1D5D24610(0, v253, 0);
            v274 = v393;
            v282 = v273 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
            v283 = *(v364 + 72);
            do
            {
              v284 = v372;
              sub_1D6D09934(v282, v372, type metadata accessor for FormatOption);
              v285 = swift_allocBox();
              sub_1D6D0A058(v284, v286, type metadata accessor for FormatOption);
              *&v393 = v274;
              v288 = *(v274 + 16);
              v287 = *(v274 + 24);
              if (v288 >= v287 >> 1)
              {
                sub_1D5D24610((v287 > 1), v288 + 1, 1);
                v274 = v393;
              }

              *(v274 + 16) = v288 + 1;
              *(v274 + 8 * v288 + 32) = v285 | 0x1000000000000004;
              v282 += v283;
              --v253;
            }

            while (v253);
            sub_1D6D0A444(v350, type metadata accessor for FeedCustomItem);
            v266 = v346;
            goto LABEL_132;
          }

          v289 = v350;
LABEL_135:
          sub_1D6D0A444(v289, type metadata accessor for FeedCustomItem);
          v274 = MEMORY[0x1E69E7CC0];
          goto LABEL_136;
        }
      }

      sub_1D6752B3C();
      swift_allocError();
      v243 = v357;
      *v244 = v356;
      *(v244 + 8) = v243;
      *(v244 + 56) = 0;
      swift_willThrow();
      swift_endAccess();

      sub_1D67F58E4(v172, v173);

      v245 = v368;
      return sub_1D6D0A444(v245, type metadata accessor for FeedCustomItem);
    }

    v314 = 0;
    v315 = v353 + ((*(v347 + 80) + 32) & ~*(v347 + 80));
    v359 = (v364 + 56);
    v360 = result;
    v316 = v335;
    v358 = v162;
    while (1)
    {
      if (v314 >= *(v313 + 16))
      {
        goto LABEL_174;
      }

      sub_1D6D09934(v315 + *(v347 + 72) * v314, v316, type metadata accessor for FormatPropertyDefinition);
      v323 = FormatPropertyDefinition.identifier.getter();
      if (*(v312 + 16))
      {
        v325 = sub_1D5B69D90(v323, v324);
        v327 = v326;
        v313 = v353;

        if (v327)
        {
          v317 = v315;
          v318 = v313;
          v319 = v360;
          v320 = v364;
          v321 = v344;
          sub_1D6D09934(v360[7] + *(v364 + 72) * v325, v344, type metadata accessor for FormatOption);
          sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
          v322 = *(v320 + 56);
          v312 = v319;
          v313 = v318;
          v315 = v317;
          v322(v321, 0, 1, v373);
          result = sub_1D6D0A444(v321, sub_1D5E04C00);
          goto LABEL_162;
        }
      }

      else
      {
      }

      v328 = v344;
      (*v359)(v344, 1, 1, v373);
      sub_1D6D0A444(v328, sub_1D5E04C00);
      if (sub_1D695C4AC())
      {

        sub_1D67F58E4(v374, v371);

        sub_1D60CF6F4(v313, v336, v337, v342, v343, *(&v343 + 1), v351);

        type metadata accessor for FormatLayoutError();
        sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        swift_allocError();
        v330 = v329;
        sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition);
        v332 = *(v331 + 48);
        v333 = v352;
        sub_1D6D09934(v352, v330, type metadata accessor for FeedCustomItem);
        sub_1D6D09934(v316, v330 + v332, type metadata accessor for FormatPropertyDefinition);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D62B7D78(&v381);
        sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
        sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
        v245 = v333;
        return sub_1D6D0A444(v245, type metadata accessor for FeedCustomItem);
      }

      result = sub_1D6D0A444(v316, type metadata accessor for FormatPropertyDefinition);
      v312 = v360;
LABEL_162:
      if (v361 == ++v314)
      {
        goto LABEL_170;
      }
    }
  }

  v298 = 0;
  v358 = (*(v364 + 80) + 32) & ~*(v364 + 80);
  v359 = v297;
  v360 = &v297[v358];
  while (v298 < *(v297 + 2))
  {
    v300 = *(v364 + 72);
    sub_1D6D09934(v360 + v300 * v298, v164, type metadata accessor for FormatOption);
    if (*(v296 + 16) && (v301 = sub_1D5B69D90(*v164, v164[1]), (v302 & 1) != 0))
    {
      v303 = v338;
      sub_1D6D09934(*(v296 + 56) + *(v347 + 72) * v301, v338, type metadata accessor for FormatPropertyDefinition);
      v304 = v341;
      sub_1D6D0A058(v303, v341, type metadata accessor for FormatPropertyDefinition);
      type metadata accessor for FormatOptionConverter();
      v305 = v340;
      v306 = v369;
      sub_1D6AC31AC(v164, v304, v340);
      if (v306)
      {

        sub_1D60CF6F4(v353, v336, v337, v342, v343, *(&v343 + 1), v351);
        sub_1D62B7D78(&v381);
        sub_1D67F58E4(v374, v371);
        sub_1D6D0A444(v341, type metadata accessor for FormatPropertyDefinition);

        sub_1D6D0A444(v368, type metadata accessor for FeedCustomItem);
        sub_1D6D0A444(v164, type metadata accessor for FormatOption);
        sub_1D6D0A444(v352, type metadata accessor for FeedCustomItem);
      }

      sub_1D6D09934(v305, v339, type metadata accessor for FormatOption);
      v307 = swift_isUniquelyReferenced_nonNull_native();
      v369 = 0;
      if ((v307 & 1) == 0)
      {
        v162 = sub_1D5CEABA0(0, v162[2] + 1, 1, v162);
      }

      v309 = v162[2];
      v308 = v162[3];
      v310 = v309 + 1;
      if (v309 >= v308 >> 1)
      {
        v162 = sub_1D5CEABA0(v308 > 1, v309 + 1, 1, v162);
      }

      sub_1D6D0A444(v340, type metadata accessor for FormatOption);
      sub_1D6D0A444(v341, type metadata accessor for FormatPropertyDefinition);
      v299 = v339;
    }

    else
    {
      sub_1D6D09934(v164, v355, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_1D5CEABA0(0, v162[2] + 1, 1, v162);
      }

      v309 = v162[2];
      v311 = v162[3];
      v310 = v309 + 1;
      if (v309 >= v311 >> 1)
      {
        v162 = sub_1D5CEABA0(v311 > 1, v309 + 1, 1, v162);
      }

      v299 = v355;
    }

    ++v298;
    sub_1D6D0A444(v164, type metadata accessor for FormatOption);
    v162[2] = v310;
    result = sub_1D6D0A058(v299, v162 + v358 + v309 * v300, type metadata accessor for FormatOption);
    v400 = v162;
    v297 = v359;
    if (v361 == v298)
    {
      goto LABEL_159;
    }
  }

  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

char *sub_1D6CE1A94@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v448 = a6;
  v449 = a7;
  v472 = a5;
  v473 = a4;
  v496 = a3;
  v471 = a1;
  v441 = a9;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v432 = &v416 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v438 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v423 = &v416 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v427 = &v416 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v433 = &v416 - v26;
  v467 = type metadata accessor for FormatOption();
  v457 = *(v467 - 8);
  MEMORY[0x1EEE9AC00](v467, v27);
  v426 = &v416 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v422 = &v416 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v447 = &v416 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v416 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v466 = &v416 - v41;
  sub_1D6D0935C(0);
  v456 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v436 = &v416 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v435 = &v416 - v47;
  sub_1D6AC4E74();
  v420 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v421 = &v416 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v431 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v431, v51);
  v443 = &v416 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v430 = &v416 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v451 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v451, v56);
  v452 = &v416 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09F58(0);
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v437 = &v416 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61, v62);
  *&v434 = &v416 - v63;
  sub_1D5D5046C(0);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v67 = &v416 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v416 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v450 = &v416 - v74;
  MEMORY[0x1EEE9AC00](v75, v76);
  v78 = &v416 - v77;
  MEMORY[0x1EEE9AC00](v79, v80);
  v446 = (&v416 - v81);
  MEMORY[0x1EEE9AC00](v82, v83);
  v460 = &v416 - v84;
  v85 = type metadata accessor for FeedRecipe();
  v461 = *(v85 - 8);
  v462 = v85;
  MEMORY[0x1EEE9AC00](v85, v86);
  v424 = &v416 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88, v89);
  v442 = &v416 - v90;
  MEMORY[0x1EEE9AC00](v91, v92);
  v428 = &v416 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  v440 = &v416 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  v439 = &v416 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v103 = &v416 - v102;
  MEMORY[0x1EEE9AC00](v104, v105);
  v445 = &v416 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v444 = &v416 - v109;
  MEMORY[0x1EEE9AC00](v110, v111);
  v112 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v113 = *(v112 + 16);
  v459 = (&v416 - v114);
  v453 = a2;
  v454 = v38;
  v429 = v71;
  v465 = v112;
  *(&v434 + 1) = v78;
  v115 = 0;
  if (v113)
  {
    v116 = (v112 + 32);
    do
    {
      v117 = *v116++;
      v118 = qword_1D7349118[v117];
      if ((v118 & ~v115) == 0)
      {
        v118 = 0;
      }

      v115 |= v118;
      --v113;
    }

    while (v113);
  }

  v119 = swift_allocObject();
  *(v119 + 16) = v115;
  sub_1D6D09390(0, &qword_1EDF155A8, type metadata accessor for FeedRecipe, type metadata accessor for FeedItemSorter);
  v464 = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = MEMORY[0x1E69E7CC0];
  v122 = swift_allocObject();
  *(v122 + 16) = sub_1D6D0A030;
  *(v122 + 24) = v119;
  swift_beginAccess();
  v123 = *(v121 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v121 + 16) = v123;
  v425 = v67;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v123 = sub_1D69909A0(0, v123[2] + 1, 1, v123);
    *(v121 + 16) = v123;
  }

  v126 = v123[2];
  v125 = v123[3];
  v469 = a8;
  if (v126 >= v125 >> 1)
  {
    v123 = sub_1D69909A0((v125 > 1), v126 + 1, 1, v123);
  }

  v458 = a11;
  v470 = a10;
  v123[2] = v126 + 1;
  v127 = &v123[2 * v126];
  v127[4] = sub_1D6D0A038;
  v127[5] = v122;
  *(v121 + 16) = v123;
  swift_endAccess();

  v128 = type metadata accessor for GroupLayoutBindingContext();
  v129 = v471;
  v130 = *&v471[v128[14]];
  v131 = *(v130 + 16);
  v132 = v473;

  v455 = v128;
  if (v131)
  {
    v133 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, v496, v132);
    if (v134)
    {
      if (*(*(*(v130 + 56) + 8 * v133) + 16))
      {

        v136 = v469;
        v137 = v135;
        v138 = v463;
        v139 = sub_1D5BF08EC(v135, v469, v470);
        if (v138)
        {

          v140 = v138;
          goto LABEL_18;
        }

        v463 = 0;
        v419 = v137;
        v165 = sub_1D714EE30(v139);

        v166 = v472;
        if (v165)
        {
          if (*(v165 + 16))
          {
            v167 = *&v129[v128[17]];
            v416 = v128[19];
            v417 = *&v129[v416];
            v168 = v417;
            v418 = v165;
            if (v417 < v167)
            {
              v169 = v446;
              sub_1D6D04354(v129, v418, v472, v121, 1, v446);
              v171 = v461;
              v170 = v462;
              if ((*(v461 + 48))(v169, 1, v462) != 1)
              {

                sub_1D6D0A058(v169, v103, type metadata accessor for FeedRecipe);
                v200 = v103;
                v176 = v460;
                v166 = v472;
                sub_1D6D0A058(v200, v460, type metadata accessor for FeedRecipe);
                (*(v171 + 56))(v176, 0, 1, v170);
                v175 = v170;
LABEL_62:
                if ((*(v171 + 48))(v176, 1, v175) != 1)
                {
                  v205 = v445;
                  sub_1D6D0A058(v176, v445, type metadata accessor for FeedRecipe);
                  result = FeedRecipe.traits.getter(&v487);
                  v207 = v453;
                  if ((v487 & 0x1000) != 0)
                  {
                    if (__OFADD__(v417, 1))
                    {
LABEL_212:
                      __break(1u);
                      goto LABEL_213;
                    }

                    *&v471[v416] = v417 + 1;
                  }

                  if (v458)
                  {
                    v208 = v471;
                    v209 = v419;
                  }

                  else
                  {
                    MEMORY[0x1EEE9AC00](result, v206);
                    *(&v416 - 2) = v205;
                    v210 = v463;
                    v209 = sub_1D5BF5F6C(sub_1D6D0A54C, (&v416 - 4), v419);
                    v463 = v210;
                    v208 = v471;
                  }

                  *&v487 = 0x6963655264656546;
                  *(&v487 + 1) = 0xEA00000000006570;
                  *&v488 = v496;
                  *(&v488 + 1) = v473;
                  v211 = v208;
                  sub_1D5BDACA8(&v487, v209);

                  v212 = v444;
                  sub_1D6D0A058(v205, v444, type metadata accessor for FeedRecipe);
                  v213 = v459;
                  sub_1D6D0A058(v212, v459, type metadata accessor for FeedRecipe);
                  v215 = *v213;
                  v214 = v213[1];
                  v216 = v469;
                  v217 = v470;
                  v455 = sub_1D6196E44(v207, v469, v470, *v213, v214);
                  v495 = v455;
                  v461 = v214;
                  v218 = sub_1D6196F00(v207, v216, v217, v215, v214);
                  v494 = v218;
                  v460 = v215;
                  if (!v217)
                  {
                    v228 = 0;
                    v496 = 0;
                    v472 = 0;
                    v473 = 0;
                    v232 = 0;
                    v470 = 0;
                    v220 = v211;
                    v190 = v462;
                    goto LABEL_102;
                  }

                  v219 = v217;
                  v220 = v211;
                  if (!*(v207 + 16))
                  {
                    v228 = 0;
                    v496 = 0;
                    v472 = 0;
                    v473 = 0;
                    v232 = 0;
                    v470 = 0;
                    v190 = v462;
                    goto LABEL_102;
                  }

                  v221 = sub_1D5B69D90(v469, v219);
                  v190 = v462;
                  if ((v222 & 1) == 0)
                  {
                    goto LABEL_101;
                  }

                  v223 = *(*(*(v207 + 56) + 8 * v221) + 136);
                  if (!*(v223 + 16))
                  {
                    goto LABEL_101;
                  }

                  v224 = sub_1D5B69D90(v215, v461);
                  if (v225)
                  {
                    v226 = (*(v223 + 56) + 48 * v224);
                    v228 = *v226;
                    v227 = v226[1];
                    v229 = v226[2];
                    v230 = v226[3];
                    v231 = v226[5];
                    v465 = v226[4];
                    v496 = v227;

                    v473 = v229;

                    v472 = v230;
                    v232 = v465;

                    v470 = v231;

LABEL_96:

                    goto LABEL_102;
                  }

                  goto LABEL_100;
                }

                sub_1D6D0A444(v176, sub_1D5D5046C);
                sub_1D5ED8048();
                v140 = swift_allocError();
                *v141 = 0x6963655264656546;
                *(v141 + 8) = 0xEA00000000006570;
                v204 = v473;
                *(v141 + 16) = v496;
                *(v141 + 24) = v204;
                *(v141 + 32) = v166;
                goto LABEL_16;
              }

              result = sub_1D6D0A444(v169, sub_1D5D5046C);
              v129 = v471;
              v128 = v455;
              v168 = v417;
            }

            v172 = *&v129[v128[18]];
            v173 = __OFSUB__(v172, v168);
            v174 = v172 - v168;
            if (v173)
            {
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
              goto LABEL_212;
            }

            v175 = v462;
            v176 = v460;
            if (v174 < 1)
            {
              v193 = v434;
              v194 = v418;
              v195 = v166;
              v196 = v471;
              sub_1D6D022EC(v418, v195, v121, 4096, 0, 1, v434);
              sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
              if ((*(*(v197 - 8) + 48))(v193, 1, v197) == 1)
              {
                sub_1D6D0A444(v193, sub_1D6D09F58);
                v171 = v461;
                v198 = *(&v434 + 1);
                (*(v461 + 56))(*(&v434 + 1), 1, 1, v175);
                v176 = v460;
                v199 = v196;
                v166 = v472;
                sub_1D6D038E8(v199, v194, v472, v121, 1, v460);

                if ((*(v171 + 48))(v198, 1, v175) != 1)
                {
                  sub_1D6D0A444(v198, sub_1D5D5046C);
                }
              }

              else
              {

                v201 = *(&v434 + 1);
                sub_1D6D0A058(v193, *(&v434 + 1), type metadata accessor for FeedRecipe);
                v171 = v461;
                v202 = *(v461 + 56);
                v202(v201, 0, 1, v462);
                v203 = v201;
                v176 = v460;
                sub_1D6D0A058(v203, v460, type metadata accessor for FeedRecipe);
                v202(v176, 0, 1, v462);
                v175 = v462;
                v166 = v472;
              }
            }

            else
            {
              sub_1D6D038E8(v471, v418, v166, v121, 1, v460);

              v171 = v461;
            }

            goto LABEL_62;
          }
        }

        sub_1D5ED8048();
        v140 = swift_allocError();
        *v141 = 0x6963655264656546;
        *(v141 + 8) = 0xEA00000000006570;
        v191 = v473;
        *(v141 + 16) = v496;
        *(v141 + 24) = v191;
        *(v141 + 32) = v166;
        *(v141 + 40) = 1;
        *(v141 + 48) = v136;
        goto LABEL_17;
      }
    }
  }

  sub_1D5ED8048();
  v140 = swift_allocError();
  *v141 = 0x6963655264656546;
  *(v141 + 8) = 0xEA00000000006570;
  *(v141 + 16) = v496;
  *(v141 + 24) = v132;
  *(v141 + 32) = v472;
LABEL_16:
  *(v141 + 40) = 1;
  *(v141 + 48) = v469;
LABEL_17:
  *(v141 + 56) = v470;
  *(v141 + 64) = 0;
  swift_willThrow();

LABEL_18:

  if ((*(v468 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    return swift_willThrow();
  }

  v142 = *(v465 + 16);
  if (v142)
  {
    v143 = 0;
    v144 = (v465 + 32);
    do
    {
      v145 = *v144++;
      v146 = qword_1D7349118[v145];
      if ((v146 & ~v143) == 0)
      {
        v146 = 0;
      }

      v143 |= v146;
      --v142;
    }

    while (v142);
  }

  else
  {
    v143 = 0;
  }

  v148 = swift_allocObject();
  *(v148 + 16) = v143;
  v149 = swift_allocObject();
  v470 = v149;
  *(v149 + 16) = MEMORY[0x1E69E7CC0];
  v150 = (v149 + 16);
  v151 = swift_allocObject();
  *(v151 + 16) = sub_1D6D0A5EC;
  *(v151 + 24) = v148;
  swift_beginAccess();
  v152 = *v150;

  v153 = swift_isUniquelyReferenced_nonNull_native();
  *v150 = v152;
  if ((v153 & 1) == 0)
  {
    v152 = sub_1D69909A0(0, v152[2] + 1, 1, v152);
    *v150 = v152;
  }

  v155 = v152[2];
  v154 = v152[3];
  if (v155 >= v154 >> 1)
  {
    v152 = sub_1D69909A0((v154 > 1), v155 + 1, 1, v152);
  }

  v152[2] = v155 + 1;
  v156 = &v152[2 * v155];
  v156[4] = sub_1D6D0A520;
  v156[5] = v151;
  *(v470 + 16) = v152;
  swift_endAccess();

  v157 = *(v130 + 16);
  v158 = v473;

  if (!v157 || (v159 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, v496, v158), (v160 & 1) == 0) || (v161 = *(*(v130 + 56) + 8 * v159), !*(v161 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v164 = 0x6963655264656546;
    *(v164 + 8) = 0xEA00000000006570;
    *(v164 + 16) = v496;
    *(v164 + 24) = v158;
    *(v164 + 32) = v472;
LABEL_35:
    *(v164 + 40) = 1;
    *(v164 + 48) = 0;
    *(v164 + 56) = 0;
    *(v164 + 64) = 0;
    swift_willThrow();
  }

  v163 = sub_1D5BF08EC(v162, 0, 0);
  v177 = sub_1D714EE30(v163);

  v178 = v472;
  if (!v177)
  {
LABEL_56:

    sub_1D5ED8048();
    swift_allocError();
    *v164 = 0x6963655264656546;
    *(v164 + 8) = 0xEA00000000006570;
    v192 = v473;
    *(v164 + 16) = v496;
    *(v164 + 24) = v192;
    *(v164 + 32) = v178;
    goto LABEL_35;
  }

  if (!*(v177 + 16))
  {

    goto LABEL_56;
  }

  v463 = 0;
  v179 = v455;
  result = v471;
  v180 = *&v471[*(v455 + 68)];
  v465 = *(v455 + 76);
  v182 = v450;
  v469 = *&v471[v465];
  v181 = v469;
  if (v469 < v180)
  {
    v183 = v429;
    sub_1D6D04354(v471, v177, v472, v470, 1, v429);
    v184 = v461;
    v185 = v462;
    if ((*(v461 + 48))(v183, 1, v462) != 1)
    {

      v238 = v424;
      sub_1D6D0A058(v183, v424, type metadata accessor for FeedRecipe);
      v178 = v472;
      sub_1D6D0A058(v238, v182, type metadata accessor for FeedRecipe);
      (*(v184 + 56))(v182, 0, 1, v185);
      v190 = v185;
      goto LABEL_83;
    }

    sub_1D6D0A444(v183, sub_1D5D5046C);
    result = v471;
    v179 = v455;
    v181 = v469;
  }

  v186 = *&result[*(v179 + 72)];
  v173 = __OFSUB__(v186, v181);
  v187 = v186 - v181;
  if (v173)
  {
    goto LABEL_210;
  }

  v188 = v437;
  v189 = v470;
  if (v187 < 1)
  {
    sub_1D6D022EC(v177, v178, v470, 4096, 0, 1, v437);
    sub_1D6D0A350(0, &unk_1EDF12E20, type metadata accessor for FeedRecipe, sub_1D6D09FFC);
    if ((*(*(v233 - 8) + 48))(v188, 1, v233) == 1)
    {
      sub_1D6D0A444(v188, sub_1D6D09F58);
      v184 = v461;
      v234 = v462;
      v235 = v189;
      v236 = v425;
      (*(v461 + 56))(v425, 1, 1, v462);
      sub_1D6D038E8(v471, v177, v472, v235, 1, v182);
      v190 = v234;

      v237 = (*(v184 + 48))(v236, 1, v234);
      v178 = v472;
      if (v237 != 1)
      {
        sub_1D6D0A444(v236, sub_1D5D5046C);
      }
    }

    else
    {

      v464 = type metadata accessor for FeedRecipe;
      v239 = v425;
      sub_1D6D0A058(v188, v425, type metadata accessor for FeedRecipe);
      v184 = v461;
      v190 = v462;
      v240 = *(v461 + 56);
      v240(v239, 0, 1, v462);
      sub_1D6D0A058(v239, v450, v464);
      v240(v450, 0, 1, v190);
      v182 = v450;
      v178 = v472;
    }
  }

  else
  {
    sub_1D6D038E8(v471, v177, v178, v470, 1, v182);

    v184 = v461;
    v190 = v462;
  }

LABEL_83:
  if ((*(v184 + 48))(v182, 1, v190) == 1)
  {

    sub_1D6D0A444(v182, sub_1D5D5046C);
    sub_1D5ED8048();
    swift_allocError();
    *v241 = 0x6963655264656546;
    *(v241 + 8) = 0xEA00000000006570;
    v242 = v473;
    *(v241 + 16) = v496;
    *(v241 + 24) = v242;
    *(v241 + 32) = v178;
    *(v241 + 40) = 1;
    *(v241 + 48) = 0;
    *(v241 + 56) = 0;
    *(v241 + 64) = 0;
    swift_willThrow();
  }

  sub_1D6D0A058(v182, v442, type metadata accessor for FeedRecipe);
  result = FeedRecipe.traits.getter(&v487);
  if ((v487 & 0x1000) == 0)
  {
    goto LABEL_88;
  }

  if (!__OFADD__(v469, 1))
  {
    *&v471[v465] = v469 + 1;
LABEL_88:
    if (v458)
    {
      v213 = v459;
      v244 = v442;
    }

    else
    {
      MEMORY[0x1EEE9AC00](result, v243);
      v244 = v442;
      *(&v416 - 2) = v442;
      v245 = v463;
      v161 = sub_1D5BF5F6C(sub_1D5BF619C, (&v416 - 4), v161);
      v463 = v245;
      v213 = v459;
    }

    *&v487 = 0x6963655264656546;
    *(&v487 + 1) = 0xEA00000000006570;
    *&v488 = v496;
    *(&v488 + 1) = v473;
    sub_1D5BDACA8(&v487, v161);

    v246 = v428;
    sub_1D6D0A058(v244, v428, type metadata accessor for FeedRecipe);
    sub_1D6D0A058(v246, v213, type metadata accessor for FeedRecipe);
    v247 = *v213;
    v248 = v213[1];
    v249 = v453;
    v250 = sub_1D6196E44(v453, 42, 0xE100000000000000, *v213, v248);
    v495 = v250;
    v460 = v247;
    v461 = v248;
    v218 = sub_1D6196F00(v249, 42, 0xE100000000000000, v247, v248);
    v494 = v218;
    v251 = *(v249 + 16);
    v455 = v250;
    if (!v251)
    {

      v228 = 0;
      v496 = 0;
      v472 = 0;
      v473 = 0;
      v232 = 0;
      v470 = 0;
      v220 = v471;
      goto LABEL_102;
    }

    v252 = sub_1D5B69D90(42, 0xE100000000000000);
    v253 = v249;
    v220 = v471;
    if ((v254 & 1) == 0 || (v255 = *(*(*(v253 + 56) + 8 * v252) + 136), !*(v255 + 16)))
    {

LABEL_101:
      v228 = 0;
      v496 = 0;
      v472 = 0;
      v473 = 0;
      v232 = 0;
      v470 = 0;
LABEL_102:
      *(&v488 + 1) = v190;
      v264 = sub_1D6D098EC(&qword_1EDF12E00, type metadata accessor for FeedRecipe);
      *&v489 = v264;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v487);
      sub_1D6D09934(v213, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
      v266 = v452;
      sub_1D6818590(&v487, v452);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v469 = v228;
      v464 = v264;
      if (EnumCaseMultiPayload != 8)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v268 = v430;
          sub_1D6D0A058(v266, v430, type metadata accessor for FeedWebEmbed);
          v269 = sub_1D6944620();
          sub_1D5D505F0(v269);
          v270 = sub_1D69449D8();
          sub_1D5B886D0(v270);
          v271 = type metadata accessor for FeedWebEmbed;
          v272 = v268;
        }

        else
        {
          v271 = type metadata accessor for FeedItem;
          v272 = v266;
        }

        sub_1D6D0A444(v272, v271);
        v289 = v463;
        goto LABEL_112;
      }

      v273 = v266;
      v274 = v443;
      sub_1D6D0A058(v273, v443, type metadata accessor for FeedCustomItem);
      v275 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
      swift_beginAccess();
      v276 = *(v275 + 8);
      v277 = v274 + *(v431 + 20);
      v279 = *(v277 + 16);
      v278 = *(v277 + 24);
      if (*(v276 + 16))
      {

        v280 = sub_1D5B69D90(v279, v278);
        if (v281)
        {
          v465 = v232;
          v282 = v421;
          sub_1D6D09934(*(v276 + 56) + *(v420 + 72) * v280, v421, sub_1D6AC4E74);
          v283 = *(v282 + 32);
          v284 = *(v282 + 64);
          v478 = *(v282 + 48);
          v479 = v284;
          v480 = *(v282 + 80);
          v285 = *(v282 + 16);
          v475 = *v282;
          v476 = v285;
          v477 = v283;
          sub_1D62B7D1C(&v475, v474);
          sub_1D6D0A444(v282, sub_1D6AC4E74);

          v483 = v477;
          v484 = v478;
          v485 = v479;
          LOBYTE(v486) = v480;
          v286 = v480 >> 6;
          v481 = v475;
          v482 = v476;
          if (!v286)
          {
            v287 = v469;
            v288 = v496;
            goto LABEL_172;
          }

          v232 = v465;
          if (v286 == 1)
          {
            v287 = v469;
            v288 = v496;
LABEL_172:
            sub_1D67F58E4(v287, v288);

            v489 = v483;
            v490 = v484;
            v491 = v485;
            LOBYTE(v492) = v486;
            v487 = v481;
            v488 = v482;
            goto LABEL_173;
          }

          LODWORD(v444) = v480;
          v431 = *(&v477 + 1);
          v375 = v477;
          v434 = v478;
          v442 = *(&v479 + 1);
          v437 = v479;
          v474[0] = v477;
          sub_1D6D098B8(0);
          sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8);
          sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition);
          v445 = v375;

          v376 = sub_1D72623BC();
          result = type metadata accessor for FormatCustomItem.Resolved();
          v377 = *(v277 + *(result + 7));
          v453 = *(v377 + 16);
          if (v453)
          {
            v378 = 0;
            v450 = (*(v457 + 80) + 32) & ~*(v457 + 80);
            v451 = v377 + v450;
            v452 = v376;
            do
            {
              v380 = v454;
              if (v378 >= *(v377 + 16))
              {
                goto LABEL_209;
              }

              v381 = *(v457 + 72);
              sub_1D6D09934(v451 + v381 * v378, v454, type metadata accessor for FormatOption);
              if (*(v376 + 16) && (v382 = sub_1D5B69D90(*v380, v380[1]), (v383 & 1) != 0))
              {
                v446 = v218;
                v384 = v232;
                v385 = *(v376 + 56) + *(v438 + 72) * v382;
                v386 = v423;
                sub_1D6D09934(v385, v423, type metadata accessor for FormatPropertyDefinition);
                v387 = v380;
                v388 = v427;
                sub_1D6D0A058(v386, v427, type metadata accessor for FormatPropertyDefinition);
                type metadata accessor for FormatOptionConverter();
                v389 = v422;
                v390 = v463;
                sub_1D6AC31AC(v387, v388, v422);
                v463 = v390;
                if (v390)
                {

                  sub_1D60CF6F4(v445, v431, v434, *(&v434 + 1), v437, v442, v444);
                  sub_1D62B7D78(&v475);
                  sub_1D67F58E4(v469, v496);
                  sub_1D6D0A444(v427, type metadata accessor for FormatPropertyDefinition);

                  sub_1D6D0A444(v459, type metadata accessor for FeedRecipe);
                  sub_1D6D0A444(v454, type metadata accessor for FormatOption);
                  sub_1D6D0A444(v443, type metadata accessor for FeedCustomItem);
                }

                sub_1D6D09934(v389, v426, type metadata accessor for FormatOption);
                v391 = v389;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v446 = sub_1D5CEABA0(0, v446[2] + 1, 1, v446);
                }

                v232 = v384;
                v218 = v446;
                v393 = v446[2];
                v392 = v446[3];
                v394 = v393 + 1;
                if (v393 >= v392 >> 1)
                {
                  v218 = sub_1D5CEABA0(v392 > 1, v393 + 1, 1, v446);
                }

                sub_1D6D0A444(v391, type metadata accessor for FormatOption);
                sub_1D6D0A444(v427, type metadata accessor for FormatPropertyDefinition);
                v379 = v426;
              }

              else
              {
                sub_1D6D09934(v380, v447, type metadata accessor for FormatOption);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v218 = sub_1D5CEABA0(0, *(v218 + 2) + 1, 1, v218);
                }

                v393 = *(v218 + 2);
                v395 = *(v218 + 3);
                v394 = v393 + 1;
                if (v393 >= v395 >> 1)
                {
                  v218 = sub_1D5CEABA0(v395 > 1, v393 + 1, 1, v218);
                }

                v379 = v447;
              }

              ++v378;
              sub_1D6D0A444(v454, type metadata accessor for FormatOption);
              *(v218 + 2) = v394;
              result = sub_1D6D0A058(v379, &v218[v450 + v393 * v381], type metadata accessor for FormatOption);
              v494 = v218;
              v376 = v452;
            }

            while (v453 != v378);
          }

          v474[0] = v377;
          sub_1D5B5AD98();
          sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98);
          sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption);
          result = sub_1D72623AC();
          v396 = v445;
          v289 = v463;
          v453 = *(v445 + 16);
          if (!v453)
          {
            sub_1D60CF6F4(v445, v431, v434, *(&v434 + 1), v437, v442, v444);

            v220 = v471;
LABEL_205:
            sub_1D62B7D78(&v475);
            sub_1D6D0A444(v443, type metadata accessor for FeedCustomItem);
            v213 = v459;
            v228 = v469;
LABEL_112:
            v463 = v289;
            v290 = v495;
            v291 = v220[88];
            v471 = v494;
            if (v458)
            {
              v292 = v468;
              swift_beginAccess();
              if ((v291 & 1) != 0 || !*(*(v292 + 32) + 16) || (, sub_1D5B69D90(v448, v449), v294 = v293, , (v294 & 1) == 0))
              {
                FeedRecipe.traits.getter(&v487);
                v295 = v487;
                v296 = *(*(v292 + 80) + 16);
                if (v296)
                {
                  sub_1D5B69D90(v460, v461);
                  v296 = 0x4000000000;
                  if ((v297 & 1) == 0)
                  {
                    v296 = 0;
                  }
                }

                *&v487 = v296 | v295;

                v298 = sub_1D713CCF4();
                v461 = v290;
                v299 = sub_1D5BA8750(v298, v290);

                v300 = sub_1D6C9D930();
                v301 = sub_1D5BA8750(v300, v299);

                *(&v476 + 1) = v462;
                *&v477 = v464;
                v302 = __swift_allocate_boxed_opaque_existential_1(&v475);
                sub_1D6D09934(v213, v302, type metadata accessor for FeedRecipe);
                sub_1D5B68374(&v475, &v481);

                v303 = v301;
                if (v496)
                {
                  v303 = sub_1D5BA8750(&unk_1F50F6BB0, v301);
                  sub_1D5BFB68C(&unk_1F50F6BD0);
                }

                v464 = v301;
                v465 = v232;
                *(&v483 + 1) = v303;
                v304 = v471;
                v305 = *(v471 + 2);
                if (v305)
                {
                  *&v487 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v305, 0);
                  v306 = v487;
                  v307 = &v304[(*(v457 + 80) + 32) & ~*(v457 + 80)];
                  v308 = *(v457 + 72);
                  v309 = v305;
                  do
                  {
                    v310 = v466;
                    sub_1D6D09934(v307, v466, type metadata accessor for FormatOption);
                    v311 = swift_allocBox();
                    sub_1D6D0A058(v310, v312, type metadata accessor for FormatOption);
                    *&v487 = v306;
                    v314 = *(v306 + 16);
                    v313 = *(v306 + 24);
                    if (v314 >= v313 >> 1)
                    {
                      sub_1D5D24610((v313 > 1), v314 + 1, 1);
                      v306 = v487;
                    }

                    *(v306 + 16) = v314 + 1;
                    *(v306 + 8 * v314 + 32) = v311 | 0x1000000000000004;
                    v307 += v308;
                    --v309;
                  }

                  while (v309);
                  __swift_destroy_boxed_opaque_existential_1(&v475);
                  v213 = v459;
                  v228 = v469;
                  v232 = v465;
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v475);
                  v306 = MEMORY[0x1E69E7CC0];
                }

                *&v484 = v306;
                *(&v484 + 1) = v228;
                v340 = v496;
                *&v485 = v496;
                *(&v485 + 1) = v473;
                *&v486 = v472;
                *(&v486 + 1) = v232;
                v493 = v470;
                v487 = v481;
                v488 = v482;
                v489 = v483;
                v490 = v484;
                v491 = v485;
                v492 = v486;
                v341 = v449;

                sub_1D67F5880(v228, v340);
                sub_1D6D60C48(&v487, v448, v341);
                v342 = v439;
                sub_1D6D09934(v213, v439, type metadata accessor for FeedRecipe);
                v343 = v342;
                v344 = v435;
                sub_1D6D09934(v343, v435, type metadata accessor for FeedRecipe);
                if (v340)
                {
                  v345 = sub_1D5BA8750(&unk_1F50F6BE0, v464);
                  sub_1D5BFB68C(&unk_1F50F6C00);
                }

                else
                {
                  v345 = v464;
                }

                *(v344 + *(v456 + 28)) = v345;
                if (v305)
                {
                  *&v487 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v305, 0);
                  v351 = v487;
                  v352 = &v471[(*(v457 + 80) + 32) & ~*(v457 + 80)];
                  v353 = *(v457 + 72);
                  do
                  {
                    v354 = v466;
                    sub_1D6D09934(v352, v466, type metadata accessor for FormatOption);
                    v355 = swift_allocBox();
                    sub_1D6D0A058(v354, v356, type metadata accessor for FormatOption);
                    *&v487 = v351;
                    v358 = *(v351 + 16);
                    v357 = *(v351 + 24);
                    if (v358 >= v357 >> 1)
                    {
                      sub_1D5D24610((v357 > 1), v358 + 1, 1);
                      v351 = v487;
                    }

                    *(v351 + 16) = v358 + 1;
                    *(v351 + 8 * v358 + 32) = v355 | 0x1000000000000004;
                    v352 += v353;
                    --v305;
                  }

                  while (v305);
                  sub_1D6D0A444(v439, type metadata accessor for FeedRecipe);
                  v344 = v435;
LABEL_163:
                  v228 = v469;
                  v232 = v465;
LABEL_167:
                  v367 = v456;
                  *(v344 + *(v456 + 32)) = v351;
                  v368 = (v344 + *(v367 + 36));
                  v369 = v496;
                  *v368 = v228;
                  v368[1] = v369;
                  v370 = v472;
                  v368[2] = v473;
                  v368[3] = v370;
                  v371 = v470;
                  v368[4] = v232;
                  v368[5] = v371;
                  sub_1D6D0A058(v344, v441, sub_1D6D0935C);
                  swift_endAccess();

                  goto LABEL_168;
                }

                v366 = v439;
                goto LABEL_166;
              }
            }

            else
            {
              v315 = v468;
              swift_beginAccess();
              if ((v291 & 1) != 0 || !*(*(v315 + 24) + 16) || (, sub_1D5B69D90(v448, v449), v317 = v316, , (v317 & 1) == 0))
              {
                FeedRecipe.traits.getter(&v487);
                v320 = v487;
                v321 = *(*(v315 + 80) + 16);
                if (v321)
                {
                  sub_1D5B69D90(v460, v461);
                  v321 = 0x4000000000;
                  if ((v322 & 1) == 0)
                  {
                    v321 = 0;
                  }
                }

                *&v487 = v321 | v320;

                v323 = sub_1D713CCF4();
                v461 = v290;
                v324 = sub_1D5BA8750(v323, v290);

                v325 = sub_1D6C9D930();
                v326 = sub_1D5BA8750(v325, v324);

                *(&v476 + 1) = v462;
                *&v477 = v464;
                v327 = __swift_allocate_boxed_opaque_existential_1(&v475);
                sub_1D6D09934(v213, v327, type metadata accessor for FeedRecipe);
                sub_1D5B68374(&v475, &v481);

                v328 = v326;
                if (v496)
                {
                  v328 = sub_1D5BA8750(&unk_1F50F6C10, v326);
                  sub_1D5BFB68C(&unk_1F50F6C30);
                }

                v464 = v326;
                v465 = v232;
                *(&v483 + 1) = v328;
                v329 = v471;
                v330 = *(v471 + 2);
                if (v330)
                {
                  *&v487 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v330, 0);
                  v331 = v487;
                  v332 = &v329[(*(v457 + 80) + 32) & ~*(v457 + 80)];
                  v333 = *(v457 + 72);
                  v334 = v330;
                  do
                  {
                    v335 = v466;
                    sub_1D6D09934(v332, v466, type metadata accessor for FormatOption);
                    v336 = swift_allocBox();
                    sub_1D6D0A058(v335, v337, type metadata accessor for FormatOption);
                    *&v487 = v331;
                    v339 = *(v331 + 16);
                    v338 = *(v331 + 24);
                    if (v339 >= v338 >> 1)
                    {
                      sub_1D5D24610((v338 > 1), v339 + 1, 1);
                      v331 = v487;
                    }

                    *(v331 + 16) = v339 + 1;
                    *(v331 + 8 * v339 + 32) = v336 | 0x1000000000000004;
                    v332 += v333;
                    --v334;
                  }

                  while (v334);
                  __swift_destroy_boxed_opaque_existential_1(&v475);
                  v213 = v459;
                  v228 = v469;
                  v232 = v465;
                }

                else
                {
                  __swift_destroy_boxed_opaque_existential_1(&v475);
                  v331 = MEMORY[0x1E69E7CC0];
                }

                *&v484 = v331;
                *(&v484 + 1) = v228;
                v346 = v496;
                *&v485 = v496;
                *(&v485 + 1) = v473;
                *&v486 = v472;
                *(&v486 + 1) = v232;
                v493 = v470;
                v487 = v481;
                v488 = v482;
                v489 = v483;
                v490 = v484;
                v491 = v485;
                v492 = v486;
                v347 = v449;

                sub_1D67F5880(v228, v346);
                sub_1D6D60C48(&v487, v448, v347);
                v348 = v440;
                sub_1D6D09934(v213, v440, type metadata accessor for FeedRecipe);
                v349 = v348;
                v344 = v436;
                sub_1D6D09934(v349, v436, type metadata accessor for FeedRecipe);
                if (v346)
                {
                  v350 = sub_1D5BA8750(&unk_1F50F6C40, v464);
                  sub_1D5BFB68C(&unk_1F50F6C60);
                }

                else
                {
                  v350 = v464;
                }

                *(v344 + *(v456 + 28)) = v350;
                if (v330)
                {
                  *&v487 = MEMORY[0x1E69E7CC0];
                  sub_1D5D24610(0, v330, 0);
                  v351 = v487;
                  v359 = &v471[(*(v457 + 80) + 32) & ~*(v457 + 80)];
                  v360 = *(v457 + 72);
                  do
                  {
                    v361 = v466;
                    sub_1D6D09934(v359, v466, type metadata accessor for FormatOption);
                    v362 = swift_allocBox();
                    sub_1D6D0A058(v361, v363, type metadata accessor for FormatOption);
                    *&v487 = v351;
                    v365 = *(v351 + 16);
                    v364 = *(v351 + 24);
                    if (v365 >= v364 >> 1)
                    {
                      sub_1D5D24610((v364 > 1), v365 + 1, 1);
                      v351 = v487;
                    }

                    *(v351 + 16) = v365 + 1;
                    *(v351 + 8 * v365 + 32) = v362 | 0x1000000000000004;
                    v359 += v360;
                    --v330;
                  }

                  while (v330);
                  sub_1D6D0A444(v440, type metadata accessor for FeedRecipe);
                  v344 = v436;
                  goto LABEL_163;
                }

                v366 = v440;
LABEL_166:
                sub_1D6D0A444(v366, type metadata accessor for FeedRecipe);
                v351 = MEMORY[0x1E69E7CC0];
                goto LABEL_167;
              }
            }

            sub_1D6752B3C();
            swift_allocError();
            v318 = v449;
            *v319 = v448;
            *(v319 + 8) = v318;
            *(v319 + 56) = 0;
            swift_willThrow();
            swift_endAccess();

            sub_1D67F58E4(v228, v496);

LABEL_168:

            v372 = type metadata accessor for FeedRecipe;
            v373 = v213;
            return sub_1D6D0A444(v373, v372);
          }

          v454 = result;
          v397 = 0;
          v452 = v445 + ((*(v438 + 80) + 32) & ~*(v438 + 80));
          v398 = (v457 + 56);
          v399 = v433;
          while (1)
          {
            if (v397 >= *(v396 + 16))
            {
              goto LABEL_211;
            }

            v404 = v289;
            sub_1D6D09934(v452 + *(v438 + 72) * v397, v399, type metadata accessor for FormatPropertyDefinition);
            v405 = FormatPropertyDefinition.identifier.getter();
            if (v454[2])
            {
              v407 = sub_1D5B69D90(v405, v406);
              v409 = v408;
              v396 = v445;

              if (v409)
              {
                v400 = v457;
                v401 = v432;
                sub_1D6D09934(v454[7] + *(v457 + 72) * v407, v432, type metadata accessor for FormatOption);
                v399 = v433;
                sub_1D6D0A444(v433, type metadata accessor for FormatPropertyDefinition);
                v396 = v445;
                (*(v400 + 56))(v401, 0, 1, v467);
                v402 = sub_1D5E04C00;
                v403 = v401;
                goto LABEL_195;
              }
            }

            else
            {
            }

            v410 = v432;
            (*v398)(v432, 1, 1, v467);
            sub_1D6D0A444(v410, sub_1D5E04C00);
            v399 = v433;
            if (sub_1D695C4AC())
            {

              sub_1D67F58E4(v469, v496);

              sub_1D60CF6F4(v396, v431, v434, *(&v434 + 1), v437, v442, v444);

              type metadata accessor for FormatLayoutError();
              sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
              swift_allocError();
              v412 = v411;
              sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition);
              v414 = *(v413 + 48);
              v415 = v443;
              sub_1D6D09934(v443, v412, type metadata accessor for FeedCustomItem);
              sub_1D6D09934(v399, v412 + v414, type metadata accessor for FormatPropertyDefinition);
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_1D62B7D78(&v475);
              sub_1D6D0A444(v399, type metadata accessor for FormatPropertyDefinition);
              sub_1D6D0A444(v459, type metadata accessor for FeedRecipe);
              v372 = type metadata accessor for FeedCustomItem;
              v373 = v415;
              return sub_1D6D0A444(v373, v372);
            }

            v402 = type metadata accessor for FormatPropertyDefinition;
            v403 = v399;
LABEL_195:
            result = sub_1D6D0A444(v403, v402);
            ++v397;
            v289 = v404;
            v220 = v471;
            if (v453 == v397)
            {
              sub_1D60CF6F4(v396, v431, v434, *(&v434 + 1), v437, v442, v444);

              v232 = v465;
              goto LABEL_205;
            }
          }
        }
      }

      sub_1D67F58E4(v469, v496);

      LOBYTE(v492) = 0;
      v490 = 0u;
      v491 = 0u;
      v488 = 0u;
      v489 = 0u;
      v487 = 0u;
LABEL_173:
      type metadata accessor for FormatLayoutError();
      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
      swift_allocError();
      *v374 = v279;
      v374[1] = v278;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1D6D09524(&v487, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
      sub_1D6D0A444(v459, type metadata accessor for FeedRecipe);
      v372 = type metadata accessor for FeedCustomItem;
      v373 = v443;
      return sub_1D6D0A444(v373, v372);
    }

    v256 = sub_1D5B69D90(v460, v461);
    if (v257)
    {
      v258 = (*(v255 + 56) + 48 * v256);
      v259 = v258[1];
      v469 = *v258;
      v260 = v258[2];
      v261 = v258[3];
      v262 = v258[5];
      v465 = v258[4];
      v496 = v259;

      v473 = v260;

      v472 = v261;
      v232 = v465;

      v470 = v262;

      v263 = v140;
      v228 = v469;

      goto LABEL_96;
    }

LABEL_100:

    goto LABEL_101;
  }

LABEL_213:
  __break(1u);
  return result;
}

void *sub_1D6CE4CF8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v733 = a6;
  v734 = a7;
  v780 = a5;
  v779 = a4;
  v804 = a3;
  v735 = a2;
  v778 = a1;
  v724 = a9;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v715 = &v680 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatPropertyDefinition(0);
  v722 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v701 = &v680 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v710 = &v680 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v680 - v25;
  v769 = type metadata accessor for FormatOption();
  v739 = *(v769 - 8);
  MEMORY[0x1EEE9AC00](v769, v27);
  v709 = &v680 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v700 = &v680 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v702 = &v680 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v738 = (&v680 - v37);
  MEMORY[0x1EEE9AC00](v38, v39);
  v768 = &v680 - v40;
  sub_1D6D093F4(0);
  v731 = v41;
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v680 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v721 = &v680 - v47;
  sub_1D6AC4E74();
  v696 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v697 = &v680 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v714 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v714, v51);
  v727 = &v680 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v713 = &v680 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v736 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v736, v56);
  v737 = &v680 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6D09A7C(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v774 = v58;
  v748 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v59);
  v770 = (&v680 - v60);
  sub_1D5C144C0(0, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v744 = &v680 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v743 = (&v680 - v66);
  MEMORY[0x1EEE9AC00](v67, v68);
  v753 = &v680 - v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  v752 = (&v680 - v72);
  MEMORY[0x1EEE9AC00](v73, v74);
  v757 = &v680 - v75;
  MEMORY[0x1EEE9AC00](v76, v77);
  v758 = (&v680 - v78);
  MEMORY[0x1EEE9AC00](v79, v80);
  v751 = &v680 - v81;
  MEMORY[0x1EEE9AC00](v82, v83);
  *&v760 = &v680 - v84;
  MEMORY[0x1EEE9AC00](v85, v86);
  v754 = &v680 - v87;
  MEMORY[0x1EEE9AC00](v88, v89);
  v745 = (&v680 - v90);
  MEMORY[0x1EEE9AC00](v91, v92);
  v762 = &v680 - v93;
  MEMORY[0x1EEE9AC00](v94, v95);
  *(&v761 + 1) = &v680 - v96;
  MEMORY[0x1EEE9AC00](v97, v98);
  *(&v760 + 1) = &v680 - v99;
  MEMORY[0x1EEE9AC00](v100, v101);
  v767 = (&v680 - v102);
  MEMORY[0x1EEE9AC00](v103, v104);
  v766 = (&v680 - v105);
  MEMORY[0x1EEE9AC00](v106, v107);
  v765 = (&v680 - v108);
  sub_1D6D0A350(0, &qword_1EC894E88, type metadata accessor for FeedPuzzleStatistic, sub_1D6D09EFC);
  MEMORY[0x1EEE9AC00](v109 - 8, v110);
  v695 = &v680 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v112, v113);
  v698 = &v680 - v114;
  MEMORY[0x1EEE9AC00](v115, v116);
  v703 = &v680 - v117;
  MEMORY[0x1EEE9AC00](v118, v119);
  v706 = &v680 - v120;
  MEMORY[0x1EEE9AC00](v121, v122);
  v699 = &v680 - v123;
  MEMORY[0x1EEE9AC00](v124, v125);
  v707 = &v680 - v126;
  MEMORY[0x1EEE9AC00](v127, v128);
  v717 = &v680 - v129;
  MEMORY[0x1EEE9AC00](v130, v131);
  v720 = &v680 - v132;
  sub_1D5F2DDBC(0);
  MEMORY[0x1EEE9AC00](v133 - 8, v134);
  v136 = &v680 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v137, v138);
  v732 = &v680 - v139;
  MEMORY[0x1EEE9AC00](v140, v141);
  v730 = &v680 - v142;
  MEMORY[0x1EEE9AC00](v143, v144);
  v741 = &v680 - v145;
  v755 = type metadata accessor for FeedPuzzleStatistic();
  v772 = *(v755 - 8);
  MEMORY[0x1EEE9AC00](v755, v146);
  v742 = (&v680 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v148, v149);
  v746 = &v680 - v150;
  MEMORY[0x1EEE9AC00](v151, v152);
  v756 = (&v680 - v153);
  MEMORY[0x1EEE9AC00](v154, v155);
  v759 = (&v680 - v156);
  MEMORY[0x1EEE9AC00](v157, v158);
  v705 = &v680 - v159;
  MEMORY[0x1EEE9AC00](v160, v161);
  v704 = &v680 - v162;
  MEMORY[0x1EEE9AC00](v163, v164);
  v712 = &v680 - v165;
  MEMORY[0x1EEE9AC00](v166, v167);
  v711 = &v680 - v168;
  MEMORY[0x1EEE9AC00](v169, v170);
  v726 = &v680 - v171;
  MEMORY[0x1EEE9AC00](v172, v173);
  v725 = &v680 - v174;
  MEMORY[0x1EEE9AC00](v175, v176);
  v723 = &v680 - v177;
  MEMORY[0x1EEE9AC00](v178, v179);
  v750 = (&v680 - v180);
  MEMORY[0x1EEE9AC00](v181, v182);
  *&v761 = &v680 - v183;
  MEMORY[0x1EEE9AC00](v184, v185);
  j = &v680 - v186;
  MEMORY[0x1EEE9AC00](v187, v188);
  v190 = (&v680 - v189);
  MEMORY[0x1EEE9AC00](v191, v192);
  v719 = &v680 - v193;
  MEMORY[0x1EEE9AC00](v194, v195);
  v718 = &v680 - v196;
  MEMORY[0x1EEE9AC00](v197, v198);
  MEMORY[0x1EEE9AC00](v199, v200);
  v728 = &v680 - v201;
  MEMORY[0x1EEE9AC00](v202, v203);
  v747 = (&v680 - v204);
  v776 = v12;
  v205 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v206 = *(v205 + 16);
  v708 = v44;
  v694 = v26;
  v716 = v136;
  v773 = v205;
  v729 = v207;
  v208 = 0;
  if (v206)
  {
    v209 = (v205 + 32);
    do
    {
      v210 = *v209++;
      v211 = qword_1D7349118[v210];
      if ((v211 & ~v208) == 0)
      {
        v211 = 0;
      }

      v208 |= v211;
      --v206;
    }

    while (v206);
  }

  v212 = swift_allocObject();
  *(v212 + 16) = v208;
  sub_1D6D09390(0, &qword_1EC894E98, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedItemSorter);
  v771 = v213;
  v214 = swift_allocObject();
  v215 = MEMORY[0x1E69E7CC0];
  v775 = v214;
  v214[2] = MEMORY[0x1E69E7CC0];
  v216 = v214 + 2;
  v217 = swift_allocObject();
  *(v217 + 16) = sub_1D6D09F30;
  *(v217 + 24) = v212;
  swift_beginAccess();

  v218 = sub_1D69909F4(0, 1, 1, v215);
  v220 = v218[2];
  v219 = v218[3];
  if (v220 >= v219 >> 1)
  {
    v218 = sub_1D69909F4((v219 > 1), v220 + 1, 1, v218);
  }

  v740 = a11;
  v777 = a10;
  v218[2] = v220 + 1;
  v221 = &v218[2 * v220];
  v221[4] = sub_1D6D09F38;
  v221[5] = v217;
  *v216 = v218;
  swift_endAccess();

  v222 = 0x80000001D73C3770;
  v749 = type metadata accessor for GroupLayoutBindingContext();
  v223 = v778;
  v224 = *&v778[v749[14]];
  v225 = *(v224 + 16);
  v226 = v779;

  if (!v225 || (v227 = sub_1D5BCF83C(0xD000000000000013, 0x80000001D73C3770, v804, v226), (v228 & 1) == 0) || !*(*(*(v224 + 56) + 8 * v227) + 16))
  {
    sub_1D5ED8048();
    v236 = swift_allocError();
    *v238 = 0xD000000000000013;
    *(v238 + 8) = 0x80000001D73C3770;
    *(v238 + 16) = v804;
    *(v238 + 24) = v226;
    *(v238 + 32) = v780;
    *(v238 + 40) = 1;
    v239 = v777;
    *(v238 + 48) = a8;
    *(v238 + 56) = v239;
    *(v238 + 64) = 0;
    swift_willThrow();
LABEL_15:

    v237 = v776;
LABEL_16:
    if ((*(v237 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
    {
      return swift_willThrow();
    }

    v767 = 0;
    v240 = *(v773 + 16);
    v775 = v236;
    v241 = v224;
    v242 = 0;
    if (v240)
    {
      v243 = (v773 + 32);
      do
      {
        v244 = *v243++;
        LOBYTE(v789) = v244;
        sub_1D6FA308C(&v795);
        v245 = v795;
        if ((v795 & ~v242) == 0)
        {
          v245 = 0;
        }

        v242 |= v245;
        --v240;
      }

      while (v240);
    }

    v246 = swift_allocObject();
    *(v246 + 16) = v242;
    v247 = swift_allocObject();
    v777 = v247;
    v248 = MEMORY[0x1E69E7CC0];
    *(v247 + 16) = MEMORY[0x1E69E7CC0];
    v249 = (v247 + 16);
    v250 = swift_allocObject();
    *(v250 + 16) = sub_1D6D0A5E8;
    *(v250 + 24) = v246;
    swift_beginAccess();

    v251 = sub_1D69909F4(0, 1, 1, v248);
    v253 = v251[2];
    v252 = v251[3];
    if (v253 >= v252 >> 1)
    {
      v251 = sub_1D69909F4((v252 > 1), v253 + 1, 1, v251);
    }

    v251[2] = v253 + 1;
    v254 = &v251[2 * v253];
    v254[4] = sub_1D6D0A51C;
    v254[5] = v250;
    *v249 = v251;
    swift_endAccess();

    v255 = *(v241 + 16);
    v256 = v779;

    if (v255)
    {
      v257 = sub_1D5BCF83C(0xD000000000000013, v222, v804, v256);
      if (v258)
      {
        v259 = *(*(v241 + 56) + 8 * v257);
        if (*(v259 + 16))
        {

          v261 = v767;
          v262 = sub_1D5BF08EC(v260, 0, 0);
          if (v261)
          {

LABEL_46:

            swift_setDeallocating();
            return swift_deallocClassInstance();
          }

          v684 = 0;
          v273 = sub_1D714F128(v262);

          if (v273)
          {
            v274 = v273[2];
            if (v274)
            {
              v275 = v749;
              v276 = v778;
              v277 = *&v778[v749[17]];
              v762 = v749[19];
              v278 = *&v778[v762];
              j = v259;
              v683 = v222;
              v763 = v278;
              if (v278 < v277)
              {
                v279 = *v778;
                v767 = v273;
                if (v279)
                {
                }

                else
                {
                  v280 = sub_1D62F1548(v273);
                  v274 = *(v280 + 16);
                }

                v397 = v751;
                v773 = v780 | 0x1000;
                v398 = (v748 + 56);
                v399 = (v748 + 48);
                v766 = v280;

                v400 = 0;
                v771 = v274;
                if (v274)
                {
                  goto LABEL_119;
                }

LABEL_118:
                v401 = 1;
                v400 = v274;
                v402 = v774;
                while (1)
                {
                  (*v398)(v397, v401, 1, v402);
                  v408 = v760;
                  sub_1D6D09B18(v397, v760, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  if ((*v399)(v408, 1, v402) == 1)
                  {
                    break;
                  }

                  v409 = *v408;
                  v410 = v408 + *(v402 + 48);
                  v411 = v759;
                  sub_1D6D0A058(v410, v759, type metadata accessor for FeedPuzzleStatistic);
                  if ((v773 & ~*v411) == 0)
                  {
                    v430 = v766;

                    *&v795 = v430;
                    v431 = v706;
                    sub_1D5EC1EE0(v409, v706);
                    sub_1D6D0A444(v411, type metadata accessor for FeedPuzzleStatistic);

                    v432 = v431;
                    v433 = v705;
                    sub_1D6D0A058(v432, v705, type metadata accessor for FeedPuzzleStatistic);
                    v434 = v433;
                    v435 = v704;
                    sub_1D6D0A058(v434, v704, type metadata accessor for FeedPuzzleStatistic);
                    v436 = v435;
                    v437 = v732;
                    v438 = v732;
                    goto LABEL_145;
                  }

                  result = sub_1D6D0A444(v411, type metadata accessor for FeedPuzzleStatistic);
                  v274 = v771;
                  if (v400 == v771)
                  {
                    goto LABEL_118;
                  }

LABEL_119:
                  if ((v400 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_309;
                  }

                  if (v400 >= v766[2])
                  {
                    goto LABEL_310;
                  }

                  v403 = v766 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v400;
                  v402 = v774;
                  v404 = *(v774 + 48);
                  v405 = v770;
                  *v770 = v400;
                  sub_1D6D09934(v403, v405 + v404, type metadata accessor for FeedPuzzleStatistic);
                  v406 = v405;
                  v407 = v751;
                  sub_1D6D0A3D8(v406, v751, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  v401 = 0;
                  ++v400;
                  v397 = v407;
                }

                result = swift_bridgeObjectRelease_n();
                v275 = v749;
                v278 = v763;
                v276 = v778;
                v273 = v767;
              }

              v412 = *&v276[v275[18]];
              v413 = v412 - v278;
              if (__OFSUB__(v412, v278))
              {
                goto LABEL_320;
              }

              v414 = *v276;
              v415 = v746;
              if (v413 < 1)
              {
                v767 = v273;
                if (v414)
                {

                  v766 = v273;
                }

                else
                {
                  v766 = sub_1D62F1548(v273);
                }

                v445 = v766[2];
                v773 = v748 + 56;
                v771 = (v748 + 48);

                v446 = 0;
                while (1)
                {
                  if (v446 == v445)
                  {
                    v447 = 1;
                    v446 = v445;
                    v448 = v774;
                    v449 = v753;
                  }

                  else
                  {
                    if ((v446 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_315;
                    }

                    if (v446 >= v766[2])
                    {
                      goto LABEL_316;
                    }

                    v450 = v766 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v446;
                    v448 = v774;
                    v451 = *(v774 + 48);
                    v452 = v770;
                    *v770 = v446;
                    sub_1D6D09934(v450, v452 + v451, type metadata accessor for FeedPuzzleStatistic);
                    v449 = v753;
                    sub_1D6D0A3D8(v452, v753, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                    v447 = 0;
                    ++v446;
                    v415 = v746;
                  }

                  v453 = *v773;
                  (*v773)(v449, v447, 1, v448);
                  v454 = v449;
                  v455 = v752;
                  sub_1D6D09B18(v454, v752, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                  v456 = *v771;
                  if ((*v771)(v455, 1, v448) == 1)
                  {
                    swift_bridgeObjectRelease_n();
                    v487 = *(v772 + 56);
                    *(&v761 + 1) = v772 + 56;
                    *&v761 = v487;
                    v487(v716, 1, 1, v755);
                    v488 = v767;
                    if ((*v778 & 1) == 0)
                    {
                      v489 = sub_1D62F1548(v767);

                      v488 = v489;
                    }

                    v490 = v488[2];
                    v767 = v488;

                    v491 = 0;
                    v765 = v490;
                    if (v490)
                    {
                      goto LABEL_180;
                    }

LABEL_179:
                    v492 = 1;
                    v766 = v490;
                    v493 = v774;
                    v494 = v744;
                    while (1)
                    {
                      v453(v494, v492, 1, v493);
                      v500 = v743;
                      sub_1D6D09B18(v494, v743, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                      if (v456(v500, 1, v493) == 1)
                      {
                        break;
                      }

                      v501 = *v500;
                      v502 = v742;
                      sub_1D6D0A058(v500 + *(v493 + 48), v742, type metadata accessor for FeedPuzzleStatistic);
                      if ((v780 & ~*v502) == 0)
                      {
                        v508 = v767;

                        *&v795 = v508;
                        v509 = v695;
                        sub_1D5EC1EE0(v501, v695);
                        sub_1D6D0A444(v502, type metadata accessor for FeedPuzzleStatistic);

                        v438 = v732;
                        sub_1D6D0A058(v509, v732, type metadata accessor for FeedPuzzleStatistic);
                        v507 = 0;
LABEL_194:
                        v463 = j;
                        v443 = v755;
                        (v761)(v438, v507, 1, v755);
                        v442 = v772;
                        v510 = v716;
                        v511 = (*(v772 + 48))(v716, 1, v443);
                        v237 = v776;
                        v439 = v779;
                        if (v511 != 1)
                        {
                          sub_1D6D0A444(v510, sub_1D5F2DDBC);
                        }

                        goto LABEL_160;
                      }

                      result = sub_1D6D0A444(v502, type metadata accessor for FeedPuzzleStatistic);
                      v490 = v765;
                      v491 = v766;
                      if (v766 == v765)
                      {
                        goto LABEL_179;
                      }

LABEL_180:
                      if ((v491 & 0x8000000000000000) != 0)
                      {
                        goto LABEL_318;
                      }

                      if (v491 >= v767[2])
                      {
                        goto LABEL_319;
                      }

                      v495 = v491 + 1;
                      v496 = v767 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v491;
                      v493 = v774;
                      v497 = *(v774 + 48);
                      v498 = v770;
                      *v770 = v491;
                      sub_1D6D09934(v496, v498 + v497, type metadata accessor for FeedPuzzleStatistic);
                      v499 = v498;
                      v494 = v744;
                      sub_1D6D0A3D8(v499, v744, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                      v492 = 0;
                      v766 = v495;
                    }

                    swift_bridgeObjectRelease_n();
                    v507 = 1;
                    v438 = v732;
                    goto LABEL_194;
                  }

                  v457 = *v455;
                  sub_1D6D0A058(v455 + *(v448 + 48), v415, type metadata accessor for FeedPuzzleStatistic);
                  if ((v780 & ~*v415) == 0 && (*v415 & 0x1000) == 0)
                  {
                    v458 = v766;

                    *&v795 = v458;
                    v459 = v415;
                    v460 = v698;
                    sub_1D5EC1EE0(v457, v698);
                    sub_1D6D0A444(v459, type metadata accessor for FeedPuzzleStatistic);

                    v461 = v716;
                    sub_1D6D0A058(v460, v716, type metadata accessor for FeedPuzzleStatistic);
                    v442 = v772;
                    v462 = *(v772 + 56);
                    v443 = v755;
                    v462(v461, 0, 1, v755);
                    v438 = v732;
                    sub_1D6D0A058(v461, v732, type metadata accessor for FeedPuzzleStatistic);
                    v462(v438, 0, 1, v443);
                    goto LABEL_159;
                  }

                  result = sub_1D6D0A444(v415, type metadata accessor for FeedPuzzleStatistic);
                }
              }

              if ((*v276 & 1) == 0)
              {
                v416 = sub_1D62F1548(v273);

                v273 = v416;
              }

              v417 = v273[2];
              v773 = v748 + 56;
              v771 = (v748 + 48);
              v767 = v273;

              v418 = 0;
              if (v417)
              {
                goto LABEL_133;
              }

LABEL_132:
              v419 = 1;
              v418 = v417;
              v420 = v774;
              v421 = v757;
              while (1)
              {
                (*v773)(v421, v419, 1, v420);
                v426 = v758;
                sub_1D6D09B18(v421, v758, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                if ((*v771)(v426, 1, v420) == 1)
                {
                  swift_bridgeObjectRelease_n();

                  v438 = v732;
                  (*(v772 + 56))(v732, 1, 1, v755);
                  v439 = v779;
                  goto LABEL_162;
                }

                v427 = v417;
                v428 = *v426;
                v429 = v756;
                sub_1D6D0A058(v426 + *(v420 + 48), v756, type metadata accessor for FeedPuzzleStatistic);
                if ((v780 & ~*v429) == 0)
                {
                  break;
                }

                result = sub_1D6D0A444(v429, type metadata accessor for FeedPuzzleStatistic);
                v417 = v427;
                if (v418 == v427)
                {
                  goto LABEL_132;
                }

LABEL_133:
                if ((v418 & 0x8000000000000000) != 0)
                {
                  goto LABEL_311;
                }

                if (v418 >= v767[2])
                {
                  goto LABEL_312;
                }

                v422 = v767 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v418;
                v420 = v774;
                v423 = *(v774 + 48);
                v424 = v770;
                *v770 = v418;
                sub_1D6D09934(v422, v424 + v423, type metadata accessor for FeedPuzzleStatistic);
                v425 = v424;
                v421 = v757;
                sub_1D6D0A3D8(v425, v757, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
                v419 = 0;
                ++v418;
              }

              v440 = v767;

              *&v795 = v440;
              v441 = v703;
              sub_1D5EC1EE0(v428, v703);
              sub_1D6D0A444(v429, type metadata accessor for FeedPuzzleStatistic);

              v436 = v441;
              v438 = v732;
              v437 = v732;
LABEL_145:
              sub_1D6D0A058(v436, v437, type metadata accessor for FeedPuzzleStatistic);
              v442 = v772;
              v443 = v755;
              (*(v772 + 56))(v438, 0, 1, v755);
LABEL_159:
              v237 = v776;
              v439 = v779;
              v463 = j;
LABEL_160:
              if ((*(v442 + 48))(v438, 1, v443) == 1)
              {

LABEL_162:
                sub_1D6D0A444(v438, sub_1D5F2DDBC);
                sub_1D5ED8048();
                swift_allocError();
                *v282 = 0xD000000000000013;
                v464 = v804;
                *(v282 + 8) = v683;
                *(v282 + 16) = v464;
                *(v282 + 24) = v439;
                goto LABEL_45;
              }

              v465 = v712;
              result = sub_1D6D0A058(v438, v712, type metadata accessor for FeedPuzzleStatistic);
              if ((*(v465 + 1) & 0x10) != 0)
              {
                if (__OFADD__(v763, 1))
                {
                  goto LABEL_324;
                }

                *&v778[v762] = v763 + 1;
              }

              v467 = v683;
              if ((v740 & 1) == 0)
              {
                MEMORY[0x1EEE9AC00](result, v466);
                *(&v680 - 2) = v465;
                v468 = v684;
                v463 = sub_1D5BF5F6C(sub_1D6D09C0C, (&v680 - 4), v463);
                v684 = v468;
              }

              *&v795 = 0xD000000000000013;
              *(&v795 + 1) = v467;
              *&v796 = v804;
              *(&v796 + 1) = v439;
              sub_1D5BDACA8(&v795, v463);

              swift_setDeallocating();
              swift_deallocClassInstance();

              v469 = v711;
              sub_1D6D0A058(v465, v711, type metadata accessor for FeedPuzzleStatistic);
              v470 = v469;
              v471 = v747;
              sub_1D6D0A058(v470, v747, type metadata accessor for FeedPuzzleStatistic);
              v360 = *(v471 + 40);
              v472 = *(v471 + 48);
              v473 = v735;
              v474 = sub_1D6196E44(v735, 42, 0xE100000000000000, v360, v472);
              v803 = v474;
              v771 = v472;
              v365 = sub_1D6196F00(v473, 42, 0xE100000000000000, v360, v472);
              v802 = v365;
              v475 = *(v473 + 16);
              v770 = v474;
              if (!v475)
              {

                v780 = 0;
                v804 = 0;
                v779 = 0;
                v777 = 0;
                v774 = 0;
                v773 = 0;
                v358 = v747;
                v354 = v778;
                goto LABEL_188;
              }

              v476 = sub_1D5B69D90(42, 0xE100000000000000);
              v354 = v778;
              v477 = v775;
              if ((v478 & 1) != 0 && (v479 = *(*(*(v473 + 56) + 8 * v476) + 136), *(v479 + 16)))
              {

                v480 = sub_1D5B69D90(v360, v771);
                if (v481)
                {
                  v482 = (*(v479 + 56) + 48 * v480);
                  v483 = v482[1];
                  v780 = *v482;
                  v484 = v482[2];
                  v485 = v482[3];
                  v486 = v482[5];
                  v774 = v482[4];
                  v804 = v483;

                  v779 = v484;

                  v777 = v485;

                  v773 = v486;

LABEL_175:
                  v358 = v747;
                  goto LABEL_188;
                }
              }

              else
              {
              }

              v780 = 0;
              v804 = 0;
              v779 = 0;
              v777 = 0;
              v774 = 0;
              v773 = 0;
              goto LABEL_175;
            }
          }
        }
      }
    }

    sub_1D5ED8048();
    swift_allocError();
    *v282 = 0xD000000000000013;
    *(v282 + 8) = v222;
    *(v282 + 16) = v804;
    *(v282 + 24) = v256;
LABEL_45:
    *(v282 + 32) = v780;
    *(v282 + 40) = 1;
    *(v282 + 48) = 0;
    *(v282 + 56) = 0;
    *(v282 + 64) = 0;
    swift_willThrow();
    goto LABEL_46;
  }

  v688 = v218;
  v693 = v224;

  v230 = a8;
  v231 = a8;
  v232 = v777;
  v233 = v229;
  v234 = v763;
  v235 = sub_1D5BF08EC(v229, v231, v777);
  if (v234)
  {

    v236 = v234;
    v237 = v776;
LABEL_13:
    v224 = v693;
    goto LABEL_16;
  }

  v686 = v233;
  v687 = v230;
  v684 = 0;
  v264 = sub_1D714F128(v235);

  v224 = v693;
  if (!v264)
  {
LABEL_41:

    sub_1D5ED8048();
    v236 = swift_allocError();
    *v281 = 0xD000000000000013;
    *(v281 + 8) = 0x80000001D73C3770;
    *(v281 + 16) = v804;
    *(v281 + 24) = v226;
    *(v281 + 32) = v780;
    *(v281 + 40) = 1;
    *(v281 + 48) = v687;
    *(v281 + 56) = v232;
    *(v281 + 64) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  result = v264;
  v265 = v264[2];
  if (!v265)
  {

    goto LABEL_41;
  }

  v266 = v749;
  v267 = *&v223[v749[17]];
  v681 = v749[19];
  v269 = v774;
  v270 = v767;
  v682 = *&v223[v681];
  v268 = v682;
  if (v682 >= v267)
  {
LABEL_58:
    v294 = *&v223[v266[18]];
    v295 = v294 - v268;
    if (__OFSUB__(v294, v268))
    {
      goto LABEL_317;
    }

    v296 = *v223;
    v683 = v222;
    if (v295 >= 1)
    {
      if ((v296 & 1) == 0)
      {
        v297 = sub_1D62F1548(result);

        result = v297;
        v270 = v767;
      }

      v298 = result[2];
      v766 = (v748 + 56);
      v765 = (v748 + 48);
      v689 = result;

      i = 0;
      v300 = *(&v760 + 1);
      if (v298)
      {
        goto LABEL_64;
      }

LABEL_63:
      v301 = 1;
      for (i = v298; ; ++i)
      {
        (*v766)(v300, v301, 1, v269);
        sub_1D6D09B18(v300, v270, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        if ((*v765)(v270, 1, v269) == 1)
        {
          break;
        }

        v306 = v269;
        v307 = v298;
        v308 = *v270;
        v309 = j;
        sub_1D6D0A058(v270 + *(v306 + 48), j, type metadata accessor for FeedPuzzleStatistic);
        if ((v780 & ~*v309) == 0)
        {
          v323 = v689;

          *&v795 = v323;
          v324 = v717;
          sub_1D5EC1EE0(v308, v717);
          sub_1D6D0A444(v309, type metadata accessor for FeedPuzzleStatistic);

          v317 = v741;
          sub_1D6D0A058(v324, v741, type metadata accessor for FeedPuzzleStatistic);
          v318 = v772;
          v319 = v755;
          (*(v772 + 56))(v317, 0, 1, v755);
          goto LABEL_88;
        }

        result = sub_1D6D0A444(v309, type metadata accessor for FeedPuzzleStatistic);
        v269 = v774;
        v298 = v307;
        if (i == v307)
        {
          goto LABEL_63;
        }

LABEL_64:
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_305;
        }

        if (i >= v689[2])
        {
          goto LABEL_306;
        }

        v302 = v689 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * i;
        v269 = v774;
        v303 = *(v774 + 48);
        v304 = v770;
        *v770 = i;
        sub_1D6D09934(v302, v304 + v303, type metadata accessor for FeedPuzzleStatistic);
        v305 = v304;
        v300 = *(&v760 + 1);
        sub_1D6D0A3D8(v305, *(&v760 + 1), &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v301 = 0;
        v270 = v767;
      }

      swift_bridgeObjectRelease_n();

      v317 = v741;
      (*(v772 + 56))(v741, 1, 1, v755);
      v237 = v776;
      v322 = v779;
      v222 = v683;
      goto LABEL_91;
    }

    v689 = result;
    if (v296)
    {
    }

    else
    {
      v310 = sub_1D62F1548(result);
    }

    v765 = v310;
    v325 = *(v310 + 16);
    v767 = (v748 + 56);
    v766 = (v748 + 48);

    v326 = 0;
    for (j = v325; ; v325 = j)
    {
      if (v326 == v325)
      {
        v327 = 1;
        v326 = v325;
        v328 = v774;
        v329 = v762;
      }

      else
      {
        if ((v326 & 0x8000000000000000) != 0)
        {
          goto LABEL_307;
        }

        if (v326 >= v765[2])
        {
          goto LABEL_308;
        }

        v330 = v765 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v326;
        v328 = v774;
        v331 = *(v774 + 48);
        v332 = v770;
        *v770 = v326;
        sub_1D6D09934(v330, v332 + v331, type metadata accessor for FeedPuzzleStatistic);
        v333 = v332;
        v329 = v762;
        sub_1D6D0A3D8(v333, v762, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v327 = 0;
        ++v326;
      }

      v334 = *v767;
      (*v767)(v329, v327, 1, v328);
      v335 = *(&v761 + 1);
      sub_1D6D09B18(v329, *(&v761 + 1), &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
      v336 = *v766;
      if ((*v766)(v335, 1, v328) == 1)
      {
        break;
      }

      v337 = *v335;
      v338 = v335 + *(v328 + 48);
      v339 = v761;
      sub_1D6D0A058(v338, v761, type metadata accessor for FeedPuzzleStatistic);
      if ((v780 & ~*v339) == 0 && (*v339 & 0x1000) == 0)
      {
        v340 = v765;

        *&v795 = v340;
        v341 = v707;
        sub_1D5EC1EE0(v337, v707);
        sub_1D6D0A444(v339, type metadata accessor for FeedPuzzleStatistic);

        v342 = v730;
        sub_1D6D0A058(v341, v730, type metadata accessor for FeedPuzzleStatistic);
        v318 = v772;
        v343 = *(v772 + 56);
        v319 = v755;
        v343(v342, 0, 1, v755);
        v344 = v342;
        v317 = v741;
        sub_1D6D0A058(v344, v741, type metadata accessor for FeedPuzzleStatistic);
        v343(v317, 0, 1, v319);
LABEL_88:
        v237 = v776;
        v320 = v778;
        v321 = v779;
        v222 = v683;
        goto LABEL_89;
      }

      result = sub_1D6D0A444(v339, type metadata accessor for FeedPuzzleStatistic);
    }

    swift_bridgeObjectRelease_n();
    v379 = *(v772 + 56);
    v763 = (v772 + 56);
    v762 = v379;
    v379(v730, 1, 1, v755);
    v380 = v689;
    if ((*v778 & 1) == 0)
    {
      v381 = sub_1D62F1548(v689);

      v380 = v381;
    }

    v382 = v380[2];
    v689 = v380;

    v383 = 0;
    v384 = &qword_1EC88F4F0;
    v385 = v774;
    v386 = v745;
    v765 = v382;
    if (v382)
    {
      goto LABEL_108;
    }

LABEL_107:
    v387 = 1;
    v383 = v382;
    v388 = v754;
    while (1)
    {
      v334(v388, v387, 1, v385);
      sub_1D6D09B18(v388, v386, &qword_1EC894E80, v384, type metadata accessor for FeedPuzzleStatistic);
      if (v336(v386, 1, v385) == 1)
      {
        swift_bridgeObjectRelease_n();
        v444 = 1;
        v317 = v741;
        goto LABEL_190;
      }

      v394 = v385;
      v395 = *v386;
      v396 = v750;
      sub_1D6D0A058(v386 + *(v394 + 48), v750, type metadata accessor for FeedPuzzleStatistic);
      if ((v780 & ~*v396) == 0)
      {
        break;
      }

      result = sub_1D6D0A444(v396, type metadata accessor for FeedPuzzleStatistic);
      v385 = v774;
      v382 = v765;
      if (v383 == v765)
      {
        goto LABEL_107;
      }

LABEL_108:
      if ((v383 & 0x8000000000000000) != 0)
      {
        goto LABEL_313;
      }

      if (v383 >= v689[2])
      {
        goto LABEL_314;
      }

      v389 = v384;
      j = v383 + 1;
      v390 = v689 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v383;
      v385 = v774;
      v391 = *(v774 + 48);
      v392 = v770;
      *v770 = v383;
      sub_1D6D09934(v390, v392 + v391, type metadata accessor for FeedPuzzleStatistic);
      v393 = v392;
      v388 = v754;
      v384 = v389;
      sub_1D6D0A3D8(v393, v754, v389, type metadata accessor for FeedPuzzleStatistic);
      v387 = 0;
      v383 = j;
      v386 = v745;
    }

    v503 = v689;

    *&v795 = v503;
    v504 = v699;
    sub_1D5EC1EE0(v395, v699);
    sub_1D6D0A444(v396, type metadata accessor for FeedPuzzleStatistic);

    v317 = v741;
    sub_1D6D0A058(v504, v741, type metadata accessor for FeedPuzzleStatistic);
    v444 = 0;
LABEL_190:
    v319 = v755;
    (v762)(v317, v444, 1, v755);
    v318 = v772;
    v505 = v730;
    v506 = (*(v772 + 48))();
    v237 = v776;
    v320 = v778;
    v321 = v779;
    v222 = v683;
    if (v506 != 1)
    {
      sub_1D6D0A444(v505, sub_1D5F2DDBC);
    }

LABEL_89:
    if ((*(v318 + 48))(v317, 1, v319) == 1)
    {

      v322 = v321;
LABEL_91:
      sub_1D6D0A444(v317, sub_1D5F2DDBC);
      sub_1D5ED8048();
      v236 = swift_allocError();
      *v345 = 0xD000000000000013;
      *(v345 + 8) = v222;
      *(v345 + 16) = v804;
      *(v345 + 24) = v322;
      *(v345 + 32) = v780;
      *(v345 + 40) = 1;
      v346 = v777;
      *(v345 + 48) = v687;
      *(v345 + 56) = v346;
      *(v345 + 64) = 0;
      swift_willThrow();

      goto LABEL_13;
    }

    v347 = v317;
    v348 = v729;
    result = sub_1D6D0A058(v347, v729, type metadata accessor for FeedPuzzleStatistic);
    if ((*(v348 + 1) & 0x10) != 0)
    {
      if (__OFADD__(v682, 1))
      {
        goto LABEL_323;
      }

      *&v320[v681] = v682 + 1;
    }

    v350 = v686;
    if ((v740 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result, v349);
      *(&v680 - 2) = v348;
      v351 = v684;
      v353 = sub_1D5BF5F6C(sub_1D6D0A584, (&v680 - 4), v352);
      v684 = v351;
      v350 = v353;
    }

    *&v795 = 0xD000000000000013;
    *(&v795 + 1) = v222;
    *&v796 = v804;
    *(&v796 + 1) = v321;
    v354 = v320;
    sub_1D5BDACA8(&v795, v350);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v355 = v348;
    v356 = v728;
    sub_1D6D0A058(v355, v728, type metadata accessor for FeedPuzzleStatistic);
    v357 = v356;
    v358 = v747;
    sub_1D6D0A058(v357, v747, type metadata accessor for FeedPuzzleStatistic);
    v360 = v358[5];
    v359 = v358[6];
    v361 = v735;
    v362 = v687;
    v363 = v777;
    v770 = sub_1D6196E44(v735, v687, v777, v360, v359);
    v803 = v770;
    v771 = v359;
    v364 = sub_1D6196F00(v361, v362, v363, v360, v359);
    v365 = v364;
    v802 = v364;
    if (!v363)
    {
      v780 = 0;
      v804 = 0;
      v779 = 0;
      v777 = 0;
      v774 = 0;
      v773 = 0;
LABEL_188:
      v371 = v755;
      v367 = v737;
      goto LABEL_199;
    }

    v775 = v364;
    v366 = v755;
    v367 = v737;
    if (*(v361 + 16))
    {
      v368 = sub_1D5B69D90(v362, v777);
      if (v369)
      {
        v370 = *(*(*(v361 + 56) + 8 * v368) + 136);
        v371 = v366;
        if (*(v370 + 16))
        {

          v372 = sub_1D5B69D90(v360, v771);
          if (v373)
          {
            v374 = (*(v370 + 56) + 48 * v372);
            v375 = v374[1];
            v780 = *v374;
            v376 = v374[2];
            v377 = v374[3];
            v774 = v374[4];
            v767 = v360;
            v378 = v374[5];
            v804 = v375;

            v779 = v376;

            v777 = v377;
            v371 = v366;

            v773 = v378;
            v360 = v767;

LABEL_198:
            v365 = v775;
LABEL_199:
            *(&v796 + 1) = v371;
            v512 = sub_1D6D098EC(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic);
            *&v797 = v512;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v795);
            sub_1D6D09934(v358, boxed_opaque_existential_1, type metadata accessor for FeedPuzzleStatistic);
            sub_1D6818590(&v795, v367);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            v772 = v512;
            if (EnumCaseMultiPayload != 8)
            {
              if (EnumCaseMultiPayload == 4)
              {
                v515 = v713;
                sub_1D6D0A058(v367, v713, type metadata accessor for FeedWebEmbed);
                v516 = sub_1D6944620();
                sub_1D5D505F0(v516);
                v517 = sub_1D69449D8();
                sub_1D5B886D0(v517);
                v518 = type metadata accessor for FeedWebEmbed;
                v519 = v515;
              }

              else
              {
                v518 = type metadata accessor for FeedItem;
                v519 = v367;
              }

              sub_1D6D0A444(v519, v518);
LABEL_208:
              v532 = v803;
              v775 = v802;
              v533 = v354[88];
              if (v740)
              {
                swift_beginAccess();
                if ((v533 & 1) != 0 || !*(v237[4] + 16) || (, sub_1D5B69D90(v733, v734), v535 = v534, , (v535 & 1) == 0))
                {
                  v536 = *v358;
                  v537 = *(v237[10] + 16);
                  if (v537)
                  {
                    sub_1D5B69D90(v360, v771);
                    v537 = 0x4000000000;
                    if ((v538 & 1) == 0)
                    {
                      v537 = 0;
                    }
                  }

                  *&v795 = v537 | v536;

                  v539 = sub_1D713CCF4();
                  v778 = v532;
                  v771 = sub_1D5BA8750(v539, v532);

                  v540 = v723;
                  sub_1D6D09934(v358, v723, type metadata accessor for FeedPuzzleStatistic);
                  v541 = *(v540 + *(v371 + 32));
                  v542 = [swift_unknownObjectRetain() identifier];
                  v543 = v371;
                  v544 = sub_1D726207C();
                  v546 = v545;

                  LOBYTE(v795) = 1;
                  v784 = 0uLL;
                  LOBYTE(v785[0]) = 1;
                  *(v785 + 8) = xmmword_1D728A8E0;
                  *(&v785[1] + 1) = v544;
                  *&v786 = v546;
                  *(&v786 + 1) = v541;
                  swift_getObjectType();
                  v547 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D6D0A444(v540, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5F2DE58(&v784);
                  v548 = sub_1D5BA8750(v547, v771);

                  v782 = v543;
                  v783 = v772;
                  v549 = __swift_allocate_boxed_opaque_existential_1(v781);
                  sub_1D6D09934(v358, v549, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5B68374(v781, &v789);

                  v550 = v548;
                  if (v804)
                  {
                    v550 = sub_1D5BA8750(&unk_1F50F6AF0, v548);
                    sub_1D5BFB68C(&unk_1F50F6B10);
                  }

                  *(&v791 + 1) = v550;
                  v551 = v775;
                  v552 = v775[2];
                  if (v552)
                  {
                    v772 = v548;
                    *&v795 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v552, 0);
                    v553 = v795;
                    v554 = v551 + ((*(v739 + 80) + 32) & ~*(v739 + 80));
                    v555 = *(v739 + 72);
                    v556 = v552;
                    do
                    {
                      v557 = v768;
                      sub_1D6D09934(v554, v768, type metadata accessor for FormatOption);
                      v558 = swift_allocBox();
                      sub_1D6D0A058(v557, v559, type metadata accessor for FormatOption);
                      *&v795 = v553;
                      v561 = *(v553 + 16);
                      v560 = *(v553 + 24);
                      if (v561 >= v560 >> 1)
                      {
                        sub_1D5D24610((v560 > 1), v561 + 1, 1);
                        v553 = v795;
                      }

                      *(v553 + 16) = v561 + 1;
                      *(v553 + 8 * v561 + 32) = v558 | 0x1000000000000004;
                      v554 += v555;
                      --v556;
                    }

                    while (v556);
                    __swift_destroy_boxed_opaque_existential_1(v781);
                    v548 = v772;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(v781);
                    v553 = MEMORY[0x1E69E7CC0];
                  }

                  *&v792 = v553;
                  v594 = v780;
                  *(&v792 + 1) = v780;
                  v595 = v804;
                  *&v793 = v804;
                  *(&v793 + 1) = v779;
                  *&v794 = v777;
                  *(&v794 + 1) = v774;
                  v801 = v773;
                  v795 = v789;
                  v796 = v790;
                  v797 = v791;
                  v798 = v792;
                  v799 = v793;
                  v800 = v794;
                  v596 = v734;

                  sub_1D67F5880(v594, v595);
                  sub_1D6D60C48(&v795, v733, v596);
                  v597 = v725;
                  sub_1D6D09934(v747, v725, type metadata accessor for FeedPuzzleStatistic);
                  v598 = v597;
                  v599 = v721;
                  sub_1D6D09934(v598, v721, type metadata accessor for FeedPuzzleStatistic);
                  v600 = v731;
                  if (v595)
                  {
                    v548 = sub_1D5BA8750(&unk_1F50F6B20, v548);
                    sub_1D5BFB68C(&unk_1F50F6B40);
                  }

                  *(v599 + v600[7]) = v548;
                  if (v552)
                  {
                    *&v795 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v552, 0);
                    v601 = v795;
                    v602 = v775 + ((*(v739 + 80) + 32) & ~*(v739 + 80));
                    v603 = *(v739 + 72);
                    do
                    {
                      v604 = v768;
                      sub_1D6D09934(v602, v768, type metadata accessor for FormatOption);
                      v605 = swift_allocBox();
                      sub_1D6D0A058(v604, v606, type metadata accessor for FormatOption);
                      *&v795 = v601;
                      v608 = *(v601 + 16);
                      v607 = *(v601 + 24);
                      if (v608 >= v607 >> 1)
                      {
                        sub_1D5D24610((v607 > 1), v608 + 1, 1);
                        v601 = v795;
                      }

                      *(v601 + 16) = v608 + 1;
                      *(v601 + 8 * v608 + 32) = v605 | 0x1000000000000004;
                      v602 += v603;
                      --v552;
                    }

                    while (v552);
                    sub_1D6D0A444(v725, type metadata accessor for FeedPuzzleStatistic);
                    v599 = v721;
                  }

                  else
                  {
                    sub_1D6D0A444(v725, type metadata accessor for FeedPuzzleStatistic);
                    v601 = MEMORY[0x1E69E7CC0];
                  }

                  *(v599 + v600[8]) = v601;
                  v616 = (v599 + v600[9]);
                  v617 = v780;
                  v618 = v804;
                  *v616 = v780;
                  v616[1] = v618;
                  v619 = v777;
                  v616[2] = v779;
                  v616[3] = v619;
                  v620 = v773;
                  v616[4] = v774;
                  v616[5] = v620;
                  sub_1D6D0A058(v599, v724, sub_1D6D093F4);
                  swift_endAccess();
                  sub_1D67F5880(v617, v618);

                  v621 = v617;
                  v622 = v618;
LABEL_262:
                  sub_1D67F58E4(v621, v622);
                  return sub_1D6D0A444(v747, type metadata accessor for FeedPuzzleStatistic);
                }
              }

              else
              {
                swift_beginAccess();
                if ((v533 & 1) != 0 || !*(v237[3] + 16) || (, sub_1D5B69D90(v733, v734), v563 = v562, , (v563 & 1) == 0))
                {
                  v568 = *v358;
                  v569 = *(v237[10] + 16);
                  if (v569)
                  {
                    sub_1D5B69D90(v360, v771);
                    v569 = 0x4000000000;
                    if ((v570 & 1) == 0)
                    {
                      v569 = 0;
                    }
                  }

                  *&v795 = v569 | v568;

                  v571 = sub_1D713CCF4();
                  v778 = v532;
                  v771 = sub_1D5BA8750(v571, v532);

                  v572 = v723;
                  sub_1D6D09934(v358, v723, type metadata accessor for FeedPuzzleStatistic);
                  v573 = *(v572 + *(v371 + 32));
                  v574 = [swift_unknownObjectRetain() identifier];
                  v575 = v371;
                  v576 = sub_1D726207C();
                  v578 = v577;

                  LOBYTE(v795) = 1;
                  v784 = 0uLL;
                  LOBYTE(v785[0]) = 1;
                  *(v785 + 8) = xmmword_1D728A8E0;
                  *(&v785[1] + 1) = v576;
                  *&v786 = v578;
                  *(&v786 + 1) = v573;
                  swift_getObjectType();
                  v579 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D6D0A444(v572, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5F2DE58(&v784);
                  v580 = sub_1D5BA8750(v579, v771);

                  v782 = v575;
                  v783 = v772;
                  v581 = __swift_allocate_boxed_opaque_existential_1(v781);
                  sub_1D6D09934(v358, v581, type metadata accessor for FeedPuzzleStatistic);
                  sub_1D5B68374(v781, &v789);

                  v582 = v580;
                  if (v804)
                  {
                    v582 = sub_1D5BA8750(&unk_1F50F6B50, v580);
                    sub_1D5BFB68C(&unk_1F50F6B70);
                  }

                  v772 = v580;
                  *(&v791 + 1) = v582;
                  v583 = v775;
                  v584 = v775[2];
                  if (v584)
                  {
                    *&v795 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v584, 0);
                    v585 = v795;
                    v586 = v583 + ((*(v739 + 80) + 32) & ~*(v739 + 80));
                    v587 = *(v739 + 72);
                    v588 = v584;
                    do
                    {
                      v589 = v768;
                      sub_1D6D09934(v586, v768, type metadata accessor for FormatOption);
                      v590 = swift_allocBox();
                      sub_1D6D0A058(v589, v591, type metadata accessor for FormatOption);
                      *&v795 = v585;
                      v593 = *(v585 + 16);
                      v592 = *(v585 + 24);
                      if (v593 >= v592 >> 1)
                      {
                        sub_1D5D24610((v592 > 1), v593 + 1, 1);
                        v585 = v795;
                      }

                      *(v585 + 16) = v593 + 1;
                      *(v585 + 8 * v593 + 32) = v590 | 0x1000000000000004;
                      v586 += v587;
                      --v588;
                    }

                    while (v588);
                    __swift_destroy_boxed_opaque_existential_1(v781);
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(v781);
                    v585 = MEMORY[0x1E69E7CC0];
                  }

                  *&v792 = v585;
                  v609 = v780;
                  *(&v792 + 1) = v780;
                  v610 = v804;
                  *&v793 = v804;
                  *(&v793 + 1) = v779;
                  *&v794 = v777;
                  *(&v794 + 1) = v774;
                  v801 = v773;
                  v795 = v789;
                  v796 = v790;
                  v797 = v791;
                  v798 = v792;
                  v799 = v793;
                  v800 = v794;
                  v611 = v734;

                  sub_1D67F5880(v609, v610);
                  sub_1D6D60C48(&v795, v733, v611);
                  v612 = v726;
                  sub_1D6D09934(v747, v726, type metadata accessor for FeedPuzzleStatistic);
                  v613 = v708;
                  sub_1D6D09934(v612, v708, type metadata accessor for FeedPuzzleStatistic);
                  v614 = v731;
                  if (v610)
                  {
                    v615 = sub_1D5BA8750(&unk_1F50F6B80, v772);
                    sub_1D5BFB68C(&unk_1F50F6BA0);
                  }

                  else
                  {
                    v615 = v772;
                  }

                  *(v613 + v614[7]) = v615;
                  if (v584)
                  {
                    *&v795 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v584, 0);
                    v623 = v795;
                    v624 = v775 + ((*(v739 + 80) + 32) & ~*(v739 + 80));
                    v625 = *(v739 + 72);
                    do
                    {
                      v626 = v768;
                      sub_1D6D09934(v624, v768, type metadata accessor for FormatOption);
                      v627 = swift_allocBox();
                      sub_1D6D0A058(v626, v628, type metadata accessor for FormatOption);
                      *&v795 = v623;
                      v630 = *(v623 + 16);
                      v629 = *(v623 + 24);
                      if (v630 >= v629 >> 1)
                      {
                        sub_1D5D24610((v629 > 1), v630 + 1, 1);
                        v623 = v795;
                      }

                      *(v623 + 16) = v630 + 1;
                      *(v623 + 8 * v630 + 32) = v627 | 0x1000000000000004;
                      v624 += v625;
                      --v584;
                    }

                    while (v584);
                    sub_1D6D0A444(v726, type metadata accessor for FeedPuzzleStatistic);
                    v614 = v731;
                  }

                  else
                  {
                    sub_1D6D0A444(v726, type metadata accessor for FeedPuzzleStatistic);
                    v623 = MEMORY[0x1E69E7CC0];
                  }

                  *(v613 + v614[8]) = v623;
                  v631 = (v613 + v614[9]);
                  v632 = v780;
                  v633 = v804;
                  *v631 = v780;
                  v631[1] = v633;
                  v634 = v777;
                  v631[2] = v779;
                  v631[3] = v634;
                  v635 = v773;
                  v631[4] = v774;
                  v631[5] = v635;
                  sub_1D6D0A058(v613, v724, sub_1D6D093F4);
                  swift_endAccess();
                  sub_1D67F5880(v632, v633);

                  v621 = v632;
                  v622 = v633;
                  goto LABEL_262;
                }
              }

              sub_1D6752B3C();
              swift_allocError();
              v564 = v734;
              *v565 = v733;
              *(v565 + 8) = v564;
              *(v565 + 56) = 0;
              swift_willThrow();
              swift_endAccess();

              sub_1D67F58E4(v780, v804);
              v566 = type metadata accessor for FeedPuzzleStatistic;
              v567 = v358;
              return sub_1D6D0A444(v567, v566);
            }

            v767 = v360;
            v520 = v727;
            sub_1D6D0A058(v367, v727, type metadata accessor for FeedCustomItem);
            v521 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
            swift_beginAccess();
            v522 = *(v521 + 8);
            v523 = v520 + *(v714 + 20);
            v524 = *(v523 + 16);
            v525 = *(v523 + 24);
            if (*(v522 + 16))
            {

              v526 = sub_1D5B69D90(v524, v525);
              if (v527)
              {
                v775 = v524;
                v528 = v697;
                sub_1D6D09934(*(v522 + 56) + *(v696 + 72) * v526, v697, sub_1D6AC4E74);
                v529 = *(v528 + 32);
                v530 = *(v528 + 64);
                v786 = *(v528 + 48);
                v787 = v530;
                v788 = *(v528 + 80);
                v531 = *(v528 + 16);
                v784 = *v528;
                v785[0] = v531;
                v785[1] = v529;
                sub_1D62B7D1C(&v784, v781);
                sub_1D6D0A444(v528, sub_1D6AC4E74);

                v791 = v785[1];
                v792 = v786;
                v793 = v787;
                LOBYTE(v794) = v788;
                v789 = v784;
                v790 = v785[0];
                if (v788 >> 6 <= 1u)
                {
                  sub_1D67F58E4(v780, v804);

                  v797 = v791;
                  v798 = v792;
                  v799 = v793;
                  LOBYTE(v800) = v794;
                  v795 = v789;
                  v796 = v790;
                  v524 = v775;
LABEL_265:
                  type metadata accessor for FormatLayoutError();
                  sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                  swift_allocError();
                  *v636 = v524;
                  v636[1] = v525;
                  swift_storeEnumTagMultiPayload();
                  swift_willThrow();

                  sub_1D6D09524(&v795, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
                  sub_1D6D0A444(v747, type metadata accessor for FeedPuzzleStatistic);
                  v566 = type metadata accessor for FeedCustomItem;
                  v567 = v727;
                  return sub_1D6D0A444(v567, v566);
                }

                LODWORD(v762) = v788;
                v759 = *(&v785[1] + 1);
                v637 = *&v785[1];
                v760 = v786;
                v761 = v787;
                v781[0] = *&v785[1];
                sub_1D6D098B8(0);
                sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8);
                sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition);

                v775 = sub_1D72623BC();
                result = type metadata accessor for FormatCustomItem.Resolved();
                v638 = *(v523 + *(result + 7));
                v639 = *(v638 + 16);
                v763 = v637;
                v766 = v639;
                if (v639)
                {
                  v640 = 0;
                  j = (*(v739 + 80) + 32) & ~*(v739 + 80);
                  v765 = (v638 + j);
                  v641 = v702;
                  do
                  {
                    v643 = v738;
                    if (v640 >= *(v638 + 16))
                    {
                      goto LABEL_321;
                    }

                    v644 = v638;
                    v645 = *(v739 + 72);
                    sub_1D6D09934(v765 + v645 * v640, v738, type metadata accessor for FormatOption);
                    v646 = v775;
                    if (v775[2] && (v647 = sub_1D5B69D90(*v643, v643[1]), (v648 & 1) != 0))
                    {
                      v649 = v646[7] + *(v722 + 72) * v647;
                      v650 = v701;
                      sub_1D6D09934(v649, v701, type metadata accessor for FormatPropertyDefinition);
                      v651 = v710;
                      sub_1D6D0A058(v650, v710, type metadata accessor for FormatPropertyDefinition);
                      type metadata accessor for FormatOptionConverter();
                      v652 = v700;
                      v653 = v684;
                      sub_1D6AC31AC(v643, v651, v700);
                      if (v653)
                      {
                        sub_1D67F58E4(v780, v804);

                        sub_1D60CF6F4(v763, v759, v760, *(&v760 + 1), v761, *(&v761 + 1), v762);
                        sub_1D62B7D78(&v784);
                        sub_1D6D0A444(v710, type metadata accessor for FormatPropertyDefinition);

                        sub_1D6D0A444(v747, type metadata accessor for FeedPuzzleStatistic);
                        sub_1D6D0A444(v643, type metadata accessor for FormatOption);
                        sub_1D6D0A444(v727, type metadata accessor for FeedCustomItem);
                      }

                      sub_1D6D09934(v652, v709, type metadata accessor for FormatOption);
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      v655 = v652;
                      v684 = 0;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        v365 = sub_1D5CEABA0(0, v365[2] + 1, 1, v365);
                      }

                      v641 = v702;
                      v657 = v365[2];
                      v656 = v365[3];
                      v658 = v657 + 1;
                      if (v657 >= v656 >> 1)
                      {
                        v365 = sub_1D5CEABA0(v656 > 1, v657 + 1, 1, v365);
                      }

                      sub_1D6D0A444(v655, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v710, type metadata accessor for FormatPropertyDefinition);
                      v642 = v709;
                    }

                    else
                    {
                      sub_1D6D09934(v643, v641, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v365 = sub_1D5CEABA0(0, v365[2] + 1, 1, v365);
                      }

                      v657 = v365[2];
                      v659 = v365[3];
                      v658 = v657 + 1;
                      if (v657 >= v659 >> 1)
                      {
                        v365 = sub_1D5CEABA0(v659 > 1, v657 + 1, 1, v365);
                      }

                      v642 = v641;
                    }

                    v640 = (v640 + 1);
                    sub_1D6D0A444(v738, type metadata accessor for FormatOption);
                    v365[2] = v658;
                    result = sub_1D6D0A058(v642, v365 + j + v657 * v645, type metadata accessor for FormatOption);
                    v802 = v365;
                    v237 = v776;
                    v638 = v644;
                  }

                  while (v766 != v640);

                  v637 = v763;
                }

                else
                {
                }

                v781[0] = v638;
                sub_1D5B5AD98();
                sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98);
                sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption);
                result = sub_1D72623AC();
                v660 = result;
                v360 = v767;
                v775 = v637[2];
                if (!v775)
                {
                  sub_1D60CF6F4(v637, v759, v760, *(&v760 + 1), v761, *(&v761 + 1), v762);

                  v354 = v778;
                  v371 = v755;
LABEL_300:
                  sub_1D62B7D78(&v784);
                  sub_1D6D0A444(v727, type metadata accessor for FeedCustomItem);
                  v358 = v747;
                  goto LABEL_208;
                }

                v661 = 0;
                v765 = (v637 + ((*(v722 + 80) + 32) & ~*(v722 + 80)));
                v662 = (v739 + 56);
                v663 = v694;
                v766 = result;
                while (1)
                {
                  if (v661 >= v637[2])
                  {
                    goto LABEL_322;
                  }

                  sub_1D6D09934(v765 + *(v722 + 72) * v661, v663, type metadata accessor for FormatPropertyDefinition);
                  v669 = FormatPropertyDefinition.identifier.getter();
                  if (*(v660 + 16))
                  {
                    v671 = sub_1D5B69D90(v669, v670);
                    v673 = v672;

                    if (v673)
                    {
                      v664 = v766;
                      v665 = v739;
                      v666 = v766[7] + *(v739 + 72) * v671;
                      v667 = v715;
                      sub_1D6D09934(v666, v715, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v663, type metadata accessor for FormatPropertyDefinition);
                      (*(v665 + 56))(v667, 0, 1, v769);
                      v668 = v667;
                      v660 = v664;
                      result = sub_1D6D0A444(v668, sub_1D5E04C00);
                      v371 = v755;
                      v360 = v767;
                      v637 = v763;
                      goto LABEL_290;
                    }
                  }

                  else
                  {
                  }

                  v674 = v715;
                  (*v662)(v715, 1, 1, v769);
                  sub_1D6D0A444(v674, sub_1D5E04C00);
                  if (sub_1D695C4AC())
                  {

                    sub_1D67F58E4(v780, v804);

                    sub_1D60CF6F4(v763, v759, v760, *(&v760 + 1), v761, *(&v761 + 1), v762);

                    type metadata accessor for FormatLayoutError();
                    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                    swift_allocError();
                    v676 = v675;
                    sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition);
                    v678 = *(v677 + 48);
                    v679 = v727;
                    sub_1D6D09934(v727, v676, type metadata accessor for FeedCustomItem);
                    sub_1D6D09934(v663, v676 + v678, type metadata accessor for FormatPropertyDefinition);
                    swift_storeEnumTagMultiPayload();
                    swift_willThrow();
                    sub_1D62B7D78(&v784);
                    sub_1D6D0A444(v663, type metadata accessor for FormatPropertyDefinition);
                    sub_1D6D0A444(v747, type metadata accessor for FeedPuzzleStatistic);
                    v566 = type metadata accessor for FeedCustomItem;
                    v567 = v679;
                    return sub_1D6D0A444(v567, v566);
                  }

                  result = sub_1D6D0A444(v663, type metadata accessor for FormatPropertyDefinition);
                  v371 = v755;
                  v360 = v767;
                  v637 = v763;
                  v660 = v766;
LABEL_290:
                  if (v775 == ++v661)
                  {
                    sub_1D60CF6F4(v637, v759, v760, *(&v760 + 1), v761, *(&v761 + 1), v762);

                    v237 = v776;
                    v354 = v778;
                    goto LABEL_300;
                  }
                }
              }
            }

            sub_1D67F58E4(v780, v804);

            LOBYTE(v800) = 0;
            v798 = 0u;
            v799 = 0u;
            v796 = 0u;
            v797 = 0u;
            v795 = 0u;
            goto LABEL_265;
          }
        }

        v780 = 0;
        v804 = 0;
        v779 = 0;
        v777 = 0;
        v774 = 0;
        v773 = 0;
        goto LABEL_198;
      }
    }

    v780 = 0;
    v804 = 0;
    v779 = 0;
    v777 = 0;
    v774 = 0;
    v773 = 0;
    v371 = v366;
    goto LABEL_198;
  }

  v271 = *v223;
  v689 = v264;
  if (v271)
  {
  }

  else
  {
    v272 = sub_1D62F1548(v264);
    v270 = v767;
    v265 = *(v272 + 16);
  }

  v763 = (v748 + 56);
  v691 = v780 | 0x1000;
  v692 = (v748 + 48);
  v685 = v272;

  v283 = 0;
  v690 = v265;
  if (v265)
  {
    goto LABEL_50;
  }

LABEL_49:
  v284 = 1;
  v283 = v265;
  v285 = v766;
  while (1)
  {
    (*v763)(v285, v284, 1, v269);
    v291 = v285;
    v292 = v765;
    sub_1D6D09B18(v291, v765, &qword_1EC894E80, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
    if ((*v692)(v292, 1, v269) == 1)
    {
      swift_bridgeObjectRelease_n();
      v223 = v778;
      v266 = v749;
      v268 = v682;
      result = v689;
      goto LABEL_58;
    }

    v293 = *v292;
    sub_1D6D0A058(v292 + *(v269 + 48), v190, type metadata accessor for FeedPuzzleStatistic);
    if ((v691 & ~*v190) == 0)
    {
      v311 = v685;

      *&v795 = v311;
      v312 = v720;
      sub_1D5EC1EE0(v293, v720);
      sub_1D6D0A444(v190, type metadata accessor for FeedPuzzleStatistic);

      v313 = v312;
      v314 = v719;
      sub_1D6D0A058(v313, v719, type metadata accessor for FeedPuzzleStatistic);
      v315 = v314;
      v316 = v718;
      sub_1D6D0A058(v315, v718, type metadata accessor for FeedPuzzleStatistic);
      v317 = v741;
      sub_1D6D0A058(v316, v741, type metadata accessor for FeedPuzzleStatistic);
      v318 = v772;
      v319 = v755;
      (*(v772 + 56))(v317, 0, 1, v755);
      v237 = v776;
      v320 = v778;
      v321 = v779;
      goto LABEL_89;
    }

    result = sub_1D6D0A444(v190, type metadata accessor for FeedPuzzleStatistic);
    v265 = v690;
    if (v283 == v690)
    {
      goto LABEL_49;
    }

LABEL_50:
    if ((v283 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v283 >= *(v685 + 16))
    {
      goto LABEL_304;
    }

    v286 = v222;
    v287 = v685 + ((*(v772 + 80) + 32) & ~*(v772 + 80)) + *(v772 + 72) * v283;
    v288 = v774;
    v289 = *(v774 + 48);
    v290 = v770;
    *v770 = v283;
    sub_1D6D09934(v287, v290 + v289, type metadata accessor for FeedPuzzleStatistic);
    v285 = v766;
    sub_1D6D0A3D8(v290, v766, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
    v284 = 0;
    ++v283;
    v269 = v288;
    v222 = v286;
    v270 = v767;
  }

  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  __break(1u);
LABEL_314:
  __break(1u);
LABEL_315:
  __break(1u);
LABEL_316:
  __break(1u);
LABEL_317:
  __break(1u);
LABEL_318:
  __break(1u);
LABEL_319:
  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
LABEL_324:
  __break(1u);
  return result;
}

uint64_t sub_1D6CE97DC@<X0>(char *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, void *a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = v13;
  v480 = a8;
  v464 = a6;
  v465 = a7;
  v482 = a5;
  v483 = a4;
  v524 = a3;
  v466 = a2;
  v481 = a1;
  v461 = a9;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v458 = &v440 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v460 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v453 = &v440 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v440 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v459 = &v440 - v27;
  v474 = type metadata accessor for FormatOption();
  v470 = *(v474 - 8);
  MEMORY[0x1EEE9AC00](v474, v28);
  v454 = &v440 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v452 = &v440 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v463 = &v440 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v469 = &v440 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v473 = &v440 - v41;
  sub_1D6AC4E74();
  v450 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v451 = &v440 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v457 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v457, v45);
  v462 = &v440 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v456 = &v440 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v467, v50);
  v468 = &v440 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v53 = *(v52 + 16);
  v455 = v24;
  *&v476 = v52;
  v54 = 0;
  if (v53)
  {
    v55 = (v52 + 32);
    do
    {
      v56 = *v55++;
      v57 = qword_1D7349118[v56];
      if ((v57 & ~v54) == 0)
      {
        v57 = 0;
      }

      v54 |= v57;
      --v53;
    }

    while (v53);
  }

  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  sub_1D6D09E8C(0, &qword_1EDF155C8, &type metadata for FeedPuzzleType, type metadata accessor for FeedItemSorter);
  *&v475 = v59;
  v60 = swift_allocObject();
  v61 = MEMORY[0x1E69E7CC0];
  v478 = v60;
  *(v60 + 16) = MEMORY[0x1E69E7CC0];
  v62 = (v60 + 16);
  v63 = swift_allocObject();
  *(v63 + 16) = sub_1D6D09CB8;
  *(v63 + 24) = v58;
  swift_beginAccess();

  v64 = sub_1D6990B38(0, 1, 1, v61);
  v66 = v64[2];
  v65 = v64[3];
  if (v66 >= v65 >> 1)
  {
    v64 = sub_1D6990B38((v65 > 1), v66 + 1, 1, v64);
  }

  v471 = a11;
  v479 = a10;
  v64[2] = v66 + 1;
  v67 = &v64[2 * v66];
  v67[4] = sub_1D6D09CBC;
  v67[5] = v63;
  *v62 = v64;
  swift_endAccess();

  *&v472 = type metadata accessor for GroupLayoutBindingContext();
  v68 = *&v481[*(v472 + 56)];
  v69 = *(v68 + 16);
  v70 = v483;

  if (!v69 || (v71 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, v524, v70), (v72 & 1) == 0) || !*(*(*(v68 + 56) + 8 * v71) + 16))
  {
    sub_1D5ED8048();
    v75 = swift_allocError();
    strcpy(v76, "FeedPuzzleType");
    *(v76 + 15) = -18;
    *(v76 + 16) = v524;
    *(v76 + 24) = v70;
LABEL_14:
    *(v76 + 32) = v482;
    *(v76 + 40) = 1;
    v77 = v479;
    *(v76 + 48) = v480;
    *(v76 + 56) = v77;
    *(v76 + 64) = 0;
    swift_willThrow();

    goto LABEL_15;
  }

  v74 = sub_1D5BF08EC(v73, v480, v479);
  if (v14)
  {

    v75 = v14;
LABEL_15:
    v78 = v477;
    goto LABEL_16;
  }

  v445 = v73;
  v102 = sub_1D714F420(v74);

  if (!v102)
  {
LABEL_42:

    sub_1D5ED8048();
    v75 = swift_allocError();
    strcpy(v76, "FeedPuzzleType");
    *(v76 + 15) = -18;
    v120 = v483;
    *(v76 + 16) = v524;
    *(v76 + 24) = v120;
    goto LABEL_14;
  }

  result = v102;
  v103 = *(v102 + 16);
  if (!v103)
  {

    goto LABEL_42;
  }

  v104 = v472;
  v105 = v481;
  v106 = *&v481[*(v472 + 68)];
  v107 = *(v472 + 76);
  v108 = *&v481[v107];
  v443 = 0;
  v440 = v107;
  v441 = v108;
  if (v108 >= v106)
  {
    goto LABEL_54;
  }

  v109 = *v481;
  v442 = result;
  if (v109)
  {
    v110 = result;
    swift_bridgeObjectRetain_n();
    goto LABEL_46;
  }

  v110 = sub_1D62F191C(result);
  v103 = *(v110 + 16);

  if (v103)
  {
LABEL_46:
    v122 = 0;
    v444 = v482 | 0x1000;
    v123 = 32;
    while (1)
    {
      if (v122 >= *(v110 + 16))
      {
        __break(1u);
LABEL_299:
        __break(1u);
LABEL_300:

        sub_1D67F58E4(v480, v524);
        sub_1D60CF6F4(v451, v442, v444, v446, v447, v448, v450);
        sub_1D62B7D78(&v491);
        sub_1D5F2DE58(&v518);
        sub_1D6D0A444(v455, type metadata accessor for FormatPropertyDefinition);

        sub_1D6D0A444(v108, type metadata accessor for FormatOption);
        sub_1D6D0A444(v462, type metadata accessor for FeedCustomItem);
      }

      v108 = 0xEE0065707954656CLL;
      v124 = *(v110 + v123 + 32);
      v125 = *(v110 + v123 + 48);
      v126 = *(v110 + v123 + 16);
      v511 = *(v110 + v123);
      v512 = v126;
      v513 = v124;
      v514 = v125;
      v447 = v126;
      v448 = v511;
      v449 = v125;
      v446 = v124;
      sub_1D63071F4(&v511, &v505);
      if (!v449)
      {
LABEL_51:
        v108 = v441;
        goto LABEL_52;
      }

      v511 = v448;
      v512 = v447;
      v513 = v446;
      v514 = v449;
      if ((v444 & ~v448) == 0)
      {
        break;
      }

      ++v122;
      sub_1D5F2DE58(&v511);
      v123 += 64;
      if (v103 == v122)
      {
        goto LABEL_51;
      }
    }

    *&v484 = v110;
    sub_1D5EC1F20(v122, &v505);
    sub_1D5F2DE58(&v511);
    v128 = *(&v505 + 1);
    v127 = v505;
    v130 = *(&v506 + 1);
    v129 = v506;
    v132 = *(&v507 + 1);
    v131 = v507;
    v133 = *(&v508 + 1);
    v134 = v484;
    *&v449 = v508;
    if (v508)
    {
      v161 = *(&v506 + 1);
      v149 = v506;
LABEL_92:
      v482 = v132;
      *&v476 = v133;

LABEL_145:

      *&v491 = v127;
      *(&v491 + 1) = v128;
      *&v492 = v149;
      *(&v492 + 1) = v161;
      *&v493 = v131;
      *(&v493 + 1) = v482;
      *&v494 = v449;
      *(&v494 + 1) = v476;
      v239 = v443;
      v240 = v483;
      if ((v127 & 0x1000) != 0)
      {
        if (!__OFADD__(v441, 1))
        {
          *&v481[v440] = v441 + 1;
          goto LABEL_148;
        }

LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
        return result;
      }

LABEL_148:
      if (v471)
      {
        v241 = v445;
      }

      else
      {
        MEMORY[0x1EEE9AC00](result, v238);
        *(&v440 - 2) = &v491;
        v241 = sub_1D5BF5F6C(sub_1D6D0A5BC, (&v440 - 4), v445);
        v443 = v239;
      }

      strcpy(&v511, "FeedPuzzleType");
      HIBYTE(v511) = -18;
      *&v512 = v524;
      *(&v512 + 1) = v240;
      sub_1D5BDACA8(&v511, v241);

      swift_setDeallocating();
      swift_deallocClassInstance();

      *&v446 = *(&v491 + 1);
      v242 = v491;
      v243 = v492;
      *&v448 = *(&v492 + 1);
      *&v447 = v493;
      v244 = v449;

      v245 = v466;
      v246 = v479;
      v247 = v480;
      v248 = v482;
      v249 = sub_1D6196E44(v466, v480, v479, v482, v244);

      v445 = v249;
      v523 = v249;
      v250 = v246;

      v251 = v248;
      v252 = v244;
      v253 = sub_1D6196F00(v245, v247, v246, v251, v244);

      v522 = v253;
      if (v246)
      {
        v254 = v477;
        v255 = v242;
        if (v245[2])
        {

          v256 = sub_1D5B69D90(v480, v250);
          v257 = v243;
          if (v258)
          {
            v259 = *(*(v245[7] + 8 * v256) + 136);
            if (*(v259 + 16))
            {

              v260 = sub_1D5B69D90(v482, v252);
              v262 = v261;

              v263 = v446;
              if (v262)
              {
                v264 = (*(v259 + 56) + 48 * v260);
                v265 = v264[1];
                v480 = *v264;
                v266 = v264[2];
                v267 = v264[3];
                v268 = v264[5];
                *&v472 = v264[4];
                v524 = v265;

                v478 = v266;

                *&v475 = v267;

                v483 = v268;
              }

              else
              {

                v480 = 0;
                v524 = 0;
                v478 = 0;
                *&v475 = 0;
                *&v472 = 0;
                v483 = 0;
              }

              v236 = v477;
              v252 = v449;
            }

            else
            {
              v236 = v254;

              v480 = 0;
              v524 = 0;
              v478 = 0;
              *&v475 = 0;
              *&v472 = 0;
              v483 = 0;
              v263 = v446;
            }
          }

          else
          {

            v480 = 0;
            v524 = 0;
            v478 = 0;
            *&v475 = 0;
            *&v472 = 0;
            v483 = 0;
            v236 = v254;
            v263 = v446;
          }

LABEL_189:
          *&v518 = v255;
          *(&v518 + 1) = v263;
          LOBYTE(v519) = v257;
          *(&v519 + 1) = v448;
          *&v520 = v447;
          *(&v520 + 1) = v482;
          *&v521 = v252;
          *&v449 = v252;
          *(&v521 + 1) = v476;
          *(&v506 + 1) = &type metadata for FeedPuzzleType;
          v289 = sub_1D6307250();
          *&v507 = v289;
          v290 = swift_allocObject();
          *&v505 = v290;
          v291 = v519;
          v290[1] = v518;
          v290[2] = v291;
          v292 = v521;
          v290[3] = v520;
          v290[4] = v292;
          sub_1D63071F4(&v518, &v511);
          v293 = v468;
          sub_1D6818590(&v505, v468);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload != 8)
          {
            if (EnumCaseMultiPayload == 4)
            {
              v295 = v293;
              v293 = v456;
              sub_1D6D0A058(v295, v456, type metadata accessor for FeedWebEmbed);
              v296 = sub_1D6944620();
              sub_1D5D505F0(v296);
              v297 = sub_1D69449D8();
              sub_1D5B886D0(v297);
              v298 = type metadata accessor for FeedWebEmbed;
            }

            else
            {
              v298 = type metadata accessor for FeedItem;
            }

            sub_1D6D0A444(v293, v298);
            v315 = v481;
            goto LABEL_199;
          }

          v456 = v255;
          v299 = v462;
          sub_1D6D0A058(v293, v462, type metadata accessor for FeedCustomItem);
          v300 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
          swift_beginAccess();
          v301 = *(v300 + 8);
          v302 = v299 + *(v457 + 20);
          v304 = *(v302 + 16);
          v303 = *(v302 + 24);
          if (*(v301 + 16))
          {
            v457 = v289;

            v305 = sub_1D5B69D90(v304, v303);
            if (v306)
            {
              v307 = v451;
              sub_1D6D09934(*(v301 + 56) + *(v450 + 72) * v305, v451, sub_1D6AC4E74);
              v308 = *(v307 + 32);
              v309 = *(v307 + 64);
              v494 = *(v307 + 48);
              v495 = v309;
              v496 = *(v307 + 80);
              v310 = *(v307 + 16);
              v491 = *v307;
              v492 = v310;
              v493 = v308;
              sub_1D62B7D1C(&v491, &v484);
              sub_1D6D0A444(v307, sub_1D6AC4E74);

              v507 = v493;
              v508 = v494;
              v509 = v495;
              LOBYTE(v510) = v496;
              v311 = v496 >> 6;
              v505 = v491;
              v506 = v492;
              if (v311)
              {
                v312 = v524;
                if (v311 == 1)
                {
                  v313 = v480;
                  v314 = v524;
                  goto LABEL_261;
                }

                LODWORD(v450) = v496;
                v442 = *(&v493 + 1);
                v399 = v493;
                *&v446 = *(&v494 + 1);
                v444 = v494;
                *&v448 = *(&v495 + 1);
                *&v447 = v495;
                *&v484 = v493;
                sub_1D6D098B8(0);
                sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8);
                sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition);
                v451 = v399;

                v400 = sub_1D72623BC();
                result = type metadata accessor for FormatCustomItem.Resolved();
                v401 = *(v302 + *(result + 28));
                v479 = *(v401 + 16);
                if (v479)
                {
                  v402 = 0;
                  v467 = (*(v470 + 80) + 32) & ~*(v470 + 80);
                  v468 = v401 + v467;
                  do
                  {
                    v404 = v401;
                    v405 = *(v401 + 16);
                    v108 = v469;
                    if (v402 >= v405)
                    {
                      goto LABEL_309;
                    }

                    v406 = *(v470 + 72);
                    sub_1D6D09934(v468 + v406 * v402, v469, type metadata accessor for FormatOption);
                    if (*(v400 + 16) && (v407 = sub_1D5B69D90(*v108, *(v108 + 8)), (v408 & 1) != 0))
                    {
                      v466 = v253;
                      v409 = v400;
                      v410 = *(v400 + 56) + *(v460 + 72) * v407;
                      v411 = v453;
                      sub_1D6D09934(v410, v453, type metadata accessor for FormatPropertyDefinition);
                      v412 = v455;
                      sub_1D6D0A058(v411, v455, type metadata accessor for FormatPropertyDefinition);
                      type metadata accessor for FormatOptionConverter();
                      v413 = v452;
                      v414 = v443;
                      sub_1D6AC31AC(v108, v412, v452);
                      v443 = v414;
                      if (v414)
                      {
                        goto LABEL_300;
                      }

                      sub_1D6D09934(v413, v454, type metadata accessor for FormatOption);
                      v415 = v413;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v466 = sub_1D5CEABA0(0, v466[2] + 1, 1, v466);
                      }

                      v400 = v409;
                      v253 = v466;
                      v417 = v466[2];
                      v416 = v466[3];
                      v418 = v417 + 1;
                      if (v417 >= v416 >> 1)
                      {
                        v253 = sub_1D5CEABA0(v416 > 1, v417 + 1, 1, v466);
                      }

                      sub_1D6D0A444(v415, type metadata accessor for FormatOption);
                      sub_1D6D0A444(v455, type metadata accessor for FormatPropertyDefinition);
                      v403 = v454;
                    }

                    else
                    {
                      sub_1D6D09934(v108, v463, type metadata accessor for FormatOption);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v253 = sub_1D5CEABA0(0, *(v253 + 2) + 1, 1, v253);
                      }

                      v417 = *(v253 + 2);
                      v419 = *(v253 + 3);
                      v418 = v417 + 1;
                      if (v417 >= v419 >> 1)
                      {
                        v253 = sub_1D5CEABA0(v419 > 1, v417 + 1, 1, v253);
                      }

                      v403 = v463;
                    }

                    ++v402;
                    sub_1D6D0A444(v469, type metadata accessor for FormatOption);
                    *(v253 + 2) = v418;
                    result = sub_1D6D0A058(v403, &v253[v467 + v417 * v406], type metadata accessor for FormatOption);
                    v522 = v253;
                    v401 = v404;
                  }

                  while (v479 != v402);

                  v312 = v524;
                }

                else
                {
                }

                *&v484 = v401;
                sub_1D5B5AD98();
                sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98);
                sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption);
                v420 = sub_1D72623AC();
                result = v451;
                v421 = v459;
                v479 = *(v451 + 16);
                if (v479)
                {
                  v422 = 0;
                  v469 = v451 + ((*(v460 + 80) + 32) & ~*(v460 + 80));
                  v423 = (v470 + 56);
                  v424 = v451;
                  while (1)
                  {
                    if (v422 >= *(v424 + 16))
                    {
                      goto LABEL_310;
                    }

                    sub_1D6D09934(v469 + *(v460 + 72) * v422, v421, type metadata accessor for FormatPropertyDefinition);
                    v429 = FormatPropertyDefinition.identifier.getter();
                    if (*(v420 + 16))
                    {
                      v431 = sub_1D5B69D90(v429, v430);
                      v433 = v432;

                      if (v433)
                      {
                        v425 = v470;
                        v426 = v458;
                        sub_1D6D09934(*(v420 + 56) + *(v470 + 72) * v431, v458, type metadata accessor for FormatOption);
                        v421 = v459;
                        sub_1D6D0A444(v459, type metadata accessor for FormatPropertyDefinition);
                        (*(v425 + 56))(v426, 0, 1, v474);
                        v427 = sub_1D5E04C00;
                        v428 = v426;
                        v424 = v451;
                        goto LABEL_286;
                      }
                    }

                    else
                    {
                    }

                    v434 = v458;
                    (*v423)(v458, 1, 1, v474);
                    sub_1D6D0A444(v434, sub_1D5E04C00);
                    v421 = v459;
                    if (sub_1D695C4AC())
                    {

                      sub_1D67F58E4(v480, v524);

                      sub_1D60CF6F4(v424, v442, v444, v446, v447, v448, v450);

                      type metadata accessor for FormatLayoutError();
                      sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
                      swift_allocError();
                      v436 = v435;
                      sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition);
                      v438 = *(v437 + 48);
                      v439 = v462;
                      sub_1D6D09934(v462, v436, type metadata accessor for FeedCustomItem);
                      sub_1D6D09934(v421, v436 + v438, type metadata accessor for FormatPropertyDefinition);
                      swift_storeEnumTagMultiPayload();
                      swift_willThrow();
                      sub_1D62B7D78(&v491);
                      sub_1D5F2DE58(&v518);
                      sub_1D6D0A444(v421, type metadata accessor for FormatPropertyDefinition);
                      return sub_1D6D0A444(v439, type metadata accessor for FeedCustomItem);
                    }

                    v427 = type metadata accessor for FormatPropertyDefinition;
                    v428 = v421;
LABEL_286:
                    result = sub_1D6D0A444(v428, v427);
                    if (v479 == ++v422)
                    {
                      result = v424;
                      goto LABEL_296;
                    }
                  }
                }

                v524 = v312;
LABEL_296:
                sub_1D60CF6F4(result, v442, v444, v446, v447, v448, v450);

                v236 = v477;
                v315 = v481;
                v289 = v457;
                sub_1D62B7D78(&v491);
                sub_1D6D0A444(v462, type metadata accessor for FeedCustomItem);
                v255 = v456;
LABEL_199:
                v316 = v523;
                v481 = v522;
                v317 = v315[88];
                if (v471)
                {
                  swift_beginAccess();
                  if ((v317 & 1) != 0 || !*(v236[4] + 16) || (, sub_1D5B69D90(v464, v465), v319 = v318, , (v319 & 1) == 0))
                  {
                    v320 = *(v236[10] + 16);
                    if (v320)
                    {
                      sub_1D5B69D90(v482, v449);
                      v320 = 0x4000000000;
                      if ((v321 & 1) == 0)
                      {
                        v320 = 0;
                      }
                    }

                    *&v511 = v320 | v255;

                    v322 = sub_1D713CCF4();
                    v482 = v316;
                    v323 = sub_1D5BA8750(v322, v316);

                    swift_getObjectType();
                    sub_1D63071F4(&v518, &v511);
                    v324 = FCPuzzleTypeProviding.contentSelectors.getter();
                    sub_1D5F2DE58(&v518);
                    v325 = sub_1D5BA8750(v324, v323);

                    *(&v492 + 1) = &type metadata for FeedPuzzleType;
                    *&v493 = v289;
                    v326 = swift_allocObject();
                    *&v491 = v326;
                    v327 = v519;
                    v326[1] = v518;
                    v326[2] = v327;
                    v328 = v521;
                    v326[3] = v520;
                    v326[4] = v328;
                    sub_1D5B68374(&v491, &v505);
                    v329 = v524;
                    if (v524)
                    {
                      sub_1D63071F4(&v518, &v511);

                      v330 = sub_1D5BA8750(&unk_1F50F6A30, v325);
                      sub_1D5BFB68C(&unk_1F50F6A50);
                    }

                    else
                    {
                      sub_1D63071F4(&v518, &v511);

                      v330 = v325;
                    }

                    v346 = v481;
                    v479 = v325;
                    *(&v507 + 1) = v330;
                    v347 = *(v481 + 2);
                    if (v347)
                    {
                      *&v511 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v347, 0);
                      v348 = v511;
                      v349 = &v346[(*(v470 + 80) + 32) & ~*(v470 + 80)];
                      v350 = *(v470 + 72);
                      v351 = v347;
                      do
                      {
                        v352 = v473;
                        sub_1D6D09934(v349, v473, type metadata accessor for FormatOption);
                        v353 = swift_allocBox();
                        sub_1D6D0A058(v352, v354, type metadata accessor for FormatOption);
                        *&v511 = v348;
                        v356 = *(v348 + 16);
                        v355 = *(v348 + 24);
                        if (v356 >= v355 >> 1)
                        {
                          sub_1D5D24610((v355 > 1), v356 + 1, 1);
                          v348 = v511;
                        }

                        *(v348 + 16) = v356 + 1;
                        *(v348 + 8 * v356 + 32) = v353 | 0x1000000000000004;
                        v349 += v350;
                        --v351;
                      }

                      while (v351);
                      __swift_destroy_boxed_opaque_existential_1(&v491);
                      v329 = v524;
                    }

                    else
                    {
                      __swift_destroy_boxed_opaque_existential_1(&v491);
                      v348 = MEMORY[0x1E69E7CC0];
                    }

                    *&v508 = v348;
                    v368 = v480;
                    *(&v508 + 1) = v480;
                    *&v509 = v329;
                    *(&v509 + 1) = v478;
                    *&v510 = v475;
                    *(&v510 + 1) = v472;
                    v517 = v483;
                    v511 = v505;
                    v512 = v506;
                    v513 = v507;
                    v514 = v508;
                    v515 = v509;
                    v516 = v510;
                    v369 = v465;

                    sub_1D67F5880(v368, v329);
                    sub_1D6D60C48(&v511, v464, v369);
                    v497 = v518;
                    v498 = v519;
                    v499 = v520;
                    v500 = v521;
                    sub_1D63071F4(&v518, &v511);
                    if (v329)
                    {
                      v370 = sub_1D5BA8750(&unk_1F50F6A60, v479);
                      sub_1D5BFB68C(&unk_1F50F6A80);
                      v371 = v481;
                    }

                    else
                    {
                      v371 = v481;
                      v370 = v479;
                    }

                    v374 = MEMORY[0x1E69E7CC0];
                    if (v347)
                    {
                      v479 = v370;
                      *&v511 = MEMORY[0x1E69E7CC0];
                      sub_1D5D24610(0, v347, 0);
                      v374 = v511;
                      v375 = &v371[(*(v470 + 80) + 32) & ~*(v470 + 80)];
                      v376 = *(v470 + 72);
                      do
                      {
                        v377 = v473;
                        sub_1D6D09934(v375, v473, type metadata accessor for FormatOption);
                        v378 = swift_allocBox();
                        sub_1D6D0A058(v377, v379, type metadata accessor for FormatOption);
                        *&v511 = v374;
                        v381 = *(v374 + 16);
                        v380 = *(v374 + 24);
                        if (v381 >= v380 >> 1)
                        {
                          sub_1D5D24610((v380 > 1), v381 + 1, 1);
                          v374 = v511;
                        }

                        *(v374 + 16) = v381 + 1;
                        *(v374 + 8 * v381 + 32) = v378 | 0x1000000000000004;
                        v375 += v376;
                        --v347;
                      }

                      while (v347);
                      v329 = v524;
                      v370 = v479;
                    }

                    v382 = v498;
                    v383 = v461;
                    *v461 = v497;
                    v383[1] = v382;
                    v384 = v500;
                    v383[2] = v499;
                    v383[3] = v384;
                    *(v383 + 8) = v370;
                    goto LABEL_256;
                  }

LABEL_211:
                  sub_1D6752B3C();
                  swift_allocError();
                  v333 = v465;
                  *v334 = v464;
                  *(v334 + 8) = v333;
                  *(v334 + 56) = 0;
                  swift_willThrow();
                  swift_endAccess();

                  sub_1D5F2DE58(&v518);
                  v335 = v480;
                  v336 = v524;
                }

                else
                {
                  swift_beginAccess();
                  if ((v317 & 1) == 0)
                  {
                    if (*(v236[3] + 16))
                    {

                      sub_1D5B69D90(v464, v465);
                      v332 = v331;

                      if (v332)
                      {
                        goto LABEL_211;
                      }
                    }
                  }

                  v337 = *(v236[10] + 16);
                  if (v337)
                  {
                    sub_1D5B69D90(v482, v449);
                    v337 = 0x4000000000;
                    if ((v338 & 1) == 0)
                    {
                      v337 = 0;
                    }
                  }

                  *&v511 = v337 | v255;

                  v339 = sub_1D713CCF4();
                  v482 = v316;
                  v340 = sub_1D5BA8750(v339, v316);

                  swift_getObjectType();
                  sub_1D63071F4(&v518, &v511);
                  v341 = FCPuzzleTypeProviding.contentSelectors.getter();
                  sub_1D5F2DE58(&v518);
                  v342 = sub_1D5BA8750(v341, v340);

                  *(&v492 + 1) = &type metadata for FeedPuzzleType;
                  *&v493 = v289;
                  v343 = swift_allocObject();
                  *&v491 = v343;
                  v344 = v519;
                  v343[1] = v518;
                  v343[2] = v344;
                  v345 = v521;
                  v343[3] = v520;
                  v343[4] = v345;
                  sub_1D5B68374(&v491, &v505);
                  v329 = v524;
                  v479 = v342;
                  if (v524)
                  {
                    sub_1D63071F4(&v518, &v511);

                    v342 = sub_1D5BA8750(&unk_1F50F6A90, v342);
                    sub_1D5BFB68C(&unk_1F50F6AB0);
                  }

                  else
                  {
                    sub_1D63071F4(&v518, &v511);
                  }

                  v357 = v481;
                  *(&v507 + 1) = v342;
                  v358 = *(v481 + 2);
                  if (v358)
                  {
                    *&v511 = MEMORY[0x1E69E7CC0];
                    sub_1D5D24610(0, v358, 0);
                    v359 = v511;
                    v360 = &v357[(*(v470 + 80) + 32) & ~*(v470 + 80)];
                    v361 = *(v470 + 72);
                    v362 = v358;
                    do
                    {
                      v363 = v473;
                      sub_1D6D09934(v360, v473, type metadata accessor for FormatOption);
                      v364 = swift_allocBox();
                      sub_1D6D0A058(v363, v365, type metadata accessor for FormatOption);
                      *&v511 = v359;
                      v367 = *(v359 + 16);
                      v366 = *(v359 + 24);
                      if (v367 >= v366 >> 1)
                      {
                        sub_1D5D24610((v366 > 1), v367 + 1, 1);
                        v359 = v511;
                      }

                      *(v359 + 16) = v367 + 1;
                      *(v359 + 8 * v367 + 32) = v364 | 0x1000000000000004;
                      v360 += v361;
                      --v362;
                    }

                    while (v362);
                    __swift_destroy_boxed_opaque_existential_1(&v491);
                    v329 = v524;
                  }

                  else
                  {
                    __swift_destroy_boxed_opaque_existential_1(&v491);
                    v359 = MEMORY[0x1E69E7CC0];
                  }

                  *&v508 = v359;
                  v372 = v480;
                  *(&v508 + 1) = v480;
                  *&v509 = v329;
                  *(&v509 + 1) = v478;
                  *&v510 = v475;
                  *(&v510 + 1) = v472;
                  v517 = v483;
                  v511 = v505;
                  v512 = v506;
                  v513 = v507;
                  v514 = v508;
                  v515 = v509;
                  v516 = v510;
                  v373 = v465;

                  sub_1D67F5880(v372, v329);
                  sub_1D6D60C48(&v511, v464, v373);
                  v501 = v518;
                  v502 = v519;
                  v503 = v520;
                  v504 = v521;
                  sub_1D63071F4(&v518, &v511);
                  if (v329)
                  {
                    v479 = sub_1D5BA8750(&unk_1F50F6AC0, v479);
                    sub_1D5BFB68C(&unk_1F50F6AE0);
                  }

                  v385 = v481;
                  v374 = MEMORY[0x1E69E7CC0];
                  if (v358)
                  {
                    *&v511 = MEMORY[0x1E69E7CC0];
                    sub_1D6E76EA4(v358);
                    v386 = &v385[(*(v470 + 80) + 32) & ~*(v470 + 80)];
                    v387 = *(v470 + 72);
                    do
                    {
                      v388 = v473;
                      sub_1D6D09934(v386, v473, type metadata accessor for FormatOption);
                      v389 = swift_allocBox();
                      sub_1D6D0A058(v388, v390, type metadata accessor for FormatOption);
                      v374 = v511;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        sub_1D5D24610(0, *(v374 + 16) + 1, 1);
                        v374 = v511;
                      }

                      v392 = *(v374 + 16);
                      v391 = *(v374 + 24);
                      if (v392 >= v391 >> 1)
                      {
                        sub_1D5D24610((v391 > 1), v392 + 1, 1);
                        v374 = v511;
                      }

                      *(v374 + 16) = v392 + 1;
                      *(v374 + 8 * v392 + 32) = v389 | 0x1000000000000004;
                      v386 += v387;
                      --v358;
                    }

                    while (v358);
                    v383 = v461;
                    v329 = v524;
                  }

                  else
                  {
                    v383 = v461;
                  }

                  v393 = v502;
                  *v383 = v501;
                  v383[1] = v393;
                  v394 = v504;
                  v383[2] = v503;
                  v383[3] = v394;
                  *(v383 + 8) = v479;
LABEL_256:
                  *(v383 + 9) = v374;
                  v395 = v480;
                  *(v383 + 10) = v480;
                  *(v383 + 11) = v329;
                  v396 = v475;
                  *(v383 + 12) = v478;
                  *(v383 + 13) = v396;
                  v397 = v483;
                  *(v383 + 14) = v472;
                  *(v383 + 15) = v397;
                  swift_endAccess();
                  sub_1D67F5880(v395, v329);

                  sub_1D5F2DE58(&v518);
                  v335 = v395;
                  v336 = v329;
                }

                return sub_1D67F58E4(v335, v336);
              }

              v313 = v480;
              v314 = v524;
LABEL_261:
              sub_1D67F58E4(v313, v314);

              v513 = v507;
              v514 = v508;
              v515 = v509;
              LOBYTE(v516) = v510;
              v511 = v505;
              v512 = v506;
LABEL_262:
              type metadata accessor for FormatLayoutError();
              sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
              swift_allocError();
              *v398 = v304;
              v398[1] = v303;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              sub_1D6D09524(&v511, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
              sub_1D5F2DE58(&v518);
              return sub_1D6D0A444(v462, type metadata accessor for FeedCustomItem);
            }
          }

          sub_1D67F58E4(v480, v524);

          LOBYTE(v516) = 0;
          v514 = 0u;
          v515 = 0u;
          v512 = 0u;
          v513 = 0u;
          v511 = 0u;
          goto LABEL_262;
        }

        v480 = 0;
        v524 = 0;
        v478 = 0;
        *&v475 = 0;
        *&v472 = 0;
        v483 = 0;
        v236 = v477;
      }

      else
      {
        v480 = 0;
        v524 = 0;
        v478 = 0;
        *&v475 = 0;
        *&v472 = 0;
        v483 = 0;
        v236 = v477;
        v255 = v242;
      }

      v263 = v446;
      v257 = v243;
      goto LABEL_189;
    }

    v108 = v441;
    goto LABEL_53;
  }

LABEL_52:
  swift_bridgeObjectRelease_n();
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 0;
LABEL_53:
  *&v511 = v127;
  *(&v511 + 1) = v128;
  *&v512 = v129;
  *(&v512 + 1) = v130;
  *&v513 = v131;
  *(&v513 + 1) = v132;
  *&v514 = 0;
  *(&v514 + 1) = v133;
  *&v515 = v134;
  sub_1D6D0983C(&v511, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v105 = v481;
  v104 = v472;
  result = v442;
LABEL_54:
  v135 = *&v105[*(v104 + 72)];
  v136 = v135 - v108;
  if (__OFSUB__(v135, v108))
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v137 = *v105;
  if (v136 >= 1)
  {
    if ((*v105 & 1) == 0)
    {
      v138 = sub_1D62F191C(result);

      result = v138;
    }

    v139 = *(result + 16);
    v140 = result;

    if (v139)
    {
      v141 = 0;
      v108 = 32;
      while (1)
      {
        if (v141 >= *(v140 + 16))
        {
          goto LABEL_299;
        }

        v142 = *(v140 + v108 + 32);
        v143 = *(v140 + v108 + 48);
        v144 = *(v140 + v108 + 16);
        v511 = *(v140 + v108);
        v512 = v144;
        v513 = v142;
        v514 = v143;
        v447 = v144;
        v448 = v511;
        v449 = v143;
        v446 = v142;
        sub_1D63071F4(&v511, &v505);
        if (!v449)
        {
          goto LABEL_64;
        }

        v511 = v448;
        v512 = v447;
        v513 = v446;
        v514 = v449;
        if ((v482 & ~v448) == 0)
        {
          break;
        }

        ++v141;
        sub_1D5F2DE58(&v511);
        v108 += 64;
        if (v139 == v141)
        {
          goto LABEL_64;
        }
      }

      *&v484 = v140;
      sub_1D5EC1F20(v141, &v505);
      sub_1D5F2DE58(&v511);
      v128 = *(&v505 + 1);
      v127 = v505;
      v148 = *(&v506 + 1);
      v149 = v506;
      v147 = *(&v507 + 1);
      v131 = v507;
      v146 = *(&v508 + 1);
      v145 = v484;
      *&v449 = v508;
      if (v508)
      {
        goto LABEL_144;
      }
    }

    else
    {
LABEL_64:
      swift_bridgeObjectRelease_n();
      v145 = 0;
      v146 = 0;
      v147 = 0;
      v131 = 0;
      v148 = 0;
      v149 = 0;
      v128 = 0;
      v127 = 0;
    }

    *&v511 = v127;
    *(&v511 + 1) = v128;
    *&v512 = v149;
    *(&v512 + 1) = v148;
    *&v513 = v131;
    *(&v513 + 1) = v147;
    *&v514 = 0;
    *(&v514 + 1) = v146;
    *&v515 = v145;
    v150 = &v511;
    goto LABEL_89;
  }

  v442 = result;
  if (v137)
  {
  }

  else
  {
    v151 = sub_1D62F191C(result);
  }

  v152 = v151;
  v153 = *(v151 + 16);

  if (!v153)
  {
LABEL_78:
    swift_bridgeObjectRelease_n();
    v160 = 0;
    v133 = 0;
    v132 = 0;
    v131 = 0;
    v159 = 0;
    v149 = 0;
    v128 = 0;
    v127 = 0;
    goto LABEL_79;
  }

  v154 = 0;
  v155 = 32;
  while (1)
  {
    if (v154 >= *(v152 + 16))
    {
      __break(1u);
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
      goto LABEL_307;
    }

    v156 = *(v152 + v155 + 32);
    v157 = *(v152 + v155 + 48);
    v158 = *(v152 + v155 + 16);
    v511 = *(v152 + v155);
    v512 = v158;
    v513 = v156;
    v514 = v157;
    v447 = v158;
    v448 = v511;
    v449 = v157;
    v446 = v156;
    sub_1D63071F4(&v511, &v505);
    if (!v449)
    {
      goto LABEL_78;
    }

    v511 = v448;
    v512 = v447;
    v513 = v446;
    v514 = v449;
    if ((v482 & ~v448) == 0 && (v448 & 0x1000) == 0)
    {
      break;
    }

    result = sub_1D5F2DE58(&v511);
    ++v154;
    v155 += 64;
    if (v153 == v154)
    {
      goto LABEL_78;
    }
  }

  *&v484 = v152;
  sub_1D5EC1F20(v154, &v505);
  sub_1D5F2DE58(&v511);
  v128 = *(&v505 + 1);
  v127 = v505;
  v159 = *(&v506 + 1);
  v149 = v506;
  v132 = *(&v507 + 1);
  v131 = v507;
  v133 = *(&v508 + 1);
  v160 = v484;
  *&v449 = v508;
  if (v508)
  {
    v161 = *(&v506 + 1);
    goto LABEL_92;
  }

LABEL_79:
  *&v511 = v127;
  *(&v511 + 1) = v128;
  *&v512 = v149;
  *(&v512 + 1) = v159;
  *&v513 = v131;
  *(&v513 + 1) = v132;
  *&v514 = 0;
  *(&v514 + 1) = v133;
  *&v515 = v160;
  sub_1D6D0983C(&v511, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v162 = v442;
  if ((*v481 & 1) == 0)
  {
    v163 = sub_1D62F191C(v442);

    v162 = v163;
  }

  v164 = *(v162 + 16);
  v165 = v162;

  if (v164)
  {
    v166 = 0;
    v167 = 32;
    while (1)
    {
      if (v166 >= *(v165 + 16))
      {
        goto LABEL_303;
      }

      v168 = *(v165 + v167 + 32);
      v169 = *(v165 + v167 + 48);
      v170 = *(v165 + v167 + 16);
      v505 = *(v165 + v167);
      v506 = v170;
      v507 = v168;
      v508 = v169;
      v447 = v170;
      v448 = v505;
      v449 = v169;
      v446 = v168;
      sub_1D63071F4(&v505, &v484);
      if (!v449)
      {
        goto LABEL_87;
      }

      v505 = v448;
      v506 = v447;
      v507 = v446;
      v508 = v449;
      if ((v482 & ~v448) == 0)
      {
        break;
      }

      ++v166;
      result = sub_1D5F2DE58(&v505);
      v167 += 64;
      if (v164 == v166)
      {
        goto LABEL_87;
      }
    }

    *&v518 = v165;
    sub_1D5EC1F20(v166, &v484);
    sub_1D5F2DE58(&v505);
    v128 = *(&v484 + 1);
    v127 = v484;
    v149 = v485;
    v148 = v486;
    v131 = v487;
    v147 = v488;
    v146 = v490;
    v171 = v518;
    *&v449 = v489;
    if (v489)
    {
LABEL_144:
      v161 = v148;
      v482 = v147;
      *&v476 = v146;
      goto LABEL_145;
    }
  }

  else
  {
LABEL_87:
    swift_bridgeObjectRelease_n();
    v171 = 0;
    v146 = 0;
    v147 = 0;
    v131 = 0;
    v148 = 0;
    v149 = 0;
    v128 = 0;
    v127 = 0;
  }

  *&v505 = v127;
  *(&v505 + 1) = v128;
  *&v506 = v149;
  *(&v506 + 1) = v148;
  *&v507 = v131;
  *(&v507 + 1) = v147;
  *&v508 = 0;
  *(&v508 + 1) = v146;
  *&v509 = v171;
  v150 = &v505;
LABEL_89:
  sub_1D6D0983C(v150, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v78 = v477;
  v173 = v479;
  v172 = v480;

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  sub_1D6D09524(&v511, &unk_1EDF154F0, &type metadata for FeedPuzzleType, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  v75 = swift_allocError();
  strcpy(v174, "FeedPuzzleType");
  v174[15] = -18;
  v175 = v483;
  *(v174 + 2) = v524;
  *(v174 + 3) = v175;
  *(v174 + 4) = v482;
  *(v174 + 5) = 1;
  *(v174 + 6) = v172;
  *(v174 + 7) = v173;
  v174[64] = 0;
  swift_willThrow();

LABEL_16:
  if ((*(v78 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    return swift_willThrow();
  }

  v79 = *(v476 + 16);
  v479 = v75;
  v80 = 0;
  if (v79)
  {
    v81 = (v476 + 32);
    do
    {
      v82 = *v81++;
      v83 = qword_1D7349118[v82];
      if ((v83 & ~v80) == 0)
      {
        v83 = 0;
      }

      v80 |= v83;
      --v79;
    }

    while (v79);
  }

  v84 = swift_allocObject();
  *(v84 + 16) = v80;
  v85 = swift_allocObject();
  v480 = v85;
  v86 = MEMORY[0x1E69E7CC0];
  *(v85 + 16) = MEMORY[0x1E69E7CC0];
  v87 = (v85 + 16);
  v88 = swift_allocObject();
  *(v88 + 16) = sub_1D6D0A52C;
  *(v88 + 24) = v84;
  swift_beginAccess();

  v89 = sub_1D6990B38(0, 1, 1, v86);
  v91 = v89[2];
  v90 = v89[3];
  if (v91 >= v90 >> 1)
  {
    v89 = sub_1D6990B38((v90 > 1), v91 + 1, 1, v89);
  }

  v89[2] = v91 + 1;
  v92 = &v89[2 * v91];
  v92[4] = sub_1D6D0A518;
  v92[5] = v88;
  v478 = v89;
  *v87 = v89;
  swift_endAccess();

  v93 = *(v68 + 16);
  v94 = v483;

  if (!v93 || (v95 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, v524, v94), (v96 & 1) == 0) || (v97 = *(*(v68 + 56) + 8 * v95), !*(v97 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    strcpy(v101, "FeedPuzzleType");
    v101[15] = -18;
    *(v101 + 2) = v524;
    *(v101 + 3) = v94;
    *(v101 + 4) = v482;
    *(v101 + 5) = 1;
    *(v101 + 6) = 0;
    *(v101 + 7) = 0;
    v101[64] = 0;
    swift_willThrow();

    swift_setDeallocating();
    return swift_deallocClassInstance();
  }

  v99 = sub_1D5BF08EC(v98, 0, 0);
  v111 = sub_1D714F420(v99);

  if (!v111)
  {
LABEL_44:

    sub_1D5ED8048();
    swift_allocError();
    *v121 = 0x7A7A755064656546;
    goto LABEL_140;
  }

  result = v111;
  v112 = *(v111 + 16);
  if (!v112)
  {

    goto LABEL_44;
  }

  v113 = v472;
  v114 = v481;
  v115 = *&v481[*(v472 + 68)];
  v116 = *(v472 + 76);
  v117 = *&v481[v116];
  v443 = 0;
  v445 = v116;
  *&v446 = v117;
  if (v117 >= v115)
  {
    goto LABEL_102;
  }

  v118 = *v481;
  *&v447 = result;
  if (v118)
  {
    v119 = result;
    result = swift_bridgeObjectRetain_n();
  }

  else
  {
    v119 = sub_1D62F191C(result);
    v112 = *(v119 + 16);

    if (!v112)
    {
      goto LABEL_100;
    }
  }

  v176 = 0;
  v177 = v482 | 0x1000;
  v178 = 32;
  while (2)
  {
    if (v176 >= *(v119 + 16))
    {
      goto LABEL_302;
    }

    v179 = *(v119 + v178 + 32);
    v180 = *(v119 + v178 + 48);
    v181 = *(v119 + v178 + 16);
    v511 = *(v119 + v178);
    v512 = v181;
    v513 = v179;
    v514 = v180;
    v475 = v511;
    v476 = v180;
    v448 = v179;
    v449 = v181;
    sub_1D63071F4(&v511, &v505);
    if (!v476)
    {
      break;
    }

    v511 = v475;
    v512 = v449;
    v513 = v448;
    v514 = v476;
    if ((v177 & ~v475) == 0)
    {

      *&v484 = v119;
      sub_1D5EC1F20(v176, &v505);
      sub_1D5F2DE58(&v511);
      v188 = *(&v505 + 1);
      v189 = v505;
      v186 = *(&v506 + 1);
      v187 = v506;
      v184 = *(&v507 + 1);
      v185 = v507;
      v183 = *(&v508 + 1);
      v219 = v508;
      v182 = v484;
      v236 = v477;
      if (!v508)
      {
        v116 = v445;
        goto LABEL_101;
      }

      *&v472 = *(&v506 + 1);
      v482 = *(&v507 + 1);
      *&v475 = v507;
      *&v476 = *(&v508 + 1);

LABEL_160:
      v116 = v445;
LABEL_168:
      *&v491 = v189;
      *(&v491 + 1) = v188;
      *&v492 = v187;
      *(&v492 + 1) = v472;
      *&v493 = v475;
      *(&v493 + 1) = v482;
      *&v494 = v219;
      *(&v494 + 1) = v476;
      v269 = v443;
      v270 = v483;
      if ((v189 & 0x1000) != 0)
      {
        if (__OFADD__(v446, 1))
        {
          goto LABEL_312;
        }

        *&v481[v116] = v446 + 1;
      }

      if ((v471 & 1) == 0)
      {
        MEMORY[0x1EEE9AC00](result, v237);
        *(&v440 - 2) = &v491;
        v97 = sub_1D5BF5F6C(sub_1D6D09EDC, (&v440 - 4), v97);
        v443 = v269;
      }

      strcpy(&v511, "FeedPuzzleType");
      HIBYTE(v511) = -18;
      *&v512 = v524;
      *(&v512 + 1) = v270;
      sub_1D5BDACA8(&v511, v97);

      swift_setDeallocating();
      swift_deallocClassInstance();

      v263 = *(&v491 + 1);
      v255 = v491;
      v257 = v492;
      *&v448 = *(&v492 + 1);
      *&v447 = v493;

      v271 = v466;
      v272 = v219;
      v273 = v482;
      v274 = sub_1D6196E44(v466, 42, 0xE100000000000000, v482, v272);

      v445 = v274;
      v523 = v274;

      v275 = v273;
      v252 = v272;
      v253 = sub_1D6196F00(v271, 42, 0xE100000000000000, v275, v272);

      v522 = v253;
      v276 = v271[2];

      if (v276 && (v277 = sub_1D5B69D90(42, 0xE100000000000000), (v278 & 1) != 0))
      {
        v279 = *(*(v271[7] + 8 * v277) + 136);
        v280 = *(v279 + 16);

        if (v280)
        {
          v524 = sub_1D5B69D90(v482, v272);
          v282 = v281;

          if (v282)
          {
            v283 = (*(v279 + 56) + 48 * v524);
            v284 = v283[1];
            v480 = *v283;
            v285 = v283[2];
            v286 = v283[3];
            v288 = v283[4];
            v287 = v283[5];
            *&v472 = v288;
            v483 = v287;
            v524 = v284;

            v478 = v285;

            *&v475 = v286;
          }

          else
          {

            v480 = 0;
            v524 = 0;
            v478 = 0;
            *&v475 = 0;
            *&v472 = 0;
            v483 = 0;
          }

          v252 = v272;
          goto LABEL_189;
        }
      }

      else
      {
      }

      v480 = 0;
      v524 = 0;
      v478 = 0;
      *&v475 = 0;
      *&v472 = 0;
      v483 = 0;
      goto LABEL_189;
    }

    ++v176;
    result = sub_1D5F2DE58(&v511);
    v178 += 64;
    if (v112 != v176)
    {
      continue;
    }

    break;
  }

  v116 = v445;
LABEL_100:
  swift_bridgeObjectRelease_n();
  v182 = 0;
  v183 = 0;
  v184 = 0;
  v185 = 0;
  v186 = 0;
  v187 = 0;
  v188 = 0;
  v189 = 0;
LABEL_101:
  *&v511 = v189;
  *(&v511 + 1) = v188;
  *&v512 = v187;
  *(&v512 + 1) = v186;
  *&v513 = v185;
  *(&v513 + 1) = v184;
  *&v514 = 0;
  *(&v514 + 1) = v183;
  *&v515 = v182;
  sub_1D6D0983C(&v511, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
  v114 = v481;
  v113 = v472;
  v117 = v446;
  result = v447;
LABEL_102:
  v190 = *&v114[*(v113 + 72)];
  v191 = v190 - v117;
  if (__OFSUB__(v190, v117))
  {
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  v192 = *v114;
  if (v191 < 1)
  {
    *&v447 = result;
    if (v192)
    {
    }

    else
    {
      v207 = sub_1D62F191C(result);
    }

    v208 = v207;
    v209 = *(v207 + 16);

    if (v209)
    {
      v210 = 0;
      v211 = 32;
      while (1)
      {
        if (v210 >= *(v208 + 16))
        {
          goto LABEL_305;
        }

        v212 = *(v208 + v211 + 32);
        v213 = *(v208 + v211 + 48);
        v214 = *(v208 + v211 + 16);
        v511 = *(v208 + v211);
        v512 = v214;
        v513 = v212;
        v514 = v213;
        v472 = v214;
        v475 = v511;
        v476 = v213;
        v449 = v212;
        sub_1D63071F4(&v511, &v505);
        if (!v476)
        {
          goto LABEL_128;
        }

        v511 = v475;
        v512 = v472;
        v513 = v449;
        v514 = v476;
        if ((v482 & ~v475) == 0 && (v475 & 0x1000) == 0)
        {
          break;
        }

        result = sub_1D5F2DE58(&v511);
        ++v210;
        v211 += 64;
        if (v209 == v210)
        {
          goto LABEL_128;
        }
      }

      *&v484 = v208;
      sub_1D5EC1F20(v210, &v505);
      sub_1D5F2DE58(&v511);
      v188 = *(&v505 + 1);
      v189 = v505;
      v215 = *(&v506 + 1);
      v187 = v506;
      v216 = *(&v507 + 1);
      v217 = v507;
      v218 = *(&v508 + 1);
      v219 = v508;
      v220 = v484;
      if (v508)
      {
        *&v472 = *(&v506 + 1);
        v482 = *(&v507 + 1);
        *&v475 = v507;
        *&v476 = *(&v508 + 1);

LABEL_167:

        v236 = v477;
        goto LABEL_168;
      }
    }

    else
    {
LABEL_128:
      swift_bridgeObjectRelease_n();
      v220 = 0;
      v218 = 0;
      v216 = 0;
      v217 = 0;
      v215 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
    }

    *&v511 = v189;
    *(&v511 + 1) = v188;
    *&v512 = v187;
    *(&v512 + 1) = v215;
    *&v513 = v217;
    *(&v513 + 1) = v216;
    *&v514 = 0;
    *(&v514 + 1) = v218;
    *&v515 = v220;
    sub_1D6D0983C(&v511, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);
    v221 = v447;
    if ((*v481 & 1) == 0)
    {
      v222 = sub_1D62F191C(v447);

      v221 = v222;
    }

    v223 = *(v221 + 16);
    v224 = v221;

    if (v223)
    {
      v225 = 0;
      v226 = 32;
      while (1)
      {
        if (v225 >= *(v224 + 16))
        {
          goto LABEL_306;
        }

        v227 = *(v224 + v226 + 32);
        v228 = *(v224 + v226 + 48);
        v229 = *(v224 + v226 + 16);
        v505 = *(v224 + v226);
        v506 = v229;
        v507 = v227;
        v508 = v228;
        v472 = v229;
        v475 = v505;
        v476 = v228;
        v449 = v227;
        sub_1D63071F4(&v505, &v484);
        if (!v476)
        {
          goto LABEL_137;
        }

        v505 = v475;
        v506 = v472;
        v507 = v449;
        v508 = v476;
        if ((v482 & ~v475) == 0)
        {
          break;
        }

        ++v225;
        result = sub_1D5F2DE58(&v505);
        v226 += 64;
        if (v223 == v225)
        {
          goto LABEL_137;
        }
      }

      *&v518 = v224;
      sub_1D5EC1F20(v225, &v484);
      sub_1D5F2DE58(&v505);
      v188 = *(&v484 + 1);
      v189 = v484;
      v187 = v485;
      v234 = v486;
      v233 = v487;
      v232 = v488;
      v219 = v489;
      v231 = v490;
      v230 = v518;
      if (v489)
      {
        *&v472 = v486;
        *&v475 = v487;
        v482 = v488;
        *&v476 = v490;
        goto LABEL_167;
      }
    }

    else
    {
LABEL_137:
      swift_bridgeObjectRelease_n();
      v230 = 0;
      v231 = 0;
      v232 = 0;
      v233 = 0;
      v234 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
    }

    *&v505 = v189;
    *(&v505 + 1) = v188;
    *&v506 = v187;
    *(&v506 + 1) = v234;
    *&v507 = v233;
    *(&v507 + 1) = v232;
    *&v508 = 0;
    *(&v508 + 1) = v231;
    *&v509 = v230;
    v206 = &v505;
    goto LABEL_139;
  }

  if ((*v114 & 1) == 0)
  {
    v193 = sub_1D62F191C(result);

    result = v193;
  }

  v194 = *(result + 16);
  v195 = result;

  if (v194)
  {
    v196 = 0;
    v197 = 32;
    while (1)
    {
      if (v196 >= *(v195 + 16))
      {
        goto LABEL_304;
      }

      v198 = *(v195 + v197 + 32);
      v199 = *(v195 + v197 + 48);
      v200 = *(v195 + v197 + 16);
      v511 = *(v195 + v197);
      v512 = v200;
      v513 = v198;
      v514 = v199;
      v472 = v200;
      v475 = v511;
      v476 = v199;
      v449 = v198;
      sub_1D63071F4(&v511, &v505);
      if (!v476)
      {
        goto LABEL_112;
      }

      v511 = v475;
      v512 = v472;
      v513 = v449;
      v514 = v476;
      if ((v482 & ~v475) == 0)
      {
        break;
      }

      ++v196;
      result = sub_1D5F2DE58(&v511);
      v197 += 64;
      if (v194 == v196)
      {
        goto LABEL_112;
      }
    }

    *&v484 = v195;
    sub_1D5EC1F20(v196, &v505);
    sub_1D5F2DE58(&v511);
    v188 = *(&v505 + 1);
    v189 = v505;
    v205 = *(&v506 + 1);
    v187 = v506;
    v203 = *(&v507 + 1);
    v204 = v507;
    v202 = *(&v508 + 1);
    v219 = v508;
    v201 = v484;
    if (v508)
    {
      *&v472 = *(&v506 + 1);
      v482 = *(&v507 + 1);
      *&v475 = v507;
      *&v476 = *(&v508 + 1);

      v236 = v477;
      goto LABEL_160;
    }
  }

  else
  {
LABEL_112:
    swift_bridgeObjectRelease_n();
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
  }

  *&v511 = v189;
  *(&v511 + 1) = v188;
  *&v512 = v187;
  *(&v512 + 1) = v205;
  *&v513 = v204;
  *(&v513 + 1) = v203;
  *&v514 = 0;
  *(&v514 + 1) = v202;
  *&v515 = v201;
  v206 = &v511;
LABEL_139:
  sub_1D6D0983C(v206, &qword_1EC894E68, &qword_1EC894E70, &qword_1EC894E78, &type metadata for FeedPuzzleType);

  v513 = 0u;
  v514 = 0u;
  v511 = 0u;
  v512 = 0u;
  sub_1D6D09524(&v511, &unk_1EDF154F0, &type metadata for FeedPuzzleType, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  swift_allocError();
  *v121 = 0x7A7A755064656546;
LABEL_140:
  *(v121 + 8) = 0xEE0065707954656CLL;
  v235 = v483;
  *(v121 + 16) = v524;
  *(v121 + 24) = v235;
  *(v121 + 32) = v482;
  *(v121 + 40) = 1;
  *(v121 + 48) = 0;
  *(v121 + 56) = 0;
  *(v121 + 64) = 0;
  swift_willThrow();

  swift_setDeallocating();
  return swift_deallocClassInstance();
}

uint64_t sub_1D6CECE98@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12)
{
  v14 = v13;
  v373 = a8;
  v358 = a6;
  v359 = a7;
  v376 = a5;
  v377 = a4;
  v435 = a3;
  v360 = a2;
  v374 = a1;
  v355 = a9;
  sub_1D5E04C00();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v352 = &v337 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FormatPropertyDefinition(0);
  v354 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v347 = &v337 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v349 = &v337 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v353 = &v337 - v26;
  v368 = type metadata accessor for FormatOption();
  v364 = *(v368 - 8);
  MEMORY[0x1EEE9AC00](v368, v27);
  v348 = &v337 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v346 = &v337 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v357 = &v337 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = (&v337 - v37);
  MEMORY[0x1EEE9AC00](v39, v40);
  v367 = &v337 - v41;
  sub_1D6AC4E74();
  v344 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v345 = &v337 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = type metadata accessor for FeedCustomItem();
  MEMORY[0x1EEE9AC00](v351, v45);
  v356 = &v337 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for FeedWebEmbed();
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v350 = (&v337 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v361 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v361, v50);
  v362 = &v337 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = v38;
  v370 = v12;
  v375 = *(v12 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_sortBy);
  v52 = *(v375 + 16);
  v53 = 0;
  if (v52)
  {
    v54 = (v375 + 32);
    do
    {
      v55 = *v54++;
      v56 = qword_1D7349118[v55];
      if ((v56 & ~v53) == 0)
      {
        v56 = 0;
      }

      v53 |= v56;
      --v52;
    }

    while (v52);
  }

  v57 = swift_allocObject();
  *(v57 + 16) = v53;
  sub_1D6D09E8C(0, &qword_1EDF155B0, &type metadata for FeedPuzzle, type metadata accessor for FeedItemSorter);
  v369 = v58;
  v59 = swift_allocObject();
  v60 = MEMORY[0x1E69E7CC0];
  v371 = v59;
  *(v59 + 16) = MEMORY[0x1E69E7CC0];
  v61 = (v59 + 16);
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1D6D09C90;
  *(v62 + 24) = v57;
  swift_beginAccess();

  v63 = sub_1D6990DC8(0, 1, 1, v60);
  v65 = v63[2];
  v64 = v63[3];
  if (v65 >= v64 >> 1)
  {
    v63 = sub_1D6990DC8((v64 > 1), v65 + 1, 1, v63);
  }

  v365 = a11;
  v372 = a10;
  v63[2] = v65 + 1;
  v66 = &v63[2 * v65];
  v66[4] = sub_1D6196DFC;
  v66[5] = v62;
  *v61 = v63;
  swift_endAccess();

  v366 = type metadata accessor for GroupLayoutBindingContext();
  v67 = v374;
  v68 = *&v374[v366[14]];
  v69 = *(v68 + 16);
  v70 = v377;

  if (!v69 || (v71 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, v435, v70), (v72 & 1) == 0) || !*(*(*(v68 + 56) + 8 * v71) + 16))
  {
    sub_1D5ED8048();
    v75 = swift_allocError();
    *v76 = 0x7A7A755064656546;
LABEL_14:
    *(v76 + 8) = 0xEA0000000000656CLL;
    *(v76 + 16) = v435;
    *(v76 + 24) = v70;
    goto LABEL_15;
  }

  v74 = sub_1D5BF08EC(v73, v373, v372);
  if (v14)
  {

    v75 = v14;
    goto LABEL_16;
  }

  v342 = v73;
  v104 = sub_1D714F5A0(v74);

  if (!v104)
  {
LABEL_44:

    sub_1D5ED8048();
    v75 = swift_allocError();
    *v76 = 0x7A7A755064656546;
    goto LABEL_14;
  }

  v340 = 0;
  v105 = *(v104 + 16);
  if (!v105)
  {

    v70 = v377;
    goto LABEL_44;
  }

  v343 = v104;
  v106 = v366;
  v107 = *&v67[v366[17]];
  v338 = v366[19];
  v339 = *&v67[v338];
  v108 = v339;
  if (v339 >= v107)
  {
    goto LABEL_55;
  }

  if (*v67)
  {
    v109 = v343;
    result = swift_bridgeObjectRetain_n();
  }

  else
  {
    v109 = sub_1D62F1B94(v343);
    v105 = *(v109 + 16);

    if (!v105)
    {
      goto LABEL_54;
    }
  }

  v116 = 0;
  v341 = v376 | 0x1000;
  v117 = v109 + 32;
  do
  {
    if (v116 >= *(v109 + 16))
    {
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    *v380 = v116;
    sub_1D5F2DEAC(v117, &v380[8]);
    if (!*&v380[56])
    {
      break;
    }

    v118 = *v380;
    *v380 = *&v380[8];
    *&v380[16] = *&v380[24];
    *&v380[32] = *&v380[40];
    *&v380[48] = *&v380[56];
    *&v380[64] = *&v380[72];
    *&v380[80] = *&v380[88];
    *&v380[96] = *&v380[104];
    *&v380[112] = *&v380[120];
    *&v380[128] = *&v380[136];
    *&v380[144] = *&v380[152];
    *&v380[160] = *&v380[168];
    *&v380[176] = *&v380[184];
    *&v380[192] = *&v380[200];
    if ((v341 & ~*v380) == 0)
    {

      *&v381 = v109;
      v141 = v118;
      goto LABEL_109;
    }

    ++v116;
    result = sub_1D5F2DF58(v380);
    v117 += 208;
  }

  while (v105 != v116);
  v67 = v374;
LABEL_54:
  result = swift_bridgeObjectRelease_n();
  v108 = v339;
LABEL_55:
  v119 = *&v67[v106[18]];
  v120 = __OFSUB__(v119, v108);
  v121 = v119 - v108;
  if (v120)
  {
    goto LABEL_280;
  }

  v122 = v343;
  if (v121 < 1)
  {
    if (*v67)
    {

      v129 = v122;
    }

    else
    {
      v129 = sub_1D62F1B94(v343);
    }

    v130 = *(v129 + 16);

    if (v130)
    {
      v131 = 0;
      v132 = v129 + 32;
      while (1)
      {
        if (v131 >= *(v129 + 16))
        {
          goto LABEL_274;
        }

        *v380 = v131;
        sub_1D5F2DEAC(v132, &v380[8]);
        if (!*&v380[56])
        {
          goto LABEL_77;
        }

        v133 = *v380;
        v134 = *&v380[8];
        *v380 = *&v380[8];
        *&v380[16] = *&v380[24];
        *&v380[32] = *&v380[40];
        *&v380[48] = *&v380[56];
        *&v380[64] = *&v380[72];
        *&v380[80] = *&v380[88];
        *&v380[96] = *&v380[104];
        *&v380[112] = *&v380[120];
        *&v380[128] = *&v380[136];
        *&v380[144] = *&v380[152];
        *&v380[160] = *&v380[168];
        *&v380[176] = *&v380[184];
        *&v380[192] = *&v380[200];
        if ((v376 & ~*v380) == 0 && (v134 & 0x1000) == 0)
        {
          break;
        }

        ++v131;
        result = sub_1D5F2DF58(v380);
        v132 += 208;
        v67 = v374;
        if (v130 == v131)
        {
          goto LABEL_77;
        }
      }

      *&v381 = v129;
      sub_1D5EC1FB8(v133, v379);
      sub_1D5F2DF58(v380);

      v391 = v379[10];
      v392 = v379[11];
      v381 = v379[0];
      v382 = v379[1];
      v393 = v379[12];
      v387 = v379[6];
      v388 = v379[7];
      v389 = v379[8];
      v390 = v379[9];
      v383 = v379[2];
      v384 = v379[3];
      v385 = v379[4];
      v386 = v379[5];
      v403 = v379[9];
      v404 = v379[10];
      v405 = v379[11];
      v406 = v379[12];
      v399 = v379[5];
      v400 = v379[6];
      v401 = v379[7];
      v402 = v379[8];
      v395 = v379[1];
      v396 = v379[2];
      v397 = v379[3];
      v398 = v379[4];
      v394 = v379[0];
      goto LABEL_110;
    }

LABEL_77:
    swift_bridgeObjectRelease_n();
    v381 = 0u;
    v382 = 0u;
    v383 = 0u;
    v384 = 0u;
    v385 = 0u;
    v386 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0u;
    v390 = 0u;
    v391 = 0u;
    v392 = 0u;
    v393 = 0u;
    if ((*v67 & 1) == 0)
    {
      v136 = sub_1D62F1B94(v343);

      v343 = v136;
    }

    v137 = *(v343 + 16);

    if (v137)
    {
      v138 = 0;
      v139 = v343 + 32;
      while (1)
      {
        if (v138 >= *(v343 + 16))
        {
          goto LABEL_277;
        }

        *v380 = v138;
        sub_1D5F2DEAC(v139, &v380[8]);
        if (!*&v380[56])
        {
          goto LABEL_85;
        }

        v140 = *v380;
        *v380 = *&v380[8];
        *&v380[16] = *&v380[24];
        *&v380[32] = *&v380[40];
        *&v380[48] = *&v380[56];
        *&v380[64] = *&v380[72];
        *&v380[80] = *&v380[88];
        *&v380[96] = *&v380[104];
        *&v380[112] = *&v380[120];
        *&v380[128] = *&v380[136];
        *&v380[144] = *&v380[152];
        *&v380[160] = *&v380[168];
        *&v380[176] = *&v380[184];
        *&v380[192] = *&v380[200];
        if ((v376 & ~*v380) == 0)
        {
          break;
        }

        ++v138;
        result = sub_1D5F2DF58(v380);
        v139 += 208;
        if (v137 == v138)
        {
          goto LABEL_85;
        }
      }

      v169 = v343;

      v378 = v169;
      sub_1D5EC1FB8(v140, v379);
      sub_1D5F2DF58(v380);

      v404 = v379[10];
      v405 = v379[11];
      v406 = v379[12];
      v400 = v379[6];
      v401 = v379[7];
      v402 = v379[8];
      v403 = v379[9];
      v396 = v379[2];
      v397 = v379[3];
      v398 = v379[4];
      v399 = v379[5];
      v394 = v379[0];
      v395 = v379[1];
    }

    else
    {
LABEL_85:
      result = swift_bridgeObjectRelease_n();
      v394 = 0u;
      v395 = 0u;
      v396 = 0u;
      v397 = 0u;
      v398 = 0u;
      v399 = 0u;
      v400 = 0u;
      v401 = 0u;
      v402 = 0u;
      v403 = 0u;
      v404 = 0u;
      v405 = 0u;
      v406 = 0u;
    }

    v155 = v340;
    v156 = v374;
    v128 = v377;
    if (v384)
    {
      result = sub_1D6D09524(&v381, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
    }

LABEL_135:
    v170 = v342;
    if (!v397)
    {

      goto LABEL_148;
    }

    v417 = v404;
    v418 = v405;
    v419 = v406;
    v413 = v400;
    v414 = v401;
    v415 = v402;
    v416 = v403;
    v409 = v396;
    v410 = v397;
    v411 = v398;
    v412 = v399;
    v407 = v394;
    v408 = v395;
    if ((BYTE1(v394) & 0x10) != 0)
    {
      if (__OFADD__(v339, 1))
      {
        goto LABEL_284;
      }

      *&v156[v338] = v339 + 1;
    }

    if ((v365 & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result, v135);
      *(&v337 - 2) = &v407;
      v172 = sub_1D5BF5F6C(sub_1D6D0A5A0, (&v337 - 4), v171);
      v340 = v155;
      v170 = v172;
    }

    *&v379[0] = 0x7A7A755064656546;
    *(&v379[0] + 1) = 0xEA0000000000656CLL;
    *&v379[1] = v435;
    *(&v379[1] + 1) = v128;
    sub_1D5BDACA8(v379, v170);

    swift_setDeallocating();
    swift_deallocClassInstance();

    v433 = v418;
    v434 = v419;
    v428 = v413;
    v429 = v414;
    v431 = v416;
    v432 = v417;
    v430 = v415;
    v424 = v409;
    v425 = v410;
    v426 = v411;
    v427 = v412;
    v422 = v407;
    v423 = v408;
    v173 = *(&v409 + 1);
    v174 = v410;
    v175 = v360;
    v177 = v372;
    v176 = v373;
    v343 = sub_1D6196E44(v360, v373, v372, *(&v409 + 1), v410);
    v421 = v343;
    v366 = v174;
    v178 = sub_1D6196F00(v175, v176, v177, v173, v174);
    v179 = v177;
    v180 = v178;
    v420 = v178;
    if (!v179)
    {
      v377 = 0;
      v435 = 0;
      v375 = 0;
      v376 = 0;
      v371 = 0;
      v372 = 0;
      v181 = v370;
      goto LABEL_173;
    }

    v181 = v370;
    if (*(v175 + 16))
    {
      v182 = sub_1D5B69D90(v176, v179);
      if (v183)
      {
        v184 = *(*(*(v175 + 56) + 8 * v182) + 136);
        if (*(v184 + 16))
        {

          v185 = sub_1D5B69D90(v173, v366);
          if (v186)
          {
            v187 = (*(v184 + 56) + 48 * v185);
            v188 = v187[1];
            v377 = *v187;
            v189 = v187[2];
            v190 = v187[3];
            v372 = v187[4];
            v191 = v173;
            v192 = v187[5];
            v435 = v188;

            v376 = v189;

            v375 = v190;

            v371 = v192;
            v173 = v191;

            goto LABEL_168;
          }

          goto LABEL_171;
        }
      }
    }

LABEL_172:
    v377 = 0;
    v435 = 0;
    v375 = 0;
    v376 = 0;
    v371 = 0;
    v372 = 0;
    goto LABEL_173;
  }

  if ((*v67 & 1) == 0)
  {
    v123 = sub_1D62F1B94(v343);

    v122 = v123;
  }

  v124 = *(v122 + 16);

  if (v124)
  {
    v125 = 0;
    v126 = v122 + 32;
    while (1)
    {
      if (v125 >= *(v122 + 16))
      {
        goto LABEL_273;
      }

      *v380 = v125;
      sub_1D5F2DEAC(v126, &v380[8]);
      if (!*&v380[56])
      {
        goto LABEL_65;
      }

      v127 = *v380;
      *v380 = *&v380[8];
      *&v380[16] = *&v380[24];
      *&v380[32] = *&v380[40];
      *&v380[48] = *&v380[56];
      *&v380[64] = *&v380[72];
      *&v380[80] = *&v380[88];
      *&v380[96] = *&v380[104];
      *&v380[112] = *&v380[120];
      *&v380[128] = *&v380[136];
      *&v380[144] = *&v380[152];
      *&v380[160] = *&v380[168];
      *&v380[176] = *&v380[184];
      *&v380[192] = *&v380[200];
      if ((v376 & ~*v380) == 0)
      {
        break;
      }

      ++v125;
      result = sub_1D5F2DF58(v380);
      v126 += 208;
      if (v124 == v125)
      {
        goto LABEL_65;
      }
    }

    *&v381 = v122;
    v141 = v127;
LABEL_109:
    sub_1D5EC1FB8(v141, v379);
    sub_1D5F2DF58(v380);

    v404 = v379[10];
    v405 = v379[11];
    v406 = v379[12];
    v400 = v379[6];
    v401 = v379[7];
    v402 = v379[8];
    v403 = v379[9];
    v396 = v379[2];
    v397 = v379[3];
    v398 = v379[4];
    v399 = v379[5];
    v394 = v379[0];
    v395 = v379[1];
LABEL_110:
    v155 = v340;
    v156 = v374;
    v128 = v377;
    goto LABEL_135;
  }

LABEL_65:
  swift_bridgeObjectRelease_n();

  v394 = 0u;
  v395 = 0u;
  v396 = 0u;
  v397 = 0u;
  v398 = 0u;
  v399 = 0u;
  v400 = 0u;
  v401 = 0u;
  v402 = 0u;
  v403 = 0u;
  v404 = 0u;
  v405 = 0u;
  v406 = 0u;
  v128 = v377;
LABEL_148:
  sub_1D6D09524(&v394, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
  sub_1D5ED8048();
  v75 = swift_allocError();
  *v76 = 0x7A7A755064656546;
  *(v76 + 8) = 0xEA0000000000656CLL;
  *(v76 + 16) = v435;
  *(v76 + 24) = v128;
LABEL_15:
  *(v76 + 32) = v376;
  *(v76 + 40) = 1;
  v77 = v372;
  *(v76 + 48) = v373;
  *(v76 + 56) = v77;
  *(v76 + 64) = 0;
  swift_willThrow();

LABEL_16:
  if ((*(v370 + OBJC_IVAR____TtC8NewsFeed16FormatNodeBinder_wildcardSlotFallback) & 1) == 0)
  {
    return swift_willThrow();
  }

  v78 = *(v375 + 16);
  v372 = 0;
  v373 = v75;
  v79 = 0;
  if (v78)
  {
    v80 = (v375 + 32);
    do
    {
      v81 = *v80++;
      v82 = qword_1D7349118[v81];
      if ((v82 & ~v79) == 0)
      {
        v82 = 0;
      }

      v79 |= v82;
      --v78;
    }

    while (v78);
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v79;
  v84 = swift_allocObject();
  v375 = v84;
  v85 = MEMORY[0x1E69E7CC0];
  *(v84 + 16) = MEMORY[0x1E69E7CC0];
  v86 = (v84 + 16);
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1D6D0A5E4;
  *(v87 + 24) = v83;
  swift_beginAccess();

  v88 = sub_1D6990DC8(0, 1, 1, v85);
  v90 = v88[2];
  v89 = v88[3];
  if (v90 >= v89 >> 1)
  {
    v88 = sub_1D6990DC8((v89 > 1), v90 + 1, 1, v88);
  }

  v88[2] = v90 + 1;
  v91 = &v88[2 * v90];
  v91[4] = sub_1D6D0A510;
  v91[5] = v87;
  *v86 = v88;
  swift_endAccess();

  v92 = *(v68 + 16);
  v93 = v377;

  if (!v92 || (v94 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, v435, v93), (v95 & 1) == 0) || (v96 = *(*(v68 + 56) + 8 * v94), !*(v96 + 16)))
  {
    sub_1D5ED8048();
    swift_allocError();
    *v103 = 0x7A7A755064656546;
    *(v103 + 8) = 0xEA0000000000656CLL;
    *(v103 + 16) = v435;
    *(v103 + 24) = v93;
    goto LABEL_31;
  }

  v98 = v374;
  v99 = v372;
  v100 = sub_1D5BF08EC(v97, 0, 0);
  v101 = v99;
  if (v99)
  {

    goto LABEL_32;
  }

  v110 = sub_1D714F5A0(v100);

  if (!v110)
  {
    goto LABEL_46;
  }

  v111 = *(v110 + 16);
  if (!v111)
  {

LABEL_46:

LABEL_161:
    sub_1D5ED8048();
    swift_allocError();
    *v103 = 0x7A7A755064656546;
    *(v103 + 8) = 0xEA0000000000656CLL;
    v193 = v377;
    *(v103 + 16) = v435;
    *(v103 + 24) = v193;
LABEL_31:
    *(v103 + 32) = v376;
    *(v103 + 40) = 1;
    *(v103 + 48) = 0;
    *(v103 + 56) = 0;
    *(v103 + 64) = 0;
    swift_willThrow();
LABEL_32:

    swift_setDeallocating();
    return swift_deallocClassInstance();
  }

  v112 = v366;
  v113 = *&v98[v366[17]];
  v369 = v366[19];
  v114 = *&v98[v369];
  v371 = v96;
  v372 = v114;
  if (v114 >= v113)
  {
    goto LABEL_95;
  }

  if (*v98)
  {
    result = swift_bridgeObjectRetain_n();
    v115 = v110;
  }

  else
  {
    v115 = sub_1D62F1B94(v110);
    v111 = *(v115 + 16);

    if (!v111)
    {
      goto LABEL_94;
    }
  }

  v343 = v110;
  v142 = 0;
  v143 = v376 | 0x1000;
  v144 = v115 + 32;
  do
  {
    if (v142 >= *(v115 + 16))
    {
      goto LABEL_275;
    }

    *v380 = v142;
    sub_1D5F2DEAC(v144, &v380[8]);
    if (!*&v380[56])
    {
      break;
    }

    v145 = *v380;
    *v380 = *&v380[8];
    *&v380[16] = *&v380[24];
    *&v380[32] = *&v380[40];
    *&v380[48] = *&v380[56];
    *&v380[64] = *&v380[72];
    *&v380[80] = *&v380[88];
    *&v380[96] = *&v380[104];
    *&v380[112] = *&v380[120];
    *&v380[128] = *&v380[136];
    *&v380[144] = *&v380[152];
    *&v380[160] = *&v380[168];
    *&v380[176] = *&v380[184];
    *&v380[192] = *&v380[200];
    if ((v143 & ~*v380) == 0)
    {

      *&v381 = v115;
      sub_1D5EC1FB8(v145, v379);
      sub_1D5F2DF58(v380);

      v404 = v379[10];
      v405 = v379[11];
      v406 = v379[12];
      v400 = v379[6];
      v401 = v379[7];
      v402 = v379[8];
      v403 = v379[9];
      v396 = v379[2];
      v397 = v379[3];
      v398 = v379[4];
      v399 = v379[5];
      v394 = v379[0];
      v395 = v379[1];
      v101 = 0;
      goto LABEL_131;
    }

    ++v142;
    result = sub_1D5F2DF58(v380);
    v144 += 208;
  }

  while (v111 != v142);
  v101 = 0;
  v98 = v374;
  v114 = v372;
  v110 = v343;
LABEL_94:
  result = swift_bridgeObjectRelease_n();
  v112 = v366;
LABEL_95:
  v146 = *&v98[v112[18]];
  v120 = __OFSUB__(v146, v114);
  v147 = v146 - v114;
  if (v120)
  {
    goto LABEL_281;
  }

  if (v147 < 1)
  {
    v153 = *v98;
    v340 = v101;
    if (v153)
    {
      v154 = v110;
    }

    else
    {
      v154 = sub_1D62F1B94(v110);
    }

    v157 = *(v154 + 16);

    if (v157)
    {
      v158 = 0;
      v159 = v154 + 32;
      while (1)
      {
        if (v158 >= *(v154 + 16))
        {
          goto LABEL_278;
        }

        *v380 = v158;
        sub_1D5F2DEAC(v159, &v380[8]);
        if (!*&v380[56])
        {
          goto LABEL_120;
        }

        v160 = *v380;
        v161 = *&v380[8];
        *v380 = *&v380[8];
        *&v380[16] = *&v380[24];
        *&v380[32] = *&v380[40];
        *&v380[48] = *&v380[56];
        *&v380[64] = *&v380[72];
        *&v380[80] = *&v380[88];
        *&v380[96] = *&v380[104];
        *&v380[112] = *&v380[120];
        *&v380[128] = *&v380[136];
        *&v380[144] = *&v380[152];
        *&v380[160] = *&v380[168];
        *&v380[176] = *&v380[184];
        *&v380[192] = *&v380[200];
        if ((v376 & ~*v380) == 0 && (v161 & 0x1000) == 0)
        {
          break;
        }

        ++v158;
        result = sub_1D5F2DF58(v380);
        v159 += 208;
        v98 = v374;
        if (v157 == v158)
        {
          goto LABEL_120;
        }
      }

      *&v381 = v154;
      sub_1D5EC1FB8(v160, v379);
      sub_1D5F2DF58(v380);

      v391 = v379[10];
      v392 = v379[11];
      v381 = v379[0];
      v382 = v379[1];
      v393 = v379[12];
      v387 = v379[6];
      v388 = v379[7];
      v389 = v379[8];
      v390 = v379[9];
      v383 = v379[2];
      v384 = v379[3];
      v385 = v379[4];
      v386 = v379[5];
      v403 = v379[9];
      v404 = v379[10];
      v405 = v379[11];
      v406 = v379[12];
      v399 = v379[5];
      v400 = v379[6];
      v401 = v379[7];
      v402 = v379[8];
      v395 = v379[1];
      v396 = v379[2];
      v397 = v379[3];
      v398 = v379[4];
      v394 = v379[0];
      v101 = v340;
      v156 = v374;
      v163 = v371;
    }

    else
    {
LABEL_120:
      swift_bridgeObjectRelease_n();
      v381 = 0u;
      v382 = 0u;
      v383 = 0u;
      v384 = 0u;
      v385 = 0u;
      v386 = 0u;
      v387 = 0u;
      v388 = 0u;
      v389 = 0u;
      v390 = 0u;
      v391 = 0u;
      v392 = 0u;
      v393 = 0u;
      if ((*v98 & 1) == 0)
      {
        v164 = sub_1D62F1B94(v110);

        v110 = v164;
      }

      v165 = *(v110 + 16);

      v101 = v340;
      if (v165)
      {
        v166 = 0;
        v167 = v110 + 32;
        while (1)
        {
          if (v166 >= *(v110 + 16))
          {
            goto LABEL_279;
          }

          *v380 = v166;
          sub_1D5F2DEAC(v167, &v380[8]);
          if (!*&v380[56])
          {
            goto LABEL_128;
          }

          v168 = *v380;
          *v380 = *&v380[8];
          *&v380[16] = *&v380[24];
          *&v380[32] = *&v380[40];
          *&v380[48] = *&v380[56];
          *&v380[64] = *&v380[72];
          *&v380[80] = *&v380[88];
          *&v380[96] = *&v380[104];
          *&v380[112] = *&v380[120];
          *&v380[128] = *&v380[136];
          *&v380[144] = *&v380[152];
          *&v380[160] = *&v380[168];
          *&v380[176] = *&v380[184];
          *&v380[192] = *&v380[200];
          if ((v376 & ~*v380) == 0)
          {
            break;
          }

          ++v166;
          result = sub_1D5F2DF58(v380);
          v167 += 208;
          if (v165 == v166)
          {
            goto LABEL_128;
          }
        }

        v378 = v110;
        sub_1D5EC1FB8(v168, v379);
        sub_1D5F2DF58(v380);

        v404 = v379[10];
        v405 = v379[11];
        v406 = v379[12];
        v400 = v379[6];
        v401 = v379[7];
        v402 = v379[8];
        v403 = v379[9];
        v396 = v379[2];
        v397 = v379[3];
        v398 = v379[4];
        v399 = v379[5];
        v394 = v379[0];
        v395 = v379[1];
      }

      else
      {
LABEL_128:
        result = swift_bridgeObjectRelease_n();
        v394 = 0u;
        v395 = 0u;
        v396 = 0u;
        v397 = 0u;
        v398 = 0u;
        v399 = 0u;
        v400 = 0u;
        v401 = 0u;
        v402 = 0u;
        v403 = 0u;
        v404 = 0u;
        v405 = 0u;
        v406 = 0u;
      }

      v156 = v374;
      v163 = v371;
      v114 = v372;
      if (v384)
      {
        result = sub_1D6D09524(&v381, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
      }
    }

    goto LABEL_153;
  }

  if ((*v98 & 1) == 0)
  {
    v148 = sub_1D62F1B94(v110);

    v110 = v148;
  }

  v149 = *(v110 + 16);

  if (!v149)
  {
LABEL_105:
    swift_bridgeObjectRelease_n();

    v394 = 0u;
    v395 = 0u;
    v396 = 0u;
    v397 = 0u;
    v398 = 0u;
    v399 = 0u;
    v400 = 0u;
    v401 = 0u;
    v402 = 0u;
    v403 = 0u;
    v404 = 0u;
    v405 = 0u;
    v406 = 0u;
LABEL_160:
    sub_1D6D09524(&v394, &qword_1EDF12E30, &type metadata for FeedPuzzle, MEMORY[0x1E69E6720]);
    goto LABEL_161;
  }

  v150 = 0;
  v151 = v110 + 32;
  while (1)
  {
    if (v150 >= *(v110 + 16))
    {
      goto LABEL_276;
    }

    *v380 = v150;
    sub_1D5F2DEAC(v151, &v380[8]);
    if (!*&v380[56])
    {
      goto LABEL_105;
    }

    v152 = *v380;
    *v380 = *&v380[8];
    *&v380[16] = *&v380[24];
    *&v380[32] = *&v380[40];
    *&v380[48] = *&v380[56];
    *&v380[64] = *&v380[72];
    *&v380[80] = *&v380[88];
    *&v380[96] = *&v380[104];
    *&v380[112] = *&v380[120];
    *&v380[128] = *&v380[136];
    *&v380[144] = *&v380[152];
    *&v380[160] = *&v380[168];
    *&v380[176] = *&v380[184];
    *&v380[192] = *&v380[200];
    if ((v376 & ~*v380) == 0)
    {
      break;
    }

    ++v150;
    result = sub_1D5F2DF58(v380);
    v151 += 208;
    if (v149 == v150)
    {
      goto LABEL_105;
    }
  }

  *&v381 = v110;
  sub_1D5EC1FB8(v152, v379);
  sub_1D5F2DF58(v380);

  v404 = v379[10];
  v405 = v379[11];
  v406 = v379[12];
  v400 = v379[6];
  v401 = v379[7];
  v402 = v379[8];
  v403 = v379[9];
  v396 = v379[2];
  v397 = v379[3];
  v398 = v379[4];
  v399 = v379[5];
  v394 = v379[0];
  v395 = v379[1];
LABEL_131:
  v156 = v374;
  v163 = v371;
  v114 = v372;
LABEL_153:
  if (!v397)
  {

    goto LABEL_160;
  }

  v417 = v404;
  v418 = v405;
  v419 = v406;
  v413 = v400;
  v414 = v401;
  v415 = v402;
  v416 = v403;
  v409 = v396;
  v410 = v397;
  v411 = v398;
  v412 = v399;
  v407 = v394;
  v408 = v395;
  if ((BYTE1(v394) & 0x10) == 0)
  {
    goto LABEL_157;
  }

  if (__OFADD__(v114, 1))
  {
    goto LABEL_285;
  }

  *&v156[v369] = v114 + 1;
LABEL_157:
  if ((v365 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](result, v162);
    *(&v337 - 2) = &v407;
    v163 = sub_1D5BF5F6C(sub_1D6D09C98, (&v337 - 4), v163);
  }

  v340 = v101;
  *&v379[0] = 0x7A7A755064656546;
  *(&v379[0] + 1) = 0xEA0000000000656CLL;
  *&v379[1] = v435;
  *(&v379[1] + 1) = v377;
  sub_1D5BDACA8(v379, v163);

  swift_setDeallocating();
  swift_deallocClassInstance();

  v433 = v418;
  v434 = v419;
  v428 = v413;
  v429 = v414;
  v431 = v416;
  v432 = v417;
  v430 = v415;
  v424 = v409;
  v425 = v410;
  v426 = v411;
  v427 = v412;
  v422 = v407;
  v423 = v408;
  v173 = *(&v409 + 1);
  v194 = v410;
  v195 = v360;
  v343 = sub_1D6196E44(v360, 42, 0xE100000000000000, *(&v409 + 1), v410);
  v421 = v343;
  v366 = v194;
  v180 = sub_1D6196F00(v195, 42, 0xE100000000000000, v173, v194);
  v420 = v180;
  v181 = v370;
  if (!*(v195 + 16) || (v196 = sub_1D5B69D90(42, 0xE100000000000000), (v197 & 1) == 0) || (v198 = *(*(*(v195 + 56) + 8 * v196) + 136), !*(v198 + 16)))
  {

    goto LABEL_172;
  }

  v199 = sub_1D5B69D90(v173, v366);
  if ((v200 & 1) == 0)
  {

LABEL_171:

    goto LABEL_172;
  }

  v201 = (*(v198 + 56) + 48 * v199);
  v202 = v201[1];
  v377 = *v201;
  v203 = v201[2];
  v204 = v201[3];
  v372 = v201[4];
  v205 = v173;
  v206 = v201[5];
  v435 = v202;

  v376 = v203;

  v375 = v204;

  v371 = v206;
  v173 = v205;

LABEL_168:

LABEL_173:
  *(&v379[1] + 1) = &type metadata for FeedPuzzle;
  v207 = sub_1D63071A0();
  *&v379[2] = v207;
  *&v379[0] = swift_allocObject();
  sub_1D5F2DEAC(&v422, *&v379[0] + 16);
  v208 = v362;
  sub_1D6818590(v379, v362);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v369 = v207;
  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v210 = v350;
      sub_1D6D0A058(v208, v350, type metadata accessor for FeedWebEmbed);
      v211 = sub_1D6944620();
      sub_1D5D505F0(v211);
      v212 = sub_1D69449D8();
      sub_1D5B886D0(v212);
      v213 = type metadata accessor for FeedWebEmbed;
      v214 = v210;
    }

    else
    {
      v213 = type metadata accessor for FeedItem;
      v214 = v208;
    }

    sub_1D6D0A444(v214, v213);
    goto LABEL_182;
  }

  v373 = v173;
  v215 = v356;
  sub_1D6D0A058(v208, v356, type metadata accessor for FeedCustomItem);
  v216 = a12 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v217 = *(v216 + 8);
  v218 = v215 + *(v351 + 20);
  v220 = *(v218 + 16);
  v219 = *(v218 + 24);
  if (!*(v217 + 16))
  {
LABEL_237:

    sub_1D67F58E4(v377, v435);

    memset(v379, 0, 81);
LABEL_238:
    type metadata accessor for FormatLayoutError();
    sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v297 = v220;
    v297[1] = v219;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1D6D09524(v379, &qword_1EC880148, &type metadata for FormatType, MEMORY[0x1E69E6720]);
    sub_1D5F2DF58(&v422);
    return sub_1D6D0A444(v356, type metadata accessor for FeedCustomItem);
  }

  v221 = sub_1D5B69D90(v220, v219);
  if ((v222 & 1) == 0)
  {

    goto LABEL_237;
  }

  v223 = v345;
  sub_1D6D09934(*(v217 + 56) + *(v344 + 72) * v221, v345, sub_1D6AC4E74);
  v224 = *(v223 + 48);
  v409 = *(v223 + 32);
  v410 = v224;
  v411 = *(v223 + 64);
  LOBYTE(v412) = *(v223 + 80);
  v225 = *(v223 + 16);
  v407 = *v223;
  v408 = v225;
  sub_1D62B7D1C(&v407, &v394);
  sub_1D6D0A444(v223, sub_1D6AC4E74);

  *&v380[32] = v409;
  *&v380[48] = v410;
  *&v380[64] = v411;
  v380[80] = v412;
  *v380 = v407;
  *&v380[16] = v408;
  if (v412 >> 6 <= 1u)
  {
    sub_1D67F58E4(v377, v435);

    v379[2] = *&v380[32];
    v379[3] = *&v380[48];
    v379[4] = *&v380[64];
    LOBYTE(v379[5]) = v380[80];
    v379[0] = *v380;
    v379[1] = *&v380[16];
    goto LABEL_238;
  }

  LODWORD(v345) = v412;
  v338 = *(&v409 + 1);
  v298 = v409;
  v341 = *(&v410 + 1);
  v339 = v410;
  v344 = *(&v411 + 1);
  v342 = v411;
  *&v394 = v409;
  sub_1D6D098B8(0);
  sub_1D6D098EC(&qword_1EDF04CE8, sub_1D6D098B8);
  sub_1D6D098EC(&qword_1EDF0CED8, type metadata accessor for FormatPropertyDefinition);

  v299 = sub_1D72623BC();
  result = type metadata accessor for FormatCustomItem.Resolved();
  v300 = *(v218 + *(result + 28));
  v362 = *(v300 + 16);
  if (!v362)
  {
LABEL_256:

    *&v394 = v300;
    sub_1D5B5AD98();
    sub_1D6D098EC(&qword_1EDF050A8, sub_1D5B5AD98);
    sub_1D6D098EC(&qword_1EDF123E0, type metadata accessor for FormatOption);
    v317 = sub_1D72623AC();
    v318 = v353;
    result = v298;
    if (*(v298 + 16))
    {
      v319 = *(v298 + 16);
      v320 = 0;
      v362 = result + ((*(v354 + 80) + 32) & ~*(v354 + 80));
      v363 = result;
      v321 = (v364 + 56);
      while (1)
      {
        if (v320 >= v363[2])
        {
          goto LABEL_283;
        }

        sub_1D6D09934(v362 + *(v354 + 72) * v320, v318, type metadata accessor for FormatPropertyDefinition);
        v326 = FormatPropertyDefinition.identifier.getter();
        if (*(v317 + 16))
        {
          v328 = sub_1D5B69D90(v326, v327);
          v330 = v329;

          if (v330)
          {
            v322 = v364;
            v323 = v352;
            sub_1D6D09934(*(v317 + 56) + *(v364 + 72) * v328, v352, type metadata accessor for FormatOption);
            v318 = v353;
            sub_1D6D0A444(v353, type metadata accessor for FormatPropertyDefinition);
            (*(v322 + 56))(v323, 0, 1, v368);
            v324 = sub_1D5E04C00;
            v325 = v323;
            goto LABEL_259;
          }
        }

        else
        {
        }

        v331 = v352;
        (*v321)(v352, 1, 1, v368);
        sub_1D6D0A444(v331, sub_1D5E04C00);
        v318 = v353;
        if (sub_1D695C4AC())
        {

          sub_1D67F58E4(v377, v435);

          sub_1D60CF6F4(v363, v338, v339, v341, v342, v344, v345);

          type metadata accessor for FormatLayoutError();
          sub_1D6D098EC(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          v333 = v332;
          sub_1D6D0A350(0, &qword_1EDF39D38, type metadata accessor for FeedCustomItem, type metadata accessor for FormatPropertyDefinition);
          v335 = *(v334 + 48);
          v336 = v356;
          sub_1D6D09934(v356, v333, type metadata accessor for FeedCustomItem);
          sub_1D6D09934(v318, v333 + v335, type metadata accessor for FormatPropertyDefinition);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          sub_1D62B7D78(&v407);
          sub_1D6D0A444(v318, type metadata accessor for FormatPropertyDefinition);
          sub_1D5F2DF58(&v422);
          return sub_1D6D0A444(v336, type metadata accessor for FeedCustomItem);
        }

        v324 = type metadata accessor for FormatPropertyDefinition;
        v325 = v318;
LABEL_259:
        result = sub_1D6D0A444(v325, v324);
        v173 = v373;
        if (v319 == ++v320)
        {
          sub_1D60CF6F4(v363, v338, v339, v341, v342, v344, v345);

          v156 = v374;
          goto LABEL_269;
        }
      }
    }

    sub_1D60CF6F4(v298, v338, v339, v341, v342, v344, v345);

    v173 = v373;
LABEL_269:
    sub_1D62B7D78(&v407);
    sub_1D6D0A444(v356, type metadata accessor for FeedCustomItem);
    v181 = v370;
LABEL_182:
    v226 = v420;
    v227 = v156[88];
    v373 = v420;
    v374 = v421;
    if (v365)
    {
      swift_beginAccess();
      if ((v227 & 1) != 0 || !*(v181[4] + 16) || (, sub_1D5B69D90(v358, v359), v229 = v228, , (v229 & 1) == 0))
      {
        v230 = v422;
        v231 = *(v181[10] + 16);
        if (v231)
        {
          sub_1D5B69D90(v173, v366);
          v231 = 0x4000000000;
          if ((v232 & 1) == 0)
          {
            v231 = 0;
          }
        }

        *&v379[0] = v231 | v230;
        v233 = v374;

        v234 = sub_1D713CCF4();
        v235 = sub_1D5BA8750(v234, v233);

        v236 = sub_1D6C694F4();
        v237 = sub_1D5BA8750(v236, v235);

        *(&v408 + 1) = &type metadata for FeedPuzzle;
        *&v409 = v369;
        *&v407 = swift_allocObject();
        sub_1D5F2DEAC(&v422, v407 + 16);
        sub_1D5B68374(&v407, v380);

        v238 = v237;
        if (v435)
        {
          v238 = sub_1D5BA8750(&unk_1F50F6970, v237);
          sub_1D5BFB68C(&unk_1F50F6990);
        }

        v369 = v237;
        *&v380[40] = v238;
        v239 = v226[2];
        if (v239)
        {
          *&v379[0] = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v239, 0);
          v240 = *&v379[0];
          v241 = v226 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
          v242 = *(v364 + 72);
          v243 = v239;
          do
          {
            v244 = v367;
            sub_1D6D09934(v241, v367, type metadata accessor for FormatOption);
            v245 = swift_allocBox();
            sub_1D6D0A058(v244, v246, type metadata accessor for FormatOption);
            *&v379[0] = v240;
            v248 = *(v240 + 16);
            v247 = *(v240 + 24);
            if (v248 >= v247 >> 1)
            {
              sub_1D5D24610((v247 > 1), v248 + 1, 1);
              v240 = *&v379[0];
            }

            *(v240 + 16) = v248 + 1;
            *(v240 + 8 * v248 + 32) = v245 | 0x1000000000000004;
            v241 += v242;
            --v243;
          }

          while (v243);
          __swift_destroy_boxed_opaque_existential_1(&v407);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v407);
          v240 = MEMORY[0x1E69E7CC0];
        }

        *&v380[48] = v240;
        v272 = v377;
        *&v380[56] = v377;
        v273 = v435;
        *&v380[64] = v435;
        *&v380[72] = v376;
        *&v380[80] = v375;
        *&v380[88] = v372;
        *&v379[6] = v371;
        v379[0] = *v380;
        v379[1] = *&v380[16];
        v379[2] = *&v380[32];
        v379[3] = *&v380[48];
        v379[4] = *&v380[64];
        v379[5] = *&v380[80];
        v274 = v359;

        sub_1D67F5880(v272, v273);
        sub_1D6D60C48(v379, v358, v274);
        sub_1D5F2DEAC(&v422, v380);
        sub_1D5F2DEAC(v380, v379);
        if (v273)
        {
          v275 = sub_1D5BA8750(&unk_1F50F69A0, v369);
          sub_1D5BFB68C(&unk_1F50F69C0);
          v276 = v373;
        }

        else
        {
          v276 = v373;
          v275 = v369;
        }

        *&v379[13] = v275;
        if (v239)
        {
          *&v407 = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v239, 0);
          v282 = v407;
          v283 = v276 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
          v284 = *(v364 + 72);
          do
          {
            v285 = v367;
            sub_1D6D09934(v283, v367, type metadata accessor for FormatOption);
            v286 = swift_allocBox();
            sub_1D6D0A058(v285, v287, type metadata accessor for FormatOption);
            *&v407 = v282;
            v289 = *(v282 + 16);
            v288 = *(v282 + 24);
            if (v289 >= v288 >> 1)
            {
              sub_1D5D24610((v288 > 1), v289 + 1, 1);
              v282 = v407;
            }

            *(v282 + 16) = v289 + 1;
            *(v282 + 8 * v289 + 32) = v286 | 0x1000000000000004;
            v283 += v284;
            --v239;
          }

          while (v239);
LABEL_232:
          sub_1D5F2DF58(v380);
LABEL_234:
          *(&v379[13] + 1) = v282;
          *&v379[14] = v377;
          *(&v379[14] + 1) = v435;
          *&v379[15] = v376;
          *(&v379[15] + 1) = v375;
          *&v379[16] = v372;
          *(&v379[16] + 1) = v371;
          memcpy(v355, v379, 0x110uLL);
          swift_endAccess();

          goto LABEL_235;
        }

        goto LABEL_233;
      }
    }

    else
    {
      swift_beginAccess();
      if ((v227 & 1) != 0 || !*(v181[3] + 16) || (, sub_1D5B69D90(v358, v359), v250 = v249, , (v250 & 1) == 0))
      {
        v253 = v422;
        v254 = *(v181[10] + 16);
        if (v254)
        {
          sub_1D5B69D90(v173, v366);
          v254 = 0x4000000000;
          if ((v255 & 1) == 0)
          {
            v254 = 0;
          }
        }

        *&v379[0] = v254 | v253;
        v256 = v374;

        v257 = sub_1D713CCF4();
        v258 = sub_1D5BA8750(v257, v256);

        v259 = sub_1D6C694F4();
        v260 = sub_1D5BA8750(v259, v258);

        *(&v408 + 1) = &type metadata for FeedPuzzle;
        *&v409 = v369;
        *&v407 = swift_allocObject();
        sub_1D5F2DEAC(&v422, v407 + 16);
        sub_1D5B68374(&v407, v380);

        v261 = v260;
        if (v435)
        {
          v261 = sub_1D5BA8750(&unk_1F50F69D0, v260);
          sub_1D5BFB68C(&unk_1F50F69F0);
        }

        v369 = v260;
        *&v380[40] = v261;
        v262 = v226[2];
        if (v262)
        {
          *&v379[0] = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v262, 0);
          v263 = *&v379[0];
          v264 = v226 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
          v265 = *(v364 + 72);
          v266 = v262;
          do
          {
            v267 = v367;
            sub_1D6D09934(v264, v367, type metadata accessor for FormatOption);
            v268 = swift_allocBox();
            sub_1D6D0A058(v267, v269, type metadata accessor for FormatOption);
            *&v379[0] = v263;
            v271 = *(v263 + 16);
            v270 = *(v263 + 24);
            if (v271 >= v270 >> 1)
            {
              sub_1D5D24610((v270 > 1), v271 + 1, 1);
              v263 = *&v379[0];
            }

            *(v263 + 16) = v271 + 1;
            *(v263 + 8 * v271 + 32) = v268 | 0x1000000000000004;
            v264 += v265;
            --v266;
          }

          while (v266);
          __swift_destroy_boxed_opaque_existential_1(&v407);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v407);
          v263 = MEMORY[0x1E69E7CC0];
        }

        *&v380[48] = v263;
        v277 = v377;
        *&v380[56] = v377;
        v278 = v435;
        *&v380[64] = v435;
        *&v380[72] = v376;
        *&v380[80] = v375;
        *&v380[88] = v372;
        *&v379[6] = v371;
        v379[0] = *v380;
        v379[1] = *&v380[16];
        v379[2] = *&v380[32];
        v379[3] = *&v380[48];
        v379[4] = *&v380[64];
        v379[5] = *&v380[80];
        v279 = v359;

        sub_1D67F5880(v277, v278);
        sub_1D6D60C48(v379, v358, v279);
        sub_1D5F2DEAC(&v422, v380);
        sub_1D5F2DEAC(v380, v379);
        if (v278)
        {
          v280 = sub_1D5BA8750(&unk_1F50F6A00, v369);
          sub_1D5BFB68C(&unk_1F50F6A20);
          v281 = v373;
        }

        else
        {
          v281 = v373;
          v280 = v369;
        }

        *&v379[13] = v280;
        if (v262)
        {
          *&v407 = MEMORY[0x1E69E7CC0];
          sub_1D5D24610(0, v262, 0);
          v282 = v407;
          v290 = v281 + ((*(v364 + 80) + 32) & ~*(v364 + 80));
          v291 = *(v364 + 72);
          do
          {
            v292 = v367;
            sub_1D6D09934(v290, v367, type metadata accessor for FormatOption);
            v293 = swift_allocBox();
            sub_1D6D0A058(v292, v294, type metadata accessor for FormatOption);
            *&v407 = v282;
            v296 = *(v282 + 16);
            v295 = *(v282 + 24);
            if (v296 >= v295 >> 1)
            {
              sub_1D5D24610((v295 > 1), v296 + 1, 1);
              v282 = v407;
            }

            *(v282 + 16) = v296 + 1;
            *(v282 + 8 * v296 + 32) = v293 | 0x1000000000000004;
            v290 += v291;
            --v262;
          }

          while (v262);
          goto LABEL_232;
        }

LABEL_233:
        sub_1D5F2DF58(v380);
        v282 = MEMORY[0x1E69E7CC0];
        goto LABEL_234;
      }
    }

    sub_1D6752B3C();
    swift_allocError();
    v251 = v359;
    *v252 = v358;
    *(v252 + 8) = v251;
    *(v252 + 56) = 0;
    swift_willThrow();
    swift_endAccess();

    sub_1D67F58E4(v377, v435);

LABEL_235:

    return sub_1D5F2DF58(&v422);
  }

  v301 = 0;
  v351 = (*(v364 + 80) + 32) & ~*(v364 + 80);
  v360 = v300 + v351;
  v361 = v299;
  while (v301 < *(v300 + 16))
  {
    v303 = v363;
    v304 = *(v364 + 72);
    sub_1D6D09934(v360 + v304 * v301, v363, type metadata accessor for FormatOption);
    if (*(v299 + 16) && (v305 = sub_1D5B69D90(*v303, v303[1]), (v306 & 1) != 0))
    {
      v350 = v180;
      v307 = v298;
      v308 = *(v299 + 56) + *(v354 + 72) * v305;
      v309 = v347;
      sub_1D6D09934(v308, v347, type metadata accessor for FormatPropertyDefinition);
      v310 = v349;
      sub_1D6D0A058(v309, v349, type metadata accessor for FormatPropertyDefinition);
      type metadata accessor for FormatOptionConverter();
      v311 = v346;
      v312 = v340;
      sub_1D6AC31AC(v303, v310, v346);
      v340 = v312;
      if (v312)
      {

        sub_1D67F58E4(v377, v435);
        sub_1D60CF6F4(v307, v338, v339, v341, v342, v344, v345);
        sub_1D62B7D78(&v407);
        sub_1D6D0A444(v349, type metadata accessor for FormatPropertyDefinition);

        sub_1D5F2DF58(&v422);
        sub_1D6D0A444(v303, type metadata accessor for FormatOption);
        sub_1D6D0A444(v356, type metadata accessor for FeedCustomItem);
      }

      sub_1D6D09934(v311, v348, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v350 = sub_1D5CEABA0(0, v350[2] + 1, 1, v350);
      }

      v298 = v307;
      v180 = v350;
      v314 = v350[2];
      v313 = v350[3];
      v315 = v314 + 1;
      if (v314 >= v313 >> 1)
      {
        v180 = sub_1D5CEABA0(v313 > 1, v314 + 1, 1, v350);
      }

      sub_1D6D0A444(v311, type metadata accessor for FormatOption);
      sub_1D6D0A444(v349, type metadata accessor for FormatPropertyDefinition);
      v302 = v348;
    }

    else
    {
      sub_1D6D09934(v303, v357, type metadata accessor for FormatOption);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_1D5CEABA0(0, v180[2] + 1, 1, v180);
      }

      v314 = v180[2];
      v316 = v180[3];
      v315 = v314 + 1;
      if (v314 >= v316 >> 1)
      {
        v180 = sub_1D5CEABA0(v316 > 1, v314 + 1, 1, v180);
      }

      v302 = v357;
    }

    ++v301;
    sub_1D6D0A444(v363, type metadata accessor for FormatOption);
    v180[2] = v315;
    result = sub_1D6D0A058(v302, v180 + v351 + v314 * v304, type metadata accessor for FormatOption);
    v420 = v180;
    v299 = v361;
    v156 = v374;
    if (v362 == v301)
    {
      goto LABEL_256;
    }
  }

LABEL_282:
  __break(1u);
LABEL_283:
  __break(1u);
LABEL_284:
  __break(1u);
LABEL_285:
  __break(1u);
  return result;
}