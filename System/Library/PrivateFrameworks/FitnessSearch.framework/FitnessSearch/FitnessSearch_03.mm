uint64_t sub_1E5C6690C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for SearchHistoryItem();
  v8 = *(*(v49 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
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

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
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

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_1E5C67C9C(v33, v47, type metadata accessor for SearchHistoryItem);
          v35 = v48;
          sub_1E5C67C9C(v29, v48, type metadata accessor for SearchHistoryItem);
          v36 = *(v31 + 20);
          v37 = sub_1E5C9BB40();
          sub_1E5C66FC0(v35, type metadata accessor for SearchHistoryItem);
          sub_1E5C66FC0(v34, type metadata accessor for SearchHistoryItem);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
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

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_1E5C67C9C(a2, v47, type metadata accessor for SearchHistoryItem);
        v22 = v48;
        sub_1E5C67C9C(a4, v48, type metadata accessor for SearchHistoryItem);
        v23 = *(v49 + 20);
        v24 = sub_1E5C9BB40();
        sub_1E5C66FC0(v22, type metadata accessor for SearchHistoryItem);
        sub_1E5C66FC0(v21, type metadata accessor for SearchHistoryItem);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_1E5C66EDC(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_1E5C66E3C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E5C66EC8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E5C66EDC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SearchHistoryItem();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E5C66FC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5C67020(uint64_t a1)
{
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  v6 = *(v1 + 256);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5C4E86C;

  return sub_1E5C5FC64(a1, v1 + 16, v4, v5, v6, v1 + 264);
}

uint64_t sub_1E5C670E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5C4E86C;

  return sub_1E5C5F7A4(a1, v1 + 16);
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B11ResultScopeVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch14TaskIdentifierO(uint64_t a1)
{
  if ((*(a1 + 64) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 64) & 3;
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E5C671E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5C67228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C67280(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 64) = a2;
  return result;
}

unint64_t sub_1E5C672C0()
{
  result = qword_1ED054B30;
  if (!qword_1ED054B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B30);
  }

  return result;
}

char *sub_1E5C67314(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054978, &qword_1E5CA1470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1E5C67420(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B40, &unk_1E5CA2000);
  v10 = *(type metadata accessor for SearchHistoryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SearchHistoryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

BOOL sub_1E5C6763C(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v53 = a1[2];
  v54 = v3;
  v4 = a1[1];
  v51 = *a1;
  v52 = v4;
  v5 = a2[1];
  v6 = a2[3];
  v58 = a2[2];
  v59 = v6;
  v7 = a2[1];
  v56 = *a2;
  v57 = v7;
  v8 = a1[3];
  v61[2] = v53;
  v61[3] = v8;
  v61[0] = v51;
  v61[1] = v2;
  v64 = v5;
  v65 = v58;
  v66 = a2[3];
  v55 = *(a1 + 64);
  v60 = a2[4].i8[0];
  v62 = *(a1 + 64);
  v67 = a2[4].i8[0];
  v63 = v56;
  v9 = v51;
  if (!v55)
  {
    if (v60)
    {
      goto LABEL_9;
    }

    if (v51 != *&v56)
    {
      v28 = sub_1E5C9D060();
      sub_1E5C67C64(&v56, &v42);
      sub_1E5C67C64(&v51, &v42);
      sub_1E5C3177C(v61, &qword_1ED054B38, &qword_1E5CA1FF8);
      return v28 & 1;
    }

    sub_1E5C67C64(&v56, &v42);
    sub_1E5C67C64(&v51, &v42);
    goto LABEL_76;
  }

  v10 = v52;
  v11 = v53;
  v12 = v54;
  if (v55 != 1)
  {
    v21 = v53 | *(&v53 + 1) | v54;
    if (v52 | *(&v51 + 1) | v51 | *(&v52 + 1) | v21 | *(&v54 + 1))
    {
      v22 = v52 | *(&v51 + 1) | *(&v52 + 1) | v21 | *(&v54 + 1);
      if (v51 != 1 || v22)
      {
        if (v51 != 2 || v22)
        {
          if (v51 != 3 || v22)
          {
            if (v51 != 4 || v22)
            {
              if (v51 != 5 || v22)
              {
                if (v51 != 6 || v22)
                {
                  if (v51 != 7 || v22)
                  {
                    if (v51 != 8 || v22)
                    {
                      if (v51 != 9 || v22)
                      {
                        if (v51 != 10 || v22)
                        {
                          if (v60 != 2 || v56.i64[0] != 11)
                          {
                            goto LABEL_9;
                          }
                        }

                        else if (v60 != 2 || v56.i64[0] != 10)
                        {
                          goto LABEL_9;
                        }
                      }

                      else if (v60 != 2 || v56.i64[0] != 9)
                      {
                        goto LABEL_9;
                      }
                    }

                    else if (v60 != 2 || v56.i64[0] != 8)
                    {
                      goto LABEL_9;
                    }
                  }

                  else if (v60 != 2 || v56.i64[0] != 7)
                  {
                    goto LABEL_9;
                  }
                }

                else if (v60 != 2 || v56.i64[0] != 6)
                {
                  goto LABEL_9;
                }
              }

              else if (v60 != 2 || v56.i64[0] != 5)
              {
                goto LABEL_9;
              }
            }

            else if (v60 != 2 || v56.i64[0] != 4)
            {
              goto LABEL_9;
            }
          }

          else if (v60 != 2 || v56.i64[0] != 3)
          {
            goto LABEL_9;
          }
        }

        else if (v60 != 2 || v56.i64[0] != 2)
        {
          goto LABEL_9;
        }
      }

      else if (v60 != 2 || v56.i64[0] != 1)
      {
        goto LABEL_9;
      }

      v30 = vorrq_s8(v58, v59);
      if (*&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v57.i64[1] | v57.i64[0] | v56.i64[1])
      {
LABEL_9:
        sub_1E5C67C64(&v56, &v42);
        sub_1E5C67C64(&v51, &v42);
        v17 = &qword_1ED054B38;
        v18 = &qword_1E5CA1FF8;
        v19 = v61;
LABEL_10:
        sub_1E5C3177C(v19, v17, v18);
        return 0;
      }
    }

    else
    {
      if (v60 != 2)
      {
        goto LABEL_9;
      }

      v23 = vorrq_s8(vorrq_s8(v56, v58), vorrq_s8(v57, v59));
      if (vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
      {
        goto LABEL_9;
      }
    }

LABEL_76:
    v25 = &qword_1ED054B38;
    v26 = &qword_1E5CA1FF8;
    v27 = v61;
    goto LABEL_77;
  }

  if (v60 != 1)
  {
    goto LABEL_9;
  }

  v13 = v57.i64[1];
  if (*(&v52 + 1))
  {
    v41[0] = v51;
    v41[1] = v52;
    v41[2] = v53;
    v41[3] = v54;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    if (v57.i64[1])
    {
      v31 = *a2;
      v14 = a2[1].i64[0];
      v15 = a2[3];
      v33 = a2[2];
      v34 = v15;
      *&v32 = v14;
      *(&v32 + 1) = v57.i64[1];
      sub_1E5C67C64(&v56, &v42);
      sub_1E5C67C64(&v51, &v42);
      sub_1E5C67C64(&v56, &v42);
      sub_1E5C67C64(&v51, &v42);
      sub_1E5C31EF0(v41, &v42);
      v16 = static SearchResultScope.== infix(_:_:)(&v37, &v31);
      sub_1E5C3177C(v61, &qword_1ED054B38, &qword_1E5CA1FF8);
      v35[0] = v31;
      v35[1] = v32;
      v35[2] = v33;
      v35[3] = v34;
      sub_1E5C2A1F0(v35);
      v36[0] = v37;
      v36[1] = v38;
      v36[2] = v39;
      v36[3] = v40;
      sub_1E5C2A1F0(v36);
      v42 = v9;
      v43 = v10;
      v44 = v11;
      v45 = v12;
      sub_1E5C3177C(&v42, &qword_1ED053F80, &qword_1E5C9E528);
      return (v16 & 1) != 0;
    }

    v24 = a2;
    sub_1E5C67C64(&v56, &v42);
    sub_1E5C67C64(&v51, &v42);
    sub_1E5C67C64(&v56, &v42);
    sub_1E5C67C64(&v51, &v42);
    sub_1E5C31EF0(v41, &v42);
    sub_1E5C3177C(v61, &qword_1ED054B38, &qword_1E5CA1FF8);
    v42 = v37;
    v43 = v38;
    v44 = v39;
    v45 = v40;
    sub_1E5C2A1F0(&v42);
    goto LABEL_37;
  }

  v24 = a2;
  sub_1E5C67C64(&v56, &v42);
  sub_1E5C67C64(&v51, &v42);
  sub_1E5C67C64(&v56, &v42);
  sub_1E5C67C64(&v51, &v42);
  sub_1E5C3177C(v61, &qword_1ED054B38, &qword_1E5CA1FF8);
  if (v13)
  {
LABEL_37:
    v42 = v9;
    v43 = v10;
    v44 = v11;
    v45 = v12;
    v46 = *v24;
    v47 = v24[1].i64[0];
    v48 = v13;
    v29 = v24[3];
    v49 = v24[2];
    v50 = v29;
    v17 = &qword_1ED054150;
    v18 = &unk_1E5CA3E30;
    v19 = &v42;
    goto LABEL_10;
  }

  v42 = v9;
  v43 = v10;
  v44 = v11;
  v45 = v12;
  v25 = &qword_1ED053F80;
  v26 = &qword_1E5C9E528;
  v27 = &v42;
LABEL_77:
  sub_1E5C3177C(v27, v25, v26);
  return 1;
}

uint64_t sub_1E5C67C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5C67D04()
{
  result = qword_1ED054B50;
  if (!qword_1ED054B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B50);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1E5C67E20()
{
  v1 = 0x74656C626174;
  if (*v0 != 1)
  {
    v1 = 30324;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E6F6870;
  }
}

uint64_t sub_1E5C67E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C68610(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C67E90(uint64_t a1)
{
  v2 = sub_1E5C683F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C67ECC(uint64_t a1)
{
  v2 = sub_1E5C683F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C67F08(uint64_t a1)
{
  v2 = sub_1E5C684EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C67F44(uint64_t a1)
{
  v2 = sub_1E5C684EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C67F80(uint64_t a1)
{
  v2 = sub_1E5C68498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C67FBC(uint64_t a1)
{
  v2 = sub_1E5C68498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C67FF8(uint64_t a1)
{
  v2 = sub_1E5C68444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C68034(uint64_t a1)
{
  v2 = sub_1E5C68444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchPlatform.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B58, &qword_1E5CA2010);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B60, &qword_1E5CA2018);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B68, &qword_1E5CA2020);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054B70, &qword_1E5CA2028);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C683F0();
  sub_1E5C9D130();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E5C68498();
      sub_1E5C9CFC0();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E5C68444();
      v21 = v27;
      sub_1E5C9CFC0();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E5C684EC();
    sub_1E5C9CFC0();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E5C683F0()
{
  result = qword_1ED054B78;
  if (!qword_1ED054B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B78);
  }

  return result;
}

unint64_t sub_1E5C68444()
{
  result = qword_1ED054B80;
  if (!qword_1ED054B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B80);
  }

  return result;
}

unint64_t sub_1E5C68498()
{
  result = qword_1ED054B88;
  if (!qword_1ED054B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B88);
  }

  return result;
}

unint64_t sub_1E5C684EC()
{
  result = qword_1ED054B90;
  if (!qword_1ED054B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B90);
  }

  return result;
}

uint64_t sub_1E5C68558@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5C68718(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SearchPlatform.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C68610(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6F6870 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656C626174 && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 30324 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C68718(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054BE8, &qword_1E5CA2438);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054BF0, &qword_1E5CA2440);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054BF8, &qword_1E5CA2448);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C00, &unk_1E5CA2450);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5C683F0();
  v18 = v39;
  sub_1E5C9D120();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E5C9CFB0();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5C448A0();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E5C68498();
          sub_1E5C9CF20();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E5C68444();
        v29 = v15;
        sub_1E5C9CF20();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E5C684EC();
        v29 = v15;
        sub_1E5C9CF20();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5C9CE90();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v27 = &type metadata for SearchPlatform;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E5C68C8C()
{
  result = qword_1ED054B98;
  if (!qword_1ED054B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054B98);
  }

  return result;
}

unint64_t sub_1E5C68D34()
{
  result = qword_1ED054BA0;
  if (!qword_1ED054BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BA0);
  }

  return result;
}

unint64_t sub_1E5C68D8C()
{
  result = qword_1ED054BA8;
  if (!qword_1ED054BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BA8);
  }

  return result;
}

unint64_t sub_1E5C68DE4()
{
  result = qword_1ED054BB0;
  if (!qword_1ED054BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BB0);
  }

  return result;
}

unint64_t sub_1E5C68E3C()
{
  result = qword_1ED054BB8;
  if (!qword_1ED054BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BB8);
  }

  return result;
}

unint64_t sub_1E5C68E94()
{
  result = qword_1ED054BC0;
  if (!qword_1ED054BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BC0);
  }

  return result;
}

unint64_t sub_1E5C68EEC()
{
  result = qword_1ED054BC8;
  if (!qword_1ED054BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BC8);
  }

  return result;
}

unint64_t sub_1E5C68F44()
{
  result = qword_1ED054BD0;
  if (!qword_1ED054BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BD0);
  }

  return result;
}

unint64_t sub_1E5C68F9C()
{
  result = qword_1ED054BD8;
  if (!qword_1ED054BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BD8);
  }

  return result;
}

unint64_t sub_1E5C68FF4()
{
  result = qword_1ED054BE0;
  if (!qword_1ED054BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054BE0);
  }

  return result;
}

uint64_t static SearchHistoryItem.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for SearchHistoryItem() + 20);

  return sub_1E5C9BB50();
}

