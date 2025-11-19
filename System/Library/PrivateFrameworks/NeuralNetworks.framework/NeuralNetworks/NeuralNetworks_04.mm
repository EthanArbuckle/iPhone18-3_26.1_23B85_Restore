uint64_t sub_25BAD922C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v51 = v7;
  v52 = result + 56;
  if (v6)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v6));
      v49 = (v6 - 1) & v6;
LABEL_13:
      v50 = result;
      v12 = *(result + 48) + 56 * (v9 | (v2 << 6));
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v53 = *(v12 + 24);
      v54 = a2;
      v16 = *(v12 + 32);
      v17 = *(v12 + 40);
      v18 = *(v12 + 48);
      v19 = *(a2 + 40);
      sub_25BCB79CC();
      sub_25BAD6C2C(v55, v13, v14);
      MEMORY[0x25F878200](v53);
      MEMORY[0x25F878200](v16);
      sub_25BAD4C78(v55, v17);
      MEMORY[0x25F878200](v18);
      v20 = sub_25BCB7A3C();
      a2 = v54;
      v21 = -1 << *(v54 + 32);
      v22 = v20 & ~v21;
      if ((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = *(v54 + 48) + 56 * v22;
          if (*(v24 + 48) == v18)
          {
            v25 = *(v24 + 40);
            v26 = *(v25 + 16);
            if (v26 == *(v17 + 16))
            {
              v28 = *v24;
              v27 = *(v24 + 8);
              v29 = *(v24 + 16);
              v30 = *(v24 + 24);
              if (v26)
              {
                v31 = v25 == v17;
              }

              else
              {
                v31 = 1;
              }

              result = *(v24 + 32);
              if (!v31)
              {
                v32 = (v25 + 32);
                v33 = (v17 + 32);
                while (v26)
                {
                  if (*v32 != *v33)
                  {
                    goto LABEL_37;
                  }

                  ++v32;
                  ++v33;
                  if (!--v26)
                  {
                    goto LABEL_25;
                  }
                }

                __break(1u);
LABEL_59:
                __break(1u);
                goto LABEL_60;
              }

LABEL_25:
              v34 = result == v16 && v30 == v53;
              if (v34 && v28 == v13)
              {
                v36 = *(v27 + 16);
                if (v36 == *(v14 + 16) && v29 == v15)
                {
                  break;
                }
              }
            }
          }

LABEL_37:
          v22 = (v22 + 1) & v23;
          if (((*(v8 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            return 0;
          }
        }

        if (v36 && v27 != v14)
        {
          v38 = 0;
          v39 = v27 + 32;
          while (v38 != v36)
          {
            v40 = (v39 + 16 * v38);
            v41 = *v40;
            v42 = (v14 + 32 + 16 * v38);
            v43 = *v42;
            v44 = *(*v40 + 16);
            if (v44 != *(*v42 + 16))
            {
              goto LABEL_37;
            }

            v45 = v40[8];
            result = v42[8];
            if (v44)
            {
              v46 = v41 == v43;
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              v47 = (v41 + 32);
              v48 = (v43 + 32);
              while (v44)
              {
                if (*v47 != *v48)
                {
                  goto LABEL_37;
                }

                ++v47;
                ++v48;
                if (!--v44)
                {
                  goto LABEL_52;
                }
              }

              goto LABEL_59;
            }

LABEL_52:
            if (v45 != result)
            {
              goto LABEL_37;
            }

            if (++v38 == v36)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_61;
        }

LABEL_54:
        result = v50;
        v7 = v51;
        v3 = v52;
        v6 = v49;
        if (v49)
        {
          continue;
        }

        break;
      }

      return 0;
    }
  }

  v10 = v2;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v2 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v2);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v49 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t sub_25BAD9550(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 2) == *(i - 2); i += 3)
    {
      v5 = *(v3 - 1);
      v6 = *(i - 1);
      v7 = *(v5 + 16) == *(v6 + 16) && *v3 == *i;
      if (!v7 || (sub_25BAD916C(v5, v6) & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_25BAD95F0(size_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_25BC4DA80(a1);
    return a2;
  }

  else
  {

    return sub_25BAD9644(a1, a2);
  }
}

uint64_t sub_25BAD9644(size_t a1, uint64_t a2)
{
  v3 = a2;
  v59 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v46 = 0;
    v4 = 0;
    v6 = a1 + 56;
    v5 = *(a1 + 56);
    v7 = -1;
    v8 = -1 << *(a1 + 32);
    v50 = ~v8;
    v51 = a1;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v5;
    v11 = (63 - v8) >> 6;
    v12 = a2 + 56;
    v13 = 1;
    v52 = a1 + 56;
    if ((v9 & v5) != 0)
    {
LABEL_6:
      v14 = v4;
LABEL_11:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v2 = *(*(a1 + 48) + (v16 | (v14 << 6)));
      v17 = *(v3 + 40);
      sub_25BCB79CC();
      sub_25BCB7A0C();
      v18 = sub_25BCB7A3C();
      v19 = -1 << *(v3 + 32);
      v20 = ~v19;
      while (1)
      {
        v4 = (v18 & v20);
        v7 = (v18 & v20) >> 6;
        v6 = 1 << (v18 & v20);
        if ((v6 & *(v12 + 8 * v7)) == 0)
        {
          v4 = v14;
          a1 = v51;
          v6 = v52;
          v7 = -1;
          if (v10)
          {
            goto LABEL_6;
          }

          goto LABEL_7;
        }

        if (v2 == v4[*(v3 + 48)])
        {
          break;
        }

        v18 = (v4 + 1);
      }

      v56 = v50;
      v57 = v14;
      v58 = v10;
      v54 = v51;
      v55 = v52;
      v13 = (63 - v19) >> 6;
      v2 = 8 * v13;
      v21 = sub_25BCB617C();
      if (v13 > 0x80)
      {
        goto LABEL_42;
      }

      while (1)
      {
        v47 = v13;
        v48 = &v46;
        MEMORY[0x28223BE20](v21);
        v13 = &v46 - v22;
        memcpy(&v46 - v22, (v3 + 56), v2);
        v23 = *(v3 + 16);
        *(v13 + 8 * v7) &= ~v6;
        v24 = v23 - 1;
        v6 = 1;
        v2 = v51;
        v7 = v52;
        while (1)
        {
          v49 = v24;
LABEL_20:
          if (!v10)
          {
            break;
          }

LABEL_25:
          v26 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
          v27 = *(*(v2 + 48) + (v26 | (v14 << 6)));
          v28 = *(v3 + 40);
          sub_25BCB79CC();
          v4 = &v53;
          sub_25BCB7A0C();
          v29 = sub_25BCB7A3C();
          v30 = ~(-1 << *(v3 + 32));
          do
          {
            v31 = v29 & v30;
            v32 = (v29 & v30) >> 6;
            v33 = 1 << (v29 & v30);
            if ((v33 & *(v12 + 8 * v32)) == 0)
            {
              v7 = v52;
              goto LABEL_20;
            }

            v29 = v31 + 1;
          }

          while (v27 != *(*(v3 + 48) + v31));
          v34 = *(v13 + 8 * v32);
          *(v13 + 8 * v32) = v34 & ~v33;
          v7 = v52;
          if ((v34 & v33) == 0)
          {
            goto LABEL_20;
          }

          v24 = v49 - 1;
          if (__OFSUB__(v49, 1))
          {
            __break(1u);
          }

          if (v49 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_35;
          }
        }

        while (1)
        {
          v25 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v25 >= v11)
          {
            v3 = sub_25BAD9A80(v13, v47, v49, v3);
            v10 = 0;
            goto LABEL_35;
          }

          v10 = *(v7 + 8 * v25);
          ++v14;
          if (v10)
          {
            v14 = v25;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:

        v49 = v2;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }

        v2 = v49;
      }

      v42 = swift_slowAlloc();
      v43 = v46;
      v44 = sub_25BC4DE10(v42, v13, (v3 + 56), v13, v3, v4, &v54);
      if (v43)
      {

        result = MEMORY[0x25F8797F0](v42, -1, -1);
        __break(1u);
        return result;
      }

      v45 = v44;

      MEMORY[0x25F8797F0](v42, -1, -1);
      v2 = v54;
      v7 = v55;
      v14 = v57;
      v50 = v56;
      v3 = v45;
      v10 = v58;
LABEL_35:
      v35 = v2;
      v36 = v7;
      v37 = v50;
      v38 = v14;
      v39 = v10;
    }

    else
    {
LABEL_7:
      v15 = v4;
      while (1)
      {
        v14 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_41;
        }

        if (v14 >= v11)
        {
          break;
        }

        v10 = *(v6 + 8 * v14);
        ++v15;
        if (v10)
        {
          goto LABEL_11;
        }
      }

      v35 = sub_25BCB617C();
      v36 = v6;
      v37 = v50;
      v38 = v4;
      v39 = 0;
    }

    sub_25BAD9A7C(v35, v36, v37, v38, v39);
  }

  else
  {

    v3 = MEMORY[0x277D84FA0];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_25BAD9A80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  result = sub_25BCB70DC();
  v9 = result;
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
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25BAD9C8C()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5050, &unk_25BCC7160);
  sub_25BCB6D0C();
  return v3;
}

void sub_25BAD9D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 48;
  v19 = a1 + 48;
  v20 = MEMORY[0x277D84F90];
  v22 = v4;
LABEL_2:
  for (i = (v5 + 24 * v3); ; i += 3)
  {
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v17 = sub_25BCB614C();
      v24 = v20;
      v25 = v17;
      sub_25BAD8324(v17);

      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    v21 = v3 + 1;
    v7 = *(i - 1);
    v8 = *i;
    v9 = *(i - 2);
    sub_25BCB617C();

    v10 = sub_25BAD9F58();
    v24 = v9;
    v25 = v7;
    MEMORY[0x28223BE20](v10);
    v18[2] = &v24;
    v11 = sub_25BAD9FE0(sub_25BADA100, v18, v10);

    if (v11)
    {
      v12 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = *(v12 + 16);
        OUTLINED_FUNCTION_12_22();
        v12 = v26;
      }

      v5 = v19;
      v15 = *(v12 + 16);
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_25BAD8238();
        v12 = v26;
      }

      *(v12 + 16) = v15 + 1;
      v20 = v12;
      v16 = (v12 + 24 * v15);
      v16[4] = v9;
      v16[5] = v7;
      v16[6] = v8;
      v3 = v21;
      v4 = v22;
      goto LABEL_2;
    }

    ++v3;
    v4 = v22;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_25BAD9F58()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = [*(v0 + 80) inputNames];
    v1 = sub_25BCB673C();

    v3 = *(v0 + 96);
    *(v0 + 96) = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

