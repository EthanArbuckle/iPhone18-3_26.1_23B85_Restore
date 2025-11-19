uint64_t sub_2189443B0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218950928();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189509E0();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950ACC();
  sub_2187FADB8(&unk_280EE3770, sub_218950ACC);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C34688(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C34688(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_218944748(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218950B84();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950C18();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950928();
  sub_2187FADB8(&qword_280EE5760, sub_218950928);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C346D8(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C346D8(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_218944B34(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218950D5C();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218950F34();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0AE40, sub_218950F34);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C347C8(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C347C8(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_218944E70(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_2189537DC();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218950D5C();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B138, sub_218950D5C);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C34818(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34818(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894526C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_2189539F0();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218953A84();
  v13 = v12;
  v14 = sub_2187FADB8(&unk_27CC0B140, sub_218953A84);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C34C50(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34C50(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

void sub_2189455E8(void (*a1)(id *), void *a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v27 = a1;
  v28 = a2;
  v26 = a4(0);
  v9 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v20 - v10;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v13 = a3;
    v30 = MEMORY[0x277D84F90];
    a3 = &v30;
    (a5)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v14 = 0;
    v15 = v30;
    v16 = v13;
    v24 = v13;
    v25 = v13 & 0xC000000000000001;
    v20 = a5;
    v21 = v13 & 0xFFFFFFFFFFFFFF8;
    v22 = v9 + 32;
    v23 = i;
    while (1)
    {
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25)
      {
        v18 = MEMORY[0x21CECE0F0](v14, v16);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v16 + 8 * v14 + 32);
      }

      i = v18;
      v29 = v18;
      a3 = v28;
      v27(&v29);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v30 = v15;
      a5 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (a5 >= v19 >> 1)
      {
        a3 = &v30;
        v20(v19 > 1, a5 + 1, 1);
        v15 = v30;
      }

      *(v15 + 16) = a5 + 1;
      (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v11, v26);
      ++v14;
      v16 = v24;
      if (v17 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_218945840(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218853400();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_2187FAD00();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE58D0, sub_2187FAD00);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_21885760C(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_21885760C(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_218945B7C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218953D48();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218953E34();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3670, sub_218953E34);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C350E0(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C350E0(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_218945EB8(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218950D5C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950E48();
  v32 = v11;
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950F34();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AE40, sub_218950F34);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_218C351F0(0, v16 & ~(v16 >> 63), 0);
    v38 = v41;
    result = sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v18 = 0;
      v30 = (v8 + 16);
      v31 = (v8 + 8);
      v28[0] = v35 + 32;
      v28[1] = v14;
      v29 = v10;
      while (1)
      {
        v19 = v16;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = sub_219BF5EC4();
        (*v30)(v10);
        v21(v40, 0);
        v33(v10, v40);
        if (v4)
        {
          (*v31)(v10, v7);
        }

        v36 = 0;
        v22 = v5;
        (*v31)(v10, v7);
        v23 = v38;
        v41 = v38;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C351F0(v24 > 1, v25 + 1, 1);
          v23 = v41;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v23;
        (*(v35 + 32))(v23 + v26 + *(v35 + 72) * v25, v39, v32);
        v5 = v22;
        result = sub_219BF5E94();
        ++v18;
        v27 = v20 == v19;
        v16 = v19;
        v10 = v29;
        v4 = v36;
        if (v27)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21894624C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;

      a1(&v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218946354(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    for (i = (a3 + 40); ; i += 16)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12 = v10;
      v13 = v11;
      sub_218951020(v10, v11);
      a1(&v14, &v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      sub_21895102C(v10, v11);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return v15;
      }
    }

    sub_21895102C(v10, v11);

    __break(1u);
  }

  return result;
}

uint64_t sub_218946470(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v20 = MEMORY[0x277D84F90];
  sub_218C355B0(0, v4, 0);
  v5 = v20;
  for (i = a3 + 32; ; i += 144)
  {
    a1(v19, i);
    if (v3)
    {
      break;
    }

    v20 = v5;
    v10 = *(v5 + 16);
    v9 = *(v5 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_218C355B0((v9 > 1), v10 + 1, 1);
      v5 = v20;
    }

    *(v5 + 16) = v10 + 1;
    v11 = (v5 + 144 * v10);
    v11[2] = v19[0];
    v12 = v19[1];
    v13 = v19[2];
    v14 = v19[4];
    v11[5] = v19[3];
    v11[6] = v14;
    v11[3] = v12;
    v11[4] = v13;
    v15 = v19[5];
    v16 = v19[6];
    v17 = v19[8];
    v11[9] = v19[7];
    v11[10] = v17;
    v11[7] = v15;
    v11[8] = v16;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2189465A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for MagazineFeedModel(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  sub_218C35750(0, v10, 0);
  v11 = v21;
  v12 = (a3 + 32);
  for (i = v10 - 1; ; --i)
  {
    v20[0] = *v12;
    *(v20 + 9) = *(v12 + 9);
    v19[0] = *v12;
    *(v19 + 9) = *(v12 + 9);
    sub_218950CAC(v20, v18);
    (v17[0])(v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    *v18 = v19[0];
    *&v18[9] = *(v19 + 9);
    sub_218950D08(v18);
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_218C35750(v14 > 1, v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    sub_21885F994(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for MagazineFeedModel);
    if (!i)
    {
      return v11;
    }

    v12 += 2;
  }

  *v18 = v19[0];
  *&v18[9] = *(v19 + 9);
  sub_218950D08(v18);

  __break(1u);
  return result;
}

uint64_t sub_2189467A0(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218954350();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218954408();
  v13 = v12;
  v14 = sub_2187FADB8(&unk_280EE36D0, sub_218954408);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C357A0(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C357A0(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_218946ADC(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_219BDB954();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v21 = MEMORY[0x277D84F90];
  sub_218C357F0(0, v9, 0);
  v10 = v21;
  v16 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v12 = *i;
    v20[0] = *(i - 1);
    v20[1] = v12;

    v18(v20);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v21 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_218C357F0(v13 > 1, v14 + 1, 1);
      v10 = v21;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v17);
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218946CA8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218951038();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895115C();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951268();
  sub_2187FADB8(&qword_280EE37A0, sub_218951268);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C35890(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C35890(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_218947040(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a1;
  v37 = a2;
  sub_218952AF8(0, &qword_280EE5B78, sub_218951108, &type metadata for MagazineSectionBarModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_2189512E4();
  v35 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951038();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_280EE5818, sub_218951038);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    sub_218C358E0(0, v16 & ~(v16 >> 63), 0);
    v41 = v43;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = v8;
      v19 = 0;
      v33 = (v18 + 16);
      v34 = (v18 + 8);
      v30[1] = v38 + 32;
      v31 = v16;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v39 = v19 + 1;
        v20 = v14;
        v21 = v5;
        v22 = v15;
        v23 = v20;
        v24 = v22;
        v25 = sub_219BF5EC4();
        (*v33)(v10);
        v25(v42, 0);
        v36(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v41;
        v43 = v41;
        v28 = *(v41 + 16);
        v27 = *(v41 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_218C358E0(v27 > 1, v28 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v26;
        (*(v38 + 32))(v26 + v29 + *(v38 + 72) * v28, v40, v35);
        v5 = v21;
        v14 = v23;
        v15 = v24;
        sub_219BF5E94();
        ++v19;
        v10 = v32;
        if (v39 == v31)
        {
          return v41;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894740C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218951378();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189513F4();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951518();
  sub_2187FADB8(&unk_280EE3658, sub_218951518);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C35930(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C35930(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_2189477A4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a1;
  v37 = a2;
  sub_218952AF8(0, &qword_280EE5C10, sub_218931D5C, &type metadata for SearchHomeModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_218952AF8(0, &qword_27CC0AE48, sub_2189514C4, &type metadata for SearchHomeLayoutModel, MEMORY[0x277D6DA50]);
  v35 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = v30 - v12;
  sub_218951378();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AE50, sub_218951378);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    sub_218C35980(0, v16 & ~(v16 >> 63), 0);
    v41 = v43;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = v8;
      v19 = 0;
      v33 = (v18 + 16);
      v34 = (v18 + 8);
      v30[1] = v38 + 32;
      v31 = v16;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v39 = v19 + 1;
        v20 = v14;
        v21 = v5;
        v22 = v15;
        v23 = v20;
        v24 = v22;
        v25 = sub_219BF5EC4();
        (*v33)(v10);
        v25(v42, 0);
        v36(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v41;
        v43 = v41;
        v28 = *(v41 + 16);
        v27 = *(v41 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_218C35980(v27 > 1, v28 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v26;
        (*(v38 + 32))(v26 + v29 + *(v38 + 72) * v28, v40, v35);
        v5 = v21;
        v14 = v23;
        v15 = v24;
        sub_219BF5E94();
        ++v19;
        v10 = v32;
        if (v39 == v31)
        {
          return v41;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_218947BA4(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218951594();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189516A0();
  v32 = v11;
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189517AC();
  v14 = v13;
  v15 = sub_2187FADB8(&unk_27CC0AE90, sub_2189517AC);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_218C35C58(0, v16 & ~(v16 >> 63), 0);
    v38 = v41;
    result = sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v18 = 0;
      v30 = (v8 + 16);
      v31 = (v8 + 8);
      v28[0] = v35 + 32;
      v28[1] = v14;
      v29 = v10;
      while (1)
      {
        v19 = v16;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = sub_219BF5EC4();
        (*v30)(v10);
        v21(v40, 0);
        v33(v10, v40);
        if (v4)
        {
          (*v31)(v10, v7);
        }

        v36 = 0;
        v22 = v5;
        (*v31)(v10, v7);
        v23 = v38;
        v41 = v38;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C35C58(v24 > 1, v25 + 1, 1);
          v23 = v41;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v23;
        (*(v35 + 32))(v23 + v26 + *(v35 + 72) * v25, v39, v32);
        v5 = v22;
        result = sub_219BF5E94();
        ++v18;
        v27 = v20 == v19;
        v16 = v19;
        v10 = v29;
        v4 = v36;
        if (v27)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218947F38(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v9 = (a3 + 40);
    while (1)
    {
      v10 = *v9;
      v11[0] = *(v9 - 1);
      v11[1] = v10;
      swift_unknownObjectRetain();
      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 2;
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return v13;
      }
    }

    swift_unknownObjectRelease();

    __break(1u);
  }

  return result;
}

uint64_t sub_218948094(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218951864();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189518E0();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895195C();
  sub_2187FADB8(&unk_27CC0AEB0, sub_21895195C);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C36018(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C36018(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894842C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a1;
  v37 = a2;
  sub_218952AF8(0, &qword_27CC0C8C0, sub_21878D92C, &type metadata for FollowingNotificationsModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_218952AF8(0, &qword_27CC0AEC0, sub_21878E148, &type metadata for FollowingNotificationsLayoutModel, MEMORY[0x277D6DA50]);
  v35 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = v30 - v12;
  sub_218951864();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AEC8, sub_218951864);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    sub_218C36068(0, v16 & ~(v16 >> 63), 0);
    v41 = v43;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = v8;
      v19 = 0;
      v33 = (v18 + 16);
      v34 = (v18 + 8);
      v30[1] = v38 + 32;
      v31 = v16;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v39 = v19 + 1;
        v20 = v14;
        v21 = v5;
        v22 = v15;
        v23 = v20;
        v24 = v22;
        v25 = sub_219BF5EC4();
        (*v33)(v10);
        v25(v42, 0);
        v36(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v41;
        v43 = v41;
        v28 = *(v41 + 16);
        v27 = *(v41 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_218C36068(v27 > 1, v28 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v26;
        (*(v38 + 32))(v26 + v29 + *(v38 + 72) * v28, v40, v35);
        v5 = v21;
        v14 = v23;
        v15 = v24;
        sub_219BF5E94();
        ++v19;
        v10 = v32;
        if (v39 == v31)
        {
          return v41;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894882C(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v21 = MEMORY[0x277D84F90];
    sub_218C362B8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v21;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v19 = v10;
      a1(v20, &v19);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v20[0];
      v12 = v20[1];
      v21 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20[0];
        sub_218C362B8((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v7 = v21;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_218948A38(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v26 = a6;
  v27 = a1;
  v8 = v6;
  v28 = a2;
  v10 = a4(0);
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v14;
    }

    v30 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v14 = v30;
    v23 = i;
    v24 = a3 & 0xC000000000000001;
    v21 = a5;
    v22 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v24)
      {
        v16 = MEMORY[0x21CECE0F0](v15, a3);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(a3 + 8 * v15 + 32);
        swift_unknownObjectRetain();
      }

      v29 = v16;
      v27(&v29);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;
      swift_unknownObjectRelease();
      v30 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        v21(v17 > 1, v18 + 1, 1);
        v14 = v30;
      }

      *(v14 + 16) = v18 + 1;
      sub_21885F994(v12, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18, v26);
      ++v15;
      if (a5 == v23)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_218948C7C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_2189519D8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951AE4();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951BD0();
  sub_2187FADB8(&qword_27CC11960, sub_218951BD0);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C36398(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C36398(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_218949014(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218951C88();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951D1C();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189519D8();
  sub_2187FADB8(&qword_27CC0AF20, sub_2189519D8);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C363E8(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C363E8(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_2189493AC(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218951DB0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951E9C();
  v32 = v11;
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951F54();
  v14 = v13;
  v15 = sub_2187FADB8(&unk_280EE3610, sub_218951F54);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_218C366E8(0, v16 & ~(v16 >> 63), 0);
    v38 = v41;
    result = sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v18 = 0;
      v30 = (v8 + 16);
      v31 = (v8 + 8);
      v28[0] = v35 + 32;
      v28[1] = v14;
      v29 = v10;
      while (1)
      {
        v19 = v16;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = sub_219BF5EC4();
        (*v30)(v10);
        v21(v40, 0);
        v33(v10, v40);
        if (v4)
        {
          (*v31)(v10, v7);
        }

        v36 = 0;
        v22 = v5;
        (*v31)(v10, v7);
        v23 = v38;
        v41 = v38;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C366E8(v24 > 1, v25 + 1, 1);
          v23 = v41;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v23;
        (*(v35 + 32))(v23 + v26 + *(v35 + 72) * v25, v39, v32);
        v5 = v22;
        result = sub_219BF5E94();
        ++v18;
        v27 = v20 == v19;
        v16 = v19;
        v10 = v29;
        v4 = v36;
        if (v27)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218949740(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x277D84F90];
  sub_218C36828(0, v5, 0);
  v6 = v16;
  v9 = *(sub_219BEFBF4() - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(v15, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v16 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_218C36828((v12 > 1), v13 + 1, 1);
      v6 = v16;
    }

    *(v6 + 16) = v13 + 1;
    sub_2186CB1F0(v15, v6 + 40 * v13 + 32);
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2189498A8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218952040();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952164();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952270();
  sub_2187FADB8(&qword_27CC0AF60, sub_218952270);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C36860(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C36860(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_218949C40(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a1;
  v37 = a2;
  sub_218952AF8(0, &qword_27CC0AF68, sub_218952110, &type metadata for SportsNavigationModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_218952AF8(0, &qword_27CC0AF70, sub_21895221C, &type metadata for SportsNavigationLayoutModel, MEMORY[0x277D6DA50]);
  v35 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = v30 - v12;
  sub_218952040();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0AF78, sub_218952040);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    sub_218C368B0(0, v16 & ~(v16 >> 63), 0);
    v41 = v43;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = v8;
      v19 = 0;
      v33 = (v18 + 16);
      v34 = (v18 + 8);
      v30[1] = v38 + 32;
      v31 = v16;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v39 = v19 + 1;
        v20 = v14;
        v21 = v5;
        v22 = v15;
        v23 = v20;
        v24 = v22;
        v25 = sub_219BF5EC4();
        (*v33)(v10);
        v25(v42, 0);
        v36(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v41;
        v43 = v41;
        v28 = *(v41 + 16);
        v27 = *(v41 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_218C368B0(v27 > 1, v28 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v26;
        (*(v38 + 32))(v26 + v29 + *(v38 + 72) * v28, v40, v35);
        v5 = v21;
        v14 = v23;
        v15 = v24;
        sub_219BF5E94();
        ++v19;
        v10 = v32;
        if (v39 == v31)
        {
          return v41;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894A0D4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v25 = a1;
  v26 = a2;
  v24 = a4(0);
  v11 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v13 = &v21 - v12;
  v14 = *(a3 + 16);
  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    return v15;
  }

  v27 = MEMORY[0x277D84F90];
  v21 = a5;
  a5(0, v14, 0);
  v15 = v27;
  v16 = *(a6(0) - 8);
  v17 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v23 = v11 + 32;
  v22 = *(v16 + 72);
  while (1)
  {
    v25(v17);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v27 = v15;
    v19 = *(v15 + 16);
    v18 = *(v15 + 24);
    if (v19 >= v18 >> 1)
    {
      v21(v18 > 1, v19 + 1, 1);
      v15 = v27;
    }

    *(v15 + 16) = v19 + 1;
    (*(v11 + 32))(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, v13, v24);
    v17 += v22;
    if (!--v14)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21894A2F4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218954178();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v28 - v11;
  sub_218954264();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3640, sub_218954264);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C36E70(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v9;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v9);
        v23(v39, 0);
        v33(v9);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v9, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C36E70(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v9 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v9, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894A684(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_2189522EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189523D8();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189524C4();
  sub_2187FADB8(&qword_27CC0AFB8, sub_2189524C4);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C37290(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C37290(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894AA1C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_2189525B0();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952644();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189522EC();
  sub_2187FADB8(&qword_27CC0AFD0, sub_2189522EC);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C372E0(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C372E0(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894ADB4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v14 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    if (i < 0)
    {
      __break(1u);
LABEL_19:
      swift_unknownObjectRelease();

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
        swift_unknownObjectRetain();
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_21894AF34(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_2187FAD00();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_21880B928();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE3730, sub_21880B928);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C373B0(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C373B0(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894B2B0(void (*a1)(_OWORD *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t))
{
  v7 = v5;
  v23 = a1;
  v24 = a2;
  v22 = a4(0);
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v19 - v10;
  v12 = *(a3 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v28 = MEMORY[0x277D84F90];
  v20 = a5;
  a5(0, v12, 0);
  v13 = v28;
  v14 = (a3 + 32);
  v21 = v9 + 32;
  for (i = v12 - 1; ; --i)
  {
    v27[0] = *v14;
    *(v27 + 9) = *(v14 + 9);
    v26[0] = *v14;
    *(v26 + 9) = *(v14 + 9);
    sub_218950CAC(v27, v25);
    v23(v26);
    if (v7)
    {
      break;
    }

    v7 = 0;
    *v25 = v26[0];
    *&v25[9] = *(v26 + 9);
    sub_218950D08(v25);
    v28 = v13;
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    if (v17 >= v16 >> 1)
    {
      v20(v16 > 1, v17 + 1, 1);
      v13 = v28;
    }

    *(v13 + 16) = v17 + 1;
    (*(v9 + 32))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, v11, v22);
    if (!i)
    {
      return v13;
    }

    v14 += 2;
  }

  *v25 = v26[0];
  *&v25[9] = *(v26 + 9);
  sub_218950D08(v25);

  __break(1u);
  return result;
}

uint64_t sub_21894B4D0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218952834();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952958();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952A7C();
  sub_2187FADB8(&unk_27CC0B010, sub_218952A7C);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C37770(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C37770(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894B868(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v36 = a1;
  v37 = a2;
  sub_218952AF8(0, &qword_27CC0F960, sub_218952904, &type metadata for FollowingDislikedModel, MEMORY[0x277D6D3F0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v30 - v9;
  sub_218952AF8(0, &qword_27CC0B020, sub_218952A28, &type metadata for FollowingDislikedLayoutModel, MEMORY[0x277D6DA50]);
  v35 = v11;
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = v30 - v12;
  sub_218952834();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0B028, sub_218952834);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    sub_218C377C0(0, v16 & ~(v16 >> 63), 0);
    v41 = v43;
    sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v18 = v8;
      v19 = 0;
      v33 = (v18 + 16);
      v34 = (v18 + 8);
      v30[1] = v38 + 32;
      v31 = v16;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v39 = v19 + 1;
        v20 = v14;
        v21 = v5;
        v22 = v15;
        v23 = v20;
        v24 = v22;
        v25 = sub_219BF5EC4();
        (*v33)(v10);
        v25(v42, 0);
        v36(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v41;
        v43 = v41;
        v28 = *(v41 + 16);
        v27 = *(v41 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_218C377C0(v27 > 1, v28 + 1, 1);
          v26 = v43;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v41 = v26;
        (*(v38 + 32))(v26 + v29 + *(v38 + 72) * v28, v40, v35);
        v5 = v21;
        v14 = v23;
        v15 = v24;
        sub_219BF5E94();
        ++v19;
        v10 = v32;
        if (v39 == v31)
        {
          return v41;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894BC68(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218953B70();
  v7 = v6;
  v35 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = &v28 - v11;
  sub_218953C5C();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B158, sub_218953C5C);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C378D0(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v10;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v10);
        v23(v39, 0);
        v33(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v10, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C378D0(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v10 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894BFE4(void (*a1)(uint64_t *), void *a2, unint64_t a3, uint64_t (*a4)(void), unint64_t a5)
{
  v7 = v5;
  v28 = a1;
  v29 = a2;
  v27 = a4(0);
  v9 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v21 - v10;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v14 = a3;
    v31 = MEMORY[0x277D84F90];
    a3 = &v31;
    (a5)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v13 = v31;
    v16 = v14;
    v25 = v14;
    v26 = v14 & 0xC000000000000001;
    v21 = a5;
    v22 = v14 & 0xFFFFFFFFFFFFFF8;
    v23 = v9 + 32;
    v24 = i;
    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v26)
      {
        v18 = MEMORY[0x21CECE0F0](v15, v16);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v16 + 8 * v15 + 32);
      }

      v30 = v18;
      a3 = v29;
      v28(&v30);
      if (v7)
      {
        goto LABEL_20;
      }

      v7 = 0;

      v31 = v13;
      a5 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (a5 >= v19 >> 1)
      {
        a3 = &v31;
        v21(v19 > 1, a5 + 1, 1);
        v13 = v31;
      }

      *(v13 + 16) = a5 + 1;
      (*(v9 + 32))(v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a5, v11, v27);
      ++v15;
      v16 = v25;
      if (v17 == v24)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_21894C29C(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x277D84F90];
  sub_218C38100(0, v5, 0);
  v6 = v19;
  for (i = (a3 + 48); ; i += 3)
  {
    v10 = *(i - 1);
    v11 = *i;
    v17[0] = *(i - 2);
    v17[1] = v10;
    v17[2] = v11;
    swift_unknownObjectRetain();

    a1(&v18, v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    swift_unknownObjectRelease();
    v12 = v18;
    v19 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v16 = v18;
      sub_218C38100((v13 > 1), v14 + 1, 1);
      v12 = v16;
      v6 = v19;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 16 * v14 + 32) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_21894C3F0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218952B60();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952C4C();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952D38();
  sub_2187FADB8(&qword_27CC0B068, sub_218952D38);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C38120(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C38120(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894C788(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_218952E24();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952EB8();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952B60();
  sub_2187FADB8(&unk_27CC0B080, sub_218952B60);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C38170(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C38170(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894CB20(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218953FB4();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v28 - v11;
  sub_2189540C0();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_27CC0B188, sub_2189540C0);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C381C0(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v9;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v9);
        v23(v39, 0);
        v33(v9);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v9, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C381C0(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v9 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v9, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894CE5C(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218953870();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v28 - v11;
  sub_218951DB0();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE5938, sub_218951DB0);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C35700(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v9;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v9);
        v23(v39, 0);
        v33(v9);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v9, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C35700(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v9 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v9, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894D1EC(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218950B84();
  v7 = v6;
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v28 - v11;
  sub_218950928();
  v13 = v12;
  v14 = sub_2187FADB8(&qword_280EE5760, sub_218950928);
  v15 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v15)
  {
    v40 = MEMORY[0x277D84F90];
    sub_218C34A38(0, v15 & ~(v15 >> 63), 0);
    v38 = v40;
    sub_219BF5DF4();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v17 = 0;
      v31 = (v35 + 16);
      v32 = (v35 + 8);
      v28 = v35 + 32;
      v29 = v15;
      v30 = v9;
      while (!__OFADD__(v17, 1))
      {
        v36 = v17 + 1;
        v18 = v13;
        v19 = v5;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = sub_219BF5EC4();
        (*v31)(v9);
        v23(v39, 0);
        v33(v9);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v32)(v9, v7);
        v24 = v38;
        v40 = v38;
        v26 = *(v38 + 16);
        v25 = *(v38 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34A38(v25 > 1, v26 + 1, 1);
          v24 = v40;
        }

        *(v24 + 16) = v26 + 1;
        v27 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v24;
        (*(v35 + 32))(v24 + v27 + *(v35 + 72) * v26, v37, v7);
        v5 = v19;
        v13 = v21;
        v14 = v22;
        sub_219BF5E94();
        ++v17;
        v9 = v30;
        if (v36 == v29)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v32)(v9, v7);

    __break(1u);
  }

  return result;
}

void sub_21894D5A8(void (*a1)(id *), uint64_t a2, unint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v25 = a6;
  v26 = a1;
  v8 = v6;
  v27 = a2;
  v10 = a4(0);
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v29 = MEMORY[0x277D84F90];
    a5(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v14 = 0;
    v15 = v29;
    v22 = i;
    v23 = a3 & 0xC000000000000001;
    v20 = a5;
    v21 = a3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      a5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23)
      {
        v16 = MEMORY[0x21CECE0F0](v14, a3);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(a3 + 8 * v14 + 32);
      }

      i = v16;
      v28 = v16;
      v26(&v28);
      if (v8)
      {
        goto LABEL_20;
      }

      v8 = 0;

      v29 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v20(v17 > 1, v18 + 1, 1);
        v15 = v29;
      }

      *(v15 + 16) = v18 + 1;
      sub_21885F994(v12, v15 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v18, v25);
      ++v14;
      if (a5 == v22)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_21894D80C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v9 = (a3 + 56);
    while (1)
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v12 = *v9;
      v13[0] = *(v9 - 3);
      v13[1] = v10;
      v13[2] = v11;
      v13[3] = v12;

      swift_unknownObjectRetain();

      a1(&v14, v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v9 += 4;

      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      if (!--v6)
      {
        return v15;
      }
    }

    swift_unknownObjectRelease();

    __break(1u);
  }

  return result;
}

uint64_t sub_21894D95C(void (*a1)(char *, void *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v33 = a1;
  v34 = a2;
  sub_218952F4C();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953058();
  v32 = v11;
  v35 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v39 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953164();
  v14 = v13;
  v15 = sub_2187FADB8(&qword_27CC0B0C8, sub_218953164);
  v16 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v16)
  {
    v41 = MEMORY[0x277D84F90];
    sub_218C38738(0, v16 & ~(v16 >> 63), 0);
    v38 = v41;
    result = sub_219BF5DF4();
    if ((v16 & 0x8000000000000000) == 0)
    {
      v37 = v15;
      v18 = 0;
      v30 = (v8 + 16);
      v31 = (v8 + 8);
      v28[0] = v35 + 32;
      v28[1] = v14;
      v29 = v10;
      while (1)
      {
        v19 = v16;
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v21 = sub_219BF5EC4();
        (*v30)(v10);
        v21(v40, 0);
        v33(v10, v40);
        if (v4)
        {
          (*v31)(v10, v7);
        }

        v36 = 0;
        v22 = v5;
        (*v31)(v10, v7);
        v23 = v38;
        v41 = v38;
        v25 = *(v38 + 16);
        v24 = *(v38 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_218C38738(v24 > 1, v25 + 1, 1);
          v23 = v41;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v35 + 80) + 32) & ~*(v35 + 80);
        v38 = v23;
        (*(v35 + 32))(v23 + v26 + *(v35 + 72) * v25, v39, v32);
        v5 = v22;
        result = sub_219BF5E94();
        ++v18;
        v27 = v20 == v19;
        v16 = v19;
        v10 = v29;
        v4 = v36;
        if (v27)
        {
          return v38;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21894DCF0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_21895321C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953328();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953434();
  sub_2187FADB8(&qword_27CC0B108, sub_218953434);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C387D8(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C387D8(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894E088(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  sub_2189534EC();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953580();
  v27 = v9;
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21895321C();
  sub_2187FADB8(&unk_27CC0B120, sub_21895321C);
  v11 = sub_219BF5E44();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C38828(0, v11 & ~(v11 >> 63), 0);
    v33 = v35;
    sub_219BF5DF4();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = v6;
      v14 = 0;
      v25 = (v13 + 16);
      v26 = (v13 + 8);
      v22[1] = v30 + 32;
      v23 = v11;
      v24 = v8;
      while (!__OFADD__(v14, 1))
      {
        v31 = v14 + 1;
        v15 = sub_219BF5EC4();
        (*v25)(v8);
        v15(v34, 0);
        v28(v8);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v16 = v8;
        v17 = v5;
        (*v26)(v16, v5);
        v18 = v33;
        v35 = v33;
        v20 = *(v33 + 16);
        v19 = *(v33 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_218C38828(v19 > 1, v20 + 1, 1);
          v18 = v35;
        }

        *(v18 + 16) = v20 + 1;
        v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v33 = v18;
        (*(v30 + 32))(v18 + v21 + *(v30 + 72) * v20, v32, v27);
        sub_219BF5E94();
        ++v14;
        v5 = v17;
        v8 = v24;
        if (v31 == v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v26)(v8, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_21894E51C(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v26 = MEMORY[0x277D84F90];
    sub_218C38918(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v26;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, a3);
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v22 = v10;
      a1(&v23, &v22);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;
      swift_unknownObjectRelease();
      v11 = v23;
      v12 = v24;
      v13 = v25;
      v26 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        v19 = v24;
        v20 = v23;
        v17 = v25;
        sub_218C38918((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v12 = v19;
        v11 = v20;
        v7 = v26;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 40 * v15;
      *(v16 + 32) = v11;
      *(v16 + 48) = v12;
      *(v16 + 64) = v13;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_21894E6D8()
{
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21894E798();
  }

  return result;
}

uint64_t sub_21894E798()
{
  v1 = v0;
  v89 = type metadata accessor for OfflineContentRequest(0);
  v2 = *(v89 - 8);
  v3 = MEMORY[0x28223BE20](v89);
  v5 = (v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = v78 - v6;
  v8 = type metadata accessor for OfflineContentRequest.Source(0);
  MEMORY[0x28223BE20](v8 - 8);
  v88 = v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  v10 = sub_218720294(&unk_282A21A30);
  if (v10 != 6)
  {
    sub_2186C66AC();
    v66 = sub_219BF6F74();
    sub_2186E7AE8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v67 = swift_allocObject();
    v68 = v67;
    *(v67 + 16) = xmmword_219C09BA0;
    if (v10 > 2)
    {
      if (v10 != 3)
      {
        if (v10 == 4)
        {
          v69 = 0x8000000219CD71D0;
          v70 = 0xD000000000000019;
        }

        else
        {
          v69 = 0x8000000219CD71F0;
          v70 = 0xD000000000000013;
        }

        goto LABEL_47;
      }

      v70 = 0xD000000000000012;
      v77 = "disabledInSettings";
    }

    else
    {
      if (!v10)
      {
        v69 = 0xE700000000000000;
        v70 = 0x6E776F6E6B6E75;
        goto LABEL_47;
      }

      if (v10 == 1)
      {
        v69 = 0xED00006465626972;
        v70 = 0x6373627553746F6ELL;
LABEL_47:
        *(v67 + 56) = MEMORY[0x277D837D0];
        *(v67 + 64) = sub_2186FC3BC();
        *(v68 + 32) = v70;
        *(v68 + 40) = v69;
        sub_219BF6214();
        sub_219BE5314();

        *&v92 = MEMORY[0x277D84F90];
        sub_218950530();
        return sub_219BE21B4();
      }

      v70 = 0xD000000000000012;
      v77 = "featureUnavailable";
    }

    v69 = (v77 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  v80 = v2;
  v11 = v0[6];
  v12 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v11);
  (*(v12 + 88))(v11, v12);
  sub_219BE2184();

  v13 = v92;
  v96 = MEMORY[0x277D84F90];
  v97 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  v14 = _s7NewsUI215OfflineFeedKindO8allCasesSayACGvgZ_0();
  v15 = *(v14 + 2);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v17 = *v16++;
      v92 = v17;
      sub_218720448(v17, *(&v17 + 1));
      sub_21894F5B8(&v92, v13, v1, &v97, &v96, &v95, &v94, &v93);
      sub_218720434(v17, *(&v17 + 1));
      --v15;
    }

    while (v15);
  }

  swift_getObjectType();
  swift_getKeyPath();
  v18 = sub_219BF6A94();

  swift_beginAccess();
  v19 = *(v97 + 2);
  if (v18 < v19)
  {
    sub_21895275C(v18, v19, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v20 = sub_219BF6A94();

  swift_beginAccess();
  v21 = *(v96 + 2);
  if (v20 < v21)
  {
    sub_21895275C(v20, v21, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v22 = sub_219BF6A94();

  swift_beginAccess();
  v23 = *(v95 + 2);
  if (v22 < v23)
  {
    sub_21895275C(v22, v23, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  swift_getKeyPath();
  v24 = sub_219BF6A94();

  swift_beginAccess();
  v25 = *(v94 + 2);
  if (v24 < v25)
  {
    sub_21895275C(v24, v25, sub_218840D24, sub_2194B7E4C);
  }

  v87 = v1;
  swift_endAccess();
  swift_getKeyPath();
  v26 = sub_219BF6A94();

  swift_beginAccess();
  v27 = *(v93 + 2);
  if (v26 < v27)
  {
    sub_21895275C(v26, v27, sub_218840D24, sub_2194B7E4C);
  }

  swift_endAccess();
  v28 = sub_219BDBD34();
  v29 = v88;
  v30 = (*(*(v28 - 8) + 56))(v88, 1, 1, v28);
  MEMORY[0x28223BE20](v30);
  v78[-2] = 31;
  v78[-1] = v29;
  v86 = v31;
  v32 = sub_2189441F0(sub_21895042C, &v78[-4], v31);
  MEMORY[0x28223BE20](v32);
  v78[-2] = 31;
  v78[-1] = v29;
  v85 = v33;
  v34 = sub_2189441F0(sub_218950460, &v78[-4], v33);
  MEMORY[0x28223BE20](v34);
  v78[-2] = 31;
  v78[-1] = v29;
  v84 = v35;
  v36 = sub_2189441F0(sub_218950494, &v78[-4], v35);
  MEMORY[0x28223BE20](v36);
  v78[-2] = 31;
  v78[-1] = v29;
  v83 = v37;
  v38 = sub_2189441F0(sub_2189504C8, &v78[-4], v37);
  MEMORY[0x28223BE20](v38);
  v78[-2] = 31;
  v78[-1] = v29;
  v82 = v39;
  v40 = sub_2189441F0(sub_2189504FC, &v78[-4], v39);
  v91 = v32;
  sub_2191ED4DC(v34);
  sub_2191ED4DC(v36);
  sub_2191ED4DC(v38);
  sub_2191ED4DC(v40);
  v41 = v91;
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  v42 = qword_280F617D0;
  sub_2186E7AE8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_219C09EC0;
  *&v92 = *(v41 + 16);
  v44 = v92;
  v45 = sub_219BF7894();
  v47 = v46;
  v48 = MEMORY[0x277D837D0];
  *(v43 + 56) = MEMORY[0x277D837D0];
  v81 = sub_2186FC3BC();
  *(v43 + 64) = v81;
  *(v43 + 32) = v45;
  *(v43 + 40) = v47;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  if (v44)
  {
    v78[0] = v43;
    v78[1] = v42;
    v90 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v44, 0);
    v49 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v79 = v41;
    v50 = v41 + v49;
    v51 = v90;
    v52 = *(v80 + 72);
    while (1)
    {
      sub_2189506A8(v50, v7, type metadata accessor for OfflineContentRequest);
      sub_2189506A8(v7, v5, type metadata accessor for OfflineContentRequest);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = *v5;
      v54 = v5[1];
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_218950608(0, &unk_280E8F880);
          v58 = v5 + *(v62 + 64);
          v63 = sub_219BF53D4();

          v64 = NDAudioContentIDFromArticleID();

          v55 = sub_219BF5414();
          v54 = v65;

          goto LABEL_28;
        }

        v56 = &unk_280E8F880;
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v56 = &qword_280E8F8B0;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v56 = &unk_280E8F8A0;
      }

      else
      {
        v56 = &unk_280E8F890;
      }

      sub_218950608(0, v56);
      v58 = v5 + *(v57 + 64);
LABEL_28:
      sub_218950710(v58, type metadata accessor for OfflineContentRequest.Source);
      sub_218950710(v7, type metadata accessor for OfflineContentRequest);
      v90 = v51;
      v60 = *(v51 + 16);
      v59 = *(v51 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_21870B65C((v59 > 1), v60 + 1, 1);
        v51 = v90;
      }

      *(v51 + 16) = v60 + 1;
      v61 = v51 + 16 * v60;
      *(v61 + 32) = v55;
      *(v61 + 40) = v54;
      v50 += v52;
      if (!--v44)
      {

        v41 = v79;
        v43 = v78[0];
        v48 = MEMORY[0x277D837D0];
        goto LABEL_41;
      }
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_41:

  v71 = MEMORY[0x21CECC6D0](v51, v48);
  v73 = v72;

  MEMORY[0x21CECC330](v71, v73);

  v74 = v92;
  v75 = v81;
  *(v43 + 96) = v48;
  *(v43 + 104) = v75;
  *(v43 + 72) = v74;
  sub_219BF6214();
  sub_219BE5314();

  *&v92 = v41;
  sub_218950530();
  sub_219BE21B4();

  return sub_218950710(v88, type metadata accessor for OfflineContentRequest.Source);
}

uint64_t sub_21894F450()
{
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21894E798();
  }

  return result;
}

uint64_t sub_21894F510(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_21894E798();
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  v3 = sub_219BE5314();
  return a2(v3);
}

uint64_t sub_21894F5B8(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4, char **a5, char **a6, char **a7, char **a8)
{
  v101 = a8;
  v102 = a7;
  v103 = a6;
  v105 = a5;
  v12 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = *a1;
  v15 = a1[1];
  v107 = a2;
  v96 = v14;
  *&v106 = v14;
  *(&v106 + 1) = v15;
  v100 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OfflineFeedsManifest.manifest(for:)(&v106, v100);
  v16 = __swift_project_boxed_opaque_existential_1((a3 + 64), *(a3 + 88));
  v95 = v15;
  if (v15)
  {
    v17 = 12;
  }

  else
  {
    v17 = 13;
  }

  *&v106 = *v16;
  v18 = off_282A442B8;
  v19 = type metadata accessor for OfflineFeatures();
  HIDWORD(v94) = v17;
  v97 = v19;
  v98 = v18;
  v20 = 0;
  if (v18(v17) == 6)
  {
    ObjectType = swift_getObjectType();
    *&v106 = v96;
    *(&v106 + 1) = v95;
    v20 = sub_21894FE24(&v106, ObjectType, &selRef_maxArticleDownloads);
  }

  v99 = a3;
  result = OfflineFeedManifest.rootArticleIDs.getter();
  v23 = result;
  v24 = *(result + 16);
  if (v24)
  {
    v25 = 0;
    v104 = v20 & ~(v20 >> 63);
    v26 = (result + 40);
    while (v25 < *(v23 + 16))
    {
      if (v104 != v25)
      {
        v28 = *(v26 - 1);
        v27 = *v26;
        swift_beginAccess();
        v29 = *a4;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a4 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = sub_218840D24(0, *(v29 + 2) + 1, 1, v29);
          *a4 = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_218840D24((v31 > 1), v32 + 1, 1, v29);
          *a4 = v29;
        }

        ++v25;
        *(v29 + 2) = v32 + 1;
        v33 = &v29[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v27;
        result = swift_endAccess();
        v26 += 2;
        if (v24 != v25)
        {
          continue;
        }
      }

      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_65;
  }

LABEL_15:

  *&v106 = *__swift_project_boxed_opaque_existential_1((v99 + 64), *(v99 + 88));
  if ((v98)(HIDWORD(v94), v97) == 6)
  {
    v34 = swift_getObjectType();
    *&v106 = v96;
    *(&v106 + 1) = v95;
    v35 = sub_21894FE24(&v106, v34, &selRef_maxIssueDownloads);
  }

  else
  {
    v35 = 0;
  }

  result = OfflineFeedManifest.rootIssueIDs.getter();
  v36 = result;
  v37 = *(result + 16);
  if (v37)
  {
    v38 = 0;
    v39 = v35 & ~(v35 >> 63);
    v40 = (result + 40);
    while (v38 < *(v36 + 16))
    {
      if (v39 != v38)
      {
        v42 = *(v40 - 1);
        v41 = *v40;
        v43 = v105;
        swift_beginAccess();
        v44 = *v43;

        v45 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v44;
        if ((v45 & 1) == 0)
        {
          v44 = sub_218840D24(0, *(v44 + 2) + 1, 1, v44);
          *v105 = v44;
        }

        v47 = *(v44 + 2);
        v46 = *(v44 + 3);
        if (v47 >= v46 >> 1)
        {
          v44 = sub_218840D24((v46 > 1), v47 + 1, 1, v44);
          *v105 = v44;
        }

        ++v38;
        *(v44 + 2) = v47 + 1;
        v48 = &v44[16 * v47];
        *(v48 + 4) = v42;
        *(v48 + 5) = v41;
        result = swift_endAccess();
        v40 += 2;
        if (v37 != v38)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

LABEL_27:

  *&v106 = *__swift_project_boxed_opaque_existential_1((v99 + 64), *(v99 + 88));
  if ((v98)(17, v97) == 6)
  {
    v49 = swift_getObjectType();
    *&v106 = v96;
    *(&v106 + 1) = v95;
    v50 = sub_21894FE24(&v106, v49, &selRef_maxPuzzleDownloads);
  }

  else
  {
    v50 = 0;
  }

  result = OfflineFeedManifest.rootPuzzleIDs.getter();
  v51 = result;
  v52 = *(result + 16);
  if (v52)
  {
    v53 = 0;
    v54 = v50 & ~(v50 >> 63);
    v55 = (result + 40);
    while (v53 < *(v51 + 16))
    {
      if (v54 != v53)
      {
        v57 = *(v55 - 1);
        v56 = *v55;
        v58 = v103;
        swift_beginAccess();
        v59 = *v58;

        v60 = swift_isUniquelyReferenced_nonNull_native();
        *v58 = v59;
        if ((v60 & 1) == 0)
        {
          v59 = sub_218840D24(0, *(v59 + 2) + 1, 1, v59);
          *v103 = v59;
        }

        v62 = *(v59 + 2);
        v61 = *(v59 + 3);
        if (v62 >= v61 >> 1)
        {
          v59 = sub_218840D24((v61 > 1), v62 + 1, 1, v59);
          *v103 = v59;
        }

        ++v53;
        *(v59 + 2) = v62 + 1;
        v63 = &v59[16 * v62];
        *(v63 + 4) = v57;
        *(v63 + 5) = v56;
        result = swift_endAccess();
        v55 += 2;
        if (v52 != v53)
        {
          continue;
        }
      }

      goto LABEL_39;
    }

    goto LABEL_66;
  }

LABEL_39:

  *&v106 = *__swift_project_boxed_opaque_existential_1((v99 + 64), *(v99 + 88));
  if ((v98)(14, v97) == 6)
  {
    v64 = swift_getObjectType();
    *&v106 = v96;
    *(&v106 + 1) = v95;
    v65 = sub_21894FE24(&v106, v64, &selRef_maxAudioDownloads);
  }

  else
  {
    v65 = 0;
  }

  result = OfflineFeedManifest.rootAudioArticleIDs.getter();
  v66 = result;
  v67 = *(result + 16);
  if (v67)
  {
    v68 = 0;
    v69 = v65 & ~(v65 >> 63);
    v70 = (result + 40);
    while (v68 < *(v66 + 16))
    {
      if (v69 != v68)
      {
        v72 = *(v70 - 1);
        v71 = *v70;
        v73 = v102;
        swift_beginAccess();
        v74 = *v73;

        v75 = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v74;
        if ((v75 & 1) == 0)
        {
          v74 = sub_218840D24(0, *(v74 + 2) + 1, 1, v74);
          *v102 = v74;
        }

        v77 = *(v74 + 2);
        v76 = *(v74 + 3);
        if (v77 >= v76 >> 1)
        {
          v74 = sub_218840D24((v76 > 1), v77 + 1, 1, v74);
          *v102 = v74;
        }

        ++v68;
        *(v74 + 2) = v77 + 1;
        v78 = &v74[16 * v77];
        *(v78 + 4) = v72;
        *(v78 + 5) = v71;
        result = swift_endAccess();
        v70 += 2;
        if (v67 != v68)
        {
          continue;
        }
      }

      goto LABEL_51;
    }

    goto LABEL_67;
  }

LABEL_51:

  *&v106 = *__swift_project_boxed_opaque_existential_1((v99 + 64), *(v99 + 88));
  if ((v98)(18, v97) == 6)
  {
    v79 = swift_getObjectType();
    *&v106 = v96;
    *(&v106 + 1) = v95;
    v80 = sub_21894FE24(&v106, v79, &selRef_maxRecipeDownloads);
  }

  else
  {
    v80 = 0;
  }

  result = OfflineFeedManifest.rootRecipeIDs.getter();
  v81 = result;
  v82 = *(result + 16);
  if (!v82)
  {
LABEL_63:
    sub_218950710(v100, type metadata accessor for OfflineFeedManifest);
  }

  v83 = 0;
  v84 = v80 & ~(v80 >> 63);
  v85 = (result + 40);
  while (v83 < *(v81 + 16))
  {
    if (v84 != v83)
    {
      v87 = *(v85 - 1);
      v86 = *v85;
      v88 = v101;
      swift_beginAccess();
      v89 = *v88;

      v90 = swift_isUniquelyReferenced_nonNull_native();
      *v88 = v89;
      if ((v90 & 1) == 0)
      {
        v89 = sub_218840D24(0, *(v89 + 2) + 1, 1, v89);
        *v101 = v89;
      }

      v92 = *(v89 + 2);
      v91 = *(v89 + 3);
      if (v92 >= v91 >> 1)
      {
        v89 = sub_218840D24((v91 > 1), v92 + 1, 1, v89);
        *v101 = v89;
      }

      ++v83;
      *(v89 + 2) = v92 + 1;
      v93 = &v89[16 * v92];
      *(v93 + 4) = v87;
      *(v93 + 5) = v86;
      result = swift_endAccess();
      v85 += 2;
      if (v82 != v83)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

LABEL_68:
  __break(1u);
  return result;
}

id sub_21894FE24(__int128 *a1, uint64_t a2, const char **a3)
{
  v8 = *a1;
  result = sub_218950068(&v8);
  if (result)
  {
    v5 = *a3;
    v6 = result;
    v7 = [result v5];

    return v7;
  }

  return result;
}

id sub_21894FE78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxIssueDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_21894FEAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X4>, void *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  sub_218950608(0, a4);
  v11 = *(v10 + 64);
  *a5 = v9;
  a5[1] = v8;
  a5[2] = a2;
  sub_2189506A8(a3, a5 + v11, type metadata accessor for OfflineContentRequest.Source);
  type metadata accessor for OfflineContentRequest(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_21894FF58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_280E8D928 != -1)
  {
    swift_once();
  }

  sub_219BF6214();
  sub_219BE5314();
  sub_219BE1F84();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;

  sub_219BE1F74();
}

id sub_218950068(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [v1 possiblyUnfetchedAppConfiguration];
  result = [v3 respondsToSelector_];
  if (v2 <= 4)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_46;
        }

        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_sharedWithYouFeedRules;
            goto LABEL_49;
          }

          return 0;
        }
      }

      else
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_savedFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        __break(1u);
      }

      __break(1u);
    }

    else
    {
      if (v2 == 2)
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_todayFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        goto LABEL_60;
      }

      if (v2 != 3)
      {
        if (result)
        {
          v5 = [v3 offlineDownloadsConfig];
          swift_unknownObjectRelease();
          if (v5)
          {
            v6 = &selRef_magazineFeedRules;
            goto LABEL_49;
          }

          return 0;
        }

        goto LABEL_55;
      }

      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_puzzleHubFeedRules;
          goto LABEL_49;
        }

        return 0;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v2 <= 7)
  {
    if (v2 == 5)
    {
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_sportsFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_61;
    }

    if (v2 != 6)
    {
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_historyFeedRules;
LABEL_49:
          v7 = [v5 *v6];

          return v7;
        }

        return 0;
      }

      goto LABEL_58;
    }

    if (result)
    {
      v5 = [v3 offlineDownloadsConfig];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = &selRef_audioFeedRules;
        goto LABEL_49;
      }

      return 0;
    }

    goto LABEL_56;
  }

  switch(v2)
  {
    case 8:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_recipeBoxFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_62;
    case 9:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_foodHubFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_57;
    case 10:
      if (result)
      {
        v5 = [v3 offlineDownloadsConfig];
        swift_unknownObjectRelease();
        if (v5)
        {
          v6 = &selRef_recipeCatalogFeedRules;
          goto LABEL_49;
        }

        return 0;
      }

      goto LABEL_59;
  }

LABEL_46:
  if (result)
  {
    v5 = [v3 offlineDownloadsConfig];
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = &selRef_puzzleTypeFeedRules;
      goto LABEL_49;
    }

    return 0;
  }

LABEL_63:
  __break(1u);
  return result;
}

unint64_t sub_218950530()
{
  result = qword_280E8F1C0;
  if (!qword_280E8F1C0)
  {
    sub_2186E7AE8(255, &unk_280E8F1D0, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83940]);
    sub_2187FADB8(qword_280ECA570, type metadata accessor for OfflineContentRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F1C0);
  }

  return result;
}

void sub_218950608(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for OfflineContentRequest.Source(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t sub_2189506A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218950710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218950820(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = a3;
    v4 = a2;
    v6 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    v14 = a4;
    if (!v9)
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_219BF7214();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  v7(result, 1);

  return v14(v6, v4, 0);
}

void sub_218950928()
{
  if (!qword_280EE5750)
  {
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5750);
    }
  }
}

void sub_2189509E0()
{
  if (!qword_280EE4DA0)
  {
    type metadata accessor for FollowingSectionLayoutDescriptor();
    type metadata accessor for FollowingLayoutModel();
    sub_2187FADB8(&unk_280EA6930, type metadata accessor for FollowingSectionLayoutDescriptor);
    sub_2187FADB8(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4DA0);
    }
  }
}

void sub_218950ACC()
{
  if (!qword_280EE3760)
  {
    type metadata accessor for FollowingModel();
    sub_2187490E4();
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3760);
    }
  }
}

void sub_218950B84()
{
  if (!qword_280EE5C70)
  {
    type metadata accessor for FollowingModel();
    sub_2187FADB8(&qword_280EDC630, type metadata accessor for FollowingModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5C70);
    }
  }
}

void sub_218950C18()
{
  if (!qword_280EE5060)
  {
    type metadata accessor for FollowingLayoutModel();
    sub_2187FADB8(&qword_280ECEC20, type metadata accessor for FollowingLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5060);
    }
  }
}

void sub_218950D5C()
{
  if (!qword_27CC0AE08)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_2187FADB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE08);
    }
  }
}

void sub_218950E48()
{
  if (!qword_27CC0AE20)
  {
    type metadata accessor for MagazineCatalogLayoutSectionDescriptor();
    type metadata accessor for MagazineCatalogLayoutModel();
    sub_2187FADB8(&qword_27CC0AD38, type metadata accessor for MagazineCatalogLayoutSectionDescriptor);
    sub_2187FADB8(&qword_27CC0AE30, type metadata accessor for MagazineCatalogLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE20);
    }
  }
}

void sub_218950F34()
{
  if (!qword_27CC0AE38)
  {
    type metadata accessor for MagazineCatalogSectionDescriptor(255);
    type metadata accessor for MagazineCatalogModel();
    sub_2187FADB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE38);
    }
  }
}

uint64_t sub_218951020(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21895102C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

void sub_218951038()
{
  if (!qword_280EE5808)
  {
    sub_2189510B4();
    sub_218951108();
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5808);
    }
  }
}

unint64_t sub_2189510B4()
{
  result = qword_280EE26A0;
  if (!qword_280EE26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE26A0);
  }

  return result;
}

unint64_t sub_218951108()
{
  result = qword_280EC4660;
  if (!qword_280EC4660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4660);
  }

  return result;
}

void sub_21895115C()
{
  if (!qword_280EE4DB0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel();
    sub_218951214();
    sub_2187FADB8(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4DB0);
    }
  }
}

unint64_t sub_218951214()
{
  result = qword_280EE2500;
  if (!qword_280EE2500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2500);
  }

  return result;
}

void sub_218951268()
{
  if (!qword_280EE3798)
  {
    sub_2189510B4();
    sub_218951108();
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3798);
    }
  }
}

void sub_2189512E4()
{
  if (!qword_280EE50A0)
  {
    type metadata accessor for MagazineSectionBarLayoutModel();
    sub_2187FADB8(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE50A0);
    }
  }
}

void sub_218951378()
{
  if (!qword_280EE5990)
  {
    sub_218931D04();
    sub_218931D5C();
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5990);
    }
  }
}

void sub_2189513F4()
{
  if (!qword_280EE4E28)
  {
    sub_218951470();
    sub_2189514C4();
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4E28);
    }
  }
}

unint64_t sub_218951470()
{
  result = qword_280EA1FB0[0];
  if (!qword_280EA1FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1FB0);
  }

  return result;
}

unint64_t sub_2189514C4()
{
  result = qword_280EC9D18[0];
  if (!qword_280EC9D18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC9D18);
  }

  return result;
}

void sub_218951518()
{
  if (!qword_280EE3650)
  {
    sub_218931D04();
    sub_218931D5C();
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3650);
    }
  }
}

void sub_218951594()
{
  if (!qword_27CC0AE58)
  {
    type metadata accessor for MagazineGridItemModel();
    sub_21895164C();
    sub_2187FADB8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE58);
    }
  }
}

unint64_t sub_21895164C()
{
  result = qword_27CC0AE60;
  if (!qword_27CC0AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AE60);
  }

  return result;
}

void sub_2189516A0()
{
  if (!qword_27CC0AE70)
  {
    type metadata accessor for MagazineGridLayoutModel();
    sub_218951758();
    sub_2187FADB8(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AE70);
    }
  }
}

unint64_t sub_218951758()
{
  result = qword_27CC14E70;
  if (!qword_27CC14E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14E70);
  }

  return result;
}

void sub_2189517AC()
{
  if (!qword_27CC11EA0)
  {
    type metadata accessor for MagazineGridItemModel();
    sub_21895164C();
    sub_2187FADB8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC11EA0);
    }
  }
}

void sub_218951864()
{
  if (!qword_27CC0C8E0)
  {
    sub_21878D8D8();
    sub_21878D92C();
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C8E0);
    }
  }
}

void sub_2189518E0()
{
  if (!qword_27CC0AEA0)
  {
    sub_21878E0F4();
    sub_21878E148();
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AEA0);
    }
  }
}

void sub_21895195C()
{
  if (!qword_27CC0C900)
  {
    sub_21878D8D8();
    sub_21878D92C();
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C900);
    }
  }
}

void sub_2189519D8()
{
  if (!qword_27CC0AED0)
  {
    type metadata accessor for ChannelPickerElementModel();
    sub_218951A90();
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AED0);
    }
  }
}

unint64_t sub_218951A90()
{
  result = qword_27CC0F980;
  if (!qword_27CC0F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F980);
  }

  return result;
}

void sub_218951AE4()
{
  if (!qword_27CC0F450)
  {
    type metadata accessor for ChannelPickerLayoutSectionDescriptor();
    type metadata accessor for ChannelPickerLayoutModel();
    sub_2187FADB8(&unk_27CC0AEF0, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
    sub_2187FADB8(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F450);
    }
  }
}

void sub_218951BD0()
{
  if (!qword_27CC0AF00)
  {
    type metadata accessor for ChannelPickerElementModel();
    sub_218951A90();
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF00);
    }
  }
}

void sub_218951C88()
{
  if (!qword_27CC0AF10)
  {
    type metadata accessor for ChannelPickerElementModel();
    sub_2187FADB8(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF10);
    }
  }
}

void sub_218951D1C()
{
  if (!qword_27CC0F470)
  {
    type metadata accessor for ChannelPickerLayoutModel();
    sub_2187FADB8(&qword_27CC0F460, type metadata accessor for ChannelPickerLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F470);
    }
  }
}

void sub_218951DB0()
{
  if (!qword_280EE5930)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5930);
    }
  }
}

void sub_218951E9C()
{
  if (!qword_280EE4DF0)
  {
    type metadata accessor for MagazineFeedLayoutModel();
    sub_2187EEA78();
    sub_2187FADB8(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE4DF0);
    }
  }
}

void sub_218951F54()
{
  if (!qword_280EE3600)
  {
    type metadata accessor for MagazineFeedSectionDescriptor();
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3600);
    }
  }
}

void sub_218952040()
{
  if (!qword_27CC0AF28)
  {
    sub_2189520BC();
    sub_218952110();
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF28);
    }
  }
}

unint64_t sub_2189520BC()
{
  result = qword_27CC0AF30;
  if (!qword_27CC0AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF30);
  }

  return result;
}

unint64_t sub_218952110()
{
  result = qword_27CC0AF38;
  if (!qword_27CC0AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF38);
  }

  return result;
}

void sub_218952164()
{
  if (!qword_27CC0AF40)
  {
    type metadata accessor for SportsNavigationLayoutSectionDescriptor();
    sub_2187FADB8(&qword_27CC0F4E0, type metadata accessor for SportsNavigationLayoutSectionDescriptor);
    sub_21895221C();
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF40);
    }
  }
}

unint64_t sub_21895221C()
{
  result = qword_27CC0AF50;
  if (!qword_27CC0AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AF50);
  }

  return result;
}

void sub_218952270()
{
  if (!qword_27CC0AF58)
  {
    sub_2189520BC();
    sub_218952110();
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF58);
    }
  }
}

void sub_2189522EC()
{
  if (!qword_27CC0AF80)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_2187FADB8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF80);
    }
  }
}

void sub_2189523D8()
{
  if (!qword_27CC0AF98)
  {
    type metadata accessor for SportsManagementLayoutSectionDescriptor();
    type metadata accessor for SportsManagementLayoutModel();
    sub_2187FADB8(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor);
    sub_2187FADB8(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AF98);
    }
  }
}

void sub_2189524C4()
{
  if (!qword_27CC0AFB0)
  {
    type metadata accessor for SportsManagementSectionDescriptor();
    type metadata accessor for SportsManagementModel();
    sub_2187FADB8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor);
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AFB0);
    }
  }
}

void sub_2189525B0()
{
  if (!qword_27CC0AFC0)
  {
    type metadata accessor for SportsManagementModel();
    sub_2187FADB8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AFC0);
    }
  }
}

void sub_218952644()
{
  if (!qword_27CC0AFC8)
  {
    type metadata accessor for SportsManagementLayoutModel();
    sub_2187FADB8(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AFC8);
    }
  }
}

uint64_t sub_21895275C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

void sub_218952834()
{
  if (!qword_27CC0AFD8)
  {
    sub_2189528B0();
    sub_218952904();
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AFD8);
    }
  }
}

unint64_t sub_2189528B0()
{
  result = qword_27CC0AFE0;
  if (!qword_27CC0AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AFE0);
  }

  return result;
}

unint64_t sub_218952904()
{
  result = qword_27CC0AFE8;
  if (!qword_27CC0AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AFE8);
  }

  return result;
}

void sub_218952958()
{
  if (!qword_27CC0AFF0)
  {
    sub_2189529D4();
    sub_218952A28();
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0AFF0);
    }
  }
}

unint64_t sub_2189529D4()
{
  result = qword_27CC0F5F0;
  if (!qword_27CC0F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F5F0);
  }

  return result;
}

unint64_t sub_218952A28()
{
  result = qword_27CC0B000;
  if (!qword_27CC0B000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B000);
  }

  return result;
}

void sub_218952A7C()
{
  if (!qword_27CC0B008)
  {
    sub_2189528B0();
    sub_218952904();
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B008);
    }
  }
}

void sub_218952AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_218952B60()
{
  if (!qword_27CC0B030)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_2187FADB8(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B030);
    }
  }
}

void sub_218952C4C()
{
  if (!qword_27CC0B048)
  {
    type metadata accessor for SportsManagementDetailLayoutSectionDescriptor();
    type metadata accessor for SportsManagementDetailLayoutModel();
    sub_2187FADB8(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
    sub_2187FADB8(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B048);
    }
  }
}

void sub_218952D38()
{
  if (!qword_27CC0B060)
  {
    type metadata accessor for SportsManagementDetailSectionDescriptor();
    type metadata accessor for SportsManagementDetailModel();
    sub_2187FADB8(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor);
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B060);
    }
  }
}

