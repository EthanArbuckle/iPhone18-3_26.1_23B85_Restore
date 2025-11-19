uint64_t sub_1CF0254A0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1CF9E79F8();
  }

  result = sub_1CF02556C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1CF02556C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1CF9E6AB8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1CF4C4DE8(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1CF4C4DE8(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1CF9E6AB8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1CF0259D8@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, char *a3@<X8>)
{
  if (*a2 - 1 < 2)
  {
    goto LABEL_4;
  }

  v6 = result;
  v8 = *(v3 + 208);
  v7 = *(v3 + 216);
  result = type metadata accessor for ItemMetadata();
  if (a2[*(result + 48)] & 1) != 0 || (a2[*(result + 44)])
  {
    goto LABEL_4;
  }

  v10 = sub_1CEFF8538(v8, v7, 0, v6, 0, 0);
  result = sub_1CEFF8538(v7, 0, 1, v6, 0, 0);
  if (v10 == 501)
  {
    v11 = result;
    result = fpfs_supports_indexAllRemoteItems();
    v10 = v11;
  }

  if (v10 == 1002)
  {
LABEL_11:
    v9 = 5;
    goto LABEL_5;
  }

  if (v10 != 500)
  {
    if (v10 != 3)
    {
      v9 = 4;
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_4:
  v9 = 0;
LABEL_5:
  *a3 = v9;
  return result;
}

uint64_t sub_1CF025AC4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1CF0264D8;

  return sub_1CF025B7C(a1, v5);
}

uint64_t sub_1CF025B7C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1CF0263E0;

  return v7(a1);
}

uint64_t sub_1CF025C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1CF0262EC;

  return sub_1CF025D5C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1CF025D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a4;
  v12 = swift_task_alloc();
  v8[5] = v12;
  *v12 = v8;
  v12[1] = sub_1CF026140;

  return sub_1CF025E24(a4, a5, a6);
}

uint64_t sub_1CF025E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v5 = sub_1CF9E6118();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1CF025F04, 0, 0);
}

uint64_t sub_1CF025F04()
{
  v1 = v0[4];
  v2 = [v1 filename];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  v6 = [v1 providerID];
  if ([v6 fp_isiCloudDriveIdentifier])
  {
    if (v3 == 0x746E656D75636F44 && v5 == 0xE900000000000073)
    {

LABEL_13:
      v15 = v0[4];
      v14 = v0[5];
      v16 = swift_task_alloc();
      v0[11] = v16;
      v16[2] = v15;
      v16[3] = v14;
      v16[4] = v0 + 2;
      v17 = *(MEMORY[0x1E69E8920] + 4);
      v18 = swift_task_alloc();
      v0[12] = v18;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5028, &unk_1CFA181C8);
      *v18 = v0;
      v18[1] = sub_1CF8265B4;

      return MEMORY[0x1EEE6DE38](v0 + 3, 0, 0, 0xD000000000000033, 0x80000001CFA5DF10, sub_1CF8FE48C, v16, v19);
    }

    v8 = sub_1CF9E8048();

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];

  v12 = v0[1];

  return v12(0);
}

uint64_t sub_1CF026140(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_1CF82719C;
  }

  else
  {
    v5 = sub_1CF026254;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1CF026254()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    v1 = *(v0 + 16);
  }

  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = v1;
  v3(v1, 0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1CF0262EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CF0263E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1CF0264E4(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5, uint64_t *a6)
{
  v92 = sub_1CF9E64A8();
  v13 = *(v92 - 8);
  v14 = v13[8];
  MEMORY[0x1EEE9AC00](v92);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v16;
  if (!a2)
  {
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:

    sub_1CF9E7298();
    v69 = swift_allocObject();
    *(v69 + 16) = v99;
    v105[0] = v83;
    v70 = sub_1CF9E7718();
    *(v69 + 56) = MEMORY[0x1E69E6158];
    *(v69 + 64) = a5;
    *(v69 + 32) = v70;
    *(v69 + 40) = v71;
    result = sub_1CF9E6018();
    __break(1u);
    return result;
  }

  v17 = a2[2];

  if (!v17 || v17 != a1)
  {
  }

  v19 = a4;
  v105[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1788, &qword_1CFA0AEE8);
  sub_1CF9E6D38();
  v16 = v105[0];
  v95 = v105[0];
  if (!v105[0])
  {
    goto LABEL_49;
  }

  v105[0] = 0;
  v105[1] = 0xE000000000000000;
  sub_1CF9E7948();

  v105[0] = 0xD000000000000012;
  v105[1] = 0x80000001CFA52A80;
  v103 = a3;
  v20 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v20);

  MEMORY[0x1D3868CC0](0x73746E65766520, 0xE700000000000000);
  v21 = v105[1];
  v22 = &unk_1CF9FA000;
  v23 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1;
  v75 = a3;
  if (v23)
  {
    v6 = a5;
    a3 = v105[0];
    if (qword_1EDEA3408 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_11;
  }

LABEL_12:

  if (a3 < 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    v25 = 0;
    v89 = 0;
    v80 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate;
    v93 = v95 + 32;
    v79 = (v13 + 13);
    v100 = *(v95 + 16);
    v78 = (v13 + 1);
    v77 = *MEMORY[0x1E69E8020];
    v98 = "fsevent: received ";
    v99 = v22[69];
    v72 = xmmword_1CF9FA440;
    v74 = a2;
    v76 = a6;
    v73 = a5;
    while (1)
    {
      v21 = objc_autoreleasePoolPush();
      v26 = MEMORY[0x1E69E7CC8];
      v22 = MEMORY[0x1E69E6158];
      if (v25 < v100)
      {
        if (v25 >= *(v95 + 16))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          swift_once();
LABEL_11:
          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v24 = swift_allocObject();
          *(v24 + 16) = v22[69];
          *(v24 + 56) = MEMORY[0x1E69E6158];
          *(v24 + 64) = sub_1CEFD51C4();
          *(v24 + 32) = a3;
          *(v24 + 40) = v21;
          sub_1CF9E6018();
          v21 = v24;
          a5 = v6;
          a3 = v75;
          goto LABEL_12;
        }

        v26 = *(v93 + 8 * v25);
      }

      v101 = v21;
      v102 = v25 + 1;
      v103 = 1752457584;
      v104 = 0xE400000000000000;
      sub_1CF9E7898();
      if (!*(v26 + 16) || (v27 = sub_1CF0271B0(v105), (v28 & 1) == 0))
      {

        sub_1CF027318(v105);
        v105[0] = 0;
        v105[1] = 0xE000000000000000;
        sub_1CF9E7948();

        strcpy(v105, "ignore event ");
        HIWORD(v105[1]) = -4864;
        v103 = v25;
        v34 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v34);

        MEMORY[0x1D3868CC0](0xD000000000000021, v98 | 0x8000000000000000);
        v13 = v105[0];
        v35 = v105[1];
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v6 = swift_allocObject();
        *(v6 + 16) = v99;
        *(v6 + 56) = v22;
        *(v6 + 64) = sub_1CEFD51C4();
        *(v6 + 32) = v13;
        *(v6 + 40) = v35;
        sub_1CF9E6018();
        goto LABEL_16;
      }

      v29 = *(*(v26 + 56) + 8 * v27);
      swift_unknownObjectRetain();
      sub_1CF027318(v105);
      v105[5] = v29;
      swift_dynamicCast();
      v6 = v104;
      v97 = v103;
      v103 = 0x4449656C6966;
      v104 = 0xE600000000000000;
      sub_1CF9E7898();
      if (!*(v26 + 16))
      {
        break;
      }

      v30 = sub_1CF0271B0(v105);
      if ((v31 & 1) == 0)
      {
        break;
      }

      v32 = *(*(v26 + 56) + 8 * v30);
      swift_unknownObjectRetain();
      sub_1CF027318(v105);

      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      v22 = v33;
      if (!v33)
      {
        swift_unknownObjectRelease();
        v94 = 0;
        goto LABEL_30;
      }

      v90 = *(a5 + 4 * v25);
      a6 = a6[v25];
      v94 = [v33 unsignedLongLongValue];
      v96 = 0;
LABEL_31:
      v36 = a2[3];
      v13 = v91;
      *v91 = v36;
      v37 = v92;
      (*v79)(v13, v77, v92);
      v38 = v36;
      v21 = sub_1CF9E64D8();
      (*v78)(v13, v37);
      v39 = v80;
      if ((v21 & 1) == 0)
      {
        goto LABEL_45;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v87 = Strong;
        v86 = *(v39 + 1);
        v105[0] = 0;
        v105[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v41 = sub_1CF02736C();
        v43 = v42;

        v105[0] = v41;
        v105[1] = v43;
        MEMORY[0x1D3868CC0](0x746E657665736620, 0xEC00000028203A73);
        v103 = v102;
        v44 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v44);

        MEMORY[0x1D3868CC0](47, 0xE100000000000000);
        v103 = a3;
        v45 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v45);

        MEMORY[0x1D3868CC0](2236457, 0xE300000000000000);
        v46 = sub_1CF9E6888();
        v47 = [v46 fp_prettyPath];

        v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v50 = v49;

        MEMORY[0x1D3868CC0](v48, v50);

        MEMORY[0x1D3868CC0](0x4449656C69662022, 0xE90000000000003ALL);
        if (v96)
        {
          v51 = 0x6669636570736E75;
          v52 = 0xEB00000000646569;
        }

        else
        {
          v103 = v94;
          sub_1CEFFD0A8();
          v51 = sub_1CF9E7718();
          v52 = v53;
        }

        v82 = a6;
        v88 = v22;
        MEMORY[0x1D3868CC0](v51, v52);

        MEMORY[0x1D3868CC0](0x4449746E65766520, 0xE90000000000003ALL);
        v103 = a6;
        v54 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v54);

        v85 = v105[0];
        v84 = v105[1];
        v55 = sub_1CEFFCE80();
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v56 = qword_1EDEBB5A0;
        v81 = sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v57 = swift_allocObject();
        *(v57 + 16) = v72;
        v105[0] = v55;
        sub_1CEFFD0A8();
        v83 = v55;
        v58 = sub_1CF9E7718();
        v60 = v59;
        v61 = MEMORY[0x1E69E6158];
        *(v57 + 56) = MEMORY[0x1E69E6158];
        a5 = sub_1CEFD51C4();
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;
        *(v57 + 96) = v61;
        *(v57 + 104) = a5;
        v62 = v85;
        *(v57 + 64) = a5;
        *(v57 + 72) = v62;
        *(v57 + 80) = v84;

        v85 = v56;
        sub_1CF9E6018();

        v63 = v74;
        v13 = v89;
        sub_1CF027534(v90, v74, v87, v86, v82, v97, v6, v94, v96);
        v16 = &v106;
        v89 = v13;
        if (v13)
        {
          goto LABEL_50;
        }

        sub_1CF9E7298();
        v6 = swift_allocObject();
        *(v6 + 16) = v99;
        v105[0] = v83;
        v64 = sub_1CF9E7718();
        *(v6 + 56) = MEMORY[0x1E69E6158];
        *(v6 + 64) = a5;
        *(v6 + 32) = v64;
        *(v6 + 40) = v65;
        sub_1CF9E6018();
        swift_unknownObjectRelease();

        a6 = v76;
        a5 = v73;
        a3 = v75;
        a2 = v63;
      }

      else
      {

        a6 = v76;
      }

LABEL_16:

      objc_autoreleasePoolPop(v101);
      v25 = v102;
      if (a3 == v102)
      {
        goto LABEL_41;
      }
    }

    sub_1CF027318(v105);
    v94 = 0;
    v22 = 0;
LABEL_30:
    v90 = *(a5 + 4 * v25);
    a6 = a6[v25];
    v96 = 1;
    goto LABEL_31;
  }

LABEL_41:

  v66 = a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v67 = *(v66 + 1);
  ObjectType = swift_getObjectType();
  (*(v67 + 40))(a2, ObjectType, v67);

  return swift_unknownObjectRelease();
}

unint64_t sub_1CF0271B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1CF9E7878();

  return sub_1CF0271F4(a1, v5);
}

unint64_t sub_1CF0271F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1CF0272BC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3869B10](v9, a1);
      sub_1CF027318(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1CF02736C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v1 = *v0;
  v2 = sub_1CF9E82E8();
  MEMORY[0x1D3868CC0](v2);

  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A7473616C20, 0xE600000000000000);
  v5 = v0[5];
  v3 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v3);

  MEMORY[0x1D3868CC0](0x3A65646F6D20, 0xE600000000000000);
  LOBYTE(v5) = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](0x3A72656E776F20, 0xE700000000000000);
  MEMORY[0x1D3868CC0](*(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription), *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription + 8));
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF027534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(), uint64_t (*a7)(), uint64_t a8, char a9)
{
  v282 = a8;
  v285 = a7;
  v289 = a6;
  v290 = a5;
  v292 = a3;
  v293 = a4;
  v301 = *MEMORY[0x1E69E9840];
  v272 = sub_1CF9E5868();
  v271 = *(v272 - 8);
  v10 = *(v271 + 64);
  MEMORY[0x1EEE9AC00](v272);
  v270 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v273 = &v260 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v276 = &v260 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v265 = (&v260 - v19);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v264 = &v260 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v281 = &v260 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v266 = &v260 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v269 = &v260 - v26;
  v286 = sub_1CF9E5A58();
  v288 = *(v286 - 8);
  v27 = *(v288 + 64);
  v28 = MEMORY[0x1EEE9AC00](v286);
  v275 = &v260 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v280 = &v260 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v268 = &v260 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v260 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v287 = &v260 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v279 = &v260 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v260 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v42 - 8);
  v277 = &v260 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v48 = (&v260 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v278 = &v260 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v260 - v51;
  v53 = type metadata accessor for VFSItem(0);
  v283 = *(v53 - 8);
  v284 = v53;
  v54 = *(v283 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v274 = &v260 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v260 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v260 - v60;
  v62 = type metadata accessor for LocalDomain();
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v66 = &v260 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = (&v260 - v68);
  v70 = MEMORY[0x1EEE9AC00](v67);
  MEMORY[0x1EEE9AC00](v70);
  v74 = &v260 - v73;
  if ((v71 & 8) != 0)
  {
    if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1CF9FA450;
      *(v78 + 56) = MEMORY[0x1E69E6158];
      *(v78 + 64) = sub_1CEFD51C4();
      *(v78 + 32) = 0xD000000000000013;
      *(v78 + 40) = 0x80000001CFA52AD0;
      sub_1CF9E6018();
    }

    ObjectType = swift_getObjectType();
    (*(v293 + 32))(a2, ObjectType);
    goto LABEL_13;
  }

  v291 = a2;
  if ((v71 & 6) != 0)
  {
    v75 = v291;
    if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7288();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_1CF9FA450;
      *(v76 + 56) = MEMORY[0x1E69E6158];
      *(v76 + 64) = sub_1CEFD51C4();
      *(v76 + 32) = 0xD000000000000010;
      *(v76 + 40) = 0x80000001CFA52AF0;
      sub_1CF9E6018();
    }

    v77 = swift_getObjectType();
    (*(v293 + 32))(v75, v77);
    goto LABEL_13;
  }

  v81 = v290;
  if (v291[5] < v290)
  {
    v291[5] = v290;
  }

  if ((v71 & 0x10) != 0)
  {
    v84 = v291;
    if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1CF9FA450;
      *(v85 + 56) = MEMORY[0x1E69E6158];
      *(v85 + 64) = sub_1CEFD51C4();
      *(v85 + 32) = 0xD000000000000017;
      *(v85 + 40) = 0x80000001CFA52B10;
      sub_1CF9E6018();
    }

    v86 = swift_getObjectType();
    (*(v293 + 24))(v84, v86);
    goto LABEL_13;
  }

  v82 = v291[4];
  if (v82 != -1 && v82 >= v81)
  {
    if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) != 1)
    {
LABEL_13:
      v80 = *MEMORY[0x1E69E9840];
      return;
    }

    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1CF9FA450;
    *(v83 + 56) = MEMORY[0x1E69E6158];
    *(v83 + 64) = sub_1CEFD51C4();
    *(v83 + 32) = 0xD00000000000001CLL;
    *(v83 + 40) = 0x80000001CFA52B30;
