uint64_t sub_22C7E28BC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v4 >= 1)
  {
    v7 = result;
    v8 = *(a3 + 16);
    if ((v8 - v4) / 2 <= result)
    {
      v16 = a2;
      v17 = __OFSUB__(v8, a2);
      v18 = v8 - a2;
      if (v17)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v18 >= MEMORY[0x2318B0640](*a4 & 0x3F) / 3)
      {
        sub_22C9030FC();
        v33 = sub_22C90313C();
        if ((v34 & 1) == 0 && v33 >= v16)
        {
          v17 = __OFSUB__(v33, v4);
          result = v33 - v4;
          if (v17)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_22C90314C();
        }

        return sub_22C90315C();
      }

      result = sub_22C8A54C4(v16, a3);
      v20 = v19;
      v22 = v21;
      v24 = v23 >> 1;
      while (v22 != v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_51;
        }

        v25 = (v20 + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = *a4;
        sub_22C90B62C();

        sub_22C909FFC();
        result = sub_22C90B66C();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_22C9030FC())
        {
          while (1)
          {
            v29 = sub_22C90313C();
            if ((v30 & 1) == 0 && v29 == v16)
            {
              break;
            }

            sub_22C90315C();
          }
        }

        result = v16 - v4;
        if (__OFSUB__(v16, v4))
        {
          goto LABEL_53;
        }

        sub_22C90314C();

        v17 = __OFADD__(v16++, 1);
        if (v17)
        {
          goto LABEL_54;
        }

        ++v22;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x2318B0640](*a4 & 0x3F);
      if (result / 3 > v7)
      {
        if (v7 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v8 < v7)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v7)
          {

            goto LABEL_40;
          }

          v10 = (a3 + 32 + 16 * i);
          v11 = *v10;
          v12 = v10[1];
          v13 = *a4;
          sub_22C90B62C();

          sub_22C909FFC();
          result = sub_22C90B66C();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_22C9030FC())
          {
            while (1)
            {
              v14 = sub_22C90313C();
              if ((v15 & 1) == 0 && v14 == i)
              {
                break;
              }

              sub_22C90315C();
            }
          }

          result = i + v4;
          if (__OFADD__(i, v4))
          {
            goto LABEL_50;
          }

          sub_22C90314C();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_22C9030FC();
      v31 = sub_22C90313C();
      if ((v32 & 1) == 0 && v31 < v7)
      {
        v17 = __OFADD__(v31, v4);
        result = v31 + v4;
        if (v17)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_22C90314C();
      }

      result = sub_22C90315C();
LABEL_40:
      v35 = a4[1];
      if (__OFSUB__(v35 >> 6, v4))
      {
        goto LABEL_59;
      }

      v36 = 1 << *a4;
      v17 = __OFSUB__(v36, 1);
      v37 = v36 - 1;
      if (v17)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v38 = (v37 & (((v35 >> 6) - v4) >> 63)) + (v35 >> 6) - v4;
      if (v38 < v37)
      {
        v37 = 0;
      }

      a4[1] = a4[1] & 0x3F | ((v38 - v37) << 6);
    }
  }

  return result;
}

