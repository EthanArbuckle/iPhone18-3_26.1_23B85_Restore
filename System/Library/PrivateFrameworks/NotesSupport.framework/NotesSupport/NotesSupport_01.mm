uint64_t sub_1D45BD270(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - v11;
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

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
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

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_1D45B9574(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v42;
          sub_1D45B9574(v33, v42);
          v36 = sub_1D45C4FA8();
          v37 = v35;
          v12 = v34;
          sub_1D45BBE28(v37);
          sub_1D45BBE28(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
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
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_1D45B9574(a2, v12);
        v21 = v42;
        sub_1D45B9574(a4, v42);
        v22 = sub_1D45C4FA8();
        sub_1D45BBE28(v21);
        sub_1D45BBE28(v12);
        if (v22)
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

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_1D45BD798(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_1D45BD6F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D45BD784(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1D45BD798(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AsyncPriorityQueue.WorkItem(0);
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

uint64_t NSAttributedString.range.getter()
{
  [v0 ic_range];
  v1 = [v0 string];
  sub_1D45C4E98();

  v2 = sub_1D45C5028();
  v4 = v3;

  if ((v4 & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t NSAttributedString.componentRanges(separatedBy:in:)(uint64_t a1, uint64_t a2, id a3, uint64_t a4, char a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1D45BDC14;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1D45BDC60;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D45BDC8C;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  if (a5)
  {
    a3 = [v5 ic_range];
    a4 = v14;
  }

  v15 = [v5 ic:v13 componentRangesSeparatedByPredicate:a3 inRange:a4];
  _Block_release(v13);
  sub_1D45BDCC0();
  v16 = sub_1D45C4F08();

  if (v16 >> 62)
  {
    v17 = sub_1D45C50D8();
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_15:

    v20 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_5:
  aBlock[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D45BDDA0(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    goto LABEL_19;
  }

  v30 = v11;
  v19 = 0;
  v20 = aBlock[0];
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x1DA6D9840](v19, v16);
    }

    else
    {
      v21 = *(v16 + 8 * v19 + 32);
    }

    v22 = v21;
    v23 = [v21 rangeValue];
    v25 = v24;

    aBlock[0] = v20;
    v27 = *(v20 + 16);
    v26 = *(v20 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1D45BDDA0((v26 > 1), v27 + 1, 1);
      v20 = aBlock[0];
    }

    ++v19;
    *(v20 + 16) = v27 + 1;
    v28 = v20 + 16 * v27;
    *(v28 + 32) = v23;
    *(v28 + 40) = v25;
  }

  while (v17 != v19);

LABEL_16:
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v20;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D45BDC14(uint64_t a1, unsigned __int16 a2)
{
  if ((a2 & 0xF800) == 0xD800)
  {
    return 0;
  }

  else
  {
    return (*(v2 + 16))(a1, a2) & 1;
  }
}

unint64_t sub_1D45BDCC0()
{
  result = qword_1EC7D34B8;
  if (!qword_1EC7D34B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7D34B8);
  }

  return result;
}

id NSAttributedString.range(byTrimmingCharactersIn:in:)(uint64_t a1, id a2, uint64_t a3, char a4)
{
  v8 = sub_1D45C4C88();
  if (a4)
  {
    a2 = [v4 ic_range];
    a3 = v9;
  }

  v10 = [v4 ic:v8 rangeByTrimmingCharactersInSet:a2 inRange:a3];

  return v10;
}

char *sub_1D45BDDA0(char *a1, int64_t a2, char a3)
{
  result = sub_1D45BDDC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D45BDDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D34C0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_1D45BDEDC(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D45BDFBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + *MEMORY[0x1E69E77B0] + 8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v13 = a3(v12, v10);
  v14 = *(v7 + 8);
  v14(v10, v6);
  v14(v12, v6);
  return v13 & 1;
}

uint64_t Sequence.sorted<A>(by:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a1 + *MEMORY[0x1E69E77B0] + 8);
  v6[2] = a2;
  v6[3] = v4;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = v4;
  v6[10] = a2;
  v6[11] = a3;
  v6[12] = a4;
  v6[13] = sub_1D45BE220;
  v6[14] = v6;
  v6[15] = a1;
  return sub_1D45C4EF8();
}

uint64_t Sequence.count(where:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, char *a4)
{
  v35 = a1;
  v36 = a2;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v30 - v7;
  v9 = sub_1D45C5048();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v30 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v31 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  (*(v13 + 16))(v15, v38, a3);
  sub_1D45C4EC8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37 = v18;
  v38 = v16;
  v34 = AssociatedConformanceWitness;
  sub_1D45C5068();
  v20 = v32;
  v33 = *(v32 + 48);
  if (v33(v12, 1, AssociatedTypeWitness) == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v23 = *(v20 + 32);
    v22 = v20 + 32;
    v32 = v23;
    v24 = (v22 - 24);
    while (1)
    {
      v25 = v22;
      (v32)(v8, v12, AssociatedTypeWitness);
      v26 = v35(v8);
      if (v4)
      {
        break;
      }

      v27 = v26;
      (*v24)(v8, AssociatedTypeWitness);
      if ((v27 & 1) != 0 && __OFADD__(v21++, 1))
      {
        __break(1u);
        break;
      }

      sub_1D45C5068();
      v22 = v25;
      if (v33(v12, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_11;
      }
    }

    (*v24)(v8, AssociatedTypeWitness);
  }

LABEL_11:
  (*(v31 + 8))(v37, v38);
  return v21;
}

uint64_t Sequence<>.uniqued()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1D45C4F38();
  if (sub_1D45C4F68())
  {
    v13 = sub_1D45BE9E8(v12, AssociatedTypeWitness, a3);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v18 = v13;
  v14 = (*(v8 + 16))(v10, v4, a1);
  MEMORY[0x1EEE9AC00](v14);
  *(&v17 - 4) = a1;
  *(&v17 - 3) = a2;
  *(&v17 - 2) = a3;
  *(&v17 - 1) = &v18;
  v15 = sub_1D45C4EE8();

  return v15;
}

uint64_t sub_1D45BE888(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  (*(v3 + 16))(v6, a1, AssociatedTypeWitness);
  sub_1D45C5018();
  v9 = sub_1D45C5008();
  (*(v3 + 8))(v8, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_1D45BE9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v38 - v13;
  if (sub_1D45C4F68())
  {
    sub_1D45C5088();
    v15 = sub_1D45C5078();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CD0];
  }

  v43 = sub_1D45C4F68();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_1D45C4F58();
    sub_1D45C4F28();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_1D45C50A8();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_1D45C4E38();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_1D45C4E78();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void ICCGColorCreateWithString_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_1();
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1D4576000, a3, OS_LOG_TYPE_ERROR, "Color string component count (%zu) is different from the expected count for the color space (%zu) plus the alpha component", v5, 0x16u);
}

void ICDataFromCGImage_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "NSData *ICDataFromCGImage(CGImageRef, CFStringRef, NSDictionary *__strong)";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1D4576000, a2, OS_LOG_TYPE_ERROR, "%s -- Failed to finalize image with type '%@'.", &v2, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PHPhotoLibrary(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Photos))
  {
    return dlopenHelper_Photos(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SYItemIndexingManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_Synapse))
  {
    return dlopenHelper_Synapse(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___UMUserManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_UserManagement))
  {
    return dlopenHelper_UserManagement(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___UMUserPersonaAttributes(double result)
{
  if (!atomic_load(&dlopenHelperFlag_UserManagement))
  {
    return dlopenHelper_UserManagement(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Photos(double a1)
{
  dlopen("/System/Library/Frameworks/Photos.framework/Photos", 0);
  atomic_store(1u, &dlopenHelperFlag_Photos);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_Synapse(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/Synapse.framework/Synapse", 0);
  atomic_store(1u, &dlopenHelperFlag_Synapse);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_UserManagement(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 0);
  atomic_store(1u, &dlopenHelperFlag_UserManagement);
  return a1;
}