void sub_218952E24()
{
  if (!qword_27CC0B070)
  {
    type metadata accessor for SportsManagementDetailModel();
    sub_2187FADB8(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B070);
    }
  }
}

void sub_218952EB8()
{
  if (!qword_27CC0B078)
  {
    type metadata accessor for SportsManagementDetailLayoutModel();
    sub_2187FADB8(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B078);
    }
  }
}

void sub_218952F4C()
{
  if (!qword_27CC0B090)
  {
    type metadata accessor for ChannelIssuesModel();
    sub_218953004();
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B090);
    }
  }
}

unint64_t sub_218953004()
{
  result = qword_27CC0C1F0;
  if (!qword_27CC0C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C1F0);
  }

  return result;
}

void sub_218953058()
{
  if (!qword_27CC0F850)
  {
    type metadata accessor for ChannelIssuesLayoutModel();
    sub_218953110();
    sub_2187FADB8(&qword_27CC0F860, type metadata accessor for ChannelIssuesLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0F850);
    }
  }
}

unint64_t sub_218953110()
{
  result = qword_27CC0B0B0;
  if (!qword_27CC0B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0B0);
  }

  return result;
}

void sub_218953164()
{
  if (!qword_27CC0B0C0)
  {
    type metadata accessor for ChannelIssuesModel();
    sub_218953004();
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B0C0);
    }
  }
}