uint64_t sub_22C7E2D0C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = *(a4 + 16);
    if (!v6)
    {
LABEL_5:
      *(v5 + 8) = a3;
      return result;
    }

    result = type metadata accessor for RetrievedToolWithAttribution();
    if (v6 <= a3)
    {
      v7 = *(*(result - 8) + 80);
      result = swift_arrayInitWithCopy();
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E2DBC()
{
  v1 = j__malloc_size(v0);
  v2 = type metadata accessor for RetrievedToolWithAttribution();
  v4 = *(v2 - 8);
  result = v2 - 8;
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  if (v6)
  {
    v7 = v1 - ((v5 + 40) & ~v5);
    if (v6 != -1 || v7 != 0x8000000000000000)
    {
      return v7 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E2E58()
{
  v1 = *v0;
  v2 = type metadata accessor for RetrievedToolWithAttribution();
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  sub_22C3A5908(&qword_27D9C0290, &qword_22C926998);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_22C7E2F50(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

void sub_22C7E2F50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for RetrievedToolWithAttribution() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *(v8 + 72) * v4;
  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_22C7E3060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_22C3BDA38();
  a17 = v19;
  a18 = v20;
  sub_22C369A48();
  v21 = sub_22C90952C();
  v22 = sub_22C369824(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C36CA88();
  v32 = sub_22C3A5908(v30, v31);
  sub_22C369914(v32);
  v34 = *(v33 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_22C4E719C(v18, &a9 - v36, &qword_27D9BB0C0, &qword_22C90D960);
  sub_22C36D0A8(v37, 1, v21);
  if (v38)
  {
    sub_22C90B64C();
  }

  else
  {
    v39 = *(v24 + 32);
    v40 = sub_22C37335C();
    v41(v40);
    sub_22C90B64C();
    sub_22C381820();
    sub_22C7E4310(v42, v43);
    sub_22C388DAC();
    sub_22C909F8C();
    (*(v24 + 8))(v29, v21);
  }

  sub_22C3BDA24();
}

uint64_t sub_22C7E31E0(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  while (1)
  {
    v7 = v6 <= a2;
    if (a3 > 0.0)
    {
      v7 = v6 >= a2;
    }

    if (v7)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
      goto LABEL_9;
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      break;
    }

    v6 = a1 + v5 * a3;
LABEL_9:
    v8 = __OFADD__(result++, 1);
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C7E324C(double a1, double a2, double a3)
{
  v6 = sub_22C7E31E0(a1, a2, a3);
  v7 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      *(v8 + 2) = v7;
      *(v8 + 3) = 2 * ((v9 - 32) / 8);
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v10 = *(v8 + 3);

  if (v7 < 0)
  {
    goto LABEL_52;
  }

  v12 = v8 + 4;
  v13 = v10 >> 1;
  v14 = 0;
  v15 = 0;
  if (!v7)
  {
    v16 = a1;
    goto LABEL_20;
  }

  v13 -= v7;
  v16 = a1;
  do
  {
    v17 = v16;
    v18 = v16 <= a2;
    if (a3 > 0.0)
    {
      v18 = v16 >= a2;
    }

    if (v18)
    {
      if (!(v14 & 1 | (v16 != a2)))
      {
        v14 = 1;
        goto LABEL_17;
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    v19 = __OFADD__(v15++, 1);
    if (v19)
    {
      goto LABEL_51;
    }

    v16 = a1 + v15 * a3;
LABEL_17:
    *v12++ = v17;
    --v7;
  }

  while (v7);
  while (1)
  {
LABEL_20:
    v20 = v16 <= a2;
    if (a3 > 0.0)
    {
      v20 = v16 >= a2;
    }

    if (!v20)
    {
      v19 = __OFADD__(v15++, 1);
      if (v19)
      {
        goto LABEL_48;
      }

      v21 = a1 + v15 * a3;
      if (v13)
      {
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    if ((v16 != a2) | v14 & 1)
    {
      break;
    }

    v14 = 1;
    v21 = v16;
    if (v13)
    {
      v21 = v16;
      goto LABEL_41;
    }

LABEL_28:
    v22 = *(v8 + 3);
    if (((v22 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    sub_22C3A5908(&qword_27D9BB6A0, &qword_22C90FAB0);
    v25 = swift_allocObject();
    v26 = (j__malloc_size(v25) - 32) / 8;
    *(v25 + 2) = v24;
    *(v25 + 3) = 2 * v26;
    v27 = (v25 + 4);
    v28 = *(v8 + 3);
    v29 = v28 >> 1;
    if (*(v8 + 2))
    {
      if (v25 != v8 || v27 >= &v8[v29 + 4])
      {
        memmove(v25 + 4, v8 + 4, 8 * v29);
      }

      v8[2] = 0.0;
    }

    v12 = (v27 + 8 * v29);
    v13 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

    v8 = v25;
LABEL_41:
    v19 = __OFSUB__(v13--, 1);
    if (v19)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    *v12++ = v16;
    v16 = v21;
  }

  v31 = *(v8 + 3);
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v19 = __OFSUB__(v32, v13);
    v33 = v32 - v13;
    if (v19)
    {
      goto LABEL_53;
    }

    *(v8 + 2) = v33;
  }

  return v8;
}

void sub_22C7E34FC()
{
  sub_22C36BA7C();
  v56 = v0;
  v2 = v1;
  v4 = v3;
  v55 = sub_22C3A5908(&qword_27D9BC048, &qword_22C91AC70);
  v5 = sub_22C36985C(v55);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C3698E4();
  v54 = v8;
  sub_22C369930();
  MEMORY[0x28223BE20](v9);
  sub_22C36BA64();
  v53 = v10;
  v57 = sub_22C3A5908(&qword_27D9BDBB0, &qword_22C91AC88);
  v11 = sub_22C369824(v57);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  sub_22C3698E4();
  v52 = v14;
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  sub_22C36BA64();
  v58 = v17;
  v59 = v16;
  v18 = 0;
  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v48 = v2;
  v49 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = MEMORY[0x277D84F90] + v49;
  v50 = v4;
  v51 = v2 + 32;
  while (1)
  {
    if (v56 == v19 || v19 >= *(v2 + 16))
    {
      v45 = v20[3];
      if (v45 >= 2)
      {
        v46 = v45 >> 1;
        v44 = __OFSUB__(v46, v18);
        v47 = v46 - v18;
        if (v44)
        {
          goto LABEL_39;
        }

        v20[2] = v47;
      }

      sub_22C36CC48();
      return;
    }

    if (v19 >= *(v4 + 16))
    {
      break;
    }

    v22 = *(v55 + 48);
    v23 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
    sub_22C3699B8(v23);
    v25 = v24;
    v27 = v26;
    v28 = v4 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v29 = *(v27 + 72);
    sub_22C37B7CC();
    sub_22C7E4208(v30, v53);
    *(v53 + v22) = *(v51 + 8 * v19);
    sub_22C4E7208(v53, v54, &qword_27D9BC048, &qword_22C91AC70);
    v31 = *(v55 + 48);
    v32 = *(v57 + 48);
    v33 = sub_22C37E1CC();
    sub_22C7E4260(v33, v52);
    *(v52 + v32) = *(v54 + v31);
    sub_22C4E7208(v52, v59, &qword_27D9BDBB0, &qword_22C91AC88);
    if (v18)
    {

      v34 = v20;
    }

    else
    {
      v35 = v20[3];
      if (((v35 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v36 = v35 & 0xFFFFFFFFFFFFFFFELL;
      if (v36 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v36;
      }

      sub_22C3A5908(&qword_27D9C02C0, &qword_22C926A00);
      v38 = *(v58 + 72);
      v34 = swift_allocObject();
      v39 = j__malloc_size(v34);
      if (!v38)
      {
        goto LABEL_37;
      }

      v40 = v39 - v49;
      if (v39 - v49 == 0x8000000000000000 && v38 == -1)
      {
        goto LABEL_38;
      }

      v34[2] = v37;
      v34[3] = 2 * (v40 / v38);
      v42 = v20[3] >> 1;
      v21 = v34 + v49 + v42 * v38;
      v18 = ((v40 / v38) & 0x7FFFFFFFFFFFFFFFLL) - v42;
      if (v20[2])
      {
        if (v34 < v20 || v34 + v49 >= v20 + v49 + v42 * v38)
        {

          sub_22C36ECB4();
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {

          if (v34 != v20)
          {
            sub_22C36ECB4();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v20[2] = 0;
      }

      else
      {
      }

      v2 = v48;
    }

    v44 = __OFSUB__(v18--, 1);
    if (v44)
    {
      goto LABEL_35;
    }

    sub_22C4E7208(v59, v21, &qword_27D9BDBB0, &qword_22C91AC88);
    v21 += *(v58 + 72);
    ++v19;
    v20 = v34;
    v4 = v50;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_22C7E38E4(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = *(result + 16);
  v4 = result + 32;
  v5 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i += 40)
  {
    if (v3 == v2)
    {
      v19 = v5[3];
      if (v19 >= 2)
      {
        v20 = v19 >> 1;
        v16 = __OFSUB__(v20, v1);
        v21 = v20 - v1;
        if (v16)
        {
          goto LABEL_25;
        }

        v5[2] = v21;
      }

      return v5;
    }

    *&v22[0] = v2;
    result = sub_22C36F998(v4, v22 + 8);
    v24 = v22[0];
    v25 = v22[1];
    v26 = v23;
    if (!v1)
    {
      v7 = v5[3];
      if (((v7 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_24;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v8;
      }

      sub_22C3A5908(&qword_27D9BAD68, &unk_22C90D610);
      v10 = swift_allocObject();
      v11 = (j__malloc_size(v10) - 32) / 40;
      v10[2] = v9;
      v10[3] = 2 * v11;
      v12 = (v10 + 4);
      v13 = v5[3];
      v14 = v13 >> 1;
      if (v5[2])
      {
        if (v10 != v5 || v12 >= &v5[5 * v14 + 4])
        {
          memmove(v10 + 4, v5 + 4, 40 * v14);
        }

        v5[2] = 0;
      }

      i = v12 + 40 * v14;
      v1 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - (v13 >> 1);

      v5 = v10;
    }

    v16 = __OFSUB__(v1--, 1);
    if (v16)
    {
      break;
    }

    v17 = v24;
    v18 = v25;
    *(i + 32) = v26;
    *i = v17;
    *(i + 16) = v18;
    v4 += 32;
    ++v2;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_22C7E3A84(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BABD8, &unk_22C90FA30);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v4);
  v39 = v9;
  v40 = &v35 - v8;
  v10 = 0;
  v11 = 0;
  v36 = *(v9 + 80);
  v12 = MEMORY[0x277D84F90];
  v37 = (v36 + 32) & ~v36;
  v13 = MEMORY[0x277D84F90] + v37;
  v38 = *(a1 + 16);
  while (1)
  {
    if (v38 == v11)
    {
      v32 = v12[3];
      if (v32 >= 2)
      {
        v33 = v32 >> 1;
        v31 = __OFSUB__(v33, v10);
        v34 = v33 - v10;
        if (v31)
        {
          goto LABEL_35;
        }

        v12[2] = v34;
      }

      return v12;
    }

    v14 = *(type metadata accessor for QueryDecorationTuple(0) - 8);
    v15 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v11;
    v16 = *(v2 + 48);
    *v6 = v11;
    sub_22C7E4208(v15, v6 + v16);
    result = sub_22C4E7208(v6, v40, &qword_27D9BABD8, &unk_22C90FA30);
    if (v10)
    {
      v17 = v12;
    }

    else
    {
      v18 = v12[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v19 = a1;
      v20 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      sub_22C3A5908(&qword_27D9BABD0, &unk_22C90D470);
      v22 = *(v39 + 72);
      v23 = v37;
      v17 = swift_allocObject();
      result = j__malloc_size(v17);
      if (!v22)
      {
        goto LABEL_33;
      }

      v24 = result - v23;
      if (result - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_34;
      }

      v26 = v24 / v22;
      v17[2] = v21;
      v17[3] = 2 * (v24 / v22);
      v27 = v17 + v23;
      v28 = v12[3];
      v29 = (v28 >> 1) * v22;
      if (v12[2])
      {
        if (v17 < v12 || v27 >= v12 + v37 + v29)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 != v12)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v12[2] = 0;
      }

      v13 = &v27[v29];
      v10 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - (v28 >> 1);

      a1 = v19;
    }

    v31 = __OFSUB__(v10--, 1);
    if (v31)
    {
      break;
    }

    result = sub_22C4E7208(v40, v13, &qword_27D9BABD8, &unk_22C90FA30);
    v13 += *(v39 + 72);
    ++v11;
    v12 = v17;
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
  return result;
}

uint64_t sub_22C7E3DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v8 = *a4;
  v9 = a4[1];
  if (a3)
  {

    v10 = sub_22C36CA88();
    sub_22C7DA844(v10, v11, a1, a2, v12);
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v20 = sub_22C36CA88();
    result = sub_22C7D9010(v20, v21, a1, a2);
    v14 = result;
    v16 = v22;
    v18 = 0;
  }

  *a5 = v14;
  *(a5 + 8) = v16 & 1;
  *(a5 + 16) = v18;
  return result;
}

uint64_t sub_22C7E3E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RetrievedToolWithAttribution();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C7E3EE4()
{
  sub_22C36D5EC();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_22C36D860(v6);
  *v7 = v8;
  v7[1] = sub_22C382AF4;
  sub_22C7E47E4();
  sub_22C7E4EBC();

  return sub_22C7CD7C8(v9);
}

uint64_t sub_22C7E3FB0()
{
  sub_22C36D5EC();
  sub_22C7E4CB4();
  v0 = swift_task_alloc();
  v1 = sub_22C36D860(v0);
  *v1 = v2;
  v1[1] = sub_22C46BC08;
  sub_22C7E47E4();
  sub_22C7E4ED0();

  return sub_22C7C9354(v3);
}

uint64_t sub_22C7E406C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22C7E40DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_22C7DBD88(a4, a1, a2, (a3 + 16));
    v12 = v11;
    v14 = v13;
  }

  else
  {
    sub_22C7D9AE0();
    v10 = v15;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
}

uint64_t sub_22C7E4208(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 16);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7E4260(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v5 = v4(v3);
  sub_22C36985C(v5);
  v7 = *(v6 + 32);
  v8 = sub_22C36BA00();
  v9(v8);
  return a2;
}

uint64_t sub_22C7E42B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22C36985C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22C7E4310(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_22C7E43B8()
{
  v1 = *(v0 - 208);
  *(v0 - 160) = *(v0 - 224);
  *(v0 - 144) = v1;
  result = *(v0 - 192);
  *(v0 - 128) = result;
  *(v0 - 112) = *(v0 - 176);
  return result;
}

uint64_t sub_22C7E4404()
{
  v2 = *(v0 - 128);
  *(v0 - 224) = *(v0 - 144);
  *(v0 - 208) = v2;
  *(v0 - 192) = *(v0 - 112);
  *(v0 - 176) = *(v0 - 96);
  v3 = *(v0 - 208);

  return sub_22C90313C();
}

uint64_t sub_22C7E4434()
{
  v2 = *(v0 - 184);
  *(v0 - 144) = *(v0 - 200);
  *(v0 - 128) = v2;
  *(v0 - 112) = *(v0 - 168);
  *(v0 - 96) = *(v0 - 152);

  return sub_22C90313C();
}

uint64_t sub_22C7E44BC@<X0>(uint64_t a1@<X8>)
{

  return sub_22C36F9F4(0xD000000000000060, (a1 - 32) | 0x8000000000000000, (v1 - 80));
}

void sub_22C7E44E0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22C7E4500()
{

  return sub_22C90A0BC();
}

__n128 sub_22C7E4524@<Q0>(char a1@<W8>)
{
  v3 = *(v1 - 144);
  result = *(v1 - 128);
  *(v1 - 224) = *(v1 - 160);
  *(v1 - 208) = v3;
  *(v1 - 192) = result;
  *(v1 - 176) = a1;
  return result;
}

uint64_t sub_22C7E453C()
{

  return swift_beginAccess();
}

uint64_t sub_22C7E455C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2080;
  return result;
}

void sub_22C7E456C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_22C7E457C()
{
  v2 = *(v0 + 8);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C7E45B8()
{
  v2 = *(v0 - 320) | 0x8000000000000000;

  return sub_22C36F9F4(0xD00000000000003CLL, v2, (v0 - 160));
}

uint64_t sub_22C7E4618()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v11 = v0[49];
  v12 = v0[48];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[40];
  v19 = v0[37];
  v20 = v0[36];
  v6 = v0[34];
  v21 = v0[35];
  v8 = v0[12];
  v7 = v0[13];
  sub_22C374168(v0 + 9, v8);
  v9 = *(v7 + 8);
  return v8;
}

uint64_t sub_22C7E4700()
{

  return sub_22C90312C();
}

uint64_t sub_22C7E4720()
{
  v4 = *(v2 - 288);

  return sub_22C370B74(v1 + v0, 3, v4);
}

uint64_t sub_22C7E4740()
{
  v2 = v0[41];
  v4 = v0[34];
  v3 = v0[35];
  v5 = v0[32];

  return sub_22C90378C();
}

uint64_t sub_22C7E4760()
{

  return sub_22C7E42B8(v0, type metadata accessor for PromptTreeIdentifier.ContextSubItem);
}

void sub_22C7E479C()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[31];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[21];
  v10 = v0[22];
  v11 = v0[20];
}

uint64_t sub_22C7E4810(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD000000000000036, a2, (v2 - 152));
}

uint64_t sub_22C7E482C()
{

  return swift_slowAlloc();
}

void sub_22C7E4878()
{
  v2 = *(v0 + 16) & 0x3FLL;

  JUMPOUT(0x2318B0640);
}

uint64_t sub_22C7E4890()
{

  return sub_22C370B74(v1 + v0, 3, v2);
}

uint64_t sub_22C7E48AC()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C7E48C8()
{

  return swift_arrayDestroy();
}

uint64_t sub_22C7E48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;

  return sub_22C90B62C();
}

BOOL sub_22C7E4928(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22C7E4944()
{
  v4 = *(v2 - 152);

  return sub_22C370B74(v0 + v1, 3, v4);
}

void sub_22C7E4960()
{
  v1 = *(v0 - 624);
  v2 = *(v0 - 472);
  v3 = *(v0 - 616);
}

uint64_t sub_22C7E4988()
{
  v4 = *(v2 - 96);

  return sub_22C370B74(v1 + v0, 3, v4);
}

uint64_t sub_22C7E49A4(int a1)
{
  *(v2 - 412) = a1;
  v3 = **(v2 - 376);
  return v1;
}

__n128 sub_22C7E49E8@<Q0>(char a1@<W8>)
{
  result = *(v1 - 128);
  *(v1 - 192) = result;
  *(v1 - 176) = a1;
  return result;
}

uint64_t sub_22C7E49F8()
{
  v1 = *(v0 - 112);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

void sub_22C7E4A38(uint64_t a1)
{
  v2 = *(a1 + 16);

  JUMPOUT(0x2318B0670);
}

void sub_22C7E4A60()
{
  *(v3 + 16) = v2;
  *(v3 + 8 * v4 + 32) = v1;
  v0[1] = v3;
  v5 = *v0;
}

BOOL sub_22C7E4AC0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_22C7E4AD8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_22C36F9F4(0xD000000000000060, a2, va);
}

uint64_t sub_22C7E4AF4()
{
  v2 = *(v0 + 8);

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_22C7E4B18(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22C7E4B34(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(0xD000000000000057, a2, (v2 - 88));
}

uint64_t sub_22C7E4B50@<X0>(uint64_t a1@<X8>)
{

  return sub_22C7D5E18((a1 + 16), a1 + 32, v2, v1);
}

void sub_22C7E4B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v24 = *(v21 + 408);
  v25 = *(v21 + 248);

  sub_22C7CED88(v20, v21 + 192, v22, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_22C7E4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  return sub_22C4B87A4(v8, va);
}

uint64_t sub_22C7E4BB0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(v2 - 320);

  return sub_22C7E42B8(v4, a2);
}

uint64_t sub_22C7E4BC8(uint64_t a1, unint64_t a2)
{

  return sub_22C36F9F4(a1, a2, (v2 - 80));
}

uint64_t sub_22C7E4BEC()
{
  result = *(v0 - 256);
  v3 = *(v1 - 192);
  return result;
}

void sub_22C7E4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 - 168) = a2;
  *(v3 - 160) = a3;
  *(v3 - 152) = 0;
}

__n128 sub_22C7E4C8C()
{
  result = *(v0 - 280);
  v2 = *(v0 - 264);
  return result;
}

void sub_22C7E4CB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
}

uint64_t sub_22C7E4CE0()
{
  result = *(v0 - 392);
  v2 = *(v0 - 352);
  return result;
}

void sub_22C7E4D00()
{
  v1 = v0[55];
  v2 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
}

uint64_t sub_22C7E4DBC()
{
  v2 = *(v0 - 328);

  return sub_22C90311C();
}

void sub_22C7E4DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22C7E4DFC()
{

  return sub_22C90314C();
}

uint64_t sub_22C7E4E14()
{
  v3 = *(v1 - 256);

  return sub_22C7E42B8(v3, v0);
}

void sub_22C7E4E2C()
{

  RetrievedTool.Definition.toCandidateIdentifier()();
}

uint64_t sub_22C7E4E44()
{
  v2 = *(v0 + 16);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_22C7E4E5C()
{
  v3 = *(v1 - 112);

  return sub_22C7E42B8(v3, v0);
}

uint64_t sub_22C7E4E74()
{
}

uint64_t sub_22C7E4E8C()
{
  v2 = *v0;
}

void sub_22C7E4EA4()
{

  RetrievedTool.Definition.toCandidateIdentifier()();
}

uint64_t QueryDecorationEntity.getValue()()
{
  sub_22C378808();
  sub_22C36B770();
  return sub_22C7E6F10();
}

void sub_22C7E4F60()
{
  sub_22C36BA7C();
  v2 = v1;
  v67 = v3;
  v4 = sub_22C9063DC();
  v5 = sub_22C369824(v4);
  v61[2] = v6;
  v61[3] = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v61[1] = v10 - v9;
  v11 = sub_22C90399C();
  v12 = sub_22C369824(v11);
  v63 = v13;
  v64 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v18 = v17 - v16;
  v19 = sub_22C9039FC();
  v20 = sub_22C369824(v19);
  v62 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v26 = v25 - v24;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v28 = sub_22C36985C(DecorationEntityValue);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  sub_22C387210();
  v31 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = v61 - v33;
  v35 = sub_22C9093BC();
  v36 = sub_22C369824(v35);
  v66 = v37;
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v36);
  v42 = v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v45 = v61 - v44;
  MEMORY[0x28223BE20](v43);
  v68 = v61 - v46;
  sub_22C378808();
  sub_22C36B770();
  v65 = v2;
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v48 = v63;
      v49 = v0;
      v50 = v64;
      (*(v63 + 32))(v18, v49, v64);
      sub_22C90391C();
      (*(v48 + 8))(v18, v50);
    }

    else
    {
      sub_22C36C640(v34, 1, 1, v35);
    }
  }

  else
  {
    v51 = v62;
    (*(v62 + 32))(v26, v0, v19);
    sub_22C9039CC();
    (*(v51 + 8))(v26, v19);
  }

  v53 = v67;
  v52 = v68;
  if (sub_22C370B74(v34, 1, v35) == 1)
  {
    sub_22C36DD28(v34, &qword_27D9BB908, &qword_22C910960);
    *v53 = 0u;
    *(v53 + 16) = 0u;
    *(v53 + 32) = 0;
  }

  else
  {
    v54 = v34;
    v55 = v66;
    (*(v66 + 32))(v52, v54, v35);
    v56 = *(v55 + 16);
    v56(v45, v52, v35);
    v57 = sub_22C7E5520();
    v56(v42, v45, v35);
    JointResolution.CandidateIdentifier.init(typedValue:)(v42, &v69);
    v58 = *(v55 + 8);
    v58(v45, v35);
    v58(v52, v35);
    v59 = v70;
    v60 = v71;
    *v53 = v69;
    *(v53 + 16) = v59;
    *(v53 + 24) = v60;
    *(v53 + 32) = v57;
  }

  sub_22C36CC48();
}

uint64_t sub_22C7E5520()
{
  v1 = sub_22C90361C();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C36BE24();
  v7 = sub_22C9039FC();
  v8 = sub_22C369824(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v15 = v14 - v13;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v17 = sub_22C36985C(DecorationEntityValue);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v22 = v21 - v20;
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = sub_22C90399C();
      sub_22C36985C(v24);
      (*(v25 + 8))(v22);
    }

    sub_22C5F8D4C();
    return sub_22C909F0C();
  }

  else
  {
    (*(v10 + 32))(v15, v22, v7);
    sub_22C3A5908(&qword_27D9C02E8, &unk_22C926BC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    *(inited + 32) = 1;
    v28 = sub_22C9039DC();
    v29 = *(v28 + 16);
    if (v29)
    {
      v41 = v15;
      v45 = v1;
      v42 = v10;
      v43 = v7;
      v46 = MEMORY[0x277D84F90];
      sub_22C3B77B8();
      v30 = v46;
      v44 = *(v4 + 16);
      v31 = v4 + 16;
      v32 = v28 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v33 = *(v31 + 56);
      v34 = (v31 - 8);
      do
      {
        v44(v0, v32, v45);
        sub_22C90358C();
        v36 = v35;
        (*v34)(v0, v45);
        v37 = *(v46 + 16);
        if (v37 >= *(v46 + 24) >> 1)
        {
          sub_22C3B77B8();
        }

        *(v46 + 16) = v37 + 1;
        *(v46 + 4 * v37 + 32) = v36;
        v32 += v33;
        --v29;
      }

      while (v29);

      v10 = v42;
      v7 = v43;
      v15 = v41;
    }

    else
    {

      v30 = MEMORY[0x277D84F90];
    }

    v38 = sub_22C3D0E60(v30);

    if ((v38 & 0x100000000) != 0)
    {
      v39 = -1082130432;
    }

    else
    {
      v39 = v38;
    }

    *(inited + 36) = v39;
    sub_22C5F8D4C();
    v26 = sub_22C909F0C();
    (*(v10 + 8))(v15, v7);
  }

  return v26;
}

Swift::Int __swiftcall QueryDecorationEntity.getEntitySourceHashValue()()
{
  sub_22C378808();
  v0 = sub_22C7E5918();
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v0);
  return sub_22C90B66C();
}

uint64_t sub_22C7E5918()
{
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v2 = sub_22C36985C(DecorationEntityValue);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C387210();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 2;
    }

    v6 = sub_22C90399C();
    v7 = 1;
  }

  else
  {
    v6 = sub_22C9039FC();
    v7 = 0;
  }

  (*(*(v6 - 8) + 8))(v0);
  return v7;
}

Swift::Bool __swiftcall QueryDecorationEntity.isEmpty()()
{
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v1 = sub_22C36985C(DecorationEntityValue);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_22C369838();
  sub_22C387210();
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v5 = sub_22C9039FC();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v5 = sub_22C90399C();
LABEL_5:
    sub_22C36985C(v5);
    (*(v6 + 8))();
    return 0;
  }

  return 1;
}

void QueryDecorationEntity.getTypedValue()()
{
  sub_22C36BA7C();
  v2 = v1;
  v3 = sub_22C90399C();
  v4 = sub_22C369824(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C36BE24();
  v9 = sub_22C9039FC();
  v10 = sub_22C369824(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v17 = v16 - v15;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v19 = sub_22C36985C(DecorationEntityValue);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v24 = v23 - v22;
  sub_22C378808();
  sub_22C36B770();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v0, v24, v3);
      sub_22C90391C();
      (*(v6 + 8))(v0, v3);
    }

    else
    {
      v26 = sub_22C9093BC();
      sub_22C36C640(v2, 1, 1, v26);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v24, v9);
    sub_22C9039CC();
    (*(v12 + 8))(v17, v9);
  }

  sub_22C36CC48();
}

void static QueryDecorationEntity.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    sub_22C36986C();
    sub_22C378808();

    static QueryDecorationEntityValue.== infix(_:_:)();
  }
}

void static QueryDecorationEntityValue.== infix(_:_:)()
{
  sub_22C36BA7C();
  v2 = sub_22C90399C();
  v3 = sub_22C369824(v2);
  v37 = v4;
  v38 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v36 = v8 - v7;
  v9 = sub_22C9039FC();
  v10 = sub_22C369824(v9);
  v39 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v14 = sub_22C36BE24();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v14);
  v16 = sub_22C36985C(DecorationEntityValue);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  sub_22C387210();
  v27 = *(v26 + 56);
  sub_22C7E6F10();
  sub_22C7E6F10();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C36B770();
      sub_22C7E6F10();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v30 = v36;
        v29 = v37;
        v31 = v0 + v27;
        v32 = v38;
        (*(v37 + 32))(v36, v31, v38);
        sub_22C90393C();
        v33 = *(v29 + 8);
        v33(v30, v32);
        v33(v21, v32);
LABEL_12:
        sub_22C38C0F4();
        goto LABEL_13;
      }

      (*(v37 + 8))(v21, v38);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v34 = v39;
    sub_22C36B770();
    sub_22C7E6F10();
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v34 + 32))(v1, v0 + v27, v9);
      sub_22C9039EC();
      v35 = *(v34 + 8);
      v35(v1, v9);
      v35(v23, v9);
      goto LABEL_12;
    }

    (*(v34 + 8))(v23, v9);
  }

  sub_22C36DD28(v0, &qword_27D9BAA78, &unk_22C90D110);
LABEL_13:
  sub_22C36CC48();
}

double sub_22C7E60B0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_22C9036EC();
  v3 = sub_22C369824(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v10 = v9 - v8;
  sub_22C3A5908(&qword_27D9C02E8, &unk_22C926BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = 0;
  sub_22C90373C();
  v13 = v12;
  if ((~v12 & 0x7F800000) != 0 || (v14 = -1.0, (v13 & 0x7FFFFF) == 0))
  {
    sub_22C90373C();
  }

  *(inited + 36) = v14;
  sub_22C5F8D4C();
  v15 = sub_22C909F0C();
  sub_22C90371C();
  RetrievedTool.Definition.toCandidateIdentifier()();
  (*(v5 + 8))(v10, v2);
  result = *&v17;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v15;
  return result;
}

uint64_t QueryDecorationTuple.init(tool:parameters:)()
{
  sub_22C36986C();
  v3 = v2;
  v4 = sub_22C9037EC();
  sub_22C36985C(v4);
  (*(v5 + 32))(v3, v1);
  result = sub_22C3892BC();
  *(v3 + v7) = v0;
  return result;
}

void QueryDecorationTuple.hash(into:)()
{
  sub_22C3704C4();
  v1 = sub_22C9036EC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C90371C();
  sub_22C371DE8();
  sub_22C7E6B18(v10, v11);
  sub_22C909F8C();
  (*(v4 + 8))(v9, v1);
  sub_22C3892BC();
  v13 = *(v0 + v12);
  sub_22C7E6754();
}

void static QueryDecorationTuple.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36986C();
  if (sub_22C90375C())
  {
    sub_22C3892BC();
    v29 = *(v21 + v28);
    v30 = *(v20 + v28);

    sub_22C5DB210(v29, v30, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t QueryDecorationTuple.hashValue.getter()
{
  v1 = sub_22C9036EC();
  v2 = sub_22C369824(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v9 = v8 - v7;
  sub_22C90B62C();
  sub_22C90371C();
  sub_22C371DE8();
  sub_22C7E6B18(v10, v11);
  sub_22C909F8C();
  (*(v4 + 8))(v9, v1);
  sub_22C3892BC();
  v13 = *(v0 + v12);
  sub_22C7E6754();
  return sub_22C90B66C();
}

uint64_t QueryDecorationTupleParameter.init(parameterDefinition:entity:)()
{
  sub_22C36986C();
  v3 = v2;
  v4 = sub_22C90981C();
  sub_22C36985C(v4);
  (*(v5 + 32))(v3, v1);
  v6 = v3 + *(type metadata accessor for QueryDecorationTupleParameter(0) + 20);

  return sub_22C7E6A6C(v0, v6);
}

uint64_t QueryDecorationTupleParameter.hash(into:)()
{
  sub_22C9097DC();
  sub_22C909FFC();

  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  MEMORY[0x2318B8B10](*(v0 + *(DecorationTupleParameter + 20)));
  sub_22C378808();
  v2 = sub_22C7E5918();
  sub_22C37B5C8();
  MEMORY[0x2318B8B10](v2);
  v3 = sub_22C90B66C();
  return MEMORY[0x2318B8B10](v3);
}

BOOL static QueryDecorationTupleParameter.== infix(_:_:)()
{
  sub_22C36986C();
  result = 0;
  if (sub_22C9097CC())
  {
    DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
    if (*(v1 + *(DecorationTupleParameter + 20)) == *(v0 + *(DecorationTupleParameter + 20)))
    {
      sub_22C378808();
      static QueryDecorationEntityValue.== infix(_:_:)();
      if (v3)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t QueryDecorationTupleParameter.hashValue.getter()
{
  sub_22C37B5C8();
  QueryDecorationTupleParameter.hash(into:)();
  return sub_22C90B66C();
}

uint64_t sub_22C7E6710(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

void sub_22C7E6754()
{
  sub_22C36BA7C();
  v3 = v2;
  v4 = sub_22C3704C4();
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(v4);
  v5 = sub_22C36985C(DecorationEntityValue);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = sub_22C36BE24();
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(v8);
  v9 = sub_22C369824(DecorationTupleParameter);
  v29 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v15 = v14 - v13;
  memcpy(v32, v0, sizeof(v32));
  sub_22C90B66C();
  v16 = 1 << *(v3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v3 + 56);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  for (i = 0; v18; v20 ^= v28)
  {
LABEL_8:
    v23 = *(v3 + 48) + *(v29 + 72) * (__clz(__rbit64(v18)) | (i << 6));
    sub_22C7E6F10();
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    MEMORY[0x2318B8B10](*(v15 + *(DecorationTupleParameter + 20)));
    sub_22C378808();
    sub_22C36B770();
    sub_22C7E6F10();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v26 = EnumCaseMultiPayload;
        goto LABEL_14;
      }

      v25 = sub_22C90399C();
      v26 = 1;
    }

    else
    {
      v25 = sub_22C9039FC();
      v26 = 0;
    }

    (*(*(v25 - 8) + 8))(v1);
LABEL_14:
    v18 &= v18 - 1;
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v26);
    v27 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v27);
    v28 = sub_22C90B66C();
    sub_22C7E6F6C();
  }

  while (1)
  {
    v22 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      MEMORY[0x2318B8B10](v20);
      sub_22C36CC48();
      return;
    }

    v18 = *(v3 + 56 + 8 * v22);
    ++i;
    if (v18)
    {
      i = v22;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22C7E6A6C(uint64_t a1, uint64_t a2)
{
  DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
  (*(*(DecorationEntity - 8) + 32))(a2, a1, DecorationEntity);
  return a2;
}

uint64_t sub_22C7E6B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22C7E6BD0()
{
  result = type metadata accessor for QueryDecorationEntityValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C7E6C4C()
{
  sub_22C7E6CF8(319, &qword_281435740, MEMORY[0x277D1EEB0]);
  if (v0 <= 0x3F)
  {
    sub_22C7E6CF8(319, &qword_281435758, MEMORY[0x277D1EE00]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C7E6CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_22C7E6D98()
{
  if (!qword_28142F9D0)
  {
    type metadata accessor for QueryDecorationTupleParameter(255);
    sub_22C7E6B18(qword_281430F90, type metadata accessor for QueryDecorationTupleParameter);
    v0 = sub_22C90A8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_28142F9D0);
    }
  }
}

uint64_t sub_22C7E6E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C7E6F10()
{
  sub_22C36986C();
  v3 = v2(0);
  sub_22C36985C(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_22C7E6F6C()
{
  v1 = sub_22C3704C4();
  v3 = v2(v1);
  sub_22C36985C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_22C7E7054(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    if (v9 == v8)
    {
      break;
    }

    v10 = *(a4(0) - 8);
    result = v7(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8++);
  }

  while (!v4);
  return result;
}

uint64_t sub_22C7E7128(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));

      a1(&v14);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22C7E7254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v171 = v29;
  v31 = v30;
  v157 = v32;
  v166 = sub_22C9036EC();
  v33 = sub_22C369824(v166);
  v153 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22C3698E4();
  v165 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA64();
  v164 = v39;
  sub_22C36BA0C();
  v40 = sub_22C9037EC();
  v168 = sub_22C369824(v40);
  v169 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v168);
  sub_22C3698A8();
  v167 = v44;
  v45 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v45);
  v47 = *(v46 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v48);
  v50 = &v151 - v49;
  v156 = sub_22C9063DC();
  v51 = sub_22C369824(v156);
  v155 = v52;
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v51);
  sub_22C3698A8();
  sub_22C36D234(v55);
  v56 = sub_22C3A5908(&qword_27D9C02F0, &unk_22C926C40);
  sub_22C369914(v56);
  v58 = *(v57 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v59);
  v61 = (&v151 - v60);
  DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
  v62 = sub_22C369824(DecorationEntity);
  v161 = v63;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  sub_22C3698E4();
  v158 = v66;
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA58();
  v162 = v68;
  sub_22C369930();
  MEMORY[0x28223BE20](v69);
  sub_22C36BA58();
  v170 = v70;
  sub_22C369930();
  MEMORY[0x28223BE20](v71);
  sub_22C36BA64();
  v160 = v72;
  v173 = sub_22C3A5908(&qword_27D9C02F8, &unk_22C927B20);
  v73 = sub_22C36985C(v173);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v77);
  v79 = &v151 - v78;
  v80 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  sub_22C36985C(v80);
  v82 = *(v81 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v83);
  v85 = (&v151 - v84);
  v174 = v28;
  v175 = v24;
  v176 = v26;
  v86 = sub_22C7E7E04(v31);
  v87 = 0;
  v88 = 0;
  v89 = *(v86 + 16);
  v163 = MEMORY[0x277D84F90];
  while (v89 != v87)
  {
    if (v87 >= *(v86 + 16))
    {
      __break(1u);
LABEL_39:
      __break(1u);

      sub_22C36DD28(v85, &qword_27D9C0300, &qword_22C926C50);

      __break(1u);
      return;
    }

    v90 = sub_22C9039FC();
    sub_22C36985C(v90);
    v92 = *(v91 + 16);
    v93 = v86 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v87;
    v94 = *(v80 + 48);
    *v85 = v87;
    v92(v85 + v94, v93);
    sub_22C7E81CC(v85, v176 & 1, v61);
    sub_22C36DD28(v85, &qword_27D9C0300, &qword_22C926C50);
    if (sub_22C370B74(v61, 1, DecorationEntity) == 1)
    {
      sub_22C36DD28(v61, &qword_27D9C02F0, &unk_22C926C40);
      ++v87;
    }

    else
    {
      sub_22C37F594();
      v159 = v95;
      sub_22C7F42A8();
      sub_22C7F42A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = *(v163 + 16);
        sub_22C36D270();
        sub_22C5962A4();
        v163 = v101;
      }

      v96 = *(v163 + 16);
      v97 = v96 + 1;
      if (v96 >= *(v163 + 24) >> 1)
      {
        v159 = v96 + 1;
        v152 = v96;
        sub_22C5962A4();
        v97 = v159;
        v163 = v102;
      }

      ++v87;
      *(v163 + 16) = v97;
      sub_22C37054C();
      v99 = *(v98 + 72);
      sub_22C37F594();
      sub_22C7F42A8();
    }
  }

  v152 = 0;

  v103 = 0;
  v104 = MEMORY[0x277D84F90];
  v170 = *(v171 + 16);
  v88 = &qword_27D9C02F8;
LABEL_12:
  v105 = v173;
  while (v170 != v103)
  {
    v106 = sub_22C90399C();
    sub_22C369824(v106);
    v108 = v107;
    v110 = v171 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v109 + 72) * v103;
    v111 = *(v105 + 48);
    *v79 = v103;
    (*(v109 + 16))(&v79[v111], v110, v106);
    if (v176)
    {
      goto LABEL_18;
    }

    sub_22C3A7214();
    v112 = *(v105 + 48);
    sub_22C90391C();
    v113 = v20 + v112;
    v88 = &qword_27D9C02F8;
    (*(v108 + 8))(v113, v106);
    v114 = sub_22C9093BC();
    v115 = sub_22C370B74(v50, 1, v114);
    sub_22C36DD28(v50, &qword_27D9BB908, &qword_22C910960);
    v116 = v115 == 1;
    v105 = v173;
    if (!v116)
    {
LABEL_18:
      v160 = v104;
      sub_22C5CAC28(&a18);
      sub_22C3A7214();
      v159 = *(v105 + 48);
      sub_22C36DD28(v79, &qword_27D9C02F8, &unk_22C927B20);
      v117 = v158;
      v118 = v104 + v159;
      v104 = v160;
      (*(v108 + 32))(v158 + *(DecorationEntity + 20), v118, v106);
      type metadata accessor for QueryDecorationEntityValue(0);
      swift_storeEnumTagMultiPayload();
      *v117 = v103;
      sub_22C37F594();
      sub_22C7F42A8();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v122 = *(v104 + 16);
        sub_22C36D270();
        sub_22C5962A4();
        v104 = v123;
      }

      v119 = *(v104 + 16);
      v88 = &qword_27D9C02F8;
      if (v119 >= *(v104 + 24) >> 1)
      {
        sub_22C5962A4();
        v104 = v124;
      }

      v103 = (v103 + 1);
      *(v104 + 16) = v119 + 1;
      sub_22C37054C();
      v121 = *(v120 + 72);
      sub_22C37F594();
      sub_22C7F42A8();
      goto LABEL_12;
    }

    sub_22C36DD28(v79, &qword_27D9C02F8, &unk_22C927B20);
    v103 = (v103 + 1);
  }

  v177 = v163;
  sub_22C3CEF6C(v104);
  v125 = v177;
  v85 = v154;
  sub_22C90407C();

  sub_22C38B1DC(&a17);

  v126 = sub_22C9063CC();
  v127 = sub_22C90AACC();
  v128 = os_log_type_enabled(v126, v127);
  v173 = v125;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v177 = v130;
    *v129 = 136315650;
    *(v129 + 4) = sub_22C36F9F4(0xD00000000000001BLL, 0x800000022C935EA0, &v177);
    *(v129 + 12) = 2048;
    *(v129 + 14) = *(v125 + 16);

    *(v129 + 22) = 2048;
    *(v129 + 24) = qword_27D9C0308;

    _os_log_impl(&dword_22C366000, v126, v127, "[%s] total entity count: %ld total tool count: %ld", v129, 0x20u);
    sub_22C36FF94(v130);
    MEMORY[0x2318B9880](v130, -1, -1);
    MEMORY[0x2318B9880](v129, -1, -1);
  }

  else
  {
  }

  (*(v155 + 8))(v85, v156);
  v131 = qword_27D9C0308;
  v132 = MEMORY[0x277D84F90];
  if (qword_27D9C0308)
  {
    v133 = *(v169 + 16);
    v134 = &qword_27D9C02F8 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
    v171 = *(v169 + 72);
    DecorationEntity = v133;
    v170 = (v153 + 32);
    v163 = v153 + 88;
    LODWORD(v162) = *MEMORY[0x277D1ECD8];
    v135 = (v153 + 8);
    v169 += 16;
    v136 = (v169 - 8);
    v137 = v167;
    v88 = v168;
    do
    {
      (DecorationEntity)(v137, v134, v88);
      v138 = v164;
      sub_22C90371C();
      v139 = v165;
      v140 = v138;
      v141 = v166;
      (*v170)(v165, v140, v166);
      v142 = (*v163)(v139, v141);
      v143 = v142 != v162;
      (*v135)(v139, v141);
      v144 = sub_22C7E86DC(v137, v173, v143, v174, v176 & 1, v175);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = *(v132 + 16);
        sub_22C36D270();
        sub_22C5961F0();
        v132 = v146;
      }

      v85 = *(v132 + 16);
      v88 = v168;
      if (v85 >= *(v132 + 24) >> 1)
      {
        sub_22C5961F0();
        v88 = v168;
        v132 = v147;
      }

      v137 = v167;
      (*v136)(v167, v88);
      *(v132 + 16) = v85 + 1;
      *(v132 + 8 * v85 + 32) = v144;
      v134 += v171;
      --v131;
    }

    while (v131);
  }

  v148 = 0;
  v177 = MEMORY[0x277D84F90];
  v149 = *(v132 + 16);
  while (v149 != v148)
  {
    if (v148 >= *(v132 + 16))
    {
      goto LABEL_39;
    }

    v88 = (v148 + 1);
    v150 = *(v132 + 8 * v148 + 32);

    sub_22C3CEB98();
    v148 = v88;
  }

  sub_22C36CC48();
}

uint64_t sub_22C7E7E04(uint64_t a1)
{
  v2 = sub_22C9063DC();
  v34 = *(v2 - 8);
  v35 = v2;
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C9039FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = 0;
  v40 = a1;
  v13 = *(a1 + 16);
  v37 = (v6 + 32);
  v39 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    (*(v6 + 16))(v11, v40 + v14 + v15 * v12, v5);
    v16 = *(sub_22C9039DC() + 16);

    if (v16)
    {
      v36 = *v37;
      v36(v38, v11, v5);
      v17 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C3B73FC(0, *(v17 + 16) + 1, 1);
        v17 = v41;
      }

      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v39 = v20 + 1;
        v32 = v20;
        sub_22C3B73FC(v19 > 1, v20 + 1, 1);
        v21 = v39;
        v20 = v32;
        v17 = v41;
      }

      ++v12;
      *(v17 + 16) = v21;
      v39 = v17;
      v36((v17 + v14 + v20 * v15), v38, v5);
    }

    else
    {
      (*(v6 + 8))(v11, v5);
      ++v12;
    }
  }

  v22 = v39;
  v23 = *(v39 + 16);
  v24 = v13 <= v23;
  v25 = v13 - v23;
  if (!v24)
  {
    v26 = v33;
    sub_22C90407C();
    v27 = sub_22C9063CC();
    v28 = sub_22C90AADC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v41 = v30;
      *v29 = 136315394;
      *(v29 + 4) = sub_22C36F9F4(0x70537265746C6966, 0xEF293A5F28736E61, &v41);
      *(v29 + 12) = 2048;
      *(v29 + 14) = v25;
      _os_log_impl(&dword_22C366000, v27, v28, "[%s] %ld Entity span objects had no matchMetadata. They will be filtered.", v29, 0x16u);
      sub_22C36FF94(v30);
      MEMORY[0x2318B9880](v30, -1, -1);
      MEMORY[0x2318B9880](v29, -1, -1);
    }

    (*(v34 + 8))(v26, v35);
  }

  return v22;
}