LABEL_44:
    sub_1CF9E6018();

    goto LABEL_13;
  }

  v290 = v72;
  v263 = v71;
  if ((sub_1CF9E6AE8() & 1) == 0)
  {
    v97 = v287;
    sub_1CF9E58C8();
    if (a9)
    {
      v98 = *(v288 + 16);
      v99 = v279;
      v100 = v286;
      (v98)(v279, v97, v286);
      v101 = v290;
      sub_1CEFFD3DC(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v290, type metadata accessor for LocalDomain);
      v276 = v98;
      (v98)(v36, v99, v100);
      sub_1CEFFD3DC(v101, v69, type metadata accessor for LocalDomain);
      v102 = v278;
      (*(v283 + 56))(v278, 1, 1, v284);
      v103 = objc_allocWithZone(type metadata accessor for LocalItem(0));
      v104 = sub_1CF001704(v36, v69, v102);
      sub_1CF000690(v101, type metadata accessor for LocalDomain);
      v105 = *(v288 + 8);
      v105(v99, v100);
      if (!v104)
      {
        v299 = 0;
        v300 = 0xE000000000000000;
        sub_1CF9E7948();

        v299 = 0xD000000000000015;
        v300 = 0x80000001CFA52B50;
        MEMORY[0x1D3868CC0](v289, v285);
        MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA52B70);
        v166 = v300;
        if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
        {
          v167 = v299;
          v168 = v287;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v169 = swift_allocObject();
          *(v169 + 16) = xmmword_1CF9FA450;
          *(v169 + 56) = MEMORY[0x1E69E6158];
          *(v169 + 64) = sub_1CEFD51C4();
          *(v169 + 32) = v167;
          *(v169 + 40) = v166;
          sub_1CF9E6018();

          v170 = v168;
        }

        else
        {

          v170 = v287;
        }

        v105(v170, v100);
        goto LABEL_13;
      }

      v106 = v291;
      goto LABEL_37;
    }

    v266 = OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain;
    sub_1CEFFD3DC(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v66, type metadata accessor for LocalDomain);
    v123 = type metadata accessor for VFSFileTree(0);
    v124 = sub_1CEFFEB98();
    v285 = v123;
    sub_1CF7DD394(v282, v124, 0, 0, v48);

    v125 = *(v283 + 48);
    v269 = (v283 + 48);
    v267 = v125;
    if ((v125)(v48, 1, v284) == 1)
    {
      sub_1CF000690(v66, type metadata accessor for LocalDomain);
      v126 = &unk_1EC4BEC00;
      v127 = &unk_1CF9FCB60;
      v128 = v48;
    }

    else
    {
      sub_1CF5634F4(v48, v59);
      sub_1CEFFEB98();

      v129 = v276;
      sub_1CF25116C(v276);
      v130 = v288;
      v131 = v286;
      if ((*(v288 + 48))(v129, 1, v286) != 1)
      {
        v185 = v268;
        (*(v130 + 32))(v268, v129, v131);
        v276 = *(v130 + 16);
        (v276)(v279, v185, v131);
        v289 = type metadata accessor for LocalDomain;
        v186 = v290;
        sub_1CEFFD3DC(v66, v290, type metadata accessor for LocalDomain);
        v187 = v278;
        sub_1CEFFD3DC(v59, v278, type metadata accessor for VFSItem);
        (*(v283 + 56))(v187, 0, 1, v284);
        v188 = objc_allocWithZone(type metadata accessor for LocalItem(0));
        v189 = v130;
        v104 = sub_1CF001704(v279, v186, v187);
        v190 = *(v189 + 8);
        v190(v185, v131);
        sub_1CF000690(v59, type metadata accessor for VFSItem);
        sub_1CF000690(v66, v289);
        if (v104)
        {
          v106 = v291;
          v100 = v286;
          v105 = v190;
LABEL_37:
          v107 = v104;
          v299 = 0x6E61686320646964;
          v300 = 0xEB00000000206567;
          v108 = [v107 description];
          v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v111 = v110;

          MEMORY[0x1D3868CC0](v109, v111);

          v112 = v300;
          v113 = v281;
          if (*(v106 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
          {
            v114 = v105;
            v115 = v299;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v116 = swift_allocObject();
            *(v116 + 16) = xmmword_1CF9FA450;
            *(v116 + 56) = MEMORY[0x1E69E6158];
            *(v116 + 64) = sub_1CEFD51C4();
            *(v116 + 32) = v115;
            *(v116 + 40) = v112;
            sub_1CF9E6018();
            v163 = v287;
            v105 = v114;
            v106 = v291;
          }

          else
          {
            v163 = v287;
          }

          v164 = swift_getObjectType();
          v165 = v288;
          (v276)(v113, v163, v100);
          (*(v165 + 56))(v113, 0, 1, v100);
          (*(v293 + 8))(v106, v107, v263, v113, v164);

          sub_1CEFCCC44(v113, &unk_1EC4BE310, qword_1CF9FCBE0);
          v105(v163, v100);
          goto LABEL_13;
        }

LABEL_50:
        v299 = 1029990758;
        v300 = 0xE400000000000000;
        v297 = v282;
        v132 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v132);

        v133 = sub_1CF9E6888();

        v299 = 0x656C656420646964;
        v300 = 0xEB00000000206574;
        v289 = v133;
        v134 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        MEMORY[0x1D3868CC0](v134);

        v135 = v300;
        v136 = v291;
        v263 = *(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose);
        if (v263 == 1)
        {
          v137 = v299;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v138 = swift_allocObject();
          *(v138 + 16) = xmmword_1CF9FA450;
          *(v138 + 56) = MEMORY[0x1E69E6158];
          *(v138 + 64) = sub_1CEFD51C4();
          *(v138 + 32) = v137;
          *(v138 + 40) = v135;
          sub_1CF9E6018();
        }

        v139 = swift_getObjectType();
        v140 = v288;
        v141 = *(v288 + 16);
        v142 = v281;
        v143 = v286;
        v141(v281, v287, v286);
        v144 = *(v140 + 56);
        v140 += 56;
        v265 = v144;
        (v144)(v142, 0, 1, v143);
        v145 = *(v293 + 16);
        v264 = v139;
        v262 = v293 + 16;
        v261 = v145;
        (v145)(v136, v289, v142, v139);
        sub_1CEFCCC44(v142, &unk_1EC4BE310, qword_1CF9FCBE0);
        v146 = sub_1CEFFEB98();
        v147 = *MEMORY[0x1E6967578];
        v148 = *(MEMORY[0x1E6967578] + 8);
        LODWORD(v279) = *(MEMORY[0x1E6967578] + 16);
        LODWORD(v278) = *(MEMORY[0x1E6967578] + 17);
        LODWORD(v276) = *(MEMORY[0x1E6967578] + 18);
        v149 = swift_allocObject();
        v149[2] = v147;
        v150 = *(v146 + 32);
        LODWORD(v268) = *(v146 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v151 = *(v140 + 16);
        v266 = v140;
        v152 = (*(v140 + 24) + 32) & ~*(v140 + 24);
        v153 = swift_allocObject();
        v260 = xmmword_1CF9FA450;
        *(v153 + 16) = xmmword_1CF9FA450;
        _Block_copy(v147);
        v290 = v149;

        sub_1CF9E58C8();
        v283 = v146;
        v141(v280, (v146 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL), v143);
        v154 = type metadata accessor for VFSLookupScope();
        v155 = *(v154 + 48);
        v156 = *(v154 + 52);
        v157 = swift_allocObject();
        *(v157 + 40) = 0;
        *(v157 + 48) = 1;
        *(v157 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
        *(v157 + 16) = v268;
        *(v157 + 32) = v150;
        v158 = *(v150 + 16);
        if (v158)
        {
          v158 = *(v150 + 32);
        }

        v159 = v277;
        *(v157 + 24) = v158;
        *(v157 + 40) = 0;
        *(v157 + 48) = 1;
        *(v157 + 56) = 0;
        v160 = v290;
        *(v157 + 64) = sub_1CF5634CC;
        *(v157 + 72) = v160;
        *(v157 + 80) = v148;
        *(v157 + 88) = v279;
        *(v157 + 89) = v278;
        *(v157 + 90) = v276;
        v161 = *(v153 + 16);

        v162 = v286;
        if (v161)
        {
          v141((v157 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL), (v153 + v152), v286);
        }

        else
        {
          (v265)(v281, 1, 1, v286);
          (*(v271 + 104))(v270, *MEMORY[0x1E6968F70], v272);
          sub_1CF9E5A38();
        }

        v175 = v291;

        *(v157 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v153;
        v176 = v288;
        v177 = *(v288 + 32);
        v177(v157 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v280, v162);
        *(v157 + 49) = 0;
        sub_1CF7DD394(v282, v157, 0, 0, v159);
        if ((v267)(v159, 1, v284) == 1)
        {
          (*(v176 + 8))(v287, v162);

          v178 = &unk_1EC4BEC00;
          v179 = &unk_1CF9FCB60;
LABEL_72:
          sub_1CEFCCC44(v159, v178, v179);
          goto LABEL_13;
        }

        v180 = v274;
        sub_1CF5634F4(v159, v274);
        v159 = v273;
        sub_1CF25116C(v273);
        if ((*(v176 + 48))(v159, 1, v162) == 1)
        {

          sub_1CF000690(v180, type metadata accessor for VFSItem);
          (*(v176 + 8))(v287, v162);
          v178 = &unk_1EC4BE310;
          v179 = qword_1CF9FCBE0;
          goto LABEL_72;
        }

        v177(v275, v159, v162);
        v299 = sub_1CF9E5A18();
        v300 = v191;
        v297 = 0xD000000000000012;
        v298 = 0x80000001CFA52B90;
        sub_1CEFE4E68();
        v192 = MEMORY[0x1E69E6158];
        v193 = sub_1CF9E7698();

        if ((v193 & 1) == 0)
        {
          if ((sub_1CF0012A0() & 1) == 0 || (v299 = sub_1CF9E5A18(), v300 = v216, v297 = 0x2F706D742FLL, v298 = 0xE500000000000000, v217 = sub_1CF9E7698(), , (v217 & 1) == 0))
          {

            goto LABEL_124;
          }
        }

        v194 = *v180;
        if (*(v180 + 8))
        {
          if (*(v180 + 8) != 1)
          {
            if (v194)
            {
              v229 = MEMORY[0x1E6967280];
            }

            else
            {
              v229 = MEMORY[0x1E6967258];
            }

            v228 = *v229;
            goto LABEL_117;
          }

          v299 = 1029990758;
          v300 = 0xE400000000000000;
          v297 = v194;
        }

        else
        {
          v299 = 1029990756;
          v300 = 0xE400000000000000;
          LODWORD(v297) = v194;
        }

        v227 = sub_1CF9E7F98();
        MEMORY[0x1D3868CC0](v227);

        v228 = sub_1CF9E6888();

LABEL_117:
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v244 = sub_1CF9E6AE8();

        if (v244)
        {
          v299 = 0x656C656420646964;
          v300 = 0xEB00000000206574;
          v245 = NSFileProviderItemIdentifier.description.getter();
          MEMORY[0x1D3868CC0](v245);

          v246 = v300;
          if (v263)
          {
            v247 = v299;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v248 = swift_allocObject();
            *(v248 + 16) = v260;
            *(v248 + 56) = v192;
            *(v248 + 64) = sub_1CEFD51C4();
            *(v248 + 32) = v247;
            *(v248 + 40) = v246;
            sub_1CF9E6018();
            v175 = v291;
            v162 = v286;
            v180 = v274;
          }

          v249 = v281;
          (v265)(v281, 1, 1, v162);
          v261(v175, v228, v249, v264, v293);

          sub_1CEFCCC44(v249, &unk_1EC4BE310, qword_1CF9FCBE0);
          goto LABEL_125;
        }

LABEL_124:

LABEL_125:
        v250 = *(v288 + 8);
        v250(v275, v162);
        sub_1CF000690(v180, type metadata accessor for VFSItem);
        v250(v287, v162);
        goto LABEL_13;
      }

      sub_1CF000690(v59, type metadata accessor for VFSItem);
      sub_1CF000690(v66, type metadata accessor for LocalDomain);
      v126 = &unk_1EC4BE310;
      v127 = qword_1CF9FCBE0;
      v128 = v129;
    }

    sub_1CEFCCC44(v128, v126, v127);
    goto LABEL_50;
  }

  v295 = 0;
  v296 = 0;
  v294 = 0;
  v87 = sub_1CF9E6978();
  v88 = fsevents_docidpath_parse(v87 + 32, &v296, &v295, &v294);

  if (!v88)
  {
    v299 = 0;
    v300 = 0xE000000000000000;
    sub_1CF9E7948();

    v299 = 0xD000000000000019;
    v300 = 0x80000001CFA52BB0;
    v117 = sub_1CF9E6888();
    v118 = [v117 fp_prettyPath];

    v119 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v121 = v120;

    MEMORY[0x1D3868CC0](v119, v121);

    v74 = v299;
    v61 = v300;
    if (qword_1EDEA3408 == -1)
    {
LABEL_43:
      sub_1CF9E72A8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_1CF9FA450;
      *(v122 + 56) = MEMORY[0x1E69E6158];
      *(v122 + 64) = sub_1CEFD51C4();
      *(v122 + 32) = v74;
      *(v122 + 40) = v61;
      goto LABEL_44;
    }

LABEL_129:
    swift_once();
    goto LABEL_43;
  }

  if (HIDWORD(v296))
  {
    __break(1u);
    goto LABEL_129;
  }

  v299 = 1029990756;
  v300 = 0xE400000000000000;
  LODWORD(v297) = v296;
  v89 = sub_1CF9E7F98();
  MEMORY[0x1D3868CC0](v89);

  v90 = sub_1CF9E6888();

  v91 = v294;
  v92 = v291;
  v93 = v286;
  if (!v294)
  {
    v299 = 0x656C656420646964;
    v300 = 0xEB00000000206574;
    v171 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    MEMORY[0x1D3868CC0](v171);

    v172 = v300;
    if (*(v92 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      v173 = v299;
      v52 = v281;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v174 = swift_allocObject();
      *(v174 + 16) = xmmword_1CF9FA450;
      *(v174 + 56) = MEMORY[0x1E69E6158];
      *(v174 + 64) = sub_1CEFD51C4();
      *(v174 + 32) = v173;
      *(v174 + 40) = v172;
      sub_1CF9E6018();
    }

    else
    {
      v52 = v281;
    }

    v195 = swift_getObjectType();
    (*(v288 + 56))(v52, 1, 1, v93);
    (*(v293 + 16))(v92, v90, v52, v195);
    goto LABEL_85;
  }

  v289 = v90;
  sub_1CEFFD3DC(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, v74, type metadata accessor for LocalDomain);
  type metadata accessor for VFSFileTree(0);
  v94 = sub_1CEFFEB98();
  sub_1CF7DD394(v91, v94, 0, 0, v52);

  if ((*(v283 + 48))(v52, 1, v284) == 1)
  {

    sub_1CF000690(v74, type metadata accessor for LocalDomain);
    v95 = &unk_1EC4BEC00;
    v96 = &unk_1CF9FCB60;
LABEL_86:
    sub_1CEFCCC44(v52, v95, v96);
    goto LABEL_13;
  }

  sub_1CF5634F4(v52, v61);
  sub_1CEFFEB98();

  v181 = v269;
  sub_1CF25116C(v269);
  v182 = v288;
  v183 = v288 + 48;
  v184 = *(v288 + 48);
  if (v184(v181, 1, v93) == 1)
  {

    sub_1CF000690(v61, type metadata accessor for VFSItem);
    sub_1CF000690(v74, type metadata accessor for LocalDomain);
    sub_1CEFCCC44(v181, &unk_1EC4BE310, qword_1CF9FCBE0);
    goto LABEL_13;
  }

  v287 = v184;
  v282 = v183;
  v196 = v267;
  (*(v182 + 32))(v267, v181, v93);
  v197 = v279;
  (*(v182 + 16))(v279, v196, v93);
  v285 = type metadata accessor for LocalDomain;
  v198 = v290;
  sub_1CEFFD3DC(v74, v290, type metadata accessor for LocalDomain);
  v199 = v278;
  sub_1CEFFD3DC(v61, v278, type metadata accessor for VFSItem);
  (*(v283 + 56))(v199, 0, 1, v284);
  v200 = objc_allocWithZone(type metadata accessor for LocalItem(0));
  v201 = sub_1CF001704(v197, v198, v199);
  v202 = *(v288 + 8);
  v202(v196, v93);
  sub_1CF000690(v61, type metadata accessor for VFSItem);
  v203 = v201;
  sub_1CF000690(v74, v285);
  if (!v201)
  {
LABEL_103:

    goto LABEL_13;
  }

  v204 = v202;
  v205 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  swift_beginAccess();
  v206 = v266;
  sub_1CF33F8C8(&v201[v205], v266);
  if ((v287)(v206, 1, v93) == 1)
  {
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v207 = sub_1CF7E208C(v291[6]);
  v208 = v206;
  v209 = v204;
  v204(v208, v93);
  v290 = v203;
  if (!v207)
  {
    v297 = 0;
    v298 = 0xE000000000000000;
    sub_1CF9E7948();

    v297 = 0xD000000000000014;
    v298 = 0x80000001CFA52BD0;
    v218 = v265;
    sub_1CF33F8C8(&v203[v205], v265);
    if ((v287)(v218, 1, v93) != 1)
    {
      v219 = sub_1CF9E5A18();
      v221 = v220;
      v209(v218, v93);
      MEMORY[0x1D3868CC0](v219, v221);

      v222 = 0xD000000000000016;
      v223 = 0x80000001CFA52BF0;
LABEL_98:
      MEMORY[0x1D3868CC0](v222, v223);
      v224 = v298;
      if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
      {
        v225 = v297;
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        sub_1CF9E7298();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v226 = swift_allocObject();
        *(v226 + 16) = xmmword_1CF9FA450;
        *(v226 + 56) = MEMORY[0x1E69E6158];
        *(v226 + 64) = sub_1CEFD51C4();
        *(v226 + 32) = v225;
        *(v226 + 40) = v224;
        sub_1CF9E6018();
      }

      goto LABEL_103;
    }

    goto LABEL_131;
  }

  v210 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier;
  v211 = *&v203[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier];
  v212 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v214 = v213;
  if (v212 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v214 == v215)
  {

LABEL_109:
    v297 = 0x6E61686320646964;
    v298 = 0xEB00000000206567;
    v231 = [v290 description];
    v232 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v234 = v233;

    MEMORY[0x1D3868CC0](v232, v234);

    v235 = v298;
    v236 = v291;
    if (*(v291 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      v237 = v297;
      v238 = v286;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v239 = swift_allocObject();
      *(v239 + 16) = xmmword_1CF9FA450;
      *(v239 + 56) = MEMORY[0x1E69E6158];
      *(v239 + 64) = sub_1CEFD51C4();
      *(v239 + 32) = v237;
      *(v239 + 40) = v235;
      sub_1CF9E6018();
    }

    else
    {
      v238 = v286;
    }

    v240 = swift_getObjectType();
    v241 = v281;
    (*(v288 + 56))(v281, 1, 1, v238);
    v242 = v236;
    v52 = v241;
    v243 = v290;
    (*(v293 + 8))(v242, v290, v263, v241, v240);

    v90 = v289;
LABEL_85:

    v95 = &unk_1EC4BE310;
    v96 = qword_1CF9FCBE0;
    goto LABEL_86;
  }

  v230 = sub_1CF9E8048();

  if (v230)
  {
    goto LABEL_109;
  }

  v297 = 0;
  v298 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA52BD0);
  v251 = v290;
  v252 = v264;
  sub_1CF33F8C8(v290 + v205, v264);
  v253 = v286;
  if ((v287)(v252, 1, v286) != 1)
  {
    v254 = sub_1CF9E5A18();
    v256 = v255;
    v209(v252, v253);
    MEMORY[0x1D3868CC0](v254, v256);

    MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA52C10);
    v257 = *&v251[v210];
    v258 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v258);

    MEMORY[0x1D3868CC0](544437792, 0xE400000000000000);
    v259 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v259);

    v222 = 41;
    v223 = 0xE100000000000000;
    goto LABEL_98;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_1CF029E18()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1CF029E50(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp) = v4;
    sub_1CF029E70(a1);
  }
}

void sub_1CF029E70(void *a1)
{
  v2 = v1;
  v4 = sub_1CF9E7318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E6448();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CF9E7388();
  v86 = *(v12 - 8);
  v87 = v12;
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalDomain();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v90 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FSChangeToken();
  v19 = *(*(v18 - 1) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1CF9E64A8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = sub_1CF9E64D8();
  v29 = *(v22 + 8);
  v28 = v22 + 8;
  v29(v25, v21);
  if (v26)
  {
    v83 = v11;
    v84 = v7;
    v85 = v4;
    sub_1CF02A97C();
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1CF9E7948();

    v93 = 0x646579616C706572;
    v94 = 0xE900000000000020;
    v7 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges;
    v30 = *(v2 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfChanges);
    v91 = v2;
    v92 = v30;
    v31 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v31);

    MEMORY[0x1D3868CC0](0x746E657665736620, 0xEF206D6F72662073);
    v32 = sub_1CF02736C();
    MEMORY[0x1D3868CC0](v32);

    v11 = v93;
    v28 = v94;
    if (qword_1EDEA3408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v33 = swift_allocObject();
  v82 = xmmword_1CF9FA450;
  *(v33 + 16) = xmmword_1CF9FA450;
  *(v33 + 56) = MEMORY[0x1E69E6158];
  v34 = sub_1CEFD51C4();
  *(v33 + 64) = v34;
  *(v33 + 32) = v11;
  *(v33 + 40) = v28;
  sub_1CF9E6018();

  if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode))
  {
    v35 = v91;
    v36 = v91 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
    *(v36 + v18[7]) = 0;
    *(v36 + v18[6]) = a1[5];
    v37 = *(v35 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_numberOfReaderCaughtUp);
    if (v37 == 2)
    {
      v93 = 0;
      v94 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA526C0);
      v92 = *(v36 + v18[5]);
      v38 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v38);

      MEMORY[0x1D3868CC0](0x65736142636F6420, 0xEA00000000003A64);
      v92 = *(v36 + v18[6]);
      v39 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v39);

      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v40 = v93;
      v41 = v94;
      sub_1CF9E7298();
      v42 = swift_allocObject();
      *(v42 + 16) = v82;
      *(v42 + 56) = MEMORY[0x1E69E6158];
      *(v42 + 64) = v34;
      *(v42 + 32) = v40;
      *(v42 + 40) = v41;
      sub_1CF9E6018();
    }

    v43 = *(v35 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
    v44 = v89;
    sub_1CF00BE78(v36, v89, type metadata accessor for FSChangeToken);
    v45 = sub_1CF018EB8();
    v47 = v46;
    v48 = sub_1CF9E5B48();
    sub_1CEFE4714(v45, v47);
    sub_1CF00F364(v44, type metadata accessor for FSChangeToken);
    [v43 finishEnumeratingChangesUpToSyncAnchor:v48 moreComing:v37 != 2];

    return;
  }

  v49 = v91;
  v50 = v91 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_currentToken;
  *(v50 + v18[5]) = a1[5];
  v51 = *(v50 + v18[8]);
  v52 = *&v7[v49];
  v53 = v52 - v51;
  if (v52 >= v51)
  {
    v54 = *(v49 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observer);
    if ([v54 respondsToSelector_])
    {
      v55 = [v54 suggestedBatchSize];
      if ((v55 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      if (v53 < v55 >> 1)
      {
        goto LABEL_11;
      }

LABEL_17:
      *(v50 + v18[7]) = 1;
      v77 = v89;
      sub_1CF00BE78(v50, v89, type metadata accessor for FSChangeToken);
      v78 = sub_1CF018EB8();
      v80 = v79;
      v81 = sub_1CF9E5B48();
      sub_1CEFE4714(v78, v80);
      sub_1CF00F364(v77, type metadata accessor for FSChangeToken);
      [v54 finishEnumeratingChangesUpToSyncAnchor:v81 moreComing:0];

      return;
    }

    if (v53 >= 0x64)
    {
      goto LABEL_17;
    }
  }

LABEL_11:
  *&v7[v49] = 0;
  v56 = a1[6];
  v57 = *(v50 + v18[6]);
  sub_1CF00BE78(v49 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_domain, v90, type metadata accessor for LocalDomain);
  v93 = 0;
  v94 = 0xE000000000000000;

  sub_1CF9E7948();

  v93 = 0xD000000000000014;
  v94 = 0x80000001CFA51100;
  v58 = *(v49 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_observedID);
  v59 = NSFileProviderItemIdentifier.description.getter();
  MEMORY[0x1D3868CC0](v59);

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v60 = v93;
  v61 = v94;
  v62 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v63 = sub_1CF9E6888();
  v64 = [v62 initWithSuiteName_];

  v89 = v57;
  *&v82 = v56;
  if (v64 && (v65 = sub_1CF9E6888(), v66 = [v64 BOOLForKey_], v64, v65, v66))
  {
    v67 = 0.1;
  }

  else
  {
    v67 = 0.5;
  }

  v69 = v86;
  v68 = v87;
  v70 = type metadata accessor for FSEventReader();
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  v73[2] = 0;
  *(v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v87 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_1CF9E7948();

  v93 = 0xD00000000000001ELL;
  v94 = 0x80000001CFA51120;
  MEMORY[0x1D3868CC0](v60, v61);
  v86 = v60;
  (*(v69 + 104))(v88, *MEMORY[0x1E69E8098], v68);
  sub_1CF9E63F8();
  v93 = MEMORY[0x1E69E7CC0];
  sub_1CF01C474(&qword_1EDEAED80, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF00FED0(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CF9E77B8();
  v73[3] = sub_1CF9E73B8();
  v73[6] = v82;
  sub_1CEFFC4F4(v90, v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  v74 = v89;
  v73[4] = v89;
  v73[5] = v74;
  *(v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_mode) = 1;
  *(v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_latency) = v67;
  *(v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) = 1;
  v75 = (v73 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription);
  *v75 = v86;
  v75[1] = v61;
  v76 = *(v91 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader);
  *(v91 + OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader) = v73;

  sub_1CF01BA64();
}

uint64_t sub_1CF02A97C()
{
  v1 = v0;
  objc_sync_enter(v0);
  v2 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
  if (*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7448();
    swift_unknownObjectRelease();
    if (*&v0[v2])
    {
      v3 = *&v0[v2];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1CF9E7418();
      swift_unknownObjectRelease();
      v4 = *&v0[v2];
    }
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader;
  v6 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_reader];

  sub_1CF02AA74();

  *(*&v1[v5] + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();

  return objc_sync_exit(v1);
}

uint64_t sub_1CF02AB00(uint64_t a1)
{
  v2 = sub_1CF9E63A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E6448();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  if (v13)
  {
    aBlock = 0x676E6970706F7473;
    v25 = 0xE900000000000020;
    v14 = sub_1CF02736C();
    MEMORY[0x1D3868CC0](v14);

    v15 = v25;
    if (*(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
    {
      v21 = aBlock;
      v22 = v7;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v20 = qword_1EDEBB5A0;
      sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1CF9FA450;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1CEFD51C4();
      *(v16 + 32) = v21;
      *(v16 + 40) = v15;
      sub_1CF9E6018();
      v7 = v22;
    }

    FSEventStreamStop(v13);
    *(a1 + 16) = 0;
    *(a1 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    v17 = *(a1 + 24);
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    v28 = sub_1CF02AF00;
    v29 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1CEFCA444;
    v27 = &block_descriptor_14;
    v19 = _Block_copy(&aBlock);

    sub_1CF9E63F8();
    v23 = MEMORY[0x1E69E7CC0];
    sub_1CF01C38C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF01049C();
    sub_1CF9E77B8();
    MEMORY[0x1D3869630](0, v12, v6, v19);
    _Block_release(v19);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_1CF02AEB8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1CF02AF08(__FSEventStream *a1, uint64_t a2)
{
  FSEventStreamInvalidate(a1);
  FSEventStreamRelease(a1);

  v4 = sub_1CF02736C();
  MEMORY[0x1D3868CC0](v4);

  if (*(a2 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_verbose) == 1)
  {
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1CF9FA450;
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1CEFD51C4();
    *(v5 + 32) = 0x20646570706F7473;
    *(v5 + 40) = 0xE800000000000000;
    sub_1CF9E6018();
  }
}

uint64_t sub_1CF02B08C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v19 = a1;
  v20 = &v10;
  result = sub_1CEFE1894(sub_1CF02B148);
  if (!v2)
  {
    v5 = v17;
    a2[6] = v16;
    a2[7] = v5;
    a2[8] = v18;
    v6 = v13;
    a2[2] = v12;
    a2[3] = v6;
    v7 = v15;
    a2[4] = v14;
    a2[5] = v7;
    v8 = v11;
    *a2 = v10;
    a2[1] = v8;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF02B148@<X0>(_DWORD *a1@<X8>)
{
  result = lstat(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1CF02B218(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = [*(v2 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_observer) finishEnumeratingChangesUpToSyncAnchor:a1 moreComing:a2 & 1];
    v8 = *(*(v2 + OBJC_IVAR____TtC18FileProviderDaemon27LocalChangesObserverContext_localFileEnumerator) + OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_enumeratorsQueue);
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1278, qword_1CFA08838);
    sub_1CF9E7398();

    return swift_unknownObjectWeakAssign();
  }

  return result;
}

uint64_t sub_1CF02B360@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = sub_1CF02B3DC(a1);
  return swift_endAccess();
}

uint64_t sub_1CF02B3DC(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_1CF9E7848();

    if (v7)
    {
      v8 = sub_1CF8DDE34();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for FSChangesEnumerator();
  v11 = *(v3 + 40);
  v12 = sub_1CF9E7558();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_1CF9E7568();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1CF6EF4E8();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_1CF02B564(v14);
  result = v21;
  *v10 = v22;
  return result;
}

unint64_t sub_1CF02B564(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1CF9E77D8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_1CF9E7558();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

id sub_1CF02B72C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source;
  if (*&v0[OBJC_IVAR____TtC18FileProviderDaemon19FSChangesEnumerator_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1CF9E7418();
    swift_unknownObjectRelease();
    v3 = *&v0[v2];
  }

  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1CF02B8DC(uint64_t result)
{
  if (result)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1CF02B8E8()
{
  v1 = *(v0 + 48);

  sub_1CF000690(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_domain, type metadata accessor for LocalDomain);
  v2 = *(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_ownerDescription + 8);

  sub_1CF02B994(v0 + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF02BA84(void *a1, char a2, int a3, int a4, void *a5, uint64_t a6, void (**a7)(void, void, void, void))
{
  v59 = a4;
  v60 = a3;
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  _Block_copy(a7);
  if (a2)
  {
    v54 = v21;
    v55 = v13;
    v56 = a1;
    v23 = sub_1CEFD4E9C([a1 identifier]);
    swift_beginAccess();
    v24 = *(v23 + 32);
    v25 = *(v23 + 40);
    v26 = *(v23 + 41);
    v53 = v12;
    v57 = a5;
    if (v26)
    {
      v52 = a6;
      v27 = qword_1EDEA34B0;
      v28 = v24;
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v30;
      if (v29 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v31 == v32)
      {

        sub_1CEFD0994(v24, v25, 1);
      }

      else
      {
        v34 = sub_1CF9E8048();

        sub_1CEFD0994(v24, v25, 1);
        if ((v34 & 1) == 0)
        {
LABEL_21:
          v38 = swift_allocObject();
          *(v38 + 16) = sub_1CF8F8400;
          *(v38 + 24) = v22;
          v39 = swift_allocObject();
          v41 = v56;
          v40 = v57;
          *(v39 + 16) = v56;
          *(v39 + 24) = v40;
          *(v39 + 32) = sub_1CF8F8400;
          *(v39 + 40) = v22;
          *(v39 + 48) = v59 & 1;
          *(v39 + 49) = v60 & 1;
          v42 = swift_allocObject();
          *(v42 + 16) = sub_1CF902ED0;
          *(v42 + 24) = v38;
          swift_retain_n();
          v43 = v41;
          v44 = v40;

          sub_1CEFD4024("url(for:creatingPlaceholderIfMissing:ignoreAlternateContentsURL:forBookmarkResolution:request:completionHandler:)", 113, 2, sub_1CF9032D4, v42, sub_1CF9032D0, v39);
        }
      }
    }

    else
    {
      if (v24)
      {
        v36 = 0;
      }

      else
      {
        v36 = v25 == 2;
      }

      if (!v36)
      {
        goto LABEL_21;
      }
    }

    v37 = sub_1CEFCE64C();
    if (*(v37 + 16))
    {
      v45 = v55;
      v46 = *(v55 + 16);
      v47 = v53;
      v46(v19, v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v53);

      v48 = *(v45 + 32);
      v49 = v54;
      v48(v54, v19, v47);
      sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
      v50 = v58;
      v46(v58, v49, v47);
      v51 = sub_1CF02BFF8(v50, 0);
      (a7)[2](a7, 0, v51, 0);

      (*(v55 + 8))(v54, v47);
    }

    goto LABEL_21;
  }

  a7[2](a7, 0, 0, 0);
}

id sub_1CF02BFF8(uint64_t a1, char a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1CF9E5928();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1CF9E5A58();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1CF9E57F8();

    swift_willThrow();
    v11 = sub_1CF9E5A58();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1CF02C160(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1CF02C1C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v34 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  sub_1CEFCCBDC(v2, &v34 - v12, &qword_1EC4BE710, &qword_1CF9FE5A8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 45)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 1;
    v23 = 512;
LABEL_21:
    *(a1 + 24) = v23;
    return sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
  }

  if (EnumCaseMultiPayload != 28)
  {
    if (EnumCaseMultiPayload == 14)
    {
      sub_1CEFCCBDC(v13, v11, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v15 = *(v11 + 10);
      if (v15 < 3)
      {
        sub_1CEFD0994(*v11, *(v11 + 8), *(v11 + 9));
        result = sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        *(a1 + 24) = -256;
        return result;
      }

      v28 = *(v11 + 9);
      v29 = *v11;
      v30 = *(v11 + 8);
      sub_1CF19F384(v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v31 = swift_dynamicCastMetatype();
      if (v28)
      {
        if (!v31)
        {
          *a1 = 262400;
          *(a1 + 8) = v15;
          *(a1 + 16) = v29;
          *(a1 + 25) = 1;
          return sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
        }

        sub_1CEFD0994(v29, v30, 1);
      }

      else if (!v31)
      {
        *a1 = 262400;
        *(a1 + 8) = v15;
        *(a1 + 16) = v29;
        *(a1 + 24) = v30;
        *(a1 + 25) = 0;
        return sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
      }
    }

    goto LABEL_20;
  }

  sub_1CEFCCBDC(v13, v8, &qword_1EC4BE710, &qword_1CF9FE5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
      v18 = *(v24 + 48);
      v25 = *&v8[*(v24 + 64) + 8];

      v26 = *v8;
      v27 = v8[8];
      *a1 = 0x2000;
      *(a1 + 8) = 10;
      *(a1 + 16) = v26;
      *(a1 + 24) = v27;
      v21 = &qword_1EC4C1B40;
      v22 = &unk_1CF9FCB70;
      goto LABEL_12;
    }

    v32 = &unk_1EC4BFCC0;
    v33 = &unk_1CF9FCB50;
LABEL_18:
    sub_1CEFCCC44(v8, v32, v33);
LABEL_20:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v23 = -256;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v32 = &unk_1EC4BFD70;
    v33 = &qword_1CFA12AC0;
    goto LABEL_18;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
  v18 = *(v17 + 48);
  v19 = *&v8[*(v17 + 64) + 8];

  v20 = *v8;
  *a1 = 0x2000;
  *(a1 + 8) = 10;
  *(a1 + 16) = v20;
  *(a1 + 25) = 1;
  v21 = &unk_1EC4BFBB0;
  v22 = &qword_1CF9FCB90;
LABEL_12:
  sub_1CEFCCC44(&v8[v18], v21, v22);
  return sub_1CEFCCC44(v13, &qword_1EC4BE710, &qword_1CF9FE5A8);
}

uint64_t type metadata accessor for SyncState()
{
  result = qword_1EDEAB808;
  if (!qword_1EDEAB808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t errorInjectionPointEnabled(uint64_t a1, uint64_t a2)
{
  result = os_variant_has_internal_content();
  if (result)
  {
    if (a1 < 0)
    {
      errorInjectionPointEnabled_cold_4();
    }

    if (a1)
    {
      errorInjectionPointEnabled_cold_1();
    }

    if (a2 < 0)
    {
      errorInjectionPointEnabled_cold_3();
    }

    v5 = atomic_load(&errorInjectionPoints);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"error-injection.%@", @"base"];
      v8 = [v6 integerForKey:v7];

      v9 = v5;
      atomic_compare_exchange_strong(&errorInjectionPoints, &v9, v8 | 0x8000000000000000);
      if (v9 == v5)
      {
        v5 = v8 | 0x8000000000000000;
      }

      else
      {
        v5 = v9;
      }
    }

    if ((a2 & ~v5) != 0)
    {
      return 0;
    }

    else
    {
      v10 = fp_current_or_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        errorInjectionPointEnabled_cold_2(a2, v10);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1CF02C710(uint64_t a1)
{
  v2 = sub_1CF9E6378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v15 = *(v3 + 16);
  v15(v8, a1, v2);
  v16 = sub_1CF9E6108();
  v17 = sub_1CF9E7288();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v9;
    v19 = v18;
    v27 = swift_slowAlloc();
    v28 = v10;
    v31 = v27;
    *v19 = 136315138;
    v15(v30, v8, v2);
    v20 = sub_1CF9E6968();
    v22 = v21;
    (*(v3 + 8))(v8, v2);
    v23 = sub_1CEFD0DF0(v20, v22, &v31);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1CEFC7000, v16, v17, "Network path update %s", v19, 0xCu);
    v24 = v27;
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D386CDC0](v24, -1, -1);
    MEMORY[0x1D386CDC0](v19, -1, -1);

    return (*(v28 + 8))(v13, v29);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_1CF02CA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v208 = a4;
  v213 = a3;
  v214 = a2;
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v206 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v212 = &v206 - v13;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C8, &qword_1CFA058F0);
  v224 = *(v230 - 8);
  v14 = *(v224 + 64);
  MEMORY[0x1EEE9AC00](v230);
  v211 = &v206 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0510, &unk_1CFA16940);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v220 = &v206 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v206 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v223 = &v206 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v219 = &v206 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v206 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v210 = &v206 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v232 = &v206 - v33;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v34 = *(v236 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v233 = &v206 - v36;
  v234 = type metadata accessor for SyncState();
  v209 = *(v234 - 8);
  v37 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v240 = &v206 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v239 = &v206 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v238 = &v206 - v42;
  if (!*(v5 + 88))
  {
    *(v5 + 88) = os_transaction_create();
  }

  v43 = *(a1 + 16);
  v237 = v5;
  if (!v43)
  {
    v215 = 0;
    v217 = 0;
    v216 = 0;
    v45 = v238;
LABEL_103:
    v182 = *(v214 + 16);
    if (v182)
    {
      v88 = v214 + ((*(v209 + 80) + 32) & ~*(v209 + 80));
      v183 = *(v209 + 72);
      while (1)
      {
        sub_1CEFE505C(v88, v45, type metadata accessor for SyncState);
        LODWORD(v87) = v239;
        sub_1CEFE505C(v45, v239, type metadata accessor for SyncState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 3)
        {
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              sub_1CF007CB8(v239, type metadata accessor for SyncState);
              v186 = 2;
            }

            else
            {
              v186 = 3;
            }
          }

          else if (EnumCaseMultiPayload)
          {
            v186 = 1;
          }

          else
          {
            sub_1CF007CB8(v239, type metadata accessor for SyncState);
            v186 = 0;
          }
        }

        else if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            sub_1CF007CB8(v239, type metadata accessor for SyncState);
            v186 = 4;
          }

          else
          {
            sub_1CF007CB8(v239, type metadata accessor for SyncState);
            v186 = 5;
          }
        }

        else
        {
          v185 = EnumCaseMultiPayload == 7 ? 7 : 8;
          v186 = EnumCaseMultiPayload == 6 ? 6 : v185;
        }

        sub_1CEFE505C(v45, v240, type metadata accessor for SyncState);
        v187 = *(v5 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v189 = v5;
        v5 = isUniquelyReferenced_nonNull_native;
        v241 = *(v189 + 24);
        v46 = v241;
        v190 = sub_1CF7BF4F4(v186);
        v192 = v46[2];
        v193 = (v191 & 1) == 0;
        v107 = __OFADD__(v192, v193);
        v194 = v192 + v193;
        if (v107)
        {
          break;
        }

        v195 = v191;
        if (v46[3] >= v194)
        {
          if ((v5 & 1) == 0)
          {
            v46 = &v241;
            v200 = v190;
            sub_1CF7CFBE4();
            v190 = v200;
          }
        }

        else
        {
          sub_1CF7C4B2C(v194, v5);
          v46 = v241;
          v190 = sub_1CF7BF4F4(v186);
          if ((v195 & 1) != (v196 & 1))
          {
            goto LABEL_149;
          }
        }

        v5 = v237;
        v197 = v241;
        if (v195)
        {
          sub_1CF1D5818(v240, v241[7] + v190 * v183);
          v45 = v238;
          sub_1CF007CB8(v238, type metadata accessor for SyncState);
        }

        else
        {
          v241[(v190 >> 6) + 8] |= 1 << v190;
          *(v197[6] + v190) = v186;
          sub_1CEFE4E00(v240, v197[7] + v190 * v183, type metadata accessor for SyncState);
          v45 = v238;
          sub_1CF007CB8(v238, type metadata accessor for SyncState);
          v198 = v197[2];
          v107 = __OFADD__(v198, 1);
          v199 = v198 + 1;
          if (v107)
          {
            goto LABEL_141;
          }

          v197[2] = v199;
        }

        *(v5 + 24) = v197;
        v88 += v183;
        if (!--v182)
        {
          goto LABEL_134;
        }
      }

      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
    }

    else
    {
LABEL_134:
      v201 = v213;
      if (!v213)
      {
        sub_1CEFF7124(v215);
        return sub_1CEFF7124(v217);
      }

      v88 = swift_allocObject();
      *(v88 + 16) = v201;
      *(v88 + 24) = v208;
      v46 = *(v5 + 72);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_136;
      }
    }

    v46 = sub_1CF1F6A6C(0, v46[2] + 1, 1, v46);
LABEL_136:
    v203 = v46[2];
    v202 = v46[3];
    if (v203 >= v202 >> 1)
    {
      v46 = sub_1CF1F6A6C((v202 > 1), v203 + 1, 1, v46);
    }

    v46[2] = v203 + 1;
    v204 = &v46[2 * v203];
    v204[4] = sub_1CF7969E0;
    v204[5] = v88;
    sub_1CEFF7124(v215);
    result = sub_1CEFF7124(v217);
    *(v5 + 72) = v46;
    return result;
  }

  v218 = v29;
  v222 = v21;
  v207 = v11;
  v215 = 0;
  v217 = 0;
  v216 = 0;
  v44 = a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  v231 = (v224 + 56);
  v221 = (v224 + 48);
  v225 = (v8 + 48);
  v235 = *(v34 + 72);
  v45 = v238;
  v47 = v232;
  v46 = v233;
  v228 = v7;
  while (1)
  {
    sub_1CEFCCBDC(v44, v46, &unk_1EC4BED40, &unk_1CFA00720);
    v48 = swift_getEnumCaseMultiPayload();
    if (v48 > 3)
    {
      if (v48 > 5)
      {
        if (v48 == 6)
        {
          *(v5 + 64) = 1;
        }

        else if (v48 == 7)
        {
          *(v5 + 65) = 1;
        }

        else
        {
          *(v5 + 66) = 1;
        }

        goto LABEL_6;
      }

      if (v48 == 4)
      {
        v71 = *v46;
        v72 = *(v5 + 80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_1CF1F6AB4(0, *(v72 + 2) + 1, 1, v72);
        }

        v74 = *(v72 + 2);
        v73 = *(v72 + 3);
        if (v74 >= v73 >> 1)
        {
          v72 = sub_1CF1F6AB4((v73 > 1), v74 + 1, 1, v72);
        }

        *(v72 + 2) = v74 + 1;
        *&v72[8 * v74 + 32] = v71;
        *(v5 + 80) = v72;
        goto LABEL_90;
      }

      LODWORD(v87) = *(v46 + 9);
      v88 = *v46;
      v99 = *(v46 + 8);
      v100 = *(v5 + 8);
      v101 = swift_isUniquelyReferenced_nonNull_native();
      v102 = v5;
      v5 = v101;
      v241 = *(v102 + 8);
      v46 = v241;
      v103 = sub_1CF7BF2C0(v88, v99);
      v105 = v46[2];
      v106 = (v104 & 1) == 0;
      v107 = __OFADD__(v105, v106);
      v108 = v105 + v106;
      if (v107)
      {
        goto LABEL_142;
      }

      v109 = v104;
      if (v46[3] >= v108)
      {
        v46 = v233;
        if ((v5 & 1) == 0)
        {
          v180 = v103;
          sub_1CF7D23B4();
          v46 = v233;
          v103 = v180;
        }

        v5 = v237;
        v111 = v241;
        if ((v109 & 1) == 0)
        {
LABEL_50:
          v111[(v103 >> 6) + 8] |= 1 << v103;
          v112 = v111[6] + 16 * v103;
          *v112 = v88;
          *(v112 + 8) = v99;
          *(v111[7] + v103) = v87;
          v113 = v111[2];
          v107 = __OFADD__(v113, 1);
          v114 = v113 + 1;
          if (v107)
          {
            goto LABEL_145;
          }

          v111[2] = v114;
          goto LABEL_67;
        }
      }

      else
      {
        sub_1CF7CA248(v108, v5);
        v103 = sub_1CF7BF2C0(v88, v99);
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_150;
        }

        v5 = v237;
        v46 = v233;
        v111 = v241;
        if ((v109 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      *(v111[7] + v103) = v87;
LABEL_67:
      *(v5 + 8) = v111;
LABEL_68:
      v45 = v238;
      v47 = v232;
      goto LABEL_6;
    }

    if (v48 > 1)
    {
      if (v48 == 2)
      {
        v64 = *v46;
        v65 = v46 + 1;
        v66 = *(v46 + 16);
        v67 = *(v5 + 32);
        if (v67 != 2)
        {
          v65 = (v5 + 40);
        }

        v68 = *v65;
        if (v67 != 2)
        {
          v66 = *(v5 + 48);
          v64 = v67;
        }

        *(v5 + 32) = v64 & 1;
        *(v5 + 40) = v68;
        *(v5 + 48) = v66 & 1;
        v69 = *(v5 + 65);
        if (v69 == 1)
        {
          LOBYTE(v69) = 2;
        }

        *(v5 + 65) = v69;
        v70 = *(v5 + 64);
        if (v70 == 1)
        {
          LOBYTE(v70) = 2;
        }

        *(v5 + 64) = v70;
        goto LABEL_6;
      }

      v86 = v7;
      v87 = v46[2];
      LODWORD(v229) = *(v46 + 24);
      v88 = *v46;
      v89 = *(v46 + 8);
      v90 = *(v5 + 56);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v241 = *(v5 + 56);
      v46 = v241;
      v5 = sub_1CF7BF2C0(v88, v89);
      v93 = v46[2];
      v94 = (v92 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_143;
      }

      v96 = v92;
      if (v46[3] >= v95)
      {
        v46 = v233;
        if ((v91 & 1) == 0)
        {
          sub_1CF7D2514();
          v46 = v233;
        }

        v7 = v86;
      }

      else
      {
        sub_1CF7CA528(v95, v91);
        v97 = sub_1CF7BF2C0(v88, v89);
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_150;
        }

        v5 = v97;
        v7 = v86;
        v46 = v233;
      }

      v115 = v241;
      if (v96)
      {
        v116 = v241[7] + 16 * v5;
        *v116 = v87;
        *(v116 + 8) = v229;
      }

      else
      {
        v241[(v5 >> 6) + 8] |= 1 << v5;
        v117 = v115[6] + 16 * v5;
        *v117 = v88;
        *(v117 + 8) = v89;
        v118 = v115[7] + 16 * v5;
        *v118 = v87;
        *(v118 + 8) = v229;
        v119 = v115[2];
        v107 = __OFADD__(v119, 1);
        v120 = v119 + 1;
        if (v107)
        {
          goto LABEL_144;
        }

        v115[2] = v120;
      }

      v5 = v237;
      v237[7] = v115;
      goto LABEL_68;
    }

    if (v48)
    {
      v75 = *v46;
      v76 = v46;
      v77 = *(v5 + 16);
      v78 = sub_1CF7BF2C0(v75, *(v76 + 8));
      if (v79)
      {
        v80 = v78;
        v81 = *(v5 + 16);
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v83 = *(v5 + 16);
        v241 = v83;
        if (!v82)
        {
          sub_1CF7D2684();
          v83 = v241;
        }

        v84 = v222;
        sub_1CEFE55D0(*(v83 + 56) + *(v224 + 72) * v80, v222, &qword_1EC4BE1C8, &qword_1CFA058F0);
        sub_1CF1D02FC(v80, v83);
        v85 = 0;
        *(v5 + 16) = v83;
      }

      else
      {
        v85 = 1;
        v84 = v222;
      }

      (*v231)(v84, v85, 1, v230);
      sub_1CEFCCC44(v84, &unk_1EC4C0510, &unk_1CFA16940);
      goto LABEL_54;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4790, &qword_1CFA00820);
    v50 = *(v49 + 48);
    v229 = *(v46 + *(v49 + 64));
    v51 = *v46;
    v52 = *(v46 + 8);
    sub_1CEFE55D0(v46 + v50, v47, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v53 = *(v5 + 65);
    if (v53 == 1)
    {
      LOBYTE(v53) = 2;
    }

    *(v5 + 65) = v53;
    v54 = *(v5 + 64);
    if (v54 == 1)
    {
      LOBYTE(v54) = 2;
    }

    *(v5 + 64) = v54;
    v55 = *(v5 + 16);
    v56 = *(v55 + 16);
    v227 = v52;
    if (v56)
    {
      v57 = sub_1CF7BF2C0(v51, v52);
      v58 = v225;
      v59 = v230;
      if (v60)
      {
        v61 = *(v55 + 56);
        v62 = v223;
        sub_1CEFCCBDC(v61 + *(v224 + 72) * v57, v223, &qword_1EC4BE1C8, &qword_1CFA058F0);
        v63 = 0;
      }

      else
      {
        v63 = 1;
        v62 = v223;
      }
    }

    else
    {
      v63 = 1;
      v62 = v223;
      v58 = v225;
      v59 = v230;
    }

    v226 = v51;
    v121 = *v231;
    (*v231)(v62, v63, 1, v59);
    if ((*v221)(v62, 1, v59))
    {
      break;
    }

    v122 = v62;
    v123 = v62;
    v124 = v211;
    sub_1CEFCCBDC(v122, v211, &qword_1EC4BE1C8, &qword_1CFA058F0);
    sub_1CEFCCC44(v123, &unk_1EC4C0510, &unk_1CFA16940);
    v125 = v210;
    sub_1CEFCCBDC(v124 + *(v59 + 36), v210, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCC44(v124, &qword_1EC4BE1C8, &qword_1CFA058F0);
    LODWORD(v124) = (*v58)(v125, 1, v228);
    v59 = v230;
    sub_1CEFCCC44(v125, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v124 != 1)
    {
      goto LABEL_78;
    }

    v126 = *(v5 + 56);
    v127 = sub_1CF7BF2C0(v226, v227);
    if (v128)
    {
      v129 = v127;
      v130 = *(v5 + 56);
      v131 = swift_isUniquelyReferenced_nonNull_native();
      v132 = *(v5 + 56);
      v241 = v132;
      v45 = v238;
      v47 = v232;
      v7 = v228;
      if (!v131)
      {
        sub_1CF7D2514();
        v132 = v241;
      }

      sub_1CF1D0104(v129, v132);

      sub_1CEFCCC44(v47, &unk_1EC4BEC00, &unk_1CF9FCB60);
      *(v5 + 56) = v132;
      goto LABEL_54;
    }

    v47 = v232;
    sub_1CEFCCC44(v232, &unk_1EC4BEC00, &unk_1CF9FCB60);

LABEL_101:
    v45 = v238;
    v7 = v228;
LABEL_54:
    v46 = v233;
LABEL_6:
    v44 += v235;
    if (!--v43)
    {
      goto LABEL_103;
    }
  }

  sub_1CEFCCC44(v62, &unk_1EC4C0510, &unk_1CFA16940);
LABEL_78:
  v133 = v220;
  v134 = v58;
  v47 = v232;
  v135 = v59;
  sub_1CEFCCBDC(v232, &v220[*(v59 + 36)], &unk_1EC4BEC00, &unk_1CF9FCB60);
  v136 = v121;
  v137 = v226;
  *v133 = v226;
  v138 = v227;
  *(v133 + 8) = v227;
  *(v133 + *(v135 + 40)) = v229;
  v136(v133, 0, 1, v135);

  sub_1CF1C959C(v133, v137, v138);
  v139 = v218;
  sub_1CEFCCBDC(v47, v218, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v87 = *v134;
  v140 = v228;
  if ((*v134)(v139, 1, v228) == 1)
  {
    sub_1CEFCCC44(v47, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFCCC44(v139, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v45 = v238;
    v7 = v140;
    goto LABEL_90;
  }

  v141 = v139;
  v142 = v212;
  sub_1CEFE4E00(v141, v212, type metadata accessor for VFSItem);
  v143 = *(v142 + *(v140 + 36));
  sub_1CF007CB8(v142, type metadata accessor for VFSItem);
  v144 = v219;
  sub_1CEFCCBDC(v47, v219, &unk_1EC4BEC00, &unk_1CF9FCB60);
  if (v87(v144, 1, v140) == 1)
  {
    sub_1CEFCCC44(v47, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFCCC44(v144, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v45 = v238;
    v7 = v228;
    goto LABEL_90;
  }

  if (*(v144 + 8))
  {
    LODWORD(v87) = *(v144 + *(v228 + 40));
    type metadata accessor for fpfs_tempfile_pattern_t(0);
    if (v87 > 0xB)
    {
      goto LABEL_151;
    }

    if (((1 << v87) & 0xC8E) != 0)
    {
      sub_1CEFCCC44(v232, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v145 = v219;
      goto LABEL_89;
    }

    v144 = v219;
    if (((1 << v87) & 0x370) != 0)
    {
      sub_1CEFCCC44(v232, &unk_1EC4BEC00, &unk_1CF9FCB60);

      v145 = v144;
LABEL_89:
      v146 = v207;
      sub_1CEFE505C(v145, v207, type metadata accessor for VFSItem);
      v147 = type metadata accessor for VFSTrackingContinuation(0);
      v148 = *(v147 + 48);
      v149 = *(v147 + 52);
      v150 = swift_allocObject();
      v7 = v228;
      v151 = v146 + *(v228 + 28);
      v152 = *(type metadata accessor for ItemMetadata() + 32);
      v153 = OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate;
      v154 = sub_1CF9E5CF8();
      v155 = *(v154 - 8);
      (*(v155 + 16))(v150 + v153, v151 + v152, v154);
      v156 = v146;
      v47 = v232;
      sub_1CF007CB8(v156, type metadata accessor for VFSItem);
      swift_setDeallocating();
      (*(v155 + 8))(v150 + OBJC_IVAR____TtC18FileProviderDaemon23VFSTrackingContinuation_contentModificationDate, v154);
      v5 = v237;
      v157 = *(*v150 + 48);
      v158 = *(*v150 + 52);
      swift_deallocClassInstance();
      sub_1CF007CB8(v219, type metadata accessor for VFSItem);
      v45 = v238;
LABEL_90:
      v46 = v233;
      goto LABEL_6;
    }
  }

  sub_1CF007CB8(v144, type metadata accessor for VFSItem);
  sub_1CEFF7124(v215);
  v159 = swift_allocObject();
  *(v159 + 16) = sub_1CF75D960;
  *(v159 + 24) = 0;
  sub_1CEFF7124(v217);
  v160 = *v5;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v162 = v5;
  v163 = v161;
  v241 = *v162;
  v164 = v241;
  v165 = v143;
  v167 = sub_1CF7BF380(v143);
  v168 = v164[2];
  v169 = (v166 & 1) == 0;
  v170 = v168 + v169;
  if (!__OFADD__(v168, v169))
  {
    LODWORD(v87) = v229;
    if (v164[3] >= v170)
    {
      if ((v163 & 1) == 0)
      {
        v181 = v166;
        sub_1CF7D2258();
        v166 = v181;
        v164 = v241;
      }
    }

    else
    {
      v171 = v166;
      sub_1CF7C9FD8(v170, v163);
      v164 = v241;
      v172 = sub_1CF7BF380(v165);
      v174 = v173 & 1;
      v166 = v171;
      if ((v171 & 1) != v174)
      {
        goto LABEL_152;
      }

      v167 = v172;
    }

    v5 = v237;
    *v237 = v164;
    if ((v166 & 1) == 0)
    {
      v175 = *(v159 + 24);
      v176 = (*(v159 + 16))();
      v164[(v167 >> 6) + 8] |= 1 << v167;
      *(v164[6] + 8 * v167) = v165;
      *(v164[7] + 8 * v167) = v176;
      v177 = v164[2];
      v107 = __OFADD__(v177, 1);
      v178 = v177 + 1;
      if (v107)
      {
        goto LABEL_148;
      }

      v164[2] = v178;
    }

    v179 = v164[7] + 8 * v167;
    sub_1CF6E9500(&v241, v226, v227);

    v47 = v232;
    sub_1CEFCCC44(v232, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v217 = sub_1CF796548;
    v215 = sub_1CF75D960;
    v216 = v159;
    goto LABEL_101;
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  sub_1CF9E8108();
  __break(1u);
LABEL_150:
  sub_1CF9E8108();
  __break(1u);
LABEL_151:
  LODWORD(v241) = v87;
  sub_1CF9E80C8();
  __break(1u);
LABEL_152:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF02E094()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CF7FC814("init(reconciliationTable:jobRegistry:snapshotA:snapshotB:syncState:telemetry:options:)", 0x56uLL, 2, sub_1CF482D9C, result);
  }

  return result;
}

void sub_1CF02E220(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v159 = a4;
  v156 = a2;
  v162 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED40, &unk_1CFA00720);
  v169 = *(v5 - 8);
  v6 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v164 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v139 - v9;
  v11 = sub_1CF9E63D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v155 = &v139 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v139 - v20;
  v153 = sub_1CF9E6068();
  v152 = *(v153 - 8);
  v21 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v158 = &v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v139 - v27;
  v147 = type metadata accessor for Signpost(0);
  v149 = *(v147 - 8);
  v28 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v154 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v151 = &v139 - v31;
  v150 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v139 - v34;
  v171 = sub_1CF9E6118();
  v166 = *(v171 - 8);
  v36 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v165 = &v139 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v146 = &v139 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v139 - v41;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    v144 = a3;
    v45 = *(Strong + 80);
    v160 = Strong;
    v145 = v35;
    v143 = v11;
    v142 = v12;
    v141 = v15;
    if ((v45 & 0x40) != 0)
    {
      v46 = [objc_allocWithZone(FPLoggerScope) init];
      v47 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      v48 = v46;
      v49 = sub_1CF9E6108();
      v50 = sub_1CF9E7298();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = [v48 enter];
        *(v51 + 4) = v53;
        *v52 = v53;
        _os_log_impl(&dword_1CEFC7000, v49, v50, "%@ 👁  aggregate incoming FS tree changes", v51, 0xCu);
        sub_1CEFCCC44(v52, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v52, -1, -1);
        MEMORY[0x1D386CDC0](v51, -1, -1);
      }

      v140 = v48;

      v54 = v166 + 8;
      v170 = *(v166 + 8);
      v170(v42, v171);
      v56 = *(v162 + 16);
      v57 = v165;
      if (v56)
      {
        v58 = v162 + ((*(v169 + 80) + 32) & ~*(v169 + 80));
        v169 = *(v169 + 72);
        *&v55 = 136315138;
        v163 = v55;
        v166 = v54;
        do
        {
          v70 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          sub_1CEFCCBDC(v58, v10, &unk_1EC4BED40, &unk_1CFA00720);
          v71 = sub_1CF9E6108();
          v72 = sub_1CF9E7298();
          if (os_log_type_enabled(v71, v72))
          {
            v59 = swift_slowAlloc();
            v167 = v59;
            v168 = swift_slowAlloc();
            *&aBlock = v168;
            *v59 = v163;
            v60 = v164;
            sub_1CEFCCBDC(v10, v164, &unk_1EC4BED40, &unk_1CFA00720);
            sub_1CEFCCC44(v10, &unk_1EC4BED40, &unk_1CFA00720);
            v61 = v10;
            v62 = sub_1CF042768();
            v64 = v63;
            sub_1CEFCCC44(v60, &unk_1EC4BED40, &unk_1CFA00720);
            v65 = v62;
            v10 = v61;
            v57 = v165;
            v66 = sub_1CEFD0DF0(v65, v64, &aBlock);

            v67 = v167;
            *(v167 + 1) = v66;
            v68 = v67;
            _os_log_impl(&dword_1CEFC7000, v71, v72, "%s", v67, 0xCu);
            v69 = v168;
            __swift_destroy_boxed_opaque_existential_1(v168);
            MEMORY[0x1D386CDC0](v69, -1, -1);
            MEMORY[0x1D386CDC0](v68, -1, -1);
          }

          else
          {
            sub_1CEFCCC44(v10, &unk_1EC4BED40, &unk_1CFA00720);
          }

          v170(v57, v171);
          v58 += v169;
          --v56;
        }

        while (v56);
      }

      v74 = fpfs_current_or_default_log();
      v75 = v146;
      sub_1CF9E6128();
      v76 = v140;
      v77 = sub_1CF9E6108();
      v78 = sub_1CF9E7298();

      v79 = os_log_type_enabled(v77, v78);
      v35 = v145;
      if (v79)
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        *v80 = 138412290;
        v82 = [v76 leave];
        *(v80 + 4) = v82;
        *v81 = v82;
        _os_log_impl(&dword_1CEFC7000, v77, v78, "%@", v80, 0xCu);
        sub_1CEFCCC44(v81, &qword_1EC4BE350, &unk_1CF9FC3B0);
        MEMORY[0x1D386CDC0](v81, -1, -1);
        MEMORY[0x1D386CDC0](v80, -1, -1);
      }

      v170(v75, v171);
      v44 = v160;
    }

    v83 = (v44 + qword_1EDEBBC20);
    os_unfair_lock_lock((v44 + qword_1EDEBBC20));
    sub_1CF02CA00(v162, v156, v144, v159);
    os_unfair_lock_unlock(v83);
    if ((*(v44 + 80) & 0x40) == 0)
    {
      v84 = *(v44 + qword_1EDEBBCE8);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      MEMORY[0x1D3869790](1, ObjectType);

      swift_unknownObjectRelease();
      return;
    }

    v86 = *(v44 + qword_1EDEBBC38);

    v87 = fpfs_adopt_log();
    if (qword_1EDEAE980 != -1)
    {
      swift_once();
    }

    v88 = qword_1EDEBBE40;
    v89 = v152;
    v90 = v157;
    v91 = v153;
    (*(v152 + 56))(v157, 1, 1, v153);
    strcpy(&aBlock, "async batch ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v92 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v92);

    v93 = aBlock;
    v94 = v90;
    v95 = v158;
    sub_1CEFCCBDC(v94, v158, &unk_1EC4BED20, &unk_1CFA00700);
    v96 = *(v89 + 48);
    v97 = v96(v95, 1, v91);
    v170 = *(&v93 + 1);
    v171 = v87;
    if (v97 == 1)
    {
      v98 = v88;
      v99 = v148;
      sub_1CF9E6048();
      if (v96(v158, 1, v91) != 1)
      {
        sub_1CEFCCC44(v158, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      v99 = v148;
      (*(v89 + 32))(v148, v158, v91);
    }

    (*(v89 + 16))(v35, v99, v91);
    v100 = v147;
    *&v35[*(v147 + 20)] = v88;
    v101 = &v35[*(v100 + 24)];
    *v101 = "DB queue wait";
    *(v101 + 1) = 13;
    v101[16] = 2;
    v102 = v88;
    sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v103 = v89;
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1CF9FA450;
    *(v104 + 56) = MEMORY[0x1E69E6158];
    *(v104 + 64) = sub_1CEFD51C4();
    v105 = v170;
    *(v104 + 32) = v93;
    *(v104 + 40) = v105;
    sub_1CF9E6028();

    (*(v103 + 8))(v99, v91);
    sub_1CEFCCC44(v157, &unk_1EC4BED20, &unk_1CFA00700);
    v168 = *(v160 + 168);
    v170 = *(v160 + 64);
    v106 = sub_1CF9E6448();
    v107 = *(v106 - 8);
    v166 = v106;
    v167 = v107;
    (*(v107 + 56))(v161, 1, 1, v106);
    v108 = v151;
    sub_1CEFE505C(v35, v151, type metadata accessor for Signpost);
    v109 = (*(v149 + 80) + 16) & ~*(v149 + 80);
    v110 = (v150 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v111 = v35;
    v112 = swift_allocObject();
    sub_1CEFE4E00(v108, v112 + v109, type metadata accessor for Signpost);
    v113 = (v112 + v110);
    v169 = nullsub_1;
    *v113 = nullsub_1;
    v113[1] = 0;
    v114 = v154;
    sub_1CEFE505C(v111, v154, type metadata accessor for Signpost);
    v115 = (v110 + 23) & 0xFFFFFFFFFFFFFFF8;
    v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
    v117 = (v116 + 25) & 0xFFFFFFFFFFFFFFF8;
    v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
    v119 = swift_allocObject();
    sub_1CEFE4E00(v114, v119 + v109, type metadata accessor for Signpost);
    v120 = (v119 + v110);
    *v120 = sub_1CF045408;
    v120[1] = 0;
    v121 = v160;
    *(v119 + v115) = v160;
    v122 = v119 + v116;
    *v122 = "processPendingStreamResetOrIdle()";
    *(v122 + 8) = 33;
    *(v122 + 16) = 2;
    v123 = (v119 + v117);
    v124 = v166;
    v125 = v167;
    *v123 = v169;
    v123[1] = 0;
    v126 = (v119 + v118);
    *v126 = sub_1CF796AB4;
    v126[1] = v121;
    v127 = swift_allocObject();
    v127[2] = sub_1CF75C120;
    v127[3] = v112;
    v128 = v168;
    v127[4] = v168;
    swift_retain_n();
    v169 = v112;

    v129 = fpfs_current_log();
    v130 = v128[2];
    v131 = v155;
    sub_1CEFCCBDC(v161, v155, &unk_1EC4BE370, qword_1CFA01B30);
    if ((v125[6])(v131, 1, v124) == 1)
    {
      sub_1CEFCCC44(v131, &unk_1EC4BE370, qword_1CFA01B30);
      v132 = QOS_CLASS_UNSPECIFIED;
    }

    else
    {
      v133 = v141;
      sub_1CF9E6438();
      v125[1](v131, v124);
      v132 = sub_1CF9E63C8();
      (*(v142 + 8))(v133, v143);
    }

    v134 = swift_allocObject();
    v134[2] = v129;
    v134[3] = sub_1CF4858EC;
    v134[4] = v119;
    v175 = sub_1CF2BA17C;
    v176 = v134;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v173 = sub_1CEFCA444;
    v174 = &block_descriptor_766;
    v135 = _Block_copy(&aBlock);
    v136 = v129;

    v175 = sub_1CF2BA180;
    v176 = v127;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v173 = sub_1CEFCA444;
    v174 = &block_descriptor_769;
    v137 = _Block_copy(&aBlock);

    fp_task_tracker_async_and_qos(v130, v170, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v132, v135, v137);
    _Block_release(v137);
    _Block_release(v135);

    sub_1CEFCCC44(v161, &unk_1EC4BE370, qword_1CFA01B30);
    sub_1CF007CB8(v145, type metadata accessor for Signpost);
    v138 = v171;
    v73 = fpfs_adopt_log();
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v73 = FPDomainUnavailableError();
    a3();
  }
}

uint64_t sub_1CF02F42C(uint64_t a1, int a2)
{
  v167 = a2;
  v166 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v163 = *(v2 - 8);
  v164 = v2;
  v3 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v151 = &v150 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v160 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v158 = (&v150 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v159 = &v150 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v157 = (&v150 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v156 = &v150 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v155 = &v150 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v154 = &v150 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v161 = &v150 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v150 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v152 = (&v150 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v150 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = (&v150 - v31);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v165 = (&v150 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v162 = &v150 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = (&v150 - v38);
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = (&v150 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = (&v150 - v44);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = (&v150 - v47);
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = &v150 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v150 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v56 = &v150 - v55;
  sub_1CEFCCBDC(v168, &v150 - v55, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v57 = v152;
      sub_1CEFCCBDC(v56, v152, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v57 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF30, &unk_1CFA05600);
      v58 = swift_dynamicCastClass();
      if (!v58)
      {
        goto LABEL_28;
      }

      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v60 = swift_allocObject();
      v168 = xmmword_1CF9FA450;
      *(v60 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v61 = swift_allocObject();
      *(v61 + 16) = v168;
      v62 = *v59;
      *(v61 + 32) = sub_1CF388E8C();
      v63 = *(v59 + 144);
      v64 = *(v59 + 152);
      *(v60 + 40) = v61;
      *(v60 + 48) = v63;
      *(v60 + 56) = v64;
      *(v60 + 32) = 0x200000;

      sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v60;
    case 2u:
      sub_1CEFCCBDC(v56, v29, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v97 = *v29;
      v98 = v29[8];
      if (v29[9])
      {
        v67 = *v29;
        v68 = v29[8];
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1CF9FA450;
      *(v120 + 56) = v98;
      *(v120 + 32) = 8;
      *(v120 + 40) = &unk_1F4BEE3F0;
      *(v120 + 48) = v97;
      goto LABEL_60;
    case 3u:
      sub_1CEFCCBDC(v56, v51, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v81 = *v51;
      v82 = v51[8];
      if ((v51[9] & 1) == 0)
      {
        goto LABEL_62;
      }

      v67 = *v51;
      v68 = v51[8];
      goto LABEL_75;
    case 5u:
      sub_1CEFCCBDC(v56, v39, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v39 + 9))
      {
        sub_1CEFD0994(v39[2], *(v39 + 24), *(v39 + 25));
        v67 = *v39;
        v96 = *(v39 + 9);
        v68 = *(v39 + 8);
        goto LABEL_76;
      }

      v118 = *v39;
      v119 = *(v39 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1CF9FA450;
      *(v70 + 56) = v119;
      *(v70 + 32) = 64;
      *(v70 + 40) = &unk_1F4BEE2B0;
      *(v70 + 48) = v118;
      sub_1CEFD0994(v39[2], *(v39 + 24), *(v39 + 25));
      goto LABEL_54;
    case 6u:
      v83 = v162;
      sub_1CEFCCBDC(v56, v162, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320) + 48);
      v85 = v164;
      v86 = *(v163 + 48);
      if (v86(v83 + v84, 1, v164) == 1)
      {
        if (v86(v83, 1, v85) == 1)
        {
          sub_1CEFCCC44(v83, &qword_1EC4C1B40, &unk_1CF9FCB70);
          goto LABEL_77;
        }

        v130 = v151;
        sub_1CEFE55D0(v83, v151, &unk_1EC4BE360, &qword_1CF9FE650);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1CF9FA450;
        v131 = *v130;
        *(v79 + 56) = *(v130 + 8);
        *(v79 + 32) = 96;
        *(v79 + 40) = &unk_1F4BEE300;
        *(v79 + 48) = v131;
        v117 = v130;
        v115 = &unk_1EC4BE360;
        v116 = &qword_1CF9FE650;
      }

      else
      {
        v113 = v151;
        sub_1CEFE55D0(v83 + v84, v151, &unk_1EC4BE360, &qword_1CF9FE650);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v79 = swift_allocObject();
        *(v79 + 16) = xmmword_1CF9FA450;
        v114 = *(v113 + 16);
        *(v79 + 56) = *(v113 + 24);
        *(v79 + 32) = 8;
        *(v79 + 40) = &unk_1F4BEE2D8;
        *(v79 + 48) = v114;
        sub_1CEFCCC44(v113, &unk_1EC4BE360, &qword_1CF9FE650);
        v115 = &qword_1EC4C1B40;
        v116 = &unk_1CF9FCB70;
        v117 = v83;
      }

      sub_1CEFCCC44(v117, v115, v116);
      goto LABEL_82;
    case 0xBu:
      v48 = v165;
      sub_1CEFCCBDC(v56, v165, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(v48 + 9) & 1) == 0)
      {
        goto LABEL_34;
      }

      v91 = *(v48 + 12);
      if (v91 >> 8 > 0xFE)
      {
        sub_1CEFD0994(*v48, *(v48 + 8), 1);
        sub_1CF47FDFC(v48[2], *(v48 + 12));
        goto LABEL_77;
      }

      if ((v91 & 0x100) != 0)
      {
        v99 = v48[2];
        v100 = *(v48 + 12);
        goto LABEL_35;
      }

      v132 = *(v48 + 27);
      if (!*(v48 + 27))
      {
        v149 = v48[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1CF9FA450;
        *(v120 + 56) = v91;
        *(v120 + 32) = 64;
        *(v120 + 40) = &unk_1F4BEE328;
        *(v120 + 48) = v149;
        goto LABEL_104;
      }

      if (v132 == 2)
      {
        v148 = v48[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v134 = swift_allocObject();
        v120 = v134;
        *(v134 + 16) = xmmword_1CF9FA450;
        *(v134 + 48) = v148;
        *(v134 + 56) = v91;
        v135 = &unk_1F4BEE350;
        goto LABEL_102;
      }

      if (v132 == 4)
      {
        v133 = v48[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v134 = swift_allocObject();
        v120 = v134;
        *(v134 + 16) = xmmword_1CF9FA450;
        *(v134 + 48) = v133;
        *(v134 + 56) = v91;
        v135 = &unk_1F4BEE378;
LABEL_102:
        *(v134 + 32) = 32;
        *(v134 + 40) = v135;
LABEL_104:
        sub_1CEFD0994(*v48, *(v48 + 8), 1);
        goto LABEL_60;
      }

      v67 = *v48;
      v68 = *(v48 + 8);
LABEL_75:
      v96 = 1;
LABEL_76:
      sub_1CEFD0994(v67, v68, v96);
      goto LABEL_77;
    case 0xCu:
      sub_1CEFCCBDC(v56, v48, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*(v48 + 9) & 1) == 0)
      {
        v81 = *v48;
        v82 = *(v48 + 8);
        sub_1CF47FDFC(v48[2], *(v48 + 12));
LABEL_62:
        sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        result = swift_allocObject();
        *(result + 16) = xmmword_1CF9FA440;
        *(result + 56) = v82;
        *(result + 32) = 32;
        *(result + 40) = &unk_1F4BEE210;
        *(result + 48) = v81;
        *(result + 88) = 2;
        *(result + 64) = 128;
        *(result + 72) = &unk_1F4BEE238;
        *(result + 80) = 0;
        return result;
      }

LABEL_34:
      v99 = v48[2];
      v100 = *(v48 + 12);
LABEL_35:
      sub_1CF47FDFC(v99, v100);
      v67 = *v48;
      v96 = *(v48 + 9);
      v68 = *(v48 + 8);
      goto LABEL_76;
    case 0xEu:
      sub_1CEFCCBDC(v56, v54, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (v54[9])
      {
        v67 = *v54;
        v68 = v54[8];
        goto LABEL_75;
      }

      v121 = v54[10];
      v122 = *v54;
      v123 = v54[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v70 = swift_allocObject();
      v168 = xmmword_1CF9FA450;
      *(v70 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v111 = swift_allocObject();
      *(v111 + 16) = v168;
      *(v111 + 32) = v121;
      *(v70 + 48) = v122;
      *(v70 + 56) = v123;
      v112 = 393472;
      goto LABEL_64;
    case 0xFu:
      sub_1CEFCCBDC(v56, v45, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v45 + 9))
      {

        v67 = *v45;
        v96 = *(v45 + 9);
        v68 = *(v45 + 8);
        goto LABEL_76;
      }

      v170 = v45[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast() && v169 == 3)
      {
        v127 = *v45;
        v128 = *(v45 + 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1CF9FA450;
        *(v70 + 56) = v128;
        *(v70 + 32) = 64;
        *(v70 + 40) = &unk_1F4BEE260;
        *(v70 + 48) = v127;

        goto LABEL_54;
      }

      goto LABEL_90;
    case 0x10u:
      sub_1CEFCCBDC(v56, v42, &qword_1EC4BE710, &qword_1CF9FE5A8);

      if (*(v42 + 9))
      {
        v67 = *v42;
        v68 = *(v42 + 8);
        goto LABEL_75;
      }

      v45 = v42;
LABEL_90:
      v136 = *(v45 + 8);
      v137 = *v45;
      sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      result = swift_allocObject();
      *(result + 16) = xmmword_1CF9FA450;
      *(result + 48) = v137;
      *(result + 56) = v136;
      v138 = 96;
      v139 = &unk_1F4BEE288;
      goto LABEL_95;
    case 0x14u:
      v74 = v153;
      sub_1CEFCCBDC(v56, v153, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v75 = *v74;

      v76 = *(v74 + 17);
      v77 = *(v74 + 8);
      v78 = *(v74 + 16);
      if (v76)
      {
        goto LABEL_41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v79 = swift_allocObject();
      v168 = xmmword_1CF9FA450;
      *(v79 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v80 = swift_allocObject();
      *(v80 + 16) = v168;
      *(v80 + 32) = v75;
      *(v79 + 40) = v80;
      *(v79 + 48) = v77;
      *(v79 + 56) = v78;
      *(v79 + 32) = 2048;
      goto LABEL_82;
    case 0x16u:
      v92 = v157;
      sub_1CEFCCBDC(v56, v157, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v92 & 0x8000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
        v129 = swift_dynamicCastClass();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v93 = swift_dynamicCastClass();
        if (v93)
        {
          if (v93[112] != 3 || (v94 = &v93[*(*v93 + 664)], swift_beginAccess(), v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0), (*(*(v95 - 8) + 48))(v94, 1, v95)))
          {
LABEL_28:

            goto LABEL_77;
          }

          v146 = *v94;
          v147 = v94[8];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v120 = swift_allocObject();
          *(v120 + 16) = xmmword_1CF9FA450;
          *(v120 + 56) = v147;
          *(v120 + 32) = 32;
          *(v120 + 40) = &unk_1F4BEE4E0;
          *(v120 + 48) = v146;

LABEL_60:
          sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return v120;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
        v129 = swift_dynamicCastClass();
      }

      if (!v129)
      {
        goto LABEL_77;
      }

      sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      result = swift_allocObject();
      *(result + 16) = xmmword_1CF9FA450;
      *(result + 48) = 0;
      *(result + 56) = -1;
      v138 = 0x400000;
      v139 = &unk_1F4BEE508;
LABEL_95:
      *(result + 32) = v138;
      *(result + 40) = v139;
      return result;
    case 0x17u:
      v87 = v160;
      sub_1CEFCCBDC(v56, v160, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v87)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = 0;
      *(v69 + 56) = -1;
      v71 = 0x2000000;
      v72 = &unk_1F4BEE530;
      goto LABEL_53;
    case 0x18u:
      v73 = v155;
      sub_1CEFCCBDC(v56, v155, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v73)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = v166;
      *(v69 + 56) = v167;
      v71 = 0x20000;
      v72 = &unk_1F4BEE490;
      goto LABEL_53;
    case 0x1Cu:
      v101 = v161;
      sub_1CEFCCBDC(v56, v161, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 5)
        {
          v144 = *v101;
          v145 = *(v101 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v69 = swift_allocObject();
          v70 = v69;
          *(v69 + 16) = xmmword_1CF9FA450;
          *(v69 + 48) = v144;
          *(v69 + 56) = v145;
          v71 = 0x2000;
          v72 = &unk_1F4BEE418;
        }

        else
        {
          if (EnumCaseMultiPayload != 7)
          {
            v102 = &unk_1EC4BFCC0;
            v103 = &unk_1CF9FCB50;
            goto LABEL_98;
          }

          v125 = *v101;
          v126 = *(v101 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
          v69 = swift_allocObject();
          v70 = v69;
          *(v69 + 16) = xmmword_1CF9FA450;
          *(v69 + 48) = v125;
          *(v69 + 56) = v126;
          v71 = 0x2000;
          v72 = &unk_1F4BEE440;
        }

LABEL_53:
        *(v69 + 32) = v71;
        *(v69 + 40) = v72;
        goto LABEL_54;
      }

      v102 = &unk_1EC4BF650;
      v103 = &unk_1CF9FCB40;
LABEL_98:
      sub_1CEFCCC44(v101, v102, v103);
LABEL_77:
      sub_1CEFCCC44(v56, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return MEMORY[0x1E69E7CC0];
    case 0x1Eu:
      v104 = v154;
      sub_1CEFCCBDC(v56, v154, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v105 = *(v104 + 9);
      v77 = *v104;
      v78 = *(v104 + 8);
      if (v105)
      {
LABEL_41:
        v67 = v77;
        v68 = v78;
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1CF9FA450;
      *(v79 + 56) = v78;
      *(v79 + 32) = 0x10000;
      *(v79 + 40) = &unk_1F4BEE468;
      *(v79 + 48) = v77;
LABEL_82:
      v90 = v56;
LABEL_83:
      sub_1CEFCCC44(v90, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v79;
    case 0x20u:
      sub_1CEFCCBDC(v56, v32, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v32 + 9))
      {
        sub_1CEFD0994(v32[2], *(v32 + 24), *(v32 + 25));
        v67 = *v32;
        v96 = *(v32 + 9);
        v68 = *(v32 + 8);
        goto LABEL_76;
      }

      if (*(v32 + 25))
      {
        v67 = v32[2];
        v68 = *(v32 + 24);
        goto LABEL_75;
      }

      v140 = *v32;
      v141 = *(v32 + 8);
      v142 = v32[2];
      v143 = *(v32 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1CF9FA440;
      *(v70 + 56) = v141;
      *(v70 + 32) = 96;
      *(v70 + 40) = &unk_1F4BEE3A0;
      *(v70 + 48) = v140;
      *(v70 + 88) = v143;
      *(v70 + 64) = 8;
      *(v70 + 72) = &unk_1F4BEE3C8;
      *(v70 + 80) = v142;
      v107 = v56;
      goto LABEL_55;
    case 0x23u:
      v106 = v156;
      sub_1CEFCCBDC(v56, v156, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v67 = *v106;
      v68 = *(v106 + 8);
      if (*(v106 + 9))
      {
        goto LABEL_75;
      }

      if (v68 != 2 || v67)
      {
        goto LABEL_77;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = 0;
      *(v69 + 56) = 2;
      v71 = 0x80000;
      v72 = &unk_1F4BEE4B8;
      goto LABEL_53;
    case 0x26u:
      v66 = v159;
      sub_1CEFCCBDC(v56, v159, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v66 + 9))
      {
        v67 = *v66;
        v68 = *(v66 + 8);
        goto LABEL_75;
      }

      v108 = *(v66 + 10);
      v109 = *v66;
      v110 = *(v66 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v70 = swift_allocObject();
      v168 = xmmword_1CF9FA450;
      *(v70 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v111 = swift_allocObject();
      *(v111 + 16) = v168;
      *(v111 + 32) = v108;
      *(v70 + 48) = v109;
      *(v70 + 56) = v110;
      v112 = 0x800000;
LABEL_64:
      *(v70 + 32) = v112;
      *(v70 + 40) = v111;
LABEL_54:
      v107 = v56;
LABEL_55:
      sub_1CEFCCC44(v107, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return v70;
    case 0x27u:
      v88 = v158;
      sub_1CEFCCBDC(v56, v158, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v89 = *v88;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1CF9FA450;
      *(v79 + 40) = v89;
      *(v79 + 48) = 0;
      *(v79 + 56) = -1;
      *(v79 + 32) = 0x1000000;
      v90 = v56;
      goto LABEL_83;
    case 0x2Eu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = v166;
      *(v69 + 56) = v167;
      v71 = 128;
      v72 = &unk_1F4BEE198;
      goto LABEL_53;
    case 0x2Fu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = 0;
      *(v69 + 56) = -1;
      v71 = 0x200000;
      v72 = &unk_1F4BEE1C0;
      goto LABEL_53;
    case 0x30u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0490, &qword_1CFA05890);
      v69 = swift_allocObject();
      v70 = v69;
      *(v69 + 16) = xmmword_1CF9FA450;
      *(v69 + 48) = 0;
      *(v69 + 56) = -1;
      v71 = 2048;
      v72 = &unk_1F4BEE1E8;
      goto LABEL_53;
    default:
      goto LABEL_77;
  }
}

uint64_t sub_1CF030B88@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  v110 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v3 = *(*(v107 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v107);
  v108 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v109 = &v107 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v107 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v107 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v107 - v23;
  sub_1CEFCCBDC(v2, &v107 - v23, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 0x13u:
      v56 = *v24;
      v57 = v24[8];
      v58 = *(v24 + 2);
      v59 = v110;
      *v110 = v58;
      v59[1] = v56;
      *(v59 + 16) = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 3u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 4u:
      v37 = v24[10];
      v35 = *v24;
      v36 = v24[9];
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v24[8];
      }

      goto LABEL_122;
    case 5u:
      v70 = *v24;
      v71 = v24[9];
      v72 = *(v24 + 2);
      v73 = v24[24];
      v74 = v24[25];
      if (v71)
      {
        v75 = 0;
      }

      else
      {
        v75 = v24[8];
      }

      v102 = v110;
      *v110 = v70;
      *(v102 + 8) = v75;
      *(v102 + 9) = v71 ^ 1;
      if (v74)
      {
        v73 = 0;
      }

      goto LABEL_107;
    case 6u:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v82 = *(v81 + 48);
      v83 = *&v24[*(v81 + 64)];
      sub_1CEFE55D0(v24, v20, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(&v24[v82], v18, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v84 = *(v81 + 48);
      v85 = *(v81 + 64);
      v86 = v20;
      v87 = v110;
      sub_1CEFE55D0(v86, v110, &qword_1EC4C1B40, &unk_1CF9FCB70);
      sub_1CEFE55D0(v18, v87 + v84, &qword_1EC4C1B40, &unk_1CF9FCB70);
      *(v87 + v85) = v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v51 = *(v50 + 48);
      v52 = *&v24[*(v50 + 64)];
      sub_1CEFE55D0(v24, v13, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFE55D0(&v24[v51], v11, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v53 = *(v50 + 48);
      v54 = *(v50 + 64);
      v55 = v110;
      sub_1CEFE55D0(v13, v110, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      sub_1CEFE55D0(v11, v55 + v53, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      *(v55 + v54) = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 8u:
      sub_1CEFE55D0(v24, v110, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 9u:
      sub_1CEFE55D0(v24, v110, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0xAu:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0xBu:
      v39 = *v24;
      v40 = v24[9];
      v41 = *(v24 + 12);
      if (v40)
      {
        v42 = 0;
      }

      else
      {
        v42 = v24[8];
      }

      v97 = v110;
      v98 = v24[26];
      v99 = v24[27];
      v100 = *(v24 + 2);
      *v110 = v39;
      *(v97 + 8) = v42;
      *(v97 + 9) = v40 ^ 1;
      if (v41 >> 8 > 0xFE)
      {
        v97[2] = 0;
        *(v97 + 12) = -256;
        break;
      }

      if ((v41 & 0x100) == 0)
      {
        goto LABEL_96;
      }

      v97[2] = v100;
      *(v97 + 12) = 0;
      break;
    case 0xCu:
      v43 = *v24;
      v44 = v24[9];
      v41 = *(v24 + 12);
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v24[8];
      }

      v97 = v110;
      v98 = v24[26];
      v99 = v24[27];
      v100 = *(v24 + 2);
      *v110 = v43;
      *(v97 + 8) = v45;
      *(v97 + 9) = v44 ^ 1;
      if (v41 >> 8 <= 0xFE)
      {
        if ((v41 & 0x100) != 0)
        {
          v97[2] = v100;
          *(v97 + 12) = 0;
        }

        else
        {
LABEL_96:
          sub_1CF47FDFC(v100, v41);
          v97[2] = v100;
          *(v97 + 24) = v41;
          *(v97 + 25) = 1;
        }
      }

      else
      {
        v97[2] = 0;
        *(v97 + 12) = -256;
      }

      break;
    case 0xDu:
      v76 = *(v24 + 2);
      v77 = *v24;
      v78 = v24[9];
      v79 = v24[10];
      if (v78)
      {
        v80 = 0;
      }

      else
      {
        v80 = v24[8];
      }

      v103 = v110;
      *v110 = v77;
      *(v103 + 8) = v80;
      *(v103 + 9) = v78 ^ 1;
      *(v103 + 10) = v79;
      v103[2] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0xEu:
      v35 = *v24;
      v36 = v24[9];
      v37 = v24[10];
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v24[8];
      }

      goto LABEL_122;
    case 0xFu:
      v46 = *(v24 + 2);
      v47 = *v24;
      v48 = v24[9];
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = v24[8];
      }

      v101 = v110;
      *v110 = v47;
      *(v101 + 8) = v49;
      *(v101 + 9) = v48 ^ 1;
      v101[2] = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x10u:
      v30 = *(v24 + 2);
      v31 = v24[24];
      v32 = *v24;
      v33 = v24[9];
      if (v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = v24[8];
      }

      v96 = v110;
      *v110 = v32;
      *(v96 + 8) = v34;
      *(v96 + 9) = v33 ^ 1;
      v96[2] = v30;
      *(v96 + 24) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x11u:
      v60 = *(v24 + 1);
      v61 = v110;
      *v110 = *v24;
      *(v61 + 1) = v60;
      v62 = *(v24 + 3);
      *(v61 + 2) = *(v24 + 2);
      *(v61 + 3) = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x12u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x14u:
      v63 = *v24;
      v64 = *(v24 + 3);
      v65 = *(v24 + 1);
      v66 = v24[16];
      v67 = v24[17];
      v68 = v110;
      *v110 = v63;
      if (v67)
      {
        v69 = 0;
      }

      else
      {
        v69 = v66;
      }

      v68[1] = v65;
      *(v68 + 16) = v69;
      *(v68 + 17) = v67 ^ 1;
      v68[3] = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x17u:
    case 0x18u:
      *v110 = (*v24 & 1) == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x19u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x1Au:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x1Bu:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x1Cu:
      v91 = v109;
      sub_1CEFE55D0(v24, v109, &unk_1EC4BF650, &unk_1CF9FCB40);
      v92 = v108;
      sub_1CEFCCBDC(v91, v108, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1CEFE55D0(v92, v110, &unk_1EC4BFD70, &qword_1CFA12AC0);
      }

      else
      {
        sub_1CEFE55D0(v92, v110, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      swift_storeEnumTagMultiPayload();
      sub_1CEFCCC44(v91, &unk_1EC4BF650, &unk_1CF9FCB40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x1Du:
      v37 = v24[10];
      v35 = *v24;
      v36 = v24[9];
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v24[8];
      }

      goto LABEL_122;
    case 0x1Eu:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x1Fu:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x20u:
      v88 = *v24;
      v89 = v24[9];
      v72 = *(v24 + 2);
      v73 = v24[24];
      v74 = v24[25];
      if (v89)
      {
        v90 = 0;
      }

      else
      {
        v90 = v24[8];
      }

      v102 = v110;
      *v110 = v88;
      *(v102 + 8) = v90;
      *(v102 + 9) = v89 ^ 1;
      if (v74)
      {
        v73 = 0;
      }

LABEL_107:
      v102[2] = v72;
      *(v102 + 24) = v73;
      *(v102 + 25) = v74 ^ 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x21u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x22u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x23u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x24u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x25u:
      memcpy(v111, v24, 0x208uLL);
      sub_1CF7F62D0(v110);
      sub_1CEFCCC44(v111, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x26u:
      v37 = v24[10];
      v35 = *v24;
      v36 = v24[9];
      if (v36)
      {
        v38 = 0;
      }

      else
      {
        v38 = v24[8];
      }

LABEL_122:
      v104 = v110;
      *v110 = v35;
      *(v104 + 8) = v38;
      *(v104 + 9) = v36 ^ 1;
      *(v104 + 10) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x27u:
      *v110 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x28u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x29u:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

      goto LABEL_124;
    case 0x2Au:
      v27 = *v24;
      v28 = v24[9];
      if (v28)
      {
        v29 = 0;
      }

      else
      {
        v29 = v24[8];
      }

LABEL_124:
      v105 = v110;
      *v110 = v27;
      *(v105 + 8) = v29;
      *(v105 + 9) = v28 ^ 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x2Bu:
      v25 = v24[9];
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = v24[8];
      }

      v93 = v110;
      *v110 = *v24;
      *(v93 + 8) = v26;
      *(v93 + 9) = v25 ^ 1;
      v94 = *(v24 + 2);
      *(v93 + 1) = *(v24 + 1);
      *(v93 + 2) = v94;
      v95 = *(v24 + 4);
      *(v93 + 3) = *(v24 + 3);
      *(v93 + 4) = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    case 0x2Cu:
    case 0x2Du:
    case 0x2Eu:
    case 0x2Fu:
    case 0x30u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
    default:
      *v110 = *v24 ^ 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
      return swift_storeEnumTagMultiPayload();
  }

  *(v97 + 26) = v98;
  *(v97 + 27) = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  return swift_storeEnumTagMultiPayload();
}

_OWORD *sub_1CF031F0C(void *a1)
{
  v165 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v162 = *(v1 - 8);
  v163 = v1;
  v2 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v150 = (&v150 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v159 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v157 = (&v150 - v9);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v158 = (&v150 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v156 = (&v150 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v155 = &v150 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v154 = &v150 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v153 = &v150 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v160 = (&v150 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v151 = &v150 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = (&v150 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v150 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v152 = &v150 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v164 = (&v150 - v33);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v161 = &v150 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v150 - v37);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = (&v150 - v40);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = (&v150 - v43);
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = (&v150 - v46);
  v48 = MEMORY[0x1EEE9AC00](v45);
  v50 = &v150 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48);
  v53 = &v150 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v150 - v54;
  sub_1CEFCCBDC(v166, &v150 - v54, &unk_1EC4C4E20, &unk_1CFA05350);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1CEFCCBDC(v55, v26, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_28;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0230, &unk_1CFA05740);
      v56 = swift_dynamicCastClass();
      if (!v56)
      {
        goto LABEL_28;
      }

      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v58 = swift_allocObject();
      v166 = xmmword_1CF9FA450;
      *(v58 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v59 = v55;
      v60 = swift_allocObject();
      *(v60 + 16) = v166;
      v61 = *v57;
      *(v60 + 32) = sub_1CF387EDC();
      v62 = v57[18];
      *(v58 + 32) = 0x200000;
      *(v58 + 40) = v60;
      *(v58 + 48) = v62;
      v63 = v62;

      sub_1CEFCCC44(v59, &unk_1EC4C4E20, &unk_1CFA05350);
      return v58;
    case 2u:
      sub_1CEFCCBDC(v55, v29, &unk_1EC4C4E20, &unk_1CFA05350);
      v76 = *v29;
      if (v29[9])
      {
        goto LABEL_40;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v95 = swift_allocObject();
      v96 = v95;
      *(v95 + 16) = xmmword_1CF9FA450;
      v97 = 8;
      v98 = &unk_1F4BEE7B0;
      goto LABEL_67;
    case 3u:
      sub_1CEFCCBDC(v55, v50, &unk_1EC4C4E20, &unk_1CFA05350);
      v76 = *v50;
      if ((v50[9] & 1) == 0)
      {
        goto LABEL_58;
      }

      v77 = v50[8];
      goto LABEL_41;
    case 5u:
      sub_1CEFCCBDC(v55, v38, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v38 + 9))
      {
        sub_1CF1E53F8(v38[2], *(v38 + 24), *(v38 + 25));
        v93 = *v38;
        v94 = *(v38 + 9);
        v77 = *(v38 + 8);
        goto LABEL_107;
      }

      v117 = *v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1CF9FA450;
      *(v67 + 32) = 64;
      *(v67 + 40) = &unk_1F4BEE670;
      *(v67 + 48) = v117;
      sub_1CF1E53F8(v38[2], *(v38 + 24), *(v38 + 25));
      goto LABEL_101;
    case 6u:
      v78 = v161;
      sub_1CEFCCBDC(v55, v161, &unk_1EC4C4E20, &unk_1CFA05350);
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308) + 48);
      v80 = v163;
      v81 = *(v162 + 48);
      if (v81(v78 + v79, 1, v163) == 1)
      {
        if (v81(v78, 1, v80) == 1)
        {
          sub_1CEFCCC44(v78, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          goto LABEL_108;
        }

        v136 = v150;
        sub_1CEFE55D0(v78, v150, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1CF9FA450;
        v137 = *v136;
        *(v85 + 32) = 96;
        *(v85 + 40) = &unk_1F4BEE6C0;
        *(v85 + 48) = v137;
        v138 = v137;
        v115 = v136;
        v113 = &unk_1EC4BFBD0;
        v114 = &unk_1CF9FCBC0;
      }

      else
      {
        v110 = v150;
        sub_1CEFE55D0(v78 + v79, v150, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1CF9FA450;
        v111 = *(v110 + 8);
        *(v85 + 32) = 8;
        *(v85 + 40) = &unk_1F4BEE698;
        *(v85 + 48) = v111;
        v112 = v111;
        sub_1CEFCCC44(v110, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v113 = &unk_1EC4BFBB0;
        v114 = &qword_1CF9FCB90;
        v115 = v78;
      }

      sub_1CEFCCC44(v115, v113, v114);
      v86 = v55;
LABEL_85:
      sub_1CEFCCC44(v86, &unk_1EC4C4E20, &unk_1CFA05350);
      return v85;
    case 0xBu:
      v44 = v164;
      sub_1CEFCCBDC(v55, v164, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*(v44 + 9) & 1) == 0)
      {
        v116 = v44[2];
        v87 = *(v44 + 12);
LABEL_105:
        sub_1CF4804C0(v116, v87);
        goto LABEL_106;
      }

      v87 = *(v44 + 12);
      if (v87 >> 8 > 0xFE)
      {
        sub_1CF1E53F8(*v44, *(v44 + 8), 1);
        sub_1CF4804C0(v44[2], *(v44 + 12));
        goto LABEL_108;
      }

      v139 = v44[2];
      if ((v87 & 0x100) != 0)
      {
        goto LABEL_104;
      }

      v140 = *(v44 + 27);
      if (!*(v44 + 27))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v141 = swift_allocObject();
        v96 = v141;
        *(v141 + 16) = xmmword_1CF9FA450;
        v142 = &unk_1F4BEE6E8;
        v148 = 64;
        goto LABEL_115;
      }

      if (v140 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v141 = swift_allocObject();
        v96 = v141;
        *(v141 + 16) = xmmword_1CF9FA450;
        v142 = &unk_1F4BEE710;
        goto LABEL_113;
      }

      if (v140 != 4)
      {
LABEL_104:
        v116 = v44[2];
        goto LABEL_105;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v141 = swift_allocObject();
      v96 = v141;
      *(v141 + 16) = xmmword_1CF9FA450;
      v142 = &unk_1F4BEE738;
LABEL_113:
      v148 = 32;
LABEL_115:
      *(v141 + 32) = v148;
      *(v141 + 40) = v142;
      *(v141 + 48) = v139;
      sub_1CF1E53F8(*v44, *(v44 + 8), 1);
LABEL_68:
      v127 = v55;
LABEL_69:
      sub_1CEFCCC44(v127, &unk_1EC4C4E20, &unk_1CFA05350);
      return v96;
    case 0xCu:
      sub_1CEFCCBDC(v55, v47, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v47 + 9))
      {
        sub_1CF4804C0(v47[2], *(v47 + 12));
        v93 = *v47;
        v94 = *(v47 + 9);
        v77 = *(v47 + 8);
        goto LABEL_107;
      }

      v76 = *v47;
      sub_1CF4804C0(v47[2], *(v47 + 12));
LABEL_58:
      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_1CF9FA440;
      *(v118 + 32) = 32;
      *(v118 + 40) = &unk_1F4BEE5D0;
      *(v118 + 48) = v76;
      if (qword_1EDEA34B0 != -1)
      {
        v149 = v118;
        swift_once();
        v118 = v149;
      }

      v119 = qword_1EDEA34B8;
      *(v118 + 56) = 128;
      *(v118 + 64) = &unk_1F4BEE5F8;
      *(v118 + 72) = v119;
      v120 = v118;
      v121 = v119;
      return v120;
    case 0xEu:
      sub_1CEFCCBDC(v55, v53, &unk_1EC4C4E20, &unk_1CFA05350);
      if (v53[9])
      {
        v93 = *v53;
        v77 = v53[8];
        goto LABEL_48;
      }

      v122 = v53[10];
      v66 = *v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v67 = swift_allocObject();
      v166 = xmmword_1CF9FA450;
      *(v67 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v68 = swift_allocObject();
      *(v68 + 16) = v166;
      *(v68 + 32) = v122;
      v69 = 393472;
      goto LABEL_62;
    case 0xFu:
      sub_1CEFCCBDC(v55, v44, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v44 + 9))
      {

LABEL_106:
        v93 = *v44;
        v94 = *(v44 + 9);
        v77 = *(v44 + 8);
        goto LABEL_107;
      }

      v168 = v44[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast() && v167 == 3)
      {
        v128 = *v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_1CF9FA450;
        *(v67 + 32) = 64;
        *(v67 + 40) = &unk_1F4BEE620;
        *(v67 + 48) = v128;

        goto LABEL_101;
      }

LABEL_92:
      v143 = *v44;
      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      result = swift_allocObject();
      result[1] = xmmword_1CF9FA450;
      *(result + 4) = 96;
      *(result + 5) = &unk_1F4BEE648;
      *(result + 6) = v143;
      return result;
    case 0x10u:
      sub_1CEFCCBDC(v55, v41, &unk_1EC4C4E20, &unk_1CFA05350);

      if (*(v41 + 9))
      {
        goto LABEL_43;
      }

      v44 = v41;
      goto LABEL_92;
    case 0x14u:
      v74 = v151;
      sub_1CEFCCBDC(v55, v151, &unk_1EC4C4E20, &unk_1CFA05350);
      v75 = *v74;

      v76 = *(v74 + 8);
      if (*(v74 + 17))
      {
        v77 = *(v74 + 16);
        goto LABEL_41;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v96 = swift_allocObject();
      v166 = xmmword_1CF9FA450;
      *(v96 + 16) = xmmword_1CF9FA450;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
      v109 = swift_allocObject();
      *(v109 + 16) = v166;
      *(v109 + 32) = v75;
      *(v96 + 32) = 2048;
      *(v96 + 40) = v109;
      *(v96 + 48) = v76;
      goto LABEL_68;
    case 0x16u:
      v88 = v156;
      sub_1CEFCCBDC(v55, v156, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v88 & 0x8000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFFB0, &unk_1CF9FAE10);
        v135 = swift_dynamicCastClass();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
        v89 = swift_dynamicCastClass();
        if (v89)
        {
          v90 = v89;
          if (v89[112] != 3 || (v91 = *(*v89 + 664), swift_beginAccess(), v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0), (*(*(v92 - 8) + 48))(&v90[v91], 1, v92)))
          {
LABEL_28:

            goto LABEL_108;
          }

          v146 = *&v90[v91];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
          v96 = swift_allocObject();
          *(v96 + 16) = xmmword_1CF9FA450;
          *(v96 + 32) = 32;
          *(v96 + 40) = &unk_1F4BEE8A0;
          *(v96 + 48) = v146;
          v147 = v146;

          goto LABEL_68;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF40, &unk_1CF9FB410);
        v135 = swift_dynamicCastClass();
      }

      if (!v135)
      {
        goto LABEL_108;
      }

      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE988;
    case 0x17u:
      v82 = v159;
      sub_1CEFCCBDC(v55, v159, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v82)
      {
        goto LABEL_108;
      }

      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE9C0;
    case 0x18u:
      v70 = v154;
      sub_1CEFCCBDC(v55, v154, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v70)
      {
        goto LABEL_108;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v71 = swift_allocObject();
      v67 = v71;
      *(v71 + 16) = xmmword_1CF9FA450;
      v72 = 0x20000;
      v73 = &unk_1F4BEE850;
      goto LABEL_52;
    case 0x1Cu:
      v99 = v160;
      sub_1CEFCCBDC(v55, v160, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v100 = &qword_1EC4BFD38;
        v101 = &unk_1CFA05450;
LABEL_103:
        sub_1CEFCCC44(v99, v100, v101);
LABEL_108:
        sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
        return MEMORY[0x1E69E7CC0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 5)
      {
        v124 = *v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v125 = swift_allocObject();
        v67 = v125;
        *(v125 + 16) = xmmword_1CF9FA450;
        v126 = &unk_1F4BEE7D8;
      }

      else
      {
        if (EnumCaseMultiPayload != 7)
        {
          v100 = &unk_1EC4BFD70;
          v101 = &qword_1CFA12AC0;
          goto LABEL_103;
        }

        v124 = *v99;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v125 = swift_allocObject();
        v67 = v125;
        *(v125 + 16) = xmmword_1CF9FA450;
        v126 = &unk_1F4BEE800;
      }

      *(v125 + 32) = 0x2000;
      *(v125 + 40) = v126;
      *(v125 + 48) = v124;
      goto LABEL_101;
    case 0x1Eu:
      v29 = v153;
      sub_1CEFCCBDC(v55, v153, &unk_1EC4C4E20, &unk_1CFA05350);
      v76 = *v29;
      if ((v29[9] & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v95 = swift_allocObject();
        v96 = v95;
        *(v95 + 16) = xmmword_1CF9FA450;
        v97 = 0x10000;
        v98 = &unk_1F4BEE828;
LABEL_67:
        *(v95 + 32) = v97;
        *(v95 + 40) = v98;
        *(v95 + 48) = v76;
        goto LABEL_68;
      }

LABEL_40:
      v77 = v29[8];
LABEL_41:
      v93 = v76;
      goto LABEL_48;
    case 0x20u:
      v106 = v152;
      sub_1CEFCCBDC(v55, v152, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*(v106 + 9))
      {
        sub_1CF1E53F8(*(v106 + 16), *(v106 + 24), *(v106 + 25));
        v93 = *v106;
        v94 = *(v106 + 9);
        v77 = *(v106 + 8);
        goto LABEL_107;
      }

      v134 = *v106;
      if (*(v106 + 25))
      {
        sub_1CF1E53F8(*v106, *(v106 + 8), 0);
        v93 = *(v106 + 16);
        v94 = *(v106 + 25);
        v77 = *(v106 + 24);
        goto LABEL_107;
      }

      v145 = *(v106 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1CF9FA440;
      *(v96 + 32) = 96;
      *(v96 + 40) = &unk_1F4BEE760;
      *(v96 + 48) = v134;
      *(v96 + 56) = 8;
      *(v96 + 64) = &unk_1F4BEE788;
      *(v96 + 72) = v145;
      goto LABEL_68;
    case 0x23u:
      v102 = v155;
      sub_1CEFCCBDC(v55, v155, &unk_1EC4C4E20, &unk_1CFA05350);
      v103 = *(v102 + 9);
      v104 = *v102;
      v105 = *(v102 + 8);
      if (v103)
      {
        v93 = v104;
        v77 = v105;
        goto LABEL_48;
      }

      v129 = v55;
      if (qword_1EDEA34B0 != -1)
      {
        swift_once();
      }

      v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v132 = v131;
      if (v130 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v132 == v133)
      {
      }

      else
      {
        v144 = sub_1CF9E8048();

        if ((v144 & 1) == 0)
        {
          sub_1CF1E53F8(v104, v105, 0);
          v55 = v129;
          goto LABEL_108;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v96 = swift_allocObject();
      *(v96 + 16) = xmmword_1CF9FA450;
      *(v96 + 32) = 0x80000;
      *(v96 + 40) = &unk_1F4BEE878;
      *(v96 + 48) = v104;
      v127 = v129;
      goto LABEL_69;
    case 0x26u:
      v41 = v158;
      sub_1CEFCCBDC(v55, v158, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*(v41 + 9) & 1) == 0)
      {
        v65 = *(v41 + 10);
        v66 = *v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
        v67 = swift_allocObject();
        v166 = xmmword_1CF9FA450;
        *(v67 + 16) = xmmword_1CF9FA450;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0488, &qword_1CFA10830);
        v68 = swift_allocObject();
        *(v68 + 16) = v166;
        *(v68 + 32) = v65;
        v69 = 0x800000;
LABEL_62:
        *(v67 + 32) = v69;
        *(v67 + 40) = v68;
        *(v67 + 48) = v66;
LABEL_101:
        sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
        return v67;
      }

LABEL_43:
      v93 = *v41;
      v77 = *(v41 + 8);
LABEL_48:
      v94 = 1;
LABEL_107:
      sub_1CF1E53F8(v93, v77, v94);
      goto LABEL_108;
    case 0x27u:
      v83 = v157;
      sub_1CEFCCBDC(v55, v157, &unk_1EC4C4E20, &unk_1CFA05350);
      v84 = *v83;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_1CF9FA450;
      *(v85 + 32) = 0x1000000;
      *(v85 + 40) = v84;
      *(v85 + 48) = 0;
      v86 = v55;
      goto LABEL_85;
    case 0x2Eu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0480, &unk_1CFA05880);
      v71 = swift_allocObject();
      v67 = v71;
      *(v71 + 16) = xmmword_1CF9FA450;
      v72 = 128;
      v73 = &unk_1F4BEE558;
LABEL_52:
      *(v71 + 32) = v72;
      *(v71 + 40) = v73;
      v107 = v165;
      *(v71 + 48) = v165;
      v108 = v107;
      goto LABEL_101;
    case 0x2Fu:
      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE918;
    case 0x30u:
      sub_1CEFCCC44(v55, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BEE950;
    default:
      goto LABEL_108;
  }
}

uint64_t sub_1CF0335E0()
{
  v1 = v0;
  v2 = sub_1CF9E6118();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = type metadata accessor for BackgroundDownloaderPacerState();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[72] == 1)
  {
    v0[72] = 0;
    v9 = sub_1CF9E56C8();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    v12 = *(*v0 + 136);
    swift_beginAccess();
    sub_1CEFDA34C(v1 + v12, v8, type metadata accessor for BackgroundDownloaderPacerState);
    sub_1CEFCCCA4(&qword_1EDEA4F38, type metadata accessor for BackgroundDownloaderPacerState);
    v13 = sub_1CF9E56A8();
    v15 = v14;
    v18 = v2;
    sub_1CEFD5338(v8, type metadata accessor for BackgroundDownloaderPacerState);
    v16 = v1[5];
    v17 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v16);
    (*(v17 + 8))(v1[7], v1[8], v13, v15, v16, v17);
    sub_1CEFE4714(v13, v15);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundDownloaderPacerState()
{
  result = qword_1EDEA4F10;
  if (!qword_1EDEA4F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF033A60@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x1E6967258];
  *a1 = *MEMORY[0x1E6967258];
  return v1;
}

uint64_t sub_1CF033A74()
{
  if (*(v0 + 224))
  {
    v1 = *(v0 + 224);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C5240, &qword_1CFA189F0);
    swift_allocObject();

    v3 = v0;
    v1 = sub_1CF915C14(v2);
    v4 = *(v0 + 224);
    *(v3 + 224) = v1;
  }

  return v1;
}

uint64_t sub_1CF033B10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  LOBYTE(v2) = v3();

  return v2 & 1;
}

uint64_t sub_1CF033B5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1() & 1;
}

void *sub_1CF033B90(int a1, uint64_t a2)
{
  v409 = a2;
  v441 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF10, &unk_1CFA055E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v401 = &v393 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v406 = &v393 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v407 = *(v7 - 8);
  v408 = v7;
  v8 = *(v407 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v402 = &v393 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v403 = &v393 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFF08, &qword_1CFA055D8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v398 = &v393 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v396 = *(v15 - 8);
  v397 = v15;
  v16 = *(v396 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v395 = &v393 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v19 = *(v18 - 8);
  v439 = v18;
  v440 = v19;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v400 = &v393 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v405 = &v393 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v404 = &v393 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v412 = &v393 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v416 = &v393 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v414 = &v393 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v435 = (&v393 - v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v431 = *(v34 - 8);
  v432 = v34;
  v35 = *(v431 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v415 = &v393 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v433 = &v393 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v399 = &v393 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v411 = &v393 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v417 = &v393 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v410 = &v393 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v437 = &v393 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v413 = &v393 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v442 = &v393 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v436 = &v393 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE710, &qword_1CF9FE5A8);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v429 = &v393 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v428 = &v393 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v427 = &v393 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v426 = &v393 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v434 = &v393 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v425 = &v393 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v424 = &v393 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v423 = &v393 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v420 = (&v393 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v421 = &v393 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v430 = &v393 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v418 = (&v393 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v419 = &v393 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v86 = &v393 - v85;
  v87 = MEMORY[0x1EEE9AC00](v84);
  v89 = &v393 - v88;
  v90 = MEMORY[0x1EEE9AC00](v87);
  v422 = &v393 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v94 = &v393 - v93;
  v95 = MEMORY[0x1EEE9AC00](v92);
  v97 = (&v393 - v96);
  v98 = MEMORY[0x1EEE9AC00](v95);
  v438 = &v393 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v102 = &v393 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100);
  v105 = &v393 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103);
  v108 = (&v393 - v107);
  MEMORY[0x1EEE9AC00](v106);
  v110 = &v393 - v109;
  sub_1CEFCCBDC(v443, &v393 - v109, &qword_1EC4BE710, &qword_1CF9FE5A8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CEFCCBDC(v110, v108, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v111 = v110;
      v112 = *v108;
      v113 = *(v108 + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      *(v114 + 32) = 2;
      *(v114 + 40) = v112;
      *(v114 + 48) = v113;
      *(v114 + 49) = 0;
      *(v114 + 56) = 0;
      *(v114 + 64) = 0;
      *(v114 + 72) = 1;

      goto LABEL_25;
    case 3u:
      sub_1CEFCCBDC(v110, v105, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v149 = v110;
      v150 = *v105;
      v151 = v105[8];
      if ((v105[9] & 1) == 0)
      {
        sub_1CEFD0994(*v105, v105[8], 0);
        v110 = v149;
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      *(v114 + 32) = 2;
      *(v114 + 40) = v150;
      *(v114 + 48) = v151;
      *(v114 + 49) = 1;
      *(v114 + 56) = 0;
      *(v114 + 64) = 0;
      *(v114 + 72) = 2;
LABEL_99:
      v157 = &qword_1EC4BE710;
      v158 = &qword_1CF9FE5A8;
      v141 = v149;
      goto LABEL_199;
    case 5u:
      v134 = v422;
      sub_1CEFCCBDC(v110, v422, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v135 = *(v134 + 16);
      v136 = *(v134 + 24);
      if (*(v134 + 25))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        *(v114 + 32) = 16;
        *(v114 + 40) = v135;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 48) = v136 | 0x100;
        *(v114 + 72) = 0;
        sub_1CEFD0994(*v134, *(v134 + 8), *(v134 + 9));
        goto LABEL_198;
      }

      sub_1CEFD0994(*(v134 + 16), *(v134 + 24), 0);
      v127 = *v134;
      v181 = *(v134 + 9);
      v128 = *(v134 + 8);
      goto LABEL_61;
    case 6u:
      v165 = v438;
      sub_1CEFCCBDC(v110, v438, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v167 = *(v166 + 48);
      v168 = *(v165 + *(v166 + 64));
      if ((*(v431 + 48))(v165, 1, v432) == 1)
      {
        sub_1CEFCCC44(v165 + v167, &qword_1EC4C1B40, &unk_1CF9FCB70);
        sub_1CEFCCC44(v165, &qword_1EC4C1B40, &unk_1CF9FCB70);
        goto LABEL_62;
      }

      v192 = v415;
      sub_1CEFE55D0(v165, v415, &unk_1EC4BE360, &qword_1CF9FE650);
      v394 = v110;
      if ((v168 & 2) != 0)
      {
        v224 = *(v192 + 16);
        v225 = *(v192 + 24);
        v114 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v227 = *(v114 + 16);
        v226 = *(v114 + 24);
        if (v227 >= v226 >> 1)
        {
          v114 = sub_1CF1F81B0((v226 > 1), v227 + 1, 1, v114);
        }

        *(v114 + 16) = v227 + 1;
        v228 = v114 + 48 * v227;
        *(v228 + 32) = 4;
        *(v228 + 40) = v224;
        *(v228 + 56) = 0;
        *(v228 + 64) = 0;
        *(v228 + 48) = v225;
        *(v228 + 72) = 0;
      }

      else
      {
        v114 = MEMORY[0x1E69E7CC0];
      }

      if ((v168 & 3) != 0)
      {
        v229 = *v192;
        v230 = *(v192 + 8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
        }

        v232 = *(v114 + 16);
        v231 = *(v114 + 24);
        v233 = v232 + 1;
        v443 = v167;
        if (v232 >= v231 >> 1)
        {
          v114 = sub_1CF1F81B0((v231 > 1), v232 + 1, 1, v114);
        }

        *(v114 + 16) = v233;
        v234 = v114 + 48 * v232;
        *(v234 + 32) = 1024;
        *(v234 + 40) = v229;
        *(v234 + 56) = 0;
        *(v234 + 64) = 0;
        *(v234 + 48) = v230;
        *(v234 + 72) = 5;
        v235 = *(v192 + 16);
        v236 = *(v192 + 24);
        v238 = *(v192 + 128);
        v237 = *(v192 + 136);
        v239 = *(v114 + 24);

        if (v233 >= v239 >> 1)
        {
          v114 = sub_1CF1F81B0((v239 > 1), v232 + 2, 1, v114);
        }

        *(v114 + 16) = v232 + 2;
        v240 = v114 + 48 * v233;
        *(v240 + 32) = 1024;
        *(v240 + 40) = v235;
        *(v240 + 48) = v236;
        *(v240 + 56) = v238;
        *(v240 + 64) = v237;
        *(v240 + 72) = 1;
        v192 = v415;
        v165 = v438;
        v167 = v443;
      }

      sub_1CEFCCC44(v192, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFCCC44(v165 + v167, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v157 = &qword_1EC4BE710;
      v158 = &qword_1CF9FE5A8;
      v141 = v394;
      goto LABEL_199;
    case 7u:
      sub_1CEFCCBDC(v110, v102, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v170 = *(v169 + 48);
      v171 = *&v102[*(v169 + 64)];
      v172 = v436;
      sub_1CEFE55D0(v102, v436, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v173 = &v102[v170];
      v174 = v442;
      sub_1CEFE55D0(v173, v442, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      if ((v171 & 3) != 0)
      {
        v175 = v413;
        sub_1CEFCCBDC(v172, v413, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        v177 = v439;
        v176 = v440;
        if ((*(v440 + 48))(v175, 1, v439) == 1)
        {
          sub_1CEFCCC44(v175, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v114 = MEMORY[0x1E69E7CC0];
          goto LABEL_146;
        }

        v211 = v110;
        v212 = v414;
        sub_1CEFE55D0(v175, v414, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        if (*(v212 + *(v177 + 48)) == 1)
        {
          v213 = *v212;
          v214 = *v212;
          v114 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v216 = *(v114 + 16);
          v215 = *(v114 + 24);
          v217 = v216 + 1;
          if (v216 >= v215 >> 1)
          {
            v114 = sub_1CF1F81B0((v215 > 1), v216 + 1, 1, v114);
          }

          *(v114 + 16) = v217;
          v218 = v114 + 48 * v216;
          *(v218 + 32) = 2;
          *(v218 + 40) = v213;
          *(v218 + 56) = 0;
          *(v218 + 64) = 0;
          *(v218 + 48) = 256;
          *(v218 + 72) = 2;
          if (v441)
          {
            v219 = *(v212 + 8);
            v220 = *(v114 + 24);
            v221 = v219;
            if (v217 >= v220 >> 1)
            {
              v114 = sub_1CF1F81B0((v220 > 1), v216 + 2, 1, v114);
            }

            *(v114 + 16) = v216 + 2;
            v222 = v114 + 48 * v217;
            *(v222 + 32) = 2;
            *(v222 + 40) = v219;
            *(v222 + 48) = 256;
            *(v222 + 56) = 0;
            *(v222 + 64) = 0;
            *(v222 + 72) = 6;
            v212 = v414;
          }
        }

        else
        {
          v114 = MEMORY[0x1E69E7CC0];
        }

        v260 = *(v212 + 8);
        v262 = *(v212 + 80);
        v261 = *(v212 + 88);
        v263 = v260;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
        }

        v265 = *(v114 + 16);
        v264 = *(v114 + 24);
        if (v265 >= v264 >> 1)
        {
          v114 = sub_1CF1F81B0((v264 > 1), v265 + 1, 1, v114);
        }

        *(v114 + 16) = v265 + 1;
        v266 = v114 + 48 * v265;
        *(v266 + 32) = 1024;
        *(v266 + 40) = v260;
        *(v266 + 48) = 256;
        *(v266 + 56) = v262;
        *(v266 + 64) = v261;
        *(v266 + 72) = 2;
        sub_1CEFCCC44(v414, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
        v110 = v211;
        v174 = v442;
      }

      else
      {
        v114 = MEMORY[0x1E69E7CC0];
      }

      v177 = v439;
      v176 = v440;
LABEL_146:
      v267 = v437;
      sub_1CEFCCBDC(v174, v437, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      v269 = *(v176 + 48);
      v268 = v176 + 48;
      v270 = v269;
      if (v269(v267, 1, v177) == 1)
      {
        sub_1CEFCCC44(v267, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_166:
        v294 = v270;
        v295 = v442;
        goto LABEL_167;
      }

      v271 = v267;
      v272 = v171;
      v273 = v172;
      v274 = v416;
      sub_1CEFE55D0(v271, v416, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if (v441)
      {
        if ((v272 & 0x12) != 0)
        {
          v440 = v268;
          v275 = (v416 + *(v177 + 48));
          v172 = v273;
          if (*v275 == 2)
          {
            sub_1CEFCCC44(v416, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_165:
            v171 = v272;
            goto LABEL_166;
          }

          v171 = v272;
          if (v275[*(type metadata accessor for ItemMetadata() + 80)] == 1)
          {
            sub_1CEFCCC44(v416, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            goto LABEL_166;
          }

          v346 = *(v416 + 8);
          v347 = v346;
          v294 = v270;
          v348 = v110;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
          }

          v350 = *(v114 + 16);
          v349 = *(v114 + 24);
          if (v350 >= v349 >> 1)
          {
            v114 = sub_1CF1F81B0((v349 > 1), v350 + 1, 1, v114);
          }

          *(v114 + 16) = v350 + 1;
          v351 = v114 + 48 * v350;
          *(v351 + 32) = 16;
          *(v351 + 40) = v346;
          *(v351 + 56) = 0;
          *(v351 + 64) = 0;
          *(v351 + 48) = 256;
          *(v351 + 72) = 0;
          v352 = v399;
          sub_1CEFCCBDC(v172, v399, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          if (v294(v352, 1, v177) == 1)
          {
            sub_1CEFCCC44(v416, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
            v353 = &unk_1EC4BFBB0;
            v354 = &qword_1CF9FCB90;
            v355 = v352;
LABEL_232:
            sub_1CEFCCC44(v355, v353, v354);
            v110 = v348;
            v295 = v442;
            goto LABEL_167;
          }

          v372 = v352;
          v373 = v400;
          sub_1CEFE55D0(v372, v400, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v374 = *(v373 + 8);
          v375 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v377 = v376;
          if (v375 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v377 == v378)
          {
          }

          else
          {
            v385 = sub_1CF9E8048();

            if ((v385 & 1) == 0)
            {
              v388 = *(v114 + 16);
              v389 = *(v114 + 24);
              v390 = v374;
              if (v388 >= v389 >> 1)
              {
                v114 = sub_1CF1F81B0((v389 > 1), v388 + 1, 1, v114);
              }

              v177 = v439;
              *(v114 + 16) = v388 + 1;
              v391 = v114 + 48 * v388;
              *(v391 + 32) = 16;
              *(v391 + 40) = v374;
              *(v391 + 56) = 0;
              *(v391 + 64) = 0;
              *(v391 + 48) = 256;
              *(v391 + 72) = 0;
              sub_1CEFCCC44(v400, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v355 = v416;
              v353 = &unk_1EC4BFBD0;
              v354 = &unk_1CF9FCBC0;
              goto LABEL_232;
            }
          }

          sub_1CEFCCC44(v400, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          sub_1CEFCCC44(v416, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
          v110 = v348;
          v295 = v442;
          v177 = v439;
LABEL_167:
          v296 = v417;
          if ((v171 & 2) != 0)
          {
            v307 = v410;
            sub_1CEFCCBDC(v295, v410, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v294(v307, 1, v177) == 1)
            {
              sub_1CEFCCC44(v307, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            }

            else
            {
              v308 = v307;
              v309 = v412;
              sub_1CEFE55D0(v308, v412, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v310 = *(v309 + 8);
              v311 = v310;
              v312 = v110;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
              }

              v314 = *(v114 + 16);
              v313 = *(v114 + 24);
              if (v314 >= v313 >> 1)
              {
                v114 = sub_1CF1F81B0((v313 > 1), v314 + 1, 1, v114);
              }

              *(v114 + 16) = v314 + 1;
              v315 = v114 + 48 * v314;
              *(v315 + 32) = 12;
              *(v315 + 40) = v310;
              *(v315 + 56) = 0;
              *(v315 + 64) = 0;
              *(v315 + 48) = 256;
              *(v315 + 72) = 0;
              sub_1CEFCCC44(v412, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v110 = v312;
              v177 = v439;
            }

            v296 = v411;
            sub_1CEFCCBDC(v172, v411, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v294(v296, 1, v177) != 1)
            {
              v316 = v405;
              sub_1CEFE55D0(v296, v405, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v317 = *(v316 + 8);
              v318 = v317;
              v302 = v110;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
              }

              v320 = *(v114 + 16);
              v319 = *(v114 + 24);
              if (v320 >= v319 >> 1)
              {
                v114 = sub_1CF1F81B0((v319 > 1), v320 + 1, 1, v114);
              }

              *(v114 + 16) = v320 + 1;
              v321 = v114 + 48 * v320;
              *(v321 + 32) = 8;
              *(v321 + 40) = v317;
              *(v321 + 56) = 0;
              *(v321 + 64) = 0;
              *(v321 + 48) = 256;
              *(v321 + 72) = 0;
              v306 = v316;
              goto LABEL_196;
            }
          }

          else
          {
            sub_1CEFCCBDC(v295, v417, &unk_1EC4BFBB0, &qword_1CF9FCB90);
            if (v294(v296, 1, v177) != 1)
            {
              v297 = v404;
              sub_1CEFE55D0(v296, v404, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v298 = (v171 & 0x4000) != 0 && *(v297 + *(v177 + 48)) == 1;
              v299 = v171 & 0xFFFFFFFFFFFFBFFDLL;
              if (!v298)
              {
                v299 = v171;
              }

              if ((v299 & 0x10800) != 0)
              {
                v299 &= 0xFFFFFFFFFFFEF7FDLL;
              }

              if (!v299)
              {
                sub_1CEFCCC44(v297, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
LABEL_197:
                sub_1CEFCCC44(v295, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                sub_1CEFCCC44(v172, &unk_1EC4BFBB0, &qword_1CF9FCB90);
LABEL_198:
                v157 = &qword_1EC4BE710;
                v158 = &qword_1CF9FE5A8;
                v141 = v110;
                goto LABEL_199;
              }

              v300 = *(v297 + 8);
              v301 = v300;
              v302 = v110;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
              }

              v304 = *(v114 + 16);
              v303 = *(v114 + 24);
              if (v304 >= v303 >> 1)
              {
                v114 = sub_1CF1F81B0((v303 > 1), v304 + 1, 1, v114);
              }

              *(v114 + 16) = v304 + 1;
              v305 = v114 + 48 * v304;
              *(v305 + 32) = 8;
              *(v305 + 40) = v300;
              *(v305 + 56) = 0;
              *(v305 + 64) = 0;
              *(v305 + 48) = 256;
              *(v305 + 72) = 0;
              v306 = v297;
LABEL_196:
              sub_1CEFCCC44(v306, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
              v110 = v302;
              goto LABEL_197;
            }
          }

          sub_1CEFCCC44(v295, &unk_1EC4BFBB0, &qword_1CF9FCB90);
          v295 = v172;
          v172 = v296;
          goto LABEL_197;
        }

        v276 = v416;
      }

      else
      {
        v276 = v274;
      }

      sub_1CEFCCC44(v276, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v172 = v273;
      goto LABEL_165;
    case 8u:
      sub_1CEFCCBDC(v110, v108, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v111 = v110;
      v137 = v108;
      v138 = v433;
      sub_1CEFE55D0(v137, v433, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      v139 = *v138;
      v140 = *(v138 + 8);
      *(v114 + 32) = 2;
      *(v114 + 40) = v139;
      *(v114 + 48) = v140;
      *(v114 + 56) = 0;
      *(v114 + 64) = 0;
      *(v114 + 72) = 1;
      sub_1CEFCCC44(v138, &unk_1EC4BE360, &qword_1CF9FE650);
LABEL_25:
      v141 = v111;
      goto LABEL_33;
    case 9u:
      sub_1CEFCCBDC(v110, v108, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v152 = v108;
      v153 = v435;
      sub_1CEFE55D0(v152, v435, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA440;
      v154 = v153[1];
      *(v114 + 32) = 1024;
      *(v114 + 40) = v154;
      *(v114 + 48) = 256;
      v155 = v153[11];
      *(v114 + 56) = v153[10];
      *(v114 + 64) = v155;
      *(v114 + 72) = 2;
      *(v114 + 80) = 8;
      *(v114 + 88) = v154;
      *(v114 + 104) = 0;
      *(v114 + 112) = 0;
      *(v114 + 96) = 256;
      *(v114 + 120) = 0;
      v156 = v154;

      sub_1CEFCCC44(v153, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v141 = v110;
LABEL_33:
      v157 = &qword_1EC4BE710;
      v158 = &qword_1CF9FE5A8;
      goto LABEL_199;
    case 0xBu:
      v159 = v434;
      sub_1CEFCCBDC(v110, v434, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v160 = *(v159 + 26);
      if ((*(v159 + 9) & 1) == 0)
      {
        v183 = v110;
        v184 = *v159;
        v185 = *(v159 + 8);
        v114 = MEMORY[0x1E69E7CC0];
        if ((v441 & 1) != 0 && *(v159 + 27) == 2)
        {
          v114 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v187 = *(v114 + 16);
          v186 = *(v114 + 24);
          if (v187 >= v186 >> 1)
          {
            v114 = sub_1CF1F81B0((v186 > 1), v187 + 1, 1, v114);
          }

          *(v114 + 16) = v187 + 1;
          v188 = v114 + 48 * v187;
          *(v188 + 32) = 2;
          *(v188 + 40) = v184;
          *(v188 + 56) = 0;
          *(v188 + 64) = 0;
          *(v188 + 48) = v185;
          *(v188 + 72) = 1;
        }

        if (v160 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v114 = sub_1CF1F81B0(0, *(v114 + 16) + 1, 1, v114);
          }

          v190 = *(v114 + 16);
          v189 = *(v114 + 24);
          if (v190 >= v189 >> 1)
          {
            v114 = sub_1CF1F81B0((v189 > 1), v190 + 1, 1, v114);
          }

          *(v114 + 16) = v190 + 1;
          v191 = v114 + 48 * v190;
          *(v191 + 32) = 0x100000;
          *(v191 + 40) = v184;
          *(v191 + 56) = 0;
          *(v191 + 64) = 0;
          *(v191 + 48) = v185;
          *(v191 + 72) = 1;
        }

        sub_1CF47FDFC(*(v159 + 16), *(v159 + 24));
        v157 = &qword_1EC4BE710;
        v158 = &qword_1CF9FE5A8;
        v141 = v183;
        goto LABEL_199;
      }

      v161 = *(v159 + 24);
      if (v161 >> 8 > 0xFE)
      {
        sub_1CEFD0994(*v159, *(v159 + 8), 1);
        sub_1CF47FDFC(*(v159 + 16), *(v159 + 24));
        goto LABEL_62;
      }

      if ((v161 & 0x100) != 0)
      {
        sub_1CF47FDFC(*(v159 + 16), *(v159 + 24));
        v127 = *v159;
        v181 = *(v159 + 9);
        v128 = *(v159 + 8);
        goto LABEL_61;
      }

      if (v160 == 1)
      {
        v223 = *(v159 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        *(v114 + 32) = 0x100000;
        *(v114 + 40) = v223;
        *(v114 + 48) = v161;
        *(v114 + 49) = 0;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 72) = 1;
        sub_1CEFD0994(*v159, *(v159 + 8), 1);
        goto LABEL_198;
      }

      v127 = *v159;
      v128 = *(v159 + 8);
      goto LABEL_60;
    case 0xDu:
      sub_1CEFCCBDC(v110, v97, &qword_1EC4BE710, &qword_1CF9FE5A8);

      if (*(v97 + 9))
      {
        v127 = *v97;
        v128 = *(v97 + 8);
        goto LABEL_60;
      }

      v197 = *(v97 + 10);
      if ((v197 - 1) < 2)
      {
        v258 = *(v97 + 8);
        v259 = *v97;
        sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        *(v114 + 32) = 1024;
        *(v114 + 40) = v259;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 48) = v258;
        *(v114 + 72) = 7;
        return v114;
      }

      if (!*(v97 + 10) || v197 == 23)
      {
        v198 = *(v97 + 8);
        v199 = *v97;
        sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        *(v114 + 32) = 4;
        *(v114 + 40) = v199;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 48) = v198;
        *(v114 + 72) = 3;
        return v114;
      }

      goto LABEL_62;
    case 0xEu:
      sub_1CEFCCBDC(v110, v89, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (v89[9])
      {
        v127 = *v89;
        v128 = v89[8];
        goto LABEL_60;
      }

      v193 = v89[10];
      if (v193 > 0x17)
      {
        goto LABEL_62;
      }

      if (((1 << v193) & 0x80104B) != 0)
      {
        v194 = v89[8];
        v195 = *v89;
        sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v196 = swift_allocObject();
        v114 = v196;
        *(v196 + 16) = xmmword_1CF9FA450;
        *(v196 + 32) = 262400;
        *(v196 + 40) = v195;
        *(v196 + 64) = 0;
        *(v196 + 48) = v194;
        goto LABEL_212;
      }

      if (v193 != 2)
      {
        goto LABEL_62;
      }

      v292 = *v89;
      v293 = v89[8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v123 = swift_allocObject();
      v114 = v123;
      *(v123 + 16) = xmmword_1CF9FA450;
      *(v123 + 32) = 262912;
      *(v123 + 40) = v292;
      *(v123 + 64) = 0;
      *(v123 + 48) = v293;
      goto LABEL_43;
    case 0x15u:
      v129 = v420;
      sub_1CEFCCBDC(v110, v420, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v129 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v205 = swift_dynamicCastClass();
      if (v205)
      {
        v206 = v205;
        goto LABEL_157;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
      v277 = swift_dynamicCastClass();
      if (!v277)
      {
        goto LABEL_12;
      }

      v278 = v277;
      goto LABEL_220;
    case 0x16u:
      v142 = v418;
      sub_1CEFCCBDC(v110, v418, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v142 & 0x8000000000000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA00, &qword_1CF9FADC8);
        v143 = swift_dynamicCastClass();
        if (v143)
        {
          v144 = v143;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v145 = swift_allocObject();
          v114 = v145;
          *(v145 + 16) = xmmword_1CF9FA450;
          v146 = 0x4000;
LABEL_29:
          v147 = *(v144 + 144);
          v148 = *(v144 + 152);
          *(v145 + 32) = v146;
          *(v145 + 40) = v147;
          *(v145 + 56) = 0;
          *(v145 + 64) = 0;
          *(v145 + 48) = v148;
          *(v145 + 72) = 0;
LABEL_105:

LABEL_106:
          v157 = &qword_1EC4BE710;
          v158 = &qword_1CF9FE5A8;
          v141 = v110;
LABEL_199:
          sub_1CEFCCC44(v141, v157, v158);
          return v114;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
        v241 = swift_dynamicCastClass();
        if (v241)
        {
          if ((v441 & 1) == 0 || v241[112] != 3)
          {
            goto LABEL_248;
          }

          v242 = *(*v241 + 664);
          v243 = v241;
          swift_beginAccess();
          v244 = &v243[v242];
          v245 = v398;
          sub_1CEFCCBDC(v244, v398, &qword_1EC4BFF08, &qword_1CFA055D8);
          if ((*(v396 + 48))(v245, 1, v397) == 1)
          {
            v246 = &qword_1EC4BFF08;
            v247 = &qword_1CFA055D8;
            v248 = v245;
LABEL_247:
            sub_1CEFCCC44(v248, v246, v247);
            goto LABEL_248;
          }

          v379 = v395;
          sub_1CEFE55D0(v245, v395, &unk_1EC4BFD90, &unk_1CFA134F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_1CF9FA440;
          v380 = *v379;
          v381 = *(v379 + 8);
          *(v114 + 32) = 8;
          *(v114 + 40) = v380;
          *(v114 + 56) = 0;
          *(v114 + 64) = 0;
          *(v114 + 48) = v381;
          *(v114 + 72) = 0;
          v382 = *(v243 + 18);
          *(v114 + 80) = 8;
          *(v114 + 88) = v382;
          *(v114 + 104) = 0;
          *(v114 + 112) = 0;
          *(v114 + 96) = 256;
          *(v114 + 120) = 3;
          v383 = v382;

          v332 = v379;
          v330 = &unk_1EC4BFD90;
          v331 = &unk_1CFA134F0;
LABEL_245:
          sub_1CEFCCC44(v332, v330, v331);
          goto LABEL_106;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v323 = swift_dynamicCastClass();
        if (v323)
        {
          if (*(v323 + 112) != 3)
          {
LABEL_248:

            goto LABEL_249;
          }

          v324 = v323;
          v492 = *(v323 + 96);
          v325 = v492;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
          if ((swift_dynamicCast() & 1) == 0)
          {
            sub_1CF480600(&v465);
            v489 = v471;
            v490 = v472;
            v485 = v467;
            v486 = v468;
            v487 = v469;
            v488 = v470;
            v483 = v465;
            v484 = v466;
            v480 = v471;
            v481 = v472;
            v476 = v467;
            v477 = v468;
            v478 = v469;
            v479 = v470;
            v491 = v473;
            v482 = v473;
            v474 = v465;
            v475 = v466;
            v246 = &unk_1EC4BFE40;
            v247 = &unk_1CFA05530;
            v248 = &v474;
            goto LABEL_247;
          }

          nullsub_1(&v483);
          v480 = v489;
          v481 = v490;
          v482 = v491;
          v476 = v485;
          v477 = v486;
          v478 = v487;
          v479 = v488;
          v474 = v483;
          v475 = v484;
          if ((*(v324 + 168) & 3) != 0)
          {
            v462 = v489;
            v463 = v490;
            v458 = v485;
            v459 = v486;
            v460 = v487;
            v461 = v488;
            v456 = v483;
            v457 = v484;
            v471 = v489;
            v472 = v490;
            v467 = v485;
            v468 = v486;
            v469 = v487;
            v470 = v488;
            v464 = v491;
            v473 = v491;
            v465 = v483;
            v466 = v484;
            if (sub_1CF2B971C(&v465) == 1)
            {
              v326 = nullsub_1(&v456);
              v327 = *(v326 + 24);
              v449 = v476;
              v450 = v477;
              v455 = v482;
              v453 = v480;
              v454 = v481;
              v451 = v478;
              v452 = v479;
              v447 = v474;
              v448 = v475;
              sub_1CEFCCBDC(&v447, v445, &unk_1EC4BE320, &unk_1CFA08B50);

              sub_1CF480620(*(v326 + 48), *(v326 + 56));

              v328 = *v326;
              v329 = *(v326 + 8);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
              v114 = swift_allocObject();
              *(v114 + 16) = xmmword_1CF9FA450;
              *(v114 + 32) = 1024;
              *(v114 + 40) = v328;
              *(v114 + 56) = 0;
              *(v114 + 64) = 0;
              *(v114 + 48) = v329;
              *(v114 + 72) = 0;

              v330 = &unk_1EC4BFE40;
              v331 = &unk_1CFA05530;
              v332 = &v474;
              goto LABEL_245;
            }

            v445[6] = v462;
            v445[7] = v463;
            v446 = v464;
            v445[2] = v458;
            v445[3] = v459;
            v445[4] = v460;
            v445[5] = v461;
            v445[0] = v456;
            v445[1] = v457;
            v453 = v480;
            v454 = v481;
            v455 = v482;
            v449 = v476;
            v450 = v477;
            v451 = v478;
            v452 = v479;
            v447 = v474;
            v448 = v475;
            sub_1CEFCCBDC(&v447, &v444, &unk_1EC4BE320, &unk_1CFA08B50);
            sub_1CEFCCC44(v445, &unk_1EC4BE320, &unk_1CFA08B50);
          }

          sub_1CEFCCC44(&v474, &unk_1EC4BFE40, &unk_1CFA05530);
LABEL_249:
          v182 = v110;
LABEL_63:
          sub_1CEFCCC44(v182, &qword_1EC4BE710, &qword_1CF9FE5A8);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF80, &unk_1CF9FAE70);
        v364 = swift_dynamicCastClass();
        if (v364)
        {
          v365 = v364;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_1CF9FA450;
          v366 = *(v365 + 144);
          v367 = *(v365 + 152);
          *(v114 + 32) = 1024;
          *(v114 + 40) = v366;
          *(v114 + 56) = 0;
          *(v114 + 64) = 0;
          *(v114 + 48) = v367;
          *(v114 + 72) = 7;
          goto LABEL_105;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE60, &qword_1CF9FAE20);
        v384 = swift_dynamicCastClass();
        if (v384)
        {
          v144 = v384;
          goto LABEL_252;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
        v392 = swift_dynamicCastClass();
        if (v392)
        {
          v144 = v392;
          if ((*(v392 + 136) & 0x2140) == 0)
          {
            goto LABEL_248;
          }

LABEL_252:
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
          v145 = swift_allocObject();
          v114 = v145;
          *(v145 + 16) = xmmword_1CF9FA450;
          v146 = 256;
          goto LABEL_29;
        }

LABEL_12:

        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF58, &qword_1CF9FB448);
      v207 = swift_dynamicCastClass();
      if (v207)
      {
        v208 = v207;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        v209 = *(v208 + 144);
        *(v114 + 32) = 16;
        *(v114 + 40) = v209;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 48) = 256;
        *(v114 + 72) = 0;
        goto LABEL_104;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
      v279 = swift_dynamicCastClass();
      if (!v279)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
        v337 = swift_dynamicCastClass();
        if (v337)
        {
          v278 = v337;
LABEL_220:
          sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
          v338 = *(v278 + 144);
          v339 = *(v278 + 152);
          v114 = sub_1CF1F81B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v341 = *(v114 + 16);
          v340 = *(v114 + 24);
          if (v341 >= v340 >> 1)
          {
            v114 = sub_1CF1F81B0((v340 > 1), v341 + 1, 1, v114);
          }

          *(v114 + 16) = v341 + 1;
          v342 = v114 + 48 * v341;
          *(v342 + 32) = 8;
          *(v342 + 40) = v338;
          *(v342 + 56) = 0;
          *(v342 + 64) = 0;
          *(v342 + 48) = v339;
          *(v342 + 72) = 4;
          if ((*(v278 + 176) & 3) == 0)
          {

            return v114;
          }

          v343 = *(*v278 + 672);
          swift_beginAccess();
          v344 = v278 + v343;
          v345 = v401;
          sub_1CEFCCBDC(v344, v401, &unk_1EC4BFF10, &unk_1CFA055E0);

          if ((*(v407 + 48))(v345, 1, v408) == 1)
          {
            v157 = &unk_1EC4BFF10;
            v158 = &unk_1CFA055E0;
            v141 = v345;
          }

          else
          {
            v356 = v402;
            sub_1CEFE55D0(v345, v402, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
            v358 = *v356;
            v357 = *(v356 + 8);
            v359 = *(v356 + 16);
            v360 = *(v114 + 16);
            v361 = *(v114 + 24);
            v362 = v358;

            if (v360 >= v361 >> 1)
            {
              v114 = sub_1CF1F81B0((v361 > 1), v360 + 1, 1, v114);
            }

            *(v114 + 16) = v360 + 1;
            v363 = v114 + 48 * v360;
            *(v363 + 32) = 1024;
            *(v363 + 40) = v358;
            *(v363 + 48) = 256;
            *(v363 + 56) = v357;
            *(v363 + 64) = v359;
            *(v363 + 72) = 2;
            v157 = &qword_1EC4BE9F8;
            v158 = &unk_1CF9FEFE0;
            v141 = v402;
          }

          goto LABEL_199;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v368 = swift_dynamicCastClass();
        if (v368)
        {
          v369 = v368;
          if ((*(v368 + 136) & 0x2140) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
            v114 = swift_allocObject();
            *(v114 + 16) = xmmword_1CF9FA440;
            v370 = *(v369 + 144);
            *(v114 + 32) = 2;
            *(v114 + 40) = v370;
            *(v114 + 48) = 256;
            *(v114 + 56) = 0;
            *(v114 + 64) = 0;
            *(v114 + 72) = 2;
            *(v114 + 80) = 256;
            *(v114 + 88) = v370;
            *(v114 + 104) = 0;
            *(v114 + 112) = 0;
            *(v114 + 96) = 256;
            *(v114 + 120) = 0;
            v371 = v370;
            goto LABEL_105;
          }

          goto LABEL_248;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDE28, &qword_1CF9FB1F8);
        v386 = swift_dynamicCastClass();
        if (!v386)
        {
          goto LABEL_12;
        }

        v387 = v386;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FA450;
        v209 = *(v387 + 144);
        *(v114 + 32) = 8;
        *(v114 + 40) = v209;
        *(v114 + 56) = 0;
        *(v114 + 64) = 0;
        *(v114 + 48) = 256;
        *(v114 + 72) = 3;
LABEL_104:
        v210 = v209;
        goto LABEL_105;
      }

      v206 = v279;
LABEL_157:
      sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v280 = *(*v206 + 664);
      swift_beginAccess();
      v281 = v206 + v280;
      v282 = v406;
      sub_1CEFCCBDC(v281, v406, &unk_1EC4BFF10, &unk_1CFA055E0);
      if ((*(v407 + 48))(v282, 1, v408) != 1)
      {
        v285 = v403;
        sub_1CEFE55D0(v282, v403, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_1CF9FC3C0;
        v286 = *v285;
        v287 = *(v285 + 8);
        *(v114 + 32) = 1024;
        *(v114 + 40) = v286;
        *(v114 + 48) = 256;
        v288 = *(v285 + 16);
        *(v114 + 56) = v287;
        *(v114 + 64) = v288;
        *(v114 + 72) = 2;
        *(v114 + 80) = 8;
        *(v114 + 88) = v286;
        *(v114 + 104) = 0;
        *(v114 + 112) = 0;
        *(v114 + 96) = 256;
        *(v114 + 120) = 0;
        v289 = *(v206 + 144);
        v290 = *(v206 + 152);
        *(v114 + 128) = 8;
        *(v114 + 136) = v289;
        *(v114 + 144) = v290;
        v291 = v286;

        *(v114 + 145) = 0;
        *(v114 + 168) = 3;
        v141 = v285;
        v157 = &qword_1EC4BE9F8;
        v158 = &unk_1CF9FEFE0;
        goto LABEL_199;
      }

      sub_1CEFCCC44(v282, &unk_1EC4BFF10, &unk_1CFA055E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      *(v114 + 32) = 8;
      v283 = *(v206 + 144);
      v284 = *(v206 + 152);

      *(v114 + 40) = v283;
      *(v114 + 48) = v284;
      *(v114 + 49) = 0;
      *(v114 + 72) = 3;
      return v114;
    case 0x17u:
      v131 = v424;
      sub_1CEFCCBDC(v110, v424, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((*v131 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if ((v409 & 0x4000) != 0)
      {
        return &unk_1F4BED3D0;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }

    case 0x18u:
      v125 = v425;
      sub_1CEFCCBDC(v110, v425, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*v125)
      {
        goto LABEL_62;
      }

LABEL_19:
      sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
      return &unk_1F4BED380;
    case 0x19u:
      v162 = v421;
      sub_1CEFCCBDC(v110, v421, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v162 + 9))
      {
        goto LABEL_57;
      }

      if (v441)
      {
        goto LABEL_62;
      }

      v122 = *(v162 + 8);
      v121 = *v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v123 = swift_allocObject();
      v114 = v123;
      *(v123 + 16) = xmmword_1CF9FA450;
      v124 = 0x4000;
      goto LABEL_40;
    case 0x1Au:
      sub_1CEFCCBDC(v110, v86, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v163 = *v86;
      v164 = v86[8];
      if (v86[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v123 = swift_allocObject();
        v114 = v123;
        *(v123 + 16) = xmmword_1CF9FA450;
        *(v123 + 32) = 4096;
        *(v123 + 40) = v163;
        *(v123 + 64) = 0;
        *(v123 + 48) = v164 | 0x100;
        goto LABEL_43;
      }

      v127 = *v86;
      v128 = v86[8];
      v181 = 0;
      goto LABEL_61;
    case 0x1Bu:
      v162 = v419;
      sub_1CEFCCBDC(v110, v419, &qword_1EC4BE710, &qword_1CF9FE5A8);
      if (*(v162 + 9))
      {
LABEL_57:
        v127 = *v162;
        v128 = *(v162 + 8);
        goto LABEL_60;
      }

      if (v441)
      {
        goto LABEL_62;
      }

      v203 = *(v162 + 8);
      v204 = *v162;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v118 = swift_allocObject();
      v114 = v118;
      *(v118 + 16) = xmmword_1CF9FA450;
      *(v118 + 32) = 2;
      *(v118 + 40) = v204;
      *(v118 + 56) = 0;
      *(v118 + 64) = 0;
      *(v118 + 48) = v203;
      v133 = 5;
      goto LABEL_66;
    case 0x1Cu:
      v178 = v430;
      sub_1CEFCCBDC(v110, v430, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v179 = &unk_1EC4BF650;
        v180 = &unk_1CF9FCB40;
LABEL_55:
        sub_1CEFCCC44(v178, v179, v180);
        goto LABEL_62;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_213;
          }

          v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
          v250 = v249[12];
          v251 = v110;
          v252 = v249[16];
          v253 = (v178 + v249[20]);

          v201 = *v178;
          v202 = *(v178 + 8);
          v254 = v253[5];
          v255 = v253[6];
          v256 = v253[7];
          sub_1CF1D56D0(*v253, v253[1], v253[2], v253[3], v253[4]);
          v257 = *(v178 + v252);
          v110 = v251;
        }

        else
        {
          v336 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
          v250 = *(v336 + 48);

          v201 = *v178;
          v202 = *(v178 + 8);
        }

        sub_1CEFCCC44(v178 + v250, &qword_1EC4C1B40, &unk_1CF9FCB70);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
          {
            v201 = *v178;
            v202 = *(v178 + 8);
            goto LABEL_211;
          }

LABEL_213:
          v179 = &unk_1EC4BFCC0;
          v180 = &unk_1CF9FCB50;
          goto LABEL_55;
        }

        v201 = *v178;
        v202 = *(v178 + 8);
        v333 = *(v178 + 64);
        v334 = *(v178 + 72);
        v335 = *(v178 + 80);
        sub_1CF1D56D0(*(v178 + 24), *(v178 + 32), *(v178 + 40), *(v178 + 48), *(v178 + 56));
      }

LABEL_211:
      sub_1CEFCCC44(v110, &qword_1EC4BE710, &qword_1CF9FE5A8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v196 = swift_allocObject();
      v114 = v196;
      *(v196 + 16) = xmmword_1CF9FA450;
      *(v196 + 32) = 0x2000;
      *(v196 + 40) = v201;
      *(v196 + 64) = 0;
      *(v196 + 48) = v202;
LABEL_212:
      *(v196 + 56) = 0;
      *(v196 + 72) = 0;
      return v114;
    case 0x1Fu:
      v115 = v427;
      sub_1CEFCCBDC(v110, v427, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v116 = *v115;
      v117 = *(v115 + 8);
      if (*(v115 + 9))
      {
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v118 = swift_allocObject();
      v114 = v118;
      *(v118 + 16) = xmmword_1CF9FA450;
      v119 = 0x4000;
      goto LABEL_65;
    case 0x21u:
      v132 = v423;
      sub_1CEFCCBDC(v110, v423, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v121 = *v132;
      v122 = *(v132 + 8);
      if (*(v132 + 9))
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v118 = swift_allocObject();
      v114 = v118;
      *(v118 + 16) = xmmword_1CF9FA450;
      *(v118 + 32) = 8;
      *(v118 + 40) = v121;
      *(v118 + 56) = 0;
      *(v118 + 64) = 0;
      *(v118 + 48) = v122;
      v133 = 3;
      goto LABEL_66;
    case 0x22u:
      sub_1CEFCCBDC(v110, v94, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v121 = *v94;
      v122 = v94[8];
      if (v94[9])
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v149 = v110;
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_1CF9FA450;
      *(v114 + 32) = 1024;
      *(v114 + 40) = v121;
      *(v114 + 56) = 0;
      *(v114 + 64) = 0;
      *(v114 + 48) = v122;
      *(v114 + 72) = 7;
      goto LABEL_99;
    case 0x23u:
      v120 = v426;
      sub_1CEFCCBDC(v110, v426, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v121 = *v120;
      v122 = *(v120 + 8);
      if (*(v120 + 9))
      {
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v123 = swift_allocObject();
      v114 = v123;
      *(v123 + 16) = xmmword_1CF9FA450;
      v124 = 0x80000;
      goto LABEL_40;
    case 0x28u:
      v130 = v428;
      sub_1CEFCCBDC(v110, v428, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v121 = *v130;
      v122 = *(v130 + 8);
      if (*(v130 + 9))
      {
LABEL_59:
        v127 = v121;
        v128 = v122;
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
      v123 = swift_allocObject();
      v114 = v123;
      *(v123 + 16) = xmmword_1CF9FA450;
      v124 = 1024;
LABEL_40:
      *(v123 + 32) = v124;
      *(v123 + 40) = v121;
      *(v123 + 64) = 0;
      *(v123 + 48) = v122;
LABEL_43:
      *(v123 + 56) = 0;
      *(v123 + 72) = 0;
      goto LABEL_198;
    case 0x2Au:
      v126 = v429;
      sub_1CEFCCBDC(v110, v429, &qword_1EC4BE710, &qword_1CF9FE5A8);
      v116 = *v126;
      v117 = *(v126 + 8);
      if ((*(v126 + 9) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C01E0, &unk_1CFA056F0);
        v118 = swift_allocObject();
        v114 = v118;
        *(v118 + 16) = xmmword_1CF9FA450;
        v119 = 512;
LABEL_65:
        *(v118 + 32) = v119;
        *(v118 + 40) = v116;
        *(v118 + 48) = v117;
        *(v118 + 49) = 0;
        *(v118 + 56) = 0;
        *(v118 + 64) = 0;
        v133 = 1;
LABEL_66:
        *(v118 + 72) = v133;
        goto LABEL_198;
      }

LABEL_10:
      v127 = v116;
      v128 = v117;
LABEL_60:
      v181 = 1;
LABEL_61:
      sub_1CEFD0994(v127, v128, v181);
LABEL_62:
      v182 = v110;
      goto LABEL_63;
    default:
      goto LABEL_62;
  }
}

void *sub_1CF036ED4(int a1, uint64_t a2)
{
  v390 = a2;
  v423 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFF08, &qword_1CFA055D8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v383 = &v376 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v387 = &v376 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD90, &unk_1CFA134F0);
  v388 = *(v7 - 8);
  v389 = v7;
  v8 = *(v388 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v384 = &v376 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v385 = &v376 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF10, &unk_1CFA055E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v380 = &v376 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0);
  v378 = *(v15 - 8);
  v379 = v15;
  v16 = *(v378 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v377 = (&v376 - v17);
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v419 = *(v422 - 8);
  v18 = *(v419 + 64);
  v19 = MEMORY[0x1EEE9AC00](v422);
  v382 = &v376 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v394 = &v376 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v386 = &v376 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v393 = &v376 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v398 = &v376 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v396 = &v376 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v414 = &v376 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v411 = *(v32 - 8);
  v412 = v32;
  v33 = *(v411 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v397 = &v376 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v413 = &v376 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v381 = &v376 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v392 = &v376 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v416 = &v376 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v391 = &v376 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v418 = &v376 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v395 = &v376 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v420 = &v376 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v421 = &v376 - v53;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E20, &unk_1CFA05350);
  v54 = *(*(v424 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v424);
  v409 = &v376 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v408 = &v376 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v407 = &v376 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v406 = &v376 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v415 = &v376 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v405 = &v376 - v66;
  v67 = MEMORY[0x1EEE9AC00](v65);
  v404 = &v376 - v68;
  v69 = MEMORY[0x1EEE9AC00](v67);
  v403 = &v376 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v401 = (&v376 - v72);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v400 = &v376 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v410 = &v376 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v399 = (&v376 - v78);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v81 = &v376 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79);
  v84 = &v376 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v376 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v402 = &v376 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v92 = &v376 - v91;
  v93 = MEMORY[0x1EEE9AC00](v90);
  v95 = (&v376 - v94);
  v96 = MEMORY[0x1EEE9AC00](v93);
  v417 = &v376 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v100 = &v376 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98);
  v103 = &v376 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101);
  v106 = (&v376 - v105);
  MEMORY[0x1EEE9AC00](v104);
  v108 = &v376 - v107;
  sub_1CEFCCBDC(v425, &v376 - v107, &unk_1EC4C4E20, &unk_1CFA05350);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1CEFCCBDC(v108, v106, &unk_1EC4C4E20, &unk_1CFA05350);
      v109 = v108;
      v110 = *v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1CF9FA450;
      *(v111 + 32) = 2;
      *(v111 + 40) = v110;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      *(v111 + 72) = 1;
      v112 = v109;
      goto LABEL_34;
    case 3u:
      sub_1CEFCCBDC(v108, v103, &unk_1EC4C4E20, &unk_1CFA05350);
      v149 = *v103;
      v150 = v103[8];
      if (v103[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FA450;
        *(v111 + 32) = 2;
        *(v111 + 40) = v149;
        *(v111 + 48) = v150;
        *(v111 + 49) = 1;
        *(v111 + 56) = 0;
        *(v111 + 64) = 0;
        *(v111 + 72) = 2;
        goto LABEL_201;
      }

      v125 = *v103;
      v126 = v103[8];
      goto LABEL_86;
    case 5u:
      v133 = v402;
      sub_1CEFCCBDC(v108, v402, &unk_1EC4C4E20, &unk_1CFA05350);
      v134 = *(v133 + 16);
      v135 = *(v133 + 24);
      if (*(v133 + 25))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FA450;
        *(v111 + 32) = 16;
        *(v111 + 40) = v134;
        *(v111 + 56) = 0;
        *(v111 + 64) = 0;
        *(v111 + 48) = v135 | 0x100;
        *(v111 + 72) = 0;
        sub_1CF1E53F8(*v133, *(v133 + 8), *(v133 + 9));
        goto LABEL_201;
      }

      sub_1CF1E53F8(*(v133 + 16), *(v133 + 24), 0);
      v125 = *v133;
      v127 = *(v133 + 9);
      v126 = *(v133 + 8);
      goto LABEL_87;
    case 6u:
      v162 = v417;
      sub_1CEFCCBDC(v108, v417, &unk_1EC4C4E20, &unk_1CFA05350);
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC8, &qword_1CFA05308);
      v164 = *(v163 + 48);
      v165 = *(v162 + *(v163 + 64));
      if ((*(v411 + 48))(v162, 1, v412) == 1)
      {
        sub_1CEFCCC44(v162 + v164, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        sub_1CEFCCC44(v162, &unk_1EC4BFBB0, &qword_1CF9FCB90);
        goto LABEL_88;
      }

      v190 = v397;
      sub_1CEFE55D0(v162, v397, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      if ((v165 & 2) != 0)
      {
        v218 = v108;
        v219 = *(v190 + 8);
        v220 = v219;
        v111 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v222 = *(v111 + 16);
        v221 = *(v111 + 24);
        if (v222 >= v221 >> 1)
        {
          v111 = sub_1CF1F818C((v221 > 1), v222 + 1, 1, v111);
        }

        *(v111 + 16) = v222 + 1;
        v223 = v111 + 48 * v222;
        *(v223 + 32) = 4;
        *(v223 + 40) = v219;
        *(v223 + 56) = 0;
        *(v223 + 64) = 0;
        *(v223 + 48) = 0;
        *(v223 + 72) = 0;
        v108 = v218;
      }

      else
      {
        v111 = MEMORY[0x1E69E7CC0];
      }

      if ((v165 & 3) != 0)
      {
        v224 = *v190;
        v225 = *v190;
        v226 = v108;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
        }

        v228 = *(v111 + 16);
        v227 = *(v111 + 24);
        v229 = v228 + 1;
        if (v228 >= v227 >> 1)
        {
          v111 = sub_1CF1F818C((v227 > 1), v228 + 1, 1, v111);
        }

        *(v111 + 16) = v229;
        v230 = v111 + 48 * v228;
        *(v230 + 32) = 1024;
        *(v230 + 40) = v224;
        *(v230 + 56) = 0;
        *(v230 + 64) = 0;
        *(v230 + 48) = 0;
        *(v230 + 72) = 5;
        v231 = *(v190 + 8);
        v233 = *(v190 + 80);
        v232 = *(v190 + 88);
        v234 = *(v111 + 24);
        v235 = v228 + 2;
        v236 = v231;

        if (v229 >= v234 >> 1)
        {
          v111 = sub_1CF1F818C((v234 > 1), v235, 1, v111);
        }

        *(v111 + 16) = v235;
        v237 = v111 + 48 * v229;
        *(v237 + 32) = 1024;
        *(v237 + 40) = v231;
        *(v237 + 48) = 0;
        *(v237 + 56) = v233;
        *(v237 + 64) = v232;
        *(v237 + 72) = 1;
        v108 = v226;
        v190 = v397;
        v162 = v417;
      }

      sub_1CEFCCC44(v190, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      v238 = &unk_1EC4BFBB0;
      v239 = &qword_1CF9FCB90;
      v240 = v162 + v164;
      goto LABEL_200;
    case 7u:
      v425 = v108;
      sub_1CEFCCBDC(v108, v100, &unk_1EC4C4E20, &unk_1CFA05350);
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBE0, &unk_1CFA05320);
      v167 = *(v166 + 48);
      v168 = *&v100[*(v166 + 64)];
      v169 = v421;
      sub_1CEFE55D0(v100, v421, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v170 = &v100[v167];
      v171 = v420;
      sub_1CEFE55D0(v170, v420, &qword_1EC4C1B40, &unk_1CF9FCB70);
      if ((v168 & 3) != 0)
      {
        v172 = v395;
        sub_1CEFCCBDC(v169, v395, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v173 = v419;
        v174 = v422;
        v175 = (*(v419 + 48))(v172, 1, v422);
        v176 = v416;
        v177 = v418;
        if (v175 == 1)
        {
          sub_1CEFCCC44(v172, &qword_1EC4C1B40, &unk_1CF9FCB70);
          v111 = MEMORY[0x1E69E7CC0];
          goto LABEL_147;
        }

        v205 = v396;
        sub_1CEFE55D0(v172, v396, &unk_1EC4BE360, &qword_1CF9FE650);
        if (*(v205 + *(v174 + 48)) == 1)
        {
          v206 = *v205;
          v207 = *(v205 + 8) | 0x100;
          v111 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v209 = *(v111 + 16);
          v208 = *(v111 + 24);
          v210 = v209 + 1;
          if (v209 >= v208 >> 1)
          {
            v111 = sub_1CF1F818C((v208 > 1), v209 + 1, 1, v111);
          }

          *(v111 + 16) = v210;
          v211 = v111 + 48 * v209;
          *(v211 + 32) = 2;
          *(v211 + 40) = v206;
          *(v211 + 56) = 0;
          *(v211 + 64) = 0;
          *(v211 + 48) = v207;
          *(v211 + 72) = 2;
          if (v423)
          {
            v212 = *(v205 + 16);
            v213 = *(v205 + 24) | 0x100;
            v214 = *(v111 + 24);
            if (v210 >= v214 >> 1)
            {
              v111 = sub_1CF1F818C((v214 > 1), v209 + 2, 1, v111);
            }

            *(v111 + 16) = v209 + 2;
            v215 = v111 + 48 * v210;
            *(v215 + 32) = 2;
            *(v215 + 40) = v212;
            *(v215 + 48) = v213;
            *(v215 + 56) = 0;
            *(v215 + 64) = 0;
            *(v215 + 72) = 6;
          }
        }

        else
        {
          v111 = MEMORY[0x1E69E7CC0];
        }

        v253 = *(v205 + 16);
        v255 = *(v205 + 128);
        v254 = *(v205 + 136);
        v256 = *(v205 + 24) | 0x100;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
        }

        v258 = *(v111 + 16);
        v257 = *(v111 + 24);
        if (v258 >= v257 >> 1)
        {
          v111 = sub_1CF1F818C((v257 > 1), v258 + 1, 1, v111);
        }

        *(v111 + 16) = v258 + 1;
        v259 = v111 + 48 * v258;
        *(v259 + 32) = 1024;
        *(v259 + 40) = v253;
        *(v259 + 48) = v256;
        *(v259 + 56) = v255;
        *(v259 + 64) = v254;
        *(v259 + 72) = 2;
        sub_1CEFCCC44(v396, &unk_1EC4BE360, &qword_1CF9FE650);
        v171 = v420;
        v169 = v421;
        v174 = v422;
        v173 = v419;
      }

      else
      {
        v111 = MEMORY[0x1E69E7CC0];
        v174 = v422;
        v173 = v419;
        v176 = v416;
      }

      v177 = v418;
LABEL_147:
      sub_1CEFCCBDC(v171, v177, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v260 = *(v173 + 48);
      if (v260(v177, 1, v174) == 1)
      {
        v261 = &qword_1EC4C1B40;
        v262 = &unk_1CF9FCB70;
        v263 = v177;
LABEL_166:
        sub_1CEFCCC44(v263, v261, v262);
        goto LABEL_167;
      }

      v264 = v177;
      v265 = v398;
      sub_1CEFE55D0(v264, v398, &unk_1EC4BE360, &qword_1CF9FE650);
      if ((v423 & 1) == 0)
      {
        v261 = &unk_1EC4BE360;
        v262 = &qword_1CF9FE650;
        v263 = v265;
        goto LABEL_166;
      }

      if ((v168 & 0x12) == 0)
      {
        v261 = &unk_1EC4BE360;
        v262 = &qword_1CF9FE650;
        v263 = v398;
        goto LABEL_166;
      }

      v266 = v398;
      v267 = (v398 + *(v174 + 48));
      if (*v267 == 2)
      {
        goto LABEL_218;
      }

      if (v267[*(type metadata accessor for ItemMetadata() + 80)] == 1)
      {
        v266 = v398;
LABEL_218:
        sub_1CEFCCC44(v266, &unk_1EC4BE360, &qword_1CF9FE650);
        goto LABEL_167;
      }

      v329 = *(v398 + 16);
      v330 = *(v398 + 24) | 0x100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
      }

      v332 = *(v111 + 16);
      v331 = *(v111 + 24);
      if (v332 >= v331 >> 1)
      {
        v111 = sub_1CF1F818C((v331 > 1), v332 + 1, 1, v111);
      }

      *(v111 + 16) = v332 + 1;
      v333 = v111 + 48 * v332;
      *(v333 + 32) = 16;
      *(v333 + 40) = v329;
      *(v333 + 56) = 0;
      *(v333 + 64) = 0;
      *(v333 + 48) = v330;
      *(v333 + 72) = 0;
      v169 = v421;
      v334 = v381;
      sub_1CEFCCBDC(v421, v381, &qword_1EC4C1B40, &unk_1CF9FCB70);
      v174 = v422;
      if (v260(v334, 1, v422) == 1)
      {
        sub_1CEFCCC44(v398, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v334, &qword_1EC4C1B40, &unk_1CF9FCB70);
        v176 = v416;
        goto LABEL_167;
      }

      v350 = v334;
      v351 = v382;
      sub_1CEFE55D0(v350, v382, &unk_1EC4BE360, &qword_1CF9FE650);
      v352 = *(v351 + 16);
      v353 = *(v351 + 24);
      v354 = *(v398 + 16);
      v355 = *(v398 + 24);
      if (*(v351 + 24))
      {
        v176 = v416;
        if (v353 == 1)
        {
          if (v355 != 1 || v352 != v354)
          {
LABEL_278:
            v368 = v353 | 0x100;
            v370 = *(v111 + 16);
            v369 = *(v111 + 24);
            if (v370 >= v369 >> 1)
            {
              v111 = sub_1CF1F818C((v369 > 1), v370 + 1, 1, v111);
            }

            *(v111 + 16) = v370 + 1;
            v371 = v111 + 48 * v370;
            *(v371 + 32) = 16;
            *(v371 + 40) = v352;
            *(v371 + 56) = 0;
            *(v371 + 64) = 0;
            *(v371 + 48) = v368;
            *(v371 + 72) = 0;
            sub_1CEFCCC44(v382, &unk_1EC4BE360, &qword_1CF9FE650);
            sub_1CEFCCC44(v398, &unk_1EC4BE360, &qword_1CF9FE650);
            v169 = v421;
            v174 = v422;
            v176 = v416;
LABEL_167:
            if ((v168 & 2) != 0)
            {
              v284 = v391;
              sub_1CEFCCBDC(v171, v391, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v260(v284, 1, v174) == 1)
              {
                sub_1CEFCCC44(v284, &qword_1EC4C1B40, &unk_1CF9FCB70);
              }

              else
              {
                v294 = v284;
                v295 = v393;
                sub_1CEFE55D0(v294, v393, &unk_1EC4BE360, &qword_1CF9FE650);
                v296 = *(v295 + 16);
                v297 = *(v295 + 24) | 0x100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
                }

                v299 = *(v111 + 16);
                v298 = *(v111 + 24);
                if (v299 >= v298 >> 1)
                {
                  v111 = sub_1CF1F818C((v298 > 1), v299 + 1, 1, v111);
                }

                *(v111 + 16) = v299 + 1;
                v300 = v111 + 48 * v299;
                *(v300 + 32) = 12;
                *(v300 + 40) = v296;
                *(v300 + 56) = 0;
                *(v300 + 64) = 0;
                *(v300 + 48) = v297;
                *(v300 + 72) = 0;
                sub_1CEFCCC44(v393, &unk_1EC4BE360, &qword_1CF9FE650);
                v174 = v422;
              }

              v301 = v392;
              sub_1CEFCCBDC(v169, v392, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v260(v301, 1, v174) == 1)
              {
                sub_1CEFCCC44(v171, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v171 = v169;
                v169 = v301;
                goto LABEL_199;
              }

              v302 = v394;
              sub_1CEFE55D0(v301, v394, &unk_1EC4BE360, &qword_1CF9FE650);
              v303 = *(v302 + 16);
              v304 = *(v302 + 24) | 0x100;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
              }

              v306 = *(v111 + 16);
              v305 = *(v111 + 24);
              if (v306 >= v305 >> 1)
              {
                v111 = sub_1CF1F818C((v305 > 1), v306 + 1, 1, v111);
              }

              *(v111 + 16) = v306 + 1;
              v307 = v111 + 48 * v306;
              *(v307 + 32) = 8;
              *(v307 + 40) = v303;
              *(v307 + 56) = 0;
              *(v307 + 64) = 0;
              *(v307 + 48) = v304;
              *(v307 + 72) = 0;
              v293 = v394;
            }

            else
            {
              sub_1CEFCCBDC(v171, v176, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if (v260(v176, 1, v174) == 1)
              {
                sub_1CEFCCC44(v171, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v171 = v169;
                v169 = v176;
LABEL_199:
                v108 = v425;
                sub_1CEFCCC44(v171, &qword_1EC4C1B40, &unk_1CF9FCB70);
                v240 = v169;
                v238 = &qword_1EC4C1B40;
                v239 = &unk_1CF9FCB70;
LABEL_200:
                sub_1CEFCCC44(v240, v238, v239);
LABEL_201:
                v154 = &unk_1EC4C4E20;
                v155 = &unk_1CFA05350;
                v112 = v108;
                goto LABEL_202;
              }

              v285 = v386;
              sub_1CEFE55D0(v176, v386, &unk_1EC4BE360, &qword_1CF9FE650);
              v286 = (v168 & 0x4000) != 0 && *(v285 + *(v174 + 48)) == 1;
              v287 = v168 & 0xFFFFFFFFFFFFBFFDLL;
              if (!v286)
              {
                v287 = v168;
              }

              if ((v287 & 0x10800) != 0)
              {
                v287 &= 0xFFFFFFFFFFFEF7FDLL;
              }

              if (v287)
              {
                v288 = *(v285 + 16);
                v289 = *(v285 + 24) | 0x100;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
                }

                v291 = *(v111 + 16);
                v290 = *(v111 + 24);
                if (v291 >= v290 >> 1)
                {
                  v111 = sub_1CF1F818C((v290 > 1), v291 + 1, 1, v111);
                }

                *(v111 + 16) = v291 + 1;
                v292 = v111 + 48 * v291;
                *(v292 + 32) = 8;
                *(v292 + 40) = v288;
                *(v292 + 56) = 0;
                *(v292 + 64) = 0;
                *(v292 + 48) = v289;
                *(v292 + 72) = 0;
              }

              v293 = v285;
            }

            sub_1CEFCCC44(v293, &unk_1EC4BE360, &qword_1CF9FE650);
            goto LABEL_199;
          }
        }

        else if (v352)
        {
          if (v355 != 2 || v354 != 1)
          {
            goto LABEL_278;
          }
        }

        else if (v355 != 2 || v354)
        {
          goto LABEL_278;
        }
      }

      else
      {
        v176 = v416;
        if (*(v398 + 24) || v352 != v354)
        {
          goto LABEL_278;
        }
      }

      v367 = v398;
      sub_1CEFCCC44(v382, &unk_1EC4BE360, &qword_1CF9FE650);
      v266 = v367;
      goto LABEL_218;
    case 8u:
      sub_1CEFCCBDC(v108, v106, &unk_1EC4C4E20, &unk_1CFA05350);
      v136 = v108;
      v137 = &unk_1EC4BFBD0;
      v138 = &unk_1CF9FCBC0;
      v139 = v413;
      sub_1CEFE55D0(v106, v413, &unk_1EC4BFBD0, &unk_1CF9FCBC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1CF9FA450;
      v140 = *v139;
      *(v111 + 32) = 2;
      *(v111 + 40) = v140;
      *(v111 + 48) = 0;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      *(v111 + 72) = 1;
      v141 = v140;
      goto LABEL_33;
    case 9u:
      sub_1CEFCCBDC(v108, v106, &unk_1EC4C4E20, &unk_1CFA05350);
      v136 = v108;
      v137 = &unk_1EC4BE360;
      v138 = &qword_1CF9FE650;
      v139 = v414;
      sub_1CEFE55D0(v106, v414, &unk_1EC4BE360, &qword_1CF9FE650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1CF9FA440;
      v151 = *(v139 + 16);
      v152 = *(v139 + 24);
      *(v111 + 32) = 1024;
      *(v111 + 40) = v151;
      *(v111 + 48) = v152;
      *(v111 + 49) = 1;
      v153 = *(v139 + 136);
      *(v111 + 56) = *(v139 + 128);
      *(v111 + 64) = v153;
      *(v111 + 72) = 2;
      *(v111 + 80) = 8;
      *(v111 + 88) = v151;
      *(v111 + 104) = 0;
      *(v111 + 112) = 0;
      *(v111 + 96) = v152 | 0x100;
      *(v111 + 120) = 0;

LABEL_33:
      sub_1CEFCCC44(v139, v137, v138);
      v112 = v136;
LABEL_34:
      v154 = &unk_1EC4C4E20;
      v155 = &unk_1CFA05350;
      goto LABEL_202;
    case 0xBu:
      v156 = v415;
      sub_1CEFCCBDC(v108, v415, &unk_1EC4C4E20, &unk_1CFA05350);
      v157 = *(v156 + 26);
      if ((*(v156 + 9) & 1) == 0)
      {
        v182 = *v156;
        v183 = *(v156 + 8);
        v111 = MEMORY[0x1E69E7CC0];
        if ((v423 & 1) != 0 && *(v156 + 27) == 2)
        {
          sub_1CF48034C(*v156, *(v156 + 8), 0);
          v111 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v185 = *(v111 + 16);
          v184 = *(v111 + 24);
          if (v185 >= v184 >> 1)
          {
            v111 = sub_1CF1F818C((v184 > 1), v185 + 1, 1, v111);
          }

          *(v111 + 16) = v185 + 1;
          v186 = v111 + 48 * v185;
          *(v186 + 32) = 2;
          *(v186 + 40) = v182;
          *(v186 + 56) = 0;
          *(v186 + 64) = 0;
          *(v186 + 48) = v183;
          *(v186 + 72) = 1;
        }

        if (v157 == 1)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v111 = sub_1CF1F818C(0, *(v111 + 16) + 1, 1, v111);
          }

          v188 = *(v111 + 16);
          v187 = *(v111 + 24);
          if (v188 >= v187 >> 1)
          {
            v111 = sub_1CF1F818C((v187 > 1), v188 + 1, 1, v111);
          }

          *(v111 + 16) = v188 + 1;
          v189 = v111 + 48 * v188;
          *(v189 + 32) = 0x100000;
          *(v189 + 40) = v182;
          *(v189 + 56) = 0;
          *(v189 + 64) = 0;
          *(v189 + 48) = v183;
          *(v189 + 72) = 1;
        }

        else
        {
          sub_1CF1E53F8(v182, v183, 0);
        }

        sub_1CF4804C0(*(v156 + 16), *(v156 + 24));
        goto LABEL_201;
      }

      v158 = *(v156 + 24);
      if (v158 >> 8 > 0xFE)
      {
        sub_1CF1E53F8(*v156, *(v156 + 8), 1);
        sub_1CF4804C0(*(v156 + 16), *(v156 + 24));
        goto LABEL_88;
      }

      if ((v158 & 0x100) != 0)
      {
        v281 = *(v156 + 16);
      }

      else
      {
        v216 = *(v156 + 16);
        if (v157 == 1)
        {
          v217 = *(v156 + 24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1CF9FA450;
          *(v111 + 32) = 0x100000;
          *(v111 + 40) = v216;
          *(v111 + 48) = v217;
          *(v111 + 49) = 0;
          *(v111 + 56) = 0;
          *(v111 + 64) = 0;
          *(v111 + 72) = 1;
          sub_1CF1E53F8(*v156, *(v156 + 8), 1);
          goto LABEL_201;
        }

        v281 = *(v156 + 16);
      }

      sub_1CF4804C0(v281, v158);
      v125 = *v156;
      v127 = *(v156 + 9);
      v126 = *(v156 + 8);
      goto LABEL_87;
    case 0xDu:
      sub_1CEFCCBDC(v108, v95, &unk_1EC4C4E20, &unk_1CFA05350);

      if (*(v95 + 9))
      {
        v125 = *v95;
        v126 = *(v95 + 8);
        v127 = 1;
        goto LABEL_87;
      }

      v196 = *(v95 + 10);
      if ((v196 - 1) < 2)
      {
        v252 = *v95;
        sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FA450;
        *(v111 + 32) = 1024;
        *(v111 + 40) = v252;
        *(v111 + 56) = 0;
        *(v111 + 64) = 0;
        *(v111 + 48) = 0;
        *(v111 + 72) = 7;
        return v111;
      }

      if (!*(v95 + 10) || v196 == 23)
      {
        v197 = *v95;
        sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FA450;
        *(v111 + 32) = 4;
        *(v111 + 40) = v197;
        *(v111 + 56) = 0;
        *(v111 + 64) = 0;
        *(v111 + 48) = 0;
        *(v111 + 72) = 3;
        return v111;
      }

      v125 = *v95;
      v126 = *(v95 + 8);
      goto LABEL_86;
    case 0xEu:
      sub_1CEFCCBDC(v108, v87, &unk_1EC4C4E20, &unk_1CFA05350);
      if (v87[9])
      {
        v125 = *v87;
        v126 = v87[8];
        v127 = 1;
        goto LABEL_87;
      }

      v191 = v87[10];
      if (v191 > 0x17)
      {
        goto LABEL_221;
      }

      if (((1 << v191) & 0x80104B) != 0)
      {
        v192 = *v87;
        sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v193 = swift_allocObject();
        v111 = v193;
        *(v193 + 16) = xmmword_1CF9FA450;
        v194 = 262400;
        goto LABEL_214;
      }

      if (v191 == 2)
      {
        v282 = *v87;
        v283 = v87[8];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v121 = swift_allocObject();
        v111 = v121;
        *(v121 + 16) = xmmword_1CF9FA450;
        *(v121 + 32) = 262912;
        *(v121 + 40) = v282;
        *(v121 + 64) = 0;
        *(v121 + 48) = v283;
        goto LABEL_44;
      }

LABEL_221:
      v125 = *v87;
      v126 = v87[8];
      goto LABEL_86;
    case 0x15u:
      v128 = v401;
      sub_1CEFCCBDC(v108, v401, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v128 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v199 = swift_dynamicCastClass();
      if (v199)
      {
        v200 = v199;
        goto LABEL_158;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
      v268 = swift_dynamicCastClass();
      if (!v268)
      {
        goto LABEL_12;
      }

      v269 = v268;
      goto LABEL_225;
    case 0x16u:
      v142 = v399;
      sub_1CEFCCBDC(v108, v399, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v142 & 0x8000000000000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF18, &qword_1CF9FB3C8);
        v143 = swift_dynamicCastClass();
        if (v143)
        {
          v144 = v143;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v145 = swift_allocObject();
          v111 = v145;
          *(v145 + 16) = xmmword_1CF9FA450;
          v146 = 0x4000;
LABEL_28:
          v147 = *(v144 + 144);
          *(v145 + 32) = v146;
          *(v145 + 40) = v147;
          *(v145 + 56) = 0;
          *(v145 + 64) = 0;
          *(v145 + 48) = 0;
          *(v145 + 72) = 0;
LABEL_29:
          v148 = v147;
LABEL_104:

LABEL_105:
          v154 = &unk_1EC4C4E20;
          v155 = &unk_1CFA05350;
          v112 = v108;
LABEL_202:
          sub_1CEFCCC44(v112, v154, v155);
          return v111;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF88, &unk_1CF9FB490);
        v241 = swift_dynamicCastClass();
        if (v241)
        {
          if ((v423 & 1) == 0 || v241[112] != 3)
          {
            goto LABEL_254;
          }

          v242 = *(*v241 + 664);
          v243 = v241;
          swift_beginAccess();
          v244 = &v243[v242];
          v245 = v380;
          sub_1CEFCCBDC(v244, v380, &unk_1EC4BFF10, &unk_1CFA055E0);
          if ((*(v378 + 48))(v245, 1, v379) == 1)
          {
            v246 = &unk_1EC4BFF10;
            v247 = &unk_1CFA055E0;
            v248 = v245;
LABEL_253:
            sub_1CEFCCC44(v248, v246, v247);
            goto LABEL_254;
          }

          v356 = v377;
          sub_1CEFE55D0(v245, v377, &qword_1EC4BE9F8, &unk_1CF9FEFE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1CF9FA440;
          v357 = *v356;
          *(v111 + 32) = 8;
          *(v111 + 40) = v357;
          *(v111 + 56) = 0;
          *(v111 + 64) = 0;
          *(v111 + 48) = 0;
          *(v111 + 72) = 0;
          v358 = *(v243 + 18);
          v359 = v243[152] | 0x100;
          *(v111 + 80) = 8;
          *(v111 + 88) = v358;
          *(v111 + 104) = 0;
          *(v111 + 112) = 0;
          *(v111 + 96) = v359;
          *(v111 + 120) = 3;
          v360 = v357;

          v318 = v356;
          v316 = &qword_1EC4BE9F8;
          v317 = &unk_1CF9FEFE0;
LABEL_251:
          sub_1CEFCCC44(v318, v316, v317);
          goto LABEL_105;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCD0, &unk_1CF9FEFD0);
        v309 = swift_dynamicCastClass();
        if (v309)
        {
          if (*(v309 + 112) != 3)
          {
LABEL_254:

            goto LABEL_255;
          }

          v310 = v309;
          v446 = *(v309 + 96);
          v311 = v446;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v444 = 0u;
            memset(v445, 0, 40);
            v442 = 0u;
            v443 = 0u;
            v445[40] = -1;
            v439 = 0u;
            v440 = 0u;
            v441[0] = 0u;
            *(v441 + 9) = *&v445[25];
            v437 = 0u;
            v438 = 0u;
            v246 = &qword_1EC4BFE78;
            v247 = &qword_1CFA05558;
            v248 = &v437;
            goto LABEL_253;
          }

          v437 = v442;
          v438 = v443;
          v439 = v444;
          v440 = *v445;
          *(v441 + 9) = *&v445[25];
          v441[0] = *&v445[16];
          if ((*(v310 + 176) & 3) != 0)
          {
            v312 = *(&v438 + 1);
            v313 = v439;
            v314 = v440;
            if (BYTE8(v441[1]) == 1)
            {
              v434 = v444;
              v435 = *v445;
              v436[0] = *&v445[16];
              *(v436 + 9) = *&v445[25];
              v432 = v442;
              v433 = v443;
              v315 = v437;
              sub_1CEFCCBDC(&v432, v427, &qword_1EC4BF270, &qword_1CFA01B70);

              sub_1CF480620(v313, *(&v313 + 1));

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
              v111 = swift_allocObject();
              *(v111 + 16) = xmmword_1CF9FA450;
              *(v111 + 32) = 1024;
              *(v111 + 40) = v315;
              *(v111 + 56) = 0;
              *(v111 + 64) = 0;
              *(v111 + 48) = 0;
              *(v111 + 72) = 0;

              v316 = &qword_1EC4BFE78;
              v317 = &qword_1CFA05558;
              v318 = &v437;
              goto LABEL_251;
            }

            v427[0] = v437;
            v427[1] = v438;
            v427[2] = v439;
            v428 = v440;
            v429 = *&v445[8];
            v430 = *&v445[24];
            v431 = BYTE8(v441[1]);
            v434 = v444;
            v435 = *v445;
            v436[0] = *&v445[16];
            *(v436 + 9) = *&v445[25];
            v432 = v442;
            v433 = v443;
            sub_1CEFCCBDC(&v432, &v426, &qword_1EC4BF270, &qword_1CFA01B70);
            sub_1CEFCCC44(v427, &qword_1EC4BF270, &qword_1CFA01B70);
          }

          sub_1CEFCCC44(&v437, &qword_1EC4BFE78, &qword_1CFA05558);
LABEL_255:
          v195 = v108;
LABEL_89:
          sub_1CEFCCC44(v195, &unk_1EC4C4E20, &unk_1CFA05350);
          return MEMORY[0x1E69E7CC0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF78, &qword_1CF9FB470);
        v344 = swift_dynamicCastClass();
        if (v344)
        {
          v345 = v344;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1CF9FA450;
          v147 = *(v345 + 144);
          *(v111 + 32) = 1024;
          *(v111 + 40) = v147;
          *(v111 + 56) = 0;
          *(v111 + 64) = 0;
          *(v111 + 48) = 0;
          *(v111 + 72) = 7;
          goto LABEL_29;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFE80, &qword_1CF9FB420);
        v361 = swift_dynamicCastClass();
        if (v361)
        {
          v144 = v361;
          goto LABEL_258;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDF80, &qword_1CF9FB478);
        v366 = swift_dynamicCastClass();
        if (v366)
        {
          v144 = v366;
          if ((*(v366 + 136) & 0x2140) == 0)
          {
            goto LABEL_254;
          }

LABEL_258:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v145 = swift_allocObject();
          v111 = v145;
          *(v145 + 16) = xmmword_1CF9FA450;
          v146 = 256;
          goto LABEL_28;
        }

LABEL_12:

        goto LABEL_88;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA48, &qword_1CF9FAE48);
      v201 = swift_dynamicCastClass();
      if (v201)
      {
        v202 = v201;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FA450;
        v203 = *(v202 + 144);
        v204 = *(v202 + 152) | 0x100;
        *(v111 + 32) = 16;
        *(v111 + 40) = v203;
        *(v111 + 56) = 0;
        *(v111 + 64) = 0;
        *(v111 + 48) = v204;
        *(v111 + 72) = 0;
        goto LABEL_104;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA68, &qword_1CF9FAE90);
      v270 = swift_dynamicCastClass();
      if (!v270)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BDA60, &unk_1CF9FCAF0);
        v320 = swift_dynamicCastClass();
        if (v320)
        {
          v269 = v320;
LABEL_225:
          sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
          v321 = *(v269 + 144);
          v322 = v321;
          v111 = sub_1CF1F818C(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v324 = *(v111 + 16);
          v323 = *(v111 + 24);
          if (v324 >= v323 >> 1)
          {
            v111 = sub_1CF1F818C((v323 > 1), v324 + 1, 1, v111);
          }

          *(v111 + 16) = v324 + 1;
          v325 = v111 + 48 * v324;
          *(v325 + 32) = 8;
          *(v325 + 40) = v321;
          *(v325 + 56) = 0;
          *(v325 + 64) = 0;
          *(v325 + 48) = 0;
          *(v325 + 72) = 4;
          if ((*(v269 + 168) & 3) == 0)
          {

            return v111;
          }

          v326 = *(*v269 + 672);
          swift_beginAccess();
          v327 = v269 + v326;
          v328 = v383;
          sub_1CEFCCBDC(v327, v383, &qword_1EC4BFF08, &qword_1CFA055D8);

          if ((*(v388 + 48))(v328, 1, v389) == 1)
          {
            v154 = &qword_1EC4BFF08;
            v155 = &qword_1CFA055D8;
            v112 = v328;
          }

          else
          {
            v335 = v384;
            sub_1CEFE55D0(v328, v384, &unk_1EC4BFD90, &unk_1CFA134F0);
            v336 = *v335;
            v337 = *(v335 + 8);
            v339 = *(v335 + 16);
            v338 = *(v335 + 24);
            v340 = v337 | 0x100;
            v341 = *(v111 + 16);
            v342 = *(v111 + 24);

            if (v341 >= v342 >> 1)
            {
              v111 = sub_1CF1F818C((v342 > 1), v341 + 1, 1, v111);
            }

            *(v111 + 16) = v341 + 1;
            v343 = v111 + 48 * v341;
            *(v343 + 32) = 1024;
            *(v343 + 40) = v336;
            *(v343 + 48) = v340;
            *(v343 + 56) = v339;
            *(v343 + 64) = v338;
            *(v343 + 72) = 2;
            v154 = &unk_1EC4BFD90;
            v155 = &unk_1CFA134F0;
            v112 = v384;
          }

          goto LABEL_202;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C10, &unk_1CFA0CD80);
        v346 = swift_dynamicCastClass();
        if (v346)
        {
          v347 = v346;
          if ((*(v346 + 136) & 0x2140) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_1CF9FA440;
            v348 = *(v347 + 144);
            v349 = *(v347 + 152);
            *(v111 + 32) = 2;
            *(v111 + 40) = v348;
            *(v111 + 48) = v349;
            *(v111 + 49) = 1;
            *(v111 + 56) = 0;
            *(v111 + 64) = 0;
            *(v111 + 72) = 2;
            *(v111 + 80) = 256;
            *(v111 + 88) = v348;
            *(v111 + 104) = 0;
            *(v111 + 112) = 0;
            *(v111 + 96) = v349 | 0x100;
            *(v111 + 120) = 0;
            goto LABEL_104;
          }

          goto LABEL_254;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF20, &unk_1CFA055F0);
        v362 = swift_dynamicCastClass();
        if (v362)
        {
          v363 = v362;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
          v111 = swift_allocObject();
          *(v111 + 16) = xmmword_1CF9FA450;
          v364 = *(v363 + 144);
          v365 = *(v363 + 152) | 0x100;
          *(v111 + 32) = 8;
          *(v111 + 40) = v364;
          *(v111 + 56) = 0;
          *(v111 + 64) = 0;
          *(v111 + 48) = v365;
          *(v111 + 72) = 3;
          goto LABEL_104;
        }

        goto LABEL_12;
      }

      v200 = v270;
LABEL_158:
      sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
      v271 = *(*v200 + 83);
      swift_beginAccess();
      v272 = v200 + v271;
      v273 = v387;
      sub_1CEFCCBDC(v272, v387, &qword_1EC4BFF08, &qword_1CFA055D8);
      if ((*(v388 + 48))(v273, 1, v389) != 1)
      {
        v275 = v385;
        sub_1CEFE55D0(v273, v385, &unk_1EC4BFD90, &unk_1CFA134F0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v111 = swift_allocObject();
        *(v111 + 16) = xmmword_1CF9FC3C0;
        v276 = *v275;
        v277 = *(v275 + 8);
        *(v111 + 32) = 1024;
        *(v111 + 40) = v276;
        *(v111 + 48) = v277;
        *(v111 + 49) = 1;
        v278 = *(v275 + 24);
        *(v111 + 56) = *(v275 + 16);
        *(v111 + 64) = v278;
        *(v111 + 72) = 2;
        *(v111 + 80) = 8;
        *(v111 + 88) = v276;
        *(v111 + 104) = 0;
        *(v111 + 112) = 0;
        *(v111 + 96) = v277 | 0x100;
        *(v111 + 120) = 0;
        v279 = v200[18];
        *(v111 + 128) = 8;
        *(v111 + 136) = v279;
        v280 = v279;

        *(v111 + 145) = 0;
        *(v111 + 168) = 3;
        v112 = v275;
        v154 = &unk_1EC4BFD90;
        v155 = &unk_1CFA134F0;
        goto LABEL_202;
      }

      sub_1CEFCCC44(v273, &qword_1EC4BFF08, &qword_1CFA055D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1CF9FA450;
      *(v111 + 32) = 8;
      v274 = v200[18];

      *(v111 + 40) = v274;
      *(v111 + 49) = 0;
      *(v111 + 72) = 3;
      return v111;
    case 0x17u:
      v130 = v404;
      sub_1CEFCCBDC(v108, v404, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((*v130 & 1) == 0)
      {
        goto LABEL_19;
      }

      sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
      if ((v390 & 0x4000) != 0)
      {
        return &unk_1F4BED470;
      }

      else
      {
        return MEMORY[0x1E69E7CC0];
      }

    case 0x18u:
      v123 = v405;
      sub_1CEFCCBDC(v108, v405, &unk_1EC4C4E20, &unk_1CFA05350);
      if (*v123)
      {
        goto LABEL_88;
      }

LABEL_19:
      sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
      return &unk_1F4BED420;
    case 0x19u:
      v159 = v400;
      sub_1CEFCCBDC(v108, v400, &unk_1EC4C4E20, &unk_1CFA05350);
      v125 = *v159;
      v120 = *(v159 + 8);
      if (*(v159 + 9))
      {
        goto LABEL_62;
      }

      if (v423)
      {
        goto LABEL_85;
      }

      v119 = *v159;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v121 = swift_allocObject();
      v111 = v121;
      *(v121 + 16) = xmmword_1CF9FA450;
      v122 = 0x4000;
      goto LABEL_41;
    case 0x1Au:
      sub_1CEFCCBDC(v108, v84, &unk_1EC4C4E20, &unk_1CFA05350);
      v160 = *v84;
      v161 = v84[8];
      if (v84[9])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v121 = swift_allocObject();
        v111 = v121;
        *(v121 + 16) = xmmword_1CF9FA450;
        *(v121 + 32) = 4096;
        *(v121 + 40) = v160;
        *(v121 + 64) = 0;
        *(v121 + 48) = v161 | 0x100;
        goto LABEL_44;
      }

      v125 = *v84;
      v126 = v84[8];
      goto LABEL_86;
    case 0x1Bu:
      sub_1CEFCCBDC(v108, v81, &unk_1EC4C4E20, &unk_1CFA05350);
      v125 = *v81;
      v120 = v81[8];
      if (v81[9])
      {
        goto LABEL_62;
      }

      if ((v423 & 1) == 0)
      {
        v181 = *v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v116 = swift_allocObject();
        v111 = v116;
        *(v116 + 16) = xmmword_1CF9FA450;
        *(v116 + 32) = 2;
        *(v116 + 40) = v181;
        *(v116 + 56) = 0;
        *(v116 + 64) = 0;
        *(v116 + 48) = v120;
        v132 = 5;
        goto LABEL_65;
      }

LABEL_85:
      v126 = v120;
LABEL_86:
      v127 = 0;
      goto LABEL_87;
    case 0x1Cu:
      v178 = v410;
      sub_1CEFCCBDC(v108, v410, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFD38, &unk_1CFA05450);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v179 = &qword_1EC4BFD38;
        v180 = &unk_1CFA05450;
LABEL_56:
        sub_1CEFCCC44(v178, v179, v180);
        goto LABEL_88;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_215;
          }

          v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
          v250 = v249[12];
          v251 = (v178 + v249[20]);

          v192 = *v178;
          v372 = v251[10];
          v374 = v251[11];
          sub_1CF1D5750(*v251, v251[1], v251[2], v251[3], v251[4], v251[5], v251[6], v251[7], v251[8]);
        }

        else
        {
          v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
          v250 = *(v319 + 48);

          v192 = *v178;
        }

        sub_1CEFCCC44(v178 + v250, &unk_1EC4BFBB0, &qword_1CF9FCB90);
      }

      else
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 5)
          {
            v192 = *v178;
            goto LABEL_213;
          }

LABEL_215:
          v179 = &unk_1EC4BFD70;
          v180 = &qword_1CFA12AC0;
          goto LABEL_56;
        }

        v192 = *v178;
        v373 = *(v178 + 104);
        v375 = *(v178 + 112);
        sub_1CF1D5750(*(v178 + 24), *(v178 + 32), *(v178 + 40), *(v178 + 48), *(v178 + 56), *(v178 + 64), *(v178 + 72), *(v178 + 80), *(v178 + 88));
      }

LABEL_213:
      sub_1CEFCCC44(v108, &unk_1EC4C4E20, &unk_1CFA05350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v193 = swift_allocObject();
      v111 = v193;
      *(v193 + 16) = xmmword_1CF9FA450;
      v194 = 0x2000;
LABEL_214:
      *(v193 + 32) = v194;
      *(v193 + 40) = v192;
      *(v193 + 56) = 0;
      *(v193 + 64) = 0;
      *(v193 + 48) = 0;
      *(v193 + 72) = 0;
      return v111;
    case 0x1Fu:
      v113 = v407;
      sub_1CEFCCBDC(v108, v407, &unk_1EC4C4E20, &unk_1CFA05350);
      v114 = *v113;
      v115 = *(v113 + 8);
      if (*(v113 + 9))
      {
        goto LABEL_10;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v116 = swift_allocObject();
      v111 = v116;
      *(v116 + 16) = xmmword_1CF9FA450;
      v117 = 0x4000;
      goto LABEL_64;
    case 0x21u:
      v131 = v403;
      sub_1CEFCCBDC(v108, v403, &unk_1EC4C4E20, &unk_1CFA05350);
      v119 = *v131;
      v120 = *(v131 + 8);
      if (*(v131 + 9))
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v116 = swift_allocObject();
      v111 = v116;
      *(v116 + 16) = xmmword_1CF9FA450;
      *(v116 + 32) = 8;
      *(v116 + 40) = v119;
      *(v116 + 56) = 0;
      *(v116 + 64) = 0;
      *(v116 + 48) = v120;
      v132 = 3;
      goto LABEL_65;
    case 0x22u:
      sub_1CEFCCBDC(v108, v92, &unk_1EC4C4E20, &unk_1CFA05350);
      v119 = *v92;
      v120 = v92[8];
      if (v92[9])
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1CF9FA450;
      *(v111 + 32) = 1024;
      *(v111 + 40) = v119;
      *(v111 + 56) = 0;
      *(v111 + 64) = 0;
      *(v111 + 48) = v120;
      *(v111 + 72) = 7;
      v154 = &unk_1EC4C4E20;
      v155 = &unk_1CFA05350;
      v112 = v108;
      goto LABEL_202;
    case 0x23u:
      v118 = v406;
      sub_1CEFCCBDC(v108, v406, &unk_1EC4C4E20, &unk_1CFA05350);
      v119 = *v118;
      v120 = *(v118 + 8);
      if (*(v118 + 9))
      {
        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v121 = swift_allocObject();
      v111 = v121;
      *(v121 + 16) = xmmword_1CF9FA450;
      v122 = 0x80000;
      goto LABEL_41;
    case 0x28u:
      v129 = v408;
      sub_1CEFCCBDC(v108, v408, &unk_1EC4C4E20, &unk_1CFA05350);
      v119 = *v129;
      v120 = *(v129 + 8);
      if (*(v129 + 9))
      {
LABEL_61:
        v125 = v119;
LABEL_62:
        v126 = v120;
        v127 = 1;
        goto LABEL_87;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
      v121 = swift_allocObject();
      v111 = v121;
      *(v121 + 16) = xmmword_1CF9FA450;
      v122 = 1024;
LABEL_41:
      *(v121 + 32) = v122;
      *(v121 + 40) = v119;
      *(v121 + 64) = 0;
      *(v121 + 48) = v120;
LABEL_44:
      *(v121 + 56) = 0;
      *(v121 + 72) = 0;
      goto LABEL_201;
    case 0x2Au:
      v124 = v409;
      sub_1CEFCCBDC(v108, v409, &unk_1EC4C4E20, &unk_1CFA05350);
      v114 = *v124;
      v115 = *(v124 + 8);
      if ((*(v124 + 9) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6D8, &qword_1CF9FE568);
        v116 = swift_allocObject();
        v111 = v116;
        *(v116 + 16) = xmmword_1CF9FA450;
        v117 = 512;
LABEL_64:
        *(v116 + 32) = v117;
        *(v116 + 40) = v114;
        *(v116 + 48) = v115;
        *(v116 + 49) = 0;
        *(v116 + 56) = 0;
        *(v116 + 64) = 0;
        v132 = 1;
LABEL_65:
        *(v116 + 72) = v132;
        goto LABEL_201;
      }

LABEL_10:
      v125 = v114;
      v126 = v115;
      v127 = 1;
LABEL_87:
      sub_1CF1E53F8(v125, v126, v127);
LABEL_88:
      v195 = v108;
      goto LABEL_89;
    default:
      goto LABEL_88;
  }
}