void sub_21895321C()
{
  if (!qword_27CC0B0D0)
  {
    type metadata accessor for ShortcutsModel();
    sub_2189532D4();
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B0D0);
    }
  }
}

unint64_t sub_2189532D4()
{
  result = qword_27CC23B70;
  if (!qword_27CC23B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC23B70);
  }

  return result;
}

void sub_218953328()
{
  if (!qword_27CC0B0E8)
  {
    type metadata accessor for ShortcutsLayoutModel();
    sub_2189533E0();
    sub_2187FADB8(&qword_27CC0B0F8, type metadata accessor for ShortcutsLayoutModel);
    v0 = sub_219BE81B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B0E8);
    }
  }
}

unint64_t sub_2189533E0()
{
  result = qword_27CC0B0F0;
  if (!qword_27CC0B0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B0F0);
  }

  return result;
}

void sub_218953434()
{
  if (!qword_27CC0B100)
  {
    type metadata accessor for ShortcutsModel();
    sub_2189532D4();
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B100);
    }
  }
}

void sub_2189534EC()
{
  if (!qword_27CC0B110)
  {
    type metadata accessor for ShortcutsModel();
    sub_2187FADB8(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B110);
    }
  }
}

void sub_218953580()
{
  if (!qword_27CC0B118)
  {
    type metadata accessor for ShortcutsLayoutModel();
    sub_2187FADB8(&qword_27CC0B0F8, type metadata accessor for ShortcutsLayoutModel);
    v0 = sub_219BE75F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B118);
    }
  }
}