BOOL sub_25BAD9FE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;
    sub_25BCB617C();
    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_25BADA0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

uint64_t sub_25BADA120(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BCB5EBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - v10;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v12 = sub_25BCB5EEC();
  __swift_project_value_buffer(v12, qword_28154BEB8);
  sub_25BCB5EAC();
  v13 = sub_25BCB5EDC();
  v14 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v13, v14, v16, "Bind Inputs", "", v15, 2u);
    MEMORY[0x25F8797F0](v15, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v17 = sub_25BCB5F2C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_25BCB5F1C();
  (*(v5 + 8))(v11, v4);
  v21 = *(a1 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v41[0] = v20;
    v50 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v41[1] = *(v2 + 136);
    v42 = v2;
    v23 = (a1 + 48);
    v24 = &off_279972000;
    while (1)
    {
      v46 = v21;
      v26 = *(v23 - 2);
      v25 = *(v23 - 1);
      v27 = *v23;
      v28 = *(*v23 + 152);
      v43 = *(*v23 + 160);

      swift_retain_n();
      sub_25BCB617C();
      v44 = v28;
      sub_25BCB617C();
      v29 = sub_25BA928B4();
      [v29 lock];

      sub_25BA92920(v27, 0, 0, &v48);
      v45 = 0;
      [*(v27 + 224) v24[151]];

      LOBYTE(v29) = sub_25BADA5F4(v26, v25, v48, v49);
      swift_unknownObjectRelease();
      v30 = v29 ^ 1 | *(v2 + 88);
      v31 = sub_25BADA8B4(v26, v25);
      if (v31)
      {
        v32 = v31;

        v33 = *(v32 + 216);
        *(v32 + 216) = v30 & 1;
        *(v32 + 217) = (*(v32 + 217) | v30 ^ v33) & 1;
      }

      else
      {
        v48 = v44;
        v47[0] = v43;
        v34 = *(v2 + 80);
        type metadata accessor for EspressoBuffer();
        v32 = swift_allocObject();
        sub_25BCB617C();
        sub_25BCB617C();
        sub_25BB71410(v26, v25, &v48, v47, 0, v30 & 1, v34);
        sub_25BB7110C(v32);
      }

      sub_25BADA93C(0);

      v35 = sub_25BA928B4();
      [v35 lock];

      v36 = v45;
      sub_25BA92920(v27, 0, 0, &v48);
      if (v36)
      {
        break;
      }

      [*(v27 + 224) unlock];

      v37 = v49;
      ObjectType = swift_getObjectType();
      sub_25BADAA40(v32, ObjectType, v37);

      swift_unknownObjectRelease();
      sub_25BCB723C();
      v39 = *(v50 + 16);
      sub_25BCB728C();
      v24 = &off_279972000;
      sub_25BCB729C();
      sub_25BCB725C();
      v23 += 3;
      v21 = v46 - 1;
      v2 = v42;
      if (v46 == 1)
      {
        v22 = v50;
        goto LABEL_13;
      }
    }

    [*(v27 + 224) unlock];

    __break(1u);
  }

  else
  {
LABEL_13:
    sub_25BADBBAC();

    return v22;
  }

  return result;
}

uint64_t sub_25BADA5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25BADA7FC(a3, a4);
  if (*(v4 + 64) == 1)
  {
    v9 = 1;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v9 = sub_25BB711A0(ObjectType, a4);
  }

  sub_25BADA6E4(a1, a2, &v14 + 1);
  v11 = BYTE1(v14);
  v12 = swift_getObjectType();
  (*(a4 + 8))(&v14, v12, a4);
  if (v11 == 10)
  {
    return v8 & v9 & (v14 == 10);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BADA6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 144);
  if (*(v8 + 16) && (v9 = sub_25BA9266C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + v9);
  }

  else
  {
    swift_endAccess();
    v12 = *(v4 + 80);
    v13 = sub_25BCB633C();
    v14 = [v12 dataTypeForBlobWithName_];

    sub_25BC9B304(v14, v18);
    v11 = v18[0];
    swift_beginAccess();
    v15 = *(v4 + 144);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v4 + 144);
    sub_25BC1A34C();
    *(v4 + 144) = v17;
  }

  result = swift_endAccess();
  *a3 = v11;
  return result;
}

BOOL sub_25BADA7FC(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    return 1;
  }

  v6 = getpagesize();
  swift_getObjectType();
  v7 = dynamic_cast_existential_1_conditional(a1);
  if (v7)
  {
    return *(v7 + 32) == v6;
  }

  else
  {
    ObjectType = swift_getObjectType();
    v10 = sub_25BC5D7D0(ObjectType, a2);
    if (v6 == -1)
    {
      return 1;
    }

    if (v6)
    {
      return v10 % v6 == 0;
    }

    else
    {
      return v10 == 0;
    }
  }
}

uint64_t sub_25BADA8B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_25BA9266C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();
  return v8;
}

uint64_t sub_25BADA93C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_8;
  }

  v3 = result;
  if (!a1)
  {

    goto LABEL_8;
  }

  if (v3 != a1)
  {
LABEL_8:
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = Strong;

      v6 = sub_25BC76C08();
      [v6 lock];

      if ((*(v5 + 40) & 0x8000000000000000) != 0)
      {
        v7 = *(v5 + 32);
        swift_unknownObjectRetain();
      }

      else
      {
        sub_25BC76F00();
      }

      [*(v5 + 48) unlock];
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_10();
    }

    swift_weakAssign();
  }
}

uint64_t sub_25BADAA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 217) == 1)
  {
    sub_25BB71DE4(a1);
  }

  if (*(a1 + 216))
  {

    return sub_25BADB1D0(a1, a2, a3);
  }

  else
  {

    return sub_25BADAADC(a1, a2, a3);
  }
}

uint64_t sub_25BADAADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 64))(sub_25BADADB8, a1, MEMORY[0x277D84F78] + 8, a2, a3);
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(a1 + 32);
  sub_25BCB63CC();
  swift_beginAccess();
  LODWORD(Strong) = espresso_network_bind_buffer();
  swift_endAccess();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    sub_25BCB617C();
LABEL_6:
    sub_25BA97890();
  }

  result = sub_25BADAE6C(a1, a2, a3);
  if (v11 != 2 || result | v10)
  {
    sub_25BB6ED50(result, v10, v11);
    goto LABEL_6;
  }

  return result;
}

void sub_25BADAD24()
{
  OUTLINED_FUNCTION_1_32();
  sub_25BAA4554(0);
  IOSurfaceGetBaseAddress(*(v0 + 16));
  sub_25BAA4640();
  v2 = OUTLINED_FUNCTION_2_33();
  v1(v2);
  sub_25BAA46FC(0);
}