uint64_t SearchHistoryItem.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchHistoryItem.dateCreated.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchHistoryItem() + 20);
  v4 = sub_1E5C9BB60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchHistoryItem.init(term:dateCreated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SearchHistoryItem() + 20);
  v7 = sub_1E5C9BB60();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_1E5C691FC()
{
  if (*v0)
  {
    result = 0x6165724365746164;
  }

  else
  {
    result = 1836213620;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C69238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6165724365746164 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C69318(uint64_t a1)
{
  v2 = sub_1E5C69554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C69354(uint64_t a1)
{
  v2 = sub_1E5C69554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C69390@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SearchHistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C08, &qword_1E5CA2460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C69554();
  sub_1E5C9D130();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1E5C9D000();
  if (!v2)
  {
    v13 = *(type metadata accessor for SearchHistoryItem() + 20);
    v15[14] = 1;
    sub_1E5C9BB60();
    sub_1E5C69D38(&qword_1ED054C18, MEMORY[0x1E6969530]);
    sub_1E5C9D030();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5C69554()
{
  result = qword_1ED054C10;
  if (!qword_1ED054C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C10);
  }

  return result;
}

uint64_t SearchHistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1E5C9BB60();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C20, &qword_1E5CA2468);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SearchHistoryItem();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C69554();
  sub_1E5C9D120();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1E5C9CF70();
  v13[1] = v17;
  v25 = 1;
  sub_1E5C69D38(&qword_1ED054C28, MEMORY[0x1E6969530]);
  sub_1E5C9CFA0();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1E5C4BAD0(v13, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5C698CC(v13);
}

uint64_t sub_1E5C698CC(uint64_t a1)
{
  v2 = type metadata accessor for SearchHistoryItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C69958(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1E5C9BB50();
}

uint64_t SearchHistoryItem.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5C9CC60();
  v3 = *(type metadata accessor for SearchHistoryItem() + 20);
  sub_1E5C9BB60();
  sub_1E5C69D38(&qword_1ED054130, MEMORY[0x1E6969530]);
  return sub_1E5C9CBB0();
}

uint64_t SearchHistoryItem.hashValue.getter()
{
  sub_1E5C9D0D0();
  v1 = *v0;
  v2 = v0[1];
  sub_1E5C9CC60();
  v3 = *(type metadata accessor for SearchHistoryItem() + 20);
  sub_1E5C9BB60();
  sub_1E5C69D38(&qword_1ED054130, MEMORY[0x1E6969530]);
  sub_1E5C9CBB0();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C69B18(uint64_t a1)
{
  sub_1E5C9D0D0();
  v3 = *v1;
  v4 = v1[1];
  sub_1E5C9CC60();
  v5 = *(a1 + 20);
  sub_1E5C9BB60();
  sub_1E5C69D38(&qword_1ED054130, MEMORY[0x1E6969530]);
  sub_1E5C9CBB0();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C69BC0(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1E5C9CC60();
  v6 = *(a2 + 20);
  sub_1E5C9BB60();
  sub_1E5C69D38(&qword_1ED054130, MEMORY[0x1E6969530]);
  return sub_1E5C9CBB0();
}

uint64_t sub_1E5C69C4C(uint64_t a1, uint64_t a2)
{
  sub_1E5C9D0D0();
  v4 = *v2;
  v5 = v2[1];
  sub_1E5C9CC60();
  v6 = *(a2 + 20);
  sub_1E5C9BB60();
  sub_1E5C69D38(&qword_1ED054130, MEMORY[0x1E6969530]);
  sub_1E5C9CBB0();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C69D38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E5C69DBC()
{
  result = qword_1ED054C38;
  if (!qword_1ED054C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C38);
  }

  return result;
}

unint64_t sub_1E5C69E14()
{
  result = qword_1ED054C40;
  if (!qword_1ED054C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C40);
  }

  return result;
}

unint64_t sub_1E5C69E6C()
{
  result = qword_1ED054C48;
  if (!qword_1ED054C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C48);
  }

  return result;
}

uint64_t sub_1E5C69EC4()
{
  if (*v0)
  {
    result = 1701603700;
  }

  else
  {
    result = 0x6C6F686563616C70;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C69F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564;
  if (v6 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701603700 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C69FE0(uint64_t a1)
{
  v2 = sub_1E5C6A64C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A01C(uint64_t a1)
{
  v2 = sub_1E5C6A64C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6A058(uint64_t a1)
{
  v2 = sub_1E5C6A6F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A094(uint64_t a1)
{
  v2 = sub_1E5C6A6F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6A0D0(uint64_t a1)
{
  v2 = sub_1E5C6A6A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6A10C(uint64_t a1)
{
  v2 = sub_1E5C6A6A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentTile.encode(to:)(void *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C50, &qword_1E5CA26A0);
  v31 = *(v32 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v30 = &v27 - v3;
  v29 = type metadata accessor for SearchItem();
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C58, &qword_1E5CA26A8);
  v27 = *(v28 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SearchContentTile();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C60, &qword_1E5CA26B0);
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v17 = &v27 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6A64C();
  sub_1E5C9D130();
  sub_1E5C50220(v33, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C6AE74(v13, v6, type metadata accessor for SearchItem);
    LOBYTE(v40) = 1;
    sub_1E5C6A6A0();
    v19 = v30;
    v20 = v34;
    sub_1E5C9CFC0();
    sub_1E5C6B558(&qword_1ED054C78, type metadata accessor for SearchItem);
    v21 = v32;
    sub_1E5C9D030();
    (*(v31 + 8))(v19, v21);
    sub_1E5C6B9BC(v6, type metadata accessor for SearchItem);
    return (*(v14 + 8))(v17, v20);
  }

  else
  {
    v23 = *(v13 + 3);
    v42 = *(v13 + 2);
    v43 = v23;
    v44 = *(v13 + 8);
    v24 = *(v13 + 1);
    v40 = *v13;
    v41 = v24;
    LOBYTE(v35) = 0;
    sub_1E5C6A6F4();
    v25 = v34;
    sub_1E5C9CFC0();
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v35 = v40;
    v36 = v41;
    sub_1E5C6A748();
    v26 = v28;
    sub_1E5C9D030();
    (*(v27 + 8))(v9, v26);
    (*(v14 + 8))(v17, v25);
    return sub_1E5C4F8A4(&v40);
  }
}

uint64_t type metadata accessor for SearchContentTile()
{
  result = qword_1ED054CC0;
  if (!qword_1ED054CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5C6A64C()
{
  result = qword_1ED054C68;
  if (!qword_1ED054C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C68);
  }

  return result;
}

unint64_t sub_1E5C6A6A0()
{
  result = qword_1ED054C70;
  if (!qword_1ED054C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C70);
  }

  return result;
}

unint64_t sub_1E5C6A6F4()
{
  result = qword_1ED054C80;
  if (!qword_1ED054C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C80);
  }

  return result;
}

unint64_t sub_1E5C6A748()
{
  result = qword_1ED054C88;
  if (!qword_1ED054C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054C88);
  }

  return result;
}

uint64_t SearchContentTile.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C90, &qword_1E5CA26B8);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v48 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054C98, &qword_1E5CA26C0);
  v51 = *(v52 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v48 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054CA0, &unk_1E5CA26C8);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v48 - v12;
  v14 = type metadata accessor for SearchContentTile();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v24 = a1[3];
  v25 = a1[4];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E5C6A64C();
  v26 = v59;
  sub_1E5C9D120();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v49 = v21;
  v59 = v18;
  v27 = v58;
  v50 = v23;
  v29 = v56;
  v28 = v57;
  v30 = sub_1E5C9CFB0();
  v31 = (2 * *(v30 + 16)) | 1;
  v65 = v30;
  v66 = v30 + 32;
  v67 = 0;
  v68 = v31;
  v32 = sub_1E5C448A4();
  if (v32 == 2 || v67 != v68 >> 1)
  {
    v33 = sub_1E5C9CE90();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v35 = v14;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v29 + 8))(v13, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  if (v32)
  {
    LOBYTE(v60) = 1;
    sub_1E5C6A6A0();
    sub_1E5C9CF20();
    type metadata accessor for SearchItem();
    sub_1E5C6B558(&qword_1ED054CA8, type metadata accessor for SearchItem);
    v39 = v59;
    v40 = v53;
    sub_1E5C9CFA0();
    (*(v54 + 8))(v27, v40);
    (*(v29 + 8))(v13, v28);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v41 = v50;
    sub_1E5C6AE74(v39, v50, type metadata accessor for SearchContentTile);
    v42 = v55;
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_1E5C6A6F4();
    v38 = v9;
    sub_1E5C9CF20();
    v42 = v55;
    sub_1E5C6AEDC();
    v43 = v52;
    sub_1E5C9CFA0();
    (*(v51 + 8))(v38, v43);
    (*(v29 + 8))(v13, v28);
    swift_unknownObjectRelease();
    v44 = v63;
    v45 = v49;
    *(v49 + 2) = v62;
    *(v45 + 48) = v44;
    *(v45 + 64) = v64;
    v46 = v61;
    *v45 = v60;
    *(v45 + 16) = v46;
    swift_storeEnumTagMultiPayload();
    v47 = v45;
    v41 = v50;
    sub_1E5C6AE74(v47, v50, type metadata accessor for SearchContentTile);
  }

  sub_1E5C6AE74(v41, v42, type metadata accessor for SearchContentTile);
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1E5C6AE74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5C6AEDC()
{
  result = qword_1ED054CB0;
  if (!qword_1ED054CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CB0);
  }

  return result;
}

uint64_t SearchContentTile.hash(into:)()
{
  v1 = type metadata accessor for SearchItem();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchContentTile();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5C50220(v0, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C6AE74(v8, v4, type metadata accessor for SearchItem);
    MEMORY[0x1E69399F0](1);
    SearchItem.hash(into:)();
    return sub_1E5C6B9BC(v4, type metadata accessor for SearchItem);
  }

  v11 = *v8;
  v10 = *(v8 + 1);
  v13 = *(v8 + 2);
  v12 = *(v8 + 3);
  v15 = *(v8 + 5);
  v14 = *(v8 + 6);
  v17 = *(v8 + 7);
  v16 = *(v8 + 8);
  v18 = v8[32];
  MEMORY[0x1E69399F0](0);
  sub_1E5C9CC60();
  sub_1E5C9CC60();
  sub_1E5C4ED58();
  if (!v14)
  {
    MEMORY[0x1E69399F0](0);
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_7:
    sub_1E5C9D0F0();
    goto LABEL_8;
  }

  MEMORY[0x1E69399F0](1);
  sub_1E5C9CC60();
  if (!v16)
  {
    goto LABEL_7;
  }

LABEL_5:
  sub_1E5C9D0F0();
  sub_1E5C9CC60();
LABEL_8:
}

uint64_t SearchContentTile.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6B1A0()
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)();
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6B1E4()
{
  sub_1E5C9D0D0();
  SearchContentTile.hash(into:)();
  return sub_1E5C9D110();
}

BOOL _s13FitnessSearch0B11ContentTileO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SearchContentTile();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v31 - v18;
  v20 = v31 + *(v17 + 56) - v18;
  sub_1E5C50220(a1, v31 - v18);
  sub_1E5C50220(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E5C50220(v19, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C6AE74(v20, v7, type metadata accessor for SearchItem);
      v21 = static SearchItem.== infix(_:_:)(v12, v7);
      sub_1E5C6B9BC(v7, type metadata accessor for SearchItem);
      sub_1E5C6B9BC(v12, type metadata accessor for SearchItem);
LABEL_9:
      sub_1E5C6B9BC(v19, type metadata accessor for SearchContentTile);
      return v21;
    }

    sub_1E5C6B9BC(v12, type metadata accessor for SearchItem);
  }

  else
  {
    sub_1E5C50220(v19, v14);
    v22 = *(v14 + 3);
    v39[2] = *(v14 + 2);
    v39[3] = v22;
    v40 = *(v14 + 8);
    v23 = *(v14 + 1);
    v39[0] = *v14;
    v39[1] = v23;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v24 = *(v20 + 1);
      v25 = *(v20 + 3);
      v36 = *(v20 + 2);
      v37 = v25;
      v26 = *(v20 + 1);
      v35[0] = *v20;
      v35[1] = v26;
      v27 = *(v14 + 3);
      v33[2] = *(v14 + 2);
      v33[3] = v27;
      v28 = *(v14 + 1);
      v33[0] = *v14;
      v33[1] = v28;
      v29 = *(v20 + 3);
      v31[2] = v36;
      v31[3] = v29;
      v38 = *(v20 + 8);
      v34 = *(v14 + 8);
      v32 = *(v20 + 8);
      v31[0] = v35[0];
      v31[1] = v24;
      v21 = _s13FitnessSearch0B15ItemPlaceholderV2eeoiySbAC_ACtFZ_0(v33, v31);
      sub_1E5C4F8A4(v35);
      sub_1E5C4F8A4(v39);
      goto LABEL_9;
    }

    sub_1E5C4F8A4(v39);
  }

  sub_1E5C6B954(v19);
  return 0;
}

uint64_t sub_1E5C6B558(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5C6B5A0()
{
  result = type metadata accessor for SearchItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5C6B640()
{
  result = qword_1ED054CD0;
  if (!qword_1ED054CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CD0);
  }

  return result;
}

unint64_t sub_1E5C6B698()
{
  result = qword_1ED054CD8;
  if (!qword_1ED054CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CD8);
  }

  return result;
}

unint64_t sub_1E5C6B6F0()
{
  result = qword_1ED054CE0;
  if (!qword_1ED054CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CE0);
  }

  return result;
}

unint64_t sub_1E5C6B748()
{
  result = qword_1ED054CE8;
  if (!qword_1ED054CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CE8);
  }

  return result;
}

unint64_t sub_1E5C6B7A0()
{
  result = qword_1ED054CF0;
  if (!qword_1ED054CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CF0);
  }

  return result;
}

unint64_t sub_1E5C6B7F8()
{
  result = qword_1ED054CF8;
  if (!qword_1ED054CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054CF8);
  }

  return result;
}

unint64_t sub_1E5C6B850()
{
  result = qword_1ED054D00;
  if (!qword_1ED054D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D00);
  }

  return result;
}

unint64_t sub_1E5C6B8A8()
{
  result = qword_1ED054D08;
  if (!qword_1ED054D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D08);
  }

  return result;
}

unint64_t sub_1E5C6B900()
{
  result = qword_1ED054D10;
  if (!qword_1ED054D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D10);
  }

  return result;
}

uint64_t sub_1E5C6B954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C6B9BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::String __swiftcall SearchPageState.pageIdentifier(for:)(FitnessSearch::SearchPlatform a1)
{
  v2 = a1;
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  v10 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v14 = v1[10];
  v13 = v1[11];
  v15 = *(v1 + 96);
  if (v2 == 2)
  {
    if (v15 >= 2)
    {
      if (v15 == 2)
      {
        if (v9)
        {
          v16 = 0xD000000000000010;
        }

        else
        {
          v16 = 0x746C757365526F4ELL;
        }

        if (v9)
        {
          v17 = 0x80000001E5CA8060;
        }

        else
        {
          v17 = 0xE900000000000073;
        }
      }

      else
      {
        v17 = 0xED0000676E69646ELL;
        v16 = 0x614C686372616553;
        if (v3 | v4 | v5 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13 && (v4 != 1 || (v5 | v3 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13) != 0))
        {
          v16 = 0x6F46686372616553;
          v17 = 0xEB00000000737563;
        }
      }
    }

    else
    {
      v16 = 0xD000000000000010;
      v17 = 0x80000001E5CA8060;
    }
  }

  else if (*(v1 + 96) > 1u)
  {
    if (v15 == 2)
    {
      if (v9)
      {
        v21 = v1[7];

        v16 = v10;
        v17 = v9;
      }

      else
      {
        v16 = 0x746C757365526F4ELL;
        v17 = 0xE900000000000073;
      }
    }

    else
    {
      v17 = 0xED0000676E69646ELL;
      v16 = 0x614C686372616553;
      if (v3 | v4 | v5 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13 && (v4 != 1 || (v5 | v3 | v6 | v8 | v7 | v10 | v9 | v11 | v12 | v14 | v13) != 0))
      {
        v16 = 0x6F46686372616553;
        v17 = 0xEB00000000737563;
      }
    }
  }

  else
  {
    v18 = 0x6F46686372616553;
    if (v1[2] - 1 >= 3)
    {
      v19 = 0xEB00000000737563;
    }

    else
    {
      v18 = 0x6948686372616553;
      v19 = 0xEB0000000073746ELL;
    }

    v20 = v15 == 0;
    if (*(v1 + 96))
    {
      v16 = v18;
    }

    else
    {
      v16 = 0x6948686372616553;
    }

    if (v20)
    {
      v17 = 0xEB0000000073746ELL;
    }

    else
    {
      v17 = v19;
    }
  }

  result._object = v17;
  result._countAndFlagsBits = v16;
  return result;
}

uint64_t sub_1E5C6BCD4()
{
  v1 = 0x7552646564697567;
  v2 = 0x6F65646976;
  if (*v0 != 2)
  {
    v2 = 0x697461746964656DLL;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_1E5C6BD5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C6C698(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C6BD90(uint64_t a1)
{
  v2 = sub_1E5C6C424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BDCC(uint64_t a1)
{
  v2 = sub_1E5C6C424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BE08(uint64_t a1)
{
  v2 = sub_1E5C6C574();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BE44(uint64_t a1)
{
  v2 = sub_1E5C6C574();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BE80(uint64_t a1)
{
  v2 = sub_1E5C6C520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BEBC(uint64_t a1)
{
  v2 = sub_1E5C6C520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BEF8(uint64_t a1)
{
  v2 = sub_1E5C6C478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BF34(uint64_t a1)
{
  v2 = sub_1E5C6C478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C6BF70(uint64_t a1)
{
  v2 = sub_1E5C6C4CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6BFAC(uint64_t a1)
{
  v2 = sub_1E5C6C4CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearechContentMediaType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D20, &qword_1E5CA2B10);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D28, &qword_1E5CA2B18);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D30, &qword_1E5CA2B20);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D38, &qword_1E5CA2B28);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D40, &qword_1E5CA2B30);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6C424();
  sub_1E5C9D130();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1E5C6C4CC();
      v12 = v29;
      sub_1E5C9CFC0();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1E5C6C478();
      v12 = v32;
      sub_1E5C9CFC0();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1E5C6C520();
    sub_1E5C9CFC0();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1E5C6C574();
  sub_1E5C9CFC0();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1E5C6C424()
{
  result = qword_1ED054D48;
  if (!qword_1ED054D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D48);
  }

  return result;
}

unint64_t sub_1E5C6C478()
{
  result = qword_1ED054D50;
  if (!qword_1ED054D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D50);
  }

  return result;
}

unint64_t sub_1E5C6C4CC()
{
  result = qword_1ED054D58;
  if (!qword_1ED054D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D58);
  }

  return result;
}

unint64_t sub_1E5C6C520()
{
  result = qword_1ED054D60;
  if (!qword_1ED054D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D60);
  }

  return result;
}

unint64_t sub_1E5C6C574()
{
  result = qword_1ED054D68;
  if (!qword_1ED054D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D68);
  }

  return result;
}

void *sub_1E5C6C5E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5C6C80C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SearechContentMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5C9D0D0();
  MEMORY[0x1E69399F0](a1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6C698(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

void *sub_1E5C6C80C(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DD0, &qword_1E5CA3020);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DD8, &qword_1E5CA3028);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DE0, &qword_1E5CA3030);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DE8, &qword_1E5CA3038);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DF0, &unk_1E5CA3040);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5C6C424();
  v21 = v50;
  sub_1E5C9D120();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1E5C9CFB0();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1E5C3AA58();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1E5C6C520();
        v36 = v40;
        sub_1E5C9CF20();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1E5C6C574();
        v29 = v40;
        sub_1E5C9CF20();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1E5C6C4CC();
      v35 = v40;
      sub_1E5C9CF20();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1E5C6C478();
      v37 = v40;
      sub_1E5C9CF20();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1E5C9CE90();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
  *v15 = &type metadata for SearechContentMediaType;
  sub_1E5C9CF30();
  sub_1E5C9CE80();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_1E5C6CE50()
{
  result = qword_1ED054D70;
  if (!qword_1ED054D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D70);
  }

  return result;
}

unint64_t sub_1E5C6CF08()
{
  result = qword_1ED054D78;
  if (!qword_1ED054D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D78);
  }

  return result;
}

unint64_t sub_1E5C6CF60()
{
  result = qword_1ED054D80;
  if (!qword_1ED054D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D80);
  }

  return result;
}

unint64_t sub_1E5C6CFB8()
{
  result = qword_1ED054D88;
  if (!qword_1ED054D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D88);
  }

  return result;
}

unint64_t sub_1E5C6D010()
{
  result = qword_1ED054D90;
  if (!qword_1ED054D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D90);
  }

  return result;
}

unint64_t sub_1E5C6D068()
{
  result = qword_1ED054D98;
  if (!qword_1ED054D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054D98);
  }

  return result;
}

unint64_t sub_1E5C6D0C0()
{
  result = qword_1ED054DA0;
  if (!qword_1ED054DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DA0);
  }

  return result;
}

unint64_t sub_1E5C6D118()
{
  result = qword_1ED054DA8;
  if (!qword_1ED054DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DA8);
  }

  return result;
}

unint64_t sub_1E5C6D170()
{
  result = qword_1ED054DB0;
  if (!qword_1ED054DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DB0);
  }

  return result;
}

unint64_t sub_1E5C6D1C8()
{
  result = qword_1ED054DB8;
  if (!qword_1ED054DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DB8);
  }

  return result;
}

unint64_t sub_1E5C6D220()
{
  result = qword_1ED054DC0;
  if (!qword_1ED054DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DC0);
  }

  return result;
}

unint64_t sub_1E5C6D278()
{
  result = qword_1ED054DC8;
  if (!qword_1ED054DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054DC8);
  }

  return result;
}

uint64_t SearchLandingSectionDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SearchLandingSectionDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchLandingSectionDescriptor() + 24);
  v4 = sub_1E5C9BAA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SearchLandingSectionDescriptor()
{
  result = qword_1ED054E38;
  if (!qword_1ED054E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchLandingSectionDescriptor.items.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchLandingSectionDescriptor() + 28));
}