uint64_t sub_218953640(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a4;
    v5 = a3;
    v7 = a2;
    v9 = a1;
    v10 = *v6;
    v11 = *v6 >> 62;
    v17 = a5;
    if (!v11)
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_219BF7214();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v13 = v7 - v9;
  if (__OFSUB__(v7, v9))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = 1 - v13;
  if (__OFSUB__(1, v13))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v11)
  {
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v15, v14);
  result = v15 + v14;
  if (v16)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v17(v9, v7, 1, v5);
}

void sub_218953748()
{
  if (!qword_27CC0C210)
  {
    type metadata accessor for ChannelIssuesModel();
    sub_2187FADB8(&qword_27CC0B0A0, type metadata accessor for ChannelIssuesModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C210);
    }
  }
}

void sub_2189537DC()
{
  if (!qword_27CC0B130)
  {
    type metadata accessor for MagazineCatalogModel();
    sub_2187FADB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B130);
    }
  }
}

void sub_218953870()
{
  if (!qword_280EE5BB0)
  {
    type metadata accessor for MagazineFeedModel(255);
    sub_2187FADB8(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5BB0);
    }
  }
}

void sub_218953904()
{
  if (!qword_280EE57D0)
  {
    type metadata accessor for AudioFeedSectionDescriptor();
    type metadata accessor for AudioFeedModel(255);
    sub_2187FADB8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    sub_2187FADB8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE57D0);
    }
  }
}