uint64_t sub_25BADADD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    result = swift_beginAccess();
    *(a3 + 48) = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BADAE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v6 = sub_25BCB67DC();
  *(v6 + 16) = 10;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 32) = 0u;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = [Strong network];

  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = sub_25BCB63CC();
  blob_shape = espresso_network_query_blob_shape();

  if (blob_shape)
  {

    result = 1;
    goto LABEL_28;
  }

  if (!*(v6 + 16))
  {
    sub_25BCB617C();
    v11 = v6;
    goto LABEL_14;
  }

  if (v30 < 0)
  {
    goto LABEL_31;
  }

  blob_shape = sub_25BABAF60(0, v30, v6);
  v11 = v14;
  Strong = v15;
  v8 = v16;
  if (v16)
  {
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);

    if (__OFSUB__(v8 >> 1, Strong))
    {
      goto LABEL_32;
    }

    if (v18 != (v8 >> 1) - Strong)
    {
      goto LABEL_33;
    }

    v11 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x277D84F90];
    }

    goto LABEL_14;
  }

  while (1)
  {
    v11 = sub_25BABA62C(blob_shape, v11, Strong, v8);
    swift_unknownObjectRelease();
LABEL_14:
    v19 = *(v11 + 16);
    if (v19)
    {
      v20 = (v11 + 32);
      v21 = 1;
      while (1)
      {
        v22 = *v20++;
        blob_shape = v21 * v22;
        if ((v21 * v22) >> 64 != (v21 * v22) >> 63)
        {
          break;
        }

        v21 = blob_shape;
        if (!--v19)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

    blob_shape = 1;
LABEL_20:
    Strong = (a3 + 16);
    v8 = *(a3 + 16);
    (v8)(&v29, a2, a3);
    v23 = *(v29 + 16);
    if (!v23)
    {
      break;
    }

    v24 = 1;
    v25 = 32;
    while (1)
    {
      v26 = *(v29 + v25);
      v27 = v24 * v26;
      if ((v24 * v26) >> 64 != (v24 * v26) >> 63)
      {
        break;
      }

      v25 += 8;
      v24 *= v26;
      if (!--v23)
      {

        if (blob_shape != v27)
        {
          goto LABEL_27;
        }

        goto LABEL_25;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_unknownObjectRelease();
  }

  if (blob_shape == 1)
  {
LABEL_25:

    result = 0;
  }

  else
  {
LABEL_27:
    (v8)(&v29, a2, a3);

    result = v29;
  }

LABEL_28:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BADB1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  sub_25BCB63CC();
  swift_beginAccess();
  LODWORD(Strong) = espresso_network_bind_buffer();
  swift_endAccess();

  if (Strong)
  {
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCDCEA0);
    type metadata accessor for EspressoBuffer();
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0x74656E206F742060, 0xEC0000006B726F77);
    sub_25BCB617C();
LABEL_9:
    sub_25BA97890();
  }

  result = sub_25BADAE6C(a1, a2, a3);
  if (v13 != 2 || result | v12)
  {
    sub_25BB6ED50(result, v12, v13);
    goto LABEL_9;
  }

  if ((v10 & 1) == 0)
  {
    return sub_25BADB3F4(v3, a1, a2, a3);
  }

  return result;
}

uint64_t sub_25BADB3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25BADB604(v18);
  v7 = LOBYTE(v18[0]);
  (*(a4 + 8))(v18, a3, a4);
  v8 = v18[0];
  LOBYTE(v18[0]) = v7;
  LOBYTE(v17) = v8;
  if (!sub_25BADB724(v18, &v17))
  {
    return (*(a4 + 56))(sub_25BB72FA8, a2, MEMORY[0x277D84F78] + 8, a3, a4);
  }

  swift_beginAccess();
  v9 = *(a2 + 48);
  sub_25BADB778(&v17);
  result = v17;
  v11 = *(v17 + 16);
  if (v11)
  {
    v12 = (v17 + 32);
    v13 = 1;
    while (1)
    {
      v14 = *v12++;
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      v13 = v15;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 1;
LABEL_9:

    if ((v7 - 1) > 0xA)
    {
      v16 = 1;
    }

    else
    {
      v16 = qword_25BCC2B60[(v7 - 1)];
    }

    if ((v15 * v16) >> 64 == (v15 * v16) >> 63)
    {
      MEMORY[0x28223BE20](result);
      return (*(a4 + 56))(sub_25BADBB84);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BADB604@<X0>(char *a1@<X8>)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v2 + 208);
  switch(v5)
  {
    case 65568:
      v6 = 10;
      break;
    case 131080:
      v6 = 0;
      break;
    case 262152:
      v6 = 4;
      break;
    case 131104:
      v6 = 2;
      break;
    default:
      sub_25BCB70FC();

      MEMORY[0x25F876C90](*(v2 + 16), *(v2 + 24));
      sub_25BCB617C();
      OUTLINED_FUNCTION_2_26();
      sub_25BA97890();
  }

  *a1 = v6;
  return result;
}

BOOL sub_25BADB724(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3)
  {
    return 0;
  }

  if (v2 == 12)
  {
    return v3 != 4;
  }

  if (v2 == 10)
  {
    return v3 != 10;
  }

  return v2 != 4 || v3 != 12;
}

uint64_t sub_25BADB778@<X0>(uint64_t *a1@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = sub_25BCB67DC();
  *(v3 + 16) = 10;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 32) = 0u;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong network];

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  OUTLINED_FUNCTION_11_3();
  sub_25BCB63CC();
  blob_shape = espresso_network_query_blob_shape();

  if (blob_shape)
  {
    sub_25BCB70FC();

    v20 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x25F876C90](v20);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_26();
    sub_25BA97890();
  }

  v8 = sub_25BABAF60(0, 0, v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_3;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);

  if (__OFSUB__(v14 >> 1, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v17 != (v14 >> 1) - v12)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
LABEL_3:
    v15 = sub_25BABA62C(v8, v10, v12, v14);
LABEL_10:
    result = swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v15 = swift_dynamicCastClass();
  OUTLINED_FUNCTION_10();
  result = swift_unknownObjectRelease_n();
  if (!v15)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  *a1 = v15;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BADB9D4(const float *a1, uint64_t a2, char a3, float *a4, uint64_t a5, unsigned __int8 a6, uint64_t a7, uint64_t a8)
{
  v26 = a5;
  v25 = a4;
  v13 = sub_25BCB783C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a3;
  v28 = a6;
  ObjectType = swift_getObjectType();
  (*(a8 + 16))(&v27, ObjectType, a8);
  result = v27;
  v20 = *(v27 + 16);
  if (v20)
  {
    v21 = (v27 + 32);
    v22 = 1;
    while (1)
    {
      v23 = *v21++;
      v24 = v22 * v23;
      if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
      {
        break;
      }

      v22 = v24;
      if (!--v20)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    (*(v14 + 104))(v17, *MEMORY[0x277D84660], v13);
    sub_25BAA83F4(a1, a2, &v29, v25, v26, &v28);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

void sub_25BADBBAC()
{
  OUTLINED_FUNCTION_9_18();
  v25 = v0;
  v1 = sub_25BCB5EFC();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_25BCB5EBC();
  v11 = OUTLINED_FUNCTION_2(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  if (qword_28154BEB0 != -1)
  {
    OUTLINED_FUNCTION_3_18();
  }

  v19 = sub_25BCB5EEC();
  __swift_project_value_buffer(v19, qword_28154BEB8);
  v20 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v21 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v4 + 88))(v9, v1) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v9, v1);
      v22 = "";
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v20, v21, v24, v25, v22, v23, 2u);
    OUTLINED_FUNCTION_89();
  }

  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BADBDEC()
{
  sub_25BADBF48(*(v0 + 120));
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
  *(swift_initStackObject() + 16) = v2;

  sub_25BCB617C();

  return v2;
}

void sub_25BADBF48(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 48;
  v16 = MEMORY[0x277D84F90];
  v15 = a1 + 48;
LABEL_2:
  v4 = (v3 + 32 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v18 = v1 + 1;
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 - 2);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v8 = sub_25BADBE78(v17, v7, v5);

    if (v8)
    {
      v9 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v16 + 16);
        sub_25BAB1E30();
        v9 = v13;
      }

      v3 = v15;
      v10 = *(v9 + 16);
      if (v10 >= *(v9 + 24) >> 1)
      {
        sub_25BAB1E30();
        v9 = v14;
      }

      *(v9 + 16) = v10 + 1;
      v16 = v9;
      v11 = v9 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v5;
      v1 = v18;
      goto LABEL_2;
    }

    v4 += 4;
    ++v1;
  }
}

uint64_t sub_25BADC0C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_25BCB79CC();
        sub_25BCB617C();
        sub_25BCB625C();
        result = sub_25BCB7A3C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_25BADC2F4(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25BADC45C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25BADC0C0(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_25BCB79CC();
      sub_25BCB625C();
      v17 = sub_25BCB7A3C();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_25BC4AB28();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_25BADC45C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6960, &unk_25BCCE490);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_25BC42288(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25BADC6B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BCB5EBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v12 = sub_25BCB5EEC();
  __swift_project_value_buffer(v12, qword_28154BEB8);
  sub_25BCB5EAC();
  v13 = sub_25BCB5EDC();
  v14 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v13, v14, v16, "Bind Outputs", "", v15, 2u);
    MEMORY[0x25F8797F0](v15, -1, -1);
  }

  (*(v5 + 16))(v9, v11, v4);
  v17 = sub_25BCB5F2C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_25BCB5F1C();
  (*(v5 + 8))(v11, v4);
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v39 = MEMORY[0x277D84F90];
    sub_25BADCA10(0, v20, 0);
    v21 = v39;
    v22 = (a1 + 40);
    do
    {
      v23 = *v22;
      v35[0] = *(v22 - 1);
      v35[1] = v23;
      sub_25BCB617C();
      sub_25BADCAD8(v35, v2, &v36);

      v24 = v36;
      v25 = v37;
      v26 = v38;
      v39 = v21;
      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      if (v28 >= v27 >> 1)
      {
        v33 = v38;
        v34 = v37;
        sub_25BADCA10((v27 > 1), v28 + 1, 1);
        v26 = v33;
        v25 = v34;
        v21 = v39;
      }

      *(v21 + 16) = v28 + 1;
      v29 = v21 + 40 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v25;
      *(v29 + 56) = v26;
      v22 += 2;
      --v20;
    }

    while (v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *&v37 = sub_25BCB614C();
  v30 = sub_25BADD720(v21);

  v36 = v30;
  sub_25BADD880();
  v31 = v36;
  sub_25BADBBAC();

  return v31;
}

void *sub_25BADCA10(void *a1, int64_t a2, char a3)
{
  result = sub_25BB03794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_25BADCA30@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!*(a4 + 16) || (result = sub_25BA9266C(result, a2), (v8 & 1) == 0) || (v9 = *(*(a4 + 56) + 8 * result), !*(v9 + 16)))
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    return result;
  }

  v10 = *(v9 + 32);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 >= *(a3 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v11 = a3 + 32 * v10;
  v12 = *(v11 + 48);
  LOBYTE(v11) = *(v11 + 56);
  *a5 = v12;
  *(a5 + 8) = v11;

  return sub_25BCB617C();
}