uint64_t SearchLandingSectionDescriptor.init(identifier:title:layout:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = a4 & 1;
  *a6 = a1;
  *(a6 + 8) = a2;
  v9 = type metadata accessor for SearchLandingSectionDescriptor();
  *(a6 + *(v9 + 28)) = a5;
  v10 = *(v9 + 24);
  v11 = sub_1E5C9BAA0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a6 + v10, a3, v11);
}

uint64_t sub_1E5C6D4A0()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x74756F79616CLL;
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

uint64_t sub_1E5C6D514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C6E630(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C6D53C(uint64_t a1)
{
  v2 = sub_1E5C6D840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C6D578(uint64_t a1)
{
  v2 = sub_1E5C6D840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchLandingSectionDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054DF8, &unk_1E5CA3050);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6D840();
  sub_1E5C9D130();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1E5C9D000();
  if (!v2)
  {
    v20 = *(v3 + 16);
    v19 = 1;
    sub_1E5C6D894();
    sub_1E5C9D030();
    v13 = type metadata accessor for SearchLandingSectionDescriptor();
    v14 = *(v13 + 24);
    v18 = 2;
    sub_1E5C9BAA0();
    sub_1E5C21F8C(&qword_1ED054E10, MEMORY[0x1E6968848]);
    sub_1E5C9D030();
    v17 = *(v3 + *(v13 + 28));
    v16[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C6DD8C(&qword_1ED053F08, &qword_1ED053F10);
    sub_1E5C9D030();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5C6D840()
{
  result = qword_1ED054E00;
  if (!qword_1ED054E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E00);
  }

  return result;
}

unint64_t sub_1E5C6D894()
{
  result = qword_1ED054E08;
  if (!qword_1ED054E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E08);
  }

  return result;
}

uint64_t SearchLandingSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E5C9BAA0();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E18, &qword_1E5CA3060);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for SearchLandingSectionDescriptor();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C6D840();
  v23 = v9;
  v15 = v25;
  sub_1E5C9D120();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v31 = 0;
  *v13 = sub_1E5C9CF70();
  *(v13 + 1) = v17;
  v25 = v17;
  v29 = 1;
  sub_1E5C6DD38();
  sub_1E5C9CFA0();
  v13[16] = v30;
  v28 = 2;
  sub_1E5C21F8C(&qword_1ED054E28, MEMORY[0x1E6968848]);
  sub_1E5C9CFA0();
  (*(v21 + 32))(&v13[*(v10 + 24)], v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F00, &qword_1E5C9E238);
  v27 = 3;
  sub_1E5C6DD8C(&qword_1ED053F20, &qword_1ED053F28);
  sub_1E5C9CFA0();
  (*(v16 + 8))(v23, v24);
  *&v13[*(v10 + 28)] = v26;
  sub_1E5C6DE28(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5C6DE8C(v13);
}

unint64_t sub_1E5C6DD38()
{
  result = qword_1ED054E20;
  if (!qword_1ED054E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E20);
  }

  return result;
}

uint64_t sub_1E5C6DD8C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F00, &qword_1E5C9E238);
    sub_1E5C21F8C(a2, type metadata accessor for SearchContentTile);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C6DE28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchLandingSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6DE8C(uint64_t a1)
{
  v2 = type metadata accessor for SearchLandingSectionDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SearchLandingSectionDescriptor.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v1 + 16));
  v6 = type metadata accessor for SearchLandingSectionDescriptor();
  v7 = *(v6 + 24);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  v8 = *(v2 + *(v6 + 28));

  return sub_1E5C2A6D0(a1, v8);
}

uint64_t SearchLandingSectionDescriptor.hashValue.getter()
{
  v1 = v0;
  sub_1E5C9D0D0();
  v2 = *v0;
  v3 = v0[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v0 + 16));
  v4 = type metadata accessor for SearchLandingSectionDescriptor();
  v5 = *(v4 + 24);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v7, *(v1 + *(v4 + 28)));
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6E0B4(uint64_t a1)
{
  v3 = v1;
  sub_1E5C9D0D0();
  v4 = *v1;
  v5 = v1[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v1 + 16));
  v6 = *(a1 + 24);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v8, *(v3 + *(a1 + 28)));
  return sub_1E5C9D110();
}

uint64_t sub_1E5C6E17C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + 16));
  v8 = *(a2 + 24);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  v9 = *(v4 + *(a2 + 28));

  return sub_1E5C2A6D0(a1, v9);
}

uint64_t sub_1E5C6E23C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1E5C9D0D0();
  v5 = *v2;
  v6 = v2[1];
  sub_1E5C9CC60();
  MEMORY[0x1E69399F0](*(v2 + 16));
  v7 = *(a2 + 24);
  sub_1E5C9BAA0();
  sub_1E5C21F8C(&qword_1ED053F50, MEMORY[0x1E6968848]);
  sub_1E5C9CBB0();
  sub_1E5C2A6D0(v9, *(v4 + *(a2 + 28)));
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B24LandingSectionDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E5C9D060() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for SearchLandingSectionDescriptor();
  v6 = *(v5 + 24);
  if ((sub_1E5C9BA70() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 28);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return sub_1E5C773E4(v8, v9);
}

void sub_1E5C6E424()
{
  sub_1E5C9BAA0();
  if (v0 <= 0x3F)
  {
    sub_1E5C6E4C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5C6E4C0()
{
  if (!qword_1ED054E48)
  {
    type metadata accessor for SearchContentTile();
    v0 = sub_1E5C9CD00();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED054E48);
    }
  }
}

unint64_t sub_1E5C6E52C()
{
  result = qword_1ED054E50;
  if (!qword_1ED054E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E50);
  }

  return result;
}

unint64_t sub_1E5C6E584()
{
  result = qword_1ED054E58;
  if (!qword_1ED054E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E58);
  }

  return result;
}

unint64_t sub_1E5C6E5DC()
{
  result = qword_1ED054E60;
  if (!qword_1ED054E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054E60);
  }

  return result;
}

uint64_t sub_1E5C6E630(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

__n128 SearchEnvironment.init(clearCanvasState:clearSearchHistory:dismissKeyboard:fetchSearchHistory:fetchSearchLandingSectionDescriptors:fetchSearchResults:fetchSearchSuggestions:insertSearchHistory:makeArchivedSessionsUpdatedStream:makeDictationStream:makeIntentStream:makeTrainerTipJournalsUpdatedStream:refreshCanvas:refreshCanvasItems:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __n128 a18, uint64_t a19, uint64_t a20)
{
  result = a18;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 216) = a20;
  return result;
}

uint64_t type metadata accessor for SearchHistoryItemView()
{
  result = qword_1ED054E70;
  if (!qword_1ED054E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E5C6E8DC()
{
  sub_1E5C6E960();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1E5C6E960()
{
  if (!qword_1ED054E80)
  {
    sub_1E5C9BF80();
    v0 = sub_1E5C9BDD0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED054E80);
    }
  }
}

double sub_1E5C6E9D4@<D0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = sub_1E5C9C4E0();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v74 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E88, &qword_1E5CA3408);
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70);
  v7 = &v66 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E90, &qword_1E5CA3410);
  v8 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v10 = &v66 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054E98, &qword_1E5CA3418);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v66 - v12;
  v14 = sub_1E5C9BF80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EA0, &qword_1E5CA3420);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v67 = &v66 - v24;
  v25 = type metadata accessor for SearchHistoryItemView();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EA8, &qword_1E5CA3428);
  v29 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68);
  v73 = &v66 - v30;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EB0, &qword_1E5CA3430);
  v31 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v66 - v32;
  sub_1E5C6FE0C(v1, v28);
  sub_1E5C48728(v21);
  (*(v15 + 104))(v19, *MEMORY[0x1E697E6C0], v14);
  v33 = sub_1E5C9BF70();
  v34 = *(v15 + 8);
  v34(v19, v14);
  v34(v21, v14);
  if (v33)
  {
    *v13 = sub_1E5C9C1A0();
    *(v13 + 1) = 0;
    v13[16] = 0;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE0, &qword_1E5CA3480);
    sub_1E5C6F1D0(v28, &v13[*(v35 + 44)]);
    sub_1E5C3165C(v13, v10, &qword_1ED054E98, &qword_1E5CA3418);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408);
    v36 = v67;
    sub_1E5C9C280();
    v37 = v13;
    v38 = &qword_1ED054E98;
    v39 = &qword_1E5CA3418;
  }

  else
  {
    *v7 = sub_1E5C9C210();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EB8, &qword_1E5CA3438);
    sub_1E5C6F1D0(v28, &v7[*(v40 + 44)]);
    sub_1E5C3165C(v7, v10, &qword_1ED054E88, &qword_1E5CA3408);
    swift_storeEnumTagMultiPayload();
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408);
    v36 = v67;
    sub_1E5C9C280();
    v37 = v7;
    v38 = &qword_1ED054E88;
    v39 = &qword_1E5CA3408;
  }

  sub_1E5C3177C(v37, v38, v39);
  v41 = v73;
  sub_1E5C6FECC(v36, v73, &qword_1ED054EA0, &qword_1E5CA3420);
  sub_1E5C6FE70(v28);
  sub_1E5C9C4C0();
  v43 = v74;
  v42 = v75;
  v44 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x1E6980EA8], v76);
  v45 = sub_1E5C9C500();

  (*(v42 + 8))(v43, v44);
  KeyPath = swift_getKeyPath();
  v47 = (v41 + *(v68 + 36));
  *v47 = KeyPath;
  v47[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED0, &qword_1E5CA3470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  LOBYTE(v42) = sub_1E5C9C470();
  *(inited + 32) = v42;
  v49 = sub_1E5C9C460();
  *(inited + 33) = v49;
  v50 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v42)
  {
    v50 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v49)
  {
    v50 = sub_1E5C9C490();
  }

  sub_1E5C9BDA0();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v72;
  sub_1E5C6FECC(v41, v72, &qword_1ED054EA8, &qword_1E5CA3428);
  v60 = v59 + *(v71 + 36);
  *v60 = v50;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v61 = sub_1E5C9C4A0();
  v62 = v59;
  v63 = v77;
  sub_1E5C6FECC(v62, v77, &qword_1ED054EB0, &qword_1E5CA3430);
  v64 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED8, &qword_1E5CA3478) + 36);
  *v64 = v61;
  result = 0.0;
  *(v64 + 8) = 0u;
  *(v64 + 24) = 0u;
  *(v64 + 40) = 1;
  return result;
}