uint64_t sub_22C7E81CC@<X0>(uint64_t *a1@<X0>, char a2@<W2>, void *a3@<X8>)
{
  v59 = a3;
  v5 = sub_22C9063DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v54[-v12];
  v14 = sub_22C3A5908(&qword_27D9C0300, &qword_22C926C50);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v58 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v18);
  v22 = &v54[-v21];
  if (a2)
  {
    goto LABEL_5;
  }

  sub_22C3A7214();
  v57 = a1;
  v23 = v9;
  v24 = v6;
  v25 = v5;
  v26 = *(v14 + 48);
  sub_22C9039CC();
  v27 = *(*(sub_22C9039FC() - 8) + 8);
  v28 = &v22[v26];
  v29 = v24;
  v30 = v23;
  a1 = v57;
  v27(v28);
  v31 = sub_22C9093BC();
  v32 = sub_22C370B74(v13, 1, v31);
  sub_22C36DD28(v13, &qword_27D9BB908, &qword_22C910960);
  if (v32 != 1)
  {
LABEL_5:
    sub_22C3A7214();
    v44 = *(v14 + 48);
    v45 = *a1;
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v47 = *(DecorationEntity + 20);
    v48 = sub_22C9039FC();
    v49 = v59;
    (*(*(v48 - 8) + 32))(v59 + v47, &v20[v44], v48);
    type metadata accessor for QueryDecorationEntityValue(0);
    swift_storeEnumTagMultiPayload();
    *v49 = v45;
    v50 = v49;
    v51 = 0;
    v52 = DecorationEntity;
  }

  else
  {
    v56 = v25;
    sub_22C90407C();
    v33 = v58;
    sub_22C3A7214();
    v34 = sub_22C9063CC();
    v35 = sub_22C90AADC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v55 = v35;
      v37 = v36;
      v57 = swift_slowAlloc();
      v60 = v57;
      *v37 = 136315394;
      *(v37 + 4) = sub_22C36F9F4(0xD00000000000001BLL, 0x800000022C935EA0, &v60);
      *(v37 + 12) = 2080;
      v38 = *(v14 + 48);
      sub_22C7F4358(&qword_27D9C0318, MEMORY[0x277D1EEB0]);
      v39 = sub_22C909F6C();
      v41 = v40;
      sub_22C36DD28(v33, &qword_27D9C0300, &qword_22C926C50);
      v42 = sub_22C36F9F4(v39, v41, &v60);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_22C366000, v34, v55, "[%s] An entity span had no typedValue %s Will filter it and continue", v37, 0x16u);
      v43 = v57;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v43, -1, -1);
      MEMORY[0x2318B9880](v37, -1, -1);
    }

    else
    {

      sub_22C36DD28(v33, &qword_27D9C0300, &qword_22C926C50);
    }

    (*(v29 + 8))(v30, v56);
    v52 = type metadata accessor for QueryDecorationEntity(0);
    v50 = v59;
    v51 = 1;
  }

  return sub_22C36C640(v50, v51, 1, v52);
}

uint64_t sub_22C7E86DC(char *a1, uint64_t a2, int a3, uint64_t a4, int a5, char *a6)
{
  v114 = a4;
  v115 = a6;
  v107 = a3;
  v108 = a5;
  v111 = a2;
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  v7 = *(*(DecorationTuple - 8) + 64);
  v8 = MEMORY[0x28223BE20](DecorationTuple);
  v101 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v93 - v10;
  v99 = sub_22C9037EC();
  v98 = *(v99 - 8);
  v11 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22C90981C();
  isa = v113[-1].isa;
  v13 = *(isa + 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C9063DC();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v97 = &v93 - v19;
  v109 = sub_22C9099FC();
  v20 = *(v109 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v109);
  v23 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22C908EAC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22C9036EC();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v93 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v93 - v34;
  v36 = a1;
  sub_22C90371C();
  v37 = v29;
  v38 = v30;
  v39 = (*(v30 + 88))(v35, v37);
  v40 = v39 == *MEMORY[0x277D1ECE0];
  v95 = v37;
  if (v40)
  {
    (*(v30 + 96))(v35, v37);
    (*(v25 + 32))(v28, v35, v24);
    v41 = sub_22C908DCC();
    (*(v25 + 8))(v28, v24);
    v42 = v36;
    v44 = v112;
    v43 = v113;
LABEL_10:
    v47 = v107;
    v46 = v108;
    goto LABEL_11;
  }

  v42 = v36;
  if (v39 == *MEMORY[0x277D1ECE8])
  {
    (*(v38 + 96))(v35, v37);
    v45 = v109;
    (*(v20 + 32))(v23, v35, v109);
    v46 = v108;
    v41 = sub_22C7E92EC(v23);
    (*(v20 + 8))(v23, v45);
    v44 = v112;
    v43 = v113;
LABEL_6:
    v47 = v107;
    goto LABEL_11;
  }

  v44 = v112;
  if (v39 == *MEMORY[0x277D1ECD8] || v39 == *MEMORY[0x277D1ECD0])
  {
    (*(v38 + 96))(v35, v37);
    (*(v25 + 32))(v28, v35, v24);
    v41 = sub_22C908DCC();
    (*(v25 + 8))(v28, v24);
    v43 = v113;
    goto LABEL_10;
  }

  v46 = v108;
  if (v39 == *MEMORY[0x277D1ECF8])
  {
    (*(v38 + 8))(v35, v37);
    v41 = MEMORY[0x277D84F90];
    v43 = v113;
    goto LABEL_6;
  }

  v88 = v97;
  sub_22C90407C();
  v89 = sub_22C9063CC();
  v90 = sub_22C90AADC();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v116[0] = v92;
    *v91 = 136315138;
    *(v91 + 4) = sub_22C36F9F4(0xD00000000000002FLL, 0x800000022C935EC0, v116);
    _os_log_impl(&dword_22C366000, v89, v90, "[%s] Unsupported RetrievedTool definition type found", v91, 0xCu);
    sub_22C36FF94(v92);
    MEMORY[0x2318B9880](v92, -1, -1);
    MEMORY[0x2318B9880](v91, -1, -1);
  }

  (*(v103 + 8))(v88, v104);
  v43 = v113;
  v47 = v107;
  (*(v38 + 8))(v35, v95);
  v41 = MEMORY[0x277D84F90];
LABEL_11:
  v48 = *(v41 + 16);
  v94 = v38;
  if (v48)
  {
    v97 = v42;
    v49 = isa + 16;
    isa = *(isa + 2);
    v50 = (v49[64] + 32) & ~v49[64];
    v96 = v41;
    v51 = v41 + v50;
    v109 = *(v49 + 7);
    v52 = v46 & 1;
    v53 = (v49 - 8);
    v54 = MEMORY[0x277D84F90];
    do
    {
      v55 = (isa)(v44, v51, v43);
      MEMORY[0x28223BE20](v55);
      v56 = v115;
      *(&v93 - 4) = v114;
      *(&v93 - 24) = v52;
      *(&v93 - 2) = v56;
      *(&v93 - 1) = v44;
      sub_22C7948E0();
      v58 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = *(v54 + 16);
        sub_22C596074();
        v54 = v61;
      }

      v59 = *(v54 + 16);
      if (v59 >= *(v54 + 24) >> 1)
      {
        sub_22C596074();
        v54 = v62;
      }

      *(v54 + 16) = v59 + 1;
      *(v54 + 8 * v59 + 32) = v58;
      v44 = v112;
      v43 = v113;
      (*v53)(v112, v113);
      v51 += v109;
      --v48;
    }

    while (v48);

    v42 = v97;
    v63 = v106;
    v47 = v107;
  }

  else
  {

    v54 = MEMORY[0x277D84F90];
    v63 = v106;
  }

  v64 = sub_22C7E9A1C(v54, v114, 0, v47 & 1);
  v65 = MEMORY[0x277D84FA0];
  v118 = MEMORY[0x277D84FA0];
  MEMORY[0x28223BE20](v64);
  *(&v93 - 2) = &v118;
  *(&v93 - 1) = v42;
  sub_22C7E7128(sub_22C7EBD24, (&v93 - 4), v64);

  v66 = *(v64 + 16);

  if (!v66)
  {
    v67 = v105;
    sub_22C90407C();
    v68 = v98;
    v69 = *(v98 + 16);
    v70 = v99;
    v69(v63, v42, v99);
    v71 = sub_22C9063CC();
    LODWORD(v115) = sub_22C90AACC();
    if (os_log_type_enabled(v71, v115))
    {
      v72 = v68;
      v73 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v117 = v114;
      *v73 = 136315394;
      *(v73 + 4) = sub_22C36F9F4(0xD00000000000002FLL, 0x800000022C935EC0, &v117);
      *(v73 + 12) = 2080;
      v113 = v71;
      v74 = v93;
      sub_22C90371C();
      RetrievedTool.Definition.toCandidateIdentifier()();
      (*(v94 + 8))(v74, v95);
      v75 = v63;
      v76 = v70;
      (*(v72 + 8))(v75, v70);
      v77 = v42;
      v78 = v116[0];
      v79 = v116[1];

      v80 = sub_22C36F9F4(v78, v79, &v117);
      v42 = v77;
      v65 = MEMORY[0x277D84FA0];

      *(v73 + 14) = v80;
      v81 = v113;
      _os_log_impl(&dword_22C366000, v113, v115, "QDRanker [%s] tool: %s No valid tuples found", v73, 0x16u);
      v82 = v114;
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v82, -1, -1);
      MEMORY[0x2318B9880](v73, -1, -1);

      (*(v103 + 8))(v105, v104);
      v84 = v101;
      v83 = DecorationTuple;
      v85 = v100;
      v86 = v76;
    }

    else
    {

      (*(v68 + 8))(v63, v70);
      (*(v103 + 8))(v67, v104);
      v84 = v101;
      v83 = DecorationTuple;
      v86 = v70;
      v85 = v100;
    }

    v69(v84, v42, v86);
    *&v84[*(v83 + 20)] = v65;
    sub_22C6A5F0C();
    sub_22C7F4300(v85, type metadata accessor for QueryDecorationTuple);
  }

  return v118;
}

uint64_t sub_22C7E92EC(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9C0308, &unk_22C926C58);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  v9 = sub_22C90847C();
  sub_22C605CA8(a1, v9);

  sub_22C3A7214();
  v10 = sub_22C908DAC();
  if (sub_22C370B74(v6, 1, v10) == 1)
  {
    sub_22C36DD28(v6, &qword_27D9C0308, &unk_22C926C58);
    sub_22C36DD28(v8, &qword_27D9C0308, &unk_22C926C58);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v11 = sub_22C908D8C();
    sub_22C36DD28(v8, &qword_27D9C0308, &unk_22C926C58);
    (*(*(v10 - 8) + 8))(v6, v10);
  }

  return v11;
}

uint64_t sub_22C7E9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v63 = a1;
  v6 = sub_22C90941C();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  MEMORY[0x28223BE20](v6);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C90399C();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22C9039FC();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v18 = *(*(DecorationEntityValue - 8) + 64);
  MEMORY[0x28223BE20](DecorationEntityValue);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = &v54 - v23;
  v25 = sub_22C90952C();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v33 = &v54 - v32;
  if (v62)
  {
    v54 = v31;
    v55 = v30;
    v34 = *(type metadata accessor for QueryDecorationEntity(0) + 20);
    v62 = a2;
    sub_22C7F4250();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v37 = v57;
        v36 = v58;
        (*(v57 + 32))(v12, v20, v58);
        sub_22C90391C();
        (*(v37 + 8))(v12, v36);
      }

      else
      {
        v39 = sub_22C9093BC();
        sub_22C36C640(v24, 1, 1, v39);
      }
    }

    else
    {
      v38 = v56;
      (*(v56 + 32))(v16, v20, v13);
      sub_22C9039CC();
      (*(v38 + 8))(v16, v13);
    }

    v40 = sub_22C9093BC();
    if (sub_22C370B74(v24, 1, v40) == 1)
    {
      sub_22C36DD28(v24, &qword_27D9BB908, &qword_22C910960);
LABEL_11:
      DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
      v50 = a4;
      v51 = 1;
      return sub_22C36C640(v50, v51, 1, DecorationTupleParameter);
    }

    sub_22C90935C();
    (*(*(v40 - 8) + 8))(v24, v40);
    v42 = v54;
    v41 = v55;
    v43 = (*(v54 + 32))(v33, v29, v55);
    v44 = v59;
    MEMORY[0x2318B6CE0](v43);
    sub_22C9093DC();
    (*(v60 + 8))(v44, v61);
    sub_22C5E94F0();
    v46 = v45;

    (*(v42 + 8))(v33, v41);
    if ((v46 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v47 = sub_22C90981C();
  (*(*(v47 - 8) + 16))(a4, v63, v47);
  v48 = type metadata accessor for QueryDecorationTupleParameter(0);
  v49 = *(v48 + 20);
  sub_22C7F4250();
  v50 = a4;
  v51 = 0;
  DecorationTupleParameter = v48;
  return sub_22C36C640(v50, v51, 1, DecorationTupleParameter);
}

uint64_t sub_22C7E9A1C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  HIDWORD(v233) = a3;
  v232 = a2;
  v288[9] = *MEMORY[0x277D85DE8];
  v285 = sub_22C9063DC();
  v282 = *(v285 - 8);
  v6 = *(v282 + 64);
  v7 = MEMORY[0x28223BE20](v285);
  v9 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v231 - v10;
  v270 = sub_22C90399C();
  v280 = *(v270 - 8);
  v12 = *(v280 + 64);
  v13 = MEMORY[0x28223BE20](v270);
  v248 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v245 = &v231 - v16;
  MEMORY[0x28223BE20](v15);
  v246 = &v231 - v17;
  v269 = sub_22C9039FC();
  v279 = *(v269 - 8);
  v18 = *(v279 + 64);
  v19 = MEMORY[0x28223BE20](v269);
  v247 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v243 = &v231 - v22;
  MEMORY[0x28223BE20](v21);
  v244 = &v231 - v23;
  v281 = sub_22C3A5908(&qword_27D9BAA78, &unk_22C90D110);
  v24 = *(*(v281 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v281);
  v27 = &v231 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v276 = &v231 - v29;
  MEMORY[0x28223BE20](v28);
  v266 = &v231 - v30;
  DecorationEntityValue = type metadata accessor for QueryDecorationEntityValue(0);
  v31 = *(*(DecorationEntityValue - 8) + 64);
  v32 = MEMORY[0x28223BE20](DecorationEntityValue);
  v261 = &v231 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v260 = &v231 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v257 = &v231 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v252 = &v231 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v231 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v231 - v44;
  MEMORY[0x28223BE20](v43);
  v255 = &v231 - v46;
  DecorationTupleParameter = type metadata accessor for QueryDecorationTupleParameter(0);
  v258 = *(DecorationTupleParameter - 8);
  v47 = *(v258 + 64);
  v48 = MEMORY[0x28223BE20](DecorationTupleParameter);
  v50 = &v231 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x28223BE20](v48);
  v271 = &v231 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v275 = &v231 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v265 = &v231 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v273 = &v231 - v58;
  MEMORY[0x28223BE20](v57);
  v274 = &v231 - v59;
  sub_22C3A5908(&qword_27D9C0310, &qword_22C926C68);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_22C90F800;
  *(v60 + 32) = MEMORY[0x277D84FA0];
  sub_22C5EB328(v60);
  v69 = v68;
  v70 = *(a1 + 16);
  HIDWORD(v235) = a4;
  if ((a4 & 1) == 0)
  {
    v87 = (a1 + 32);
    v88 = v70;
    do
    {
      if (!v88)
      {
        goto LABEL_2;
      }

      v89 = *v87++;
      --v88;
    }

    while (*(v89 + 16));

    sub_22C90400C();
    v90 = sub_22C9063CC();
    v91 = sub_22C90AADC();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_22C366000, v90, v91, "Tuple generation: Cannot generate full combinations when a sublist is empty.", v92, 2u);
      MEMORY[0x2318B9880](v92, -1, -1);
    }

    (*(v282 + 8))(v9, v285);
LABEL_27:
    v69 = MEMORY[0x277D84FA0];
    goto LABEL_154;
  }

LABEL_2:
  v71 = 0;
  v241 = a1 + 32;
  v72 = MEMORY[0x277D84F90];
  v242 = v70;
  v272 = v27;
  v251 = v42;
  v250 = v45;
  while (v70 != v71)
  {
    v73 = *(v241 + 8 * v71);
    v74 = *(v73 + 16);
    v27 = *(v72 + 16);
    if (__OFADD__(v27, v74))
    {
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_164:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

LABEL_136:
        MEMORY[0x28223BE20](v212);
        sub_22C88FAFC(0, v11, &v231 - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0));
        v215 = 0;
        v216 = 0;
        v218 = *(v27 + 7);
        v27 += 56;
        v217 = v218;
        v219 = 1 << *(v27 - 24);
        v220 = -1;
        if (v219 < 64)
        {
          v220 = ~(-1 << v219);
        }

        v221 = v220 & v217;
        v222 = (v219 + 63) >> 6;
        v223 = v242;
        while (v221)
        {
          v224 = __clz(__rbit64(v221));
          v221 &= v221 - 1;
          v225 = v224 | (v216 << 6);
LABEL_146:
          if (*(*(*(v69 + 48) + 8 * v225) + 16) == v223)
          {
            *(&v231 + ((v225 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v225;
            v80 = __OFADD__(v215++, 1);
            if (v80)
            {
              __break(1u);
LABEL_150:
              v69 = sub_22C7ECEE4((&v231 - ((v71 + 15) & 0x3FFFFFFFFFFFFFF0)), v11, v215, v69);
              goto LABEL_151;
            }
          }
        }

        v226 = v216;
        while (1)
        {
          v216 = v226 + 1;
          if (__OFADD__(v226, 1))
          {
            break;
          }

          if (v216 >= v222)
          {
            goto LABEL_150;
          }

          v227 = *&v27[8 * v216];
          ++v226;
          if (v227)
          {
            v221 = (v227 - 1) & v227;
            v225 = __clz(__rbit64(v227)) | (v216 << 6);
            goto LABEL_146;
          }
        }
      }

      v230 = swift_slowAlloc();
      v69 = sub_22C7EBD40(v230, v11, v27, sub_22C7F4230);

      MEMORY[0x2318B9880](v230, -1, -1);
LABEL_151:
      if ((v233 & 0x100000000) == 0 && *(v69 + 16) > v232)
      {
        sub_22C8125CC(v232, v69, v288);
        v69 = sub_22C3AF068(v288);
      }

LABEL_154:
      v228 = *MEMORY[0x277D85DE8];
      return v69;
    }

    v75 = *(v241 + 8 * v71);

    if (!swift_isUniquelyReferenced_nonNull_native() || &v27[v74] > *(v72 + 24) >> 1)
    {
      sub_22C595FAC();
      v72 = v76;
    }

    v27 = v272;
    if (*(v73 + 16))
    {
      v77 = *(v72 + 16);
      if ((*(v72 + 24) >> 1) - v77 < v74)
      {
        goto LABEL_161;
      }

      v78 = v72 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v77;
      swift_arrayInitWithCopy();

      v70 = v242;
      if (v74)
      {
        v79 = *(v72 + 16);
        v80 = __OFADD__(v79, v74);
        v81 = v79 + v74;
        if (v80)
        {
          goto LABEL_162;
        }

        *(v72 + 16) = v81;
      }
    }

    else
    {

      v70 = v242;
      if (v74)
      {
        goto LABEL_160;
      }
    }

    ++v71;
  }

  sub_22C3AE7B0(v72, v61, v62, v63, v64, v65, v66, v67, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  if ((v235 & 0x100000000) != 0)
  {

    v84 = v69;
    v85 = v242;
    v86 = v273;
    goto LABEL_28;
  }

  v93 = *(v82 + 16);

  v85 = v242;
  v94 = v93 >= v242;
  v84 = v69;
  v86 = v273;
  if (!v94)
  {

    sub_22C90400C();
    v95 = sub_22C9063CC();
    v96 = sub_22C90AADC();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_22C366000, v95, v96, "Tuple generation: Not enough unique elements to generate full combinations without duplicates.", v97, 2u);
      MEMORY[0x2318B9880](v97, -1, -1);
    }

    (*(v282 + 8))(v11, v285);
    goto LABEL_27;
  }

LABEL_28:
  if (!v85)
  {
LABEL_134:
    if ((v235 & 0x100000000) == 0)
    {
      v212 = MEMORY[0x28223BE20](v83);
      *(&v231 - 2) = v213;
      v27 = v69;
      v214 = *(v69 + 32);
      v11 = ((1 << v214) + 63) >> 6;
      v71 = 8 * v11;
      if ((v214 & 0x3Fu) <= 0xD)
      {
        goto LABEL_136;
      }

      goto LABEL_164;
    }

    goto LABEL_151;
  }

  v98 = 0;
  v268 = (v280 + 8);
  v267 = (v279 + 8);
  v262 = (v280 + 32);
  v259 = (v279 + 32);
  v99 = v274;
LABEL_30:
  v100 = *(v241 + 8 * v98);
  v234 = v98 + 1;
  v287 = MEMORY[0x277D84FA0];
  v101 = *(v84 + 56);
  v238 = v84 + 56;
  v102 = 1 << *(v84 + 32);
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  else
  {
    v103 = -1;
  }

  v104 = v103 & v101;
  v237 = (v102 + 63) >> 6;

  v105 = 0;
  v236 = v84;
  v253 = v100;
  while (2)
  {
    if (v104)
    {
      goto LABEL_39;
    }

    do
    {
      v106 = v105 + 1;
      if (__OFADD__(v105, 1))
      {
        goto LABEL_157;
      }

      if (v106 >= v237)
      {

        v84 = v287;
        if ((v233 & 0x100000000) == 0 && *(v287 + 16) >= v232)
        {
          goto LABEL_158;
        }

        v98 = v234;
        if (v234 == v242)
        {
          v69 = v287;
          goto LABEL_134;
        }

        goto LABEL_30;
      }

      v104 = *(v238 + 8 * v106);
      ++v105;
    }

    while (!v104);
    v105 = v106;
LABEL_39:
    v239 = v104;
    v107 = *(v84 + 48);
    v240 = v105;
    v108 = *(v107 + ((v105 << 9) | (8 * __clz(__rbit64(v104)))));
    if ((v235 & 0x100000000) != 0)
    {
      swift_bridgeObjectRetain_n();
      sub_22C6A6204(v288, v108, v109, v110, v111, v112, v113, v114, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);
      v99 = v274;
    }

    else
    {
    }

    v84 = v271;
    v256 = *(v100 + 16);
    if (!v256)
    {
LABEL_129:
      v104 = (v239 - 1) & v239;

      v84 = v236;
      v105 = v240;
      continue;
    }

    break;
  }

  v254 = v100 + ((*(v258 + 80) + 32) & ~*(v258 + 80));
  v285 = v108 + 56;

  v115 = 0;
  v280 = v108;