uint64_t sub_25BADCAD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 120);
  v7 = *(a2 + 128);
  sub_25BADCA30(*a1, v5, v6, v7, &v30);
  v8 = v30;
  sub_25BADCA30(v4, v5, v6, v7, &v30);
  v9 = v31;

  sub_25BADA6E4(v4, v5, &v30);
  v11 = v9 != 10 || v30 != 10;
  v12 = v11 | *(a2 + 89);
  v13 = *(a2 + 136);
  swift_beginAccess();
  v14 = sub_25BADCE14(v4, v5, *(v13 + 16));
  swift_endAccess();
  if (v14)
  {
    sub_25BADA93C(0);
    v15 = (v14 + 216);
    v16 = *(v14 + 216);
    *(v14 + 216) = v12 & 1;
    *(v14 + 217) = (*(v14 + 217) | v12 ^ v16) & 1;
    v17 = v9;
    v18 = v14;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = v8;
    v33 = v9;
    v22 = *(a2 + 80);
    type metadata accessor for EspressoBuffer();
    v23 = swift_allocObject();
    v32 = v9;
    v18 = v23;
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BB71410(v4, v5, &v30, &v33, 1, v12 & 1, v22);
    sub_25BB7110C(v18);
    v17 = v32;
    v15 = (v18 + 216);
    if (*(v18 + 216))
    {
LABEL_9:
      v30 = v8;
      v33 = v17;
      type metadata accessor for EspressoTensorStorage();
      swift_allocObject();
      v19 = sub_25BC76C74(&v30, &v33, v18);

      v20 = &off_286D54F78;
      v21 = v4;
      if (!v14)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  v30 = v8;
  v33 = v17;
  v21 = v4;
  v19 = sub_25BADCE1C(&v30, &v33, v4, v5);
  v20 = v24;

  if (!v14)
  {
LABEL_15:
    ObjectType = swift_getObjectType();
    sub_25BADAA40(v18, ObjectType, v20);
    goto LABEL_16;
  }

LABEL_13:
  if ((*(v18 + 217) & 1) != 0 || (*v15 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (object_getClass(v19) == _TtC14NeuralNetworks21EspressoTensorStorage)
  {
    if (v19)
    {
      v26 = v19[5];
      if ((v26 & 0x8000000000000000) == 0)
      {
        v27 = v19[4];
        swift_unknownObjectRetain_n();
        sub_25BB72F90(v27, v26);
        sub_25BADA93C(v19);
        sub_25BB72F9C(v27, v26);
        swift_unknownObjectRelease();
      }
    }
  }

  *a3 = v21;
  a3[1] = v5;
  a3[2] = v19;
  a3[3] = v20;
  a3[4] = v18;
  return sub_25BCB617C();
}

uint64_t sub_25BADCDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25BA9266C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_25BADCE1C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a2;
  result = sub_25BADA6E4(a3, a4, &v21);
  if (v5 == 10 && v21 == 10)
  {
    result = sub_25BADCFF4();
    if (v9)
    {
      v8 = 4;
    }

    else
    {
      v8 = result;
    }
  }

  else if ((v5 - 1) > 0xA)
  {
    v8 = 1;
  }

  else
  {
    v8 = qword_25BCC2B60[(v5 - 1)];
  }

  v10 = *(v4 + 16);
  if (v10)
  {
    v11 = (v4 + 32);
    v12 = 1;
    while (1)
    {
      v13 = *v11++;
      v14 = v12 * v13;
      if ((v12 * v13) >> 64 != (v12 * v13) >> 63)
      {
        break;
      }

      v12 = v14;
      if (!--v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  v14 = 1;
LABEL_17:
  if ((v5 - 1) > 0xA)
  {
    v15 = 1;
  }

  else
  {
    v15 = qword_25BCC2B60[(v5 - 1)];
  }

  if ((v14 * v15) >> 64 != (v14 * v15) >> 63)
  {
    goto LABEL_26;
  }

  type metadata accessor for IOSurfaceTensorStorage();
  v21 = v4;
  v20 = v5;
  if (sub_25BADD034(&v21, &v20))
  {
    v21 = v4;
    v20 = v5;
    sub_25BCB617C();
    return sub_25BADD16C(&v21, &v20);
  }

  else
  {
    v17 = sub_25BCB6F1C();
    v19 = v18;
    type metadata accessor for NativeTensorStorage();
    v21 = v4;
    v20 = v5;
    v16 = sub_25BA9FCEC(&v21, &v20, v17, v19, v8);
    sub_25BCB617C();
  }

  return v16;
}

uint64_t sub_25BADCFF4()
{
  if (*(v0 + 40) == 1)
  {
    return 0;
  }

  else
  {
    return getpagesize();
  }
}

uint64_t sub_25BADD034(uint64_t *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v6 = v2;
  sub_25BCB617C();
  v3 = sub_25BADD088(&v5);

  return v3 & 1;
}

unsigned __int8 *sub_25BADD088(unsigned __int8 *result)
{
  v1 = result[8];
  v2 = *(*result + 16);
  if (v2)
  {
    v3 = (*result + 32);
    v4 = 1;
    while (1)
    {
      v5 = *v3++;
      v6 = v4 * v5;
      if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
      {
        break;
      }

      v4 = v6;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 1;
LABEL_7:
    result = MEMORY[0x25F8785A0](*MEMORY[0x277CD2B88]);
    if (v6 < 1 || result < v6)
    {
      return 0;
    }

    if ((v1 - 1) > 0xA)
    {
      v8 = 1;
    }

    else
    {
      v8 = qword_25BCC4698[(v1 - 1)];
    }

    if ((v6 * v8) >> 64 == (v6 * v8) >> 63)
    {
      v9 = *MEMORY[0x277CD2968];
      v10 = MEMORY[0x25F878540](*MEMORY[0x277CD2968]);
      return (MEMORY[0x25F8785A0](v9) >= v10);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BADD16C(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v8 = *a1;
  v7 = v3;
  if ((v3 - 1) > 0xA)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_25BCC4698[(v3 - 1)];
  }

  v5 = sub_25BADD208(&v8, &v7, v4);
  result = swift_allocObject();
  *(result + 32) = v3;
  *(result + 16) = v5;
  *(result + 24) = v2;
  *(result + 40) = sub_25BA9D8D4;
  *(result + 48) = 0;
  return result;
}

uint64_t sub_25BADD208(uint64_t *a1, unsigned __int8 *a2, Swift::Int a3)
{
  v4 = *a2;
  if ((v4 - 1) > 0xA)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_25BCC4698[(v4 - 1)];
  }

  if (v5 > a3)
  {
    goto LABEL_20;
  }

  v6 = *a1;
  v7 = *(*a1 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = 1;
    while (1)
    {
      v10 = *v8++;
      v11 = v9 * v10;
      if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
      {
        break;
      }

      v9 = v11;
      if (!--v7)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_20;
  }

  v11 = 1;
LABEL_11:
  if ((v11 * v5) >> 64 != (v11 * v5) >> 63)
  {
    goto LABEL_17;
  }

  v12 = *MEMORY[0x277CD2968];
  v13 = MEMORY[0x25F878540](*MEMORY[0x277CD2968]);
  v14 = *MEMORY[0x277CD2948];
  v15 = MEMORY[0x25F878540](*MEMORY[0x277CD2948], v13);
  v16 = v15;
  if (v5 < a3)
  {
    v16 = roundUp(_:toMultipleOf:)(v15, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BB0, &unk_25BCC4688);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCC4630;
  v18 = *MEMORY[0x277CD2B88];
  *(inited + 32) = *MEMORY[0x277CD2B88];
  *(inited + 40) = v11;
  v19 = *MEMORY[0x277CD2A28];
  *(inited + 48) = *MEMORY[0x277CD2A28];
  *(inited + 56) = 1;
  v20 = *MEMORY[0x277CD2960];
  *(inited + 64) = *MEMORY[0x277CD2960];
  *(inited + 72) = v5;
  *(inited + 80) = v12;
  *(inited + 88) = v13;
  *(inited + 96) = v14;
  *(inited + 104) = v16;
  type metadata accessor for CFString(0);
  sub_25BADD5A8();
  v21 = v18;
  v22 = v19;
  v23 = v20;
  v24 = v12;
  v25 = v14;
  sub_25BCB614C();
  v26 = sub_25BCB60FC();
  v27 = IOSurfaceCreate(v26);

  if (v27)
  {

    return v27;
  }

  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003BLL, 0x800000025BCDDD90);
  v29 = MEMORY[0x25F876F80](v6, MEMORY[0x277D83B88]);
  MEMORY[0x25F876C90](v29);

  MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCDDDD0);
  sub_25BCB73CC();
  MEMORY[0x25F876C90](46, 0xE100000000000000);
LABEL_20:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

void sub_25BADD55C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_25BADD5A8()
{
  result = qword_28154BE28;
  if (!qword_28154BE28)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154BE28);
  }

  return result;
}

uint64_t sub_25BADD600()
{
  sub_25BCB79CC();
  v1 = *v0;
  swift_getWitnessTable();
  sub_25BCB5AAC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BADD668()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25BCB5ABC();
}

uint64_t sub_25BADD6B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_25BADD720(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_14_4();
    sub_25BADD860(v5, v6, v7);
    v4 = v22;
    v8 = (v2 + 64);
    do
    {
      v9 = *v8;
      v19 = *(v8 - 4);
      v20 = *(v8 - 3);
      v17 = *(v8 - 1);
      sub_25BCB617C();
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38A0, &qword_25BCBB860);
      OUTLINED_FUNCTION_57();
      OUTLINED_FUNCTION_86_1();
      OUTLINED_FUNCTION_24_2();
      if (v13)
      {
        v16 = v12;
        v18 = v11;
        sub_25BADD860((v10 > 1), v9, 1);
        v12 = v16;
        v11 = v18;
      }

      *(v22 + 16) = v9;
      v14 = v22 + 40 * v1;
      *(v14 + 32) = v21;
      *(v14 + 40) = v11;
      *(v14 + 56) = v12;
      v8 += 5;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void *sub_25BADD860(void *a1, int64_t a2, char a3)
{
  result = sub_25BB0367C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_25BADD880()
{
  OUTLINED_FUNCTION_71();
  v1 = v0;
  v2 = 0;
  v34 = *v0;
  v35 = *(*v0 + 16);
  v3 = (*v0 + 64);
  while (1)
  {
    if (v35 == v2)
    {
      OUTLINED_FUNCTION_64();
      return;
    }

    if (v2 >= *(v34 + 16))
    {
      break;
    }

    v5 = *(v3 - 4);
    v4 = *(v3 - 3);
    v6 = *(v3 - 2);
    v36 = v3;
    v7 = *v3;
    v8 = *(v1[1] + 16);
    sub_25BCB617C();
    swift_unknownObjectRetain();

    if (v8 && (OUTLINED_FUNCTION_0_6(), v10 = sub_25BA92684(v5, v4, v9), (v11 & 1) != 0))
    {
      v12 = OUTLINED_FUNCTION_103(v10);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v37 = v12;
    v13 = v2;
    sub_25BA95FB0(v2);
    v14 = v37;
    v15 = v1[1];
    swift_isUniquelyReferenced_nonNull_native();
    v16 = v1;
    v38 = v1[1];
    OUTLINED_FUNCTION_0_6();
    v17 = v5;
    sub_25BA92684(v5, v4, v18);
    OUTLINED_FUNCTION_41_0();
    if (__OFADD__(v21, v22))
    {
      goto LABEL_19;
    }

    v23 = v19;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3878, &qword_25BCBB838);
    if (sub_25BCB745C())
    {
      OUTLINED_FUNCTION_0_6();
      v26 = sub_25BA92684(v17, v4, v25);
      if ((v24 & 1) != (v27 & 1))
      {
        goto LABEL_21;
      }

      v23 = v26;
    }

    if (v24)
    {
      v28 = v38[7];
      v29 = *(v28 + 8 * v23);
      *(v28 + 8 * v23) = v14;

      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_40_1(&v38[v23 >> 6]);
      v30 = (v38[6] + 16 * v23);
      *v30 = v17;
      v30[1] = v4;
      *(v38[7] + 8 * v23) = v14;

      swift_unknownObjectRelease();
      v31 = v38[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v38[2] = v33;
    }

    v1 = v16;
    v16[1] = v38;
    v3 = v36 + 5;
    v2 = v13 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  sub_25BCB795C();
  __break(1u);
}

void sub_25BADDAA8()
{
  OUTLINED_FUNCTION_8_19();
  v9 = OUTLINED_FUNCTION_29_9(v1, v2, v3, v4, v5, v6, v7, v8, v19, *(v0 + 4 * v1));
  v11 = v10(v9);
  OUTLINED_FUNCTION_35_5(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21);
}

uint64_t sub_25BADDAF4@<X0>(float *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_25BCB783C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v16 = *a1;
  (*(v7 + 16))(v10, a2, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x277D84678])
  {
    v13 = roundf(v11);
  }

  else if (result == *MEMORY[0x277D84670])
  {
    v13 = rintf(v11);
  }

  else if (result == *MEMORY[0x277D84680])
  {
    v13 = ceilf(v11);
  }

  else if (result == *MEMORY[0x277D84688])
  {
    v13 = floorf(v11);
  }

  else if (result == *MEMORY[0x277D84660])
  {
    v13 = truncf(v11);
  }

  else if (result == *MEMORY[0x277D84668])
  {
    result = sub_25BCB69BC();
    v13 = floorf(v11);
    v14 = ceilf(v11);
    if ((result & 1) == 0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_25BCB698C();
    result = (*(v7 + 8))(v10, v6);
    v13 = v16;
  }

  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v13 < 9.2234e18)
  {
    *a3 = v13;
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_25BADDD28()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_61();
  MEMORY[0x25F876C90](0x7265207475706E49, 0xEB00000000726F72);
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_27_0();
  v0 = sub_25BB2B338();
  MEMORY[0x25F876C90](v0);

  MEMORY[0x25F876C90](2606, 0xE200000000000000);
  sub_25BCB73CC();
  OUTLINED_FUNCTION_102();
  __break(1u);
  JUMPOUT(0x25BADDDD8);
}

_DWORD *sub_25BADDE60@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_25BADDE70()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BADE250()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  if (v0[10])
  {

    v7 = v0[11];
  }

  v8 = v0[12];

  v9 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_25BADE340(uint64_t a1)
{
  result = sub_25BB08340(&qword_27FBB3FC8, type metadata accessor for TileOperation);
  *(a1 + 8) = result;
  return result;
}

void sub_25BADE3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_14_6();
  v12 = v10;
  if ((v11 - 2) <= 3u)
  {
    v13 = qword_25BCBC5D8[(v11 - 2)];
  }

  sub_25BC46FA0(v10);
  v14 = *(v12 + 88);
  v15 = sub_25BAAF54C(v14);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v17 = v15;
    OUTLINED_FUNCTION_10_2();
    if (v17 < 0)
    {
      __break(1u);
      goto LABEL_25;
    }

    v18 = 0;
    v16 = a10;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x25F8779B0](v18, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v18 + 32);
      }

      v21 = *(v19 + 160);

      a10 = v16;
      v22 = *(v16 + 16);
      if (v22 >= *(v16 + 24) >> 1)
      {
        sub_25BB00D14();
      }

      ++v18;
      *(v16 + 16) = v22 + 1;
      *(v16 + v22 + 32) = v21;
    }

    while (v17 != v18);
  }

  v23 = sub_25BAA80BC(0, v16);

  if (!v23)
  {
    v24 = *(v12 + 152);
    v25 = sub_25BAAF54C(v24);
    v26 = MEMORY[0x277D84F90];
    if (!v25)
    {
LABEL_22:
      sub_25BAA80BC(0, v26);

      goto LABEL_23;
    }

    v27 = v25;
    OUTLINED_FUNCTION_10_2();
    if ((v27 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v26 = a10;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x25F8779B0](v28, v24);
        }

        else
        {
          v30 = *(v24 + 8 * v28 + 32);
        }

        v31 = *(v29 + 160);

        v32 = *(a10 + 16);
        if (v32 >= *(a10 + 24) >> 1)
        {
          sub_25BB00D14();
        }

        ++v28;
        *(a10 + 16) = v32 + 1;
        *(a10 + v32 + 32) = v31;
      }

      while (v27 != v28);
      goto LABEL_22;
    }

LABEL_25:
    __break(1u);
    JUMPOUT(0x25BADE5F0);
  }

LABEL_23:
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BADE61C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BADE654()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_25BADE68C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25BADE6D4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BADE70C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BADE8F4(char a1)
{
  if (a1)
  {
    return 1701080941;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_25BADE938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB1E394(a1, a2);
  *a3 = result;
  return result;
}

__n128 sub_25BADEA7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25BADEB80(uint64_t a1)
{
  result = sub_25BB2F8C8(&qword_27FBB3820);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BADEBE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25BADEC18(char a1)
{
  result = 0x746867696577;
  switch(a1)
  {
    case 1:
      result = 1935763810;
      break;
    case 2:
      result = 0x656469727473;
      break;
    case 3:
      result = 0x676E6964646170;
      break;
    case 4:
      result = 0x6E6F6974616C6964;
      break;
    case 5:
      result = 0x756F4370756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BADECD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BADEC18(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_25BADED08@<X0>(void *a1@<X8>)
{
  result = TransposedConv1D.weight.getter(&v3);
  *a1 = v3;
  return result;
}

void *sub_25BADED44@<X0>(void *a1@<X8>)
{
  result = TransposedConv1D.bias.getter(&v3);
  *a1 = v3;
  return result;
}

BOOL sub_25BADEE98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25BCB198C();
  return sub_25BCB198C() < v4;
}

BOOL sub_25BADEEDC(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

unint64_t sub_25BADEF2C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_25BADF088()
{
  sub_25BCB625C();
}

uint64_t sub_25BADF128(uint64_t a1)
{
  result = sub_25BB4AD4C(&qword_27FBB4938, type metadata accessor for LSTMLayerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BADF190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_25BB4B138(*a1, a2, *v6, a4, a5, *(a3 + 16));
  *a6 = result;
  return result;
}

uint64_t sub_25BADF1E4(char a1)
{
  if (a1)
  {
    return 0x6C61566574617473;
  }

  else
  {
    return 0x79654B6574617473;
  }
}

__n128 sub_25BADF24C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL sub_25BADF360()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

BOOL sub_25BADF398()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

BOOL sub_25BADF3D0()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

BOOL sub_25BADF408()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

BOOL sub_25BADF440()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

BOOL sub_25BADF478()
{
  OUTLINED_FUNCTION_33_8();
  sub_25BCB761C();
  OUTLINED_FUNCTION_39_1();
  return OUTLINED_FUNCTION_34_8();
}

uint64_t sub_25BADF4B0(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1702521203;
  }
}

uint64_t sub_25BADF4DC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BADF4B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s14NeuralNetworks9ZeroPad1DVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_42_6(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_6_8();
  }
}

uint64_t _s14NeuralNetworks9ZeroPad1DVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25BADF550(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_42_6(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_6_8();
  }
}

uint64_t sub_25BADF568(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25BADF61C(uint64_t a1)
{
  result = sub_25BB6138C(&qword_27FBB4518, type metadata accessor for PadOperation);
  *(a1 + 8) = result;
  return result;
}

__n128 sub_25BADF68C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 112);
  result = *(v1 + 122);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BADF6C4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

_OWORD *sub_25BADF778(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_25BADF7E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BADF830()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BADF870()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_25BADF95C()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 48);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_25BADFA10()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25BADFA74(char a1)
{
  if (a1)
  {
    return 1935763810;
  }

  else
  {
    return 0x746867696577;
  }
}

void *sub_25BADFC20(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

uint64_t sub_25BADFC40()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_25BADFCF4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_25BADFD68()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_25BB93590();
  v0 = *MEMORY[0x277D85DE8];
}

void sub_25BADFDC8()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_25BB93590();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25BADFE48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BADFE68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_25BADFEA4()
{
  v3 = OUTLINED_FUNCTION_20_15();
  v4 = type metadata accessor for MILBlobStorageWriter(v3);
  v5 = OUTLINED_FUNCTION_19_15(v4);
  if (*(v6 + 84) != v1)
  {
    return OUTLINED_FUNCTION_10_18(*(v2 + 20));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v5);
}

uint64_t sub_25BADFF30()
{
  v4 = OUTLINED_FUNCTION_9_21();
  v5 = type metadata accessor for MILBlobStorageWriter(v4);
  result = OUTLINED_FUNCTION_19_15(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = OUTLINED_FUNCTION_18_20();

    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_25BADFFB8()
{
  OUTLINED_FUNCTION_20_15();
  v3 = sub_25BCB598C();
  v4 = OUTLINED_FUNCTION_19_15(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_10_18(*(v2 + 32));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_25BAE0044()
{
  OUTLINED_FUNCTION_9_21();
  v4 = sub_25BCB598C();
  result = OUTLINED_FUNCTION_19_15(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_18_20();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 32)) = (v0 - 1);
  }

  return result;
}

uint64_t sub_25BAE0144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25BAE01D4()
{
  v1 = v0[2];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25BAE0224()
{
  v1 = *(v0 + 3);
  v2 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 120) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 11);

  if (*(v0 + 12))
  {
    v9 = *(v0 + 13);
  }

  v10 = *(v0 + 14);

  if (!__swift_getEnumTagSinglePayload(&v0[v5], 1, v1))
  {
    (*(*(v1 - 8) + 8))(&v0[v5], v1);
  }

  v11 = (((v7 + v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *&v0[v11 + 8];

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v4 | 7);
}

uint64_t sub_25BAE0344()
{
  v1 = *(v0 + 3);
  v2 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 152) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 9);

  v9 = *(v0 + 12);

  if (*(v0 + 13))
  {
    v10 = *(v0 + 14);
  }

  v11 = *(v0 + 18);

  if (!__swift_getEnumTagSinglePayload(&v0[v5], 1, v1))
  {
    (*(*(v1 - 8) + 8))(&v0[v5], v1);
  }

  return MEMORY[0x2821FE8E8](v0, ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v4 | 7);
}

uint64_t sub_25BAE04C4(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE051C(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE05AC(char a1)
{
  if (!a1)
  {
    return 0x69536C656E72656BLL;
  }

  if (a1 == 1)
  {
    return 0x656469727473;
  }

  return 0x676E6964646170;
}

uint64_t sub_25BAE060C()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BAE0668()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BAE06B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE05AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BAE08A4(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE08FC(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154DC68, type metadata accessor for Convolution2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE0954(uint64_t a1)
{
  result = sub_25BBA581C(&qword_28154F570, type metadata accessor for LinearOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE09AC(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation);
  *(a1 + 8) = result;
  return result;
}

float sub_25BAE0A04@<S0>(float *a1@<X0>, _DWORD *a2@<X8>)
{
  if (!a1)
  {
    __break(1u);
    JUMPOUT(0x25BAE0A18);
  }

  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25BAE0A40(uint64_t a1)
{
  result = sub_25BBA8904(&qword_27FBB4078, type metadata accessor for ResizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE0B78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  result = sub_25BBAD304();
  *a3 = result;
  return result;
}

uint64_t sub_25BAE0BB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *v3;
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  return sub_25BBAD2BC();
}

uint64_t sub_25BAE0C70()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25BAE0E08()
{
  OUTLINED_FUNCTION_16_28();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_7_29(v6, v7);
  if (!v11 & v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = qword_25BCC7770[v9];
  }

  if (v12 > v5)
  {
LABEL_14:
    OUTLINED_FUNCTION_0_55();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_2_45();
  }

  if (*(*v8 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_1_43();
      if (!v11)
      {
        break;
      }

      OUTLINED_FUNCTION_10_26();
      if (v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
  OUTLINED_FUNCTION_3_33(v12);
  if (!v11)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_25BCB6F1C();
  OUTLINED_FUNCTION_14_25();
  ObjectType = swift_getObjectType();
  (*(v3 + 48))(v0, v1, ObjectType, v3);
  OUTLINED_FUNCTION_4_39();
  sub_25BA9FCEC(v14, v15, v16, v17, v5);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_20_18();
  OUTLINED_FUNCTION_15_24();
}

uint64_t sub_25BAE10D8()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 99, 7);
}

uint64_t sub_25BAE12BC()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAE12F0()
{
  v1 = v0[3];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v3 = v0[12];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v4 = v0[19];

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_25BAE1540(uint64_t a1)
{
  result = sub_25BBFA674(qword_27FBB63C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE15E8()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BAE1634(char a1)
{
  if (!a1)
  {
    return 0x6C696261626F7270;
  }

  if (a1 == 1)
  {
    return 0x676E696E7261656CLL;
  }

  return 0x6574617473;
}

uint64_t sub_25BAE1788()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_25BAE18F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  OUTLINED_FUNCTION_18_34();
  v14 = v13;
  OUTLINED_FUNCTION_44_14(v15);
  v17 = *v16;
  *(v18 + 24) = v12;
  *(v18 + 32) = v17;
  OUTLINED_FUNCTION_12_28();
  swift_bridgeObjectRetain_n();
  v19 = objc_autoreleasePoolPush();
  OUTLINED_FUNCTION_32_21();
  if (v20)
  {
    OUTLINED_FUNCTION_26_26();
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v21)
      {
        break;
      }

      OUTLINED_FUNCTION_14_32();
      if (v21)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    OUTLINED_FUNCTION_0_68();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_3_47();
  }

  v22 = 1;
LABEL_9:
  if ((v17 - 1) <= 0xA)
  {
    v23 = qword_25BCCCC48[(v17 - 1)];
  }

  v24 = OUTLINED_FUNCTION_5_48(v22);
  if (!v21)
  {
    goto LABEL_15;
  }

  v25 = OUTLINED_FUNCTION_46_17(v24);
  if (!v25)
  {
    goto LABEL_16;
  }

  v26 = v25;
  swift_unknownObjectRetain_n();

  [v26 contents];
  v27 = [OUTLINED_FUNCTION_45_14() length];
  ObjectType = swift_getObjectType();
  (*(v14 + 48))(v9, &v27[v9], ObjectType, v14);
  swift_unknownObjectRelease();
  type metadata accessor for SharedMTLBufferTensorStorage();
  OUTLINED_FUNCTION_11_38();
  v29 = swift_allocObject();
  *(v29 + 24) = v26;
  *(v29 + 32) = v12;
  *(v29 + 40) = v17;
  *(v29 + 16) = v11;

  objc_autoreleasePoolPop(a9);
  OUTLINED_FUNCTION_6_47();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6820, &unk_25BCCCBF8);
  OUTLINED_FUNCTION_54();
  swift_allocObject();
  OUTLINED_FUNCTION_15_34();
  *(v10 + 16) = sub_25BC29748(v30, v31, v32);
  swift_endAccess();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_19_25();
}

__n128 sub_25BAE1B3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_25BAE1BBC(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  a1[1] = v2;
  a1[2] = *(v1 + 96);
  OUTLINED_FUNCTION_5_51(a1, *(v1 + 106));
}

void sub_25BAE1BD4(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  a1[1] = v2;
  a1[2] = *(v1 + 88);
  OUTLINED_FUNCTION_5_51(a1, *(v1 + 98));
}

void sub_25BAE1BF0(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  a1[1] = v2;
  a1[2] = *(v1 + 128);
  OUTLINED_FUNCTION_5_51(a1, *(v1 + 138));
}

void sub_25BAE1C08(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 72);
  a1[1] = v2;
  a1[2] = *(v1 + 104);
  OUTLINED_FUNCTION_5_51(a1, *(v1 + 114));
}

uint64_t sub_25BAE1C24(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6158, type metadata accessor for BandPartOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1C7C(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6180, type metadata accessor for ReverseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1CD4(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6150, type metadata accessor for TopKOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1D2C(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6178, type metadata accessor for SplitOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1D84(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154E7E8, type metadata accessor for TransposeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1DDC(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154F658, type metadata accessor for ConcatOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1E34(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6188, type metadata accessor for ScatterOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1E8C(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6190, type metadata accessor for GatherOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1EE4(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154FAA0, type metadata accessor for CastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1F3C(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154ED78, type metadata accessor for BroadcastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE1F94(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154F1F8, type metadata accessor for ReshapeOperation);
  *(a1 + 8) = result;
  return result;
}

char *sub_25BAE209C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BAE20BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BAE20E0(char a1)
{
  if (a1)
  {
    return 0x635374757074756FLL;
  }

  else
  {
    return 0x6163537475706E69;
  }
}

uint64_t sub_25BAE212C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC56B64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BAE216C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC5A4E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BAE21B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BC58294(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_25BAE21E0()
{
  v0 = sub_25BCB761C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25BAE222C(char a1)
{
  result = 0x73646E756F62;
  switch(a1)
  {
    case 1:
      result = 1684366707;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x676E696E7261656CLL;
      break;
    default:
      return result;
  }

  return result;
}

double sub_25BAE22DC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 4);
  *a2 = result;
  return result;
}

uint64_t _s14NeuralNetworks10ScaledTanhVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void *sub_25BAE23A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr)@<X2>, void *a4@<X8>)
{
  result = sub_25BC5DB6C(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_25BAE2680(uint64_t a1)
{
  result = sub_25BC66FDC(qword_28154E988, type metadata accessor for ReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE26EC()
{
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_76_7();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAE2720()
{
  v1 = v0[9];

  v2 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v4 = v0[25];

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_25BAE2780()
{
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_54();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t sub_25BAE27B4()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25BAE280C()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[10];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25BAE2854()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_50_17();

  return MEMORY[0x2821FE8E8](v4, v5, v6);
}

uint64_t sub_25BAE289C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

Swift::Int sub_25BAE2908(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_14_42(a1);
  result = TensorShape.index(_:offsetBy:)(v2, v3);
  *v1 = result;
  return result;
}

BOOL sub_25BAE29A8()
{
  v0 = sub_25BCB761C();

  return v0 != 0;
}

uint64_t sub_25BAE2A48(uint64_t a1)
{
  result = sub_25BC78B5C(&qword_27FBB5128);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE2B14(char a1)
{
  result = 0x6D75746E656D6F6DLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_52_18();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_52();
      break;
    case 3:
      result = OUTLINED_FUNCTION_17_47();
      break;
    case 4:
      result = OUTLINED_FUNCTION_31_31();
      break;
    case 5:
      result = OUTLINED_FUNCTION_28_30();
      break;
    case 6:
      result = OUTLINED_FUNCTION_94_7();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAE2B98()
{
  v0 = sub_25BCB761C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BAE2BE4(char a1)
{
  result = 0x74657366666FLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_10_52();
      break;
    case 2:
      result = OUTLINED_FUNCTION_17_47();
      break;
    case 3:
      result = 0x7A696C616D726F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAE2C58(char a1)
{
  result = 0x74657366666FLL;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_10_52();
      break;
    case 2:
      result = OUTLINED_FUNCTION_31_31();
      break;
    case 3:
      result = OUTLINED_FUNCTION_28_30();
      break;
    case 4:
      result = 0x6D75746E656D6F6DLL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_17_47();
      break;
    case 6:
      result = OUTLINED_FUNCTION_94_7();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAE2CEC()
{
  v0 = sub_25BCB761C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BAE2D38(char a1)
{
  result = 0x756F4370756F7267;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_52_18();
      break;
    case 2:
      result = OUTLINED_FUNCTION_10_52();
      break;
    case 3:
      result = 0x6E6F6C69737065;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s14NeuralNetworks9BatchNormV5StateOwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_42_6(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14NeuralNetworks9BatchNormV5StateOwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_25BAE306C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return OUTLINED_FUNCTION_42_6(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAE3084(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_25BAE30F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_25BAE3498(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {

    goto LABEL_8;
  }

  if (v1 - 5 < 0xFFFFFFFFFFFFFFFCLL)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = 0;
  v3 = 0uLL;
  do
  {
    v4 = (&v7 & 0xFFFFFFFFFFFFFFF3 | (4 * (v2 & 3)));
    v5 = v2 + 1;
    v6 = *(result + 4 * v2 + 32);
    v7 = v3;
    *v4 = v6;
    v3 = v7;
    v2 = v5;
  }

  while (v1 != v5);

  if (v1 < 4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_25BAE3524()
{
  if (v0[5] >= 3)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v1 = v0[7];

  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25BAE35A0(uint64_t a1)
{
  result = sub_25BCA2E4C(&qword_27FBB6170, type metadata accessor for SliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAE3624()
{
  type metadata accessor for TensorInputParser(0);

  return swift_allocObject();
}

uint64_t sub_25BAE3658()
{
  type metadata accessor for TensorOutputParser(0);

  return swift_allocObject();
}

uint64_t sub_25BAE39A8(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAE39D8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  sub_25BA9D8C4(v1);
  return v1;
}

__n128 sub_25BAE3A0C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 96);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 128);
  result = *(v1 + 138);
  *(a1 + 42) = result;
  return result;
}

char *sub_25BAE3A58(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BAE3A78(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

char *sub_25BAE3AA0(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, a2);
  }

  return result;
}

uint64_t sub_25BAE3AD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BAE39A8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BAE3AFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE39C0(*v1);
  *a1 = result;
  return result;
}

void sub_25BAE4170(_Unwind_Exception *a1)
{
  MEMORY[0x25F878C20](v2, 0x1012C40EC159624);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v3 = *(a1 + 48);
  v1 = (a1 + 48);
  v2 = v3;
  *v1 = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v1, v2);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799718B8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::default_delete<std::string>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    JUMPOUT(0x25F878C20);
  }
}

void sub_25BAE45A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    [(SNNMILContext *)a10 init];
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::MILContext>::operator=[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::MILContext>::shared_ptr[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_25BAE4D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void std::vector<MIL::IRDimension const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_25BAE530C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a30);
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void *std::shared_ptr<MIL::IRValue const>::operator=[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_25BAE5778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25BAE597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_25BAE65FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25BAE6B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25BAE8A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::shared_ptr<MIL::IRProgram>::operator=[abi:ne200100]<MIL::IRProgram,std::default_delete<MIL::IRProgram>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<MIL::IRProgram>::shared_ptr[abi:ne200100]<MIL::IRProgram,std::default_delete<MIL::IRProgram>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void sub_25BAE9A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    [SNNMILProgram initWithProgram:a10];
  }

  _Unwind_Resume(exception_object);
}

void sub_25BAEA0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25BAEA22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(a1);
}

void sub_25BAEA4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t *a17)
{
  if (a17)
  {
    [(SNNMILContext *)a17 init];
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25BAEA730(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x25F878BF0](v1);
  _Unwind_Resume(a1);
}

void sub_25BAEA7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::IRDimension const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<BOOL>::__init_with_size[abi:ne200100]<BOOL *,BOOL *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEAAE4(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

void *std::vector<BOOL>::__construct_at_end<BOOL *,BOOL *>(void *result, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v4 = result[1];
  v5 = v4 + a4;
  result[1] = v4 + a4;
  if (!v4 || ((v5 - 1) ^ (v4 - 1)) >= 0x40)
  {
    if (v5 >= 0x41)
    {
      v6 = (v5 - 1) >> 6;
    }

    else
    {
      v6 = 0;
    }

    *(*result + 8 * v6) = 0;
  }

  if (a2 != a3)
  {
    v7 = v4 & 0x3F;
    v8 = (*result + 8 * (v4 >> 6));
    do
    {
      v9 = 1 << v7;
      if (*a2 == 1)
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      ++a2;
      v8 += v7 == 63;
      if (v7 == 63)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }
    }

    while (a2 != a3);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEAC88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEAD54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<short>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(a1, a2);
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEAE4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEAF4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB004(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB080(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB0FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB178(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MIL::Fp16>::__init_with_size[abi:ne200100]<MIL::Fp16*,MIL::Fp16*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<short>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB1F4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB270(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAEB2EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAEB658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRTensorValue const,std::default_delete<MIL::IRTensorValue const>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IRTensorValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRTensorValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAEC270(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t *std::shared_ptr<MIL::IRProgram>::shared_ptr[abi:ne200100]<MIL::IRProgram,std::default_delete<MIL::IRProgram>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IRProgram  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::shared_ptr<MIL::MILContext>::shared_ptr[abi:ne200100]<MIL::MILContext,std::default_delete<MIL::MILContext>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F878BC0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25BAEC654(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void sub_25BAECCB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (a25)
  {
    [(SNNMILFunctionBuilder *)a25 build];
  }

  _Unwind_Resume(exception_object);
}

void sub_25BAED050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25BAEDAC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  v49 = *(v47 - 200);
  *(v47 - 200) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(v47 - 184);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

MIL::IRNamedValueType **std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](MIL::IRNamedValueType **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIL::IRNamedValueType::~IRNamedValueType(v2);
    MEMORY[0x25F878C20]();
  }

  return a1;
}

void **std::vector<std::shared_ptr<MIL::IROperation>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<MIL::IROperation>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void sub_25BAEF76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&STACK[0x220]);
  a32 = &a57;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&a32);

  std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(&STACK[0x200], STACK[0x208]);
  _Unwind_Resume(a1);
}

void sub_25BAEFE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25BAF0070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  _Unwind_Resume(a1);
}

void sub_25BAF0898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::~__hash_table(&a36);
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[4],std::unique_ptr<MIL::IRValue const>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(v5 + 3, a3);
  return a1;
}

void sub_25BAF0CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<char const(&)[5],std::unique_ptr<MIL::IRValue const>,0>(_BYTE *a1, char *a2, uint64_t *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(v5 + 3, a3);
  return a1;
}

void sub_25BAF0D10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_pointer<MIL::Location  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::Location  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::Location  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::__shared_ptr_pointer<MIL::IRFunction  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IRFunction  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRFunction  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<MIL::IRTensorValueType const*&>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::string>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::string>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::less<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

MIL::IRNamedValueType *std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    MIL::IRNamedValueType::~IRNamedValueType(result);

    JUMPOUT(0x25F878C20);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRNamedValueType  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__init_with_size[abi:ne200100]<std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25BAF163C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::shared_ptr<MIL::IRNamedValueType>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>>(a1, a2);
  }

  std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType> const*,std::shared_ptr<MIL::IRNamedValueType>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<MIL::IRNamedValueType>>,std::shared_ptr<MIL::IRNamedValueType>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 16;
  }
}

uint64_t *std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<MIL::IRValue const *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IRValue const *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRValue const *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::unordered_map<std::string,std::shared_ptr<MIL::IRValue const>>::unordered_map(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 40 * a3;
    do
    {
      std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<MIL::IRValue const>> const&>(a1, a2);
      a2 += 5;
      v5 -= 40;
    }

    while (v5);
  }

  return a1;
}

void **std::__split_buffer<std::shared_ptr<MIL::IROperation>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<MIL::IROperation>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<MIL::IROperation>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__shared_ptr_pointer<MIL::IROperation  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IROperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IROperation  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::IRArgument  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F878C20);
}

uint64_t std::__shared_ptr_pointer<MIL::IRArgument  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRArgument  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>>>::__emplace_unique_key_args<std::string,std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::shared_ptr<MIL::IRArgument>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<MIL::IRArgument>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<MIL::IRValue const> &&>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::unique_ptr<MIL::IRValue const> &&>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAF1EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::string const,std::shared_ptr<MIL::IRValue const>>::pair[abi:ne200100]<std::string&&,std::unique_ptr<MIL::IRValue const> &&,0ul,0ul>(uint64_t a1, __int128 **a2, uint64_t **a3)
{
  v4 = *a2;
  v5 = **a2;
  *(a1 + 16) = *(*a2 + 2);
  *a1 = v5;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  std::shared_ptr<MIL::IRValue const>::shared_ptr[abi:ne200100]<MIL::IRValue const,std::default_delete<MIL::IRValue const>,0>((a1 + 24), *a3);
  return a1;
}

void sub_25BAF1FF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRFunction>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<std::shared_ptr<MIL::IRFunction>&&>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAF22FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25BAF3150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SNNEspressoV1ExecutionContext;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void Espresso::net::all_globals(Espresso::net *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 137);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 136)) == 0)
  {
LABEL_6:
    std::unordered_map<std::string,std::shared_ptr<Espresso::abstract_blob_container>>::unordered_map(a2, this + 1440);
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  Espresso::net::all_globals(v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

void sub_25BAF3A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void sub_25BAF3DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void sub_25BAF3EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

void sub_25BAF4004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<Espresso::abstract_blob_container>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<Espresso::abstract_blob_container>> const&>(a1, i + 2);
  }

  return a1;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<Espresso::abstract_blob_container>> const&>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__construct_node_hash<std::pair<std::string const,std::shared_ptr<Espresso::abstract_blob_container>> const&>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAF4390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *Espresso::abstract_blob_container::shape@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v2 = *(this + 3);
  *a2 = *(this + 1);
  *(a2 + 16) = v2;
  *(a2 + 32) = this[5];
  if ((a2 + 40) != this + 6)
  {
    return std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a2 + 40), this[6], this[7], (this[7] - this[6]) >> 2);
  }

  return this;
}

void sub_25BAF4488(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int *,unsigned int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::IRDimension const*>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<Espresso::abstract_blob_container>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_25BAF484C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRValue const>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t sub_25BAF48C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 40);

  sub_25BAC9400(v3, v1 + 32);
  return v1;
}

uint64_t sub_25BAF4920()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  v5 = (v1 + 40);
  v4 = *(v1 + 40);
  if (v3 != sub_25BAC4018())
  {
    v6 = *(v2 + 16);
    v8 = *(v1 + 48);
    v7 = (v1 + 48);
    if (sub_25BAC4018() != v6)
    {
      return 0;
    }

    v5 = v7;
  }

  v10 = *v5;
  *v5 = v0;

  return 1;
}

uint64_t sub_25BAF49AC()
{
  sub_25BA9D7E0();

  return swift_deallocClassInstance();
}

__n128 sub_25BAF4A04@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 88);
  result = *(v1 + 98);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BAF4A48(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BAF4AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  v2 = v0[6];
  *(v1 + 32) = v0[5];
  *(v1 + 40) = v2;
  v3 = v0[17];
  *(v1 + 48) = v0[16];

  if (v3)
  {

    sub_25BACAF48(v4);
  }

  return v1;
}

uint64_t sub_25BAF4B64()
{
  if (*(v0 + 136))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_25BCBAE70;
    v2 = *(v0 + 40);

    sub_25BAC9400(v3, v1 + 32);

    sub_25BAC9400(v4, v1 + 48);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_25BCBAE50;
    v5 = *(v0 + 40);

    sub_25BAC9400(v6, v1 + 32);
  }

  return v1;
}

uint64_t sub_25BAF4C3C(int a1, uint64_t a2, uint64_t a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 128) = a8;
  *(v9 + 136) = a7;
  *(v9 + 116) = a4;
  *(v9 + 120) = a9;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(6580083, 0xE300000000000000);
  }

  return OUTLINED_FUNCTION_0_4(a1, a2, a3);
}

uint64_t sub_25BAF4C90()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BAF4920() & 1) == 0)
  {
    v3 = sub_25BAC4018();
    v4 = *(v1 + 128);
    if (v3 == sub_25BAC4018())
    {
      v7 = *(v1 + 128);
      *(v1 + 128) = v0;
    }

    else
    {
      if (!*(v1 + 136))
      {
        return 0;
      }

      v5 = *(v2 + 16);
      if (sub_25BAC4018() != v5)
      {
        return 0;
      }

      v8 = *(v1 + 136);
      *(v1 + 136) = v0;
    }
  }

  return 1;
}

uint64_t sub_25BAF4D38()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);
}

uint64_t sub_25BAF4D68()
{
  sub_25BA9D7E0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 136);

  return v0;
}

uint64_t sub_25BAF4D94()
{
  sub_25BAF4D68();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAF4DEC()
{
  sub_25BCB625C();
  *(v0 + 116);
  sub_25BCB7A0C();
  v1 = *(v0 + 120);
  return sub_25BCB79EC();
}

uint64_t sub_25BAF4E64()
{
  OUTLINED_FUNCTION_1_0();
  if (sub_25BAF4920())
  {
    return 1;
  }

  v3 = sub_25BAC4018();
  v4 = v1[20];
  if (v3 == sub_25BAC4018())
  {
    v13 = v1[20];
    v1[20] = v0;
LABEL_13:

    return 1;
  }

  v5 = *(v2 + 16);
  v6 = v1[18];
  if (sub_25BAC4018() == v5)
  {
    v14 = v1[18];
    v1[18] = v0;
    goto LABEL_13;
  }

  v7 = *(v2 + 16);
  v8 = v1[17];
  if (sub_25BAC4018() == v7)
  {
    v15 = v1[17];
    v1[17] = v0;
    goto LABEL_13;
  }

  v9 = *(v2 + 16);
  v10 = v1[21];
  if (sub_25BAC4018() == v9)
  {
    v16 = v1[21];
    v1[21] = v0;
    goto LABEL_13;
  }

  if (!v1[19])
  {
    return 0;
  }

  v11 = *(v2 + 16);
  if (sub_25BAC4018() != v11)
  {
    return 0;
  }

  v17 = v1[19];
  v1[19] = v0;

  return 1;
}

uint64_t sub_25BAF4F6C()
{
  v1 = v0[17];

  v2 = v0[18];

  v3 = v0[19];

  v4 = v0[20];

  v5 = v0[21];
}

uint64_t sub_25BAF4FC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF4FE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_25BAF503C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF505C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 168) = v3;
  return result;
}

uint64_t sub_25BAF50C4(uint64_t a1, uint64_t a2)
{
  result = sub_25BAF5C4C(qword_28154DE78, a2, type metadata accessor for BaseOptimizerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BAF512C(uint64_t a1, id *a2)
{
  result = sub_25BCB634C();
  *a2 = 0;
  return result;
}

uint64_t sub_25BAF51A8(uint64_t a1, id *a2)
{
  v3 = sub_25BCB635C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25BAF5228@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAF5250();
  *a1 = result;
  return result;
}

uint64_t sub_25BAF5250()
{
  sub_25BCB636C();
  v0 = sub_25BCB633C();

  return v0;
}

uint64_t sub_25BAF5290()
{
  v0 = sub_25BCB636C();
  v1 = MEMORY[0x25F876D30](v0);

  return v1;
}

uint64_t sub_25BAF52D0()
{
  sub_25BCB636C();
  sub_25BCB625C();
}

uint64_t sub_25BAF532C()
{
  sub_25BCB636C();
  sub_25BCB79CC();
  sub_25BCB625C();
  v0 = sub_25BCB7A3C();

  return v0;
}

uint64_t sub_25BAF53A0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_25BCB5AAC();
}

void sub_25BAF5404(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_25BAF5438();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
}

uint64_t sub_25BAF5440@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*v2, a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BAF5484(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_25BAFAFE8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25BAF54F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5040))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF5518(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 5032) = 0;
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
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
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
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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

  *(result + 5040) = v3;
  return result;
}

uint64_t sub_25BAF5ABC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 160))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF5ADC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 160) = v3;
  return result;
}

uint64_t sub_25BAF5B4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF5B6C(uint64_t result, int a2, int a3)
{
  if (a2)
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

  *(result + 176) = v3;
  return result;
}

uint64_t sub_25BAF5C4C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_25BAF5CEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25BCB633C();

  *a2 = v5;
  return result;
}

uint64_t sub_25BAF5D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAF5D60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BAF5D64(uint64_t a1)
{
  v2 = sub_25BAF5C4C(&qword_27FBB36B0, 255, type metadata accessor for FileAttributeKey);
  v3 = sub_25BAF5C4C(&qword_27FBB36B8, 255, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
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

uint64_t sub_25BAF5F6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF5F8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_25BAF5FE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 928))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF6000(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 920) = 0;
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
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
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

  *(result + 928) = v3;
  return result;
}

uint64_t sub_25BAF613C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 528))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BAF615C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 520) = 0;
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
    *(result + 504) = 0u;
    *(result + 488) = 0u;
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

  *(result + 528) = v3;
  return result;
}

uint64_t sub_25BAF627C(void *a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25BCBB6D0;
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  sub_25BAB4D78(1, v6 == 0, a2);
  if (v6)
  {
    v9 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v9 = *(a2 + 40);
  }

  v10 = v9;
  sub_25BAB4D78(2, v6 == 0, a2);
  if (v6)
  {
    v11 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v11 = *(a2 + 48);
  }

  v12 = v11;
  v14 = *(v2 + 24);
  v13 = *(v2 + 32);
  sub_25BCB617C();
  v15 = sub_25BAF6464(v8, v10, v12, v14, v13, a1);

  *(v5 + 32) = v15;
  return v5;
}

unint64_t sub_25BAF63E4(uint64_t a1)
{
  result = sub_25BAF640C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BAF640C()
{
  result = qword_27FBB3820;
  if (!qword_27FBB3820)
  {
    type metadata accessor for SelectOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3820);
  }

  return result;
}

id sub_25BAF6464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_25BCB633C();

  v11 = [a6 selectWithPredicateTensor:a1 truePredicateTensor:a2 falsePredicateTensor:a3 name:v10];

  return v11;
}