uint64_t sub_1E5C6F1D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v3 = sub_1E5C9BF80();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v105 = &v95[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v100 = &v95[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EE8, &qword_1E5CA3488);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v95[-v11];
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EF0, &qword_1E5CA3490);
  v13 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v15 = &v95[-v14];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054EF8, &qword_1E5CA3498);
  v16 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v95[-v17];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F00, &qword_1E5CA34A0);
  v18 = *(*(v104 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v104);
  v21 = &v95[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v95[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v95[-v24];
  v121 = sub_1E5C9C810();
  v26 = *MEMORY[0x1E697E728];
  v106 = v4;
  v109 = *(v4 + 104);
  v110 = v4 + 104;
  v109(v12, v26, v3);
  sub_1E5C6FFA4(&qword_1ED054F08);
  result = sub_1E5C9CC00();
  if (result)
  {
    v107 = v21;
    v108 = v25;
    v98 = a2;
    sub_1E5C27F74(&qword_1ED054F10, &qword_1ED054EE8, &qword_1E5CA3488);
    sub_1E5C9C660();
    sub_1E5C3177C(v12, &qword_1ED054EE8, &qword_1E5CA3488);

    v28 = sub_1E5C9C7D0();
    KeyPath = swift_getKeyPath();
    v30 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F18, &qword_1E5CA34D8) + 36)];
    *v30 = KeyPath;
    v30[1] = v28;
    LOBYTE(KeyPath) = sub_1E5C9C480();
    v97 = type metadata accessor for SearchHistoryItemView();
    v31 = *(v111 + *(v97 + 20));
    sub_1E5C9BDA0();
    v32 = &v15[*(v99 + 36)];
    *v32 = KeyPath;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    v96 = sub_1E5C9C470();
    v37 = v100;
    sub_1E5C48728(v100);
    v39 = v105;
    LODWORD(v99) = *MEMORY[0x1E697E6C0];
    v38 = v99;
    v109(v105, v99, v3);
    sub_1E5C9BF70();
    v40 = *(v106 + 8);
    v40(v39, v3);
    v40(v37, v3);
    sub_1E5C9BDA0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v15;
    v50 = v102;
    sub_1E5C6FECC(v49, v102, &qword_1ED054EF0, &qword_1E5CA3490);
    v51 = &v50[*(v101 + 36)];
    *v51 = v96;
    *(v51 + 1) = v42;
    *(v51 + 2) = v44;
    *(v51 + 3) = v46;
    *(v51 + 4) = v48;
    v51[40] = 0;
    LODWORD(v106) = sub_1E5C9C4A0();
    sub_1E5C48728(v37);
    v109(v39, v38, v3);
    sub_1E5C9BF70();
    v40(v39, v3);
    v40(v37, v3);
    sub_1E5C9BDA0();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v103;
    sub_1E5C6FECC(v50, v103, &qword_1ED054EF8, &qword_1E5CA3498);
    v61 = &v60[*(v104 + 36)];
    *v61 = v106;
    *(v61 + 1) = v53;
    *(v61 + 2) = v55;
    *(v61 + 3) = v57;
    *(v61 + 4) = v59;
    v61[40] = 0;
    sub_1E5C6FECC(v60, v108, &qword_1ED054F00, &qword_1E5CA34A0);
    v62 = (v111 + *(v97 + 24));
    v63 = v62[1];
    v121 = *v62;
    v122 = v63;
    sub_1E5C28160();

    v64 = sub_1E5C9C580();
    v102 = v65;
    v103 = v64;
    LOBYTE(v38) = v66;
    v106 = v67;
    LODWORD(v104) = sub_1E5C9C480();
    sub_1E5C48728(v37);
    v109(v39, v99, v3);
    sub_1E5C9BF70();
    v40(v39, v3);
    v40(v37, v3);
    sub_1E5C9BDA0();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v76 = v38 & 1;
    v152 = v38 & 1;
    LODWORD(v105) = v38 & 1;
    v149 = 0;
    v110 = swift_getKeyPath();
    sub_1E5C9CA00();
    sub_1E5C9C040();
    *&v154[55] = v160;
    *&v154[71] = v161;
    *&v154[87] = v162;
    *&v154[103] = v163;
    *&v154[7] = v157;
    *&v154[23] = v158;
    *&v154[39] = v159;
    v77 = sub_1E5C6FC20();
    v109 = v77;
    v78 = swift_getKeyPath();
    v155 = 0;
    v101 = sub_1E5C9C7B0();
    v79 = swift_getKeyPath();
    v111 = v79;
    v80 = v107;
    sub_1E5C3165C(v108, v107, &qword_1ED054F00, &qword_1E5CA34A0);
    v81 = v80;
    v82 = v98;
    sub_1E5C3165C(v81, v98, &qword_1ED054F00, &qword_1E5CA34A0);
    v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F20, &qword_1E5CA3540) + 48);
    v85 = v102;
    v84 = v103;
    *&v112 = v103;
    *(&v112 + 1) = v102;
    LOBYTE(v113) = v76;
    *(&v113 + 1) = *v151;
    DWORD1(v113) = *&v151[3];
    v86 = v106;
    *(&v113 + 1) = v106;
    LOBYTE(v82) = v104;
    LOBYTE(v114) = v104;
    *(&v114 + 1) = *v150;
    DWORD1(v114) = *&v150[3];
    *(&v114 + 1) = v69;
    *&v115 = v71;
    *(&v115 + 1) = v73;
    *&v116 = v75;
    BYTE8(v116) = 0;
    *(&v116 + 9) = *v153;
    HIDWORD(v116) = *&v153[3];
    *&v117[0] = v110;
    BYTE8(v117[0]) = 0;
    *(&v117[4] + 9) = *&v154[64];
    *(&v117[5] + 9) = *&v154[80];
    *(&v117[6] + 9) = *&v154[96];
    *(v117 + 9) = *v154;
    *(&v117[1] + 9) = *&v154[16];
    *(&v117[2] + 9) = *&v154[32];
    *(&v117[3] + 9) = *&v154[48];
    *(&v117[7] + 1) = *&v154[111];
    *&v118 = v78;
    *(&v118 + 1) = v77;
    LOBYTE(v119) = 0;
    DWORD1(v119) = *&v156[3];
    *(&v119 + 1) = *v156;
    v87 = v101;
    *(&v119 + 1) = v79;
    v120 = v101;
    *(v83 + 240) = v101;
    v88 = v117[6];
    *(v83 + 160) = v117[5];
    *(v83 + 176) = v88;
    v89 = v117[4];
    *(v83 + 128) = v117[3];
    *(v83 + 144) = v89;
    v90 = v117[2];
    *(v83 + 96) = v117[1];
    *(v83 + 112) = v90;
    v91 = v117[0];
    *(v83 + 64) = v116;
    *(v83 + 80) = v91;
    v92 = v115;
    *(v83 + 32) = v114;
    *(v83 + 48) = v92;
    v93 = v113;
    *v83 = v112;
    *(v83 + 16) = v93;
    v94 = v118;
    *(v83 + 192) = v117[7];
    *(v83 + 208) = v94;
    *(v83 + 224) = v119;
    sub_1E5C6FF34(&v112, &v121);
    sub_1E5C3177C(v108, &qword_1ED054F00, &qword_1E5CA34A0);
    v121 = v84;
    v122 = v85;
    v123 = v105;
    *v124 = *v151;
    *&v124[3] = *&v151[3];
    v125 = v86;
    v126 = v82;
    *v127 = *v150;
    *&v127[3] = *&v150[3];
    v128 = v69;
    v129 = v71;
    v130 = v73;
    v131 = v75;
    v132 = 0;
    *&v133[3] = *&v153[3];
    *v133 = *v153;
    v134 = v110;
    v135 = 0;
    v140 = *&v154[64];
    v141 = *&v154[80];
    *v142 = *&v154[96];
    v136 = *v154;
    v137 = *&v154[16];
    v138 = *&v154[32];
    v139 = *&v154[48];
    *&v142[15] = *&v154[111];
    v143 = v78;
    v144 = v109;
    v145 = 0;
    *&v146[3] = *&v156[3];
    *v146 = *v156;
    v147 = v111;
    v148 = v87;
    sub_1E5C3177C(&v121, &qword_1ED054F28, &qword_1E5CA3548);
    return sub_1E5C3177C(v107, &qword_1ED054F00, &qword_1E5CA34A0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5C6FC20()
{
  v0 = sub_1E5C9BF80();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  sub_1E5C48728(&v13 - v6);
  v8 = v1[13];
  v8(v5, *MEMORY[0x1E697E708], v0);
  v9 = sub_1E5C9BF70();
  v10 = v1[1];
  v10(v5, v0);
  v10(v7, v0);
  if (v9)
  {
    return 1;
  }

  sub_1E5C48728(v7);
  v8(v5, *MEMORY[0x1E697E6C0], v0);
  sub_1E5C6FFA4(&qword_1ED054F30);
  v12 = sub_1E5C9CBE0();
  v10(v5, v0);
  v10(v7, v0);
  if (v12)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1E5C6FE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6FE70(uint64_t a1)
{
  v2 = type metadata accessor for SearchHistoryItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5C6FECC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5C6FF34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F28, &qword_1E5CA3548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5C6FFA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5C9BF80();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C70018(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C7009C()
{
  result = qword_1ED054F48;
  if (!qword_1ED054F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EA8, &qword_1E5CA3428);
    sub_1E5C70154();
    sub_1E5C27F74(&qword_1ED0549C8, &qword_1ED0549D0, &qword_1E5CA1520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F48);
  }

  return result;
}

unint64_t sub_1E5C70154()
{
  result = qword_1ED054F50;
  if (!qword_1ED054F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED054EA0, &qword_1E5CA3420);
    sub_1E5C27F74(&qword_1ED054EC0, &qword_1ED054E98, &qword_1E5CA3418);
    sub_1E5C27F74(&qword_1ED054EC8, &qword_1ED054E88, &qword_1E5CA3408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F50);
  }

  return result;
}

uint64_t sub_1E5C70238()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6974736567677573;
  v4 = 0x676E696863746566;
  if (v1 != 4)
  {
    v4 = 0x73746C75736572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x676E69646E616CLL;
  if (v1 != 1)
  {
    v5 = 0x79726F74736968;
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

uint64_t sub_1E5C702F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C73154(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C70324(uint64_t a1)
{
  v2 = sub_1E5C70EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70360(uint64_t a1)
{
  v2 = sub_1E5C70EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7039C(uint64_t a1)
{
  v2 = sub_1E5C70F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C703D8(uint64_t a1)
{
  v2 = sub_1E5C70F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C70414(uint64_t a1)
{
  v2 = sub_1E5C70FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70450(uint64_t a1)
{
  v2 = sub_1E5C70FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7048C(uint64_t a1)
{
  v2 = sub_1E5C710A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C704C8(uint64_t a1)
{
  v2 = sub_1E5C710A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C70504(uint64_t a1)
{
  v2 = sub_1E5C71050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70540(uint64_t a1)
{
  v2 = sub_1E5C71050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7057C(uint64_t a1)
{
  v2 = sub_1E5C70F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C705B8(uint64_t a1)
{
  v2 = sub_1E5C70F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C705F4(uint64_t a1)
{
  v2 = sub_1E5C70FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C70630(uint64_t a1)
{
  v2 = sub_1E5C70FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchPageState.encode(to:)(void *a1)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F58, &qword_1E5CA3550);
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v44 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F60, &qword_1E5CA3558);
  v54 = *(v55 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F68, &qword_1E5CA3560);
  v51 = *(v52 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F70, &qword_1E5CA3568);
  v48 = *(v49 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F78, &qword_1E5CA3570);
  v45 = *(v46 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F80, &qword_1E5CA3578);
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054F88, &qword_1E5CA3580);
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v1[1];
  v69 = *v1;
  v70 = v20;
  v21 = v1[2];
  v67 = v1[3];
  v68 = v21;
  v22 = v1[5];
  v59 = v1[4];
  v61 = v22;
  v23 = v1[7];
  v60 = v1[6];
  v25 = v1[8];
  v24 = v1[9];
  v62 = v23;
  v63 = v24;
  v27 = v1[10];
  v26 = v1[11];
  v64 = v25;
  v65 = v27;
  v66 = v26;
  v28 = *(v1 + 96);
  v29 = a1[3];
  v30 = a1[4];
  v31 = a1;
  v33 = &v44 - v32;
  __swift_project_boxed_opaque_existential_1(v31, v29);
  sub_1E5C70EAC();
  sub_1E5C9D130();
  if (v28 <= 1)
  {
    if (v28)
    {
      LOBYTE(v73) = 4;
      sub_1E5C70F54();
      v9 = v53;
      sub_1E5C9CFC0();
      LOBYTE(v73) = 0;
      v14 = v55;
      v36 = v72;
      sub_1E5C9D000();
      if (!v36)
      {
        LOBYTE(v73) = v68;
        v81 = 1;
        sub_1E5C36AF8();
        sub_1E5C9D030();
      }

      v34 = &v82;
    }

    else
    {
      LOBYTE(v73) = 3;
      sub_1E5C70FA8();
      sub_1E5C9CFC0();
      v14 = v52;
      sub_1E5C9D000();
      v34 = &v80;
    }

LABEL_11:
    v37 = *(*(v34 - 32) + 8);
    v38 = v9;
LABEL_12:
    v39 = v14;
    goto LABEL_13;
  }

  if (v28 == 2)
  {
    LOBYTE(v73) = 5;
    sub_1E5C70F00();
    v9 = v56;
    sub_1E5C9CFC0();
    LOBYTE(v73) = 0;
    v14 = v58;
    v35 = v72;
    sub_1E5C9D000();
    if (!v35)
    {
      LOBYTE(v73) = 1;
      sub_1E5C9CFD0();
      v73 = v59;
      v74 = v61;
      v75 = v60;
      v76 = v62;
      v77 = v64;
      v78[0] = v63;
      v78[1] = v65;
      v78[2] = v66;
      v81 = 2;
      sub_1E5C32CD8();
      sub_1E5C9CFF0();
    }

    v34 = &v83;
    goto LABEL_11;
  }

  if (!(v70 | v69 | v68 | v67 | v59 | v61 | v60 | v62 | v64 | v63 | v65 | v66))
  {
    LOBYTE(v73) = 0;
    sub_1E5C710A4();
    sub_1E5C9CFC0();
    v37 = *(v50 + 8);
    v38 = v17;
    goto LABEL_12;
  }

  if (v69 != 1 || v68 | v70 | v67 | v59 | v61 | v60 | v62 | v64 | v63 | v65 | v66)
  {
    LOBYTE(v73) = 2;
    sub_1E5C70FFC();
    v43 = v47;
    sub_1E5C9CFC0();
    v37 = *(v48 + 8);
    v38 = v43;
    v42 = &v79;
  }

  else
  {
    LOBYTE(v73) = 1;
    sub_1E5C71050();
    v41 = v44;
    sub_1E5C9CFC0();
    v37 = *(v45 + 8);
    v38 = v41;
    v42 = v78;
  }

  v39 = *(v42 - 32);
LABEL_13:
  v37(v38, v39);
  return (*(v71 + 8))(v33, v18);
}

unint64_t sub_1E5C70EAC()
{
  result = qword_1ED054F90;
  if (!qword_1ED054F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F90);
  }

  return result;
}

unint64_t sub_1E5C70F00()
{
  result = qword_1ED054F98;
  if (!qword_1ED054F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054F98);
  }

  return result;
}

unint64_t sub_1E5C70F54()
{
  result = qword_1ED054FA0;
  if (!qword_1ED054FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FA0);
  }

  return result;
}

unint64_t sub_1E5C70FA8()
{
  result = qword_1ED054FA8;
  if (!qword_1ED054FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FA8);
  }

  return result;
}

unint64_t sub_1E5C70FFC()
{
  result = qword_1ED054FB0;
  if (!qword_1ED054FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FB0);
  }

  return result;
}

unint64_t sub_1E5C71050()
{
  result = qword_1ED054FB8;
  if (!qword_1ED054FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FB8);
  }

  return result;
}

unint64_t sub_1E5C710A4()
{
  result = qword_1ED054FC0;
  if (!qword_1ED054FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED054FC0);
  }

  return result;
}

uint64_t SearchPageState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FC8, &qword_1E5CA3588);
  v86 = *(v85 - 8);
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v74 - v4;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FD0, &qword_1E5CA3590);
  v84 = *(v83 - 8);
  v5 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v91 = &v74 - v6;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FD8, &qword_1E5CA3598);
  v82 = *(v79 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v74 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FE0, &qword_1E5CA35A0);
  v80 = *(v81 - 8);
  v9 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v89 = &v74 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FE8, &qword_1E5CA35A8);
  v77 = *(v78 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FF0, &qword_1E5CA35B0);
  v76 = *(v14 - 8);
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054FF8, &qword_1E5CA35B8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v74 - v21;
  v23 = a1[3];
  v24 = a1[4];
  v93 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1E5C70EAC();
  v25 = v92;
  sub_1E5C9D120();
  if (!v25)
  {
    v26 = v17;
    v74 = v14;
    v75 = v13;
    v28 = v89;
    v27 = v90;
    v29 = v91;
    v92 = 0;
    v30 = v18;
    v31 = sub_1E5C9CFB0();
    v32 = (2 * *(v31 + 16)) | 1;
    v98 = v31;
    v99 = v31 + 32;
    v100 = 0;
    v101 = v32;
    v33 = sub_1E5C3AA8C();
    if (v33 == 6 || v100 != v101 >> 1)
    {
      v45 = sub_1E5C9CE90();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
      *v47 = &type metadata for SearchPageState;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
      (*(v19 + 8))(v22, v18);
    }

    else
    {
      if (v33 > 2u)
      {
        if (v33 != 3)
        {
          v90 = v22;
          v50 = v19;
          if (v33 == 4)
          {
            LOBYTE(v94) = 4;
            sub_1E5C70F54();
            v38 = v29;
            v51 = v90;
            v52 = v92;
            sub_1E5C9CF20();
            v53 = v88;
            if (!v52)
            {
              LOBYTE(v94) = 0;
              v54 = v83;
              v44 = sub_1E5C9CF70();
              v65 = v64;
              v102 = 1;
              sub_1E5C36DE4();
              sub_1E5C9CFA0();
              (*(v84 + 8))(v38, v54);
              (*(v50 + 8))(v90, v30);
              swift_unknownObjectRelease();
              v40 = 0;
              v39 = v94;
              v43 = 1;
              v37 = v65;
LABEL_28:
              *v53 = v44;
              *(v53 + 8) = v37;
              *(v53 + 16) = v40 | v39;
              *(v53 + 24) = v38;
              *(v53 + 32) = v41;
              *(v53 + 48) = v42;
              *(v53 + 64) = v69;
              *(v53 + 80) = v70;
              *(v53 + 96) = v43;
              return __swift_destroy_boxed_opaque_existential_1(v93);
            }
          }

          else
          {
            LOBYTE(v94) = 5;
            sub_1E5C70F00();
            v60 = v87;
            v51 = v90;
            v61 = v92;
            sub_1E5C9CF20();
            if (!v61)
            {
              LOBYTE(v94) = 0;
              v62 = v85;
              v44 = sub_1E5C9CF70();
              v92 = v66;
              LOBYTE(v94) = 1;
              v67 = sub_1E5C9CF40();
              v68 = v86;
              v38 = v71;
              v72 = v60;
              v73 = v67;
              v102 = 2;
              sub_1E5C3376C();
              sub_1E5C9CF60();
              (*(v68 + 8))(v72, v62);
              (*(v50 + 8))(v90, v30);
              swift_unknownObjectRelease();
              v41 = v94;
              v42 = v95;
              v39 = v73;
              v40 = v73 & 0xFFFFFFFFFFFFFF00;
              v43 = 2;
              v69 = v96;
              v70 = v97;
              v53 = v88;
              v37 = v92;
              goto LABEL_28;
            }
          }

          (*(v50 + 8))(v51, v30);
          goto LABEL_10;
        }

        LOBYTE(v94) = 3;
        sub_1E5C70FA8();
        v56 = v27;
        v35 = v30;
        v57 = v92;
        sub_1E5C9CF20();
        if (!v57)
        {
          v38 = v79;
          v58 = sub_1E5C9CF70();
          v37 = v63;
          v44 = v58;
          (*(v82 + 8))(v56, v38);
          (*(v19 + 8))(v22, v30);
          swift_unknownObjectRelease();
          v43 = 0;
          v40 = 0;
LABEL_27:
          v53 = v88;
          goto LABEL_28;
        }
      }

      else
      {
        if (!v33)
        {
          LOBYTE(v94) = 0;
          sub_1E5C710A4();
          v55 = v92;
          sub_1E5C9CF20();
          if (!v55)
          {
            (*(v76 + 8))(v26, v74);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v44 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 3;
            goto LABEL_26;
          }

          (*(v19 + 8))(v22, v18);
          goto LABEL_10;
        }

        if (v33 == 1)
        {
          LOBYTE(v94) = 1;
          sub_1E5C71050();
          v34 = v75;
          v35 = v18;
          v36 = v92;
          sub_1E5C9CF20();
          if (!v36)
          {
            (*(v77 + 8))(v34, v78);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 3;
            v44 = 1;
LABEL_26:
            v69 = 0uLL;
            v70 = 0uLL;
            goto LABEL_27;
          }
        }

        else
        {
          LOBYTE(v94) = 2;
          sub_1E5C70FFC();
          v35 = v18;
          v59 = v92;
          sub_1E5C9CF20();
          if (!v59)
          {
            (*(v80 + 8))(v28, v81);
            (*(v19 + 8))(v22, v18);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0uLL;
            v42 = 0uLL;
            v43 = 3;
            v44 = 2;
            goto LABEL_26;
          }
        }
      }

      (*(v19 + 8))(v22, v35);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v93);
}

uint64_t SearchPageState.hash(into:)(uint64_t a1)
{
  v7 = *v1;
  v8 = v1[1];
  v3 = v1[5];
  v11 = v1[4];
  v12 = v3;
  v13 = *(v1 + 96);
  v4 = v1[3];
  v9 = v1[2];
  v10 = v4;
  if (v13 <= 1u)
  {
    if (v13)
    {
      MEMORY[0x1E69399F0](4);
      sub_1E5C9CC60();
      sub_1E5C9CC60();
    }

    else
    {
      MEMORY[0x1E69399F0](3);

      return sub_1E5C9CC60();
    }
  }

  if (v13 == 2)
  {
    MEMORY[0x1E69399F0](5);
    sub_1E5C9CC60();
    if (*(&v8 + 1))
    {
      sub_1E5C9D0F0();
      sub_1E5C9CC60();
      if (*(&v10 + 1))
      {
LABEL_9:
        sub_1E5C9D0F0();
        sub_1E5C9D0F0();

        if (*(&v9 + 1))
        {

          sub_1E5C9CC60();
        }

        sub_1E5C9CC60();
        MEMORY[0x1E69399F0](v11);
        sub_1E5C9CC60();
        sub_1E5C2A6D0(a1, *(&v12 + 1));
        return sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      }
    }

    else
    {
      sub_1E5C9D0F0();
      if (*(&v10 + 1))
      {
        goto LABEL_9;
      }
    }

    return sub_1E5C9D0F0();
  }

  v6 = v8 | v7 | *(&v12 + 1) | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1) | v9 | *(&v8 + 1) | *(&v7 + 1);
  if (v6)
  {
    if (v7 != 1 || *(&v12 + 1) | v8 | v12 | *(&v11 + 1) | v11 | *(&v10 + 1) | v10 | *(&v9 + 1) | v9 | *(&v8 + 1) | *(&v7 + 1))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return MEMORY[0x1E69399F0](v6);
}

uint64_t SearchPageState.hashValue.getter()
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C720D8()
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t sub_1E5C7211C()
{
  sub_1E5C9D0D0();
  SearchPageState.hash(into:)(v1);
  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B9PageStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, int8x16_t *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v84 = a1[4];
  v85 = v3;
  v4 = a1[1];
  v81[0] = *a1;
  v81[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v82 = a1[2];
  v83 = v5;
  v8 = a2[1];
  v87 = *a2;
  v88 = v8;
  v9 = a2[3];
  v10 = a2[5];
  v91 = a2[4];
  v92 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v89 = a2[2];
  v90 = v11;
  v14 = a1[1];
  v94[0] = *a1;
  v94[1] = v14;
  v15 = a1[5];
  v94[4] = a1[4];
  v94[5] = v15;
  v16 = a1[3];
  v94[2] = a1[2];
  v94[3] = v16;
  v98 = v89;
  v97 = v13;
  v96 = v12;
  v101 = a2[5];
  v100 = v91;
  v99 = v9;
  v86 = *(a1 + 96);
  v93 = a2[6].i8[0];
  v95 = *(a1 + 96);
  v102 = a2[6].i8[0];
  v103 = v7;
  v104 = v6;
  v17 = a1[5];
  v109 = *(a1 + 96);
  v107 = v84;
  v108 = v17;
  v105 = v82;
  v106 = v2;
  if (v109 > 1u)
  {
    if (v109 != 2)
    {
      if (!(*(&v108 + 1) | v7 | v108 | *(&v107 + 1) | v107 | *(&v106 + 1) | v106 | *(&v105 + 1) | v105 | *(&v104 + 1) | v104 | *(&v103 + 1)))
      {
        if (v93 == 3)
        {
          v32 = vorrq_s8(vorrq_s8(vorrq_s8(v89, v91), vorrq_s8(v90, v92)), vorrq_s8(v87, v88));
          if (!*&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)))
          {
            goto LABEL_31;
          }
        }

        goto LABEL_35;
      }

      if (v7 != 1 || v108 | *(&v108 + 1) | *(&v107 + 1) | v107 | *(&v106 + 1) | v106 | *(&v105 + 1) | v105 | *(&v104 + 1) | v104 | *(&v103 + 1))
      {
        if (v93 != 3 || v87.i64[0] != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v93 != 3 || v87.i64[0] != 1)
      {
        goto LABEL_35;
      }

      v33 = vorrq_s8(vorrq_s8(v89, v91), vorrq_s8(v90, v92));
      if (!(*&vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL)) | v88.i64[1] | v88.i64[0] | v87.i64[1]))
      {
        goto LABEL_31;
      }

      goto LABEL_35;
    }

    v80 = a2[6].i8[0];
    v18 = a2[5];
    v78 = a2[4];
    v79 = v18;
    v19 = a2[1];
    v74 = *a2;
    v75 = v19;
    v20 = a2[3];
    v76 = a2[2];
    v77 = v20;
    if (v80 != 2 || __PAIR128__(*(&v103 + 1), v7) != *&v74 && (v21 = a1, v22 = a2, v23 = sub_1E5C9D060(), a2 = v22, v24 = v23, a1 = v21, (v24 & 1) == 0))
    {
LABEL_35:
      sub_1E5C73354(&v87, &v65);
      sub_1E5C73354(v81, &v65);
      v34 = &qword_1ED055098;
      v35 = &qword_1E5CA3E28;
      v36 = v94;
LABEL_36:
      sub_1E5C3177C(v36, v34, v35);
LABEL_37:
      v31 = 0;
      return v31 & 1;
    }

    if (*(&v104 + 1))
    {
      if (!v75.i64[1])
      {
        goto LABEL_35;
      }

      if (v104 != *&v75)
      {
        v25 = a1;
        v26 = a2;
        v27 = sub_1E5C9D060();
        a2 = v26;
        v28 = v27;
        a1 = v25;
        if ((v28 & 1) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else if (v75.i64[1])
    {
      goto LABEL_35;
    }

    v38 = *(&v106 + 1);
    v39 = v77.i64[1];
    if (*(&v106 + 1))
    {
      v40 = a1[2];
      *&v62 = *(a1 + 6);
      *(&v62 + 1) = *(&v106 + 1);
      v41 = a1[5];
      v42 = a1;
      v63 = a1[4];
      v64 = v41;
      v60 = v41;
      v61 = v40;
      v57 = v40;
      v58 = v62;
      v59 = v63;
      if (v77.i64[1])
      {
        v51 = a2[2];
        v43 = a2[3].i64[0];
        v44 = a2[5];
        v53 = a2[4];
        v54 = v44;
        *&v52 = v43;
        *(&v52 + 1) = v77.i64[1];
        sub_1E5C73354(&v87, &v65);
        sub_1E5C73354(v81, &v65);
        sub_1E5C31EF0(&v105, &v65);
        sub_1E5C31EF0(&v76, &v65);
        sub_1E5C31EF0(&v61, &v65);
        v45 = static SearchResultScope.== infix(_:_:)(&v57, &v51);
        sub_1E5C3177C(v94, &qword_1ED055098, &qword_1E5CA3E28);
        v55[0] = v51;
        v55[1] = v52;
        v55[2] = v53;
        v55[3] = v54;
        sub_1E5C2A1F0(v55);
        v56[0] = v57;
        v56[1] = v58;
        v56[2] = v59;
        v56[3] = v60;
        sub_1E5C2A1F0(v56);
        v65 = v42[2];
        *&v66 = *(v42 + 6);
        *(&v66 + 1) = v38;
        v46 = v42[5];
        v67 = v42[4];
        v68 = v46;
        sub_1E5C3177C(&v65, &qword_1ED053F80, &qword_1E5C9E528);
        if ((v45 & 1) == 0)
        {
          goto LABEL_37;
        }

LABEL_45:
        v31 = 1;
        return v31 & 1;
      }

      v47 = a2;
      sub_1E5C73354(&v87, &v65);
      sub_1E5C73354(v81, &v65);
      sub_1E5C31EF0(&v105, &v65);
      sub_1E5C31EF0(&v76, &v65);
      sub_1E5C31EF0(&v61, &v65);
      sub_1E5C3177C(v94, &qword_1ED055098, &qword_1E5CA3E28);
      v65 = v57;
      v66 = v58;
      v67 = v59;
      v68 = v60;
      sub_1E5C2A1F0(&v65);
    }

    else
    {
      v47 = a2;
      v42 = a1;
      sub_1E5C73354(&v87, &v65);
      sub_1E5C73354(v81, &v65);
      sub_1E5C31EF0(&v105, &v65);
      sub_1E5C31EF0(&v76, &v65);
      sub_1E5C3177C(v94, &qword_1ED055098, &qword_1E5CA3E28);
      if (!v39)
      {
        v65 = v42[2];
        v66 = *(v42 + 6);
        v48 = v42[5];
        v67 = v42[4];
        v68 = v48;
        sub_1E5C3177C(&v65, &qword_1ED053F80, &qword_1E5C9E528);
        goto LABEL_45;
      }
    }

    v65 = v42[2];
    *&v66 = *(v42 + 6);
    *(&v66 + 1) = v38;
    v49 = v42[5];
    v67 = v42[4];
    v68 = v49;
    v69 = v47[2];
    v70 = v47[3].i64[0];
    v71 = v39;
    v50 = v47[5];
    v72 = v47[4];
    v73 = v50;
    v34 = &qword_1ED054150;
    v35 = &unk_1E5CA3E30;
    v36 = &v65;
    goto LABEL_36;
  }

  if (v109)
  {
    if (v93 == 1)
    {
      v29 = v104;
      v30 = v88.i8[0];
      if (__PAIR128__(*(&v103 + 1), v7) == *&v87 || (sub_1E5C9D060() & 1) != 0)
      {
        sub_1E5C73354(&v87, &v65);
        sub_1E5C73354(v81, &v65);
        v31 = sub_1E5C76194(v29, v30);
LABEL_33:
        sub_1E5C3177C(v94, &qword_1ED055098, &qword_1E5CA3E28);
        return v31 & 1;
      }
    }

    goto LABEL_35;
  }

  if (v93)
  {
    goto LABEL_35;
  }

  if (__PAIR128__(*(&v103 + 1), v7) != *&v87)
  {
    v31 = sub_1E5C9D060();
    sub_1E5C73354(&v87, &v65);
    sub_1E5C73354(v81, &v65);
    goto LABEL_33;
  }

  sub_1E5C73354(&v87, &v65);
  sub_1E5C73354(v81, &v65);
LABEL_31:
  sub_1E5C3177C(v94, &qword_1ED055098, &qword_1E5CA3E28);
  v31 = 1;
  return v31 & 1;
}

unint64_t sub_1E5C7280C()
{
  result = qword_1ED055000;
  if (!qword_1ED055000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13FitnessSearch0B9PageStateO(uint64_t a1)
{
  if ((*(a1 + 96) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 96) & 3;
  }
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E5C728A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 97))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C728E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C72938(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 96) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchPageState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SearchPageState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5C72B28()
{
  result = qword_1ED055008;
  if (!qword_1ED055008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055008);
  }

  return result;
}

unint64_t sub_1E5C72B80()
{
  result = qword_1ED055010;
  if (!qword_1ED055010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055010);
  }

  return result;
}

unint64_t sub_1E5C72BD8()
{
  result = qword_1ED055018;
  if (!qword_1ED055018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055018);
  }

  return result;
}

unint64_t sub_1E5C72C30()
{
  result = qword_1ED055020;
  if (!qword_1ED055020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055020);
  }

  return result;
}

unint64_t sub_1E5C72C88()
{
  result = qword_1ED055028;
  if (!qword_1ED055028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055028);
  }

  return result;
}

unint64_t sub_1E5C72CE0()
{
  result = qword_1ED055030;
  if (!qword_1ED055030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055030);
  }

  return result;
}