LABEL_44:
  if (v115 >= *(v100 + 16))
  {
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    v69 = v84;
    goto LABEL_134;
  }

  v116 = *(v258 + 72);
  v263 = v115;
  sub_22C7F4250();
  if (*(v108 + 16))
  {
    v117 = *(v108 + 40);
    sub_22C90B62C();
    sub_22C9097DC();
    sub_22C909FFC();

    v118 = (v99 + *(DecorationTupleParameter + 20));
    v282 = *v118;
    MEMORY[0x2318B8B10]();
    DecorationEntity = type metadata accessor for QueryDecorationEntity(0);
    v119 = *(DecorationEntity + 20);
    v279 = v118;
    v277 = v119;
    sub_22C7F4250();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v121 = EnumCaseMultiPayload;
    if (EnumCaseMultiPayload)
    {
      v108 = v280;
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_51;
      }

      v122 = v268;
      v123 = v270;
      v121 = 1;
    }

    else
    {
      v122 = v267;
      v123 = v269;
      v108 = v280;
    }

    (*v122)(v255, v123);
LABEL_51:
    sub_22C90B62C();
    MEMORY[0x2318B8B10](v121);
    v124 = sub_22C90B66C();
    MEMORY[0x2318B8B10](v124);
    v125 = sub_22C90B66C();
    v126 = -1 << *(v108 + 32);
    v127 = v125 & ~v126;
    if ((*(v285 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127))
    {
      v128 = ~v126;
      while (1)
      {
        v129 = *(v108 + 48);
        sub_22C7F4250();
        if (sub_22C9097CC())
        {
          v130 = (v86 + *(DecorationTupleParameter + 20));
          if (*v130 == v282)
          {
            break;
          }
        }

        sub_22C7F4300(v86, type metadata accessor for QueryDecorationTupleParameter);
LABEL_68:
        v127 = (v127 + 1) & v128;
        if (((*(v285 + ((v127 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v127) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

      v131 = *(v281 + 48);
      v132 = v130 + *(DecorationEntity + 20);
      v133 = v266;
      sub_22C7F4250();
      sub_22C7F4250();
      v134 = swift_getEnumCaseMultiPayload();
      if (v134)
      {
        if (v134 == 1)
        {
          v135 = v251;
          sub_22C7F4250();
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v136 = v246;
            v137 = v270;
            (*v262)(v246, v133 + v131, v270);
            LODWORD(v264) = sub_22C90393C();
            v138 = *v268;
            (*v268)(v136, v137);
            sub_22C7F4300(v273, type metadata accessor for QueryDecorationTupleParameter);
            v138(v135, v137);
            if (v264)
            {
              v210 = v274;
              sub_22C7F4300(v274, type metadata accessor for QueryDecorationTupleParameter);
              v211 = v133;
              v99 = v210;
              v83 = sub_22C7F4300(v211, type metadata accessor for QueryDecorationEntityValue);
              v27 = v272;
              v84 = v271;
              goto LABEL_123;
            }

            sub_22C7F4300(v133, type metadata accessor for QueryDecorationEntityValue);
            v27 = v272;
            v84 = v271;
            v86 = v273;
            goto LABEL_67;
          }

          v86 = v273;
          sub_22C7F4300(v273, type metadata accessor for QueryDecorationTupleParameter);
          (*v268)(v135, v270);
        }

        else
        {
          v140 = v273;
          sub_22C7F4300(v273, type metadata accessor for QueryDecorationTupleParameter);
          v86 = v140;
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v208 = v274;
            sub_22C7F4300(v274, type metadata accessor for QueryDecorationTupleParameter);
            v209 = v133;
            v99 = v208;
            v83 = sub_22C7F4300(v209, type metadata accessor for QueryDecorationEntityValue);
            goto LABEL_124;
          }
        }
      }

      else
      {
        v139 = v250;
        sub_22C7F4250();
        if (!swift_getEnumCaseMultiPayload())
        {
          v141 = v244;
          v142 = v269;
          (*v259)(v244, v133 + v131, v269);
          LODWORD(v264) = sub_22C9039EC();
          v143 = *v267;
          (*v267)(v141, v142);
          v86 = v273;
          sub_22C7F4300(v273, type metadata accessor for QueryDecorationTupleParameter);
          v144 = v142;
          v84 = v271;
          v143(v139, v144);
          v27 = v272;
          sub_22C7F4300(v266, type metadata accessor for QueryDecorationEntityValue);
          v99 = v274;
          v108 = v280;
          if (v264)
          {
            v83 = sub_22C7F4300(v274, type metadata accessor for QueryDecorationTupleParameter);
            v100 = v253;
            goto LABEL_125;
          }

          goto LABEL_68;
        }

        v86 = v273;
        sub_22C7F4300(v273, type metadata accessor for QueryDecorationTupleParameter);
        (*v267)(v139, v269);
      }

      sub_22C36DD28(v133, &qword_27D9BAA78, &unk_22C90D110);
LABEL_67:
      v108 = v280;
      goto LABEL_68;
    }
  }

LABEL_72:
  v145 = v265;
  sub_22C7F4250();
  v146 = *(v108 + 40);
  sub_22C90B62C();

  sub_22C9097DC();
  sub_22C909FFC();

  v147 = (v145 + *(DecorationTupleParameter + 20));
  v282 = *v147;
  MEMORY[0x2318B8B10]();
  v279 = type metadata accessor for QueryDecorationEntity(0);
  v148 = *(v279 + 20);
  DecorationEntity = v147;
  v277 = v148;
  v149 = sub_22C7E5918();
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v149);
  v150 = sub_22C90B66C();
  MEMORY[0x2318B8B10](v150);
  v151 = sub_22C90B66C();
  v152 = -1 << *(v108 + 32);
  v153 = v151 & ~v152;
  if ((*(v285 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153))
  {
    v154 = ~v152;
    do
    {
      v155 = *(v108 + 48);
      sub_22C7F4250();
      if ((sub_22C9097CC() & 1) != 0 && (v156 = &v50[*(DecorationTupleParameter + 20)], *v156 == v282))
      {
        v157 = *(v281 + 48);
        v158 = &v156[*(v279 + 20)];
        sub_22C7F4250();
        sub_22C7F4250();
        v159 = swift_getEnumCaseMultiPayload();
        if (v159)
        {
          if (v159 == 1)
          {
            v160 = v261;
            sub_22C7F4250();
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v161 = &v27[v157];
              v162 = v248;
              v163 = v270;
              (*v262)(v248, v161, v270);
              LODWORD(v264) = sub_22C90393C();
              v164 = v27;
              v165 = *v268;
              (*v268)(v162, v163);
              sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
              v165(v160, v163);
              if (v264)
              {
                sub_22C7F4300(v265, type metadata accessor for QueryDecorationTupleParameter);
                sub_22C7F4300(v164, type metadata accessor for QueryDecorationEntityValue);
                v108 = v280;
                v27 = v164;
                v84 = v271;
LABEL_122:
                sub_22C6A6204(v288, v108, v202, v203, v204, v205, v206, v207, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254);

                v99 = v274;
                v83 = sub_22C7F4300(v274, type metadata accessor for QueryDecorationTupleParameter);
LABEL_123:
                v86 = v273;
LABEL_124:
                v100 = v253;
                v108 = v280;
LABEL_125:
                v115 = v263 + 1;
                if (v263 + 1 == v256)
                {

                  goto LABEL_129;
                }

                goto LABEL_44;
              }

              sub_22C7F4300(v164, type metadata accessor for QueryDecorationEntityValue);
              v27 = v164;
              v84 = v271;
              v145 = v265;
              goto LABEL_88;
            }

            sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
            (*v268)(v160, v270);
          }

          else
          {
            sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              sub_22C7F4300(v145, type metadata accessor for QueryDecorationTupleParameter);
              sub_22C7F4300(v27, type metadata accessor for QueryDecorationEntityValue);
              v108 = v280;
              goto LABEL_122;
            }
          }

LABEL_87:
          sub_22C36DD28(v27, &qword_27D9BAA78, &unk_22C90D110);
LABEL_88:
          v108 = v280;
          goto LABEL_89;
        }

        v166 = v260;
        sub_22C7F4250();
        if (swift_getEnumCaseMultiPayload())
        {
          sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
          (*v267)(v166, v269);
          goto LABEL_87;
        }

        v167 = &v27[v157];
        v168 = v247;
        v169 = v269;
        (*v259)(v247, v167, v269);
        LODWORD(v264) = sub_22C9039EC();
        v170 = *v267;
        (*v267)(v168, v169);
        sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
        v84 = v271;
        v171 = v169;
        v145 = v265;
        v170(v166, v171);
        v27 = v272;
        sub_22C7F4300(v272, type metadata accessor for QueryDecorationEntityValue);
        v108 = v280;
        if (v264)
        {
          sub_22C7F4300(v145, type metadata accessor for QueryDecorationTupleParameter);
          goto LABEL_122;
        }
      }

      else
      {
        sub_22C7F4300(v50, type metadata accessor for QueryDecorationTupleParameter);
      }

LABEL_89:
      v153 = (v153 + 1) & v154;
    }

    while (((*(v285 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22C7F4250();
  v286 = v108;
  if (*(v108 + 24) > *(v108 + 16))
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C5E2F48();
    }

    goto LABEL_120;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_22C5E197C();
  }

  else
  {
    sub_22C5E58C0();
  }

  v173 = v286;
  v174 = *(v286 + 40);
  sub_22C90B62C();
  v175 = v275;
  sub_22C9097DC();
  sub_22C909FFC();

  v176 = &v175[*(DecorationTupleParameter + 20)];
  v282 = *v176;
  MEMORY[0x2318B8B10]();
  v177 = *(v279 + 20);
  DecorationEntity = v176;
  v277 = v177;
  LOBYTE(v175) = sub_22C7E5918();
  sub_22C90B62C();
  MEMORY[0x2318B8B10](v175);
  v178 = sub_22C90B66C();
  MEMORY[0x2318B8B10](v178);
  v179 = sub_22C90B66C();
  v180 = v173 + 56;
  v181 = -1 << *(v173 + 32);
  v153 = v179 & ~v181;
  if (((*(v173 + 56 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
  {
LABEL_120:
    v108 = v286;
    *(v286 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v153;
    v199 = *(v108 + 48);
    sub_22C7F42A8();
    v83 = sub_22C7F4300(v265, type metadata accessor for QueryDecorationTupleParameter);
    v200 = *(v108 + 16);
    v80 = __OFADD__(v200, 1);
    v201 = v200 + 1;
    if (!v80)
    {
      *(v108 + 16) = v201;
      goto LABEL_122;
    }

    goto LABEL_156;
  }

  v182 = ~v181;
  v264 = v173;
  while (1)
  {
    v183 = *(v173 + 48);
    sub_22C7F4250();
    if ((sub_22C9097CC() & 1) == 0 || (v184 = (v84 + *(DecorationTupleParameter + 20)), *v184 != v282))
    {
      sub_22C7F4300(v84, type metadata accessor for QueryDecorationTupleParameter);
      goto LABEL_116;
    }

    v185 = *(v281 + 48);
    v186 = v184 + *(v279 + 20);
    sub_22C7F4250();
    sub_22C7F4250();
    v187 = swift_getEnumCaseMultiPayload();
    if (v187)
    {
      break;
    }

    v188 = v276;
    v194 = v252;
    sub_22C7F4250();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C7F4300(v84, type metadata accessor for QueryDecorationTupleParameter);
      (*v267)(v194, v269);
      goto LABEL_114;
    }

    v195 = v243;
    v196 = v269;
    (*v259)(v243, v188 + v185, v269);
    HIDWORD(v249) = sub_22C9039EC();
    v197 = *v267;
    (*v267)(v195, v196);
    sub_22C7F4300(v271, type metadata accessor for QueryDecorationTupleParameter);
    v198 = v196;
    v84 = v271;
    v197(v252, v198);
    sub_22C7F4300(v188, type metadata accessor for QueryDecorationEntityValue);
    v27 = v272;
    v173 = v264;
    if ((v249 & 0x100000000) != 0)
    {
      goto LABEL_168;
    }

LABEL_116:
    v153 = (v153 + 1) & v182;
    if (((*(v180 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
    {
      goto LABEL_120;
    }
  }

  if (v187 == 1)
  {
    v188 = v276;
    v189 = v257;
    sub_22C7F4250();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v190 = v245;
      v191 = v270;
      (*v262)(v245, v188 + v185, v270);
      HIDWORD(v249) = sub_22C90393C();
      v192 = *v268;
      (*v268)(v190, v191);
      v193 = v192;
      sub_22C7F4300(v271, type metadata accessor for QueryDecorationTupleParameter);
      v84 = v271;
      v193(v257, v191);
      if ((v249 & 0x100000000) != 0)
      {
        goto LABEL_167;
      }

      sub_22C7F4300(v188, type metadata accessor for QueryDecorationEntityValue);
      goto LABEL_115;
    }

    sub_22C7F4300(v84, type metadata accessor for QueryDecorationTupleParameter);
    (*v268)(v189, v270);
LABEL_114:
    sub_22C36DD28(v188, &qword_27D9BAA78, &unk_22C90D110);
LABEL_115:
    v27 = v272;
    v173 = v264;
    goto LABEL_116;
  }

  sub_22C7F4300(v84, type metadata accessor for QueryDecorationTupleParameter);
  v188 = v276;
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_114;
  }

LABEL_167:
  sub_22C7F4300(v188, type metadata accessor for QueryDecorationEntityValue);
LABEL_168:
  result = sub_22C90B53C();
  __break(1u);
  return result;
}

uint64_t sub_22C7EBBA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  DecorationTuple = type metadata accessor for QueryDecorationTuple(0);
  v6 = DecorationTuple - 8;
  v7 = *(*(DecorationTuple - 8) + 64);
  v8 = MEMORY[0x28223BE20](DecorationTuple);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  v13 = *a1;
  v14 = sub_22C9037EC();
  (*(*(v14 - 8) + 16))(v10, a3, v14);
  *&v10[*(v6 + 28)] = v13;

  sub_22C6A5F0C();
  return sub_22C7F4300(v12, type metadata accessor for QueryDecorationTuple);
}

uint64_t sub_22C7EBCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  return sub_22C7E9488(*(v2 + 40), a1, *(v2 + 24) ^ 1u, a2);
}

void *sub_22C7EBD40(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_22C7ED840(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_22C7EBDD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF0A0, &unk_22C922100);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v31 = v4;
      while (v9)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = (*(v4 + 48) + 16 * (v12 | (v10 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v8 + 40);
        sub_22C90B62C();

        sub_22C909FFC();
        sub_22C90B66C();
        v21 = *(v8 + 32);
        sub_22C36C03C();
        v23 = *(v11 + 8 * v22);
        sub_22C37AC88();
        if (v24)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v24)
            {
              if (v27)
              {
                goto LABEL_29;
              }
            }

            if (v26 == v28)
            {
              v26 = 0;
            }

            if (*(v11 + 8 * v26) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v29 = (*(v8 + 48) + 16 * v25);
        *v29 = v18;
        v29[1] = v19;
        sub_22C386020();
        if (v30)
        {
          goto LABEL_30;
        }

        v4 = v31;
      }

      v13 = v10;
      while (1)
      {
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        sub_22C7F4828();
        if (v14)
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7EBF94()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = sub_22C388410();
  v6 = type metadata accessor for PromptTreeIdentifier.Label(v5);
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  if (!v0)
  {
LABEL_28:

LABEL_29:
    sub_22C36CC48();
    return;
  }

  if (*(v4 + 16) == v0)
  {
    goto LABEL_29;
  }

  sub_22C3A5908(&qword_27D9BF160, &qword_22C921FC8);
  v8 = sub_22C37E8A8();
  v9 = v8;
  if (v1 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *v2;
  }

  v11 = 0;
  v12 = v8 + 56;
  v29 = v4;
  while (v10)
  {
    sub_22C3D34C8();
LABEL_16:
    v16 = *(v4 + 48);
    v17 = *(v30 + 72);
    sub_22C7F4250();
    v18 = *(v9 + 40);
    sub_22C90B62C();
    sub_22C48640C();
    sub_22C90B66C();
    v19 = *(v9 + 32);
    sub_22C36C03C();
    v21 = *(v12 + 8 * v20);
    sub_22C37AC88();
    if (v22)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v22)
        {
          if (v25)
          {
            goto LABEL_31;
          }
        }

        if (v24 == v26)
        {
          v24 = 0;
        }

        if (*(v12 + 8 * v24) != -1)
        {
          sub_22C36D900();
          goto LABEL_26;
        }
      }
    }

    sub_22C37F394();
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v27 = *(v9 + 48);
    sub_22C7F42A8();
    ++*(v9 + 16);
    if (__OFSUB__(v0--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v0)
    {
      goto LABEL_28;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= v1)
    {
      goto LABEL_28;
    }

    ++v13;
    if (v2[v11])
    {
      sub_22C375A38();
      v10 = v15 & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_22C7EC1E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF078, &unk_22C926CB0);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 24;
      v34 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v19 = *v17;
        v18 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v8 + 40);
        sub_22C90B62C();
        MEMORY[0x2318B8B30](v19 >> 14);
        MEMORY[0x2318B8B30](v18 >> 14);
        MEMORY[0x2318B8B10](v20);
        sub_22C90B66C();
        v22 = *(v8 + 32);
        sub_22C36C03C();
        v24 = *(v11 + 8 * v23);
        sub_22C37AC88();
        if (v25)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v25)
            {
              if (v27)
              {
                goto LABEL_29;
              }
            }

            if (v26 == v28)
            {
              v26 = 0;
            }

            if (*(v11 + 8 * v26) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        sub_22C36D914();
        *(v11 + v29) |= v30;
        v32 = *(v8 + 48) + 24 * v31;
        *v32 = v19;
        *(v32 + 8) = v18;
        *(v32 + 16) = v20;
        sub_22C386020();
        if (v33)
        {
          goto LABEL_30;
        }

        v4 = v34;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7EC3CC()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C388410();
  v33 = sub_22C901FAC();
  v7 = sub_22C369824(v33);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  if (!v1)
  {
LABEL_27:

LABEL_28:
    sub_22C36CC48();
    return;
  }

  if (*(v6 + 16) == v1)
  {
    goto LABEL_28;
  }

  sub_22C3A5908(&qword_27D9BF120, &unk_22C926C80);
  v10 = sub_22C37E8A8();
  if (v2 >= 1)
  {
    v11 = *v3;
  }

  sub_22C3745DC();
  while (v12)
  {
    sub_22C3813F0();
LABEL_15:
    v17 = sub_22C37B7E4();
    v18(v17);
    v19 = *(v10 + 40);
    sub_22C371E00();
    sub_22C7F4358(&qword_2814357B0, v20);
    sub_22C7F4780();
    v21 = *(v10 + 32);
    sub_22C36C03C();
    v23 = *(v0 + 8 * v22);
    sub_22C37AC88();
    if (v24)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v24)
        {
          if (v27)
          {
            goto LABEL_30;
          }
        }

        if (v26 == v28)
        {
          v26 = 0;
        }

        sub_22C5E7554(v26);
        if (!v24)
        {
          sub_22C36D900();
          goto LABEL_25;
        }
      }
    }

    sub_22C37F394();
LABEL_25:
    v29 = sub_22C7F443C(v25);
    v30(v29);
    sub_22C7F455C();
    if (v31)
    {
      goto LABEL_31;
    }

    v12 = v32;
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v2)
    {
      goto LABEL_27;
    }

    sub_22C7F4828();
    if (v14)
    {
      sub_22C375A38();
      v32 = v16 & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_22C7EC5C0()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C388410();
  v32 = sub_22C90952C();
  v7 = sub_22C369824(v32);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  if (!v1)
  {
LABEL_27:

LABEL_28:
    sub_22C36CC48();
    return;
  }

  if (*(v6 + 16) == v1)
  {
    goto LABEL_28;
  }

  sub_22C3A5908(&qword_27D9BF0A8, &unk_22C921F20);
  v10 = sub_22C37E8A8();
  if (v2 >= 1)
  {
    v11 = *v3;
  }

  sub_22C3745DC();
  while (v12)
  {
    sub_22C3813F0();
LABEL_15:
    v17 = sub_22C37B7E4();
    v18(v17);
    v19 = *(v10 + 40);
    sub_22C7F4358(&qword_28142FA80, MEMORY[0x277D72D58]);
    sub_22C7F4780();
    v20 = *(v10 + 32);
    sub_22C36C03C();
    v22 = *(v0 + 8 * v21);
    sub_22C37AC88();
    if (v23)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v23)
        {
          if (v26)
          {
            goto LABEL_30;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        sub_22C5E7554(v25);
        if (!v23)
        {
          sub_22C36D900();
          goto LABEL_25;
        }
      }
    }

    sub_22C37F394();
LABEL_25:
    v28 = sub_22C7F443C(v24);
    v29(v28);
    sub_22C7F455C();
    if (v30)
    {
      goto LABEL_31;
    }

    v12 = v31;
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v2)
    {
      goto LABEL_27;
    }

    sub_22C7F4828();
    if (v14)
    {
      sub_22C375A38();
      v31 = v16 & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_22C7EC7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v122 = sub_22C908C5C();
  v30 = sub_22C369824(v122);
  v120 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22C3698A8();
  v131 = v34;
  sub_22C36BA0C();
  v130 = sub_22C901FAC();
  v35 = sub_22C369824(v130);
  v119 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C36D234(v39);
  v40 = sub_22C3A5908(&qword_27D9BF0F0, &qword_22C921F58);
  v41 = sub_22C369914(v40);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v41);
  sub_22C369ABC();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v106 - v48;
  if (!v25)
  {
LABEL_33:

LABEL_34:
    sub_22C36CC48();
    return;
  }

  if (*(v23 + 16) == v25)
  {
    goto LABEL_34;
  }

  sub_22C3A5908(&qword_27D9BF0F8, &unk_22C921F60);
  v50 = sub_22C90AEFC();
  v51 = v50;
  if (v27 < 1)
  {
    v52 = 0;
  }

  else
  {
    v52 = *v29;
  }

  v53 = 0;
  v117 = v119 + 16;
  v116 = v120 + 16;
  v54 = (v119 + 32);
  v128 = v120 + 32;
  v124 = v119 + 8;
  v123 = v120 + 8;
  v110 = v50 + 56;
  v108 = v27;
  v107 = v29;
  v127 = v46;
  v118 = v49;
  v115 = (v119 + 32);
  v109 = v23;
  v111 = v50;
  while (v52)
  {
    v114 = v25;
    v112 = (v52 - 1) & v52;
    v113 = v53;
    v55 = __clz(__rbit64(v52)) | (v53 << 6);
LABEL_16:
    v62 = *(*(v23 + 48) + 8 * v55);
    v63 = v51[5];
    sub_22C90B62C();
    v64 = v62 + 64;
    v65 = 1 << *(v62 + 32);
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    else
    {
      v66 = -1;
    }

    v67 = v66 & *(v62 + 64);
    v126 = (v65 + 63) >> 6;
    v121 = v62;
    swift_bridgeObjectRetain_n();
    v68 = 0;
    v69 = 0;
    v70 = v122;
    for (i = v62 + 64; ; v64 = i)
    {
      v132 = v68;
      if (!v67)
      {
        v72 = v127;
        while (1)
        {
          v71 = v69 + 1;
          if (__OFADD__(v69, 1))
          {
            break;
          }

          if (v71 >= v126)
          {
            v101 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
            sub_22C374D84(v72, v102, v103, v101);
            v67 = 0;
            goto LABEL_28;
          }

          v67 = *(v64 + 8 * v71);
          ++v69;
          if (v67)
          {
            v69 = v71;
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_36;
      }

      v71 = v69;
LABEL_27:
      v73 = __clz(__rbit64(v67));
      v67 &= v67 - 1;
      v74 = v73 | (v71 << 6);
      v75 = v121;
      v76 = v119;
      v77 = v129;
      v78 = v130;
      (*(v119 + 16))(v129, *(v121 + 48) + *(v119 + 72) * v74, v130);
      v79 = v120;
      v80 = v131;
      (*(v120 + 16))(v131, *(v75 + 56) + *(v120 + 72) * v74, v70);
      v81 = *(sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0) + 48);
      v82 = *(v76 + 32);
      v83 = v127;
      v84 = v77;
      v54 = v115;
      v82(v127, v84, v78);
      v85 = v83 + v81;
      v70 = v122;
      (*(v79 + 32))(v85, v80, v122);
      sub_22C633C54();
      sub_22C36C640(v86, v87, v88, v89);
      v49 = v118;
LABEL_28:
      sub_22C407C2C();
      v90 = sub_22C3A5908(&qword_27D9BF100, &qword_22C922FE0);
      sub_22C36D3E0(v49);
      if (v91)
      {
        break;
      }

      v92 = *(v90 + 48);
      v93 = v129;
      v94 = v130;
      (*v54)(v129, v49, v130);
      sub_22C36BA4C(&a17);
      v95 = v131;
      v96(v131, &v49[v92], v70);
      memcpy(v133, v134, sizeof(v133));
      sub_22C371E00();
      sub_22C7F4358(&qword_2814357B0, v97);
      sub_22C909F8C();
      sub_22C36BA4C(&a13);
      v98(v93, v94);
      sub_22C380600();
      sub_22C7F4358(&qword_27D9BAA90, v99);
      sub_22C909F8C();
      sub_22C36BA4C(&a12);
      v100(v95, v70);
      v68 = sub_22C90B66C() ^ v132;
    }

    sub_22C38B1DC(&a10);

    MEMORY[0x2318B8B10](v132);
    sub_22C90B66C();
    v51 = v111;
    v104 = -1 << *(v111 + 32);
    sub_22C5CAC28(v134);
    v105 = sub_22C90AE8C();
    *(&qword_27D9BF100 + ((v105 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v105;
    *(v51[6] + 8 * v105) = &qword_22C922FE0;
    ++v51[2];
    v25 = v114 - 1;
    if (__OFSUB__(v114, 1))
    {
      goto LABEL_37;
    }

    v23 = v109;
    v27 = v108;
    v29 = v107;
    v53 = v113;
    v52 = v112;
    if (v114 == 1)
    {
      goto LABEL_33;
    }
  }

  v56 = v53;
  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v27)
    {
      goto LABEL_33;
    }

    ++v56;
    if (v29[v57])
    {
      v114 = v25;
      sub_22C375A38();
      v112 = v59 & v58;
      v113 = v60;
      v55 = v61 | (v60 << 6);
      goto LABEL_16;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

unint64_t sub_22C7ECEE4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_22C3A5908(&qword_27D9BF098, &unk_22C921F10);
  result = sub_22C90AEFC();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
    v17 = *(v6 + 40);
    sub_22C90B62C();

    sub_22C7E6754();
    sub_22C90B66C();
    v18 = -1 << *(v6 + 32);
    result = sub_22C90AE8C();
    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(*(v6 + 48) + 8 * result) = v16;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
LABEL_18:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_18;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_22C7ED08C()
{
  sub_22C36BA7C();
  v6 = v5;
  sub_22C388410();
  v32 = sub_22C908EAC();
  v7 = sub_22C369824(v32);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  if (!v1)
  {
LABEL_27:

LABEL_28:
    sub_22C36CC48();
    return;
  }

  if (*(v6 + 16) == v1)
  {
    goto LABEL_28;
  }

  sub_22C3A5908(&qword_27D9BF0E0, &qword_22C921F50);
  v10 = sub_22C37E8A8();
  if (v2 >= 1)
  {
    v11 = *v3;
  }

  sub_22C3745DC();
  while (v12)
  {
    sub_22C3813F0();
LABEL_15:
    v17 = sub_22C37B7E4();
    v18(v17);
    v19 = *(v10 + 40);
    sub_22C7F4358(&qword_27D9BAA80, MEMORY[0x277D72238]);
    sub_22C7F4780();
    v20 = *(v10 + 32);
    sub_22C36C03C();
    v22 = *(v0 + 8 * v21);
    sub_22C37AC88();
    if (v23)
    {
      sub_22C370840();
      while (1)
      {
        sub_22C36D130();
        if (v23)
        {
          if (v26)
          {
            goto LABEL_30;
          }
        }

        if (v25 == v27)
        {
          v25 = 0;
        }

        sub_22C5E7554(v25);
        if (!v23)
        {
          sub_22C36D900();
          goto LABEL_25;
        }
      }
    }

    sub_22C37F394();
LABEL_25:
    v28 = sub_22C7F443C(v24);
    v29(v28);
    sub_22C7F455C();
    if (v30)
    {
      goto LABEL_31;
    }

    v12 = v31;
  }

  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v2)
    {
      goto LABEL_27;
    }

    sub_22C7F4828();
    if (v14)
    {
      sub_22C375A38();
      v31 = v16 & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_22C7ED290(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a3)
  {
    if (*(a4 + 16) != a3)
    {
      sub_22C3A5908(&qword_27D9BF0E8, &unk_22C926C70);
      v7 = sub_22C37E8A8();
      v8 = v7;
      if (a2 < 1)
      {
        v9 = 0;
      }

      else
      {
        v9 = *a1;
      }

      v10 = 0;
      v11 = v7 + 56;
      v12 = 24;
      v34 = v4;
      while (v9)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_16:
        v17 = *(v4 + 48) + (v13 | (v10 << 6)) * v12;
        v18 = *v17;
        v19 = *(v17 + 8);
        v20 = *(v17 + 16);
        v21 = *(v8 + 40);
        sub_22C90B62C();

        sub_22C909FFC();
        sub_22C90B64C();
        sub_22C90B66C();
        v22 = *(v8 + 32);
        sub_22C36C03C();
        v24 = *(v11 + 8 * v23);
        sub_22C37AC88();
        if (v25)
        {
          sub_22C370840();
          while (1)
          {
            sub_22C36D130();
            if (v25)
            {
              if (v27)
              {
                goto LABEL_29;
              }
            }

            if (v26 == v28)
            {
              v26 = 0;
            }

            if (*(v11 + 8 * v26) != -1)
            {
              sub_22C36D900();
              goto LABEL_26;
            }
          }
        }

        sub_22C37F394();
LABEL_26:
        sub_22C36D914();
        *(v11 + v29) |= v30;
        v32 = *(v8 + 48) + 24 * v31;
        *v32 = v18;
        *(v32 + 8) = v19;
        *(v32 + 16) = v20;
        sub_22C386020();
        if (v33)
        {
          goto LABEL_30;
        }

        v4 = v34;
      }

      v14 = v10;
      while (1)
      {
        v10 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v10 >= a2)
        {
          goto LABEL_5;
        }

        ++v14;
        if (a1[v10])
        {
          sub_22C375A38();
          v9 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_22C7ED470(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v7 = 0;
  v9 = a3 + 56;
  v8 = *(a3 + 56);
  v10 = *(a3 + 32);
  sub_22C36D280();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  while (v13)
  {
    sub_22C3D34C8();
LABEL_9:
    v20 = v16 | (v7 << 6);
    v21 = *(a3 + 48) + 24 * v20;
    v22 = *(v21 + 16);
    v27 = *v21;
    v28 = v22;
    v23 = a4(&v27);
    if (v4)
    {
      return;
    }

    if (v23)
    {
      sub_22C36D180((v20 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_14:

        sub_22C7EC1E8(a1, a2, v29, a3);
        return;
      }
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v15)
    {
      goto LABEL_14;
    }

    ++v17;
    if (*(v9 + 8 * v7))
    {
      sub_22C375A38();
      v13 = v19 & v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C7ED624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t (*a6)(void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v39 = a2;
  v40 = a7;
  v46 = a4;
  v41 = a1;
  v49 = a6(0);
  sub_22C369824(v49);
  v10 = *(v9 + 64);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  v47 = a3;
  v48 = &v39 - v12;
  v13 = 0;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v16 = *(v14 - 24);
  sub_22C36D280();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v44 = v22 + 16;
  v45 = v22;
  v42 = 0;
  v43 = v22 + 8;
  while (v19)
  {
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = v23 | (v13 << 6);
    v25 = v49;
    v26 = v48;
LABEL_9:
    (*(v45 + 16))(v26, *(v47 + 48) + *(v45 + 72) * v24, v25);
    v31 = v46(v26);
    if (v7)
    {
      v37 = sub_22C7F4814();
      v38(v37);
      return;
    }

    v32 = v31;
    v33 = sub_22C7F4814();
    v34(v33);
    if (v32)
    {
      sub_22C36D180((v24 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
LABEL_14:
        v36 = v47;

        v40(v41, v39, v42, v36);
        return;
      }
    }
  }

  v27 = v13;
  v25 = v49;
  v26 = v48;
  while (1)
  {
    v13 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v13 >= v21)
    {
      goto LABEL_14;
    }

    ++v27;
    if (*(v14 + 8 * v13))
    {
      sub_22C375A38();
      v19 = v29 & v28;
      v24 = v30 | (v13 << 6);
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_22C7ED840(unint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v19 = 0;
  v18 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v22 = *(*(a3 + 48) + 8 * v14);

    v15 = a4(&v22);

    if (v4)
    {
      return result;
    }

    if (v15)
    {
      *(v18 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_22C7ECEE4(v18, a2, v19, a3);
      }
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
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_22C7ED9B0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v30 = a4;
  v27 = 0;
  v6 = 0;
  v8 = a3 + 56;
  v7 = *(a3 + 56);
  v9 = *(a3 + 32);
  sub_22C36D280();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  while (v12)
  {
    sub_22C3D34C8();
LABEL_9:
    v19 = v15 | (v6 << 6);
    v20 = *(a3 + 48) + 24 * v19;
    v22 = *v20;
    v21 = *(v20 + 8);
    LOBYTE(v20) = *(v20 + 16);
    v28[0] = v22;
    v28[1] = v21;
    v29 = v20;

    v23 = v30(v28);

    if (v4)
    {
      return;
    }

    if (v23)
    {
      sub_22C36D180((v19 >> 3) & 0x1FFFFFFFFFFFFFF8);
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_14:

        sub_22C7ED290(a1, a2, v27, a3);
        return;
      }
    }
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v14)
    {
      goto LABEL_14;
    }

    ++v16;
    if (*(v8 + 8 * v6))
    {
      sub_22C375A38();
      v12 = v18 & v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_22C7EDAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v915 = v24;
  v25 = sub_22C901FAC();
  v26 = sub_22C369824(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v33 = (v31 - v32);
  MEMORY[0x28223BE20](v34);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  v1037[2] = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v39);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v42);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v43);
  sub_22C36BA64();
  v45 = sub_22C3698F8(v44);
  v1043 = type metadata accessor for SegmentedPrompt.DeferredReference.TypeIdentifierReference(v45);
  v46 = sub_22C36985C(v1043);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v49);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v50);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v51);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v52);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v53);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v54);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v55);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA58();
  v1038 = v57;
  sub_22C369930();
  MEMORY[0x28223BE20](v58);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v59);
  sub_22C36BA64();
  sub_22C3698F8(v60);
  v1042 = sub_22C90069C();
  v61 = sub_22C369824(v1042);
  v63 = v62;
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v61);
  sub_22C3698A8();
  v1041 = v66;
  v67 = sub_22C36BA0C();
  v68 = type metadata accessor for SegmentedPrompt.DeferredReference(v67);
  v69 = sub_22C36985C(v68);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v69);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v72);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v73);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v74);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v75);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v76);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v77);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v78);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v79);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v80);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v81);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v82);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v83);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v84);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v85);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v86);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v87);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v88);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v89);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v90);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v91);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v92);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v93);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v94);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v95);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v96);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v97);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v98);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v99);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v100);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v101);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v102);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v103);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v104);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v105);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v106);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v107);
  sub_22C36BA58();
  v1045 = v108;
  sub_22C369930();
  MEMORY[0x28223BE20](v109);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v110);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v111);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v112);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v113);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v114);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v115);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v116);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v117);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v118);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v119);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v120);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v121);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v122);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v123);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v124);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v125);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v126);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v127);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v128);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v129);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v130);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v131);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v132);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v133);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v134);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v135);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v136);
  sub_22C36BA64();
  v138 = sub_22C3698F8(v137);
  v139 = type metadata accessor for SegmentedPrompt.SegmentPayload(v138);
  v140 = sub_22C36985C(v139);
  v142 = *(v141 + 64);
  MEMORY[0x28223BE20](v140);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v143);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v144);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v145);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v146);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v147);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v148);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v149);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v150);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v151);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v152);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v153);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v154);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v155);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v156);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v157);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v158);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v159);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v160);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v161);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v162);
  sub_22C36BA64();
  v164 = sub_22C3698F8(v163);
  v950 = type metadata accessor for SegmentedPrompt.Segment(v164);
  v165 = sub_22C369824(v950);
  v167 = *(v166 + 64);
  MEMORY[0x28223BE20](v165);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v168);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v169);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v170);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v171);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v172);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v173);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v174);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v175);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v176);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v177);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v178);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v179);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v180);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v181);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v182);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v183);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v184);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v185);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v186);
  sub_22C36BA58();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v187);
  sub_22C36BA64();
  sub_22C3698F8(v188);
  v918 = sub_22C90430C();
  v189 = sub_22C369824(v918);
  v191 = v190;
  v193 = *(v192 + 64);
  MEMORY[0x28223BE20](v189);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v194);
  sub_22C36BA64();
  sub_22C36D234(v195);
  v196 = sub_22C3A5908(&qword_27D9BFC70, &unk_22C926C90);
  v197 = sub_22C369914(v196);
  v199 = *(v198 + 64);
  MEMORY[0x28223BE20](v197);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v200);
  sub_22C36BA64();
  sub_22C36D234(v201);
  v202 = *(v23 + 64);
  v203 = *(v23 + 32);
  sub_22C36D280();
  v921 = v205 & v204;
  v916 = (v206 + 63) >> 6;
  v910 = v191;
  v1007 = v28;
  v945 = (v28 + 8);
  v1039 = v63 + 8;
  v1040 = v63 + 32;
  v911 = v23;
  v208 = v207;

  v209 = 0;
  v210 = 0;
  v928 = v33;
  v1008 = v68;
  v1048 = v139;
  v912 = v208;
  v1046 = v28 + 16;