void sub_2189539F0()
{
  if (!qword_280EE5D00)
  {
    type metadata accessor for SearchModel(255);
    sub_2187FADB8(&qword_280EDF480, type metadata accessor for SearchModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5D00);
    }
  }
}

void sub_218953A84()
{
  if (!qword_280EE5890)
  {
    type metadata accessor for SearchSectionDescriptor();
    type metadata accessor for SearchModel(255);
    sub_2187FADB8(qword_280EC3630, type metadata accessor for SearchSectionDescriptor);
    sub_2187FADB8(&qword_280EDF480, type metadata accessor for SearchModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5890);
    }
  }
}

void sub_218953B70()
{
  if (!qword_27CC0FA50)
  {
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(255);
    sub_2187FADB8(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_2187FADB8(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FA50);
    }
  }
}

void sub_218953C5C()
{
  if (!qword_27CC0B150)
  {
    type metadata accessor for RecipeBoxSectionDescriptor();
    type metadata accessor for RecipeBoxModel(255);
    sub_2187FADB8(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor);
    sub_2187FADB8(&qword_280EDBED0, type metadata accessor for RecipeBoxModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B150);
    }
  }
}

void sub_218953D48()
{
  if (!qword_280EE5790)
  {
    type metadata accessor for SavedFeedSectionDescriptor();
    type metadata accessor for SavedFeedModel(255);
    sub_2187FADB8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    sub_2187FADB8(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5790);
    }
  }
}