unint64_t sub_1E5C72D38()
{
  result = qword_1ED055038;
  if (!qword_1ED055038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055038);
  }

  return result;
}

unint64_t sub_1E5C72D90()
{
  result = qword_1ED055040;
  if (!qword_1ED055040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055040);
  }

  return result;
}

unint64_t sub_1E5C72DE8()
{
  result = qword_1ED055048;
  if (!qword_1ED055048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055048);
  }

  return result;
}

unint64_t sub_1E5C72E40()
{
  result = qword_1ED055050;
  if (!qword_1ED055050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055050);
  }

  return result;
}

unint64_t sub_1E5C72E98()
{
  result = qword_1ED055058;
  if (!qword_1ED055058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055058);
  }

  return result;
}

unint64_t sub_1E5C72EF0()
{
  result = qword_1ED055060;
  if (!qword_1ED055060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055060);
  }

  return result;
}

unint64_t sub_1E5C72F48()
{
  result = qword_1ED055068;
  if (!qword_1ED055068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055068);
  }

  return result;
}

unint64_t sub_1E5C72FA0()
{
  result = qword_1ED055070;
  if (!qword_1ED055070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055070);
  }

  return result;
}

unint64_t sub_1E5C72FF8()
{
  result = qword_1ED055078;
  if (!qword_1ED055078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055078);
  }

  return result;
}

unint64_t sub_1E5C73050()
{
  result = qword_1ED055080;
  if (!qword_1ED055080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055080);
  }

  return result;
}

unint64_t sub_1E5C730A8()
{
  result = qword_1ED055088;
  if (!qword_1ED055088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055088);
  }

  return result;
}

unint64_t sub_1E5C73100()
{
  result = qword_1ED055090;
  if (!qword_1ED055090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055090);
  }

  return result;
}

uint64_t sub_1E5C73154(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69646E616CLL && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL || (sub_1E5C9D060() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C73390()
{
  v1 = 0x64656863746566;
  if (*v0 != 1)
  {
    v1 = 0x676E696863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_1E5C733E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5C73FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5C73410(uint64_t a1)
{
  v2 = sub_1E5C73E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C7344C(uint64_t a1)
{
  v2 = sub_1E5C73E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73488(uint64_t a1)
{
  v2 = sub_1E5C73F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C734C4(uint64_t a1)
{
  v2 = sub_1E5C73F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73500(uint64_t a1)
{
  v2 = sub_1E5C73F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C7353C(uint64_t a1)
{
  v2 = sub_1E5C73F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C73578(uint64_t a1)
{
  v2 = sub_1E5C73EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C735B4(uint64_t a1)
{
  v2 = sub_1E5C73EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchEditorialContentState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v32 = a2;
  v34 = a4;
  v29 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550A0, &qword_1E5CA3E40);
  v27 = *(v5 - 8);
  v28 = v5;
  v6 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550A8, &qword_1E5CA3E48);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550B0, &qword_1E5CA3E50);
  v25 = *(v12 - 8);
  v13 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550B8, &qword_1E5CA3E58);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C73E9C();
  sub_1E5C9D130();
  if (v34)
  {
    if (v34 == 1)
    {
      v36 = 1;
      sub_1E5C73F44();
      sub_1E5C9CFC0();
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
      sub_1E5C74D1C(&qword_1ED0550E0, &qword_1ED0550E8);
      v22 = v31;
      sub_1E5C9D030();
      (*(v30 + 8))(v11, v22);
    }

    else
    {
      v37 = 2;
      sub_1E5C73EF0();
      v24 = v26;
      sub_1E5C9CFC0();
      (*(v27 + 8))(v24, v28);
    }

    return (*(v17 + 8))(v20, v16);
  }

  else
  {
    v35 = 0;
    sub_1E5C73F98();
    sub_1E5C9CFC0();
    sub_1E5C9D000();
    (*(v25 + 8))(v15, v12);
    return (*(v17 + 8))(v20, v16);
  }
}

uint64_t SearchEditorialContentState.init(from:)(uint64_t *a1)
{
  result = sub_1E5C74100(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1E5C73A80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E5C74100(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t SearchEditorialContentState.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C2AD0C(a1, a2);
    }

    else
    {
      return MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);

    return sub_1E5C9CC60();
  }
}

uint64_t SearchEditorialContentState.hashValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E5C9D0D0();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v6, a1);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C73C1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v5, v1);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C73CB8(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1E69399F0](1);

      return sub_1E5C2AD0C(a1, v3);
    }

    else
    {
      return MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    v5 = *(v1 + 8);
    MEMORY[0x1E69399F0](0);

    return sub_1E5C9CC60();
  }
}

uint64_t sub_1E5C73D70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1E5C9D0D0();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E69399F0](1);
      sub_1E5C2AD0C(v5, v1);
    }

    else
    {
      MEMORY[0x1E69399F0](2);
    }
  }

  else
  {
    MEMORY[0x1E69399F0](0);
    sub_1E5C9CC60();
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B21EditorialContentStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return sub_1E5C767A0(a1, a4);
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1E5C9D060();
  }
}

unint64_t sub_1E5C73E9C()
{
  result = qword_1ED0550C0;
  if (!qword_1ED0550C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550C0);
  }

  return result;
}

unint64_t sub_1E5C73EF0()
{
  result = qword_1ED0550C8;
  if (!qword_1ED0550C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550C8);
  }

  return result;
}

unint64_t sub_1E5C73F44()
{
  result = qword_1ED0550D0;
  if (!qword_1ED0550D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550D0);
  }

  return result;
}

unint64_t sub_1E5C73F98()
{
  result = qword_1ED0550F0;
  if (!qword_1ED0550F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550F0);
  }

  return result;
}

uint64_t sub_1E5C73FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5C9D060() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5C9D060() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5C9D060();

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

uint64_t sub_1E5C74100(uint64_t *a1)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055158, &qword_1E5CA43D0);
  v41 = *(v44 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055160, &qword_1E5CA43D8);
  v42 = *(v39 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055168, &qword_1E5CA43E0);
  v40 = *(v7 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055170, &qword_1E5CA43E8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v46 = a1;
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5C73E9C();
  v19 = v45;
  sub_1E5C9D120();
  if (!v19)
  {
    v38 = 0;
    v20 = v44;
    v45 = v12;
    v21 = sub_1E5C9CFB0();
    v22 = (2 * *(v21 + 16)) | 1;
    v47 = v21;
    v48 = v21 + 32;
    v49 = 0;
    v50 = v22;
    v23 = sub_1E5C448A0();
    if (v23 == 3 || v49 != v50 >> 1)
    {
      v28 = sub_1E5C9CE90();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
      *v30 = &type metadata for SearchEditorialContentState;
      v18 = v15;
      sub_1E5C9CF30();
      sub_1E5C9CE80();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v45 + 8))(v15, v11);
      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    v24 = v23;
    if (v23)
    {
      if (v23 == 1)
      {
        LOBYTE(v51) = 1;
        sub_1E5C73F44();
        v18 = v15;
        v25 = v38;
        sub_1E5C9CF20();
        v26 = v45;
        if (!v25)
        {
          LODWORD(v44) = v24;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0550D8, &qword_1E5CA3E60);
          sub_1E5C74D1C(&qword_1ED055178, &qword_1ED055180);
          v27 = v39;
          sub_1E5C9CFA0();
          (*(v42 + 8))(v6, v27);
          (*(v26 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v18 = v51;
          goto LABEL_9;
        }

        (*(v45 + 8))(v15, v11);
      }

      else
      {
        LOBYTE(v51) = 2;
        sub_1E5C73EF0();
        v34 = v43;
        v35 = v38;
        sub_1E5C9CF20();
        v36 = v45;
        if (!v35)
        {
          (*(v41 + 8))(v34, v20);
          (*(v36 + 8))(v15, v11);
          swift_unknownObjectRelease();
          v18 = 0;
          goto LABEL_9;
        }

        v18 = v45 + 8;
        (*(v45 + 8))(v15, v11);
      }

      swift_unknownObjectRelease();
      goto LABEL_9;
    }

    LOBYTE(v51) = 0;
    sub_1E5C73F98();
    v18 = v15;
    v33 = v38;
    sub_1E5C9CF20();
    if (!v33)
    {
      v18 = sub_1E5C9CF70();
      (*(v40 + 8))(v10, v7);
    }

    (*(v45 + 8))(v15, v11);
    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v46);
  return v18;
}

unint64_t sub_1E5C747F8()
{
  result = qword_1ED0550F8;
  if (!qword_1ED0550F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0550F8);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E5C74860(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E5C748A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5C748EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1E5C74958()
{
  result = qword_1ED055100;
  if (!qword_1ED055100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055100);
  }

  return result;
}

unint64_t sub_1E5C749B0()
{
  result = qword_1ED055108;
  if (!qword_1ED055108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055108);
  }

  return result;
}

unint64_t sub_1E5C74A08()
{
  result = qword_1ED055110;
  if (!qword_1ED055110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055110);
  }

  return result;
}

unint64_t sub_1E5C74A60()
{
  result = qword_1ED055118;
  if (!qword_1ED055118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055118);
  }

  return result;
}

unint64_t sub_1E5C74AB8()
{
  result = qword_1ED055120;
  if (!qword_1ED055120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055120);
  }

  return result;
}

unint64_t sub_1E5C74B10()
{
  result = qword_1ED055128;
  if (!qword_1ED055128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055128);
  }

  return result;
}

unint64_t sub_1E5C74B68()
{
  result = qword_1ED055130;
  if (!qword_1ED055130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055130);
  }

  return result;
}

unint64_t sub_1E5C74BC0()
{
  result = qword_1ED055138;
  if (!qword_1ED055138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055138);
  }

  return result;
}

unint64_t sub_1E5C74C18()
{
  result = qword_1ED055140;
  if (!qword_1ED055140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055140);
  }

  return result;
}

unint64_t sub_1E5C74C70()
{
  result = qword_1ED055148;
  if (!qword_1ED055148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055148);
  }

  return result;
}

unint64_t sub_1E5C74CC8()
{
  result = qword_1ED055150;
  if (!qword_1ED055150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055150);
  }

  return result;
}

uint64_t sub_1E5C74D1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0550D8, &qword_1E5CA3E60);
    sub_1E5C74DA4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C74DA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchLandingSectionDescriptor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5C74DEC()
{
  if (*v0)
  {
    result = 0x7247746C75736572;
  }

  else
  {
    result = 0x6169726F74696465;
  }

  *v0;
  return result;
}

uint64_t sub_1E5C74E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6169726F74696465 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1E5C9D060() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7247746C75736572 && a2 == 0xEB0000000070756FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5C9D060();

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