uint64_t sub_25BAF64F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 80);
  *(v1 + 32) = *(v0 + 72);
  *(v1 + 40) = v2;
  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BAF6554(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  v9 = v8;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x746E6174736E6F63, 0xE800000000000000);
  }

  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 40) = a6;
  *(v9 + 48) = a7;
  ObjectType = swift_getObjectType();
  v16 = *(a5 + 16);
  swift_unknownObjectRetain();
  v16(&v22, ObjectType, a5);
  v17 = v22;
  (*(a5 + 8))(&v21, ObjectType, a5);
  swift_unknownObjectRelease();
  v18 = v21;
  *(v9 + 72) = v17;
  *(v9 + 80) = v18;
  v19 = a8[1];
  *(v9 + 88) = *a8;
  *(v9 + 104) = v19;
  *(v9 + 120) = a8[2];
  *(v9 + 130) = *(a8 + 42);
  return v9;
}

void *sub_25BAF6660()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];
  swift_unknownObjectRelease();
  v4 = v0[9];

  return v0;
}

uint64_t sub_25BAF6698()
{
  sub_25BAF6660();

  return swift_deallocClassInstance();
}

uint64_t sub_25BAF66F0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_25BCB617C();
  return v1;
}

__n128 sub_25BAF6730@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = *(v1 + 88);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 120);
  result = *(v1 + 130);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BAF6774()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return sub_25BCB625C();
}