void sub_218953E34()
{
  if (!qword_280EE3668)
  {
    type metadata accessor for SavedFeedSectionDescriptor();
    type metadata accessor for SavedFeedModel(255);
    sub_2187FADB8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor);
    sub_2187FADB8(&unk_280EDBC60, type metadata accessor for SavedFeedModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3668);
    }
  }
}

void sub_218953F20()
{
  if (!qword_27CC0FB10)
  {
    type metadata accessor for MyMagazinesModel();
    sub_2187FADB8(&qword_27CC0B160, type metadata accessor for MyMagazinesModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0FB10);
    }
  }
}

void sub_218953FB4()
{
  if (!qword_27CC0B168)
  {
    type metadata accessor for MyRecipesModel();
    sub_21895406C();
    sub_2187FADB8(&qword_27CC1AE10, type metadata accessor for MyRecipesModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B168);
    }
  }
}

unint64_t sub_21895406C()
{
  result = qword_27CC0B170;
  if (!qword_27CC0B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B170);
  }

  return result;
}

void sub_2189540C0()
{
  if (!qword_27CC0B180)
  {
    type metadata accessor for MyRecipesModel();
    sub_21895406C();
    sub_2187FADB8(&qword_27CC1AE10, type metadata accessor for MyRecipesModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0B180);
    }
  }
}

void sub_218954178()
{
  if (!qword_280EE5970)
  {
    type metadata accessor for HistoryFeedSectionDescriptor();
    type metadata accessor for HistoryFeedModel(255);
    sub_2187FADB8(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_2187FADB8(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5970);
    }
  }
}

void sub_218954264()
{
  if (!qword_280EE3638)
  {
    type metadata accessor for HistoryFeedSectionDescriptor();
    type metadata accessor for HistoryFeedModel(255);
    sub_2187FADB8(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor);
    sub_2187FADB8(&qword_280ED8650, type metadata accessor for HistoryFeedModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE3638);
    }
  }
}

void sub_218954350()
{
  if (!qword_280EE5840)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186F7410();
    sub_2187FADB8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v0 = sub_219BE6A54();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE5840);
    }
  }
}

void sub_218954408()
{
  if (!qword_280EE36C0)
  {
    type metadata accessor for TagFeedModel(255);
    sub_2186F7410();
    sub_2187FADB8(&unk_280EDE820, type metadata accessor for TagFeedModel);
    v0 = sub_219BEB334();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE36C0);
    }
  }
}

void SimpleContainerViewController.__allocating_init(contentViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC7NewsUI229SimpleContainerViewController_contentViewController] = a1;
  v22.receiver = v3;
  v22.super_class = v1;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  [v5 addChildViewController_];
  v6 = [v4 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v6 setAutoresizingMask_];

  v8 = [v4 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v5 view];

  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v9 setFrame_];
  v19 = [v5 view];

  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = [v4 view];
  if (v20)
  {
    v21 = v20;
    [v19 addSubview_];

    [v4 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

void SimpleContainerViewController.init(contentViewController:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7NewsUI229SimpleContainerViewController_contentViewController] = a1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SimpleContainerViewController();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v21, sel_initWithNibName_bundle_, 0, 0);
  [v4 addChildViewController_];
  v5 = [v3 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 setAutoresizingMask_];

  v7 = [v3 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v4 view];

  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v8 setFrame_];
  v18 = [v4 view];

  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = [v3 view];
  if (v19)
  {
    v20 = v19;
    [v18 addSubview_];

    [v3 didMoveToParentViewController_];
    return;
  }

LABEL_11:
  __break(1u);
}

id SimpleContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SimpleContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_219BF53D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SimpleContainerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimpleContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_218954B5C(unint64_t a1)
{
  v41 = sub_219BDB954();
  v2 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v32 - v5;
  v6 = type metadata accessor for WebEmbedShareItem();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = (v2 + 4);
    v2 = MEMORY[0x277D84F90];
    v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v35 = a1 & 0xC000000000000001;
    v36 = i;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v14)
    {
      v17 = MEMORY[0x21CECE0F0](v13, a1, v9);
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }

LABEL_9:
      if ([v17 v16[261]] || (objc_opt_self(), (v19 = swift_dynamicCastObjCClass()) == 0))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = a1;
        v21 = [v19 url];
        v22 = v11;
        v23 = v40;
        sub_219BDB8B4();
        swift_unknownObjectRelease();

        v24 = *v34;
        v25 = v39;
        v26 = v41;
        (*v34)(v39, v23, v41);
        v27 = v37;
        v24(v37, v25, v26);
        v28 = v27;
        v11 = v22;
        sub_218954F3C(v28, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2191F673C(0, v2[2] + 1, 1, v2);
        }

        v30 = v2[2];
        v29 = v2[3];
        a1 = v20;
        v15 = v33;
        v16 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
        if (v30 >= v29 >> 1)
        {
          v2 = sub_2191F673C(v29 > 1, v30 + 1, 1, v2);
        }

        i = v36;
        v2[2] = v30 + 1;
        sub_218954F3C(v11, v2 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30);
        v14 = v35;
      }

      ++v13;
      if (v18 == i)
      {
        return v2;
      }
    }

    if (v13 >= *(v15 + 16))
    {
      goto LABEL_19;
    }

    v17 = *(a1 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v18 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for WebEmbedShareItem()
{
  result = qword_27CC0B198;
  if (!qword_27CC0B198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218954F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedShareItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218954FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21895500C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDB954();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218955088(uint64_t a1)
{
  result = sub_219BDB954();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_21895512C(unsigned __int8 *a1)
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

id sub_218955228@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxArticleDownloads];
  *a2 = result;
  return result;
}

uint64_t sub_21895525C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189552A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21895512C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2189552D8(uint64_t a1)
{
  v3 = type metadata accessor for SearchFilterItem();
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v5, 0);
  v6 = v35;
  v7 = a1 + 56;
  result = sub_219BF7174();
  v9 = result;
  v10 = 0;
  v28 = a1 + 64;
  v29 = v5;
  v30 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v13 = *(a1 + 36);
    v33 = v10;
    v34 = v13;
    v14 = v31;
    sub_218957A08(*(a1 + 48) + *(v32 + 72) * v9, v31);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    sub_21892DEAC();
    result = sub_218957A6C(v14);
    v35 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_21870B65C((v17 > 1), v18 + 1, 1);
      v6 = v35;
    }

    *(v6 + 16) = v18 + 1;
    v19 = v6 + 16 * v18;
    *(v19 + 32) = v15;
    *(v19 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v30;
    v20 = *(v30 + 8 * v12);
    if ((v20 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v9 & 0x3F));
    if (v21)
    {
      v11 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v12 << 6;
      v23 = v12 + 1;
      v24 = (v28 + 8 * v12);
      while (v23 < (v11 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_2187BC250(v9, v34, 0);
          v11 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v9, v34, 0);
    }

LABEL_4:
    v10 = v33 + 1;
    v9 = v11;
    if (v33 + 1 == v29)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_218955598(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v7 = 0;
    while ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x21CECE0F0](v7, v5);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v10 = *(v8 + 16) == a1 && *(v8 + 24) == a2;
      if (v10 || (sub_219BF78F4() & 1) != 0)
      {
        return v8;
      }

      ++v7;
      if (v9 == i)
      {
        return 0;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_2189556A4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v25 = off_282A32368;
      v26 = v3 & 0xC000000000000001;
      v21 = v3 + 32;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v5 = v2 + 56;

      v6 = 0;
      v24 = v4;
      v20 = v3;
      while (v26)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v3);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_30;
        }

LABEL_11:
        if (*(v2 + 16))
        {
          v9 = *(v7 + 16);
          v10 = *(v7 + 24);
          sub_219BF7AA4();

          sub_219BF5524();
          v11 = sub_219BF7AE4();
          v12 = -1 << *(v2 + 32);
          v13 = v11 & ~v12;
          if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v14 = ~v12;
            while (1)
            {
              v15 = (*(v2 + 48) + 16 * v13);
              v16 = *v15 == v9 && v15[1] == v10;
              if (v16 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v17 = 1;
            v4 = v24;
            goto LABEL_25;
          }

LABEL_20:

          v4 = v24;
        }

        if (*(v23 + 56))
        {
          v17 = 0;
        }

        else
        {
          v17 = 2 * (*(v2 + 16) != 0);
        }

LABEL_25:
        v18 = type metadata accessor for RecipeFilterDurationItemViewModel();
        if (v17 == (v25)(v18) || *(v7 + 80) == v17)
        {

          if (v6 == v4)
          {
          }
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_2189579C0(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
          sub_219BDC1F4();

          v4 = v24;

          v3 = v20;
          if (v6 == v24)
          {
          }
        }
      }

      if (v6 >= *(v22 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v21 + 8 * v6);

      v8 = __OFADD__(v6++, 1);
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      result = sub_219BF7214();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2189559D0(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    goto LABEL_32;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v25 = off_282A613B8;
      v26 = v3 & 0xC000000000000001;
      v21 = v3 + 32;
      v22 = v3 & 0xFFFFFFFFFFFFFF8;
      v5 = v2 + 56;

      v6 = 0;
      v24 = v4;
      v20 = v3;
      while (v26)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v3);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_30;
        }

LABEL_11:
        if (*(v2 + 16))
        {
          v9 = *(v7 + 16);
          v10 = *(v7 + 24);
          sub_219BF7AA4();

          sub_219BF5524();
          v11 = sub_219BF7AE4();
          v12 = -1 << *(v2 + 32);
          v13 = v11 & ~v12;
          if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v14 = ~v12;
            while (1)
            {
              v15 = (*(v2 + 48) + 16 * v13);
              v16 = *v15 == v9 && v15[1] == v10;
              if (v16 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_20;
              }
            }

            v17 = 1;
            v4 = v24;
            goto LABEL_25;
          }

LABEL_20:

          v4 = v24;
        }

        if (*(v23 + 56))
        {
          v17 = 0;
        }

        else
        {
          v17 = 2 * (*(v2 + 16) != 0);
        }

LABEL_25:
        v18 = type metadata accessor for RecipeFilterTagCapsuleViewModel();
        if (v17 == (v25)(v18) || *(v7 + 48) == v17)
        {

          if (v6 == v4)
          {
          }
        }

        else
        {
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          sub_2189579C0(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel);
          sub_219BDC1F4();

          v4 = v24;

          v3 = v20;
          if (v6 == v24)
          {
          }
        }
      }

      if (v6 >= *(v22 + 16))
      {
        goto LABEL_31;
      }

      v7 = *(v21 + 8 * v6);

      v8 = __OFADD__(v6++, 1);
      if (!v8)
      {
        goto LABEL_11;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      result = sub_219BF7214();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_218955CFC@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4)
  {
    v3 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  if (v4 > 1)
  {
    v3 = *v1 & 0x3FFFFFFFFFFFFFFFLL;
  }

  v5 = *(v3 + 16);

  *a1 = v5;
  a1[1] = result;
  return result;
}

uint64_t sub_218955D4C()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  swift_beginAccess();
}