uint64_t sub_1E5C74F1C(uint64_t a1)
{
  v2 = sub_1E5C75B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C74F58(uint64_t a1)
{
  v2 = sub_1E5C75B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C74F94(uint64_t a1)
{
  v2 = sub_1E5C75C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C74FD0(uint64_t a1)
{
  v2 = sub_1E5C75C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5C7500C(uint64_t a1)
{
  v2 = sub_1E5C75BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5C75048(uint64_t a1)
{
  v2 = sub_1E5C75BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055188, &qword_1E5CA43F0);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055190, &qword_1E5CA43F8);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055198, &qword_1E5CA4400);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5C75B68();
  sub_1E5C9D130();
  if (v15)
  {
    v28 = 1;
    sub_1E5C75BBC();
    sub_1E5C9CFC0();
    v17 = v26;
    sub_1E5C9D000();
    (*(v25 + 8))(v6, v17);
  }

  else
  {
    v27 = 0;
    sub_1E5C75C10();
    v19 = v21;
    sub_1E5C9CFC0();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t SearchContentType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551B8, &qword_1E5CA4408);
  v37 = *(v39 - 8);
  v3 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551C0, &qword_1E5CA4410);
  v36 = *(v6 - 8);
  v7 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0551C8, &unk_1E5CA4418);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E5C75B68();
  v17 = v40;
  sub_1E5C9D120();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v35 = v6;
  v18 = v39;
  v40 = v11;
  v19 = sub_1E5C9CFB0();
  v20 = (2 * *(v19 + 16)) | 1;
  v42 = v19;
  v43 = v19 + 32;
  v44 = 0;
  v45 = v20;
  v21 = sub_1E5C448A4();
  if (v21 == 2 || v44 != v45 >> 1)
  {
    v26 = sub_1E5C9CE90();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0543A8, &unk_1E5C9F850) + 48);
    *v28 = &type metadata for SearchContentType;
    sub_1E5C9CF30();
    sub_1E5C9CE80();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v40 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  if (v21)
  {
    v46 = 1;
    sub_1E5C75BBC();
    sub_1E5C9CF20();
    v22 = v40;
    v23 = v38;
    v24 = sub_1E5C9CF70();
    v25 = v5;
    v33 = v32;
    (*(v37 + 8))(v25, v18);
    (*(v22 + 8))(v14, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0;
    sub_1E5C75C10();
    sub_1E5C9CF20();
    v24 = 0;
    v31 = v40;
    v23 = v38;
    (*(v36 + 8))(v9, v35);
    (*(v31 + 8))(v14, v10);
    swift_unknownObjectRelease();
    v33 = 0;
  }

  *v23 = v24;
  v23[1] = v33;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t SearchContentType.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1E69399F0](0);
  }

  v1 = *v0;
  MEMORY[0x1E69399F0](1);

  return sub_1E5C9CC60();
}

uint64_t SearchContentType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5C9D0D0();
  if (v2)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C75998()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5C9D0D0();
  if (v2)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t sub_1E5C75A08()
{
  if (!v0[1])
  {
    return MEMORY[0x1E69399F0](0);
  }

  v1 = *v0;
  MEMORY[0x1E69399F0](1);

  return sub_1E5C9CC60();
}

uint64_t sub_1E5C75A80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E5C9D0D0();
  if (v2)
  {
    MEMORY[0x1E69399F0](1);
    sub_1E5C9CC60();
  }

  else
  {
    MEMORY[0x1E69399F0](0);
  }

  return sub_1E5C9D110();
}

uint64_t _s13FitnessSearch0B11ContentTypeO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1E5C9D060();
}

unint64_t sub_1E5C75B68()
{
  result = qword_1ED0551A0;
  if (!qword_1ED0551A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551A0);
  }

  return result;
}

unint64_t sub_1E5C75BBC()
{
  result = qword_1ED0551A8;
  if (!qword_1ED0551A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551A8);
  }

  return result;
}

unint64_t sub_1E5C75C10()
{
  result = qword_1ED0551B0;
  if (!qword_1ED0551B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551B0);
  }

  return result;
}

unint64_t sub_1E5C75C68()
{
  result = qword_1ED0551D0;
  if (!qword_1ED0551D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551D0);
  }

  return result;
}

uint64_t sub_1E5C75CBC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5C75D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E5C75D60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1E5C75D78(void *result, int a2)
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

unint64_t sub_1E5C75DDC()
{
  result = qword_1ED0551D8;
  if (!qword_1ED0551D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551D8);
  }

  return result;
}

unint64_t sub_1E5C75E34()
{
  result = qword_1ED0551E0;
  if (!qword_1ED0551E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551E0);
  }

  return result;
}

unint64_t sub_1E5C75E8C()
{
  result = qword_1ED0551E8;
  if (!qword_1ED0551E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551E8);
  }

  return result;
}

unint64_t sub_1E5C75EE4()
{
  result = qword_1ED0551F0;
  if (!qword_1ED0551F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551F0);
  }

  return result;
}

unint64_t sub_1E5C75F3C()
{
  result = qword_1ED0551F8;
  if (!qword_1ED0551F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0551F8);
  }

  return result;
}

unint64_t sub_1E5C75F94()
{
  result = qword_1ED055200;
  if (!qword_1ED055200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055200);
  }

  return result;
}

unint64_t sub_1E5C75FEC()
{
  result = qword_1ED055208;
  if (!qword_1ED055208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055208);
  }

  return result;
}

unint64_t sub_1E5C76044()
{
  result = qword_1ED055210;
  if (!qword_1ED055210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055210);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E5C760C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1E5C7610C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5C76194(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x79726F74736968;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEB000000006C6174;
    v4 = 0xE600000000000000;
    if (a1 == 2)
    {
      v6 = 0x6E656D6572636E69;
    }

    else
    {
      v6 = 0x74696D627573;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE400000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 1953393000;
    }

    else
    {
      v6 = 0x79726F74736968;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6E656D6572636E69;
  v10 = 0xEB000000006C6174;
  if (a2 != 2)
  {
    v9 = 0x74696D627573;
    v10 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 1953393000;
    v8 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1E5C9D060();
  }

  return v13 & 1;
}

uint64_t sub_1E5C762CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73647261632D6CLL;
  v3 = 0x6169726F74696465;
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = 0x7974696C61646F6DLL;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xEF736D6574692D6CLL;
    if (!a1)
    {
      v13 = 0xEF73647261632D6CLL;
    }

    if (a1 <= 1u)
    {
      v10 = 0x6169726F74696465;
    }

    else
    {
      v10 = v12;
    }

    if (v4 <= 1)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x2D72656E69617274;
    v6 = 0xEC00000073706974;
    v7 = 0x65486C6C65737075;
    v8 = 0xEC00000072656461;
    if (a1 != 7)
    {
      v7 = 0x74756F6B726F77;
      v8 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v5 = v7;
      v6 = v8;
    }

    v9 = 0x6D6172676F7270;
    if (a1 != 4)
    {
      v9 = 0x72656E69617274;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v4 <= 5)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = v6;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v2 = 0xE800000000000000;
      if (a2 == 2)
      {
        if (v10 != 0x7974696C61646F6DLL)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x7473696C79616C70)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2)
    {
      v2 = 0xEF736D6574692D6CLL;
      if (v10 != 0x6169726F74696465)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }
  }

  else
  {
    if (a2 <= 5u)
    {
      v2 = 0xE700000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x6D6172676F7270)
        {
          goto LABEL_49;
        }
      }

      else if (v10 != 0x72656E69617274)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 6)
    {
      v14 = 0x2D72656E69617274;
      v15 = 1936746868;
LABEL_40:
      v2 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v10 != v14)
      {
        goto LABEL_49;
      }

      goto LABEL_46;
    }

    if (a2 == 7)
    {
      v14 = 0x65486C6C65737075;
      v15 = 1919247457;
      goto LABEL_40;
    }

    v2 = 0xE700000000000000;
    v3 = 0x74756F6B726F77;
  }

  if (v10 != v3)
  {
LABEL_49:
    v16 = sub_1E5C9D060();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v2)
  {
    goto LABEL_49;
  }

  v16 = 1;
LABEL_50:

  return v16 & 1;
}

uint64_t sub_1E5C76580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHistoryItem();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v21 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1E5C7E904(v14, v11, type metadata accessor for SearchHistoryItem);
        sub_1E5C7E904(v15, v8, type metadata accessor for SearchHistoryItem);
        v17 = *v11 == *v8 && v11[1] == v8[1];
        if (!v17 && (sub_1E5C9D060() & 1) == 0)
        {
          break;
        }

        v18 = *(v4 + 20);
        v19 = sub_1E5C9BB50();
        sub_1E5C7E96C(v8, type metadata accessor for SearchHistoryItem);
        sub_1E5C7E96C(v11, type metadata accessor for SearchHistoryItem);
        if (v19)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v19 & 1;
      }

      sub_1E5C7E96C(v8, type metadata accessor for SearchHistoryItem);
      sub_1E5C7E96C(v11, type metadata accessor for SearchHistoryItem);
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1E5C767A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v7 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v9 = &v70 - v8;
  v10 = type metadata accessor for SearchContentTile();
  v87 = *(v10 - 8);
  v11 = *(v87 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v70 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v70 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v70 - v20;
  v22 = type metadata accessor for SearchLandingSectionDescriptor();
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v29 = &v70 - v28;
  v30 = *(a1 + 16);
  if (v30 != *(a2 + 16))
  {
    return 0;
  }

  if (!v30 || a1 == a2)
  {
    return 1;
  }

  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = a1 + v31;
  v33 = 0;
  v76 = a2 + v31;
  v34 = *(v27 + 72);
  v79 = v10;
  v75 = v26;
  v73 = v22;
  v78 = v30;
  v72 = v32;
  v71 = v34;
  v74 = &v70 - v28;
  while (1)
  {
    v37 = v33;
    v38 = v34 * v33;
    result = sub_1E5C7E904(v32 + v38, v29, type metadata accessor for SearchLandingSectionDescriptor);
    v77 = v37;
    if (v37 == v78)
    {
      goto LABEL_99;
    }

    sub_1E5C7E904(v76 + v38, v26, type metadata accessor for SearchLandingSectionDescriptor);
    v39 = *v29 == *v26 && *(v29 + 1) == *(v26 + 1);
    v40 = v29;
    if (!v39 && (sub_1E5C9D060() & 1) == 0)
    {
      goto LABEL_94;
    }

    if (v29[16] != v26[16])
    {
      goto LABEL_94;
    }

    v41 = *(v22 + 24);
    result = sub_1E5C9BA70();
    if ((result & 1) == 0 || (v42 = *(v22 + 28), v43 = *&v29[v42], v44 = *&v26[v42], v82 = v43, v45 = *(v43 + 16), v85 = v44, v45 != *(v44 + 16)))
    {
LABEL_94:
      sub_1E5C7E96C(v26, type metadata accessor for SearchLandingSectionDescriptor);
      sub_1E5C7E96C(v40, type metadata accessor for SearchLandingSectionDescriptor);
      return 0;
    }

    v46 = v82;
    if (v45)
    {
      if (v82 != v85)
      {
        break;
      }
    }

LABEL_6:
    v36 = v77 + 1;
    v26 = v75;
    sub_1E5C7E96C(v75, type metadata accessor for SearchLandingSectionDescriptor);
    v29 = v74;
    v33 = v36;
    sub_1E5C7E96C(v74, type metadata accessor for SearchLandingSectionDescriptor);
    result = 1;
    v22 = v73;
    v32 = v72;
    v34 = v71;
    if (v36 == v78)
    {
      return result;
    }
  }

  v47 = 0;
  v48 = (*(v87 + 80) + 32) & ~*(v87 + 80);
  v81 = v82 + v48;
  v80 = v85 + v48;
  while (v47 < *(v46 + 16))
  {
    v49 = *(v87 + 72) * v47;
    result = sub_1E5C7E904(v81 + v49, v21, type metadata accessor for SearchContentTile);
    if (v47 >= *(v85 + 16))
    {
      goto LABEL_98;
    }

    sub_1E5C7E904(v80 + v49, v19, type metadata accessor for SearchContentTile);
    v50 = &v9[*(v86 + 48)];
    sub_1E5C7E904(v21, v9, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v19, v50, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E904(v9, v16, type metadata accessor for SearchContentTile);
      v55 = *(v16 + 3);
      *v93 = *(v16 + 2);
      *&v93[16] = v55;
      *&v93[32] = *(v16 + 8);
      v56 = *(v16 + 1);
      v91 = *v16;
      v92 = v56;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C4F8A4(&v91);
        sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
        v69 = v21;
        v68 = type metadata accessor for SearchContentTile;
        goto LABEL_89;
      }

      v57 = *(v50 + 16);
      v88 = *v50;
      v89 = v57;
      v58 = *(v50 + 48);
      *v90 = *(v50 + 32);
      *&v90[16] = v58;
      *&v90[32] = *(v50 + 64);
      if (v91 != v88 && (sub_1E5C9D060() & 1) == 0 || v92 != v89 && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_91;
      }

      if (v93[0] <= 3u)
      {
        if (v93[0] > 1u)
        {
          v60 = 0xE800000000000000;
          if (v93[0] == 2)
          {
            v59 = 0x7974696C61646F6DLL;
          }

          else
          {
            v59 = 0x7473696C79616C70;
          }
        }

        else
        {
          v59 = 0x6169726F74696465;
          v60 = 0xEF73647261632D6CLL;
          if (v93[0])
          {
            v60 = 0xEF736D6574692D6CLL;
          }
        }
      }

      else if (v93[0] <= 5u)
      {
        v60 = 0xE700000000000000;
        if (v93[0] == 4)
        {
          v59 = 0x6D6172676F7270;
        }

        else
        {
          v59 = 0x72656E69617274;
        }
      }

      else if (v93[0] == 6)
      {
        v59 = 0x2D72656E69617274;
        v60 = 0xEC00000073706974;
      }

      else if (v93[0] == 7)
      {
        v59 = 0x65486C6C65737075;
        v60 = 0xEC00000072656461;
      }

      else
      {
        v60 = 0xE700000000000000;
        v59 = 0x74756F6B726F77;
      }

      if (v90[0] <= 3u)
      {
        if (v90[0] > 1u)
        {
          v64 = 0xE800000000000000;
          if (v90[0] == 2)
          {
            if (v59 == 0x7974696C61646F6DLL)
            {
              goto LABEL_70;
            }
          }

          else if (v59 == 0x7473696C79616C70)
          {
            goto LABEL_70;
          }

          goto LABEL_73;
        }

        v63 = 0x6169726F74696465;
        v64 = 0xEF73647261632D6CLL;
        if (!v90[0])
        {
          goto LABEL_69;
        }

        v64 = 0xEF736D6574692D6CLL;
        if (v59 != 0x6169726F74696465)
        {
          goto LABEL_73;
        }

LABEL_70:
        if (v60 != v64)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v90[0] <= 5u)
        {
          v64 = 0xE700000000000000;
          if (v90[0] == 4)
          {
            if (v59 == 0x6D6172676F7270)
            {
              goto LABEL_70;
            }
          }

          else if (v59 == 0x72656E69617274)
          {
            goto LABEL_70;
          }
        }

        else if (v90[0] == 6)
        {
          v61 = 0x2D72656E69617274;
          v62 = 1936746868;
LABEL_64:
          v64 = v62 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v59 == v61)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v90[0] == 7)
          {
            v61 = 0x65486C6C65737075;
            v62 = 1919247457;
            goto LABEL_64;
          }

          v64 = 0xE700000000000000;
          v63 = 0x74756F6B726F77;
LABEL_69:
          if (v59 == v63)
          {
            goto LABEL_70;
          }
        }

LABEL_73:
        v65 = sub_1E5C9D060();

        if ((v65 & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      if (*&v93[16])
      {
        if (!*&v90[16])
        {
          goto LABEL_90;
        }

        if (*&v93[8] != *&v90[8] && (sub_1E5C9D060() & 1) == 0)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (*&v90[16])
        {
LABEL_90:

LABEL_91:
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v88);
          sub_1E5C4F8A4(&v91);
LABEL_92:
          sub_1E5C7E96C(v9, type metadata accessor for SearchContentTile);
LABEL_93:
          v26 = v75;
          v40 = v74;
          goto LABEL_94;
        }

        swift_bridgeObjectRelease_n();
      }

      v66 = *&v90[32];
      if (*&v93[32])
      {
        if (!*&v90[32])
        {
          goto LABEL_91;
        }

        if (*&v93[24] == *&v90[24])
        {
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v88);
          sub_1E5C4F8A4(&v91);
        }

        else
        {
          v67 = sub_1E5C9D060();
          sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v88);
          sub_1E5C4F8A4(&v91);
          if ((v67 & 1) == 0)
          {
            goto LABEL_92;
          }
        }
      }

      else
      {
        sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v88);
        sub_1E5C4F8A4(&v91);
        if (v66)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_20;
    }

    v51 = v84;
    sub_1E5C7E904(v9, v84, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
      v68 = type metadata accessor for SearchItem;
      v69 = v51;
LABEL_89:
      sub_1E5C7E96C(v69, v68);
      sub_1E5C3177C(v9, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_93;
    }

    v52 = v83;
    sub_1E5C7FCD4(v50, v83, type metadata accessor for SearchItem);
    v53 = static SearchItem.== infix(_:_:)(v51, v52);
    sub_1E5C7E96C(v52, type metadata accessor for SearchItem);
    sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v21, type metadata accessor for SearchContentTile);
    v54 = v51;
    v46 = v82;
    sub_1E5C7E96C(v54, type metadata accessor for SearchItem);
    if (!v53)
    {
      goto LABEL_92;
    }