LABEL_2:
  v211 = v921;
  v920 = v209;
  if (v921)
  {
    v919 = v210;
    v212 = v210;
    goto LABEL_8;
  }

  while (1)
  {
    v212 = v210 + 1;
    if (__OFADD__(v210, 1))
    {
      break;
    }

    if (v212 >= v916)
    {
      v919 = v210;
      v904 = sub_22C36BA00();
      v906 = sub_22C3A5908(v904, v905);
      sub_22C374D84(v917, v907, v908, v906);
      v921 = 0;
      goto LABEL_9;
    }

    v211 = *(v208 + 8 * v212);
    ++v210;
    if (v211)
    {
      v919 = v212;
LABEL_8:
      v921 = (v211 - 1) & v211;
      v213 = __clz(__rbit64(v211)) | (v212 << 6);
      (*(v910 + 16))(v909, *(v911 + 48) + *(v910 + 72) * v213, v918);
      v214 = *(*(v911 + 56) + 8 * v213);
      v33 = &qword_22C925060;
      v215 = *(sub_22C3A5908(&qword_27D9BFC78, &qword_22C925060) + 48);
      v68 = v917;
      (*(v910 + 32))(v917, v909, v918);
      *(v917 + v215) = v214;
      sub_22C633C54();
      sub_22C36C640(v216, v217, v218, v219);

LABEL_9:
      sub_22C407C2C();
      v220 = sub_22C36BA00();
      v222 = sub_22C3A5908(v220, v221);
      if (sub_22C370B74(v914, 1, v222) == 1)
      {

        MEMORY[0x2318B8B10](v920);
        sub_22C36CC48();
        return;
      }

      v223 = *(v222 + 48);
      sub_22C36BA4C(v931);
      v224 = v914;
      v225 = v918;
      v226(v913, v914, v918);
      v227 = *(v914 + v223);
      memcpy(v1049, v915, sizeof(v1049));
      sub_22C7F4358(&qword_27D9BC810, MEMORY[0x277D85578]);
      sub_22C7E4C18();
      sub_22C909F8C();
      sub_22C36BA4C(v926);
      v228(v913, v918);
      MEMORY[0x2318B8B10](*(v227 + 16));
      v927 = *(v227 + 16);
      if (v927)
      {
        v229 = 0;
        sub_22C382968();
        v926[3] = v230;
        sub_22C37054C();
        v949 = v231;
        v926[2] = v227 + v231;
        v233 = v944;
        v1047 = *(v232 + 72);
        sub_22C38C4D8();
        while (1)
        {
          sub_22C7F43BC();
          sub_22C7F4250();
          sub_22C388A74();
          sub_22C5CAC28(&v972);
          sub_22C7F4250();
          v234 = sub_22C7F46B0();
          v942 = v229;
          if (!v234)
          {
            break;
          }

          if (v234 == 1)
          {
            v1044 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
            v235 = *(v1044 + 48);
            sub_22C7F44E0();
            v237 = v236[1];
            v924 = *v236;
            sub_22C7F4588(v236);
            sub_22C373A64();
            sub_22C5CAC28(&v949);
            sub_22C7F42A8();
            sub_22C7F4614();
            sub_22C378824();
            sub_22C5CAC28(&v950);
            sub_22C7F4250();
            v238 = sub_22C7F45AC();
            if (!v238)
            {
              sub_22C3834A8();
              sub_22C377748();
              v609();
              MEMORY[0x2318B8B10](0);
              sub_22C38C11C();
              sub_22C7F4358(&qword_27D9BC858, v610);
              sub_22C37A430();
              sub_22C909F8C();
              v611 = sub_22C375118();
              v612(v611);
              goto LABEL_559;
            }

            if (v238 == 1)
            {
              sub_22C36C47C();
              sub_22C5CAC28(&v933);
              sub_22C7F42A8();
              MEMORY[0x2318B8B10](1);
              sub_22C387CAC();
              v951 = *(v233 + 16);
              if (!v951)
              {
LABEL_173:
                sub_22C7F44FC(&v933);
                sub_22C7F4484();
                sub_22C7F43A0();
                sub_22C7F4358(&qword_27D9BC850, v414);
                sub_22C7F441C();
                v415 = sub_22C36A3D0();
                sub_22C7F4300(v415, v416);
                goto LABEL_559;
              }

              sub_22C382968();
              sub_22C3892D8(v239);
              v947 = v240;
              v241 = 0;
              while (2)
              {
                v989 = v241;
                sub_22C7F43BC();
                sub_22C7F4250();
                sub_22C388A74();
                sub_22C5CAC28(&v1024);
                sub_22C7F4250();
                v242 = sub_22C7F46B0();
                if (v242)
                {
                  if (v242 == 1)
                  {
                    sub_22C383E5C();
                    sub_22C7F44E0();
                    v244 = v243[1];
                    v930 = *v243;
                    sub_22C7F4588(v243);
                    v931[0] = v245;
                    sub_22C373A64();
                    sub_22C5CAC28(&v966);
                    sub_22C7F42A8();
                    sub_22C7F4614();
                    sub_22C378824();
                    sub_22C5CAC28(&v967);
                    sub_22C7F4250();
                    v246 = sub_22C7F45AC();
                    if (!v246)
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v324();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v325);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v326 = sub_22C375118();
                      v327(v326);
                      goto LABEL_163;
                    }

                    if (v246 == 1)
                    {
                      sub_22C36C47C();
                      sub_22C5CAC28(&v940);
                      sub_22C7F42A8();
                      MEMORY[0x2318B8B10](1);
                      sub_22C387CAC();
                      sub_22C7F4518(*(v241 + 16));
                      if (!v247)
                      {
LABEL_53:
                        sub_22C7F44FC(&v940);
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v282);
                        sub_22C7F441C();
                        v283 = sub_22C36A3D0();
                        sub_22C7F4300(v283, v284);
                        goto LABEL_163;
                      }

                      sub_22C7F43EC();
                      while (2)
                      {
                        sub_22C7F43BC();
                        sub_22C7F4250();
                        sub_22C388A74();
                        sub_22C5CAC28(&v1048);
                        sub_22C7F4250();
                        v248 = sub_22C7F46B0();
                        if (v248)
                        {
                          if (v248 == 1)
                          {
                            sub_22C383E5C();
                            sub_22C7F44E0();
                            v225 = *v249;
                            v224 = v249[1];
                            v250 = v249[2];
                            sub_22C373A64();
                            sub_22C5CAC28(&v1015);
                            sub_22C7F42A8();
                            sub_22C7F4614();
                            sub_22C378824();
                            sub_22C5CAC28(&v1016);
                            sub_22C7F4250();
                            v251 = sub_22C7F45AC();
                            v952 = v225;
                            if (v251)
                            {
                              if (v251 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0(&v1016);
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594();
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v252);
                                sub_22C7F441C();
                                v253 = sub_22C36A3D0();
                                sub_22C7F4300(v253, v254);
                              }

                              else
                              {
                                sub_22C37B0F0(&v1016);
                                sub_22C7F47FC();
                                if (v225)
                                {
                                  sub_22C7F43D4();
                                  v68 = *(v267 + 72);
                                  sub_22C371E00();
                                  sub_22C7F4358(&qword_2814357B0, v268);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    sub_22C7F475C();
                                  }

                                  while (!v269);
                                }

                                v270 = sub_22C7F44BC();
                                sub_22C4706F0(v270, v271);

                                sub_22C381838();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v259();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v260);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v261 = sub_22C375118();
                              v262(v261);
                            }

                            sub_22C7F479C(&v977);

                            sub_22C36B788();
                            sub_22C7F4300(v984, v272);
                            sub_22C7F46C8(&a13);
LABEL_48:
                            sub_22C386394(v273);
                            v280 = *(v225 + 16);
                            if (v280)
                            {
                              v225 += 32;
                              do
                              {
                                sub_22C7F4674();
                                --v280;
                              }

                              while (v280);
                            }

                            v33 = (v33 + 1);
                            sub_22C372DF0();
                            sub_22C7F4714(v281, &a13);
                            sub_22C7F44EC();
                            if (v269)
                            {
                              goto LABEL_53;
                            }

                            continue;
                          }

                          sub_22C376A28(&v1048);
                          sub_22C7F44A0();
                        }

                        else
                        {
                          sub_22C373A64();
                          sub_22C5CAC28(&v1013);
                          sub_22C7F42A8();
                          sub_22C7F462C();
                          sub_22C378824();
                          sub_22C5CAC28(&v1014);
                          sub_22C7F4250();
                          v255 = sub_22C7F45AC();
                          if (v255)
                          {
                            if (v255 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0(&v1014);
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594();
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v256);
                              sub_22C7F441C();
                              v257 = sub_22C36A3D0();
                              sub_22C7F4300(v257, v258);
                            }

                            else
                            {
                              sub_22C3866A4();
                              sub_22C7F45C4(&v1014);
                              sub_22C7F47E4();
                              if (v225)
                              {
                                sub_22C7F43D4();
                                v275 = *(v274 + 72);
                                sub_22C371E00();
                                v68 = sub_22C7F4358(&qword_2814357B0, v276);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  sub_22C7F4750();
                                }

                                while (!v269);
                              }

                              v277 = sub_22C7F44BC();
                              sub_22C4706F0(v277, v278);

                              sub_22C37B438();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v263();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v264);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v265 = sub_22C375118();
                            v266(v265);
                          }

                          sub_22C36B788();
                          sub_22C7F4300(v982, v279);
                        }

                        break;
                      }

                      v273 = v1033;
                      goto LABEL_48;
                    }

                    sub_22C7F4524(&v967);
                    sub_22C7F46FC(v332);
                    MEMORY[0x2318B8B10](*(v241 + 16));
                    sub_22C7F457C(&v944);
                    v33 = &qword_2814357B0;
                    if (v225)
                    {
                      sub_22C7F43D4();
                      sub_22C37BC60(v333);
                      do
                      {
                        v334 = sub_22C7F4474();
                        (v68)(v334);
                        sub_22C371E00();
                        sub_22C7F4358(&qword_2814357B0, v335);
                        sub_22C7E4C18();
                        sub_22C909F8C();
                        v336 = sub_22C37BFBC();
                        v337(v336);
                        sub_22C7F4570();
                      }

                      while (!v269);
                    }

                    sub_22C386DE8(&v943);
                    sub_22C7F4518(*(v241 + 16));
                    if (v338)
                    {
                      sub_22C7F43EC();
                      sub_22C38C4D8();
                      while (1)
                      {
                        sub_22C7F43BC();
                        sub_22C7F4250();
                        sub_22C388A74();
                        sub_22C5CAC28(v1049);
                        sub_22C7F4250();
                        v339 = sub_22C7F46B0();
                        if (v339)
                        {
                          if (v339 == 1)
                          {
                            sub_22C383E5C();
                            sub_22C7F44E0();
                            v341 = *v340;
                            v224 = v340[1];
                            sub_22C7F4668(v340[2]);
                            sub_22C373A64();
                            sub_22C5CAC28(&v988);
                            sub_22C7F42A8();
                            sub_22C7F4614();
                            sub_22C378824();
                            sub_22C5CAC28(&v1018);
                            sub_22C7F4250();
                            v342 = sub_22C7F45AC();
                            if (v342)
                            {
                              if (v342 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0(&v1018);
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594();
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v343);
                                sub_22C7F441C();
                                v344 = sub_22C36A3D0();
                                sub_22C7F4300(v344, v345);
                              }

                              else
                              {
                                sub_22C37B0F0(&v1018);
                                sub_22C7F47FC();
                                if (v225)
                                {
                                  sub_22C7F43D4();
                                  v68 = *(v358 + 72);
                                  sub_22C371E00();
                                  sub_22C7F4358(&qword_2814357B0, v359);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    sub_22C7F475C();
                                  }

                                  while (!v269);
                                }

                                v360 = sub_22C7F44BC();
                                sub_22C4706F0(v360, v361);

                                sub_22C381838();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v350();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v351);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v352 = sub_22C375118();
                              v353(v352);
                            }

                            sub_22C7F46E0();
                            sub_22C7F472C();

                            sub_22C36B788();
                            sub_22C7F4300(v962, v362);
                            sub_22C7F46C8(&v1049[64]);
                            goto LABEL_121;
                          }

                          sub_22C376A28(v1049);
                          sub_22C7F44A0();
                        }

                        else
                        {
                          sub_22C373A64();
                          sub_22C5CAC28(&v987);
                          sub_22C7F42A8();
                          sub_22C7F462C();
                          sub_22C378824();
                          sub_22C5CAC28(&v1017);
                          sub_22C7F4250();
                          v346 = sub_22C7F45AC();
                          if (v346)
                          {
                            if (v346 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0(&v1017);
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594();
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v347);
                              sub_22C7F441C();
                              v348 = sub_22C36A3D0();
                              sub_22C7F4300(v348, v349);
                            }

                            else
                            {
                              sub_22C3866A4();
                              sub_22C7F45C4(&v1017);
                              sub_22C7F47E4();
                              if (v225)
                              {
                                sub_22C7F43D4();
                                v365 = *(v364 + 72);
                                sub_22C371E00();
                                v68 = sub_22C7F4358(&qword_2814357B0, v366);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  sub_22C7F4750();
                                }

                                while (!v269);
                              }

                              v367 = sub_22C7F44BC();
                              sub_22C4706F0(v367, v368);

                              sub_22C37B438();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v354();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v355);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v356 = sub_22C375118();
                            v357(v356);
                          }

                          sub_22C36B788();
                          sub_22C7F4300(v961, v369);
                        }

                        v363 = v1028;