uint64_t sub_218955E04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_218955EC4()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC1F4();
}

uint64_t sub_218955F90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_218955FF8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  *a1 = *(v1 + 24);
}

uint64_t sub_2189560A4()
{
  sub_218956A74();
  swift_getKeyPath();
  v2 = v0;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    v2 = v0;
    sub_219BDC204();

    v2 = *(v0 + 24);

    sub_219A4FDAC(&v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2189561C8(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  v3 = *(v1 + 24);

  v4 = sub_21931C79C(v2, v3);

  if ((v4 & 1) == 0)
  {
    sub_2189560A4();
  }
}

uint64_t sub_2189562A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  *a2 = *(v3 + 24);
}

uint64_t sub_218956354(uint64_t *a1)
{
  v2 = *a1;

  return sub_218956390(&v2);
}

uint64_t sub_218956390(uint64_t *a1)
{
  v1 = *a1;

  v3 = sub_21931C79C(v2, v1);

  if (v3)
  {
    v6 = v1;
    return sub_2189561C8(&v6);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
    sub_219BDC1F4();
  }
}

uint64_t sub_2189564C4(uint64_t a1, uint64_t a2)
{
  v3 = a2;

  return sub_2189561C8(&v3);
}

uint64_t sub_218956508()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  return *(v0 + 32);
}

uint64_t sub_2189565AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_218956690(uint64_t result, char a2)
{
  if ((*(v2 + 40) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 32) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 32) = result;
    *(v2 + 40) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC1F4();
}

uint64_t sub_2189567C4()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  return *(v0 + 48);
}

uint64_t sub_218956868(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC1F4();
}

uint64_t sub_21895699C(uint64_t result, uint64_t a2, char a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3 & 1;
  return result;
}

uint64_t sub_2189569AC()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_218956A74()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  v2 = *(v0 + 24);
  swift_getKeyPath();

  sub_219BDC204();

  swift_getKeyPath();
  sub_219BDC224();

  swift_beginAccess();
  sub_218956BEC(&v2);
  swift_endAccess();

  swift_getKeyPath();
  sub_219BDC214();
}

uint64_t *sub_218956BEC(uint64_t *result)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = *result;
    v4 = (*v1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 >> 62;
      v8 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      v9 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      if (v6 >> 62)
      {
        v10 = v8;
      }

      else
      {
        v10 = v5;
      }

      if (v7 <= 1)
      {
        v9 = v10;
      }

      v11 = *(v9 + 16);
      v12 = *(v9 + 24);

      v13 = *(v3 + 16);

      if (v13 && (v14 = sub_21870F700(v11, v12), (v15 & 1) != 0))
      {
        v16 = *(*(v3 + 56) + 24 * v14 + 16);
      }

      else
      {
        v16 = MEMORY[0x277D84FA0];
      }

      v17 = sub_2189552D8(v16);

      v18 = sub_218845F78(v17);

      if (v7)
      {

        sub_2189559D0(v18);
      }

      else
      {
        sub_2189556A4(v18);
      }

      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_218956D40(uint64_t a1)
{
  v3[1] = a1;
  swift_getKeyPath();
  v3[0] = v1;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);

  sub_219BDC204();

  v3[0] = *(v1 + 24);

  sub_218956BEC(v3);

  swift_getKeyPath();
  v3[0] = v1;
  sub_219BDC1F4();

  swift_getKeyPath();
  v3[0] = v1;
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    v3[0] = v1;
    sub_219BDC204();

    v3[0] = *(v1 + 24);

    sub_219A4FDAC(v3);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218956F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v30 = a3;
  v34 = a2;
  v35 = a1;
  v29 = type metadata accessor for SearchFilterItem();
  MEMORY[0x28223BE20](v29);
  v33 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtC7NewsUI221RecipeFilterViewModel___observationRegistrar;
  v39 = v6;
  v31 = sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  v32 = v10;
  sub_219BDC204();

  swift_beginAccess();
  v11 = *(v6 + 16);
  v12 = *(v11 + 16);

  if (!v12)
  {
  }

  v14 = 0;
  while (1)
  {
    if (v14 >= *(v11 + 16))
    {
      __break(1u);
      return result;
    }

    v15 = *(v11 + 8 * v14++ + 32);
    v16 = v15 >> 62;
    v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    if (!(v15 >> 62))
    {
      v17 = v15;
    }

    if (v16 > 1)
    {
      v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);

    if (v19 == a4 && v18 == a5)
    {
      break;
    }

    v21 = sub_219BF78F4();

    if (v21)
    {
      goto LABEL_16;
    }

    if (v12 == v14)
    {
    }
  }

LABEL_16:

  v22 = v34;
  if (v16)
  {
    v15 &= 0x3FFFFFFFFFFFFFFFuLL;

    v24 = sub_218955598(v35, v22);

    if (v24)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v23 = sub_218955598(v35, v34);
    if (v23)
    {
      v24 = v23;
LABEL_20:
      v26 = *(v24 + 32);
      v25 = *(v24 + 40);

      v27 = v33;
      sub_219BDBCB4();
      *(v27 + 16) = v35;
      *(v27 + 24) = v22;
      *(v27 + 32) = v30 & 1;
      *v27 = v26;
      *(v27 + 8) = v25;
      v38 = *(v15 + 56);
      swift_getKeyPath();
      v37 = v6;
      sub_21892DEAC();
      sub_219BDC204();

      v37 = v6;
      swift_getKeyPath();
      sub_219BDC224();

      v36 = *(v6 + 24);

      RecipeFilterSelection.updateSelectionByTogglingFilter(sectionID:searchFilterItem:selectionBehavior:)(a4, a5, v27, &v38);
      sub_2189561C8(&v36);
      v37 = v6;
      swift_getKeyPath();
      sub_219BDC214();

      return sub_218957A6C(v27);
    }
  }
}

uint64_t sub_2189572B8()
{
  swift_getKeyPath();
  v2 = v0;
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    v2 = v0;
    sub_219BDC204();

    v2 = *(v0 + 24);

    sub_219A4FCD8(&v2);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2189573D8()
{
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel);
  sub_219BDC204();

  swift_getKeyPath();
  sub_219BDC224();

  v2 = sub_2194AE414(MEMORY[0x277D84F90]);
  sub_2189561C8(&v2);
  v2 = v0;
  swift_getKeyPath();
  sub_219BDC214();
}

uint64_t sub_2189574F8()
{

  sub_218774F78(v0 + 64);
  v1 = OBJC_IVAR____TtC7NewsUI221RecipeFilterViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterViewModel()
{
  result = qword_27CC0B218;
  if (!qword_27CC0B218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218957600()
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

uint64_t sub_2189576C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218957720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_2189577CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel);
  sub_219BDC204();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_21895789C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2189579C0(&qword_27CC0B238, type metadata accessor for RecipeFilterTagCapsuleViewModel);
  sub_219BDC204();

  *a2 = *(v3 + 48);
  return result;
}

void sub_21895796C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 32) = *(v0 + 24);
  *(v1 + 40) = v2;
}