LABEL_20:
    ++v47;
    result = sub_1E5C7E96C(v9, type metadata accessor for SearchContentTile);
    if (v45 == v47)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_1E5C773E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v8 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v51 - v9;
  v11 = type metadata accessor for SearchContentTile();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v51 - v21;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  if (!v24 || a1 == a2)
  {
    return 1;
  }

  v53 = v22;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v56 = *(v20 + 72);
  v52 = v7;
  v57 = v11;
  v54 = &v51 - v21;
  while (1)
  {
    sub_1E5C7E904(v26, v23, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v27, v19, type metadata accessor for SearchContentTile);
    v28 = &v10[*(v58 + 48)];
    sub_1E5C7E904(v23, v10, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v19, v28, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v29 = v19;
      v30 = v53;
      sub_1E5C7E904(v10, v53, type metadata accessor for SearchContentTile);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C7FCD4(v28, v7, type metadata accessor for SearchItem);
        v31 = _s13FitnessSearch0B4ItemV2eeoiySbAC_ACtFZ_0(v30, v7);
        sub_1E5C7E96C(v7, type metadata accessor for SearchItem);
        sub_1E5C7E96C(v30, type metadata accessor for SearchItem);
        sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
        v19 = v29;
        v23 = v54;
        if (!v31)
        {
          goto LABEL_86;
        }

        goto LABEL_7;
      }

      sub_1E5C7E96C(v30, type metadata accessor for SearchItem);
      v19 = v29;
      v23 = v54;
LABEL_82:
      sub_1E5C3177C(v10, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_86;
    }

    sub_1E5C7E904(v10, v16, type metadata accessor for SearchContentTile);
    v32 = *(v16 + 3);
    *v64 = *(v16 + 2);
    *&v64[16] = v32;
    *&v64[32] = *(v16 + 8);
    v33 = *(v16 + 1);
    v62 = *v16;
    v63 = v33;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E5C4F8A4(&v62);
      goto LABEL_82;
    }

    v55 = v24;
    v34 = *(v28 + 16);
    v59 = *v28;
    v60 = v34;
    v35 = *(v28 + 48);
    *v61 = *(v28 + 32);
    *&v61[16] = v35;
    *&v61[32] = *(v28 + 64);
    if (v62 != v59 && (sub_1E5C9D060() & 1) == 0 || v63 != v60 && (sub_1E5C9D060() & 1) == 0)
    {
      goto LABEL_84;
    }

    if (v64[0] <= 3u)
    {
      v38 = 0x7974696C61646F6DLL;
      if (v64[0] != 2)
      {
        v38 = 0x7473696C79616C70;
      }

      v39 = 0xEF73647261632D6CLL;
      if (v64[0])
      {
        v39 = 0xEF736D6574692D6CLL;
      }

      if (v64[0] <= 1u)
      {
        v36 = 0x6169726F74696465;
      }

      else
      {
        v36 = v38;
      }

      if (v64[0] <= 1u)
      {
        v37 = v39;
      }

      else
      {
        v37 = 0xE800000000000000;
      }
    }

    else if (v64[0] <= 5u)
    {
      v37 = 0xE700000000000000;
      if (v64[0] == 4)
      {
        v36 = 0x6D6172676F7270;
      }

      else
      {
        v36 = 0x72656E69617274;
      }
    }

    else if (v64[0] == 6)
    {
      v36 = 0x2D72656E69617274;
      v37 = 0xEC00000073706974;
    }

    else if (v64[0] == 7)
    {
      v36 = 0x65486C6C65737075;
      v37 = 0xEC00000072656461;
    }

    else
    {
      v37 = 0xE700000000000000;
      v36 = 0x74756F6B726F77;
    }

    if (v61[0] <= 3u)
    {
      v42 = 0x7974696C61646F6DLL;
      if (v61[0] != 2)
      {
        v42 = 0x7473696C79616C70;
      }

      v43 = 0xEF73647261632D6CLL;
      if (v61[0])
      {
        v43 = 0xEF736D6574692D6CLL;
      }

      if (v61[0] <= 1u)
      {
        v44 = 0x6169726F74696465;
      }

      else
      {
        v44 = v42;
      }

      if (v61[0] <= 1u)
      {
        v45 = v43;
      }

      else
      {
        v45 = 0xE800000000000000;
      }

      if (v36 != v44)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v61[0] <= 5u)
    {
      if (v61[0] == 4)
      {
        v46 = 0x6D6172676F7270;
      }

      else
      {
        v46 = 0x72656E69617274;
      }

      v45 = 0xE700000000000000;
      if (v36 != v46)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v61[0] == 6)
    {
      v40 = 0x2D72656E69617274;
      v41 = 1936746868;
LABEL_58:
      v45 = v41 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      if (v36 != v40)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    if (v61[0] == 7)
    {
      v40 = 0x65486C6C65737075;
      v41 = 1919247457;
      goto LABEL_58;
    }

    v45 = 0xE700000000000000;
    if (v36 != 0x74756F6B726F77)
    {
      goto LABEL_64;
    }

LABEL_62:
    if (v37 == v45)
    {

      goto LABEL_65;
    }

LABEL_64:
    v47 = sub_1E5C9D060();

    if ((v47 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_65:
    if (*&v64[16])
    {
      if (!*&v61[16])
      {
        break;
      }

      if (*&v64[8] != *&v61[8] && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_72;
    }

    if (*&v61[16])
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_72:
    v48 = *&v61[32];
    if (*&v64[32])
    {
      if (!*&v61[32])
      {
        goto LABEL_84;
      }

      if (*&v64[24] == *&v61[24])
      {
        sub_1E5C4F8A4(&v59);
        sub_1E5C4F8A4(&v62);
        v7 = v52;
        v24 = v55;
      }

      else
      {
        v49 = sub_1E5C9D060();
        sub_1E5C4F8A4(&v59);
        sub_1E5C4F8A4(&v62);
        v7 = v52;
        v24 = v55;
        if ((v49 & 1) == 0)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      sub_1E5C4F8A4(&v59);
      sub_1E5C4F8A4(&v62);
      v7 = v52;
      v24 = v55;
      if (v48)
      {
        goto LABEL_85;
      }
    }

    sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
LABEL_7:
    sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v23, type metadata accessor for SearchContentTile);
    v27 += v56;
    v26 += v56;
    if (!--v24)
    {
      return 1;
    }
  }

LABEL_84:
  sub_1E5C4F8A4(&v59);
  sub_1E5C4F8A4(&v62);
LABEL_85:
  sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
LABEL_86:
  sub_1E5C7E96C(v19, type metadata accessor for SearchContentTile);
  sub_1E5C7E96C(v23, type metadata accessor for SearchContentTile);
  return 0;
}

uint64_t sub_1E5C77CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItem();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054D18, &unk_1E5CA2B00);
  v8 = *(*(v75 - 8) + 64);
  MEMORY[0x1EEE9AC00](v75);
  v10 = &v62 - v9;
  v74 = type metadata accessor for SearchContentTile();
  v77 = *(v74 - 8);
  v11 = *(v77 + 64);
  v12 = MEMORY[0x1EEE9AC00](v74);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v62 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = a1 + 32;
  v26 = a2 + 32;
  v64 = a2 + 32;
  for (i = a1 + 32; ; v25 = i)
  {
    v27 = (v25 + (v24 << 6));
    v28 = v27[1];
    v88 = *v27;
    v89 = v28;
    v29 = v27[3];
    v90 = v27[2];
    v91 = v29;
    v30 = (v26 + (v24 << 6));
    v31 = v30[1];
    v92 = *v30;
    v93 = v31;
    v32 = v30[3];
    v94 = v30[2];
    v95 = v32;
    v67 = v24;
    if (*(&v88 + 1))
    {
      if (!*(&v92 + 1) || v88 != v92 && (sub_1E5C9D060() & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(&v92 + 1))
    {
      return 0;
    }

    if (v89 != v93 && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    if (v90 != v94 || __PAIR128__(v91, *(&v90 + 1)) != __PAIR128__(v95, *(&v94 + 1)) && (sub_1E5C9D060() & 1) == 0)
    {
      return 0;
    }

    v72 = *(&v95 + 1);
    v73 = *(&v91 + 1);
    v33 = *(*(&v91 + 1) + 16);
    if (v33 != *(*(&v95 + 1) + 16))
    {
      return 0;
    }

    if (v33 && v73 != v72)
    {
      break;
    }

LABEL_93:
    v24 = v67 + 1;
    if (v67 + 1 == v23)
    {
      return 1;
    }

    v26 = v64;
  }

  v63 = v23;
  v68 = v7;
  v69 = v14;
  v34 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v35 = v73 + v34;
  v36 = v72 + v34;
  sub_1E5C2A1B8(&v88, &v83);
  result = sub_1E5C2A1B8(&v92, &v83);
  v38 = 0;
  v71 = v33;
  v66 = v17;
  while (v38 < *(v73 + 16))
  {
    v39 = v38;
    v40 = *(v77 + 72) * v38;
    result = sub_1E5C7E904(v35 + v40, v22, type metadata accessor for SearchContentTile);
    v41 = *(v72 + 16);
    v76 = v39;
    if (v39 >= v41)
    {
      goto LABEL_105;
    }

    sub_1E5C7E904(v36 + v40, v20, type metadata accessor for SearchContentTile);
    v42 = &v10[*(v75 + 48)];
    sub_1E5C7E904(v22, v10, type metadata accessor for SearchContentTile);
    sub_1E5C7E904(v20, v42, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E904(v10, v17, type metadata accessor for SearchContentTile);
      v47 = *(v17 + 3);
      v85 = *(v17 + 2);
      v86 = v47;
      v87 = *(v17 + 8);
      v48 = *(v17 + 1);
      v83 = *v17;
      v84 = v48;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1E5C4F8A4(&v83);
        sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
        v61 = v22;
        v60 = type metadata accessor for SearchContentTile;
        goto LABEL_98;
      }

      v49 = *(v42 + 16);
      v78 = *v42;
      v79 = v49;
      v50 = *(v42 + 48);
      v80 = *(v42 + 32);
      v81 = v50;
      v82 = *(v42 + 64);
      if ((v83 != v78 || *(&v83 + 1) != *(&v78 + 1)) && (sub_1E5C9D060() & 1) == 0 || (v84 != v79 || *(&v84 + 1) != *(&v79 + 1)) && (sub_1E5C9D060() & 1) == 0)
      {
        goto LABEL_100;
      }

      if (v85 <= 3u)
      {
        if (v85 > 1u)
        {
          v52 = 0xE800000000000000;
          if (v85 == 2)
          {
            v51 = 0x7974696C61646F6DLL;
          }

          else
          {
            v51 = 0x7473696C79616C70;
          }
        }

        else
        {
          v51 = 0x6169726F74696465;
          v52 = 0xEF73647261632D6CLL;
          if (v85)
          {
            v52 = 0xEF736D6574692D6CLL;
          }
        }
      }

      else if (v85 <= 5u)
      {
        v52 = 0xE700000000000000;
        if (v85 == 4)
        {
          v51 = 0x6D6172676F7270;
        }

        else
        {
          v51 = 0x72656E69617274;
        }
      }

      else if (v85 == 6)
      {
        v51 = 0x2D72656E69617274;
        v52 = 0xEC00000073706974;
      }

      else if (v85 == 7)
      {
        v51 = 0x65486C6C65737075;
        v52 = 0xEC00000072656461;
      }

      else
      {
        v52 = 0xE700000000000000;
        v51 = 0x74756F6B726F77;
      }

      if (v80 <= 3u)
      {
        if (v80 > 1u)
        {
          v56 = 0xE800000000000000;
          if (v80 == 2)
          {
            if (v51 == 0x7974696C61646F6DLL)
            {
              goto LABEL_73;
            }
          }

          else if (v51 == 0x7473696C79616C70)
          {
            goto LABEL_73;
          }

          goto LABEL_76;
        }

        v55 = 0x6169726F74696465;
        v56 = 0xEF73647261632D6CLL;
        if (!v80)
        {
          goto LABEL_72;
        }

        v56 = 0xEF736D6574692D6CLL;
        if (v51 != 0x6169726F74696465)
        {
          goto LABEL_76;
        }

LABEL_73:
        if (v52 != v56)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v80 <= 5u)
        {
          v56 = 0xE700000000000000;
          if (v80 == 4)
          {
            if (v51 == 0x6D6172676F7270)
            {
              goto LABEL_73;
            }
          }

          else if (v51 == 0x72656E69617274)
          {
            goto LABEL_73;
          }
        }

        else if (v80 == 6)
        {
          v53 = 0x2D72656E69617274;
          v54 = 1936746868;
LABEL_67:
          v56 = v54 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v51 == v53)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v80 == 7)
          {
            v53 = 0x65486C6C65737075;
            v54 = 1919247457;
            goto LABEL_67;
          }

          v56 = 0xE700000000000000;
          v55 = 0x74756F6B726F77;
LABEL_72:
          if (v51 == v55)
          {
            goto LABEL_73;
          }
        }

LABEL_76:
        v57 = sub_1E5C9D060();

        if ((v57 & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      if (v86)
      {
        if (!v81)
        {
          goto LABEL_99;
        }

        if ((*(&v85 + 1) != *(&v80 + 1) || v86 != v81) && (sub_1E5C9D060() & 1) == 0)
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v81)
        {
LABEL_99:

LABEL_100:
          sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v22, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v78);
          sub_1E5C4F8A4(&v83);
LABEL_101:
          sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
LABEL_102:
          sub_1E5C2A1F0(&v92);
          sub_1E5C2A1F0(&v88);
          return 0;
        }

        swift_bridgeObjectRelease_n();
      }

      v58 = v82;
      if (v87)
      {
        if (!v82)
        {
          goto LABEL_100;
        }

        if (*(&v86 + 1) == *(&v81 + 1) && v87 == v82)
        {
          sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v22, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v78);
          sub_1E5C4F8A4(&v83);
        }

        else
        {
          v59 = sub_1E5C9D060();
          sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
          sub_1E5C7E96C(v22, type metadata accessor for SearchContentTile);
          sub_1E5C4F8A4(&v78);
          sub_1E5C4F8A4(&v83);
          if ((v59 & 1) == 0)
          {
            goto LABEL_101;
          }
        }
      }

      else
      {
        sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
        sub_1E5C7E96C(v22, type metadata accessor for SearchContentTile);
        sub_1E5C4F8A4(&v78);
        sub_1E5C4F8A4(&v83);
        if (v58)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_21;
    }

    v43 = v22;
    v44 = v35;
    v45 = v69;
    sub_1E5C7E904(v10, v69, type metadata accessor for SearchContentTile);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
      sub_1E5C7E96C(v43, type metadata accessor for SearchContentTile);
      v60 = type metadata accessor for SearchItem;
      v61 = v45;
LABEL_98:
      sub_1E5C7E96C(v61, v60);
      sub_1E5C3177C(v10, &qword_1ED054D18, &unk_1E5CA2B00);
      goto LABEL_102;
    }

    v46 = v68;
    sub_1E5C7FCD4(v42, v68, type metadata accessor for SearchItem);
    v70 = static SearchItem.== infix(_:_:)(v45, v46);
    sub_1E5C7E96C(v46, type metadata accessor for SearchItem);
    sub_1E5C7E96C(v20, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v43, type metadata accessor for SearchContentTile);
    sub_1E5C7E96C(v45, type metadata accessor for SearchItem);
    v35 = v44;
    v22 = v43;
    v17 = v66;
    if (!v70)
    {
      goto LABEL_101;
    }

LABEL_21:
    v38 = v76 + 1;
    result = sub_1E5C7E96C(v10, type metadata accessor for SearchContentTile);
    if (v71 == v38)
    {
      sub_1E5C2A1F0(&v92);
      sub_1E5C2A1F0(&v88);
      v7 = v68;
      v14 = v69;
      v23 = v63;
      goto LABEL_93;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

uint64_t sub_1E5C787A4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5C78800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHint();
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      return 1;
    }

    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1E5C7E904(v14, v11, type metadata accessor for SearchHint);
      sub_1E5C7E904(v15, v8, type metadata accessor for SearchHint);
      if ((sub_1E5C9BB80() & 1) == 0)
      {
        break;
      }

      v17 = v4[5];
      v18 = &v11[v17];
      v19 = *&v11[v17 + 8];
      v20 = &v8[v17];
      v21 = *(v20 + 1);
      if (v19)
      {
        if (!v21)
        {
          break;
        }

        v22 = *v18 == *v20 && v19 == v21;
        if (!v22 && (sub_1E5C9D060() & 1) == 0)
        {
          break;
        }
      }

      else if (v21)
      {
        break;
      }

      v23 = v4[6];
      v24 = *&v11[v23];
      v25 = *&v11[v23 + 8];
      v26 = &v8[v23];
      v27 = v24 == *v26 && v25 == *(v26 + 1);
      if (!v27 && (sub_1E5C9D060() & 1) == 0 || *&v11[v4[7]] != *&v8[v4[7]])
      {
        break;
      }

      v28 = v4[8];
      v29 = *&v11[v28];
      v30 = *&v11[v28 + 8];
      v31 = &v8[v28];
      if (v29 == *v31 && v30 == *(v31 + 1))
      {
        sub_1E5C7E96C(v8, type metadata accessor for SearchHint);
        sub_1E5C7E96C(v11, type metadata accessor for SearchHint);
      }

      else
      {
        v33 = sub_1E5C9D060();
        sub_1E5C7E96C(v8, type metadata accessor for SearchHint);
        sub_1E5C7E96C(v11, type metadata accessor for SearchHint);
        if ((v33 & 1) == 0)
        {
          return 0;
        }
      }

      v15 += v16;
      v14 += v16;
      if (!--v12)
      {
        return 1;
      }
    }

    sub_1E5C7E96C(v8, type metadata accessor for SearchHint);
    sub_1E5C7E96C(v11, type metadata accessor for SearchHint);
  }

  return 0;
}