LABEL_121:
                        sub_22C386394(v363);
                        v370 = *(v225 + 16);
                        if (v370)
                        {
                          v225 += 32;
                          do
                          {
                            sub_22C7F4674();
                            --v370;
                          }

                          while (v370);
                        }

                        v33 = (v33 + 1);
                        sub_22C372DF0();
                        sub_22C38155C(v371, &v1049[64]);
                        sub_22C7F44EC();
                        if (v269)
                        {

                          goto LABEL_163;
                        }
                      }
                    }

                    sub_22C38C4D8();
LABEL_163:
                    sub_22C3801EC(&v974);
                    sub_22C7F47CC();

                    sub_22C36B788();
                    v411 = &v966;
LABEL_167:
                    v322 = *(v411 - 32);
LABEL_168:
                    sub_22C7F4300(v322, v323);
                  }

                  else
                  {
                    sub_22C376A28(&v1024);
                    sub_22C7F44A0();
                  }

                  sub_22C386394(v997);
                  v412 = *(v225 + 16);
                  if (v412)
                  {
                    v225 += 32;
                    do
                    {
                      sub_22C7F4674();
                      --v412;
                    }

                    while (v412);
                  }

                  v241 = v989 + 1;
                  sub_22C372DF0();
                  sub_22C7F4714(v413, &v1029);
                  if (v241 == v951)
                  {
                    goto LABEL_173;
                  }

                  continue;
                }

                break;
              }

              sub_22C373A64();
              sub_22C5CAC28(&v964);
              sub_22C7F42A8();
              sub_22C7F462C();
              sub_22C378824();
              sub_22C5CAC28(&v965);
              sub_22C7F4250();
              v285 = sub_22C7F45AC();
              if (v285)
              {
                if (v285 == 1)
                {
                  sub_22C36C47C();
                  sub_22C5CAC28(&v939);
                  sub_22C7F42A8();
                  MEMORY[0x2318B8B10](1);
                  sub_22C387CAC();
                  sub_22C7F4518(*(v241 + 16));
                  if (!v286)
                  {
LABEL_87:
                    sub_22C7F44FC(&v939);
                    sub_22C7F4484();
                    sub_22C7F43A0();
                    sub_22C7F4358(&qword_27D9BC850, v320);
                    sub_22C7F441C();
                    sub_22C36B788();
                    sub_22C7F4300(v934[2], v321);
                    v322 = sub_22C36A3D0();
                    goto LABEL_168;
                  }

                  sub_22C7F43EC();
                  while (2)
                  {
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28(&v1046);
                    sub_22C7F4250();
                    v287 = sub_22C7F46B0();
                    if (v287)
                    {
                      if (v287 == 1)
                      {
                        sub_22C383E5C();
                        sub_22C7F44E0();
                        v289 = *v288;
                        v224 = v288[1];
                        sub_22C7F4668(v288[2]);
                        sub_22C373A64();
                        sub_22C5CAC28(&v1009);
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28(&v1010);
                        sub_22C7F4250();
                        v290 = sub_22C7F45AC();
                        if (v290)
                        {
                          if (v290 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v1010);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v291);
                            sub_22C7F441C();
                            v292 = sub_22C36A3D0();
                            sub_22C7F4300(v292, v293);
                          }

                          else
                          {
                            sub_22C37B0F0(&v1010);
                            sub_22C7F47FC();
                            if (v225)
                            {
                              sub_22C7F43D4();
                              v68 = *(v306 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v307);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F475C();
                              }

                              while (!v269);
                            }

                            v308 = sub_22C7F44BC();
                            sub_22C4706F0(v308, v309);

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v298();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v299);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v300 = sub_22C375118();
                          v301(v300);
                        }

                        sub_22C7F46E0();
                        sub_22C7F472C();

                        sub_22C36B788();
                        sub_22C7F4300(v978, v310);
                        sub_22C7F46C8(&a12);
LABEL_82:
                        sub_22C386394(v311);
                        v318 = *(v225 + 16);
                        if (v318)
                        {
                          v225 += 32;
                          do
                          {
                            sub_22C7F4674();
                            --v318;
                          }

                          while (v318);
                        }

                        v33 = (v33 + 1);
                        sub_22C372DF0();
                        sub_22C7F4714(v319, &a12);
                        sub_22C7F44EC();
                        if (v269)
                        {
                          goto LABEL_87;
                        }

                        continue;
                      }

                      sub_22C376A28(&v1046);
                      sub_22C7F44A0();
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C5CAC28(&v1007);
                      sub_22C7F42A8();
                      sub_22C7F462C();
                      sub_22C378824();
                      sub_22C5CAC28(&v1008);
                      sub_22C7F4250();
                      v294 = sub_22C7F45AC();
                      if (v294)
                      {
                        if (v294 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0(&v1008);
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594();
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v295);
                          sub_22C7F441C();
                          v296 = sub_22C36A3D0();
                          sub_22C7F4300(v296, v297);
                        }

                        else
                        {
                          sub_22C3866A4();
                          sub_22C7F45C4(&v1008);
                          sub_22C7F47E4();
                          if (v225)
                          {
                            sub_22C7F43D4();
                            v313 = *(v312 + 72);
                            sub_22C371E00();
                            v68 = sub_22C7F4358(&qword_2814357B0, v314);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              sub_22C7F4750();
                            }

                            while (!v269);
                          }

                          v315 = sub_22C7F44BC();
                          sub_22C4706F0(v315, v316);

                          sub_22C37B438();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v302();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v303);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v304 = sub_22C375118();
                        v305(v304);
                      }

                      sub_22C36B788();
                      sub_22C7F4300(v976, v317);
                    }

                    break;
                  }

                  v311 = v1032;
                  goto LABEL_82;
                }

                sub_22C7F4524(&v965);
                sub_22C7F46FC(v372);
                MEMORY[0x2318B8B10](*(v241 + 16));
                sub_22C7F457C(&v974);
                sub_22C36EE58(&a18);
                v33 = &qword_2814357B0;
                if (v225)
                {
                  sub_22C7F43D4();
                  sub_22C37BC60(v373);
                  do
                  {
                    v374 = sub_22C7F4474();
                    (v68)(v374);
                    sub_22C371E00();
                    sub_22C7F4358(&qword_2814357B0, v375);
                    sub_22C7E4C18();
                    sub_22C37DA38(&a18);
                    v376 = sub_22C37BFBC();
                    v377(v376);
                    sub_22C7F4570();
                  }

                  while (!v269);
                }

                sub_22C386DE8(&v955);
                sub_22C7F4518(*(v241 + 16));
                if (v378)
                {
                  sub_22C7F43EC();
                  sub_22C3864F8();
                  sub_22C381BF8();
                  do
                  {
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28(&v1047);
                    sub_22C7F4250();
                    v379 = sub_22C7F46B0();
                    if (v379)
                    {
                      if (v379 == 1)
                      {
                        sub_22C383E5C();
                        sub_22C7F44E0();
                        v381 = *v380;
                        v224 = v380[1];
                        sub_22C7F4668(v380[2]);
                        sub_22C373A64();
                        sub_22C5CAC28(&v986);
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28(&v1012);
                        sub_22C7F4250();
                        v382 = sub_22C7F45AC();
                        if (v382)
                        {
                          if (v382 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v1012);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v383);
                            sub_22C7F441C();
                            v384 = sub_22C36A3D0();
                            sub_22C7F4300(v384, v385);
                          }

                          else
                          {
                            sub_22C37B0F0(&v1012);
                            sub_22C7F47FC();
                            if (v225)
                            {
                              sub_22C7F43D4();
                              v68 = *(v398 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v399);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F475C();
                              }

                              while (!v269);
                            }

                            v400 = sub_22C7F44BC();
                            sub_22C4706F0(v400, v401);

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v390();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v391);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v392 = sub_22C375118();
                          v393(v392);
                        }

                        sub_22C7F46E0();
                        sub_22C7F472C();

                        sub_22C36B788();
                        sub_22C7F4300(v960, v402);
                        sub_22C3864F8();
                      }

                      else
                      {
                        sub_22C376A28(&v1047);
                        sub_22C7F44A0();

                        sub_22C3864F8();
                      }
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C5CAC28(&v985);
                      sub_22C7F42A8();
                      sub_22C7F462C();
                      sub_22C378824();
                      sub_22C5CAC28(&v1011);
                      sub_22C7F4250();
                      v386 = sub_22C7F45AC();
                      if (v386)
                      {
                        if (v386 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0(&v1011);
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594();
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v387);
                          sub_22C7F441C();
                          v388 = sub_22C36A3D0();
                          sub_22C7F4300(v388, v389);
                        }

                        else
                        {
                          sub_22C3866A4();
                          sub_22C7F45C4(&v1011);
                          sub_22C7F47E4();
                          if (v225)
                          {
                            sub_22C7F43D4();
                            v404 = *(v403 + 72);
                            sub_22C371E00();
                            v68 = sub_22C7F4358(&qword_2814357B0, v405);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              sub_22C7F4750();
                            }

                            while (!v269);
                          }

                          v406 = sub_22C7F44BC();
                          sub_22C4706F0(v406, v407);

                          sub_22C37B438();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v394();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v395);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v396 = sub_22C375118();
                        v397(v396);
                      }

                      sub_22C36B788();
                      sub_22C7F4300(v959, v408);
                      sub_22C3864F8();
                    }

                    sub_22C7F465C();
                    v225 = *(v241 + v409);
                    sub_22C7F468C();
                    v241 = *(v225 + 16);
                    if (v241)
                    {
                      v225 += 32;
                      do
                      {
                        sub_22C7F4674();
                        --v241;
                      }

                      while (v241);
                    }

                    v33 = (v33 + 1);
                    sub_22C372DF0();
                    sub_22C3864F8();
                    sub_22C7F4300(v241, v410);
                    sub_22C7F44EC();
                  }

                  while (!v269);
                  sub_22C7F47CC();
                }

                else
                {

                  sub_22C381BF8();
                }
              }

              else
              {
                sub_22C3834A8();
                sub_22C377748();
                v328();
                MEMORY[0x2318B8B10](0);
                sub_22C38C11C();
                sub_22C7F4358(&qword_27D9BC858, v329);
                sub_22C37A430();
                sub_22C909F8C();
                v330 = sub_22C375118();
                v331(v330);
              }

              sub_22C36B788();
              v411 = &v964;
              goto LABEL_167;
            }

            sub_22C7F4524(&v950);
            sub_22C7F46FC(v617);
            MEMORY[0x2318B8B10](*(v233 + 16));
            sub_22C7F457C(&v955);
            sub_22C36EE58(v1031);
            if (v225)
            {
              sub_22C7F43D4();
              sub_22C37BC60(v618);
              do
              {
                v619 = sub_22C7F4474();
                (v68)(v619);
                sub_22C371E00();
                sub_22C7F4358(&qword_2814357B0, v620);
                sub_22C7E4C18();
                sub_22C37DA38(v1031);
                v621 = sub_22C37BFBC();
                v622(v621);
                sub_22C7F4570();
              }

              while (!v269);
            }

            sub_22C386DE8(&v954);
            v33 = v928;
            v951 = *(v233 + 16);
            if (v951)
            {
              v623 = 0;
              sub_22C382968();
              sub_22C3892D8(v624);
              v947 = v625;
              i = v995;
              sub_22C38C4D8();
              while (1)
              {
                sub_22C7F43BC();
                sub_22C7F4250();
                sub_22C388A74();
                sub_22C5CAC28(&v1025);
                sub_22C7F4250();
                v627 = sub_22C7F46B0();
                v989 = v623;
                if (!v627)
                {
                  break;
                }

                if (v627 == 1)
                {
                  sub_22C383E5C();
                  sub_22C7F44E0();
                  v629 = *v628;
                  v630 = v628[1];
                  sub_22C7F4588(v628);
                  v1001 = v631;
                  sub_22C373A64();
                  sub_22C5CAC28(&v970);
                  sub_22C7F42A8();
                  sub_22C7F4614();
                  sub_22C378824();
                  sub_22C5CAC28(v971);
                  sub_22C7F4250();
                  v632 = sub_22C7F45AC();
                  v1002 = v630;
                  if (v632)
                  {
                    if (v632 == 1)
                    {
                      sub_22C36C47C();
                      sub_22C5CAC28(&v942);
                      sub_22C7F42A8();
                      MEMORY[0x2318B8B10](1);
                      sub_22C387CAC();
                      v633 = *(i + 16);
                      if (v633)
                      {
                        v33 = 0;
                        sub_22C7F44D4();
                        v635 = *(v634 + 20);
                        sub_22C382E28();
                        v68 = i + v636;
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28(&v1049[24]);
                          sub_22C7F4250();
                          v637 = sub_22C7F46B0();
                          if (v637)
                          {
                            if (v637 != 1)
                            {
                              sub_22C376A28(&v1049[24]);
                              sub_22C7F44A0();

                              goto LABEL_352;
                            }

                            v638 = v1045;
                            v639 = *(v1044 + 48);
                            sub_22C7F44E0();
                            v641 = *v640;
                            v642 = v640[1];
                            v224 = v640[2];
                            sub_22C373A64();
                            sub_22C7F42A8();
                            sub_22C7F4614();
                            sub_22C57C528(v1049);
                            sub_22C7F44A0();

                            sub_22C36B788();
                            v644 = v638;
                            v139 = v1048;
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0(&v1049[24]);
                            sub_22C7F462C();
                            v645 = sub_22C7F46A4();
                            sub_22C57C528(v645);
                            sub_22C36B788();
                            v644 = i;
                          }

                          sub_22C7F4300(v644, v643);
LABEL_352:
                          v646 = *(v1035 + v635);
                          sub_22C7F468C();
                          for (i = *(v646 + 16); i; --i)
                          {
                            sub_22C7F4674();
                          }

                          v33 = (v33 + 1);
                          sub_22C372DF0();
                          sub_22C7F4714(v647, &a15);
                        }

                        while (v33 != v633);
                      }

                      sub_22C7F44FC(&v942);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v648);
                      sub_22C7F441C();
                      v649 = sub_22C36A3D0();
                      sub_22C7F4300(v649, v650);
                      sub_22C7F4834();
                    }

                    else
                    {
                      sub_22C7F4524(v971);
                      sub_22C7F46FC(v700);
                      MEMORY[0x2318B8B10](*(i + 16));
                      sub_22C7F457C(&v977);
                      if (v630)
                      {
                        sub_22C7F43D4();
                        sub_22C37BC60(v701);
                        do
                        {
                          v702 = sub_22C7F4474();
                          (v68)(v702);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v703);
                          sub_22C7E4C18();
                          sub_22C909F8C();
                          v704 = sub_22C37BFBC();
                          v705(v704);
                          sub_22C7F4570();
                        }

                        while (!v269);
                      }

                      sub_22C386DE8(&v974);
                      v33 = *(i + 16);
                      if (v33)
                      {
                        v706 = 0;
                        sub_22C7F44D4();
                        v68 = *(v707 + 20);
                        sub_22C382E28();
                        v224 = (i + v708);
                        sub_22C385E20(v1037);
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28(&v1049[32]);
                          sub_22C7F4250();
                          v709 = sub_22C7F484C();
                          if (v709)
                          {
                            if (v709 == 1)
                            {
                              v710 = v1045;
                              v711 = *(v1044 + 48);
                              sub_22C7F44E0();
                              v713 = *v712;
                              v630 = v712[1];
                              v714 = v712[2];
                              sub_22C373A64();
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528(v1049);
                              sub_22C7F44A0();

                              sub_22C36B788();
                              sub_22C7F4300(v710, v715);
                            }

                            else
                            {
                              sub_22C7F44C8(&v1049[32]);
                              v719 = *(v718 + 16);
                              sub_22C7F4644();
                              sub_22C7F44A0();
                            }

                            sub_22C385E20(v1037);
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0(&v1049[32]);
                            sub_22C7F462C();
                            v716 = sub_22C7F46A4();
                            sub_22C57C528(v716);
                            sub_22C36B788();
                            sub_22C7F4300(i, v717);
                          }

                          v630 = *(v630 + v68);
                          sub_22C7F468C();
                          i = *(v630 + 16);
                          if (i)
                          {
                            v630 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --i;
                            }

                            while (i);
                          }

                          v706 = (v706 + 1);
                          sub_22C372DF0();
                          v720 = sub_22C38B1DC(v1037);
                          sub_22C7F4300(v720, v721);
                        }

                        while (v706 != v33);

                        sub_22C7F472C();
                        sub_22C7F4834();
                        sub_22C38C4D8();
                        v139 = v1048;
                        goto LABEL_428;
                      }

                      sub_22C7F472C();
                      sub_22C7F4834();
                    }

                    sub_22C381BF8();
                  }

                  else
                  {
                    sub_22C3834A8();
                    sub_22C377748();
                    v691();
                    MEMORY[0x2318B8B10](0);
                    sub_22C38C11C();
                    sub_22C7F4358(&qword_27D9BC858, v692);
                    sub_22C37A430();
                    sub_22C909F8C();
                    v693 = sub_22C375118();
                    v694(v693);
                  }

LABEL_428:
                  sub_22C3801EC(&v1033);

                  sub_22C36B788();
                  sub_22C7F4300(v940, v744);
LABEL_432:
                  v690 = v995;
                  goto LABEL_433;
                }

                sub_22C376A28(&v1025);
                sub_22C7F44A0();

                v690 = v995;

LABEL_433:
                v225 = *(v690 + v948);
                sub_22C7F468C();
                i = *(v225 + 16);
                if (i)
                {
                  v225 += 32;
                  do
                  {
                    sub_22C7F4674();
                    --i;
                  }

                  while (i);
                }

                v623 = v989 + 1;
                sub_22C372DF0();
                sub_22C38155C(v745, &v1027);
                if (v623 == v951)
                {

                  sub_22C7F47CC();
                  goto LABEL_559;
                }
              }

              sub_22C373A64();
              sub_22C5CAC28(&v968);
              sub_22C7F42A8();
              sub_22C7F462C();
              sub_22C378824();
              sub_22C5CAC28(&v969);
              sub_22C7F4250();
              v651 = sub_22C7F45AC();
              if (!v651)
              {
                sub_22C3834A8();
                sub_22C377748();
                v695();
                MEMORY[0x2318B8B10](0);
                sub_22C38C11C();
                sub_22C7F4358(&qword_27D9BC858, v696);
                sub_22C37A430();
                sub_22C909F8C();
                v697 = sub_22C36D400();
                v690 = v995;
                v698(v697, i);
                sub_22C36B788();
                sub_22C7F4300(v938, v699);
                goto LABEL_433;
              }

              if (v651 == 1)
              {
                sub_22C36C47C();
                sub_22C5CAC28(&v941);
                sub_22C7F42A8();
                MEMORY[0x2318B8B10](1);
                sub_22C387CAC();
                sub_22C7F4518(*(i + 16));
                if (v652)
                {
                  sub_22C7F43EC();
                  do
                  {
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28(&v1049[8]);
                    sub_22C7F4250();
                    v653 = sub_22C7F46B0();
                    if (v653)
                    {
                      if (v653 == 1)
                      {
                        sub_22C383E5C();
                        sub_22C7F44E0();
                        v655 = *v654;
                        v224 = v654[1];
                        sub_22C7F4668(v654[2]);
                        sub_22C373A64();
                        sub_22C5CAC28(&v990);
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28(&v1020);
                        sub_22C7F4250();
                        v656 = sub_22C7F45AC();
                        if (v656)
                        {
                          if (v656 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v1020);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v657);
                            sub_22C7F441C();
                            v658 = sub_22C36A3D0();
                            sub_22C7F4300(v658, v659);
                          }

                          else
                          {
                            sub_22C37B0F0(&v1020);
                            sub_22C7F47FC();
                            if (v225)
                            {
                              sub_22C7F43D4();
                              v68 = *(v672 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v673);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F475C();
                              }

                              while (!v269);
                            }

                            v674 = sub_22C7F44BC();
                            sub_22C4706F0(v674, v675);

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v664();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v665);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v666 = sub_22C375118();
                          v667(v666);
                        }

                        sub_22C7F46E0();
                        sub_22C7F472C();

                        sub_22C36B788();
                        sub_22C7F4300(v964, v676);
                        sub_22C7F46C8(&a14);
                        goto LABEL_384;
                      }

                      sub_22C376A28(&v1049[8]);
                      sub_22C7F44A0();
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C5CAC28(&v989);
                      sub_22C7F42A8();
                      sub_22C7F462C();
                      sub_22C378824();
                      sub_22C5CAC28(&v1019);
                      sub_22C7F4250();
                      v660 = sub_22C7F45AC();
                      if (v660)
                      {
                        if (v660 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0(&v1019);
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594();
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v661);
                          sub_22C7F441C();
                          v662 = sub_22C36A3D0();
                          sub_22C7F4300(v662, v663);
                        }

                        else
                        {
                          sub_22C3866A4();
                          sub_22C7F45C4(&v1019);
                          sub_22C7F47E4();
                          if (v225)
                          {
                            sub_22C7F43D4();
                            v679 = *(v678 + 72);
                            sub_22C371E00();
                            v68 = sub_22C7F4358(&qword_2814357B0, v680);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              sub_22C7F4750();
                            }

                            while (!v269);
                          }

                          v681 = sub_22C7F44BC();
                          sub_22C4706F0(v681, v682);

                          sub_22C37B438();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v668();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v669);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v670 = sub_22C375118();
                        v671(v670);
                      }

                      sub_22C36B788();
                      sub_22C7F4300(v963, v683);
                    }

                    v677 = v1034;