unint64_t sub_25BAF67A0(uint64_t a1)
{
  result = sub_25BAF67C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BAF67C8()
{
  result = qword_27FBB3828;
  if (!qword_27FBB3828)
  {
    type metadata accessor for ConstantOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3828);
  }

  return result;
}

uint64_t static RuntimeConfiguration.tensorResolutionDepthThreshold.setter(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_0();
  qword_27FBB3830 = a1;
  return result;
}

uint64_t sub_25BAF68D0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_27FBB3830;
  return result;
}

uint64_t sub_25BAF691C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_27FBB3830 = v1;
  return result;
}

uint64_t sub_25BAF6964()
{
  result = sub_25BAF6988();
  byte_27FBB3838 = result & 1;
  return result;
}

uint64_t sub_25BAF6988()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_25BCB610C();
  sub_25BB3ED18(0xD000000000000020, 0x800000025BCD9190, v2);
  v4 = v3;

  if (!v4)
  {
    return 0;
  }

  if (sub_25BCB63BC() == 1702195828 && v5 == 0xE400000000000000)
  {

LABEL_10:

    return 1;
  }

  v7 = sub_25BCB789C();

  if (v7)
  {
    goto LABEL_10;
  }

  v9 = sub_25BCB63BC();
  v11 = v10;

  if (v9 == 7562617 && v11 == 0xE300000000000000)
  {
    goto LABEL_10;
  }

  v13 = sub_25BCB789C();

  return v13 & 1;
}