uint64_t sub_1E5C78AC8@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = a2[3];
  v43 = a2[2];
  v44 = v8;
  v45 = a2[4];
  v9 = a2[1];
  v41 = *a2;
  v42 = v9;

  v10 = sub_1E5C8E0AC(MEMORY[0x1E69E7CC0]);
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_16:

    v34 = v41;
    *(a5 + 24) = v42;
    v35 = v44;
    *(a5 + 40) = v43;
    *(a5 + 56) = v35;
    *(a5 + 72) = v45;
    *a5 = a1;
    *(a5 + 8) = v34;
    *(a5 + 88) = a3;
    *(a5 + 96) = a4;
    *(a5 + 104) = 0x4034000000000000;
    *(a5 + 112) = v10;
    return result;
  }

  v12 = 0;
  v13 = (a1 + 32);
  while (v12 < *(a1 + 16))
  {
    v15 = v13[1];
    v38[0] = *v13;
    v38[1] = v15;
    v16 = v13[3];
    v39 = v13[2];
    v40 = v16;
    v46 = v38[0];
    v47 = v15;
    v48 = v39;
    v49 = v16;
    sub_1E5C2A1B8(v38, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v10;
    v18 = sub_1E5C7D560(&v46);
    v20 = v10[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_18;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_1E5C7D6BC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1E5C7D560(&v46);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v32 = v18;
    sub_1E5C7E770();
    v18 = v32;
    if (v24)
    {
LABEL_3:
      v14 = v18;
      sub_1E5C2A1F0(&v46);
      v10 = v37;
      *(v37[7] + 8 * v14) = v12;
      goto LABEL_4;
    }

LABEL_12:
    v10 = v37;
    v37[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v10[6] + (v18 << 6));
    v28 = v48;
    v27 = v49;
    v29 = v47;
    *v26 = v46;
    v26[1] = v29;
    v26[2] = v28;
    v26[3] = v27;
    *(v10[7] + 8 * v18) = v12;
    v30 = v10[2];
    v22 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v22)
    {
      goto LABEL_19;
    }

    v10[2] = v31;
LABEL_4:
    ++v12;
    v13 += 4;
    if (v11 == v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1E5C9D070();
  __break(1u);
  return result;
}

uint64_t sub_1E5C78CEC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 56);
  v11 = *(v0 + 40);
  v12 = v2;
  v13 = *(v0 + 72);
  v9 = *(v0 + 8);
  v10 = v1;
  v3 = *(v0 + 112);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](&v14, v4);
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  if (*(&v15 + 1))
  {
    v18[0] = v14;
    v18[1] = v15;
    v18[2] = v16;
    v18[3] = v17;
    if (*(v3 + 16))
    {
      v5 = sub_1E5C7D560(v18);
      v7 = v6;
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
      if (v7)
      {
        return *(*(v3 + 56) + 8 * v5);
      }
    }

    else
    {
      sub_1E5C3177C(&v9, &qword_1ED053F80, &qword_1E5C9E528);
    }
  }

  return 0;
}

uint64_t sub_1E5C78DF4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v32[4] = *(v1 + 64);
  v32[5] = v3;
  v32[6] = *(v1 + 96);
  v33 = *(v1 + 112);
  v4 = *(v1 + 16);
  v32[0] = *v1;
  v32[1] = v4;
  v5 = *(v1 + 48);
  v32[2] = *(v1 + 32);
  v32[3] = v5;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = *(v1 + 112);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED054ED0, &qword_1E5CA3470);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5CA3380;
  sub_1E5C7A008(v32, v31);
  v11 = sub_1E5C9C460();
  *(inited + 32) = v11;
  v12 = sub_1E5C9C470();
  *(inited + 33) = v12;
  v13 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v11)
  {
    v13 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v12)
  {
    v13 = sub_1E5C9C490();
  }

  sub_1E5C9BDA0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1E5CA3380;
  v23 = sub_1E5C9C480();
  *(v22 + 32) = v23;
  v24 = sub_1E5C9C4A0();
  *(v22 + 33) = v24;
  v25 = sub_1E5C9C490();
  sub_1E5C9C490();
  if (sub_1E5C9C490() != v23)
  {
    v25 = sub_1E5C9C490();
  }

  sub_1E5C9C490();
  if (sub_1E5C9C490() != v24)
  {
    v25 = sub_1E5C9C490();
  }

  result = sub_1E5C9BDA0();
  *a1 = sub_1E5C7A000;
  *(a1 + 8) = v6;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v19;
  *(a1 + 48) = v21;
  *(a1 + 56) = 0;
  *(a1 + 64) = v25;
  *(a1 + 72) = v27;
  *(a1 + 80) = v28;
  *(a1 + 88) = v29;
  *(a1 + 96) = v30;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_1E5C79054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v67 = a3;
  v69 = sub_1E5C9BFE0();
  v63 = *(v69 - 8);
  v71 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1E5C9C2F0();
  v5 = *(v61 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055218, &qword_1E5CA4960);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v59 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055220, &qword_1E5CA4968);
  v14 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055228, &qword_1E5CA4970);
  v18 = *(v17 - 8);
  v65 = v17;
  v66 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v59 - v20;
  sub_1E5C9C420();
  v73 = a2;
  sub_1E5C7A048();
  sub_1E5C9BDC0();
  v21 = sub_1E5C9C440();
  v22 = *(a2 + 104);
  sub_1E5C9C2E0();
  v23 = sub_1E5C27F74(&qword_1ED055238, &qword_1ED055218, &qword_1E5CA4960);
  v62 = v16;
  MEMORY[0x1E6938F60](v21, v22, 0, v8, v9, v23);
  (*(v5 + 8))(v8, v61);
  (*(v10 + 8))(v13, v9);
  v24 = sub_1E5C9C9F0();
  v26 = v25;
  v27 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055240, &qword_1E5CA4978) + 36)];
  v28 = swift_allocObject();
  v29 = *(a2 + 80);
  *(v28 + 80) = *(a2 + 64);
  *(v28 + 96) = v29;
  *(v28 + 112) = *(a2 + 96);
  *(v28 + 128) = *(a2 + 112);
  v30 = *(a2 + 16);
  *(v28 + 16) = *a2;
  *(v28 + 32) = v30;
  v31 = *(a2 + 48);
  *(v28 + 48) = *(a2 + 32);
  *(v28 + 64) = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055248, &qword_1E5CA4980) + 36);
  v33 = *MEMORY[0x1E6981DC0];
  v34 = sub_1E5C9CA40();
  (*(*(v34 - 8) + 104))(&v27[v32], v33, v34);
  *v27 = sub_1E5C7A11C;
  *(v27 + 1) = v28;
  v27[16] = 0;
  v35 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055250, &qword_1E5CA4988) + 36)];
  *v35 = v24;
  v35[1] = v26;
  v36 = *(a2 + 24);
  v37 = *(a2 + 56);
  v81 = *(a2 + 40);
  v82 = v37;
  v83 = *(a2 + 72);
  v79 = *(a2 + 8);
  v80 = v36;
  sub_1E5C7A008(a2, v78);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](v84, v38);
  v74 = v84[0];
  v75 = v84[1];
  v76 = v84[2];
  v77 = v84[3];
  v39 = v63;
  v61 = *(v63 + 16);
  v41 = v68;
  v40 = v69;
  v61(v68, v72, v69);
  v42 = (*(v39 + 80) + 136) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v44 = *(a2 + 80);
  *(v43 + 80) = *(a2 + 64);
  *(v43 + 96) = v44;
  *(v43 + 112) = *(a2 + 96);
  *(v43 + 128) = *(a2 + 112);
  v45 = *(a2 + 16);
  *(v43 + 16) = *a2;
  *(v43 + 32) = v45;
  v46 = *(a2 + 48);
  *(v43 + 48) = *(a2 + 32);
  *(v43 + 64) = v46;
  v63 = *(v39 + 32);
  (v63)(v43 + v42, v41, v40);
  sub_1E5C7A008(a2, v78);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  v47 = sub_1E5C7A15C();
  v60 = sub_1E5C7A54C(&qword_1ED053F88, sub_1E5C2B20C);
  v48 = v64;
  v49 = v62;
  sub_1E5C9C750();

  v79 = v74;
  v80 = v75;
  v81 = v76;
  v82 = v77;
  sub_1E5C3177C(&v79, &qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C3177C(v49, &qword_1ED055220, &qword_1E5CA4968);
  *&v84[0] = *a2;
  *&v74 = *&v84[0];
  v51 = v68;
  v50 = v69;
  v61(v68, v72, v69);
  v52 = swift_allocObject();
  v53 = *(a2 + 80);
  *(v52 + 80) = *(a2 + 64);
  *(v52 + 96) = v53;
  *(v52 + 112) = *(a2 + 96);
  *(v52 + 128) = *(a2 + 112);
  v54 = *(a2 + 16);
  *(v52 + 16) = *a2;
  *(v52 + 32) = v54;
  v55 = *(a2 + 48);
  *(v52 + 48) = *(a2 + 32);
  *(v52 + 64) = v55;
  (v63)(v52 + v42, v51, v50);
  sub_1E5C7A008(a2, v78);
  sub_1E5C3165C(v84, v78, &qword_1ED055278, &unk_1E5CA49A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055278, &unk_1E5CA49A0);
  v78[0] = v48;
  v78[1] = v59;
  v78[2] = v47;
  v78[3] = v60;
  swift_getOpaqueTypeConformance2();
  sub_1E5C7A4AC();
  v56 = v65;
  v57 = v70;
  sub_1E5C9C750();

  sub_1E5C3177C(v84, &qword_1ED055278, &unk_1E5CA49A0);
  return (*(v66 + 8))(v57, v56);
}

uint64_t sub_1E5C79834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 3);
  v6 = *(a1 + 7);
  v14[2] = *(a1 + 5);
  v14[3] = v6;
  v14[4] = *(a1 + 9);
  v14[0] = *(a1 + 1);
  v14[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  sub_1E5C9C920();
  v7 = v14[5];
  *(a2 + 24) = v14[6];
  *(a2 + 40) = v14[7];
  v8 = v14[9];
  *(a2 + 56) = v14[8];
  *(a2 + 72) = v8;
  *&v14[0] = a1[14];
  v9 = *&v14[0];
  v10 = a1[11];
  v11 = a1[12];
  *a2 = v4;
  *(a2 + 8) = v7;
  *(a2 + 88) = v9;
  *(a2 + 96) = v10;
  *(a2 + 104) = v11;
  sub_1E5C3165C(v14, v13, &qword_1ED055298, &qword_1E5CA49B0);
}

uint64_t sub_1E5C7991C()
{
  v1 = v0[5];
  v2 = v0[3];
  v36[4] = v0[4];
  v36[5] = v1;
  v3 = v0[5];
  v36[6] = v0[6];
  v4 = v0[1];
  v36[0] = *v0;
  v36[1] = v4;
  v5 = v0[3];
  v7 = *v0;
  v6 = v0[1];
  v36[2] = v0[2];
  v36[3] = v5;
  v32 = v36[4];
  v33 = v3;
  v34 = v0[6];
  v28 = v7;
  v29 = v6;
  v37 = *(v0 + 14);
  v35 = *(v0 + 14);
  v30 = v36[2];
  v31 = v2;
  v8 = sub_1E5C78CEC();
  if ((v9 & 1) != 0 && *(*&v36[0] + 16))
  {
    v10 = *(*&v36[0] + 32);
    v11 = *(*&v36[0] + 48);
    v12 = *(*&v36[0] + 80);
    v21 = *(*&v36[0] + 64);
    v22 = v12;
    v20[1] = v11;
    v25 = v21;
    v26 = v12;
    v13 = *(*&v36[0] + 48);
    v23 = *(*&v36[0] + 32);
    v24 = v13;
    v31 = *(&v36[3] + 8);
    v32 = *(&v36[4] + 8);
    v29 = *(&v36[1] + 8);
    v30 = *(&v36[2] + 8);
    v28 = *(v36 + 8);
    v17 = *(&v36[2] + 8);
    v18 = *(&v36[3] + 8);
    v19 = *(&v36[4] + 8);
    v20[0] = v10;
    v15 = *(v36 + 8);
    v16 = *(&v36[1] + 8);
    sub_1E5C2A1B8(v20, v27);
    sub_1E5C3165C(&v28, v27, &qword_1ED055258, &unk_1E5CA4990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
    sub_1E5C9C910();
    v27[2] = v17;
    v27[3] = v18;
    v27[4] = v19;
    v27[0] = v15;
    v27[1] = v16;
    return sub_1E5C3177C(v27, &qword_1ED055258, &unk_1E5CA4990);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    sub_1E5C9CA20();
    sub_1E5C9BED0();
  }
}

uint64_t sub_1E5C79B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 56);
  v11 = *(a2 + 40);
  v12 = v3;
  v13 = *(a2 + 72);
  v10[0] = *(a2 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055258, &unk_1E5CA4990);
  MEMORY[0x1E6939210](v14, v4);
  v6 = v14[0];
  v7 = v14[1];
  v8 = v14[2];
  v9 = v14[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED053F80, &qword_1E5C9E528);
  sub_1E5C7A54C(&qword_1ED055288, sub_1E5C7A5C4);
  sub_1E5C9BFD0();
  v10[0] = v6;
  v10[1] = v7;
  v11 = v8;
  v12 = v9;
  return sub_1E5C3177C(v10, &qword_1ED053F80, &qword_1E5C9E528);
}

double sub_1E5C79C38@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5C9C1A0();
  v19 = 1;
  sub_1E5C79DA0(&v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28 = v17;
  sub_1E5C3165C(&v20, &v10, &qword_1ED055378, &qword_1E5CA4C28);
  sub_1E5C3177C(v27, &qword_1ED055378, &qword_1E5CA4C28);
  *&v18[55] = v23;
  *&v18[71] = v24;
  *&v18[87] = v25;
  *&v18[7] = v20;
  *&v18[23] = v21;
  *&v18[103] = v26;
  *&v18[39] = v22;
  v3 = v19;
  v4 = sub_1E5C9BFC0();
  v5 = sub_1E5C9C450();
  v6 = *&v18[32];
  *(a1 + 65) = *&v18[48];
  v7 = *&v18[80];
  *(a1 + 81) = *&v18[64];
  *(a1 + 97) = v7;
  *(a1 + 112) = *&v18[95];
  result = *v18;
  v9 = *&v18[16];
  *(a1 + 17) = *v18;
  *(a1 + 33) = v9;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 49) = v6;
  *(a1 + 128) = v4;
  *(a1 + 136) = v5;
  return result;
}

uint64_t sub_1E5C79DA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED055380, &qword_1E5CA4C30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E5CA4830;
  sub_1E5C9C790();
  sub_1E5C9C7C0();

  *(v2 + 32) = sub_1E5C9C970();
  *(v2 + 40) = v3;
  v4 = objc_opt_self();
  v5 = [v4 systemBackgroundColor];
  sub_1E5C9C780();
  *(v2 + 48) = sub_1E5C9C970();
  *(v2 + 56) = v6;
  v7 = [v4 systemBackgroundColor];
  sub_1E5C9C780();
  *(v2 + 64) = sub_1E5C9C970();
  *(v2 + 72) = v8;
  sub_1E5C9C980();
  sub_1E5C9CA80();
  sub_1E5C9CA90();
  sub_1E5C9BF00();
  sub_1E5C9C9F0();
  sub_1E5C9BE50();
  v9 = v26;
  v28[4] = v26;
  v10 = v23;
  v11 = v22;
  v28[0] = v22;
  v28[1] = v23;
  *&v20[23] = v23;
  *&v20[7] = v22;
  *&v20[71] = v26;
  v12 = v24;
  v13 = v25;
  v28[2] = v24;
  v28[3] = v25;
  *&v20[55] = v25;
  *&v20[39] = v24;
  v14 = v27;
  v15 = v27;
  *&v20[87] = v27;
  *(a1 + 41) = *&v20[32];
  v16 = *&v20[64];
  *(a1 + 57) = *&v20[48];
  *(a1 + 73) = v16;
  *(a1 + 88) = *&v20[79];
  v17 = *&v20[16];
  *(a1 + 9) = *v20;
  *(a1 + 25) = v17;
  v21 = 0;
  v29 = v14;
  *(a1 + 8) = 0;
  *a1 = 0;
  v30[0] = v11;
  v30[1] = v10;
  v31 = v15;
  v30[3] = v13;
  v30[4] = v9;
  v30[2] = v12;
  sub_1E5C3165C(v28, &v19, &qword_1ED055388, &qword_1E5CA4C38);
  return sub_1E5C3177C(v30, &qword_1ED055388, &qword_1E5CA4C38);
}

double sub_1E5C79FF4@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  return sub_1E5C79C38(a1);
}

unint64_t sub_1E5C7A048()
{
  result = qword_1ED055230;
  if (!qword_1ED055230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055230);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[8])
  {
    v4 = v0[6];

    v5 = v0[8];

    v6 = v0[11];

    v7 = v0[12];
  }

  v8 = v0[14];

  v9 = v0[16];

  return swift_deallocObject();
}

double sub_1E5C7A11C@<D0>(uint64_t a1@<X8>)
{
  sub_1E5C9BE70();
  result = *(v1 + 120);
  *a1 = v4;
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E5C7A15C()
{
  result = qword_1ED055260;
  if (!qword_1ED055260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055220, &qword_1E5CA4968);
    sub_1E5C7A1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055260);
  }

  return result;
}

unint64_t sub_1E5C7A1E8()
{
  result = qword_1ED055268;
  if (!qword_1ED055268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055240, &qword_1E5CA4978);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055218, &qword_1E5CA4960);
    sub_1E5C27F74(&qword_1ED055238, &qword_1ED055218, &qword_1E5CA4960);
    swift_getOpaqueTypeConformance2();
    sub_1E5C27F74(&qword_1ED055270, &qword_1ED055250, &qword_1E5CA4988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055268);
  }

  return result;
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_1E5C9BFE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = v0[2];

  v6 = v0[3];

  v7 = v0[4];

  if (v0[8])
  {
    v8 = v0[6];

    v9 = v0[8];

    v10 = v0[11];

    v11 = v0[12];
  }

  v12 = v0[14];

  v13 = v0[16];

  (*(v2 + 8))(v0 + ((v3 + 136) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1E5C7A41C()
{
  v1 = *(sub_1E5C9BFE0() - 8);
  v2 = (*(v1 + 80) + 136) & ~*(v1 + 80);
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  v6 = *(v0 + 48);
  v7 = *(v0 + 64);
  return sub_1E5C7991C();
}

unint64_t sub_1E5C7A4AC()
{
  result = qword_1ED055280;
  if (!qword_1ED055280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED055278, &unk_1E5CA49A0);
    sub_1E5C2B20C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055280);
  }

  return result;
}

uint64_t sub_1E5C7A54C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED053F80, &qword_1E5C9E528);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5C7A5C4()
{
  result = qword_1ED055290;
  if (!qword_1ED055290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED055290);
  }

  return result;
}