LABEL_384:
                    sub_22C386394(v677);
                    v684 = *(v225 + 16);
                    if (v684)
                    {
                      v225 += 32;
                      do
                      {
                        sub_22C7F4674();
                        --v684;
                      }

                      while (v684);
                    }

                    v33 = (v33 + 1);
                    sub_22C372DF0();
                    sub_22C7F4714(v685, &a14);
                    sub_22C7F44EC();
                  }

                  while (!v269);
                }

                sub_22C7F44FC(&v941);
                sub_22C7F4484();
                sub_22C7F43A0();
                sub_22C7F4358(&qword_27D9BC850, v686);
                sub_22C7F441C();
                sub_22C36B788();
                sub_22C7F4300(v938, v687);
                v688 = sub_22C36A3D0();
              }

              else
              {
                sub_22C7F4524(&v969);
                sub_22C7F46FC(v722);
                MEMORY[0x2318B8B10](*(i + 16));
                sub_22C7F457C(&v1033);
                v224 = v945;
                if (v225)
                {
                  sub_22C7F43D4();
                  i = v1002 + v723;
                  v68 = *(v724 + 72);
                  v725 = *(v724 + 16);
                  do
                  {
                    v726 = sub_22C7F4474();
                    v725(v726);
                    sub_22C371E00();
                    sub_22C7F4358(&qword_2814357B0, v727);
                    sub_22C7E4C18();
                    sub_22C909F8C();
                    (*v224)(v923, v25);
                    i += v68;
                    --v225;
                  }

                  while (v225);
                }

                sub_22C386DE8(&v1032);
                v33 = *(i + 16);
                if (v33)
                {
                  v728 = 0;
                  sub_22C7F44D4();
                  v730 = *(v729 + 20);
                  sub_22C382E28();
                  v68 = i + v731;
                  sub_22C385E20(&v1036);
                  do
                  {
                    sub_22C7F43BC();
                    sub_22C7F4250();
                    sub_22C388A74();
                    sub_22C5CAC28(&v1049[16]);
                    sub_22C7F4250();
                    v732 = sub_22C7F484C();
                    if (v732)
                    {
                      if (v732 == 1)
                      {
                        v224 = v1045;
                        v733 = *(v1044 + 48);
                        sub_22C7F44E0();
                        v735 = *v734;
                        v225 = v734[1];
                        v736 = v734[2];
                        sub_22C373A64();
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C57C528(v1049);
                        sub_22C7F44A0();

                        sub_22C36B788();
                        sub_22C7F4300(v224, v737);
                      }

                      else
                      {
                        sub_22C7F44C8(&v1049[16]);
                        v741 = *(v740 + 16);
                        sub_22C7F4644();
                        sub_22C7F44A0();
                      }

                      sub_22C385E20(&v1036);
                    }

                    else
                    {
                      sub_22C373A64();
                      sub_22C7F45E0(&v1049[16]);
                      sub_22C7F462C();
                      v738 = sub_22C7F46A4();
                      sub_22C57C528(v738);
                      sub_22C36B788();
                      sub_22C7F4300(i, v739);
                    }

                    v225 = *(v225 + v730);
                    sub_22C7F468C();
                    i = *(v225 + 16);
                    if (i)
                    {
                      v225 += 32;
                      do
                      {
                        sub_22C7F4674();
                        --i;
                      }

                      while (i);
                    }

                    v728 = (v728 + 1);
                    sub_22C372DF0();
                    v742 = sub_22C38B1DC(&v1036);
                    sub_22C7F4300(v742, v743);
                  }

                  while (v728 != v33);

                  sub_22C38C4D8();
                  v139 = v1048;
                }

                else
                {

                  sub_22C381BF8();
                }

                sub_22C36B788();
                v688 = v938;
              }

              sub_22C7F4300(v688, v689);
              sub_22C7F4834();
              goto LABEL_432;
            }

            sub_22C7F47CC();
            sub_22C38C4D8();
LABEL_559:
            sub_22C3801EC(&v953);
            sub_22C36D438();

            sub_22C36B788();
            v902 = &v949;
LABEL_563:
            v607 = *(v902 - 32);
LABEL_564:
            sub_22C7F4300(v607, v608);
            goto LABEL_565;
          }

          sub_22C376A28(&v972);
          sub_22C7F44A0();

LABEL_565:
          sub_22C386394(v944);
          v233 = *(v225 + 16);
          if (v233)
          {
            v225 += 32;
            do
            {
              sub_22C7F4674();
              --v233;
            }

            while (v233);
          }

          v229 = v942 + 1;
          sub_22C372DF0();
          sub_22C38155C(v903, &v973);
          if (v229 == v927)
          {
            goto LABEL_569;
          }
        }

        sub_22C373A64();
        sub_22C5CAC28(&v947);
        sub_22C7F42A8();
        sub_22C7F462C();
        sub_22C378824();
        sub_22C5CAC28(&v948);
        sub_22C7F4250();
        v417 = sub_22C7F45AC();
        if (v417)
        {
          if (v417 == 1)
          {
            sub_22C36C47C();
            sub_22C5CAC28(&v932);
            sub_22C7F42A8();
            MEMORY[0x2318B8B10](1);
            sub_22C387CAC();
            v948 = *(v233 + 16);
            if (!v948)
            {
LABEL_330:
              sub_22C7F44FC(&v932);
              sub_22C7F4484();
              sub_22C7F43A0();
              sub_22C7F4358(&qword_27D9BC850, v605);
              sub_22C7F441C();
              sub_22C36B788();
              sub_22C7F4300(v925, v606);
              v607 = sub_22C36A3D0();
              goto LABEL_564;
            }

            sub_22C382968();
            sub_22C3892D8(v418);
            v946 = v419;
            v420 = 0;
            while (2)
            {
              v1000 = v420;
              sub_22C7F43BC();
              sub_22C7F4250();
              sub_22C388A74();
              sub_22C5CAC28(&v1022);
              sub_22C7F4250();
              v421 = sub_22C7F46B0();
              if (v421)
              {
                if (v421 == 1)
                {
                  v989 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                  v422 = *(v989 + 48);
                  sub_22C7F44E0();
                  v424 = v423[1];
                  v929 = *v423;
                  sub_22C7F4588(v423);
                  v930 = v425;
                  sub_22C373A64();
                  sub_22C5CAC28(&v958);
                  sub_22C7F42A8();
                  sub_22C7F4614();
                  sub_22C378824();
                  sub_22C5CAC28(&v959);
                  sub_22C7F4250();
                  v426 = sub_22C7F45AC();
                  if (!v426)
                  {
                    sub_22C3834A8();
                    sub_22C377748();
                    v507();
                    MEMORY[0x2318B8B10](0);
                    sub_22C38C11C();
                    sub_22C7F4358(&qword_27D9BC858, v508);
                    sub_22C37A430();
                    sub_22C909F8C();
                    v509 = sub_22C375118();
                    v510(v509);
                    goto LABEL_320;
                  }

                  if (v426 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C5CAC28(&v936);
                    sub_22C7F42A8();
                    MEMORY[0x2318B8B10](1);
                    sub_22C387CAC();
                    sub_22C7F4840(*(v420 + 16));
                    if (!v427)
                    {
LABEL_212:
                      sub_22C7F44FC(&v936);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v463);
                      sub_22C7F441C();
                      v464 = sub_22C36A3D0();
                      sub_22C7F4300(v464, v465);
                      goto LABEL_320;
                    }

                    sub_22C3875E0();
                    while (2)
                    {
                      sub_22C7F465C();
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28(&v1040);
                      sub_22C7F4250();
                      v428 = sub_22C7F46B0();
                      if (v428)
                      {
                        if (v428 == 1)
                        {
                          sub_22C37E7F4();
                          sub_22C7F44E0();
                          v430 = *v429;
                          v224 = v429[1];
                          sub_22C7F4588(v429);
                          sub_22C7F4668(v431);
                          sub_22C373A64();
                          sub_22C5CAC28(&v999);
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C378824();
                          sub_22C5CAC28(&v1000);
                          sub_22C7F4250();
                          v432 = sub_22C7F45AC();
                          if (v432)
                          {
                            if (v432 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0(&v1000);
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594();
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v433);
                              sub_22C7F441C();
                              v434 = sub_22C36A3D0();
                              sub_22C7F4300(v434, v435);
                            }

                            else
                            {
                              sub_22C7F44C8(&v1000);
                              MEMORY[0x2318B8B10](2);
                              sub_22C7F47B4();
                              if (v139)
                              {
                                sub_22C7F43D4();
                                v449 = v420 + v448;
                                v451 = *(v450 + 72);
                                sub_22C371E00();
                                sub_22C7F4358(&qword_2814357B0, v452);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  v449 += v451;
                                  --v139;
                                }

                                while (v139);
                              }

                              v453 = sub_22C38688C();
                              sub_22C4706F0(v453, v454);

                              sub_22C381838();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v440();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v441);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v442 = sub_22C375118();
                            v443(v442);
                          }

                          sub_22C7F479C(&v976);
                          sub_22C7F472C();

                          sub_22C36B788();
                          v456 = &v999;
                          goto LABEL_206;
                        }

                        sub_22C376A28(&v1040);
                        sub_22C7F44A0();
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C5CAC28(&v997);
                        sub_22C7F42A8();
                        sub_22C7F462C();
                        sub_22C378824();
                        sub_22C5CAC28(&v998);
                        sub_22C7F4250();
                        v436 = sub_22C7F45AC();
                        if (v436)
                        {
                          if (v436 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v998);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v437);
                            sub_22C7F441C();
                            v438 = sub_22C36A3D0();
                            sub_22C7F4300(v438, v439);
                          }

                          else
                          {
                            sub_22C3866A4();
                            sub_22C7F44C8(&v998);
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F4768();
                            if (v224)
                            {
                              sub_22C7F43D4();
                              v458 = *(v457 + 72);
                              sub_22C371E00();
                              v68 = sub_22C7F4358(&qword_2814357B0, v459);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F4744();
                              }

                              while (!v269);
                            }

                            v460 = sub_22C38688C();
                            sub_22C4706F0(v460, v461);

                            sub_22C37B438();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v444();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v445);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v446 = sub_22C375118();
                          v447(v446);
                        }

                        sub_22C36B788();
                        v456 = &v997;
LABEL_206:
                        sub_22C7F4300(*(v456 - 32), v455);
                      }

                      sub_22C386394(v1030);
                      v420 = *(v225 + 16);
                      if (v420)
                      {
                        v225 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v420;
                        }

                        while (v420);
                      }

                      v33 = (v33 + 1);
                      sub_22C372DF0();
                      sub_22C7F4714(v462, &a9);
                      sub_22C7F46D4();
                      if (v269)
                      {
                        goto LABEL_212;
                      }

                      continue;
                    }
                  }

                  sub_22C7F4524(&v959);
                  sub_22C7F46FC(v515);
                  MEMORY[0x2318B8B10](*(v420 + 16));
                  sub_22C7F457C(&v946);
                  sub_22C36EE58(v934);
                  v33 = &qword_2814357B0;
                  if (v225)
                  {
                    sub_22C7F43D4();
                    sub_22C37BC60(v516);
                    do
                    {
                      v517 = sub_22C7F4474();
                      (v68)(v517);
                      sub_22C371E00();
                      sub_22C7F4358(&qword_2814357B0, v518);
                      sub_22C7E4C18();
                      sub_22C909F8C();
                      v519 = sub_22C37BFBC();
                      v520(v519);
                      sub_22C7F4570();
                    }

                    while (!v269);
                  }

                  sub_22C386DE8(&v945);
                  v1044 = *(v420 + 16);
                  if (v1044)
                  {
                    sub_22C3875E0();
                    v521 = v1026;
                    sub_22C38C4D8();
                    while (1)
                    {
                      sub_22C7F465C();
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28(&v1041);
                      sub_22C7F4250();
                      v522 = sub_22C7F46B0();
                      if (!v522)
                      {
                        break;
                      }

                      if (v522 == 1)
                      {
                        sub_22C37E7F4();
                        sub_22C7F44E0();
                        v524 = *v523;
                        v224 = v523[1];
                        sub_22C7F4588(v523);
                        sub_22C7F4668(v525);
                        sub_22C373A64();
                        sub_22C5CAC28(&v981);
                        sub_22C7F42A8();
                        sub_22C7F4614();
                        sub_22C378824();
                        sub_22C5CAC28(&v1002);
                        sub_22C7F4250();
                        v526 = sub_22C7F45AC();
                        if (v526)
                        {
                          if (v526 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v1002);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v527);
                            sub_22C7F441C();
                            v528 = sub_22C36A3D0();
                            sub_22C7F4300(v528, v529);
                          }

                          else
                          {
                            sub_22C7F44C8(&v1002);
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F47B4();
                            if (v139)
                            {
                              sub_22C7F43D4();
                              v544 = v521 + v543;
                              v546 = *(v545 + 72);
                              sub_22C371E00();
                              sub_22C7F4358(&qword_2814357B0, v547);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                v544 += v546;
                                --v139;
                              }

                              while (v139);
                            }

                            v548 = sub_22C38688C();
                            sub_22C4706F0(v548, v549);

                            sub_22C381838();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v535();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v536);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v537 = sub_22C375118();
                          v538(v537);
                        }

                        sub_22C7F479C(&v976);
                        sub_22C7F472C();

                        sub_22C36B788();
                        v551 = &v981;
LABEL_277:
                        sub_22C7F4300(*(v551 - 32), v550);
                        v534 = v1026;
                        goto LABEL_278;
                      }

                      sub_22C376A28(&v1041);
                      sub_22C7F44A0();

                      v534 = v1026;

LABEL_278:
                      v225 = *(v534 + v1002);
                      sub_22C7F468C();
                      v521 = *(v225 + 16);
                      if (v521)
                      {
                        v225 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v521;
                        }

                        while (v521);
                      }

                      v33 = (v33 + 1);
                      sub_22C372DF0();
                      sub_22C38155C(v557, &v1049[48]);
                      sub_22C7F46D4();
                      if (v269)
                      {

                        sub_22C36D438();
                        goto LABEL_320;
                      }
                    }

                    sub_22C373A64();
                    sub_22C5CAC28(&v980);
                    sub_22C7F42A8();
                    sub_22C7F462C();
                    sub_22C378824();
                    sub_22C5CAC28(&v1001);
                    sub_22C7F4250();
                    v530 = sub_22C7F45AC();
                    if (v530)
                    {
                      if (v530 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C37EDA0(&v1001);
                        MEMORY[0x2318B8B10](1);
                        sub_22C7F45FC();
                        sub_22C7F4594();
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v531);
                        sub_22C7F441C();
                        v532 = sub_22C36A3D0();
                        sub_22C7F4300(v532, v533);
                      }

                      else
                      {
                        sub_22C3866A4();
                        sub_22C7F44C8(&v1001);
                        MEMORY[0x2318B8B10](2);
                        sub_22C7F4768();
                        if (v224)
                        {
                          sub_22C7F43D4();
                          v553 = *(v552 + 72);
                          sub_22C371E00();
                          v68 = sub_22C7F4358(&qword_2814357B0, v554);
                          do
                          {
                            sub_22C376028();
                            sub_22C909F8C();
                            sub_22C7F4744();
                          }

                          while (!v269);
                        }

                        v555 = sub_22C38688C();
                        sub_22C4706F0(v555, v556);

                        sub_22C37B438();
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v539();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v540);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v541 = sub_22C375118();
                      v542(v541);
                    }

                    sub_22C36B788();
                    v551 = &v980;
                    goto LABEL_277;
                  }

                  sub_22C36D438();
                  sub_22C38C4D8();
LABEL_320:
                  sub_22C3801EC(&v955);

                  sub_22C36B788();
                  v602 = &v958;
LABEL_324:
                  v505 = *(v602 - 32);
LABEL_325:
                  sub_22C7F4300(v505, v506);
                }

                else
                {
                  sub_22C376A28(&v1022);
                  sub_22C7F44A0();
                }

                sub_22C386394(v996);
                v603 = *(v225 + 16);
                if (v603)
                {
                  v225 += 32;
                  do
                  {
                    sub_22C7F4674();
                    --v603;
                  }

                  while (v603);
                }

                v420 = v1000 + 1;
                sub_22C372DF0();
                sub_22C7F4714(v604, &v1028);
                if (v420 == v948)
                {
                  goto LABEL_330;
                }

                continue;
              }

              break;
            }

            sub_22C373A64();
            sub_22C5CAC28(&v956);
            sub_22C7F42A8();
            sub_22C7F462C();
            sub_22C378824();
            sub_22C5CAC28(&v957);
            sub_22C7F4250();
            v466 = sub_22C7F45AC();
            if (v466)
            {
              if (v466 == 1)
              {
                sub_22C36C47C();
                sub_22C5CAC28(&v935);
                sub_22C7F42A8();
                MEMORY[0x2318B8B10](1);
                sub_22C387CAC();
                sub_22C7F4840(*(v420 + 16));
                if (!v467)
                {
LABEL_245:
                  sub_22C7F44FC(&v935);
                  sub_22C7F4484();
                  sub_22C7F43A0();
                  sub_22C7F4358(&qword_27D9BC850, v503);
                  sub_22C7F441C();
                  sub_22C36B788();
                  sub_22C7F4300(v931[1], v504);
                  v505 = sub_22C36A3D0();
                  goto LABEL_325;
                }

                sub_22C3875E0();
                while (2)
                {
                  sub_22C7F465C();
                  sub_22C7F43BC();
                  sub_22C7F4250();
                  sub_22C388A74();
                  sub_22C5CAC28(&v1038);
                  sub_22C7F4250();
                  v468 = sub_22C7F46B0();
                  if (v468)
                  {
                    if (v468 == 1)
                    {
                      v469 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
                      sub_22C7F44E0();
                      v225 = *v470;
                      v224 = v470[1];
                      v471 = v470[2];
                      sub_22C373A64();
                      sub_22C5CAC28(&v993);
                      sub_22C7F42A8();
                      sub_22C7F4614();
                      sub_22C378824();
                      sub_22C5CAC28(&v994);
                      sub_22C7F4250();
                      v472 = sub_22C7F45AC();
                      v989 = v225;
                      if (v472)
                      {
                        if (v472 == 1)
                        {
                          sub_22C36C47C();
                          sub_22C37EDA0(&v994);
                          MEMORY[0x2318B8B10](1);
                          sub_22C7F45FC();
                          sub_22C7F4594();
                          sub_22C7F4484();
                          sub_22C7F43A0();
                          sub_22C7F4358(&qword_27D9BC850, v473);
                          sub_22C7F441C();
                          v474 = sub_22C36A3D0();
                          sub_22C7F4300(v474, v475);
                        }

                        else
                        {
                          sub_22C7F44C8(&v994);
                          MEMORY[0x2318B8B10](2);
                          sub_22C7F47B4();
                          if (v139)
                          {
                            sub_22C7F43D4();
                            v489 = v420 + v488;
                            v68 = *(v490 + 72);
                            sub_22C371E00();
                            sub_22C7F4358(&qword_2814357B0, v491);
                            do
                            {
                              sub_22C376028();
                              sub_22C909F8C();
                              v489 += v68;
                              --v139;
                            }

                            while (v139);
                          }

                          v492 = sub_22C38688C();
                          sub_22C4706F0(v492, v493);

                          sub_22C381838();
                        }
                      }

                      else
                      {
                        sub_22C3834A8();
                        sub_22C377748();
                        v480();
                        MEMORY[0x2318B8B10](0);
                        sub_22C38C11C();
                        sub_22C7F4358(&qword_27D9BC858, v481);
                        sub_22C37A430();
                        sub_22C909F8C();
                        v482 = sub_22C375118();
                        v483(v482);
                      }

                      sub_22C7F479C(&v1021);

                      sub_22C36B788();
                      sub_22C7F4300(v967, v494);
                      sub_22C7F46C8(&v1050);
LABEL_240:
                      sub_22C386394(v495);
                      v420 = *(v225 + 16);
                      if (v420)
                      {
                        v225 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v420;
                        }

                        while (v420);
                      }

                      v33 = (v33 + 1);
                      sub_22C372DF0();
                      sub_22C7F4714(v502, &v1050);
                      sub_22C7F46D4();
                      if (v269)
                      {
                        goto LABEL_245;
                      }

                      continue;
                    }

                    sub_22C376A28(&v1038);
                    sub_22C7F44A0();
                  }

                  else
                  {
                    sub_22C373A64();
                    sub_22C5CAC28(&v991);
                    sub_22C7F42A8();
                    sub_22C7F462C();
                    sub_22C378824();
                    sub_22C5CAC28(&v992);
                    sub_22C7F4250();
                    v476 = sub_22C7F45AC();
                    if (v476)
                    {
                      if (v476 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C37EDA0(&v992);
                        MEMORY[0x2318B8B10](1);
                        sub_22C7F45FC();
                        sub_22C7F4594();
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v477);
                        sub_22C7F441C();
                        v478 = sub_22C36A3D0();
                        sub_22C7F4300(v478, v479);
                      }

                      else
                      {
                        sub_22C3866A4();
                        sub_22C7F44C8(&v992);
                        MEMORY[0x2318B8B10](2);
                        sub_22C7F4768();
                        if (v224)
                        {
                          sub_22C7F43D4();
                          v497 = *(v496 + 72);
                          sub_22C371E00();
                          v68 = sub_22C7F4358(&qword_2814357B0, v498);
                          do
                          {
                            sub_22C376028();
                            sub_22C909F8C();
                            sub_22C7F4744();
                          }

                          while (!v269);
                        }

                        v499 = sub_22C38688C();
                        sub_22C4706F0(v499, v500);

                        sub_22C37B438();
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v484();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v485);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v486 = sub_22C375118();
                      v487(v486);
                    }

                    sub_22C36B788();
                    sub_22C7F4300(v965, v501);
                  }

                  break;
                }

                v495 = v1029;
                goto LABEL_240;
              }

              sub_22C7F4524(&v957);
              sub_22C7F46FC(v558);
              MEMORY[0x2318B8B10](*(v420 + 16));
              sub_22C7F457C(&v976);
              sub_22C36EE58(&a16);
              v33 = &qword_2814357B0;
              if (v225)
              {
                sub_22C7F43D4();
                sub_22C37BC60(v559);
                do
                {
                  v560 = sub_22C7F4474();
                  (v68)(v560);
                  sub_22C371E00();
                  sub_22C7F4358(&qword_2814357B0, v561);
                  sub_22C7E4C18();
                  sub_22C37DA38(&a16);
                  v562 = sub_22C37BFBC();
                  v563(v562);
                  sub_22C7F4570();
                }

                while (!v269);
              }

              sub_22C386DE8(&v955);
              v1044 = *(v420 + 16);
              if (v1044)
              {
                sub_22C3875E0();
                v564 = v1025;
                sub_22C381BF8();
                while (1)
                {
                  sub_22C7F465C();
                  sub_22C7F43BC();
                  sub_22C7F4250();
                  sub_22C388A74();
                  sub_22C5CAC28(&v1039);
                  sub_22C7F4250();
                  v565 = sub_22C7F46B0();
                  if (!v565)
                  {
                    break;
                  }

                  if (v565 == 1)
                  {
                    v566 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
                    sub_22C7F44E0();
                    v568 = *v567;
                    v224 = v567[1];
                    sub_22C7F4588(v567);
                    v989 = v569;
                    sub_22C373A64();
                    sub_22C5CAC28(&v979);
                    sub_22C7F42A8();
                    sub_22C7F4614();
                    sub_22C378824();
                    sub_22C5CAC28(&v996);
                    sub_22C7F4250();
                    v570 = sub_22C7F45AC();
                    if (v570)
                    {
                      if (v570 == 1)
                      {
                        sub_22C36C47C();
                        sub_22C37EDA0(&v996);
                        MEMORY[0x2318B8B10](1);
                        sub_22C7F45FC();
                        sub_22C7F4594();
                        sub_22C7F4484();
                        sub_22C7F43A0();
                        sub_22C7F4358(&qword_27D9BC850, v571);
                        sub_22C7F441C();
                        v572 = sub_22C36A3D0();
                        sub_22C7F4300(v572, v573);
                      }

                      else
                      {
                        sub_22C7F44C8(&v996);
                        MEMORY[0x2318B8B10](2);
                        sub_22C7F47B4();
                        if (v139)
                        {
                          sub_22C7F43D4();
                          v588 = v564 + v587;
                          v590 = *(v589 + 72);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v591);
                          do
                          {
                            sub_22C376028();
                            sub_22C909F8C();
                            v588 += v590;
                            --v139;
                          }

                          while (v139);
                        }

                        v592 = sub_22C38688C();
                        sub_22C4706F0(v592, v593);

                        sub_22C381838();
                      }
                    }

                    else
                    {
                      sub_22C3834A8();
                      sub_22C377748();
                      v579();
                      MEMORY[0x2318B8B10](0);
                      sub_22C38C11C();
                      sub_22C7F4358(&qword_27D9BC858, v580);
                      sub_22C37A430();
                      sub_22C909F8C();
                      v581 = sub_22C375118();
                      v582(v581);
                    }

                    sub_22C7F479C(&v977);

                    sub_22C36B788();
                    v595 = &v979;
LABEL_312:
                    sub_22C7F4300(*(v595 - 32), v594);
                    v578 = v1025;
                    goto LABEL_313;
                  }

                  sub_22C376A28(&v1039);
                  sub_22C7F44A0();

                  v578 = v1025;

LABEL_313:
                  v225 = *(v578 + v1002);
                  sub_22C7F468C();
                  v564 = *(v225 + 16);
                  if (v564)
                  {
                    v225 += 32;
                    do
                    {
                      sub_22C7F4674();
                      --v564;
                    }

                    while (v564);
                  }

                  v33 = (v33 + 1);
                  sub_22C372DF0();
                  sub_22C38155C(v601, &v1049[40]);
                  sub_22C7F46D4();
                  if (v269)
                  {
                    sub_22C7F47CC();
                    goto LABEL_322;
                  }
                }

                sub_22C373A64();
                sub_22C5CAC28(&v978);
                sub_22C7F42A8();
                sub_22C7F462C();
                sub_22C378824();
                sub_22C5CAC28(&v995);
                sub_22C7F4250();
                v574 = sub_22C7F45AC();
                if (v574)
                {
                  if (v574 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C37EDA0(&v995);
                    MEMORY[0x2318B8B10](1);
                    sub_22C7F45FC();
                    sub_22C7F4594();
                    sub_22C7F4484();
                    sub_22C7F43A0();
                    sub_22C7F4358(&qword_27D9BC850, v575);
                    sub_22C7F441C();
                    v576 = sub_22C36A3D0();
                    sub_22C7F4300(v576, v577);
                  }

                  else
                  {
                    sub_22C3866A4();
                    sub_22C7F44C8(&v995);
                    MEMORY[0x2318B8B10](2);
                    sub_22C7F4768();
                    if (v224)
                    {
                      sub_22C7F43D4();
                      v597 = *(v596 + 72);
                      sub_22C371E00();
                      v68 = sub_22C7F4358(&qword_2814357B0, v598);
                      do
                      {
                        sub_22C376028();
                        sub_22C909F8C();
                        sub_22C7F4744();
                      }

                      while (!v269);
                    }

                    v599 = sub_22C38688C();
                    sub_22C4706F0(v599, v600);

                    sub_22C37B438();
                  }
                }

                else
                {
                  sub_22C3834A8();
                  sub_22C377748();
                  v583();
                  MEMORY[0x2318B8B10](0);
                  sub_22C38C11C();
                  sub_22C7F4358(&qword_27D9BC858, v584);
                  sub_22C37A430();
                  sub_22C909F8C();
                  v585 = sub_22C375118();
                  v586(v585);
                }

                sub_22C36B788();
                v595 = &v978;
                goto LABEL_312;
              }

              sub_22C381BF8();