char *sub_25BAF6B24()
{
  if (qword_28154E1E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  return &byte_27FBB3838;
}

uint64_t static RuntimeConfiguration.isUsingPrimitivesForOptimizers.getter()
{
  if (qword_28154E1E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_1_4();
  return byte_27FBB3838;
}

uint64_t static RuntimeConfiguration.isUsingPrimitivesForOptimizers.setter(char a1)
{
  if (qword_28154E1E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  result = OUTLINED_FUNCTION_9_0();
  byte_27FBB3838 = a1 & 1;
  return result;
}

uint64_t static RuntimeConfiguration.isUsingPrimitivesForOptimizers.modify()
{
  if (qword_28154E1E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  OUTLINED_FUNCTION_2_1();
  return OUTLINED_FUNCTION_7_3();
}

uint64_t sub_25BAF6C78@<X0>(_BYTE *a1@<X8>)
{
  sub_25BAF6B24();
  result = swift_beginAccess();
  *a1 = byte_27FBB3838;
  return result;
}

uint64_t sub_25BAF6CC8(char *a1)
{
  v1 = *a1;
  sub_25BAF6B24();
  result = swift_beginAccess();
  byte_27FBB3838 = v1;
  return result;
}

uint64_t sub_25BAF6D20@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = sub_25BCB610C();
  v5 = sub_25BB3ED18(0xD000000000000015, 0x800000025BCD9130, v4);
  v7 = v6;

  if (v7)
  {
    v9 = v5 == 0x6F73736572707365 && v7 == 0xE800000000000000;
    if (v9 || (sub_25BCB789C() & 1) != 0)
    {
      v10 = &off_286D4F7D8;
      v11 = &unk_286D4F718;
    }

    else
    {
      if (v5 != 0x706172675F73706DLL || v7 != 0xE900000000000068)
      {
        sub_25BCB789C();
      }

      v10 = &off_286D4F7B8;
      v11 = &unk_286D4F738;
    }
  }

  else
  {
    v10 = &off_286D4F7B8;
    v11 = &unk_286D4F738;
  }

  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_25BAF6EA4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 environment];

  v4 = sub_25BCB610C();
  v5 = sub_25BB3ED18(0xD000000000000015, 0x800000025BCD9110, v4);
  v7 = v6;

  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = v5 == 0x6F73736572707365 && v7 == 0xE800000000000000;
  if (!v9 && (sub_25BCB789C() & 1) == 0)
  {
    if (v5 == 1936617058 && v7 == 0xE400000000000000)
    {
    }

    else
    {
      v13 = sub_25BCB789C();

      if ((v13 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = &off_286D4F798;
    v11 = &unk_286D4F6F8;
    goto LABEL_9;
  }

LABEL_8:
  v10 = &off_286D4F7D8;
  v11 = &unk_286D4F718;
LABEL_9:
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_25BAF701C()
{
  result = sub_25BAF703C();
  qword_27FBB3840 = result;
  return result;
}

uint64_t sub_25BAF703C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_25BCB610C();
  v3 = sub_25BB3ED18(0xD000000000000016, 0x800000025BCD9170, v2);
  v5 = v4;

  if (!v5)
  {
    return 100;
  }

  v7 = HIBYTE(v5) & 0xF;
  v8 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 100;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v31[0] = v3;
      v31[1] = v5 & 0xFFFFFFFFFFFFFFLL;
      if (v3 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (v3 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v31;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v31 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        result = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_25BCB71FC();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = (result + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_62;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_62;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_62;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_54;
          }

          goto LABEL_62;
        }

        goto LABEL_73;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_62;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_62;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_54;
              }
            }
          }

          goto LABEL_54;
        }

LABEL_62:
        v11 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_63;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_62;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_62;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_62;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_54:
          LOBYTE(v7) = 0;
LABEL_63:
          v32 = v7;
          v29 = v7;
          goto LABEL_64;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v11 = sub_25BAF7BF8(v3, v5, 10);
  v29 = v30;
LABEL_64:

  if (v29)
  {
    return 100;
  }

  else
  {
    return v11;
  }
}