uint64_t sub_2189579C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_218957A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFilterItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218957A6C(uint64_t a1)
{
  v2 = type metadata accessor for SearchFilterItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218957AC8()
{
  v2 = *(v0 + 24);

  return sub_2189561C8(&v2);
}

void sub_218957B0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

uint64_t sub_218957B38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED49A8);
  result = sub_219BE1E34();
  if (!v81)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagImageApplier();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE48E8);
  result = sub_219BE1E34();
  if (!v79)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9700);
  result = sub_219BE1E34();
  if (!v77)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBF078);
  result = sub_219BE1E34();
  if (!v75)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EABF20);
  result = sub_219BE1E34();
  if (!v73)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v60 = v5;
  v61 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  v59 = result;
  if (result)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
    v58 = v49;
    MEMORY[0x28223BE20](v6);
    v8 = (v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
    v57 = v49;
    MEMORY[0x28223BE20](v10);
    v12 = (v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v56 = v49;
    MEMORY[0x28223BE20](v14);
    v16 = (v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v55 = v49;
    MEMORY[0x28223BE20](v18);
    v20 = (v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20);
    v22 = *v8;
    v23 = *v12;
    v24 = *v16;
    v25 = *v20;
    v26 = type metadata accessor for TagViewStyler();
    v71[3] = v26;
    v71[4] = &off_282A770F0;
    v71[0] = v22;
    v53 = type metadata accessor for AccessoryButtonRenderer();
    v69 = v53;
    v70 = &off_282A94AE8;
    v68[0] = v23;
    v52 = type metadata accessor for DislikeButtonRenderer();
    v66 = v52;
    v67 = &off_282A2FA28;
    v65[0] = v24;
    v50 = type metadata accessor for NotificationSwitchRenderer();
    v63 = v50;
    v64 = &off_282A38F48;
    v62[0] = v25;
    v54 = type metadata accessor for TagViewRenderer();
    v27 = swift_allocObject();
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v71, v26);
    v51 = v49;
    MEMORY[0x28223BE20](v28);
    v30 = (v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
    v49[1] = v49;
    MEMORY[0x28223BE20](v32);
    v34 = (v49 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    MEMORY[0x28223BE20](v36);
    v38 = (v49 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    MEMORY[0x28223BE20](v40);
    v42 = (v49 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v43 + 16))(v42);
    v44 = *v30;
    v45 = *v34;
    v46 = *v38;
    v47 = *v42;
    v27[10] = v26;
    v27[11] = &off_282A770F0;
    v27[7] = v44;
    v27[16] = v53;
    v27[17] = &off_282A94AE8;
    v27[21] = v52;
    v27[22] = &off_282A2FA28;
    v27[18] = v46;
    v27[26] = v50;
    v27[27] = &off_282A38F48;
    v27[23] = v47;
    v27[12] = v60;
    v27[13] = v45;
    sub_2186CB1F0(&v78, (v27 + 2));
    v27[28] = v59;
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v76);
    result = __swift_destroy_boxed_opaque_existential_1(v80);
    v48 = v61;
    v61[3] = v54;
    v48[4] = &off_282A46F20;
    *v48 = v27;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21895843C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED49A8);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for TagViewStyler();
    v17[3] = v9;
    v17[4] = &off_282A770F0;
    v17[0] = v8;
    v10 = type metadata accessor for TagViewLayoutAttributesFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A770F0;
    v11[2] = v16;
    sub_21895F6F8(0, &qword_280EE7100);
    swift_allocObject();
    v11[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A3D208;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218958698@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC8790);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TagViewStyler();
    v6 = swift_allocObject();
    v6[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v6[3] = result;
    v6[4] = v4;
    a2[3] = v5;
    a2[4] = &off_282A770F0;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218958790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0);
  result = sub_219BE1DF4();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, qword_280EC8790);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for TagImageApplier();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189588C4(void *a1, unint64_t *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0);
  result = sub_219BE1DF4();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, a2);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for TagImageApplier();
      v5 = swift_allocObject();
      sub_2186CB1F0(&v7, v5 + 16);
      *(v5 + 56) = v6;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218958A50@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0);
  result = sub_219BE1E24();
  if (result)
  {
    a2(0);
    swift_allocObject();
    sub_218754C0C(a3, a4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5010);
    result = sub_219BE1E34();
    if (v13)
    {
      v11 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v12 = MEMORY[0x277D6D2B0];
      a5[3] = v11;
      a5[4] = v12;
      *a5 = result;
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

uint64_t sub_218958BB8()
{
  type metadata accessor for FeedNavImageStyler();

  return swift_allocObject();
}

uint64_t sub_218958BEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for SeeMoreButtonStyler();
    v17[3] = v9;
    v17[4] = &off_282A5FD00;
    v17[0] = v8;
    v10 = type metadata accessor for SeeMoreButtonRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A5FD00;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A6C9A0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218958E58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8);
  result = sub_219BE1E34();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0);
    result = sub_219BE1E34();
    if (v38)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v29[1] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v29[0] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for SeeMoreButtonRenderer();
      v36[3] = v15;
      v36[4] = &off_282A6C9A0;
      v36[0] = v13;
      v16 = type metadata accessor for TitleViewStyler();
      v34 = v16;
      v35 = &off_282A85B98;
      v33[0] = v14;
      v17 = type metadata accessor for TitleViewRenderer();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v36, v15);
      MEMORY[0x28223BE20](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x28223BE20](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[10] = v15;
      v18[11] = &off_282A6C9A0;
      v18[7] = v27;
      v32 = &off_282A85B98;
      v31 = v16;
      *&v30 = v28;
      sub_2186CB1F0(&v30, (v18 + 2));
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      a2[3] = v17;
      a2[4] = &off_282A6AF80;
      *a2 = v18;
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

uint64_t sub_2189592AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD0D8);
  result = sub_219BE1E34();
  if (v40)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0);
    result = sub_219BE1DF4();
    if (v38)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v29[1] = v29;
      MEMORY[0x28223BE20](v5);
      v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v29[0] = v29;
      MEMORY[0x28223BE20](v9);
      v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v7;
      v14 = *v11;
      v15 = type metadata accessor for SeeMoreButtonRenderer();
      v36[3] = v15;
      v36[4] = &off_282A6C9A0;
      v36[0] = v13;
      v16 = type metadata accessor for TitleViewStyler();
      v34 = v16;
      v35 = &off_282A85B98;
      v33[0] = v14;
      v17 = type metadata accessor for TitleViewRenderer();
      v18 = swift_allocObject();
      v19 = __swift_mutable_project_boxed_opaque_existential_1(v36, v15);
      MEMORY[0x28223BE20](v19);
      v21 = (v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      MEMORY[0x28223BE20](v23);
      v25 = (v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v21;
      v28 = *v25;
      v18[10] = v15;
      v18[11] = &off_282A6C9A0;
      v18[7] = v27;
      v32 = &off_282A85B98;
      v31 = v16;
      *&v30 = v28;
      sub_2186CB1F0(&v30, (v18 + 2));
      __swift_destroy_boxed_opaque_existential_1(v33);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v37);
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      a2[3] = v17;
      a2[4] = &off_282A6AF80;
      *a2 = v18;
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

id sub_218959738@<X0>(double *a1@<X1>, void *a2@<X8>, double a3@<D0>)
{
  v4 = [objc_opt_self() systemFontOfSize:a3 weight:*a1];
  v5 = type metadata accessor for TitleViewStyler();
  v6 = swift_allocObject();
  v7 = *MEMORY[0x277D76988];
  v6[2] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6[3] = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  result = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6[4] = result;
  v6[5] = v4;
  a2[3] = v5;
  a2[4] = &off_282A85B98;
  *a2 = v6;
  return result;
}

uint64_t sub_218959840@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578);
  result = sub_219BE1E34();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0);
    result = sub_219BE1E34();
    if (v15)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v5);
      v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x28223BE20](v9);
      v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v11);
      v13 = sub_21895ED84(*v7, *v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = type metadata accessor for TitleViewLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_282A72438;
      *a2 = v13;
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

uint64_t sub_218959A90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3578);
  result = sub_219BE1E34();
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280ECFCF0);
    result = sub_219BE1DF4();
    if (v15)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      MEMORY[0x28223BE20](v5);
      v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v8 + 16))(v7);
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
      MEMORY[0x28223BE20](v9);
      v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v12 + 16))(v11);
      v13 = sub_21895ED84(*v7, *v11);
      __swift_destroy_boxed_opaque_existential_1(v14);
      __swift_destroy_boxed_opaque_existential_1(v16);
      result = type metadata accessor for TitleViewLayoutAttributesFactory();
      a2[3] = result;
      a2[4] = &off_282A72438;
      *a2 = v13;
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

uint64_t sub_218959CF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB09B0);
  result = sub_219BE1E34();
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC9540);
    result = sub_219BE1DF4();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      MEMORY[0x28223BE20](v5);
      v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7);
      v9 = *v7;
      v10 = type metadata accessor for TitleViewRenderer();
      v19[3] = v10;
      v19[4] = &off_282A6AF80;
      v19[0] = v9;
      v11 = type metadata accessor for FollowingHeaderViewRenderer();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
      MEMORY[0x28223BE20](v13);
      v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15);
      v17 = *v15;
      v12[10] = v10;
      v12[11] = &off_282A6AF80;
      v12[7] = v17;
      sub_2186CB1F0(&v22, (v12 + 2));
      __swift_destroy_boxed_opaque_existential_1(v19);
      result = __swift_destroy_boxed_opaque_existential_1(v20);
      a2[3] = v11;
      a2[4] = &off_282A60170;
      *a2 = v12;
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

uint64_t sub_218959F9C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810);
  result = sub_219BE1E34();
  if (v6)
  {
    a2[3] = &type metadata for FollowingHeaderViewStyler;
    a2[4] = &off_282A40180;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_2186CB1F0(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895A054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB09C0);
  result = sub_219BE1E34();
  if (v13)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    v10 = &type metadata for FollowingFooterViewStyler;
    v11 = &off_282A3DD50;
    v4 = type metadata accessor for FollowingFooterViewRenderer();
    v5 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for FollowingFooterViewStyler);
    v7 = &type metadata for FollowingFooterViewStyler;
    v8 = &off_282A3DD50;
    sub_2186CB1F0(&v6, v5 + 16);
    __swift_destroy_boxed_opaque_existential_1(v9);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    a2[3] = v4;
    a2[4] = &off_282A42768;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895A164(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB09C0);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v4, v5);
    v3[3] = &type metadata for FollowingFooterViewStyler;
    v3[4] = &off_282A3DD50;
    type metadata accessor for FollowingFooterViewLayoutAttributesFactory();
    v2 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v3, &type metadata for FollowingFooterViewStyler);
    v2[5] = &type metadata for FollowingFooterViewStyler;
    v2[6] = &off_282A3DD50;
    sub_21895F6F8(0, &qword_280EE70E8);
    swift_allocObject();
    v2[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v3);
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895A284@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFA08);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for AccessoryButtonStyler();
    v17[3] = v9;
    v17[4] = &off_282A6E380;
    v17[0] = v8;
    v10 = type metadata accessor for AccessoryButtonRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A6E380;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A94AE8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21895A4F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC5670);
  result = sub_219BE1E34();
  if (v19)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    MEMORY[0x28223BE20](v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for DislikeButtonStyler();
    v17[3] = v9;
    v17[4] = &off_282A4C668;
    v17[0] = v8;
    v10 = type metadata accessor for DislikeButtonRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v17, v9);
    MEMORY[0x28223BE20](v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_282A4C668;
    v11[2] = v16;
    __swift_destroy_boxed_opaque_existential_1(v17);
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    a2[3] = v10;
    a2[4] = &off_282A2FA28;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21895A71C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for MiniMastheadModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_21895F444(0, &qword_280ED5BB8, type metadata accessor for MiniMastheadModel);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  v59 = v4;
  result = (*(v4 + 48))(v8, 1, v3);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3BC8);
  result = sub_219BE1E34();
  if (!v83)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v58 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E94548);
  result = sub_219BE1E34();
  if (!v81)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8();
  v69 = sub_219BE1E24();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v67 = result;
  v68 = v8;
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430);
  result = sub_219BE1E24();
  v66 = result;
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v10 = __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
  v64 = &v56;
  MEMORY[0x28223BE20](v10);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v63 = &v56;
  MEMORY[0x28223BE20](v14);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = *v12;
  v19 = *v16;
  v20 = type metadata accessor for MiniMastheadViewRenderer();
  v78 = v20;
  v79 = &off_282A4A128;
  v77[0] = v18;
  v21 = type metadata accessor for MiniMastheadViewLayoutAttributesFactory();
  v75 = v21;
  v76 = &off_282A84320;
  v74[0] = v19;
  v22 = type metadata accessor for MiniMastheadViewProvider();
  v23 = objc_allocWithZone(v22);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v61 = &v56;
  MEMORY[0x28223BE20](v24);
  v26 = (&v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
  v60 = &v56;
  MEMORY[0x28223BE20](v28);
  v30 = (&v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = *v26;
  v33 = *v30;
  v73[3] = v20;
  v73[4] = &off_282A4A128;
  v72[4] = &off_282A84320;
  v73[0] = v32;
  v72[3] = v21;
  v72[0] = v33;
  *&v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v34 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  *&v23[v34] = [objc_allocWithZone(type metadata accessor for MiniMastheadView()) initWithFrame_];
  v35 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  *&v23[v35] = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  *&v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView] = 0;
  v36 = v68;
  sub_21895F498(v68, &v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model], type metadata accessor for MiniMastheadModel);
  *&v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_refreshStateMachine] = v69;
  sub_218718690(v73, &v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_renderer]);
  sub_218718690(v72, &v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_layoutAttributesFactory]);
  *&v23[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability] = v66;
  v71.receiver = v23;
  v71.super_class = v22;
  v62 = v22;

  swift_unknownObjectRetain();
  v37 = objc_msgSendSuper2(&v71, sel_init);
  v38 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  v39 = *(*&v37[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v40 = v37;
  [v39 setStyler_];
  [*(*&v37[v38] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) setDelegate_];
  v41 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  [*&v40[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView] setStyler_];
  [*&v40[v41] setDelegate_];
  [v67 addObserver_];

  v42 = *(*&v37[v38] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v43 = sub_219AFC4A4(v36, 1);
  v44 = objc_opt_self();
  v45 = [v44 feedTitleViewUpdateForAttributedText:v43 forType:1];

  [v42 applyFeedTitleViewUpdate:v45 animation:3];
  v46 = *&v40[v41];
  v47 = sub_219AFC4A4(v36, 2);
  v48 = [v44 feedTitleViewUpdateForAttributedText:v47 forType:0];

  v49 = v69;
  [v46 applyFeedTitleViewUpdate:v48 animation:3];

  if (v49)
  {
    LOBYTE(v70[0]) = 2;
    sub_218802F30();
    swift_allocObject();

    sub_219BE2A64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v70[0]) = 3;
    swift_allocObject();

    sub_219BE2A64();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v70[0]) = 0;
    swift_allocObject();

    sub_219BE2A64();
    v50 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_218718690(v73, v70);
    v51 = v68;
    v52 = v57;
    sub_21895F498(v68, v57, type metadata accessor for MiniMastheadModel);
    v53 = (*(v59 + 80) + 64) & ~*(v59 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    sub_2186CB1F0(v70, v54 + 24);
    sub_21895F5B8(v52, v54 + v53);
    sub_219BE2A84();

    sub_219BE1E64();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_21895F500(v51, type metadata accessor for MiniMastheadModel);
  }

  else
  {
    sub_21895F500(v68, type metadata accessor for MiniMastheadModel);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  v55 = v65;
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v55[3] = v62;
  result = sub_218754C0C(&qword_280EC1060, type metadata accessor for MiniMastheadViewProvider);
  v55[4] = result;
  *v55 = v40;
  return result;
}

uint64_t sub_21895B2CC(void *a1)
{
  sub_21895F444(0, &qword_27CC0B2C8, type metadata accessor for NameLogoMastheadModel);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for NameLogoMastheadModel();
  sub_219BE1E34();
  result = (*(*(v5 - 8) + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA5C00);
  result = sub_219BE1E34();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E935C0);
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
    v15 = sub_21895F13C(v4, *v9, *v13);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}