LABEL_322:
            }

            else
            {
              sub_22C3834A8();
              sub_22C377748();
              v511();
              MEMORY[0x2318B8B10](0);
              sub_22C38C11C();
              sub_22C7F4358(&qword_27D9BC858, v512);
              sub_22C37A430();
              sub_22C909F8C();
              v513 = sub_22C375118();
              v514(v513);
            }

            sub_22C36B788();
            v602 = &v956;
            goto LABEL_324;
          }

          sub_22C7F4524(&v948);
          sub_22C7F46FC(v746);
          MEMORY[0x2318B8B10](*(v233 + 16));
          sub_22C7F457C(&v953);
          sub_22C36EE58(&v1030);
          v33 = &qword_2814357B0;
          if (v225)
          {
            sub_22C7F43D4();
            sub_22C37BC60(v747);
            do
            {
              v748 = sub_22C7F4474();
              (v68)(v748);
              sub_22C371E00();
              sub_22C7F4358(&qword_2814357B0, v749);
              sub_22C7E4C18();
              sub_22C37DA38(&v1030);
              v750 = sub_22C37BFBC();
              v751(v750);
              sub_22C7F4570();
            }

            while (!v269);
          }

          sub_22C386DE8(&v946);
          sub_22C7F4668(*(v233 + 16));
          if (v752)
          {
            v753 = 0;
            sub_22C382968();
            sub_22C3892D8(v754);
            v948 = v755;
            v756 = v994;
            sub_22C381BF8();
            while (1)
            {
              sub_22C7F43BC();
              sub_22C7F4250();
              sub_22C388A74();
              sub_22C5CAC28(&v1023);
              sub_22C7F4250();
              v757 = sub_22C7F46B0();
              v1000 = v753;
              if (v757)
              {
                if (v757 == 1)
                {
                  v989 = sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0);
                  v758 = *(v989 + 48);
                  sub_22C7F44E0();
                  v760 = v759[1];
                  v931[0] = *v759;
                  sub_22C7F4588(v759);
                  v946 = v761;
                  sub_22C373A64();
                  sub_22C5CAC28(&v962);
                  sub_22C7F42A8();
                  sub_22C7F4614();
                  sub_22C378824();
                  sub_22C5CAC28(&v963);
                  sub_22C7F4250();
                  v762 = sub_22C7F45AC();
                  if (v762)
                  {
                    if (v762 == 1)
                    {
                      sub_22C36C47C();
                      sub_22C5CAC28(&v938);
                      sub_22C7F42A8();
                      MEMORY[0x2318B8B10](1);
                      sub_22C387CAC();
                      sub_22C7F4840(*(v756 + 16));
                      if (v763)
                      {
                        sub_22C3875E0();
                        do
                        {
                          sub_22C7F465C();
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28(&v1044);
                          sub_22C7F4250();
                          v764 = sub_22C7F46B0();
                          if (v764)
                          {
                            if (v764 == 1)
                            {
                              sub_22C37E7F4();
                              sub_22C7F44E0();
                              v765 = v68;
                              v767 = *v766;
                              v68 = v766[1];
                              v224 = v766[2];
                              sub_22C373A64();
                              v225 = v958;
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C7F4250();
                              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                              if (EnumCaseMultiPayload)
                              {
                                if (EnumCaseMultiPayload == 1)
                                {
                                  sub_22C36C47C();
                                  sub_22C37EDA0(&v1006);
                                  sub_22C7F4614();
                                  sub_22C7F45FC();
                                  sub_22C7F4594();
                                  sub_22C7F4484();
                                  sub_22C7F43A0();
                                  sub_22C7F4358(&qword_27D9BC850, v769);
                                  sub_22C7F441C();
                                  v770 = sub_22C36A3D0();
                                  sub_22C7F4300(v770, v771);
                                }

                                else
                                {
                                  v930 = v224;
                                  sub_22C7F44C8(&v1006);
                                  sub_22C7F4644();
                                  sub_22C7F4768();
                                  if (v224)
                                  {
                                    sub_22C7F43D4();
                                    v785 = v765 + v784;
                                    v787 = *(v786 + 72);
                                    sub_22C371E00();
                                    sub_22C7F4358(&qword_2814357B0, v788);
                                    do
                                    {
                                      sub_22C376028();
                                      sub_22C909F8C();
                                      v785 += v787;
                                      --v224;
                                    }

                                    while (v224);
                                  }

                                  v789 = sub_22C38688C();
                                  sub_22C4706F0(v789, v790);

                                  v224 = v930;
                                }
                              }

                              else
                              {
                                sub_22C3834A8();
                                sub_22C377748();
                                v776();
                                sub_22C7F462C();
                                sub_22C38C11C();
                                sub_22C7F4358(&qword_27D9BC858, v777);
                                sub_22C37A430();
                                sub_22C909F8C();
                                v778 = sub_22C375118();
                                v779(v778);
                              }

                              sub_22C909FFC();

                              sub_22C36B788();
                              sub_22C7F4300(v958, v791);
                              sub_22C38C4D8();
                              v139 = v1048;
                            }

                            else
                            {
                              sub_22C376A28(&v1044);
                              sub_22C7F44A0();
                            }
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C5CAC28(&v984);
                            sub_22C7F42A8();
                            sub_22C7F462C();
                            sub_22C378824();
                            sub_22C5CAC28(&v1005);
                            sub_22C7F4250();
                            v772 = sub_22C7F45AC();
                            if (v772)
                            {
                              if (v772 == 1)
                              {
                                sub_22C36C47C();
                                sub_22C37EDA0(&v1005);
                                MEMORY[0x2318B8B10](1);
                                sub_22C7F45FC();
                                sub_22C7F4594();
                                sub_22C7F4484();
                                sub_22C7F43A0();
                                sub_22C7F4358(&qword_27D9BC850, v773);
                                sub_22C7F441C();
                                v774 = sub_22C36A3D0();
                                sub_22C7F4300(v774, v775);
                              }

                              else
                              {
                                sub_22C3866A4();
                                sub_22C7F44C8(&v1005);
                                MEMORY[0x2318B8B10](2);
                                v68 = *(v756 + 16);
                                MEMORY[0x2318B8B10](v68);
                                if (v68)
                                {
                                  sub_22C7F43D4();
                                  v793 = v756 + v792;
                                  v795 = *(v794 + 72);
                                  sub_22C371E00();
                                  v224 = sub_22C7F4358(&qword_2814357B0, v796);
                                  do
                                  {
                                    sub_22C376028();
                                    sub_22C909F8C();
                                    v793 += v795;
                                    --v68;
                                  }

                                  while (v68);
                                }

                                v797 = sub_22C38688C();
                                sub_22C4706F0(v797, v798);

                                sub_22C37B438();
                              }
                            }

                            else
                            {
                              sub_22C3834A8();
                              sub_22C377748();
                              v780();
                              MEMORY[0x2318B8B10](0);
                              sub_22C38C11C();
                              sub_22C7F4358(&qword_27D9BC858, v781);
                              sub_22C37A430();
                              sub_22C909F8C();
                              v782 = sub_22C375118();
                              v783(v782);
                            }

                            sub_22C36B788();
                            sub_22C7F4300(v957, v799);
                          }

                          sub_22C386394(v1031[1]);
                          v756 = *(v225 + 16);
                          if (v756)
                          {
                            v225 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v756;
                            }

                            while (v756);
                          }

                          v33 = (v33 + 1);
                          sub_22C372DF0();
                          sub_22C7F4714(v800, &a11);
                          sub_22C7F46D4();
                        }

                        while (!v269);
                      }

                      sub_22C7F44FC(&v938);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v801);
                      sub_22C7F441C();
                      v802 = sub_22C36A3D0();
                      sub_22C7F4300(v802, v803);
                    }

                    else
                    {
                      sub_22C7F4524(&v963);
                      sub_22C7F4518(v855);
                      MEMORY[0x2318B8B10](2);
                      MEMORY[0x2318B8B10](*(v756 + 16));
                      v1044 = v756;
                      v856 = *(v756 + 16);
                      sub_22C36EE58(&a17);
                      v33 = &qword_2814357B0;
                      if (v856)
                      {
                        sub_22C7F43D4();
                        v756 = v1044 + v857;
                        v224 = *(v858 + 72);
                        v68 = *(v858 + 16);
                        do
                        {
                          v859 = sub_22C7F4474();
                          (v68)(v859);
                          sub_22C371E00();
                          sub_22C7F4358(&qword_2814357B0, v860);
                          sub_22C7E4C18();
                          sub_22C37DA38(&a17);
                          v861 = sub_22C37BFBC();
                          v862(v861);
                          sub_22C7F4570();
                        }

                        while (!v269);
                      }

                      sub_22C386DE8(&v1033);
                      v863 = *(v756 + 16);
                      if (v863)
                      {
                        v33 = 0;
                        sub_22C7F44D4();
                        v139 = *(v864 + 20);
                        sub_22C382E28();
                        v68 = v756 + v865;
                        v866 = v1004;
                        do
                        {
                          sub_22C7F43BC();
                          sub_22C7F4250();
                          sub_22C388A74();
                          sub_22C5CAC28(&v1045);
                          sub_22C7F4250();
                          v867 = sub_22C7F484C();
                          if (v867)
                          {
                            if (v867 == 1)
                            {
                              sub_22C37E7F4();
                              sub_22C7F44E0();
                              v869 = *v868;
                              v870 = v868[1];
                              v224 = v868[2];
                              sub_22C373A64();
                              v871 = v1045;
                              sub_22C7F42A8();
                              sub_22C7F4614();
                              sub_22C57C528(v1049);
                              sub_22C7F44A0();

                              sub_22C36B788();
                              sub_22C7F4300(v871, v872);
                            }

                            else
                            {
                              sub_22C376A28(&v1045);
                              sub_22C7F44A0();
                            }

                            v866 = v1004;
                          }

                          else
                          {
                            sub_22C373A64();
                            sub_22C7F45E0(&v1045);
                            sub_22C7F462C();
                            v873 = sub_22C7F46A4();
                            sub_22C57C528(v873);
                            sub_22C36B788();
                            sub_22C7F4300(v756, v874);
                          }

                          v866 = *(v866 + v139);
                          sub_22C7F468C();
                          v756 = *(v866 + 16);
                          if (v756)
                          {
                            v866 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v756;
                            }

                            while (v756);
                          }

                          v33 = (v33 + 1);
                          sub_22C372DF0();
                          v875 = sub_22C38B1DC(&v1035);
                          sub_22C7F4300(v875, v876);
                        }

                        while (v33 != v863);

                        sub_22C381838();
                      }

                      else
                      {

                        sub_22C381BF8();
                      }
                    }
                  }

                  else
                  {
                    sub_22C3834A8();
                    sub_22C377748();
                    v846();
                    MEMORY[0x2318B8B10](0);
                    sub_22C38C11C();
                    sub_22C7F4358(&qword_27D9BC858, v847);
                    sub_22C37A430();
                    sub_22C909F8C();
                    v848 = sub_22C375118();
                    v849(v848);
                  }

                  sub_22C3801EC(&v975);

                  sub_22C36B788();
                  v900 = &v962;
                  goto LABEL_551;
                }

                sub_22C376A28(&v1023);
                sub_22C7F44A0();

                v845 = v994;
              }

              else
              {
                sub_22C373A64();
                sub_22C5CAC28(&v960);
                sub_22C7F42A8();
                sub_22C7F462C();
                sub_22C378824();
                sub_22C5CAC28(&v961);
                sub_22C7F4250();
                v804 = sub_22C7F45AC();
                if (v804)
                {
                  if (v804 == 1)
                  {
                    sub_22C36C47C();
                    sub_22C5CAC28(&v937);
                    sub_22C7F42A8();
                    MEMORY[0x2318B8B10](1);
                    sub_22C387CAC();
                    sub_22C7F4840(*(v756 + 16));
                    if (!v805)
                    {
LABEL_509:
                      sub_22C7F44FC(&v937);
                      sub_22C7F4484();
                      sub_22C7F43A0();
                      sub_22C7F4358(&qword_27D9BC850, v841);
                      sub_22C7F441C();
                      sub_22C36B788();
                      sub_22C7F4300(v932, v842);
                      v843 = sub_22C36A3D0();
LABEL_552:
                      sub_22C7F4300(v843, v844);
                      v845 = v994;
                      goto LABEL_553;
                    }

                    sub_22C3875E0();
                    while (2)
                    {
                      sub_22C7F465C();
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28(&v1042);
                      sub_22C7F4250();
                      v806 = sub_22C7F46B0();
                      if (v806)
                      {
                        if (v806 == 1)
                        {
                          v807 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
                          sub_22C7F44E0();
                          v225 = *v808;
                          v224 = v808[1];
                          v809 = v808[2];
                          sub_22C373A64();
                          sub_22C5CAC28(&v983);
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C378824();
                          sub_22C5CAC28(&v1004);
                          sub_22C7F4250();
                          v810 = sub_22C7F45AC();
                          v989 = v225;
                          if (v810)
                          {
                            if (v810 == 1)
                            {
                              sub_22C36C47C();
                              sub_22C37EDA0(&v1004);
                              MEMORY[0x2318B8B10](1);
                              sub_22C7F45FC();
                              sub_22C7F4594();
                              sub_22C7F4484();
                              sub_22C7F43A0();
                              sub_22C7F4358(&qword_27D9BC850, v811);
                              sub_22C7F441C();
                              v812 = sub_22C36A3D0();
                              sub_22C7F4300(v812, v813);
                            }

                            else
                            {
                              sub_22C7F44C8(&v1004);
                              MEMORY[0x2318B8B10](2);
                              sub_22C7F47B4();
                              if (v139)
                              {
                                sub_22C7F43D4();
                                v827 = v756 + v826;
                                v68 = *(v828 + 72);
                                sub_22C371E00();
                                sub_22C7F4358(&qword_2814357B0, v829);
                                do
                                {
                                  sub_22C376028();
                                  sub_22C909F8C();
                                  v827 += v68;
                                  --v139;
                                }

                                while (v139);
                              }

                              v830 = sub_22C38688C();
                              sub_22C4706F0(v830, v831);

                              sub_22C381838();
                            }
                          }

                          else
                          {
                            sub_22C3834A8();
                            sub_22C377748();
                            v818();
                            MEMORY[0x2318B8B10](0);
                            sub_22C38C11C();
                            sub_22C7F4358(&qword_27D9BC858, v819);
                            sub_22C37A430();
                            sub_22C909F8C();
                            v820 = sub_22C375118();
                            v821(v820);
                          }

                          sub_22C7F479C(&v1021);

                          sub_22C36B788();
                          sub_22C7F4300(v956, v832);
                          sub_22C7F46C8(&a10);
LABEL_504:
                          sub_22C386394(v833);
                          v756 = *(v225 + 16);
                          if (v756)
                          {
                            v225 += 32;
                            do
                            {
                              sub_22C7F4674();
                              --v756;
                            }

                            while (v756);
                          }

                          v33 = (v33 + 1);
                          sub_22C372DF0();
                          sub_22C7F4714(v840, &a10);
                          sub_22C7F46D4();
                          if (v269)
                          {
                            goto LABEL_509;
                          }

                          continue;
                        }

                        sub_22C376A28(&v1042);
                        sub_22C7F44A0();
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C5CAC28(&v982);
                        sub_22C7F42A8();
                        sub_22C7F462C();
                        sub_22C378824();
                        sub_22C5CAC28(&v1003);
                        sub_22C7F4250();
                        v814 = sub_22C7F45AC();
                        if (v814)
                        {
                          if (v814 == 1)
                          {
                            sub_22C36C47C();
                            sub_22C37EDA0(&v1003);
                            MEMORY[0x2318B8B10](1);
                            sub_22C7F45FC();
                            sub_22C7F4594();
                            sub_22C7F4484();
                            sub_22C7F43A0();
                            sub_22C7F4358(&qword_27D9BC850, v815);
                            sub_22C7F441C();
                            v816 = sub_22C36A3D0();
                            sub_22C7F4300(v816, v817);
                          }

                          else
                          {
                            sub_22C3866A4();
                            sub_22C7F44C8(&v1003);
                            MEMORY[0x2318B8B10](2);
                            sub_22C7F4768();
                            if (v224)
                            {
                              sub_22C7F43D4();
                              v835 = *(v834 + 72);
                              sub_22C371E00();
                              v68 = sub_22C7F4358(&qword_2814357B0, v836);
                              do
                              {
                                sub_22C376028();
                                sub_22C909F8C();
                                sub_22C7F4744();
                              }

                              while (!v269);
                            }

                            v837 = sub_22C38688C();
                            sub_22C4706F0(v837, v838);

                            sub_22C37B438();
                          }
                        }

                        else
                        {
                          sub_22C3834A8();
                          sub_22C377748();
                          v822();
                          MEMORY[0x2318B8B10](0);
                          sub_22C38C11C();
                          sub_22C7F4358(&qword_27D9BC858, v823);
                          sub_22C37A430();
                          sub_22C909F8C();
                          v824 = sub_22C375118();
                          v825(v824);
                        }

                        sub_22C36B788();
                        sub_22C7F4300(v955, v839);
                      }

                      break;
                    }

                    v833 = v1031[0];
                    goto LABEL_504;
                  }

                  sub_22C7F4524(&v961);
                  sub_22C7F4518(v877);
                  MEMORY[0x2318B8B10](2);
                  MEMORY[0x2318B8B10](*(v756 + 16));
                  v1044 = v756;
                  v878 = *(v756 + 16);
                  v68 = v945;
                  if (v878)
                  {
                    sub_22C7F43D4();
                    v756 = v1044 + v879;
                    v224 = *(v880 + 72);
                    v881 = *(v880 + 16);
                    do
                    {
                      v882 = sub_22C7F4474();
                      v881(v882);
                      sub_22C371E00();
                      sub_22C7F4358(&qword_2814357B0, v883);
                      sub_22C7E4C18();
                      sub_22C909F8C();
                      (*v68)(v922, v25);
                      sub_22C7F4570();
                    }

                    while (!v269);
                  }

                  sub_22C386DE8(&v1033);
                  v33 = *(v756 + 16);
                  sub_22C38C4D8();
                  if (v33)
                  {
                    v884 = 0;
                    sub_22C7F44D4();
                    v886 = *(v885 + 20);
                    sub_22C382E28();
                    v224 = (v756 + v887);
                    sub_22C385E20(&v1034);
                    do
                    {
                      sub_22C7F43BC();
                      sub_22C7F4250();
                      sub_22C388A74();
                      sub_22C5CAC28(&v1043);
                      sub_22C7F4250();
                      v888 = sub_22C7F484C();
                      if (v888)
                      {
                        if (v888 == 1)
                        {
                          v889 = *(sub_22C3A5908(&qword_27D9BC848, &unk_22C926CA0) + 48);
                          sub_22C7F44E0();
                          v891 = *v890;
                          v878 = v890[1];
                          v892 = v890[2];
                          sub_22C373A64();
                          v68 = v1045;
                          sub_22C7F42A8();
                          sub_22C7F4614();
                          sub_22C57C528(v1049);
                          sub_22C7F44A0();

                          sub_22C36B788();
                          sub_22C7F4300(v68, v893);
                        }

                        else
                        {
                          sub_22C7F44C8(&v1043);
                          v897 = *(v896 + 16);
                          sub_22C7F4644();
                          sub_22C7F44A0();
                        }

                        sub_22C385E20(&v1034);
                      }

                      else
                      {
                        sub_22C373A64();
                        sub_22C7F45E0(&v1043);
                        sub_22C7F462C();
                        v894 = sub_22C7F46A4();
                        sub_22C57C528(v894);
                        sub_22C36B788();
                        sub_22C7F4300(v756, v895);
                      }

                      v878 = *(v878 + v886);
                      sub_22C7F468C();
                      v756 = *(v878 + 16);
                      if (v756)
                      {
                        v878 += 32;
                        do
                        {
                          sub_22C7F4674();
                          --v756;
                        }

                        while (v756);
                      }

                      v884 = (v884 + 1);
                      sub_22C372DF0();
                      v898 = sub_22C38B1DC(&v1034);
                      sub_22C7F4300(v898, v899);
                    }

                    while (v884 != v33);

                    sub_22C38C4D8();
                    v139 = v1048;
                  }

                  else
                  {
                  }

                  sub_22C36B788();
                  v900 = &v960;
LABEL_551:
                  v843 = *(v900 - 32);
                  goto LABEL_552;
                }

                sub_22C3834A8();
                sub_22C377748();
                v850();
                MEMORY[0x2318B8B10](0);
                sub_22C38C11C();
                sub_22C7F4358(&qword_27D9BC858, v851);
                sub_22C37A430();
                sub_22C909F8C();
                v852 = sub_22C36D400();
                v845 = v994;
                v853(v852, v756);
                sub_22C36B788();
                sub_22C7F4300(v932, v854);
              }

LABEL_553:
              v225 = *(v845 + v951);
              sub_22C7F468C();
              v756 = *(v225 + 16);
              if (v756)
              {
                v225 += 32;
                do
                {
                  sub_22C7F4674();
                  --v756;
                }

                while (v756);
              }

              v753 = v1000 + 1;
              sub_22C372DF0();
              sub_22C38155C(v901, &v1026);
              if (v753 == v952)
              {
                sub_22C36D438();
                goto LABEL_561;
              }
            }
          }

          sub_22C381BF8();
LABEL_561:
        }

        else
        {
          sub_22C3834A8();
          sub_22C377748();
          v613();
          MEMORY[0x2318B8B10](0);
          sub_22C38C11C();
          sub_22C7F4358(&qword_27D9BC858, v614);
          sub_22C37A430();
          sub_22C909F8C();
          v615 = sub_22C375118();
          v616(v615);
        }

        sub_22C36B788();
        v902 = &v947;
        goto LABEL_563;
      }

LABEL_569:

      v209 = sub_22C90B66C() ^ v920;
      v208 = v912;
      v210 = v919;
      goto LABEL_2;
    }
  }

  __break(1u);
}