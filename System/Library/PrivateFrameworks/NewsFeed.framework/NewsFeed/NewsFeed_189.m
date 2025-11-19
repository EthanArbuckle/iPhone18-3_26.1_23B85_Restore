uint64_t sub_1D6C97C78(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v81 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v73 - v16;
  v18 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v24 = (a1 + 16);
  v26 = *(a1 + 32);
  v25 = *(a1 + 40);
  v27 = *(a1 + 48);
  v28 = *(a1 + 56) | (*(a1 + 60) << 32);
  v29 = *(a1 + 60) >> 13;
  if (v29 > 1)
  {
    if (v29 != 2)
    {
      if (v29 == 3)
      {
        v30 = *(v4 + 20);
        v31 = *(a1 + 16);
        v32 = *(a1 + 40);
        v76 = *(a1 + 56) | (*(a1 + 60) << 32);
        v33 = v26;
        v34 = v27;
        v35 = type metadata accessor for FormatSlotDefinitionItemSet();
        v73 = *(v35 - 8);
        v36 = *(v73 + 56);
        v37 = v81;
        v74 = v35;
        v36(v81 + v30, 1, 1);
        v80 = v31;
        *v37 = v31;
        v37[1] = v23;
        v17 = v23;
        v75 = v33;
        v37[2] = v33;
        v37[3] = v32;
        v28 = v76;
        v77 = v34;
        v78 = v32;
        v37[4] = v34;
        *(v37 + 44) = BYTE4(v28);
        *(v37 + 10) = v28;
        *(v37 + 45) = BYTE5(v28) & 1;
        swift_beginAccess();
        v23 = *(a1 + 64);
        if (v23 >> 62)
        {
          goto LABEL_83;
        }

        v38 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_6;
      }

      swift_beginAccess();
      v50 = *(a1 + 64);
      if (v50 >> 62)
      {
        v28 = sub_1D7263BFC();
      }

      else
      {
        v28 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v28)
      {
      }

      v7 = 0;
      v23 = v50 & 0xC000000000000001;
      v10 = (v50 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v23)
        {
          v17 = MEMORY[0x1DA6FB460](v7, v50);
          v51 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          if (v7 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            v38 = sub_1D7263BFC();
LABEL_6:
            sub_1D67084A4(v80, v17, v75, v78, v77, v28);

            if (v38)
            {
              v28 = 0;
              v24 = (v23 & 0xC000000000000001);
              v17 = v23 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v24)
                {
                  v7 = MEMORY[0x1DA6FB460](v28, v23);
                  v10 = (v28 + 1);
                  if (__OFADD__(v28, 1))
                  {
LABEL_16:
                    __break(1u);
                    goto LABEL_17;
                  }
                }

                else
                {
                  if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    __break(1u);
                    goto LABEL_80;
                  }

                  v7 = *(v23 + 8 * v28 + 32);

                  v10 = (v28 + 1);
                  if (__OFADD__(v28, 1))
                  {
                    goto LABEL_16;
                  }
                }

                a1 = v86;
                sub_1D6C98BF4(v7, v81);
                if (v2)
                {
                  v65 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
                  goto LABEL_70;
                }

                ++v28;
              }

              while (v10 != v38);
            }

LABEL_62:

            v62 = v79;
            v63 = v81;
            sub_1D70A54E4(v79);
            if (!v2)
            {
              if ((*(v73 + 48))(v62, 1, v74) == 1)
              {
                sub_1D6C9C70C(v63, type metadata accessor for FormatDerivedDataBindingRepeatResult);
                return sub_1D6C9C930(v62, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
              }

              sub_1D6C9C930(v62, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
              type metadata accessor for FormatDerivedDataError();
              sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
              swift_allocError();
              *v70 = 6;
              *(v70 + 8) = 0xD00000000000002FLL;
              *(v70 + 16) = 0x80000001D73EF910;
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
            }

            v64 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
LABEL_75:
            v71 = v64;
            v72 = v63;
            return sub_1D6C9C70C(v72, v71);
          }

          v17 = *(v50 + 8 * v7 + 32);

          v51 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_48;
          }
        }

        a1 = v86;
        sub_1D6C97C78(v17, v80);
        if (v2)
        {
        }

        ++v7;
        if (v51 == v28)
        {
        }
      }
    }

LABEL_35:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v46 = v45;
    v82 = 0;
    v83 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD000000000000029, 0x80000001D73EF8E0);
    v47 = v24[1];
    v84 = *v24;
    v85[0] = v47;
    *(v85 + 14) = *(v24 + 30);
    sub_1D609CE14(&v84);
    v48 = v83;
    *v46 = v82;
    v46[1] = v48;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

LABEL_17:
  v76 = v17;
  if (v29)
  {
LABEL_49:
    v76 = v28;
    v77 = v27;
    v52 = *(v7 + 20);
    v78 = v25;
    v79 = v52;
    v53 = v22;
    v54 = v26;
    v55 = type metadata accessor for FormatSlotDefinitionItemSet();
    v56 = *(v55 - 8);
    v81 = v10;
    v57 = *(v56 + 56);
    v57(v81 + v79, 1, 1, v55);
    v57(v81 + *(v7 + 24), 1, 1, v55);
    v58 = v81;
    v59 = v53;
    *v81 = v53;
    v58[1] = v23;
    v17 = v23;
    *(v58 + 16) = v54 & 1;
    swift_beginAccess();
    v23 = *(a1 + 64);
    if (v23 >> 62)
    {
      v60 = sub_1D7263BFC();
    }

    else
    {
      v60 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D67084A4(v59, v17, v54, v78, v77, v76);

    if (!v60)
    {
LABEL_65:

      v63 = v81;
      sub_1D607446C(v81);
      v64 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
      goto LABEL_75;
    }

    v28 = 0;
    while (1)
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v61 = MEMORY[0x1DA6FB460](v28, v23);
        v17 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_81;
        }

        v61 = *(v23 + 8 * v28 + 32);

        v17 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      a1 = v86;
      sub_1D6C98774(v61, v81);
      if (v2)
      {
        break;
      }

      ++v28;
      if (v17 == v60)
      {
        goto LABEL_65;
      }
    }

    v65 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
LABEL_70:
    sub_1D6C9C70C(v81, v65);
  }

  if ((v26 & 0xC0) != 0x80 || v22 != 4 || v23 || v26 != 128)
  {
    goto LABEL_35;
  }

  v39 = v27;
  v75 = v26;
  v78 = v25;
  v40 = v21;
  v41 = type metadata accessor for FormatSlotDefinitionItemSet();
  v42 = *(*(v41 - 8) + 56);
  v81 = v40;
  v42(v40, 1, 1, v41);
  swift_beginAccess();
  v23 = *(a1 + 64);
  if (v23 >> 62)
  {
    a1 = sub_1D7263BFC();
  }

  else
  {
    a1 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v39;
  sub_1D67084A4(4, 0, v75, v78, v39, v28);

  if (a1)
  {
    v17 = 0;
    v79 = v23 & 0xC000000000000001;
    v24 = (v23 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v79)
      {
        v43 = MEMORY[0x1DA6FB460](v17, v23);
        v44 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v43 = *(v23 + 8 * v17 + 32);

        v44 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }
      }

      sub_1D6C999C8(v43, v81);

      if (v2)
      {
        break;
      }

      ++v17;
      if (v44 == a1)
      {
        goto LABEL_71;
      }
    }

    sub_1D67084F4(4, 0, v75, v78, v77, v28);
    v71 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult;
    v72 = v81;
    return sub_1D6C9C70C(v72, v71);
  }

LABEL_71:

  v66 = *(type metadata accessor for FormatDerivedDataBindingItemResult() + 20);
  v67 = v80;
  v68 = v81;
  v69 = v76;
  sub_1D6C956D4(v80 + v66, v81, v76);
  sub_1D67084F4(4, 0, v75, v78, v77, v28);
  result = sub_1D6C9C70C(v68, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
  if (!v2)
  {
    return sub_1D60749B4(v69, v67 + v66);
  }

  return result;
}

uint64_t sub_1D6C98774(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v5 = type metadata accessor for FormatDerivedDataBindingSwitchCaseResult();
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + 16);
  v10 = *(a1 + 16);
  v12 = *(a1 + 60);
  v13 = v12 >> 13;
  if (v12 >> 13 > 2)
  {
LABEL_16:
    if (v13 != 3)
    {
      swift_beginAccess();
      v9 = *(a1 + 64);
      if (v9 >> 62)
      {
        v29 = sub_1D7263BFC();
      }

      else
      {
        v29 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29)
      {
        v10 = 0;
        v22 = v9 & 0xC000000000000001;
        v20 = v9 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v22)
          {
            v30 = MEMORY[0x1DA6FB460](v10, v9);
            v3 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v30 = *(v9 + 8 * v10 + 32);

            v3 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_30:
              __break(1u);
            }
          }

          sub_1D6C98774(v30, v42);

          if (!v2)
          {
            ++v10;
            if (v3 != v29)
            {
              continue;
            }
          }
        }
      }
    }

LABEL_17:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v25 = v24;
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v26 = v11[1];
    v40 = *v11;
    v41[0] = v26;
    *(v41 + 14) = *(v11 + 30);
    sub_1D609CE14(&v40);
    v27 = v39;
    *v25 = v38;
    v25[1] = v27;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v13 < 2)
  {
    goto LABEL_17;
  }

  v14 = *(a1 + 32);
  v33 = *(a1 + 24);
  v34 = v14;
  v15 = *(a1 + 40);
  v36 = *(a1 + 48);
  v37 = v15;
  v35 = *(a1 + 56) | (v12 << 32);
  v16 = *(v7 + 20);
  v32 = v7;
  v17 = type metadata accessor for FormatSlotDefinitionItemSet();
  v18 = *(*(v17 - 8) + 56);
  v19 = v9 + v16;
  v20 = v33;
  v18(v19, 1, 1, v17);
  v18(v9 + *(v32 + 24), 1, 1, v17);
  v3 = v34;
  *v9 = v10;
  *(v9 + 8) = v20 & 1;
  *(v9 + 9) = BYTE1(v20) & 1;
  v21 = v37;
  *(v9 + 16) = v3;
  *(v9 + 24) = v21;
  swift_beginAccess();
  v22 = *(a1 + 64);
  if (v22 >> 62)
  {
    goto LABEL_36;
  }

  a1 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  sub_1D67084A4(v10, v20, v3, v37, v36, v35);

  if (a1)
  {
    v10 = 0;
    v37 = v22 & 0xC000000000000001;
    v20 = v22 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v37)
      {
        v3 = v22;
        v23 = MEMORY[0x1DA6FB460](v10, v22);
        v11 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }

      else
      {
        if (v10 >= *(v20 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          a1 = sub_1D7263BFC();
          goto LABEL_5;
        }

        v3 = v22;
        v23 = *(v22 + 8 * v10 + 32);

        v11 = (v10 + 1);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D6C9A614(v23, v9);
      if (v2)
      {
        sub_1D6C9C70C(v9, type metadata accessor for FormatDerivedDataBindingSwitchCaseResult);
      }

      ++v10;
      v22 = v3;
    }

    while (v11 != a1);
  }

  sub_1D69D9FA4(v9);
  return sub_1D6C9C70C(v9, type metadata accessor for FormatDerivedDataBindingSwitchCaseResult);
}

uint64_t sub_1D6C98BF4(char *a1, uint64_t a2)
{
  v112 = a2;
  v109 = type metadata accessor for FormatDerivedDataBindingRepeatResult();
  MEMORY[0x1EEE9AC00](v109, v4);
  v113 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v107 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v108 = &v99 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v106 = &v99 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v99 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v99 - v29;
  v31 = type metadata accessor for FormatDerivedDataBindingItemResult();
  MEMORY[0x1EEE9AC00](v31, v32);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = a1;
  v36 = *(a1 + 2);
  v37 = *(a1 + 3);
  v38 = (a1 + 16);
  v111 = v36;
  v40 = *(v38 + 16);
  v39 = *(v38 + 24);
  v41 = *(v38 + 32);
  v42 = *(v38 + 40) | (*(v38 + 44) << 32);
  v43 = *(v38 + 44) >> 13;
  if (v43 <= 1)
  {
LABEL_17:
    v105 = v22;
    v113 = v9;
    v103 = v26;
    v104 = v30;
    if (v43)
    {
LABEL_45:
      v106 = v39;
      v107 = v41;
      v108 = v42;
      v71 = *(v6 + 20);
      v72 = v37;
      v73 = type metadata accessor for FormatSlotDefinitionItemSet();
      v74 = v40;
      v40 = *(*(v73 - 8) + 56);
      v75 = v113;
      v104 = v71;
      (v40)(v113 + v71, 1, 1, v73);
      (v40)(v75 + *(v6 + 24), 1, 1, v73);
      *v75 = v111;
      v75[1] = v72;
      *(v75 + 16) = v74 & 1;
      v9 = v110;
      swift_beginAccess();
      v42 = *(v9 + 8);
      if (v42 >> 62)
      {
        v6 = sub_1D7263BFC();
      }

      else
      {
        v6 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D67084A4(v111, v72, v74, v106, v107, v108);

      if (v6)
      {
        v22 = 0;
        v30 = (v42 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            v76 = MEMORY[0x1DA6FB460](v22, v42);
            v40 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_57;
            }
          }

          else
          {
            if (v22 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_74;
            }

            v76 = *(v42 + 8 * v22 + 32);

            v40 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_57:
              __break(1u);
              goto LABEL_58;
            }
          }

          v9 = v118;
          sub_1D6C98774(v76, v113);
          if (v2)
          {
            break;
          }

          ++v22;
          if (v40 == v6)
          {
            goto LABEL_61;
          }
        }

        sub_1D6C9C70C(v113, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_61:

        v82 = *(v109 + 20);
        v83 = v112;
        v84 = v113;
        v85 = v105;
        sub_1D6C956D4(v112 + v82, &v104[v113], v105);
        result = sub_1D6C9C70C(v84, type metadata accessor for FormatDerivedDataBindingSwitchResult);
        if (!v2)
        {
          return sub_1D60749B4(v85, v83 + v82);
        }
      }

      return result;
    }

    if ((v40 & 0xC0) == 0x40)
    {
      v102 = v40;
      v106 = v39;
      v107 = v41;
      v108 = v42;
      v50 = *(v33 + 20);
      v51 = v35;
      v52 = v37;
      v53 = type metadata accessor for FormatSlotDefinitionItemSet();
      v54 = *(v53 - 8);
      v55 = *(v54 + 56);
      v56 = v54 + 56;
      v55(&v51[v50], 1, 1, v53);
      *v51 = v111;
      *(v51 + 1) = v52;
      v113 = v51;
      v57 = v52;
      v58 = v110;
      swift_beginAccess();
      v42 = *(v58 + 8);
      v101 = v53;
      v100 = v55;
      v99 = v56;
      if (v42 >> 62)
      {
        v9 = sub_1D7263BFC();
      }

      else
      {
        v9 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = v102;
      v59 = v111;
      v60 = v106;
      v61 = v107;
      v62 = v108;
      sub_1D67084A4(v111, v57, v102, v106, v107, v108);
      v105 = v57;
      sub_1D67084A4(v59, v57, v30, v60, v61, v62);

      if (v9)
      {
        v6 = 0;
        v40 = v42 & 0xC000000000000001;
        LOBYTE(v22) = v42 & 0xF8;
        do
        {
          if (v40)
          {
            v63 = MEMORY[0x1DA6FB460](v6, v42);
          }

          else
          {
            if (v6 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v63 = *(v42 + 8 * v6 + 32);
          }

          v64 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            goto LABEL_75;
          }

          v30 = v9;
          sub_1D6C97C78(v63, v113);
          if (v2)
          {

            sub_1D67084F4(v111, v105, v102, v106, v107, v108);
            v81 = type metadata accessor for FormatDerivedDataBindingItemResult;
            return sub_1D6C9C70C(v113, v81);
          }

          ++v6;
        }

        while (v64 != v9);
      }

      v86 = *(v109 + 20);
      sub_1D5B49760(0, &qword_1EDF198D8, &type metadata for FormatItemKind, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D7273AE0;
      v88 = v113;
      v89 = *v113;
      v90 = *(v113 + 8);
      *(inited + 32) = *v113;
      *(inited + 40) = v90;
      sub_1D5CBA110(v89, v90);
      v91 = sub_1D5E2755C(inited);
      swift_setDeallocating();
      sub_1D6875B30(inited + 32);
      v92 = v101;
      v93 = *(v101 + 36);
      v94 = sub_1D725B76C();
      v95 = v103;
      (*(*(v94 - 8) + 56))(&v103[v93], 1, 1, v94);
      *(v95 + 24) = 0u;
      *v95 = 0x100000001;
      v96 = MEMORY[0x1E69E7CC0];
      *(v95 + 8) = v91;
      *(v95 + 16) = v96;
      sub_1D5CDE22C(0);
      *(v95 + 24) = 0;
      *(v95 + 32) = 0;
      v100(v95, 0, 1, v92);
      v97 = v112;
      v98 = v104;
      sub_1D6C956D4(v112 + v86, v95, v104);
      sub_1D67084F4(v111, v105, v102, v106, v107, v108);
      sub_1D6C9C70C(v88, type metadata accessor for FormatDerivedDataBindingItemResult);
      result = sub_1D6C9C930(v95, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
      if (!v2)
      {
        return sub_1D60749B4(v98, v97 + v86);
      }

      return result;
    }

LABEL_31:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v66 = v65;
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v67 = *(v38 + 16);
    v116 = *v38;
    v117[0] = v67;
    *(v117 + 14) = *(v38 + 30);
    sub_1D609CE14(&v116);
    v68 = v115;
    *v66 = v114;
    v66[1] = v68;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v43 == 2)
  {
    goto LABEL_31;
  }

  if (v43 == 3)
  {
    v44 = *(v38 + 16);
    v22 = *(v109 + 20);
    v45 = *(v38 + 32);
    v46 = v39;
    v47 = v37;
    v48 = type metadata accessor for FormatSlotDefinitionItemSet();
    v49 = v113;
    (*(*(v48 - 8) + 56))(v113 + v22, 1, 1, v48);
    *v49 = v111;
    v49[1] = v47;
    v105 = v47;
    LOBYTE(v22) = v44;
    v49[2] = v44;
    v49[3] = v46;
    v30 = v46;
    v6 = v45;
    v49[4] = v45;
    *(v49 + 44) = BYTE4(v42);
    *(v49 + 10) = v42;
    *(v49 + 45) = BYTE5(v42) & 1;
    v9 = v110;
    swift_beginAccess();
    v40 = *(v9 + 8);
    if (v40 >> 62)
    {
      goto LABEL_77;
    }

    v26 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v9 = v110;
  swift_beginAccess();
  v40 = *(v9 + 8);
  if (v40 >> 62)
  {
    v42 = sub_1D7263BFC();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v42)
  {
  }

  v22 = 0;
  v6 = v40 & 0xC000000000000001;
  while (v6)
  {
    v70 = MEMORY[0x1DA6FB460](v22, v40);
    v30 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_39:
    v9 = v118;
    sub_1D6C98BF4(v70, v112);
    if (v2)
    {
    }

    ++v22;
    if (v30 == v42)
    {
    }
  }

  if (v22 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v70 = *(v40 + 8 * v22 + 32);

    v30 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  v26 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v111, v105, v22, v30, v6, v42);

  if (v26)
  {
    v22 = 0;
    v38 = v40 & 0xC000000000000001;
    v30 = (v40 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v38)
      {
        v33 = MEMORY[0x1DA6FB460](v22, v40);
        v6 = v33;
        v42 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v22 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_73;
        }

        v6 = *(v40 + 8 * v22 + 32);

        v42 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_16;
        }
      }

      v9 = v118;
      sub_1D6C98BF4(v6, v113);
      if (v2)
      {
        sub_1D6C9C70C(v113, type metadata accessor for FormatDerivedDataBindingRepeatResult);
      }

      ++v22;
    }

    while (v42 != v26);
  }

LABEL_58:

  v77 = *(v109 + 20);
  v78 = v108;
  sub_1D5CDE454(v112 + v77, v108, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v79 = v107;
  sub_1D70A54E4(v107);
  if (v2)
  {
    sub_1D6C9C930(v78, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    v81 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
    return sub_1D6C9C70C(v113, v81);
  }

  else
  {
    v80 = v106;
    sub_1D6C956D4(v78, v79, v106);
    sub_1D6C9C930(v79, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C930(v78, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C70C(v113, type metadata accessor for FormatDerivedDataBindingRepeatResult);
    return sub_1D60749B4(v80, v112 + v77);
  }
}

uint64_t sub_1D6C999C8(char *a1, uint64_t a2)
{
  v95 = a2;
  v4 = type metadata accessor for FormatDerivedDataBindingRepeatResult();
  MEMORY[0x1EEE9AC00](v4, v5);
  v96 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v90 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v94 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v89 = &v84 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v84 - v22);
  v24 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FormatDerivedDataBindingItemResult();
  MEMORY[0x1EEE9AC00](v28, v29);
  v32 = (&v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = a1;
  v34 = *(a1 + 2);
  v33 = *(a1 + 3);
  v35 = a1 + 16;
  v92 = v33;
  v93 = v34;
  v36 = *(v35 + 2);
  v37 = *(v35 + 3);
  v38 = *(v35 + 4);
  v39 = *(v35 + 10) | (*(v35 + 22) << 32);
  v40 = *(v35 + 22) >> 13;
  if (v40 <= 1)
  {
LABEL_17:
    v94 = v23;
    v88 = v19;
    v96 = v27;
    if (v40)
    {
LABEL_46:
      v89 = v37;
      v90 = v38;
      v64 = *(v24 + 20);
      v65 = v36;
      v66 = type metadata accessor for FormatSlotDefinitionItemSet();
      v86 = *(v66 - 8);
      v67 = *(v86 + 56);
      v68 = v96;
      v84 = v64;
      v67(v96 + v64, 1, 1, v66);
      v85 = *(v24 + 24);
      v87 = v66;
      v67(v68 + v85, 1, 1, v66);
      v69 = v92;
      *v68 = v93;
      *(v68 + 8) = v69;
      v70 = v65;
      *(v68 + 16) = v65 & 1;
      v19 = v91;
      swift_beginAccess();
      v35 = *(v19 + 8);
      if (v35 >> 62)
      {
        v71 = sub_1D7263BFC();
      }

      else
      {
        v71 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = v94;
      sub_1D67084A4(v93, v92, v70, v89, v90, v39);

      if (v71)
      {
        v72 = 0;
        v4 = v35 & 0xC000000000000001;
        while (1)
        {
          if (v4)
          {
            v73 = MEMORY[0x1DA6FB460](v72, v35);
            v39 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v72 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_77;
            }

            v73 = *&v35[8 * v72 + 32];

            v39 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }
          }

          v19 = v101;
          sub_1D6C98774(v73, v96);
          if (v2)
          {
            break;
          }

          ++v72;
          v24 = v94;
          if (v39 == v71)
          {
            goto LABEL_62;
          }
        }

        sub_1D6C9C70C(v96, type metadata accessor for FormatDerivedDataBindingSwitchResult);
      }

      else
      {
LABEL_62:

        v80 = v96;
        sub_1D5CDE454(v96 + v85, v24, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        v81 = (*(v86 + 48))(v24, 1, v87);
        sub_1D6C9C930(v24, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        if (v81 != 1)
        {
          type metadata accessor for FormatDerivedDataError();
          sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v78 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
          v79 = v80;
          return sub_1D6C9C70C(v79, v78);
        }

        v82 = v88;
        v83 = v95;
        sub_1D6C956D4(v95, v80 + v84, v88);
        result = sub_1D6C9C70C(v80, type metadata accessor for FormatDerivedDataBindingSwitchResult);
        if (!v2)
        {
          return sub_1D60749B4(v82, v83);
        }
      }

      return result;
    }

    if ((v36 & 0xC0) == 0x40)
    {
      v48 = v37;
      v88 = v36;
      v90 = v38;
      v49 = *(v30 + 20);
      v50 = type metadata accessor for FormatSlotDefinitionItemSet();
      (*(*(v50 - 8) + 56))(v32 + v49, 1, 1, v50);
      v51 = v92;
      *v32 = v93;
      v32[1] = v51;
      v52 = v91;
      swift_beginAccess();
      v35 = *(v52 + 8);
      if (v35 >> 62)
      {
        v19 = sub_1D7263BFC();
      }

      else
      {
        v19 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v53 = v92;
      v24 = v88;
      v54 = v90;
      sub_1D67084A4(v93, v92, v88, v48, v90, v39);
      v89 = v48;
      v94 = v39;
      sub_1D67084A4(v93, v53, v24, v48, v54, v39);

      if (v19)
      {
        v39 = 0;
        v96 = v35 & 0xC000000000000001;
        v4 = v35 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v96)
          {
            v24 = MEMORY[0x1DA6FB460](v39, v35);
            v55 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v39 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_78;
            }

            v24 = *&v35[8 * v39 + 32];

            v55 = (v39 + 1);
            if (__OFADD__(v39, 1))
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }
          }

          sub_1D6C97C78(v24, v32);

          if (v2)
          {
            break;
          }

          ++v39;
          if (v55 == v19)
          {
            goto LABEL_65;
          }
        }
      }

      else
      {
LABEL_65:

        sub_1D68757D0(v32);
      }

      sub_1D67084F4(v93, v92, v88, v89, v90, v94);
      v78 = type metadata accessor for FormatDerivedDataBindingItemResult;
      v79 = v32;
      return sub_1D6C9C70C(v79, v78);
    }

LABEL_32:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v57 = v56;
    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v58 = *(v35 + 1);
    v99 = *v35;
    v100[0] = v58;
    *(v100 + 14) = *(v35 + 30);
    sub_1D609CE14(&v99);
    v59 = v98;
    *v57 = v97;
    v57[1] = v59;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (v40 == 2)
  {
    goto LABEL_32;
  }

  if (v40 == 3)
  {
    v41 = *(v4 + 20);
    v42 = v38;
    v43 = v36;
    v44 = v37;
    v45 = type metadata accessor for FormatSlotDefinitionItemSet();
    v46 = v96;
    (*(*(v45 - 8) + 56))(v96 + v41, 1, 1, v45);
    v47 = v92;
    *v46 = v93;
    *(v46 + 8) = v47;
    v88 = v43;
    *(v46 + 16) = v43;
    *(v46 + 24) = v44;
    v4 = v44;
    v24 = v42;
    *(v46 + 32) = v42;
    *(v46 + 44) = BYTE4(v39);
    *(v46 + 40) = v39;
    *(v46 + 45) = BYTE5(v39) & 1;
    v19 = v91;
    swift_beginAccess();
    v35 = *(v19 + 8);
    if (v35 >> 62)
    {
      goto LABEL_79;
    }

    v32 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v19 = v91;
  swift_beginAccess();
  v35 = *(v19 + 8);
  if (v35 >> 62)
  {
    v61 = sub_1D7263BFC();
  }

  else
  {
    v61 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v61)
  {
  }

  v62 = 0;
  v39 = v35 & 0xC000000000000001;
  v24 = v35 & 0xFFFFFFFFFFFFFF8;
  while (v39)
  {
    v63 = MEMORY[0x1DA6FB460](v62, v35);
    v4 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

LABEL_40:
    v19 = v101;
    sub_1D6C999C8(v63, v95);
    if (v2)
    {
    }

    ++v62;
    if (v4 == v61)
    {
    }
  }

  if (v62 < *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v63 = *&v35[8 * v62 + 32];

    v4 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v32 = sub_1D7263BFC();
LABEL_6:
  sub_1D67084A4(v93, v92, v88, v4, v24, v39);

  if (v32)
  {
    v27 = 0;
    v24 = v35 & 0xC000000000000001;
    v4 = v35 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v24)
      {
        v30 = MEMORY[0x1DA6FB460](v27, v35);
        v39 = v30;
        v23 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      else
      {
        if (v27 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_76;
        }

        v39 = *&v35[8 * v27 + 32];

        v23 = (v27 + 1);
        if (__OFADD__(v27, 1))
        {
          goto LABEL_16;
        }
      }

      v19 = v101;
      sub_1D6C98BF4(v39, v96);
      if (v2)
      {
        sub_1D6C9C70C(v96, type metadata accessor for FormatDerivedDataBindingRepeatResult);
      }

      ++v27;
    }

    while (v23 != v32);
  }

LABEL_59:

  v75 = v94;
  v74 = v95;
  sub_1D5CDE454(v95, v94, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v76 = v90;
  sub_1D70A54E4(v90);
  if (!v2)
  {
    v77 = v89;
    sub_1D6C956D4(v75, v76, v89);
    sub_1D6C9C930(v76, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C930(v75, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
    sub_1D6C9C70C(v96, type metadata accessor for FormatDerivedDataBindingRepeatResult);
    return sub_1D60749B4(v77, v74);
  }

  sub_1D6C9C930(v75, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  v78 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
  v79 = v96;
  return sub_1D6C9C70C(v79, v78);
}

uint64_t sub_1D6C9A614(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatDerivedDataBindingRepeatResult();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatDerivedDataBindingSwitchResult();
  MEMORY[0x1EEE9AC00](v9, v10);
  v109 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatDerivedDataBindingAuxiliaryResult();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9C9F4(0, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v104 = v96 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v106 = v96 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v105 = v96 - v28;
  v29 = type metadata accessor for FormatDerivedDataBindingItemResult();
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = (v96 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a2 + 9) != 1)
  {
LABEL_18:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    *v51 = 5;
    *(v51 + 8) = 0xD00000000000007ALL;
    *(v51 + 16) = 0x80000001D73DC7E0;
LABEL_39:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v108 = a2;
  v34 = *(a1 + 16);
  v35 = a1 + 16;
  v107 = *(a1 + 24);
  v37 = *(a1 + 32);
  v36 = *(a1 + 40);
  v38 = *(a1 + 48);
  v39 = *(a1 + 56) | (*(a1 + 60) << 32);
  v40 = *(a1 + 60) >> 13;
  if (v40 > 1)
  {
    if (v40 != 2)
    {
      if (v40 == 3)
      {
        v41 = *(v5 + 20);
        v42 = *(a1 + 56) | (*(a1 + 60) << 32);
        v43 = *(a1 + 48);
        v44 = *(a1 + 40);
        v45 = *(a1 + 32);
        v9 = v34;
        v46 = type metadata accessor for FormatSlotDefinitionItemSet();
        (*(*(v46 - 8) + 56))(v8 + v41, 1, 1, v46);
        v100 = v9;
        v47 = v107;
        *v8 = v9;
        *(v8 + 8) = v47;
        LOBYTE(v9) = v45;
        *(v8 + 16) = v45;
        *(v8 + 24) = v44;
        v19 = v44;
        v5 = v43;
        *(v8 + 32) = v43;
        *(v8 + 44) = BYTE4(v42);
        *(v8 + 40) = v42;
        v48 = v42;
        *(v8 + 45) = BYTE5(v42) & 1;
        swift_beginAccess();
        v15 = *(a1 + 64);
        if (v15 >> 62)
        {
          goto LABEL_100;
        }

        v49 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        sub_1D67084A4(v100, v107, v9, v19, v5, v48);

        if (v49)
        {
          v50 = 0;
          v109 = v15 & 0xC000000000000001;
          LOBYTE(v9) = v15 & 0xF8;
          do
          {
            if (v109)
            {
              v5 = MEMORY[0x1DA6FB460](v50, v15);
              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
LABEL_17:
                __break(1u);
                goto LABEL_18;
              }
            }

            else
            {
              if (v50 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                v49 = sub_1D7263BFC();
                goto LABEL_7;
              }

              v5 = *(v15 + 8 * v50 + 32);

              v48 = v50 + 1;
              if (__OFADD__(v50, 1))
              {
                goto LABEL_17;
              }
            }

            v19 = v15;
            sub_1D6C98BF4(v5, v8);
            if (v2)
            {
              sub_1D6C9C70C(v8, type metadata accessor for FormatDerivedDataBindingRepeatResult);
              goto LABEL_86;
            }

            ++v50;
          }

          while (v48 != v49);
        }

LABEL_67:

        sub_1D693FA48();
        v66 = type metadata accessor for FormatDerivedDataBindingRepeatResult;
        return sub_1D6C9C70C(v8, v66);
      }

      swift_beginAccess();
      v8 = *(a1 + 64);
      if (v8 >> 62)
      {
        v15 = sub_1D7263BFC();
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v15)
      {
        v48 = 0;
        v5 = v8 & 0xC000000000000001;
        v19 = (v8 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v5)
          {
            v59 = MEMORY[0x1DA6FB460](v48, v8);
            v9 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (v48 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v59 = *(v8 + 8 * v48 + 32);

            v9 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }
          }

          a1 = v114;
          sub_1D6C9A614(v59, v108);
          if (v2)
          {
            break;
          }

          ++v48;
          if (v9 == v15)
          {
          }
        }
      }
    }

    goto LABEL_38;
  }

  if (!v40)
  {
    v52 = v37 >> 6;
    if (v52 == 1)
    {
      v99 = *(a1 + 32);
      v101 = v36;
      v102 = v38;
      v103 = v39;
      v67 = *(v31 + 20);
      v68 = v34;
      v69 = v33;
      v70 = type metadata accessor for FormatSlotDefinitionItemSet();
      v71 = *(v70 - 8);
      v72 = *(v71 + 56);
      v96[0] = v67;
      v98 = v70;
      v97 = v72;
      v96[1] = v71 + 56;
      (v72)(v69 + v67, 1, 1);
      v100 = v68;
      v73 = v107;
      v109 = v69;
      *v69 = v68;
      v69[1] = v73;
      swift_beginAccess();
      v15 = *(a1 + 64);
      if (v15 >> 62)
      {
        v48 = sub_1D7263BFC();
      }

      else
      {
        v48 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v74 = v100;
      v19 = v107;
      v75 = v99;
      v76 = v101;
      v8 = v102;
      v77 = v103;
      sub_1D67084A4(v100, v107, v99, v101, v102, v103);
      sub_1D67084A4(v74, v19, v75, v76, v8, v77);

      if (v48)
      {
        v5 = 0;
        LOBYTE(v9) = v15 & 0xF8;
        while (1)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1DA6FB460](v5, v15);
          }

          else
          {
            if (v5 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_98;
            }

            v19 = *(v15 + 8 * v5 + 32);
          }

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_97;
          }

          sub_1D6C97C78(v19, v109);
          if (v2)
          {
            break;
          }

          ++v5;
          if (v8 == v48)
          {
            goto LABEL_87;
          }
        }

        sub_1D67084F4(v100, v107, v99, v101, v102, v103);
        return sub_1D6C9C70C(v109, type metadata accessor for FormatDerivedDataBindingItemResult);
      }

      else
      {
LABEL_87:

        v78 = type metadata accessor for FormatDerivedDataBindingSwitchCaseResult();
        v79 = *(v78 + 20);
        sub_1D5B49760(0, &qword_1EDF198D8, &type metadata for FormatItemKind, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7273AE0;
        v81 = v109;
        v82 = *v109;
        v83 = *(v109 + 8);
        *(inited + 32) = *v109;
        *(inited + 40) = v83;
        sub_1D5CBA110(v82, v83);
        v84 = sub_1D5E2755C(inited);
        swift_setDeallocating();
        sub_1D6875B30(inited + 32);
        v85 = v98;
        v86 = *(v98 + 36);
        v87 = sub_1D725B76C();
        v88 = v106;
        (*(*(v87 - 8) + 56))(v106 + v86, 1, 1, v87);
        *(v88 + 24) = 0u;
        *v88 = 0x100000001;
        v89 = MEMORY[0x1E69E7CC0];
        *(v88 + 8) = v84;
        *(v88 + 16) = v89;
        sub_1D5CDE22C(0);
        *(v88 + 24) = 0;
        *(v88 + 32) = 0;
        v97(v88, 0, 1, v85);
        v90 = v108;
        v91 = v105;
        sub_1D6C956D4(v108 + v79, v88, v105);
        if (v2)
        {
          sub_1D67084F4(v100, v107, v99, v101, v102, v103);
          sub_1D6C9C70C(v81, type metadata accessor for FormatDerivedDataBindingItemResult);
          return sub_1D6C9C930(v88, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
        }

        else
        {
          sub_1D6C9C930(v88, &qword_1EDF22050, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D60749B4(v91, v90 + v79);
          v94 = *(v78 + 24);
          v95 = v104;
          sub_1D6C956D4(v90 + v94, v81 + v96[0], v104);
          sub_1D67084F4(v100, v107, v99, v101, v102, v103);
          sub_1D6C9C70C(v81, type metadata accessor for FormatDerivedDataBindingItemResult);
          return sub_1D60749B4(v95, v90 + v94);
        }
      }
    }

    if (v52 == 2 && v34 == 4 && !v107 && *(a1 + 32) == 128)
    {
      v99 = *(a1 + 32);
      v101 = v36;
      v102 = v38;
      v103 = v39;
      v53 = type metadata accessor for FormatSlotDefinitionItemSet();
      (*(*(v53 - 8) + 56))(v15, 1, 1, v53);
      swift_beginAccess();
      v9 = *(a1 + 64);
      if (v9 >> 62)
      {
        v8 = sub_1D7263BFC();
      }

      else
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1D67084A4(4, 0, v99, v101, v102, v103);

      if (v8)
      {
        v35 = 0;
        v109 = v9 & 0xC000000000000001;
        v48 = v9 & 0xFFFFFFFFFFFFFF8;
        v107 = v8;
        while (1)
        {
          if (v109)
          {
            v5 = MEMORY[0x1DA6FB460](v35, v9);
            v8 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_37;
            }
          }

          else
          {
            if (v35 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v5 = *(v9 + 8 * v35 + 32);

            v8 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          sub_1D6C999C8(v5, v15);
          if (v2)
          {
            break;
          }

          ++v35;
          if (v8 == v107)
          {
            goto LABEL_89;
          }
        }

        sub_1D67084F4(4, 0, v99, v101, v102, v103);
        return sub_1D6C9C70C(v15, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
      }

      else
      {
LABEL_89:

        v92 = *(type metadata accessor for FormatDerivedDataBindingSwitchCaseResult() + 24);
        v93 = v108;
        sub_1D6C956D4(v108 + v92, v15, v19);
        sub_1D67084F4(4, 0, v99, v101, v102, v103);
        result = sub_1D6C9C70C(v15, type metadata accessor for FormatDerivedDataBindingAuxiliaryResult);
        if (!v2)
        {
          return sub_1D60749B4(v19, v93 + v92);
        }
      }

      return result;
    }

LABEL_38:
    type metadata accessor for FormatDerivedDataError();
    sub_1D6C50C08(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError);
    swift_allocError();
    v55 = v54;
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000002FLL, 0x80000001D73EF940);
    v56 = *(v35 + 16);
    v112 = *v35;
    v113[0] = v56;
    *(v113 + 14) = *(v35 + 30);
    sub_1D609CE14(&v112);
    v57 = v111;
    *v55 = v110;
    v55[1] = v57;
    goto LABEL_39;
  }

LABEL_54:
  v101 = v36;
  v102 = v38;
  v103 = v39;
  v106 = *(v9 + 20);
  v15 = v37;
  v60 = v34;
  v8 = type metadata accessor for FormatSlotDefinitionItemSet();
  v61 = *(*(v8 - 8) + 56);
  v62 = v109;
  v61(v109 + v106, 1, 1, v8);
  v61(v62 + *(v9 + 24), 1, 1, v8);
  v5 = v60;
  v63 = v107;
  *v62 = v60;
  v62[1] = v63;
  *(v62 + 16) = v15 & 1;
  swift_beginAccess();
  v48 = *(a1 + 64);
  if (v48 >> 62)
  {
    v64 = sub_1D7263BFC();
  }

  else
  {
    v64 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1D67084A4(v60, v107, v15, v101, v102, v103);

  if (!v64)
  {
LABEL_68:

    v8 = v109;
    sub_1D693F680(v109);
    v66 = type metadata accessor for FormatDerivedDataBindingSwitchResult;
    return sub_1D6C9C70C(v8, v66);
  }

  v65 = 0;
  v19 = (v48 & 0xC000000000000001);
  LOBYTE(v9) = v48 & 0xF8;
  while (1)
  {
    if (v19)
    {
      v5 = MEMORY[0x1DA6FB460](v65, v48);
      v15 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v65 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_96;
      }

      v5 = *(v48 + 8 * v65 + 32);

      v15 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }
    }

    v8 = v64;
    sub_1D6C98774(v5, v109);
    if (v2)
    {
      break;
    }

    ++v65;
    if (v15 == v64)
    {
      goto LABEL_68;
    }
  }

  sub_1D6C9C70C(v109, type metadata accessor for FormatDerivedDataBindingSwitchResult);
LABEL_86:
}

uint64_t sub_1D6C9B650()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6C9B6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v77 = a3;
  sub_1D6107408();
  v72 = *(v9 - 8);
  v73 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v71 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v70 = &v64 - v14;
  v15 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v76 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v75 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v18);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v74 = &v64 - v23;
  if (*(a2 + 16))
  {
    swift_beginAccess();

    sub_1D6E463A0(v24);
    swift_endAccess();
  }

  if (*(a1 + 16))
  {
    swift_beginAccess();

    sub_1D5B886D0(v25);
    swift_endAccess();
  }

  v26 = v77 + 56;
  v27 = 1 << *(v77 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(v77 + 56);
  v30 = (v27 + 63) >> 6;

  v32 = 0;
  v65 = v30;
  v66 = v26;
  v67 = v3;
  v68 = v20;
  while (v29)
  {
LABEL_13:
    v34 = v74;
    sub_1D6C9C6A4(*(v77 + 48) + *(v75 + 72) * (__clz(__rbit64(v29)) | (v32 << 6)), v74, type metadata accessor for FormatDerivedDataResultOptionReference);
    sub_1D6C9C76C(v34, v20, type metadata accessor for FormatDerivedDataResultOptionReference);

    v36 = sub_1D69BA6AC(v35);
    if (v5)
    {
      sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
    }

    v39 = v36;
    v40 = v37;
    v41 = v38;
    v42 = v6;
    v44 = *(v20 + 1);
    v43 = *(v20 + 2);
    swift_beginAccess();
    v45 = *(v42[3] + 16);

    v78 = v44;
    v79 = 0;
    if (v45 && (sub_1D5B69D90(v44, v43), (v46 & 1) != 0))
    {
    }

    else
    {
      v47 = MEMORY[0x1E69E7CD0];
    }

    v29 &= v29 - 1;
    v83 = v47;
    swift_endAccess();
    sub_1D6007700(v39, v40, v41);
    sub_1D5FEE050(v81, v39, v40, v41);
    sub_1D6007718(v81[0], v81[1], v82);
    v48 = v83;
    v6 = v67;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v6[3];
    v6[3] = 0x8000000000000000;
    sub_1D6D79E00(v48, v78, v43, isUniquelyReferenced_nonNull_native);

    v6[3] = v80;
    swift_endAccess();
    v20 = v68;
    v50 = v76;
    sub_1D6C9C6A4(&v68[*(v69 + 28)], v76, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
    sub_1D5EA24BC();
    v52 = (*(*(v51 - 8) + 48))(v50, 1, v51);
    v53 = *(v73 + 48);
    if (v52 == 1)
    {
      v54 = v70 + v53;
      sub_1D6C9C6A4(v20, v70, type metadata accessor for FormatDerivedDataResultOptionReference);
      *v54 = v39;
      *(v54 + 8) = v40;
      *(v54 + 16) = v41;
      swift_beginAccess();
      v55 = v6[4];
      v56 = swift_isUniquelyReferenced_nonNull_native();
      v6[4] = v55;
      if ((v56 & 1) == 0)
      {
        v55 = sub_1D6992704(0, v55[2] + 1, 1, v55);
        v6[4] = v55;
      }

      v30 = v65;
      v26 = v66;
      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_1D6992704(v57 > 1, v58 + 1, 1, v55);
      }

      v55[2] = v58 + 1;
      sub_1D6C9C76C(v70, v55 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v58, sub_1D6107408);
      v6[4] = v55;
      swift_endAccess();
      result = sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
      v5 = v79;
    }

    else
    {
      v59 = v71 + v53;
      sub_1D6C9C6A4(v20, v71, type metadata accessor for FormatDerivedDataResultOptionReference);
      *v59 = v39;
      *(v59 + 8) = v40;
      *(v59 + 16) = v41;
      swift_beginAccess();
      v60 = v6[5];
      v61 = swift_isUniquelyReferenced_nonNull_native();
      v6[5] = v60;
      if ((v61 & 1) == 0)
      {
        v60 = sub_1D6992704(0, v60[2] + 1, 1, v60);
        v6[5] = v60;
      }

      v30 = v65;
      v26 = v66;
      v63 = v60[2];
      v62 = v60[3];
      if (v63 >= v62 >> 1)
      {
        v60 = sub_1D6992704(v62 > 1, v63 + 1, 1, v60);
      }

      v60[2] = v63 + 1;
      sub_1D6C9C76C(v71, v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v63, sub_1D6107408);
      v6[5] = v60;
      swift_endAccess();
      sub_1D6C9C70C(v20, type metadata accessor for FormatDerivedDataResultOptionReference);
      result = sub_1D6C9C930(v76, &qword_1EDF44860, type metadata accessor for FormatVersionRequirement);
      v5 = v79;
    }
  }

  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v30)
    {
    }

    v29 = *(v26 + 8 * v33);
    ++v32;
    if (v29)
    {
      v32 = v33;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D6C9BDF8(uint64_t a1)
{
  v42 = *(a1 + 16);
  if (!v42)
  {
    type metadata accessor for FormatDerivedDataBindingNode();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[5] = 0;
    result[6] = 0;
    result[4] = 128;
    *(result + 54) = 0;
    result[8] = MEMORY[0x1E69E7CC0];
    return result;
  }

  v45 = 0;
  v1 = 0;
  v41 = a1 + 32;
  v2 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v3 = *(v41 + 32 * v1 + 8);
    v46 = *(v3 + 16);
    if (v46)
    {
      break;
    }

LABEL_4:
    if (++v1 == v42)
    {

      return v45;
    }
  }

  v43 = v1;

  v4 = 0;
  v5 = 0;
  v6 = (v3 + 72);
  v44 = v3;
  while (v4 < *(v3 + 16))
  {
    v8 = *(v6 - 5);
    v7 = *(v6 - 4);
    v9 = *(v6 - 3);
    v10 = *v6 | (*(v6 + 2) << 32);
    v11 = *(v6 + 2) >> 13;
    v47 = v5;
    v48 = v9;
    v49 = *(v6 - 2);
    v50 = *(v6 - 1);
    if (v11 <= 1)
    {
      if (v11)
      {
LABEL_18:
        sub_1D67084A4(v8, v7, v9, *(v6 - 2), *(v6 - 1), v10);

        v14 = v8;
        v15 = v8;
        v16 = v7;
        goto LABEL_59;
      }

      if (!(v9 >> 6))
      {
        v51 = 0x28746F6C73;
        sub_1D6007830(v8, v7, v9);
        v14 = v8;
        MEMORY[0x1DA6F9910](v8, v7);
        goto LABEL_23;
      }

      if (v9 >> 6 == 1)
      {
        v12 = 0xE500000000000000;
        v13 = 0x6575737369;
        switch(v7)
        {
          case 0uLL:
            v12 = 0xE700000000000000;
            v13 = 0x656C6369747261;
            break;
          case 1uLL:
            break;
          case 2uLL:
            v12 = 0xE800000000000000;
            v13 = 0x6465626D45626577;
            break;
          case 3uLL:
            v12 = 0xEA00000000006B63;
            v13 = 0x6172546F69647561;
            break;
          case 4uLL:
            v12 = 0xE300000000000000;
            v13 = 6775156;
            break;
          case 5uLL:
            v13 = 0x65726F6373;
            break;
          case 6uLL:
            v12 = 0xE800000000000000;
            v13 = 0x676E69646E617473;
            break;
          case 7uLL:
            v12 = 0xE700000000000000;
            v13 = 0x74656B63617262;
            break;
          case 8uLL:
            v12 = 0xE800000000000000;
            v13 = 0x65726F6353786F62;
            break;
          case 9uLL:
            v13 = 0x726F6353656E696CLL;
            v12 = 0xE900000000000065;
            break;
          case 0xAuLL:
            v13 = 0x65527972756A6E69;
            v12 = 0xEC00000074726F70;
            break;
          case 0xBuLL:
            v12 = 0xE900000000000072;
            v13 = 0x6579616C5079656BLL;
            break;
          case 0xCuLL:
            v12 = 0xE600000000000000;
            v13 = 0x656C7A7A7570;
            break;
          case 0xDuLL:
            v13 = 0x7954656C7A7A7570;
            v12 = 0xEA00000000006570;
            break;
          case 0xEuLL:
            v13 = 0x7453656C7A7A7570;
            v12 = 0xEF63697473697461;
            break;
          case 0xFuLL:
            v12 = 0xE600000000000000;
            v13 = 0x657069636572;
            break;
          default:
            v13 = *(v6 - 5);
            v12 = *(v6 - 4);
            break;
        }

        v18 = v9;
        sub_1D6007830(v8, v7, v9);
        v14 = v8;
        sub_1D6007830(v8, v7, v18);
        MEMORY[0x1DA6F9910](v13, v12);

        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = 0x286D657469;
        v16 = 0xE500000000000000;
        v3 = v44;
      }

      else if (v7 | v8 || v9 != 128)
      {
        if (v8 == 1 && !v7 && v9 == 128)
        {
          v14 = 1;
          v15 = 0x656D656C70707573;
          v16 = 0xED0000797261746ELL;
        }

        else if (v8 == 2 && !v7 && v9 == 128)
        {
          v14 = 2;
          v16 = 0xE500000000000000;
          v15 = 0x656C797473;
        }

        else if (v8 == 3 && !v7 && v9 == 128)
        {
          v14 = 3;
          v16 = 0xEA00000000006E6FLL;
          v15 = 0x697461726F636564;
        }

        else if (v8 == 4 && !v7 && v9 == 128)
        {
          v14 = 4;
          v16 = 0xE900000000000079;
          v15 = 0x7261696C69787561;
        }

        else
        {
          v32 = v9 == 128;
          v14 = *(v6 - 5);
          v34 = v8 == 5 && v7 == 0;
          if (v34 && v32)
          {
            v15 = 0x6E6F6974706FLL;
          }

          else
          {
            v15 = 0x646E69426D657469;
          }

          if (v34 && v32)
          {
            v16 = 0xE600000000000000;
          }

          else
          {
            v16 = 0xEC00000073676E69;
          }
        }
      }

      else
      {
        v14 = *(v6 - 5);
        v16 = 0xE500000000000000;
        v15 = 0x70756F7267;
      }
    }

    else
    {
      if (v11 != 2)
      {
        goto LABEL_18;
      }

      if ((v7 & 1) == 0)
      {
        v51 = 0x2865736163;
        v14 = *(v6 - 5);

        v17 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v17);

LABEL_23:
        MEMORY[0x1DA6F9910](41, 0xE100000000000000);
        v15 = v51;
        v16 = 0xE500000000000000;
        goto LABEL_59;
      }

      v14 = *(v6 - 5);

      v16 = 0xE700000000000000;
      v15 = 0x746C7561666564;
    }

LABEL_59:
    MEMORY[0x1DA6F9910](v15, v16);

    MEMORY[0x1DA6F9910](47, 0xE100000000000000);

    if (!v2[2] || (v19 = sub_1D5B69D90(0, 0xE000000000000000), (v20 & 1) == 0))
    {
      type metadata accessor for FormatDerivedDataBindingNode();
      v22 = swift_allocObject();
      *(v22 + 16) = v14;
      *(v22 + 24) = v7;
      *(v22 + 32) = v48;
      *(v22 + 40) = v49;
      *(v22 + 48) = v50;
      *(v22 + 60) = WORD2(v10);
      *(v22 + 56) = v10;
      *(v22 + 64) = MEMORY[0x1E69E7CC0];
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = v2;
      v24 = sub_1D5B69D90(0, 0xE000000000000000);
      v26 = v2[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_93;
      }

      v30 = v25;
      if (v2[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_67;
        }

        v35 = v24;
        sub_1D6D81FC4();
        v24 = v35;
        v2 = v52;
        if ((v30 & 1) == 0)
        {
          goto LABEL_82;
        }

LABEL_68:
        *(v2[7] + 8 * v24) = v22;
      }

      else
      {
        sub_1D6D6CFB8(v29, isUniquelyReferenced_nonNull_native);
        v24 = sub_1D5B69D90(0, 0xE000000000000000);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_95;
        }

LABEL_67:
        if (v30)
        {
          goto LABEL_68;
        }

LABEL_82:
        v2[(v24 >> 6) + 8] |= 1 << v24;
        v36 = (v2[6] + 16 * v24);
        *v36 = 0;
        v36[1] = 0xE000000000000000;
        *(v2[7] + 8 * v24) = v22;
        v37 = v2[2];
        v28 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v28)
        {
          goto LABEL_94;
        }

        v2[2] = v38;
      }

      if (v47)
      {
        v39 = swift_beginAccess();
        MEMORY[0x1DA6F9CE0](v39);
        if (*((*(v47 + 64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v47 + 64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        swift_endAccess();
      }

      if (!v45)
      {

        v45 = v22;
      }

      v5 = v22;
      v3 = v44;
      goto LABEL_8;
    }

    v21 = v19;
    sub_1D67084F4(v14, v7, v48, v49, v50, v10);
    v5 = *(v2[7] + 8 * v21);

LABEL_8:
    ++v4;
    v6 += 12;
    if (v46 == v4)
    {

      v1 = v43;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

uint64_t sub_1D6C9C6A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9C70C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6C9C76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9C7D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6C9C848(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6C9C848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6C9C8B0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B49760(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6C9C930(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D6C9C9F4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D6C9C98C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1D6C9C9F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6C9CB8C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed10FormatView_identifier);

  return v1;
}

uint64_t sub_1D6C9CBCC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v32 = v33;
    v4 = v1 + 64;
    result = sub_1D7263B7C();
    v5 = result;
    v6 = 0;
    v7 = *(v1 + 36);
    v30 = v1 + 64;
    v27 = v1 + 72;
    v28 = v2;
    v29 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(v1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v6;
      v10 = *(v1 + 56);
      v11 = (*(v1 + 48) + 16 * v5);
      v12 = v1;
      v14 = *v11;
      v13 = v11[1];
      v15 = *(v10 + 8 * v5);

      sub_1D7263D4C();

      MEMORY[0x1DA6F9910](v14, v13);
      MEMORY[0x1DA6F9910](0x726F6C6F632DLL, 0xE600000000000000);

      v16 = v32;
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D5BFC364((v17 > 1), v18 + 1, 1);
        v16 = v32;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = 0xD000000000000015;
      *(v19 + 40) = 0x80000001D73EF990;
      v8 = 1 << *(v12 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v1 = v12;
      v4 = v30;
      v20 = *(v30 + 8 * v9);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v32 = v16;
      v7 = v29;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v8 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v9 << 6;
        v23 = v9 + 1;
        v24 = (v27 + 8 * v9);
        while (v23 < (v8 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1D5C25E1C(v5, v29, 0);
            v8 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1D5C25E1C(v5, v29, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v28)
      {
        return v32;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t FeedRecipe.debugIdentifier.getter()
{
  v1 = [*(v0 + 56) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedRecipe.debugSourceName.getter()
{
  v1 = [objc_msgSend(*(v0 + 56) sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedRecipe.debugTitle.getter()
{
  v1 = [*(v0 + 56) title];
  v2 = sub_1D726207C();

  return v2;
}

id FeedRecipe.debugAssetHandle.getter()
{
  v1 = [*(v0 + 56) thumbnailMedium];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id FeedRecipe.debugScoreProfile.getter()
{
  v1 = [*(v0 + 56) scoreProfile];

  return v1;
}

__n128 FeedRecipe.init(identifier:recipe:state:imageShareAttributeProvider:premiumBadge:externalRecipeFactory:featureAvailability:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a6;
  *(a9 + 16) = 0;
  *(a9 + 24) = 1;
  *(a9 + 32) = xmmword_1D727C320;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 56) = a3;
  v16 = type metadata accessor for FeedRecipe();
  sub_1D6C9E938(a4, a9 + v16[9], type metadata accessor for FeedRecipe.State);
  sub_1D6C9E8B4(a5, a9 + v16[10], &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType);
  *(a9 + v16[11]) = v15;
  if (*(a4 + *(type metadata accessor for FeedRecipe.State() + 24)) == 1)
  {
    v17 = [a3 sourceChannel];
  }

  else
  {
    v17 = 2;
  }

  sub_1D6C9D1C4(a5);
  sub_1D6C9F2E4(a4, type metadata accessor for FeedRecipe.State);
  *(a9 + 48) = v17;
  v18 = a9 + v16[12];
  v19 = *(a7 + 16);
  *v18 = *a7;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a7 + 32);
  v20 = a9 + v16[13];
  *(v20 + 32) = *(a8 + 32);
  result = *(a8 + 16);
  *v20 = *a8;
  *(v20 + 16) = result;
  return result;
}

uint64_t sub_1D6C9D1C4(uint64_t a1)
{
  sub_1D6C9E36C(0, &unk_1EDF3CFB0, &qword_1EDF3CFC0, &protocol descriptor for RecipeImageShareAttributeProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FeedRecipe.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  FCRecipe.traits.getter(&v6);
  v3 = (v1 + *(type metadata accessor for FeedRecipe() + 36));
  if (*v3 - 1 <= 1 && (v6 & 0x1000) == 0)
  {
    v6 |= 0x1000uLL;
  }

  result = type metadata accessor for FeedRecipe.State();
  v5 = 0x80000000;
  if (!v3[*(result + 24)])
  {
    v5 = 0x100000000;
  }

  if ((v6 & v5) != 0)
  {
    v5 = 0;
  }

  *a1 = v6 | v5;
  return result;
}

uint64_t FeedRecipe.additionalFormatFeedItems.getter()
{
  sub_1D6C9E36C(0, &qword_1EDF199E0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  v2 = [*(v0 + 56) sourceChannel];
  *(v1 + 56) = &type metadata for FeedTag;
  *(v1 + 64) = sub_1D5EE5BA8();
  v3 = swift_allocObject();
  *(v1 + 32) = v3;
  v4 = [v2 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *(v3 + 96) = xmmword_1D7279980;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  *(v3 + 16) = v5;
  *(v3 + 24) = v7;
  *(v3 + 32) = v2;
  *(v3 + 40) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0xE000000000000000;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  v8 = MEMORY[0x1E69E7CD0];
  *(v3 + 80) = 0;
  *(v3 + 88) = v8;
  return v1;
}

uint64_t FeedRecipe.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedRecipe.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t FeedRecipe.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5BF2DDC(v2, v3);
}

unint64_t FeedRecipe.visibility.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C00308(v2);
}

uint64_t FeedRecipe.premiumBadge.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedRecipe();
  *a1 = *(v1 + *(result + 44));
  return result;
}

unint64_t sub_1D6C9D654@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return sub_1D5C00308(v2);
}

uint64_t sub_1D6C9D664()
{
  v1 = [*(v0 + 56) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6C9D6BC()
{
  v1 = [objc_msgSend(*(v0 + 56) sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D6C9D738()
{
  v1 = [*(v0 + 56) title];
  v2 = sub_1D726207C();

  return v2;
}

id sub_1D6C9D790()
{
  v1 = [*(v0 + 56) thumbnailMedium];
  v2 = [v1 thumbnailAssetHandle];

  return v2;
}

id sub_1D6C9D7E8()
{
  v1 = [*(v0 + 56) scoreProfile];

  return v1;
}

uint64_t FeedRecipe.stateSelectors.getter()
{
  sub_1D5B5D2B4(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7270C10;
  v2 = (v0 + *(type metadata accessor for FeedRecipe() + 36));
  v3 = *v2;
  v4 = "access-level-no-bundle-access";
  v5 = "deleted-state-none";
  v6 = 0xD00000000000001DLL;
  if (v3 != 1)
  {
    v6 = 0xD000000000000020;
    v5 = "offensive-state-none";
  }

  v7 = v3 == 0;
  if (*v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (!v7)
  {
    v4 = v5;
  }

  *(v1 + 32) = v8;
  *(v1 + 40) = v4 | 0x8000000000000000;
  v9 = type metadata accessor for FeedRecipe.State();
  v10 = "deleted-state-deleted";
  if (v2[*(v9 + 24)])
  {
    v11 = 0xD000000000000015;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (!v2[*(v9 + 24)])
  {
    v10 = "blocked-state-blocked";
  }

  *(v1 + 48) = v11;
  *(v1 + 56) = v10 | 0x8000000000000000;
  return v1;
}

uint64_t sub_1D6C9D930()
{
  sub_1D6C9F0B8(0, &unk_1EDF19568, sub_1D6C9F344, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x7972616D697270;
  *(inited + 16) = xmmword_1D7274590;
  *(inited + 40) = 0xE700000000000000;
  v2 = *(v0 + 56);
  *(inited + 48) = [v2 thumbnailPrimaryColor];
  *(inited + 56) = 0x756F72676B636162;
  *(inited + 64) = 0xEA0000000000646ELL;
  *(inited + 72) = [v2 thumbnailBackgroundColor];
  *(inited + 80) = 1954047348;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = [v2 thumbnailTextColor];
  *(inited + 104) = 0x746E65636361;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = [v2 thumbnailAccentColor];
  v3 = sub_1D605AE4C(inited);
  swift_setDeallocating();
  sub_1D6C9F344();
  swift_arrayDestroy();
  v4 = sub_1D6C9E44C(v3);

  v5 = sub_1D6C9CBCC(v4);

  if (*(v0 + *(type metadata accessor for FeedRecipe() + 44)))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D5B858EC(0, *(v5 + 16) + 1, 1, v5);
    }

    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1D5B858EC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 16) = v7 + 1;
    v8 = v5 + 16 * v7;
    *(v8 + 32) = 0x6D75696D657270;
    *(v8 + 40) = 0xE700000000000000;
  }

  sub_1D7263D4C();

  v9 = [objc_msgSend(v2 sourceChannel)];
  swift_unknownObjectRelease();
  v10 = sub_1D726207C();
  v12 = v11;

  MEMORY[0x1DA6F9910](v10, v12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D5B858EC(0, *(v5 + 16) + 1, 1, v5);
  }

  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_1D5B858EC((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 16) = v14 + 1;
  v15 = v5 + 16 * v14;
  *(v15 + 32) = 0xD000000000000012;
  *(v15 + 40) = 0x80000001D73C1100;
  return v5;
}

uint64_t sub_1D6C9DC80()
{
  v0 = sub_1D6C9D930();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D70756F7267;
      *(v8 + 40) = 0xE600000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1D6C9DDAC()
{
  v1 = (v0 + *(type metadata accessor for FeedRecipe() + 36));
  v2 = "deleted-state-none";
  v3 = 0xD00000000000001DLL;
  if (*v1 != 1)
  {
    v3 = 0xD000000000000020;
    v2 = "offensive-state-none";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000011;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = "access-level-no-bundle-access";
  }

  v6 = v5 | 0x8000000000000000;
  v25 = v4;
  v26 = v5 | 0x8000000000000000;
  v7 = type metadata accessor for FeedRecipe.State();
  if (v1[*(v7 + 24)])
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (v1[*(v7 + 24)])
  {
    v9 = "deleted-state-deleted";
  }

  else
  {
    v9 = "blocked-state-blocked";
  }

  v10 = v9 | 0x8000000000000000;
  v27 = v8;
  v28 = v9 | 0x8000000000000000;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, 2, 0);
  v11 = v24;
  strcpy(v23, "group-recipe-");
  HIWORD(v23[1]) = -4864;

  MEMORY[0x1DA6F9910](v4, v6);

  v12 = v23[0];
  v13 = v23[1];
  v15 = *(v24 + 16);
  v14 = *(v24 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_1D5BFC364((v14 > 1), v15 + 1, 1);
    v11 = v24;
  }

  *(v11 + 16) = v15 + 1;
  v16 = v11 + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  strcpy(v23, "group-recipe-");
  HIWORD(v23[1]) = -4864;

  MEMORY[0x1DA6F9910](v8, v10);

  v17 = v23[0];
  v18 = v23[1];
  v24 = v11;
  v20 = *(v11 + 16);
  v19 = *(v11 + 24);
  if (v20 >= v19 >> 1)
  {
    sub_1D5BFC364((v19 > 1), v20 + 1, 1);
    v11 = v24;
  }

  *(v11 + 16) = v20 + 1;
  v21 = v11 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  swift_arrayDestroy();
  return v11;
}

uint64_t FeedRecipe.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1D6C9E938(v1, a1, type metadata accessor for FeedRecipe);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6C9E03C@<X0>(uint64_t a1@<X8>)
{
  sub_1D6C9E938(v1, a1, type metadata accessor for FeedRecipe);
  type metadata accessor for FeedGroupItem();

  return swift_storeEnumTagMultiPayload();
}

uint64_t FeedRecipe.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 56);
  v10 = [v9 identifier];
  if (!v10)
  {
    sub_1D726207C();
    v10 = sub_1D726203C();
  }

  v11 = [v9 articles];
  sub_1D5B5D6A0();
  v12 = sub_1D726267C();

  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1DA6FB460](0, v12);
    goto LABEL_8;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v12 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v15 = [v14 identifier];
    swift_unknownObjectRelease();
    if (v15)
    {
LABEL_13:
      v16 = [objc_opt_self() nss:v10 NewsURLForRecipeID:v15 articleID:?];

      sub_1D72584EC();
      sub_1D725844C();
      v17 = [v9 title];
      sub_1D726207C();

      sub_1D725F83C();
      (*(v4 + 8))(v8, v3);
      v18 = sub_1D725F84C();
      return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
    }

    sub_1D726207C();
    v15 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D6C9E36C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t *sub_1D6C9E3D4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D6C9E5AC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D6C9E44C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD)
  {
    goto LABEL_2;
  }

  v12 = 8 * (v6 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v8 = v12;
LABEL_2:
    MEMORY[0x1EEE9AC00](a1, v8);
    v10 = v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_1D6C9E5AC(v10, v7, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v13 = swift_slowAlloc();
  v14 = v2;
  v15 = sub_1D6C9E3D4(v13, v7, v3);
  result = MEMORY[0x1DA6FD500](v13, -1, -1);
  if (!v14)
  {
    return v15;
  }

  return result;
}

unint64_t *sub_1D6C9E5AC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D62CF078(result, a2, v4, a3);
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

    if (v5 >= v9)
    {
      return sub_1D62CF078(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s8NewsFeed0B6RecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = a1[7];
  v6 = [v5 identifier];
  v7 = sub_1D726207C();
  v9 = v8;

  v10 = a2[7];
  v11 = [v10 identifier];
  v12 = sub_1D726207C();
  v14 = v13;

  if (v7 == v12 && v9 == v14)
  {
  }

  else
  {
    v16 = sub_1D72646CC();

    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v17 = [v5 title];
  v18 = sub_1D726207C();
  v20 = v19;

  v21 = [v10 title];
  v22 = sub_1D726207C();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {
  }

  else
  {
    v25 = sub_1D72646CC();

    if ((v25 & 1) == 0)
    {
LABEL_20:
      v30 = 0;
      return v30 & 1;
    }
  }

  v26 = *(type metadata accessor for FeedRecipe() + 36);
  v27 = a1 + v26;
  v28 = a2 + v26;
  if (*v27 != *(a2 + v26))
  {
    goto LABEL_20;
  }

  v29 = type metadata accessor for FeedRecipe.State();
  if ((_s8NewsFeed0B4ItemO11SharedStateO2eeoiySbAE_AEtFZ_0(&v27[*(v29 + 20)], &v28[*(v29 + 20)]) & 1) == 0)
  {
    goto LABEL_20;
  }

  v30 = v27[*(v29 + 24)] ^ v28[*(v29 + 24)] ^ 1;
  return v30 & 1;
}

uint64_t sub_1D6C9E8B4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D6C9E36C(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6C9E938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6C9E9A0(uint64_t a1)
{
  result = sub_1D6C9F2A0(&qword_1EDF12E10);
  *(a1 + 16) = result;
  return result;
}

void *sub_1D6C9EA0C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D6C9F0B8(0, &qword_1EC880AB0, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6720]);
  v60 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v57 - v7);
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, v4);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for FeedRecipe();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6C9F11C(a2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D6C9F1B0(v12);
    return sub_1D7073500(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D6C9F23C(v12, v17);
    v19 = *(a1 + 112);
    v64[6] = *(a1 + 96);
    v64[7] = v19;
    v64[8] = *(a1 + 128);
    v65 = *(a1 + 144);
    v20 = *(a1 + 48);
    v64[2] = *(a1 + 32);
    v64[3] = v20;
    v21 = *(a1 + 80);
    v64[4] = *(a1 + 64);
    v64[5] = v21;
    v22 = *(a1 + 16);
    v64[0] = *a1;
    v64[1] = v22;
    sub_1D5EF032C();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    *(&v67 + 1) = v13;
    v68 = sub_1D6C9F2A0(&qword_1EDF12E00);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
    v59 = v17;
    sub_1D6C9E938(v17, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
    sub_1D713A66C(&v66, v63);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v24 = v63[0];
    v63[0] = MEMORY[0x1E69E7CC0];
    sub_1D69972A4(0, 0, 0);
    v25 = v63[0];
    if (v24)
    {
      while (1)
      {
        v26 = v24 & -v24;
        *&v66 = 91;
        *(&v66 + 1) = 0xE100000000000000;
        v62 = v26;
        v61 = sub_1D713AFE4();
        sub_1D5B5D2B4(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
        sub_1D5BB0AB8();
        v27 = sub_1D7261F3C();
        v29 = v28;

        MEMORY[0x1DA6F9910](v27, v29);

        MEMORY[0x1DA6F9910](93, 0xE100000000000000);
        v30 = sub_1D5FD24A4(1uLL, v66, *(&v66 + 1));
        v32 = v31;

        result = sub_1D726398C();
        if (__OFSUB__(result, 1))
        {
          break;
        }

        result = sub_1D726396C();
        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = result;
        }

        if (v34 >> 14 < v30 >> 14)
        {
          goto LABEL_15;
        }

        v35 = sub_1D72639BC();
        v37 = v36;
        v39 = v38;
        v41 = v40;

        v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
        v44 = v43;

        v45 = type metadata accessor for FormatInspectionItem(0);
        v46 = (v8 + *(v45 + 24));
        *v46 = 0;
        v46[1] = 0xE000000000000000;
        v47 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
        *v8 = v42;
        v8[1] = v44;
        v8[2] = 0;
        v8[3] = 0;
        v48 = v8 + *(v45 + 28);
        *v48 = 0;
        *(v48 + 1) = 0;
        v48[16] = -1;
        (*(*(v45 - 8) + 56))(v8, 0, 1, v45);
        v63[0] = v25;
        v50 = *(v25 + 16);
        v49 = *(v25 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D69972A4(v49 > 1, v50 + 1, 1);
          v25 = v63[0];
        }

        *(v25 + 16) = v50 + 1;
        sub_1D5E4F52C(v8, v25 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v50);
        v51 = v26 == v24;
        v24 ^= v26;
        if (v51)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_13:
      sub_1D6795150(0x737469617254, 0xE600000000000000, 0, 0, v25, &v66);

      v52 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v52 + 64) = &off_1F518B2C0;
      v53 = swift_allocObject();
      *(v52 + 32) = v53;
      *(v53 + 48) = v68;
      v54 = v67;
      *(v53 + 16) = v66;
      *(v53 + 32) = v54;
      v55 = v59;
      v56 = sub_1D61A7618(v64, v59);
      swift_setDeallocating();
      sub_1D6C9E36C(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      sub_1D6C9F2E4(v55, type metadata accessor for FeedRecipe);
      return v56;
    }
  }

  return result;
}

void sub_1D6C9F0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6C9F11C(uint64_t a1, uint64_t a2)
{
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C9F1B0(uint64_t a1)
{
  sub_1D6C9F0B8(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6C9F23C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedRecipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6C9F2A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeedRecipe();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6C9F2E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6C9F344()
{
  if (!qword_1EDF1B610)
  {
    sub_1D5EE6520();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1B610);
    }
  }
}

BOOL static FormatSwitchListValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  type metadata accessor for FormatSwitchListValue.CaseValue();
  swift_getWitnessTable();
  if ((sub_1D726280C() & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v3)
    {
      swift_bridgeObjectRetain_n();

      v4 = sub_1D726280C();
      swift_bridgeObjectRelease_n();

      return (v4 & 1) != 0;
    }

    goto LABEL_7;
  }

  if (v3)
  {
LABEL_7:

    return 0;
  }

  return 1;
}

uint64_t FormatSwitchListValue.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v19 = a1;
  v18 = sub_1D725BC7C();
  v4 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  type metadata accessor for FormatSwitchListValue.CaseValue();
  v17 = (v4 + 8);

  v9 = 0;
  for (i = (v8 + 40); ; i += 2)
  {
    if (v9 == sub_1D726279C())
    {
    }

    v12 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v12 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_12;
    }

    v14 = *(i - 1);
    v15 = *i;
    v20 = v14;
    swift_retain_n();

    sub_1D71C3968(v19, v22, v7);
    if (v3)
    {
    }

    if ((sub_1D725BC6C() & 1) == 0)
    {
      v20 = v14;
      v21 = v15;
      sub_1D6261F40(v19, v22);
    }

    v11 = sub_1D725BC5C();

    (*v17)(v7, v18);
    ++v9;
    if (v11)
    {
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D6C9F750(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v5, &v4);

  if ((v2 & 1) == 0)
  {
    return 0;
  }

  return sub_1D726280C();
}

uint64_t sub_1D6C9F8AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C9F928(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6C9F9E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

__n128 FormatGroup.init(identifier:name:description:priority:columns:columnSystem:children:styles:sortBy:selectors:options:types:contentSizeCategory:requirements:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16)
{
  v22 = *a7;
  v23 = *a10;
  v24 = a10[1];
  v25 = *a15;
  *a9 = a1;
  *(a9 + 8) = a2;

  *(a9 + 16) = a3;
  *(a9 + 24) = a4;

  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = v22;
  *(a9 + 56) = a8;
  sub_1D5C5D428(0, 2uLL);
  *(a9 + 64) = v23;
  *(a9 + 72) = v24;
  result = a12;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = v25;
  *(a9 + 136) = a16;
  return result;
}

uint64_t FormatGroup.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatGroup.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatGroup.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatGroup.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FormatGroup.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t FormatGroup.columns.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t FormatGroup.columnSystem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D5D5FDA4(v2, v3);
}

uint64_t FormatGroup.columnSystem.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D5C5D428(*(v1 + 64), *(v1 + 72));
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  return result;
}

uint64_t FormatGroup.children.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t FormatGroup.styles.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t FormatGroup.sortBy.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t FormatGroup.selectors.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

uint64_t FormatGroup.options.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t FormatGroup.types.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t FormatGroup.requirements.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

BOOL _s8NewsFeed11FormatGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v38 = *(a1 + 56);
  v36 = *(a1 + 64);
  v35 = *(a1 + 72);
  v32 = *(a1 + 80);
  v30 = *(a1 + 88);
  v28 = *(a1 + 96);
  v26 = *(a1 + 104);
  v24 = *(a1 + 112);
  v22 = *(a1 + 120);
  v20 = *(a1 + 128);
  v18 = *(a1 + 136);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 48);
  v37 = *(a2 + 56);
  v33 = *(a2 + 72);
  v34 = *(a2 + 64);
  v31 = *(a2 + 80);
  v29 = *(a2 + 88);
  v27 = *(a2 + 96);
  v25 = *(a2 + 104);
  v23 = *(a2 + 112);
  v21 = *(a2 + 120);
  v19 = *(a2 + 128);
  v17 = *(a2 + 136);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v5)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v9 || (v3 != v10 || v5 != v9) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  if ((sub_1D6DDEB30(v6, v11) & 1) == 0 || (sub_1D5E21790(v38, v37) & 1) == 0)
  {
    return 0;
  }

  v12 = v35;
  if (v35 != 2)
  {
    v13 = v33;
    v14 = v36;
    if (v33 == 2)
    {
      goto LABEL_24;
    }

    if (v35)
    {
      if (v35 == 1)
      {
        if (v33 != 1)
        {
          goto LABEL_32;
        }

LABEL_30:
        sub_1D5D5FDA4(v36, v35);
        sub_1D5D5FDA4(v34, v35);
        sub_1D5F33294(v36, v35);
        sub_1D5F33294(v34, v35);
        sub_1D5C5D428(v34, v35);
        sub_1D5C5D428(v36, v35);
        goto LABEL_35;
      }

      if (v33 >= 2)
      {
        sub_1D5D5FDA4(v36, v35);
        sub_1D5D5FDA4(v36, v35);
        sub_1D5D5FDA4(v34, v33);
        sub_1D5D5FDA4(v36, v35);
        sub_1D5D5FDA4(v34, v33);
        sub_1D5D5FDA4(v36, v35);
        sub_1D5D5FDA4(v34, v33);
        v15 = sub_1D6366584(v36 & 1, v35, v34 & 1, v33);
        sub_1D5F33294(v36, v35);
        sub_1D5F33294(v34, v33);
        sub_1D5C5D428(v34, v33);
        sub_1D5C5D428(v36, v35);
        sub_1D5C5D428(v34, v33);
        sub_1D5C5D428(v36, v35);
        if (v15)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else if (!v33)
    {
      goto LABEL_30;
    }

LABEL_32:
    sub_1D5D5FDA4(v36, v35);
    sub_1D5D5FDA4(v34, v33);
    sub_1D5D5FDA4(v36, v35);
    sub_1D5F33294(v36, v35);
    sub_1D5F33294(v34, v33);
LABEL_33:
    sub_1D5C5D428(v36, v35);
    return 0;
  }

  v13 = v33;
  v14 = v36;
  if (v33 != 2)
  {
LABEL_24:
    sub_1D5D5FDA4(v14, v35);
    sub_1D5D5FDA4(v34, v13);
    sub_1D5C5D428(v14, v35);
    sub_1D5C5D428(v34, v13);
    return 0;
  }

  v12 = 2;
  sub_1D5D5FDA4(v36, 2uLL);
  sub_1D5D5FDA4(v34, 2uLL);
LABEL_35:
  sub_1D5C5D428(v14, v12);
  if ((sub_1D633E44C(v32, v31) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633E5BC(v30, v29) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D634F2BC(v28, v27) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D5BFC390(v26, v25) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D633BCCC(v24, v23) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D63491BC(v22, v21) & 1) == 0)
  {
    return 0;
  }

  v40[0] = v20;
  v39 = v19;
  if ((_s8NewsFeed25FormatContentSizeCategoryO2eeoiySbAC_ACtFZ_0(v40, &v39) & 1) == 0)
  {
    return 0;
  }

  return sub_1D635A518(v18, v17);
}

unint64_t sub_1D6CA0438(uint64_t a1)
{
  result = sub_1D5B4A54C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6CA0470()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D6CA04CC(uint64_t a1, void *a2, uint64_t a3)
{
  result = MEMORY[0x1E69E7CC0];
  v60 = MEMORY[0x1E69E7CC0];
  v55 = *(a3 + 16);
  if (!v55)
  {
    return result;
  }

  v5 = 0;
  v54 = a3 + 32;
  v6 = a1 + 56;
  v7 = *MEMORY[0x1E69DB648];
  v8 = *MEMORY[0x1E69DB978];
  v9 = *MEMORY[0x1E69DB650];
  v52 = *MEMORY[0x1E69DB600];
  while (1)
  {
    v10 = (v54 + 32 * v5);
    v11 = *v10;
    v12 = v10[1];
    v14 = v10[2];
    v13 = v10[3];
    if (*(a1 + 16))
    {
      v15 = sub_1D72649FC();
      v16 = -1 << *(a1 + 32);
      v17 = v15 & ~v16;
      if ((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        v18 = ~v16;
        while (*(*(a1 + 48) + 8 * v17) != v5)
        {
          v17 = (v17 + 1) & v18;
          if (((*(v6 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        MEMORY[0x1DA6F97E0](v11, v12, v14, v13);

        sub_1D6CA158C(0, &qword_1EDF194E0, sub_1D5C09DD4, MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D7279970;
        *(inited + 32) = v7;
        v39 = objc_opt_self();
        v40 = v7;
        v41 = [v39 monospacedSystemFontOfSize:12.0 weight:v8];
        v42 = sub_1D5B5A498(0, &qword_1EDF1A720);
        *(inited + 40) = v41;
        *(inited + 64) = v42;
        *(inited + 72) = v9;
        v43 = objc_opt_self();
        v44 = v9;
        v45 = [v43 labelColor];
        v46 = sub_1D5B5A498(0, qword_1EDF1A6A0);
        *(inited + 80) = v45;
        *(inited + 104) = v46;
        *(inited + 112) = v52;
        *(inited + 144) = v46;
        *(inited + 120) = a2;
        v47 = v52;
        v48 = a2;
        sub_1D5C09CEC(inited);
        swift_setDeallocating();
        sub_1D5C09DD4();
        swift_arrayDestroy();
        v49 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v50 = sub_1D726203C();

        type metadata accessor for Key(0);
        sub_1D5C09E68();
        v51 = sub_1D7261D2C();

        [v49 initWithString:v50 attributes:v51];

        goto LABEL_13;
      }
    }

LABEL_8:

    MEMORY[0x1DA6F97E0](v11, v12, v14, v13);

    v58[0] = v7;
    v19 = objc_opt_self();
    v20 = v7;
    v21 = [v19 monospacedSystemFontOfSize:12.0 weight:v8];
    v58[4] = sub_1D5B5A498(0, &qword_1EDF1A720);
    v59[0] = v9;
    v58[1] = v21;
    v22 = objc_opt_self();
    v23 = v9;
    v24 = [v22 labelColor];
    v59[4] = sub_1D5B5A498(0, qword_1EDF1A6A0);
    v59[1] = v24;
    sub_1D5C09D34();
    v25 = sub_1D726412C();
    sub_1D6CA15F0(v58, &v56);
    v26 = v56;
    result = sub_1D5BAA7D4(v56);
    if (v27)
    {
      break;
    }

    *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v25[6] + 8 * result) = v26;
    result = sub_1D5B7C390(v57, (v25[7] + 32 * result));
    v28 = v25[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
    sub_1D6CA15F0(v59, &v56);
    v31 = v56;
    result = sub_1D5BAA7D4(v56);
    if (v32)
    {
      break;
    }

    *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v25[6] + 8 * result) = v31;
    result = sub_1D5B7C390(v57, (v25[7] + 32 * result));
    v33 = v25[2];
    v29 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v25[2] = v34;
    sub_1D5C09DD4();
    swift_arrayDestroy();
    v35 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v36 = sub_1D726203C();

    type metadata accessor for Key(0);
    sub_1D5C09E68();
    v37 = sub_1D7261D2C();

    [v35 initWithString:v36 attributes:v37];

LABEL_13:
    MEMORY[0x1DA6F9CE0]();
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D726272C();
    }

    sub_1D726278C();
    if (++v5 == v55)
    {
      return v60;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D6CA0ABC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CA0B50(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_71;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v5 = *(a1 + 16);
      result = MEMORY[0x1E69E7CC0];
      if (!v5)
      {
        return result;
      }

      v35 = MEMORY[0x1E69E7CC0];
      sub_1D7263ECC();
      if (v4)
      {
        v7 = sub_1D7263BFC();
      }

      else
      {
        v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
LABEL_75:
        result = swift_unknownObjectRelease();
        __break(1u);
        return result;
      }

      v8 = 0;
      v33 = a1 + 32;
      v31 = v5;
      v30 = v4;
      while (v8 != v5)
      {
        v12 = (v33 + 16 * v8);
        a1 = *v12 - 5;
        if (__OFSUB__(*v12, 5))
        {
          goto LABEL_60;
        }

        v13 = v12[1];
        v14 = __OFADD__(v13, 5);
        v15 = v13 + 5;
        if (v14)
        {
          goto LABEL_61;
        }

        v16 = a1 & ~(a1 >> 63);
        if (v32 >= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v32;
        }

        if (v17 < v16)
        {
          goto LABEL_62;
        }

        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_63;
        }

        if (v4)
        {
          if (sub_1D7263BFC() < v16)
          {
            goto LABEL_64;
          }

          v19 = sub_1D7263BFC();
        }

        else
        {
          v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 > v19)
          {
            goto LABEL_64;
          }
        }

        if (v19 < v18)
        {
          goto LABEL_65;
        }

        if (v18 < 0)
        {
          goto LABEL_66;
        }

        if ((a2 & 0xC000000000000001) == 0)
        {
          goto LABEL_31;
        }

        if (a1 > v18)
        {
          goto LABEL_67;
        }

        if (v16 != v18)
        {
          if (v16 >= v18)
          {
            goto LABEL_70;
          }

          sub_1D5B5A498(0, &qword_1EDF3C730);

          v20 = a1 & ~(a1 >> 63);
          do
          {
            v21 = v20 + 1;
            sub_1D7263DAC();
            v20 = v21;
          }

          while (v18 != v21);
        }

        else
        {
LABEL_31:
        }

        if (v4)
        {

          sub_1D72640EC();
          a1 = v27;
          v34 = v17;
          if ((v27 & 1) == 0)
          {
            v25 = v27 >> 1;
            v23 = v22;
            v26 = (v27 >> 1) - v22;
            a1 = __OFSUB__(v27 >> 1, v22);
            swift_unknownObjectRetain();
            if (a1)
            {
              goto LABEL_68;
            }

            if (v26)
            {
              goto LABEL_49;
            }

LABEL_9:
            swift_unknownObjectRelease();
            v9 = MEMORY[0x1E69E7CC0];
LABEL_10:
            v5 = v31;
            v10 = v34;
            goto LABEL_11;
          }
        }

        else
        {
          v22 = a1 & ~(a1 >> 63);
          a1 = (2 * v18) | 1;
          v34 = v17;
        }

        v23 = v22;
        sub_1D72647AC();
        swift_unknownObjectRetain_n();
        v24 = swift_dynamicCastClass();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        v4 = *(v24 + 16);

        v25 = a1 >> 1;
        v26 = (a1 >> 1) - v23;
        if (__OFSUB__(a1 >> 1, v23))
        {
          goto LABEL_69;
        }

        if (v4 != v26)
        {
          swift_unknownObjectRelease();
          v4 = v30;
          if (!v26)
          {
            goto LABEL_9;
          }

LABEL_49:
          if (v26 < 1)
          {
            v9 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            sub_1D5E42B34();
            v9 = swift_allocObject();
            v28 = _swift_stdlib_malloc_size(v9);
            v29 = v28 - 32;
            if (v28 < 32)
            {
              v29 = v28 - 25;
            }

            v9[2] = v26;
            v9[3] = (2 * (v29 >> 3)) | 1;
          }

          swift_unknownObjectRelease();
          if (v23 == v25)
          {
            goto LABEL_75;
          }

          sub_1D5B5A498(0, &qword_1EDF3C730);
          swift_arrayInitWithCopy();
          goto LABEL_10;
        }

        v9 = swift_dynamicCastClass();
        swift_unknownObjectRelease_n();
        v4 = v30;
        v5 = v31;
        v10 = v34;
        if (v9)
        {
          goto LABEL_12;
        }

        v9 = MEMORY[0x1E69E7CC0];
LABEL_11:
        swift_unknownObjectRelease();
LABEL_12:
        ++v8;
        type metadata accessor for DebugFormatUploadDiffHunk();
        v11 = swift_allocObject();
        v11[3] = v16;
        v11[4] = v10;
        v11[2] = v9;
        sub_1D7263E9C();
        a1 = *(v35 + 16);
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        if (v8 == v5)
        {
          return v35;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      ;
    }

    while (sub_1D7263BFC());
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D6CA0F94(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1D5E3E824(v5, v4);
  v6 = sub_1D60DA9EC(v5, v4);
  if (!v7)
  {
    v38 = v5;
    v39 = v4;
    sub_1D5E3E824(v5, v4);
    sub_1D6CA149C();
    if (swift_dynamicCast())
    {
      sub_1D5B7DDE8(&v35, &v40);
      __swift_project_boxed_opaque_existential_1(&v40, v42);
      if (sub_1D726415C())
      {
        sub_1D5B952F8(v5, v4);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        sub_1D726414C();
        v8 = *(&v35 + 1);
        v9 = v35;
        __swift_destroy_boxed_opaque_existential_1(&v40);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1(&v40);
    }

    else
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      sub_1D6CA1500(&v35);
    }

    v6 = sub_1D60DA7C8(v5, v4);
  }

  v9 = v6;
  v8 = v7;
  sub_1D5B952F8(v5, v4);
LABEL_9:
  v10 = (a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData);
  v11 = *(a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData + 8);
  if (v11 >> 60 != 15)
  {
    v14 = *v10;
    sub_1D5E3E824(*v10, *(a1 + OBJC_IVAR____TtC8NewsFeed21DebugFormatUploadDiff_remoteData + 8));
    sub_1D5E3E824(v14, v11);
    v15 = sub_1D60DA9EC(v14, v11);
    if (v16)
    {
      v12 = v15;
      v13 = v16;
      sub_1D5B952E4(v14, v11);
    }

    else
    {
      v38 = v14;
      v39 = v11;
      sub_1D5E3E824(v14, v11);
      sub_1D6CA149C();
      if (swift_dynamicCast())
      {
        sub_1D5B7DDE8(&v35, &v40);
        __swift_project_boxed_opaque_existential_1(&v40, v42);
        v17 = sub_1D726415C();
        sub_1D5B952E4(v14, v11);
        if (v17)
        {
          __swift_project_boxed_opaque_existential_1(&v40, v42);
          sub_1D726414C();
          sub_1D5B952E4(v14, v11);
          v13 = *(&v35 + 1);
          v12 = v35;
          __swift_destroy_boxed_opaque_existential_1(&v40);
          goto LABEL_20;
        }

        __swift_destroy_boxed_opaque_existential_1(&v40);
      }

      else
      {
        sub_1D5B952E4(v14, v11);
        v37 = 0;
        v35 = 0u;
        v36 = 0u;
        sub_1D6CA1500(&v35);
      }

      v12 = sub_1D60DA7C8(v14, v11);
      v13 = v18;
    }

    sub_1D5B952E4(v14, v11);
    goto LABEL_20;
  }

  v12 = 0;
  v13 = 0xE000000000000000;
LABEL_20:
  v40 = v9;
  v41 = v8;
  sub_1D5BF4D9C();
  v19 = sub_1D7263ACC();

  v40 = v12;
  v41 = v13;
  v20 = sub_1D7263ACC();

  v21 = objc_opt_self();
  v22 = [v21 systemGreenColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = [v21 systemRedColor];
  v25 = [v24 colorWithAlphaComponent_];

  v27 = sub_1D6CA04CC(v26, v23, v19);

  v29 = sub_1D6CA04CC(v28, v25, v20);

  v2[2] = a1;

  v31 = sub_1D6CA0B50(v30, v27);

  v2[3] = v31;

  v33 = sub_1D6CA0B50(v32, v29);

  v2[4] = v33;
  return v2;
}

unint64_t sub_1D6CA149C()
{
  result = qword_1EC883708;
  if (!qword_1EC883708)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC883708);
  }

  return result;
}

uint64_t sub_1D6CA1500(uint64_t a1)
{
  sub_1D6CA158C(0, &qword_1EC89A1E0, sub_1D6CA149C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6CA158C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D6CA15F0(uint64_t a1, uint64_t a2)
{
  sub_1D5C09DD4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SportsEventStatusResponseEmbed()
{
  result = qword_1EDF099D8;
  if (!qword_1EDF099D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA16C8()
{
  result = type metadata accessor for SportsDataVisualizationResponseEventStatus(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D6CA1744@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CA1EBC(0, &qword_1EDF03930, MEMORY[0x1E69E6F48]);
  v8 = v7;
  v22 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for SportsEventStatusResponseEmbed();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA1D44();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v24;
  LOBYTE(v23[0]) = 0;
  *v15 = sub_1D72642BC();
  v15[1] = v18;
  v20 = v18;
  sub_1D5B68374(a1, v23);
  SportsDataVisualizationResponseEventStatus.init(from:)(v23, v17);
  (*(v16 + 8))(v11, v8);
  sub_1D6CA1D98(v17, v15 + *(v12 + 20));
  sub_1D6CA1DFC(v15, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6CA1E60(v15);
}

uint64_t sub_1D6CA19E8(void *a1)
{
  sub_1D6CA1EBC(0, &qword_1EC894708, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA1D44();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for SportsEventStatusResponseEmbed();
    v10[14] = 1;
    type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
    sub_1D6CA1F20();
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6CA1B80()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x6163696E6F6E6163;
  }
}

uint64_t sub_1D6CA1BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6163696E6F6E6163 && a2 == 0xEB0000000064496CLL;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();

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

uint64_t sub_1D6CA1C9C(uint64_t a1)
{
  v2 = sub_1D6CA1D44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA1CD8(uint64_t a1)
{
  v2 = sub_1D6CA1D44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6CA1D44()
{
  result = qword_1EDF09A00;
  if (!qword_1EDF09A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09A00);
  }

  return result;
}

uint64_t sub_1D6CA1D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseEventStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA1DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsEventStatusResponseEmbed();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA1E60(uint64_t a1)
{
  v2 = type metadata accessor for SportsEventStatusResponseEmbed();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6CA1EBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA1D44();
    v7 = a3(a1, &type metadata for SportsEventStatusResponseEmbed.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CA1F20()
{
  result = qword_1EDF06230;
  if (!qword_1EDF06230)
  {
    type metadata accessor for SportsDataVisualizationResponseEventStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF06230);
  }

  return result;
}

unint64_t sub_1D6CA1F8C()
{
  result = qword_1EC894710;
  if (!qword_1EC894710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894710);
  }

  return result;
}

unint64_t sub_1D6CA1FE4()
{
  result = qword_1EDF099F0;
  if (!qword_1EDF099F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF099F0);
  }

  return result;
}

unint64_t sub_1D6CA203C()
{
  result = qword_1EDF099F8;
  if (!qword_1EDF099F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF099F8);
  }

  return result;
}

uint64_t SportsRecord.wins.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SportsRecord.losses.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsRecord.ties.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsRecord.rank.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
}

uint64_t SportsRecord.recordDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v6)
  {
    v8 = objc_opt_self();

    v9 = [v8 bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7279970;
    v11 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v12 = sub_1D5B7E2C0();
    *(v10 + 32) = v2;
    *(v10 + 40) = v1;
    *(v10 + 96) = v11;
    *(v10 + 104) = v12;
    *(v10 + 64) = v12;
    *(v10 + 72) = v4;
    *(v10 + 80) = v3;
    *(v10 + 136) = v11;
    *(v10 + 144) = v12;
    *(v10 + 112) = v5;
    *(v10 + 120) = v6;
  }

  else
  {
    v13 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5C384A0();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1D7270C10;
    v15 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1D5B7E2C0();
    *(v14 + 32) = v2;
    *(v14 + 40) = v1;
    *(v14 + 96) = v15;
    *(v14 + 104) = v16;
    *(v14 + 64) = v16;
    *(v14 + 72) = v4;
    *(v14 + 80) = v3;
  }

  v17 = sub_1D72620BC();

  return v17;
}

uint64_t sub_1D6CA2394()
{
  v1 = 1936615799;
  v2 = 1936025972;
  if (*v0 != 2)
  {
    v2 = 1802396018;
  }

  if (*v0)
  {
    v1 = 0x736573736F6CLL;
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

uint64_t sub_1D6CA23F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D6CA2ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6CA241C(uint64_t a1)
{
  v2 = sub_1D6CA2BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA2458(uint64_t a1)
{
  v2 = sub_1D6CA2BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRecord.encode(to:)(void *a1)
{
  sub_1D6CA2C94(0, &qword_1EC894718, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v17 - v7;
  v9 = v1[2];
  v23 = v1[3];
  v24 = v9;
  v10 = v1[4];
  v21 = v1[5];
  v22 = v10;
  v11 = v1[6];
  v19 = v1[7];
  v20 = v11;
  v18 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA2BEC();
  sub_1D7264B5C();
  LOBYTE(v26) = 0;
  v12 = v25;
  sub_1D72643FC();
  if (!v12)
  {
    v14 = v19;
    v13 = v20;
    v15 = v18;
    LOBYTE(v26) = 1;
    sub_1D72643FC();
    LOBYTE(v26) = 2;
    sub_1D726437C();
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v29 = 3;
    sub_1D6CA2C40();

    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SportsRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6CA2C94(0, &qword_1EC894730, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA2BEC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37[0]) = 0;
  v11 = sub_1D72642BC();
  v31 = v12;
  LOBYTE(v37[0]) = 1;
  v13 = sub_1D72642BC();
  v30 = v14;
  v28 = v13;
  LOBYTE(v37[0]) = 2;
  v27 = sub_1D726422C();
  v29 = v15;
  v40 = 3;
  sub_1D6CA2CF8();
  sub_1D726427C();
  (*(v7 + 8))(v10, v6);
  v26 = v38;
  v16 = v39;
  v25 = *(&v38 + 1);
  v17 = v31;
  *&v32 = v11;
  *(&v32 + 1) = v31;
  v18 = v28;
  v19 = v30;
  *&v33 = v28;
  *(&v33 + 1) = v30;
  v20 = v29;
  *&v34 = v27;
  *(&v34 + 1) = v29;
  v35 = v38;
  v36 = v39;
  *(a2 + 64) = v39;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  sub_1D6CA2D4C(&v32, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[0] = v11;
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = v19;
  v37[4] = v27;
  v37[5] = v20;
  v37[6] = v26;
  v37[7] = v25;
  v37[8] = v16;
  return sub_1D6CA2D84(v37);
}

BOOL _s8NewsFeed12SportsRecordV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[8];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v15 = a2[6];
  v16 = a1[6];
  v11 = a2[8];
  v13 = a2[7];
  v14 = a1[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v3 != v10 || v5 != v9) && (sub_1D72646CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (v11)
    {
      return v16 == v15 && (v14 == v13 && v6 == v11 || (sub_1D72646CC() & 1) != 0);
    }

    goto LABEL_22;
  }

  if (v11)
  {
LABEL_22:

    return 0;
  }

  return 1;
}

unint64_t sub_1D6CA2BEC()
{
  result = qword_1EC894720;
  if (!qword_1EC894720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894720);
  }

  return result;
}

unint64_t sub_1D6CA2C40()
{
  result = qword_1EC894728;
  if (!qword_1EC894728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894728);
  }

  return result;
}

void sub_1D6CA2C94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA2BEC();
    v7 = a3(a1, &type metadata for SportsRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6CA2CF8()
{
  result = qword_1EC894738;
  if (!qword_1EC894738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894738);
  }

  return result;
}

unint64_t sub_1D6CA2DC8()
{
  result = qword_1EC894740;
  if (!qword_1EC894740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894740);
  }

  return result;
}

unint64_t sub_1D6CA2E20()
{
  result = qword_1EC894748;
  if (!qword_1EC894748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894748);
  }

  return result;
}

unint64_t sub_1D6CA2E78()
{
  result = qword_1EC894750;
  if (!qword_1EC894750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894750);
  }

  return result;
}

uint64_t sub_1D6CA2ECC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936615799 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736573736F6CLL && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936025972 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

id sub_1D6CA302C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EDF145B0 = v0;
  return result;
}

id sub_1D6CA30B4()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v0 setUnitsStyle_];
  qword_1EDF14598 = v0;
  return result;
}

uint64_t sub_1D6CA3194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D6CA321C(uint64_t a1)
{
  v2 = sub_1D6CA341C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6CA3258(uint64_t a1)
{
  v2 = sub_1D6CA341C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsRoster.encode(to:)(void *a1)
{
  sub_1D6CA371C(0, &qword_1EC894758, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B5C();
  sub_1D61B90AC();
  sub_1D6CA37CC(&qword_1EC894760, sub_1D61B90AC);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6CA341C()
{
  result = qword_1EDF11FC0;
  if (!qword_1EDF11FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FC0);
  }

  return result;
}

uint64_t SportsRoster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_1D61B90AC();
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v24 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CA371C(0, &qword_1EDF03AC8, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - v11;
  v13 = type metadata accessor for SportsRoster();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B0C();
  if (!v2)
  {
    v17 = v22;
    v18 = v23;
    sub_1D6CA37CC(&qword_1EDF17C38, sub_1D61B90AC);
    sub_1D726431C();
    (*(v17 + 8))(v12, v9);
    (*(v18 + 32))(v16, v24, v5);
    sub_1D6CA3814(v16, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6CA371C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6CA341C();
    v7 = a3(a1, &type metadata for SportsRoster.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata accessor for SportsRoster()
{
  result = qword_1EDF11F68;
  if (!qword_1EDF11F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA37CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D6CA3814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsRoster();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6CA3890(void *a1)
{
  sub_1D6CA371C(0, &qword_1EC894758, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6CA341C();
  sub_1D7264B5C();
  sub_1D61B90AC();
  sub_1D6CA37CC(&qword_1EC894760, sub_1D61B90AC);
  sub_1D726443C();
  return (*(v4 + 8))(v7, v3);
}

void sub_1D6CA3A40()
{
  sub_1D61B90AC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1D6CA3AC0()
{
  result = qword_1EC894768;
  if (!qword_1EC894768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894768);
  }

  return result;
}

unint64_t sub_1D6CA3B18()
{
  result = qword_1EDF11FB0;
  if (!qword_1EDF11FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FB0);
  }

  return result;
}

unint64_t sub_1D6CA3B70()
{
  result = qword_1EDF11FB8;
  if (!qword_1EDF11FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11FB8);
  }

  return result;
}

Swift::Bool __swiftcall IssueCoverView.prepareForReuse(identifier:)(Swift::String_optional identifier)
{
  object = identifier.value._object;
  countAndFlagsBits = identifier.value._countAndFlagsBits;
  v4 = &v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier];
  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier + 8];
  if (v5)
  {
    if (!object || (*v4 == identifier.value._countAndFlagsBits ? (v6 = v5 == object) : (v6 = 0), !v6 && (sub_1D72646CC() & 1) == 0))
    {
LABEL_13:
      *v4 = countAndFlagsBits;
      v4[1] = object;

      v12 = &v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
      *v12 = 0u;
      *(v12 + 1) = 0u;
      v12[32] = 1;
      if (v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] != 1)
      {
        v21 = sub_1D6CA3F00();
        sub_1D725FBBC();

LABEL_25:
        LOBYTE(v11) = 1;
        return v11;
      }

      v13 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
      *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView] = 0;

      v14 = sub_1D6CA3F84();
      v15 = [v14 subviews];

      sub_1D5E2B010();
      v16 = sub_1D726267C();

      if (v16 >> 62)
      {
        v11 = sub_1D7263BFC();
        v17 = v11;
        if (v11)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
LABEL_16:
          if (v17 < 1)
          {
            __break(1u);
            return v11;
          }

          for (i = 0; i != v17; ++i)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x1DA6FB460](i, v16);
            }

            else
            {
              v19 = *(v16 + 8 * i + 32);
            }

            v20 = v19;
            [v19 removeFromSuperview];
          }
        }
      }

      goto LABEL_25;
    }
  }

  else if (object)
  {
    goto LABEL_13;
  }

  [v1 bounds];
  if ((v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds + 32] & 1) != 0 || !CGRectEqualToRect(*&v7, *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds]))
  {
    goto LABEL_13;
  }

  LOBYTE(v11) = 0;
  return v11;
}

id IssueCoverView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

Swift::Void __swiftcall IssueCoverView.setMultiSelectionEditing(_:selected:)(Swift::Bool _, Swift::Bool selected)
{
  v4 = [v2 layer];
  v5 = [v2 traitCollection];
  [v5 displayScale];
  v7 = v6;

  [v4 setRasterizationScale_];
  v8 = [v2 layer];
  [v8 setShouldRasterize_];
}

id sub_1D6CA3F00()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_1D725FBCC()) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1D6CA3F84()
{
  v1 = OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D6CA4008(char a1, char a2)
{
  if (a1 == a2)
  {
    return;
  }

  if (!a1)
  {
    v3 = a2;
    v4 = sub_1D6CA3F00();
    goto LABEL_6;
  }

  if (a1 == 1)
  {
    v3 = a2;
    v4 = sub_1D6CA3F84();
LABEL_6:
    v5 = v4;
    [v4 removeFromSuperview];

    a2 = v3;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      return;
    }

    v6 = sub_1D6CA3F84();
    [v2 bounds];
    [v6 setFrame_];

    v7 = &v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView];
  }

  else
  {
    v8 = sub_1D6CA3F00();
    [v2 bounds];
    [v8 setFrame_];

    v7 = &v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView];
    [*&v2[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView] setContentMode_];
  }

  v9 = *v7;

  [v2 addSubview_];
}

id IssueCoverView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView] = 0;
  *&v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView] = 0;
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v11[32] = 1;
  v4[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] = 2;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setAccessibilityIgnoresInvertColors_];
  return v12;
}

id IssueCoverView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall IssueCoverView.layoutSubviews()()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  if (!v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content])
  {
    v4 = sub_1D6CA3F00();
    [v1 bounds];
    goto LABEL_6;
  }

  if (v0[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content] == 1)
  {
    v2 = sub_1D6CA3F84();
    [v1 bounds];
    sub_1D726344C();

    v3 = *&v1[OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView];
    if (v3)
    {
      v4 = v3;
      [v1 bounds];
LABEL_6:
      sub_1D726344C();
    }
  }
}

id IssueCoverView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D6CA44F0()
{
  swift_getObjectType();

  return sub_1D725F07C();
}

void sub_1D6CA4578(char a1)
{
  v3 = *v1;
  v4 = [v3 layer];
  v5 = [v3 traitCollection];
  [v5 displayScale];
  v7 = v6;

  [v4 setRasterizationScale_];
  v8 = [v3 layer];
  [v8 setShouldRasterize_];
}

void sub_1D6CA465C()
{
  sub_1D6CA4934(&qword_1EC8947B0);

  JUMPOUT(0x1DA6F6FC0);
}

void _s8NewsFeed14IssueCoverViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___staticContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView____lazy_storage___dynamicContentView) = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_identifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_lastPreparedBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_content) = 2;
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D6CA4770()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    result = swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 1;
    if (v4 > 0x3F || (v4 & 1) == 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

uint64_t sub_1D6CA47F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed14IssueCoverView_dynamicView);
  if (v1)
  {
    v2 = *(v1 + qword_1EDF11060);
    result = swift_beginAccess();
    v4 = *(v2 + 17);
    *(v2 + 17) = 0;
    if (v4 > 0x3F || (v4 & 1) != 0)
    {

      LayeredMediaViewDisplayStateCoordinator.updateDisplay()();
    }
  }

  return result;
}

unint64_t sub_1D6CA48E0()
{
  result = qword_1EC8947A8;
  if (!qword_1EC8947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947A8);
  }

  return result;
}

uint64_t sub_1D6CA4934(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IssueCoverView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6CA4984()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EDFFC5B8 = 0xD000000000000013;
  unk_1EDFFC5C0 = 0x80000001D73EFFD0;
  qword_1EDFFC5C8 = v3;
  unk_1EDFFC5D0 = v5;
  qword_1EDFFC5D8 = v7;
  unk_1EDFFC5E0 = v9;
  qword_1EDFFC5E8 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4B08()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BABA8 = 0xD000000000000013;
  unk_1EC9BABB0 = 0x80000001D73EFF00;
  qword_1EC9BABB8 = v3;
  unk_1EC9BABC0 = v5;
  qword_1EC9BABC8 = v7;
  unk_1EC9BABD0 = v9;
  qword_1EC9BABD8 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4C88()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BABE0 = 0xD000000000000014;
  *algn_1EC9BABE8 = 0x80000001D73EFDD0;
  qword_1EC9BABF0 = v3;
  unk_1EC9BABF8 = v5;
  qword_1EC9BAC00 = v7;
  unk_1EC9BAC08 = v9;
  qword_1EC9BAC10 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4E08()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BAC18 = 0xD000000000000016;
  unk_1EC9BAC20 = 0x80000001D73EFCD0;
  qword_1EC9BAC28 = v3;
  unk_1EC9BAC30 = v5;
  qword_1EC9BAC38 = v7;
  unk_1EC9BAC40 = v9;
  qword_1EC9BAC48 = MEMORY[0x1E69E7CC0];
}

void sub_1D6CA4F88()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3 = sub_1D725811C();
  v5 = v4;

  v6 = [v1 bundleForClass_];
  v7 = sub_1D725811C();
  v9 = v8;

  qword_1EC9BAC50 = 0xD000000000000017;
  *algn_1EC9BAC58 = 0x80000001D73EFBB0;
  qword_1EC9BAC60 = v3;
  unk_1EC9BAC68 = v5;
  qword_1EC9BAC70 = v7;
  unk_1EC9BAC78 = v9;
  qword_1EC9BAC80 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D6CA5108@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA60 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EC9BABB0;
  v2 = qword_1EC9BABB8;
  v3 = unk_1EC9BABC0;
  v4 = qword_1EC9BABC8;
  v5 = unk_1EC9BABD0;
  v6 = qword_1EC9BABD8;
  *a1 = qword_1EC9BABA8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA51B4@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA68 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BABE8;
  v2 = qword_1EC9BABF0;
  v3 = unk_1EC9BABF8;
  v4 = qword_1EC9BAC00;
  v5 = unk_1EC9BAC08;
  v6 = qword_1EC9BAC10;
  *a1 = qword_1EC9BABE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA5260@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA70 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = unk_1EC9BAC20;
  v2 = qword_1EC9BAC28;
  v3 = unk_1EC9BAC30;
  v4 = qword_1EC9BAC38;
  v5 = unk_1EC9BAC40;
  v6 = qword_1EC9BAC48;
  *a1 = qword_1EC9BAC18;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t sub_1D6CA530C@<X0>(void *a1@<X8>)
{
  if (qword_1EC87DA78 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC9BAC58;
  v2 = qword_1EC9BAC60;
  v3 = unk_1EC9BAC68;
  v4 = qword_1EC9BAC70;
  v5 = unk_1EC9BAC78;
  v6 = qword_1EC9BAC80;
  *a1 = qword_1EC9BAC50;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

uint64_t FeedModel<>.init(model:context:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a5 - 8) + 32))(a6, a1, a5);
  v10 = type metadata accessor for FeedModel();
  result = sub_1D5C25D20(a2, a6 + v10[13]);
  v12 = (a6 + v10[14]);
  *v12 = a3;
  v12[1] = a4;
  v13 = (a6 + v10[16]);
  *v13 = sub_1D5C00104;
  v13[1] = 0;
  return result;
}

uint64_t FeedModel.namespace.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t (*FeedModel<>.copy(withNew:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>))()
{
  v28 = a4;
  v29 = a3;
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, a1, v15, v18);
  sub_1D5BE6814(v4 + *(a2 + 52), v14);
  v22 = (v4 + *(a2 + 56));
  v24 = *v22;
  v23 = v22[1];
  (*(v8 + 16))(v10, v4 + *(a2 + 60), v7);
  v25 = *(a2 + 32);
  v26 = *(a2 + 40);

  return FeedModel<>.init(model:context:namespace:metadata:)(v20, v14, v24, v23, v10, v15, v7, v25, v28, v26, v29);
}

uint64_t FeedModel<>.copy(withNew:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, a1, v11, v14);
  sub_1D5BE6814(v3 + *(a2 + 52), v10);
  FeedModel<>.init(model:context:namespace:)(v16, v10, *(v3 + *(a2 + 56)), *(v3 + *(a2 + 56) + 8), v11, a3);
}

uint64_t sub_1D6CA5848(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v46 = v7;
  v8 = *(v7 + 84);
  v9 = *(sub_1D725891C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = v12 - 1;
  if ((v12 - 1) <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v12 - 1;
  }

  if (v14 <= v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 24) - 8);
  v17 = *(v16 + 84);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v16 + 80);
  if (v15 <= v17)
  {
    v21 = *(v16 + 84);
  }

  else
  {
    v21 = v15;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 | 7;
  v24 = v19 + 9;
  v25 = (v18 | 7) + *(v7 + 64);
  v26 = ((((((((((v18 + 8) & ~(v18 | 7)) + ((((v19 + 9 + ((v18 + 8) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v27 = *(v16 + 64) + 7;
  if (v21 < a2)
  {
    v28 = ((v27 + ((v20 + (v25 & ~v22) + v26 + 16) & ~v20)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v29 = a2 - v21;
    v30 = v28 & 0xFFFFFFF8;
    if ((v28 & 0xFFFFFFF8) != 0)
    {
      v31 = 2;
    }

    else
    {
      v31 = v29 + 1;
    }

    if (v31 >= 0x10000)
    {
      v32 = 4;
    }

    else
    {
      v32 = 2;
    }

    if (v31 < 0x100)
    {
      v32 = 1;
    }

    if (v31 >= 2)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    if (v33 > 1)
    {
      if (v33 == 2)
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v34 = *(a1 + v28);
        if (!v34)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_36;
      }

      v34 = *(a1 + v28);
      if (!v34)
      {
        goto LABEL_36;
      }
    }

    v36 = v34 - 1;
    if (v30)
    {
      v36 = 0;
      v37 = *a1;
    }

    else
    {
      v37 = 0;
    }

    return v21 + (v37 | v36) + 1;
  }

LABEL_36:
  if (v8 == v21)
  {
    v38 = *(v46 + 48);

    return v38(a1, v8, v6);
  }

  v39 = ~v22;
  v40 = ((a1 + v25) & ~v22);
  if (v14 == v21)
  {
    if (v13 < 0)
    {
      v23 = v18 + 8;
      if (v11 < 0x7FFFFFFF)
      {
        v45 = *((v24 + ((v23 + ((v40 + v23) & v39)) & ~v18)) & 0xFFFFFFFFFFFFFFF8) >> 1;
        if (v45 > 0x80000000)
        {
          v44 = -v45;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        v44 = (*(v10 + 48))((v23 + ((v40 + v23) & v39)) & ~v18);
      }

      if (v44 >= 2)
      {
        return v44 - 1;
      }

      else
      {
        return 0;
      }
    }

    v41 = *v40;
    goto LABEL_45;
  }

  v42 = (v40 + v20 + v26 + 16) & ~v20;
  if (v17 < v15)
  {
    v41 = *((v27 + v42) & 0xFFFFFFFFFFFFFFF8);
LABEL_45:
    if (v41 >= 0xFFFFFFFF)
    {
      LODWORD(v41) = -1;
    }

    return (v41 + 1);
  }

  v43 = *(v16 + 48);

  return v43(v42, v17);
}

void sub_1D6CA5C04(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(v8 - 8);
  v57 = v9;
  v10 = *(v9 + 84);
  v11 = *(sub_1D725891C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  v15 = v14 - 1;
  if (v14 - 1 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v14 - 1;
  }

  if (v16 <= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(a4 + 24);
  v19 = *(v18 - 8);
  v20 = *(v19 + 84);
  v21 = *(v9 + 64);
  v22 = *(v11 + 80);
  v23 = *(v11 + 64);
  v24 = *(v19 + 80);
  v25 = *(v19 + 64);
  if (v17 <= v20)
  {
    v26 = *(v19 + 84);
  }

  else
  {
    v26 = v17;
  }

  v27 = v22 | 7;
  v28 = v22 + 8;
  v29 = v23 + 9;
  v30 = ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10;
  v31 = (v22 | 7) + v21;
  v32 = ((((((((v30 + ((v22 + 8) & ~(v22 | 7)) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v33 = v25 + 7;
  v34 = ((v25 + 7 + ((v24 + (v31 & ~(v22 | 7)) + v32 + 16) & ~v24)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v26 >= a3)
  {
    v38 = 0;
    v39 = a2 - v26;
    if (a2 <= v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v35 = a3 - v26;
    if (v34)
    {
      v36 = 2;
    }

    else
    {
      v36 = v35 + 1;
    }

    if (v36 >= 0x10000)
    {
      v37 = 4;
    }

    else
    {
      v37 = 2;
    }

    if (v36 < 0x100)
    {
      v37 = 1;
    }

    if (v36 >= 2)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = a2 - v26;
    if (a2 <= v26)
    {
LABEL_26:
      if (v38 > 1)
      {
        if (v38 != 2)
        {
          *(a1 + v34) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_42;
        }

        *(a1 + v34) = 0;
      }

      else if (v38)
      {
        *(a1 + v34) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_42;
      }

      if (!a2)
      {
        return;
      }

LABEL_42:
      if (v10 == v26)
      {
        v42 = *(v57 + 56);
        v43 = a1;
        v44 = a2;
        v45 = v10;
        v18 = v8;
LABEL_44:

        v42(v43, v44, v45, v18);
        return;
      }

      v46 = ~v27;
      v47 = ((a1 + v31) & ~v27);
      if (v16 == v26)
      {
        if ((v15 & 0x80000000) == 0)
        {
          if ((a2 & 0x80000000) != 0)
          {
            v48 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v48 = (a2 - 1);
          }

          *v47 = v48;
          return;
        }

        v50 = ((v47 + v28) & v46);
        if (v15 < a2)
        {
          v51 = a2 - v14;
          bzero(((v47 + v28) & v46), ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
          if (v30 <= 3)
          {
            *v50 = v51;
          }

          else
          {
            *v50 = v51;
          }

          return;
        }

        v53 = a2 - v14;
        if (a2 >= v14)
        {
          bzero(v50, ((((v29 + ((v22 + 8) & ~v22)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 10);
          if (v30 <= 3)
          {
            *v50 = v53;
          }

          else
          {
            *v50 = v53;
          }

          return;
        }

        v54 = (a2 + 1);
        v55 = (v50 + v28) & ~v22;
        if (v13 >= 0x7FFFFFFF)
        {
          v56 = *(v12 + 56);

          v56(v55, v54);
          return;
        }

        v49 = ((v29 + v55) & 0xFFFFFFFFFFFFFFF8);
        if ((v54 & 0x80000000) == 0)
        {
          *v49 = 2 * ~a2;
          v49[1] = 0;
          return;
        }

        v52 = (a2 - 0x7FFFFFFF);
      }

      else
      {
        v43 = (v47 + v24 + v32 + 16) & ~v24;
        if (v20 >= v17)
        {
          v42 = *(v19 + 56);
          v44 = a2;
          v45 = v20;
          goto LABEL_44;
        }

        v49 = ((v33 + v43) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) == 0)
        {
          *v49 = (a2 - 1);
          return;
        }

        v52 = a2 & 0x7FFFFFFF;
      }

      *v49 = v52;
      v49[1] = 0;
      return;
    }
  }

  if (v34)
  {
    v40 = 1;
  }

  else
  {
    v40 = v39;
  }

  if (v34)
  {
    v41 = ~v26 + a2;
    bzero(a1, v34);
    *a1 = v41;
  }

  if (v38 > 1)
  {
    if (v38 == 2)
    {
      *(a1 + v34) = v40;
    }

    else
    {
      *(a1 + v34) = v40;
    }
  }

  else if (v38)
  {
    *(a1 + v34) = v40;
  }
}

void sub_1D6CA6110()
{
  v0 = sub_1D725F64C();
}

void sub_1D6CA6150()
{
  sub_1D6CA63D8(&qword_1EC8947C8);

  JUMPOUT(0x1DA6F6FC0);
}

void __swiftcall UIView.moveDebugButton(to:)(UIButton_optional *__return_ptr retstr, UIView *to)
{
  v3 = sub_1D6CA61F4();
  if (v3)
  {
    [(UIView *)to addSubview:v3];
  }
}

uint64_t sub_1D6CA61F4()
{
  v1 = [v0 subviews];
  sub_1D5E2B010();
  v2 = sub_1D726267C();

  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    while (!__OFSUB__(v3--, 1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1DA6FB460](v3, v2);
LABEL_8:
        v6 = v5;
        type metadata accessor for DebugButton();
        v7 = swift_dynamicCastClass();
        if (v7)
        {
          v11 = v7;

          return v11;
        }

        v8 = [v6 subviews];
        v9 = sub_1D726267C();

        if (v9 >> 62)
        {
          v10 = sub_1D7263BFC();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10)
        {

          v14 = sub_1D6CA61F4(v13);

          return v14;
        }

        if (!v3)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_19;
        }

        if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v2 + 32 + 8 * v3);
          goto LABEL_8;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        v3 = sub_1D7263BFC();
        if (!v3)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_22:

  return 0;
}

uint64_t sub_1D6CA63D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugButton();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D6CA6418()
{
  result = qword_1EC8947D0;
  if (!qword_1EC8947D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947D0);
  }

  return result;
}

uint64_t sub_1D6CA646C(char a1)
{
  if (a1)
  {
    return 0x676E696E726157;
  }

  else
  {
    return 0x726F727245;
  }
}

id sub_1D6CA64A0(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(MEMORY[0x1E69DC888]);

    return [v1 initWithRed:0.988235294 green:0.729411765 blue:0.0117647059 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() systemRedColor];

    return v3;
  }
}

uint64_t sub_1D6CA657C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v7 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v5 && v4 == v6)
  {
    return 1;
  }

  return sub_1D72646CC();
}

unint64_t sub_1D6CA6634()
{
  result = qword_1EC8947D8;
  if (!qword_1EC8947D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8947D8);
  }

  return result;
}

uint64_t sub_1D6CA6688(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D6CA66D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static FeedPlatform.current.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF34A20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EDF34A28;
  v3 = unk_1EDF34A30;
  *a1 = qword_1EDF34A28;
  a1[1] = v3;

  return sub_1D5B7CD94(v2, v3);
}

uint64_t FeedPlatform.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v6 = sub_1D72646FC();
    v7 = v9;
    v10 = sub_1D726210C();
    v12 = v11;
    v13 = v10 == 0x656E6F6870 && v11 == 0xE500000000000000;
    if (v13 || (v14 = v10, (sub_1D72646CC() & 1) != 0))
    {

      v6 = 0;
      v7 = 1;
    }

    else
    {
      v15 = v14 == 6578544 && v12 == 0xE300000000000000;
      if (v15 || (sub_1D72646CC() & 1) != 0)
      {

        v6 = 0;
        v7 = 2;
      }

      else
      {
        if (v14 == 6513005 && v12 == 0xE300000000000000)
        {
        }

        else
        {
          v16 = sub_1D72646CC();

          if ((v16 & 1) == 0)
          {
            if (qword_1EDF32A58 != -1)
            {
              swift_once();
            }

            sub_1D5C384A0();
            v17 = swift_allocObject();
            *(v17 + 16) = xmmword_1D7273AE0;
            *(v17 + 56) = MEMORY[0x1E69E6158];
            *(v17 + 64) = sub_1D5B7E2C0();
            *(v17 + 32) = v6;
            *(v17 + 40) = v7;

            sub_1D7262EDC();
            sub_1D725C30C();

            goto LABEL_13;
          }
        }

        v6 = 0;
        v7 = 3;
      }
    }

LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v18);
    goto LABEL_6;
  }

  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  sub_1D7262EBC();
  sub_1D5C384A0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7273AE0;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v18[6] = v2;
  sub_1D5B49474(0, &qword_1EDF3C5D0);
  sub_1D7263F9C();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D5B7E2C0();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D725C30C();

  v6 = 0;
  v7 = 0;
LABEL_6:
  *a2 = v6;
  a2[1] = v7;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *FeedPlatform.encode(to:)(void *result)
{
  if (*(v1 + 8))
  {
    __swift_project_boxed_opaque_existential_1(result, result[3]);
    sub_1D7264B3C();
    __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
    sub_1D726473C();
    return __swift_destroy_boxed_opaque_existential_1(v2);
  }

  return result;
}

uint64_t FeedPlatform.hash(into:)()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 1:
      v2 = 1;
      return MEMORY[0x1DA6FC0B0](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1DA6FC0B0](v2);
    case 3:
      v2 = 3;
      return MEMORY[0x1DA6FC0B0](v2);
  }

  MEMORY[0x1DA6FC0B0](0);
  if (!v1)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t FeedPlatform.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D7264A0C();
  switch(v1)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (v1)
      {
        sub_1D72621EC();
      }

      break;
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6CA6EA4()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 1:
      v2 = 1;
      return MEMORY[0x1DA6FC0B0](v2);
    case 2:
      v2 = 2;
      return MEMORY[0x1DA6FC0B0](v2);
    case 3:
      v2 = 3;
      return MEMORY[0x1DA6FC0B0](v2);
  }

  MEMORY[0x1DA6FC0B0](0);
  if (!v1)
  {
    return sub_1D7264A2C();
  }

  sub_1D7264A2C();

  return sub_1D72621EC();
}

uint64_t sub_1D6CA6F54()
{
  v1 = *(v0 + 8);
  sub_1D7264A0C();
  switch(v1)
  {
    case 1:
      MEMORY[0x1DA6FC0B0](1);
      break;
    case 2:
      MEMORY[0x1DA6FC0B0](2);
      break;
    case 3:
      MEMORY[0x1DA6FC0B0](3);
      break;
    default:
      MEMORY[0x1DA6FC0B0](0);
      sub_1D7264A2C();
      if (v1)
      {
        sub_1D72621EC();
      }

      break;
  }

  return sub_1D7264A5C();
}

uint64_t sub_1D6CA700C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 4)
  {
    return (v3 - 3);
  }

  else
  {
    return 0;
  }
}

void *sub_1D6CA7068(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

NewsFeed::FeedOptionList __swiftcall FeedOptionList.init(contentOptions:contentGroupOptions:)(Swift::OpaquePointer contentOptions, Swift::OpaquePointer contentGroupOptions)
{
  v2->_rawValue = contentOptions._rawValue;
  v2[1]._rawValue = contentGroupOptions._rawValue;
  result.contentGroupOptions = contentGroupOptions;
  result.contentOptions = contentOptions;
  return result;
}

uint64_t FeedOptionList.groupItem.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CA7124@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v3;
  a1[1] = v2;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D6CA7188(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8NewsFeed20FormatWorkspaceGroupV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for FormatWorkspaceGroup() + 24);

  return _s8NewsFeed21FormatContentSubgroupV2eeoiySbAC_ACtFZ_0((a1 + v6), (a2 + v6));
}

uint64_t sub_1D6CA7298(uint64_t a1)
{
  result = sub_1D6CA73B4(&qword_1EC8947E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for FormatWorkspaceGroup()
{
  result = qword_1EC8947F0;
  if (!qword_1EC8947F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6CA7328(void *a1)
{
  a1[1] = sub_1D6CA73B4(&qword_1EC885FB0);
  a1[2] = sub_1D6CA73B4(&qword_1EC886000);
  result = sub_1D6CA73B4(&qword_1EC8947E8);
  a1[3] = result;
  return result;
}

uint64_t sub_1D6CA73B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatWorkspaceGroup();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D6CA7420()
{
  result = type metadata accessor for FormatContentSubgroup();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *Commands.RemoveIssues.Prompt.__allocating_init(issues:actions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t Commands.RemoveIssues.Prompt.completion.getter()
{
  v1 = *(v0 + 32);
  sub_1D5DEA510(v1);
  return v1;
}

void *Commands.RemoveIssues.Prompt.init(issues:actions:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t Commands.RemoveIssues.Prompt.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

char *Commands.RemoveIssues.Prompt.description.getter()
{
  v1 = v0;
  sub_1D7263D4C();

  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    v3 = sub_1D7263BFC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
LABEL_13:
    sub_1D5B58150(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v15 = sub_1D7261F3C();
    v17 = v16;

    MEMORY[0x1DA6F9910](v15, v17);

    MEMORY[0x1DA6F9910](0x6E6F69746361202CLL, 0xEA00000000003D73);
    v18 = MEMORY[0x1DA6F9D20](*(v1 + 24), &type metadata for Commands.RemoveIssues.Prompt.Action);
    MEMORY[0x1DA6F9910](v18);

    MEMORY[0x1DA6F9910](125, 0xE100000000000000);
    return 0x3D7365757373697BLL;
  }

  v20 = MEMORY[0x1E69E7CC0];
  result = sub_1D5BFC364(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v19 = v0;
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA6FB460](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 identifier];
      v9 = sub_1D726207C();
      v11 = v10;

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D5BFC364((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      *(v20 + 16) = v13 + 1;
      v14 = v20 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v3 != v5);
    v1 = v19;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Commands.RemoveIssues.Prompt.deinit()
{

  sub_1D5B74328(*(v0 + 32));
  return v0;
}

uint64_t Commands.RemoveIssues.Prompt.__deallocating_deinit()
{

  sub_1D5B74328(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6CA7918(void *a1, uint64_t *a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v9 = *a2;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D72816C0;
  *(v11 + 32) = v10;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v19[0] = v10;

  v14 = [v13 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDF05C10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B40], v4);
  v19[1] = v11;
  swift_allocObject();
  v16 = v15;
  v17 = sub_1D725D3AC();

  return v17;
}

uint64_t static SharingActivity.removeIssuePrompt(issue:actions:)(void *a1, uint64_t a2)
{
  v4 = sub_1D725DFEC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D72816C0;
  *(v6 + 32) = a1;
  type metadata accessor for Commands.RemoveIssues.Prompt();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = 0;
  v7[5] = 0;
  v8 = qword_1EDF16C58;
  v9 = a1;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_1D726203C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v12 = qword_1EDF05C10;
  sub_1D725DFDC();
  swift_allocObject();
  v13 = sub_1D725D5CC();

  return v13;
}

uint64_t _s5TeaUI15ContextMenuItemC8NewsFeedE17removeIssuePrompt5issue7actionsACSgSo7FCIssueCSg_SayAA8CommandsCADE12RemoveIssuesV0J0C6ActionOGtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_1D725DC6C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  sub_1D5B58150(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D72816C0;
  *(v9 + 32) = a1;
  type metadata accessor for Commands.RemoveIssues.Prompt();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = 0;
  v10[5] = 0;
  v11 = qword_1EDF16C58;
  v12 = a1;

  if (v11 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();

  v15 = [v14 bundleForClass_];
  sub_1D725811C();

  if (qword_1EDF05C08 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDF05C10;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7B40], v4);
  v20[1] = v10;
  sub_1D725D3DC();
  swift_allocObject();
  v17 = v16;
  v18 = sub_1D725D3AC();

  return v18;
}

unint64_t sub_1D6CA8158()
{
  result = qword_1EC894800;
  if (!qword_1EC894800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894800);
  }

  return result;
}

void sub_1D6CA81F8(double a1)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_setContentScaleFactor_, a1);
  v4 = [v1 subviews];
  sub_1D5E2B010();
  v5 = sub_1D726267C();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v6 = sub_1D7263BFC();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1DA6FB460](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v11.receiver = v1;
      v11.super_class = ObjectType;
      objc_msgSendSuper2(&v11, sel_contentScaleFactor);
      sub_1D6CA87B0(v9, v10);
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1D6CA8338()
{
  v1 = &v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  v2 = [v0 subviews];
  sub_1D5E2B010();
  v3 = sub_1D726267C();

  if (v3 >> 62)
  {
    v4 = sub_1D7263BFC();
    if (v4)
    {
LABEL_3:
      if (v4 < 1)
      {
        __break(1u);
      }

      else
      {
        v5 = 0;
        v6 = *&v0[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView];
        v7 = &off_1E84D3000;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x1DA6FB460](v5, v3);
          }

          else
          {
            v8 = *(v3 + 8 * v5 + 32);
          }

          v9 = v8;
          if (v8 != v6)
          {
            v13 = v8;
            sub_1D690218C();
            v10 = v9;
            if (swift_dynamicCast())
            {
              sub_1D5B63F14(v11, v14);
              __swift_project_boxed_opaque_existential_1(v14, v14[3]);
              v7 = &off_1E84D3000;
              sub_1D725F91C();
              __swift_destroy_boxed_opaque_existential_1(v14);
            }

            else
            {
              v12 = 0;
              memset(v11, 0, sizeof(v11));
              sub_1D69021F0(v11);
            }

            [v10 v7[237]];
          }

          ++v5;
        }

        while (v4 != v5);
      }

      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }
}

id sub_1D6CA8558(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  v3 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame];
  v4 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 8];
  v5 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 16];
  v6 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_viewResultFrame + 24];
  v7 = *(a1 + OBJC_IVAR____TtC8NewsFeed27DebugFormatCanvasViewResult_debugView);
  [v7 frame];
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  v25.origin.x = v3;
  v25.origin.y = v4;
  v25.size.width = v5;
  v25.size.height = v6;
  *v2 = CGRectUnion(v25, v28);
  [v1 addSubview_];
  [v1 setFrame_];
  v26 = *v2;
  *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_contentFrame] = *v2;
  CGRectGetHeight(v26);
  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v27.origin.x = v15;
    v27.origin.y = v17;
    v27.size.width = v19;
    v27.size.height = v21;
    CGRectGetHeight(v27);
  }

  v22 = *&v1[OBJC_IVAR____TtC8NewsFeed22DebugFormatContentView_bezelView];
  sub_1D726329C();
  sub_1D72632BC();

  return [v22 setFrame_];
}

void sub_1D6CA87B0(void *a1, double a2)
{
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    [a1 setContentScaleFactor_];
  }

  v4 = [a1 subviews];
  sub_1D5E2B010();
  v5 = sub_1D726267C();

  if (v5 >> 62)
  {
    v6 = sub_1D7263BFC();
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA6FB460](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    sub_1D6CA87B0(a2);
  }

LABEL_12:
}

uint64_t static FormatNotExpression.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D6CA8BB0(uint64_t a1)
{
  result = sub_1D6CA8BD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CA8BD8()
{
  result = qword_1EC894820;
  if (!qword_1EC894820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894820);
  }

  return result;
}

unint64_t sub_1D6CA8C2C(void *a1)
{
  a1[1] = sub_1D5C79000();
  a1[2] = sub_1D66FEB6C();
  result = sub_1D6CA8C64();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CA8C64()
{
  result = qword_1EC894828;
  if (!qword_1EC894828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894828);
  }

  return result;
}

uint64_t sub_1D6CA8CD0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

uint64_t static CoverIssueViewLayout.makeLayoutForMagazineFeedGroup(context:factories:options:)(void *a1, uint64_t a2)
{
  v4 = sub_1D725A36C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[40];
  v10 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v9);
  v11 = (*(v10 + 16))(v9, v10);
  if (qword_1EDF05CE0 != -1)
  {
    swift_once();
  }

  [qword_1EDFFC540 size];
  v14 = v11 * (v12 / v13);
  v15 = a1[40];
  v16 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v15);
  (*(v16 + 48))(v15, v16);
  v17 = a1[40];
  v18 = a1[41];
  __swift_project_boxed_opaque_existential_1(a1 + 37, v17);
  v19 = (*(v18 + 56))(v17, v18);
  v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  *(&v23 - 6) = a2;
  *(&v23 - 5) = a1;
  *(&v23 - 4) = v14;
  *(&v23 - 3) = v11;
  *(&v23 - 2) = v21;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D7378], v4);
  sub_1D6076C70(0, &qword_1EDF17FC8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  return sub_1D725A4CC();
}

uint64_t sub_1D6CA8FB8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v21[-v17];
  v27 = a1;
  (*(v14 + 104))(&v21[-v17], *MEMORY[0x1E69D74A8], v13, v16);
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v19 = MEMORY[0x1E69D7150];
  sub_1D6076C70(0, &qword_1EDF18070, MEMORY[0x1E69D7150]);
  sub_1D6076CF4(&qword_1EDF18078, &qword_1EDF18070, v19);
  sub_1D7259A2C();
  return (*(v14 + 8))(v18, v13);
}

uint64_t sub_1D6CA91AC(uint64_t a1, void *a2, void *a3)
{
  v74 = a2;
  v75 = a1;
  sub_1D69C61CC();
  v73 = v5;
  v72 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v71 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v68 - v16);
  *&v87 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = 0x4024000000000000;
  *v17 = v18;
  v19 = *(v10 + 104);
  v76 = *MEMORY[0x1E69D7488];
  v19(v17);
  v20 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v22 = v21;
  v23 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20);
  v78 = v22;
  v24 = v23;
  sub_1D7259A9C();
  v25 = *(v10 + 8);
  v81 = v10 + 8;
  v77 = v25;
  v25(v17, v9);
  v94 = v75;
  KeyPath = swift_getKeyPath();
  v26 = *MEMORY[0x1E69D74A8];
  v80 = v10 + 104;
  v79 = v19;
  (v19)(v13, v26, v9);
  v93 = v74[3];
  v27 = a3[1];
  if (a3[11] == 1 || (v28 = a3[14]) == 0)
  {

    FCIssue.issueCoverModel.getter(&v90);
  }

  else
  {
    v29 = a3[15];
    *&v90 = a3[1];
    *(&v90 + 1) = v29;
    *&v91 = v28;
    v92[24] = 0;

    v30 = v28;
    v31 = v27;
  }

  v87 = v90;
  v88 = v91;
  v89[0] = *v92;
  *(v89 + 9) = *&v92[9];
  v32 = a3[40];
  v33 = a3[41];
  __swift_project_boxed_opaque_existential_1(a3 + 37, v32);
  v34 = (*(v33 + 64))(v32, v33);
  v82 = 0;
  v83 = 0x4010000000000000;
  v84 = v34;
  v85 = -1;
  v86 = 0x3FE0000000000000;
  sub_1D6CAB4F0(0, &qword_1EDF180F8, sub_1D5EA52B8, &type metadata for IssueCoverViewLayoutAttributes, MEMORY[0x1E69D6F58]);
  type metadata accessor for IssueCoverViewLayoutAttributesFactory();
  sub_1D5EF9538();
  sub_1D69C6348();
  sub_1D5BEAA8C(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory);
  v74 = a3;
  v35 = v71;
  sub_1D7259D2C();
  v36 = v24;
  sub_1D7259A5C();

  (*(v72 + 8))(v35, v73);
  v37 = v77;
  v77(v13, v9);
  v38 = v75;
  *&v87 = v75;
  v39 = swift_allocObject();
  *(v39 + 16) = 0x4024000000000000;
  *v17 = v39;
  (v79)(v17, v76, v9);
  v68[0] = v36;
  sub_1D7259A9C();
  v37(v17, v9);
  *&v87 = v38;
  sub_1D5EF9444();
  v41 = v40;
  v73 = v40;
  v42 = swift_allocBox();
  v44 = v43;
  v45 = *(v41 + 48);
  LODWORD(v72) = *MEMORY[0x1E69D71E8];
  v46 = v72;
  v47 = sub_1D725A09C();
  v48 = *(v47 - 8);
  v49 = *(v48 + 104);
  v69 = v49;
  v68[1] = v48 + 104;
  v49(v44, v46, v47);
  LODWORD(v71) = *MEMORY[0x1E69D7208];
  (v49)(v44 + v45);
  *v17 = v42;
  LODWORD(KeyPath) = *MEMORY[0x1E69D7468];
  v50 = v79;
  v51 = (v79)(v17);
  MEMORY[0x1EEE9AC00](v51, v52);
  sub_1D72599EC();
  v53 = v77;
  v77(v17, v9);
  v54 = v75;
  *&v87 = v75;
  v55 = swift_allocObject();
  *(v55 + 16) = 0x401C000000000000;
  *v17 = v55;
  (v50)(v17, v76, v9);
  sub_1D7259A9C();
  v53(v17, v9);
  *&v87 = v54;
  v56 = v73;
  v57 = swift_allocBox();
  v59 = v58;
  v60 = *(v56 + 48);
  v61 = v69;
  v69(v58, v72, v47);
  v61(v59 + v60, v71, v47);
  *v17 = v57;
  v62 = v79;
  v63 = (v79)(v17, KeyPath, v9);
  MEMORY[0x1EEE9AC00](v63, v64);
  sub_1D72599EC();
  v65 = v77;
  v77(v17, v9);
  *&v87 = v54;
  v66 = swift_allocObject();
  *(v66 + 16) = 0x4038000000000000;
  *v17 = v66;
  (v62)(v17, v76, v9);
  sub_1D7259A9C();
  v65(v17, v9);
  *&v87 = v54;
  (v62)(v17, *MEMORY[0x1E69D7460], v9);
  sub_1D7259B2C();
  return (v65)(v17, v9);
}

uint64_t sub_1D6CA9C40(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (&v60 - v12);
  v14 = a2[7] & 9;
  v67 = v15;
  v68 = v10;
  v66 = v13;
  v64 = a2;
  if (v14 == 1)
  {
    v69 = a1;
    sub_1D5EF9444();
    v17 = v16;
    v63 = swift_allocBox();
    v19 = v18;
    v65 = *(v17 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *v19 = v20;
    v21 = *MEMORY[0x1E69D71F0];
    v22 = sub_1D725A09C();
    v23 = *(v22 - 8);
    v62 = a1;
    v60 = *(v23 + 104);
    v61 = (v23 + 104);
    v60(v19, v21, v22);
    v24 = swift_allocObject();
    v25 = a2;
    v26 = a2[40];
    v27 = a2[41];
    __swift_project_boxed_opaque_existential_1(v25 + 37, v26);
    *(v24 + 16) = (*(v27 + 24))(v26, v27);
    v28 = v65;
    *(v19 + v65) = v24;
    LODWORD(v65) = v21;
    v60((v19 + v28), v21, v22);
    *v13 = v63;
    v29 = *MEMORY[0x1E69D7468];
    v61 = *(v10 + 104);
    LODWORD(v63) = v29;
    v30 = v67;
    v31 = v61(v13);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v60 - 4) = v25;
    *(&v60 - 3) = a3;
    v33 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    v59 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v33);
    sub_1D7259A2C();
    v34 = *(v68 + 8);
    v34(v13, v30);
    a1 = v62;
    v69 = v62;
    v35 = swift_allocObject();
    *(v35 + 16) = 0x4010000000000000;
    *v13 = v35;
    (v61)(v13, *MEMORY[0x1E69D7480], v30);
    sub_1D7259A9C();
    v34(v13, v30);
  }

  else
  {
    LODWORD(v65) = *MEMORY[0x1E69D71F0];
    LODWORD(v63) = *MEMORY[0x1E69D7468];
  }

  v69 = a1;
  sub_1D5EF9444();
  v37 = v36;
  v38 = swift_allocBox();
  v40 = v39;
  v61 = *(v37 + 48);
  v62 = v38;
  v41 = sub_1D725A09C();
  v42 = swift_allocBox();
  v44 = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = a5 + 12.0;
  *v44 = v45;
  v46 = *(*(v41 - 8) + 104);
  v47 = v65;
  v46(v44, v65, v41);
  *v40 = v42;
  v46(v40, *MEMORY[0x1E69D71F8], v41);
  v48 = swift_allocObject();
  v50 = v64[40];
  v49 = v64[41];
  __swift_project_boxed_opaque_existential_1(v64 + 37, v50);
  *(v48 + 16) = (*(v49 + 24))(v50, v49);
  v51 = v61;
  *(v61 + v40) = v48;
  v46((v51 + v40), v47, v41);
  v52 = v66;
  v53 = v67;
  *v66 = v62;
  v54 = v68;
  v55 = (*(v68 + 104))(v52, v63, v53);
  MEMORY[0x1EEE9AC00](v55, v56);
  v57 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v59 = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v57);
  sub_1D72599EC();
  return (*(v54 + 8))(v52, v53);
}

uint64_t sub_1D6CAA27C(uint64_t a1, void *a2, double a3, double a4)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = (v37 - v12);
  v41 = a1;
  v14 = swift_allocObject();
  v15 = a2[40];
  v16 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v15);
  v17 = (*(v16 + 24))(v15, v16);
  v18 = a2[40];
  v19 = a2[41];
  __swift_project_boxed_opaque_existential_1(a2 + 37, v18);
  *(v14 + 16) = (v17 - (*(v19 + 32))(v18, v19)) * 0.5;
  *v13 = v14;
  v20 = *MEMORY[0x1E69D7488];
  v38 = *(v10 + 104);
  v37[0] = v9;
  v38(v13, v20, v9);
  v21 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v37[3] = v22;
  v37[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v21);
  sub_1D7259A9C();
  v23 = *(v10 + 8);
  v39 = v10 + 8;
  v40 = v23;
  v23(v13, v9);
  v41 = a1;
  v37[1] = swift_getKeyPath();
  sub_1D5EF9444();
  v25 = v24;
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(v25 + 48);
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *v28 = v30;
  v31 = *MEMORY[0x1E69D71F0];
  v32 = sub_1D725A09C();
  v33 = *(*(v32 - 8) + 104);
  v33(v28, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = a4;
  *(v28 + v29) = v34;
  v33((v28 + v29), v31, v32);
  *v13 = v26;
  v35 = v37[0];
  v38(v13, *MEMORY[0x1E69D7468], v37[0]);
  sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return v40(v13, v35);
}

uint64_t sub_1D6CAA660(uint64_t a1, uint64_t a2)
{
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (v22 - v8);
  v10 = sub_1D7261B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22[1] = a1;
  swift_getKeyPath();
  v15 = *(a2 + 336);
  if (*(v15 + qword_1EDF347F8) & 1) != 0 || (sub_1D5B5DA7C(), *v14 = sub_1D726308C(), (*(v11 + 104))(v14, *MEMORY[0x1E69E8018], v10), v16 = sub_1D7261BBC(), result = (*(v11 + 8))(v14, v10), (v16))
  {
    v18 = swift_allocObject();
    v19 = *(v15 + *(*v15 + 136));
    *(v18 + 16) = v19;
    *v9 = v18;
    (*(v6 + 104))(v9, *MEMORY[0x1E69D7440], v5);
    v20 = MEMORY[0x1E69D6F38];
    sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
    sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v20);
    sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4);
    v21 = v19;
    sub_1D7259A7C();

    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D6CAA9A0(uint64_t a1, uint64_t a2, double a3)
{
  v65 = a1;
  v70 = sub_1D5EF9538;
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v61 = v6;
  v71 = *(v6 - 8);
  v8 = v71;
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = (v55 - v10);
  v12 = sub_1D6CAB558(a2);
  v72 = a1;
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *v11 = v13;
  v14 = *MEMORY[0x1E69D73E8];
  v15 = *(v8 + 104);
  v68 = v8 + 104;
  v69 = v15;
  v15(v11, v14, v7);
  sub_1D6076D50();
  v67 = v16;
  sub_1D6CAB4F0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 72);
  v66 = *(v19 + 80);
  v57 = v20;
  v21 = (v66 + 32) & ~v66;
  v64 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7270C10;
  v23 = (v22 + v21);
  *v23 = 0x4034000000000000;
  v24 = *MEMORY[0x1E69D7240];
  v25 = sub_1D725A13C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  v26 = *MEMORY[0x1E69D72D8];
  v27 = sub_1D725A29C();
  (*(*(v27 - 8) + 104))(v23, v26, v27);
  v28 = *MEMORY[0x1E69D6FC0];
  v29 = *(v19 + 104);
  v58 = v18;
  v29(v23, v28, v18);
  v59 = v29;
  v60 = v19 + 104;
  v30 = v23 + v20;
  sub_1D5ED83AC();
  v32 = &v30[*(v31 + 48)];
  v33 = *MEMORY[0x1E69D7238];
  v34 = sub_1D725A0DC();
  (*(*(v34 - 8) + 104))(v30, v33, v34);
  v63 = 0x80000001D73C7BD0;
  *v32 = 0xD000000000000016;
  *(v32 + 1) = 0x80000001D73C7BD0;
  v29(v30, *MEMORY[0x1E69D7020], v18);
  v35 = MEMORY[0x1E69D6F38];
  sub_1D6076C70(0, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  v55[3] = v36;
  v55[2] = sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, v35);
  v55[1] = sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4);
  v56 = v12;
  sub_1D7259A7C();

  v37 = *(v71 + 8);
  v71 += 8;
  KeyPath = v37;
  v38 = v61;
  v37(v11, v61);
  v72 = v65;
  v65 = swift_getKeyPath();
  sub_1D5EF9444();
  v40 = v39;
  v41 = swift_allocBox();
  v43 = v42;
  v44 = *(v40 + 48);
  v45 = swift_allocObject();
  *(v45 + 16) = a3;
  *v43 = v45;
  v46 = *MEMORY[0x1E69D71F0];
  v47 = sub_1D725A09C();
  v48 = *(*(v47 - 8) + 104);
  v48(v43, v46, v47);
  v49 = swift_allocObject();
  *(v49 + 16) = a3;
  *(v43 + v44) = v49;
  v48((v43 + v44), v46, v47);
  *v11 = v41;
  v69(v11, *MEMORY[0x1E69D7468], v38);
  v50 = v64;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D7273AE0;
  v52 = *MEMORY[0x1E69D7070];
  sub_1D6CAB4F0(0, &qword_1EDF180E0, v70, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v53 - 8) + 104))(v51 + v50, v52, v53);
  v59(v51 + v50, *MEMORY[0x1E69D7080], v58);
  sub_1D7259A7C();

  return KeyPath(v11, v38);
}

uint64_t sub_1D6CAB078(void *a1)
{
  v26[2] = *a1;
  sub_1D6CAB4F0(0, &qword_1EDF17F88, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D74B0]);
  v26[0] = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (v26 - v5);
  v26[3] = a1;
  v26[1] = swift_getKeyPath();
  sub_1D5EF9444();
  v8 = v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v8 + 48);
  v13 = *MEMORY[0x1E69D71E8];
  v14 = sub_1D725A09C();
  v15 = *(*(v14 - 8) + 104);
  v15(v11, v13, v14);
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4000000000000000;
  *(v11 + v12) = v16;
  v15(v11 + v12, *MEMORY[0x1E69D71F0], v14);
  *v6 = v9;
  v17 = v26[0];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7468], v26[0]);
  sub_1D6076D50();
  sub_1D6CAB4F0(0, &qword_1EDF180C8, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D70D8]);
  v19 = v18;
  v20 = *(v18 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D7273AE0;
  v23 = *MEMORY[0x1E69D7050];
  sub_1D6CAB4F0(0, &qword_1EDF180E0, sub_1D5EF9538, &type metadata for CoverIssueViewLayout, MEMORY[0x1E69D7078]);
  (*(*(v24 - 8) + 104))(v22 + v21, v23, v24);
  (*(v20 + 104))(v22 + v21, *MEMORY[0x1E69D7080], v19);
  sub_1D6076CF4(&qword_1EDF18150, &qword_1EDF18148, MEMORY[0x1E69D6F38]);
  sub_1D5BEAA8C(&qword_1EDF3C140, sub_1D5BEDFF4);
  sub_1D7259A7C();

  return (*(v3 + 8))(v6, v17);
}

void sub_1D6CAB4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D6CAB558(uint64_t a1)
{
  v2 = sub_1D7261B9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EDF347F8;
  if ((*(a1 + 56) & 4) == 0)
  {
    v8 = *(a1 + 368);
    if (*(v8 + qword_1EDF347F8))
    {
      return *(v8 + *(*v8 + 136));
    }

    sub_1D5B5DA7C();
    *v6 = sub_1D726308C();
    (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
    a1 = sub_1D7261BBC();
    v9 = *(v3 + 8);
    v3 += 8;
    v9(v6, v2);
    if (a1)
    {
      return *(v8 + *(*v8 + 136));
    }

    __break(1u);
  }

  v8 = *(a1 + 376);
  if (*(v8 + v7))
  {
    return *(v8 + *(*v8 + 136));
  }

  sub_1D5B5DA7C();
  *v6 = sub_1D726308C();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8018], v2);
  v10 = sub_1D7261BBC();
  result = (*(v3 + 8))(v6, v2);
  if (v10)
  {
    return *(v8 + *(*v8 + 136));
  }

  __break(1u);
  return result;
}

void sub_1D6CAB728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link) = a1;

    v8 = (v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    v9 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    *v8 = a2;
    v8[1] = a3;
    sub_1D5B74328(v9);
    v10 = OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer;
    v11 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer);
    if (a1)
    {
      if (v11)
      {
      }

      else
      {
        v14 = objc_allocWithZone(MEMORY[0x1E69DD060]);

        v15 = [v14 initWithTarget:v3 action:sel_didTap_];
        [v15 setDelegate_];
        [v17 addGestureRecognizer_];
        v16 = *(v3 + v10);
        *(v3 + v10) = v15;

        v11 = *(v3 + v10);
        if (!v11)
        {
LABEL_14:

          return;
        }
      }

      v13 = v11;
      [v13 setEnabled_];
    }

    else
    {
      if (!v11)
      {

        goto LABEL_14;
      }

      v13 = v11;
      [v13 setEnabled_];
    }

    goto LABEL_14;
  }

  v12 = *(v3 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_tapGestureRecognizer);
  if (v12)
  {

    [v12 setEnabled_];
  }
}

id sub_1D6CAB904(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed11FormatLabel_identifier];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC8NewsFeed11FormatLabel_linkHandler;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for FormatLabelLinkHandler()) init];
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  swift_unknownObjectWeakAssign();
  v13 = v12;
  [v13 setNumberOfLines_];
  [v13 setLineBreakMode_];

  return v13;
}

uint64_t sub_1D6CABB38()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8NewsFeed11FormatLabel_identifier);

  return v1;
}

void sub_1D6CABB78(void *a1)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link))
  {
    v12 = *(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock);
    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;

        sub_1D5DEA510(v12);
        [a1 locationInView_];
        sub_1D613EC18(v6, v15, v16);
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_1D5B74328(v12);

          sub_1D5E3E404(v6);
        }

        else
        {
          (*(v8 + 32))(v11, v6, v7);
          v12(v11);

          sub_1D5B74328(v12);

          (*(v8 + 8))(v11, v7);
        }
      }
    }
  }
}

void *sub_1D6CABF14(void *a1)
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_link))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v8 = result;
    if (*(v1 + OBJC_IVAR____TtC8NewsFeed22FormatLabelLinkHandler_linkBlock))
    {

      [a1 locationInView_];
      sub_1D613EC18(v6, v9, v10);

      v11 = sub_1D72585BC();
      v12 = (*(*(v11 - 8) + 48))(v6, 1, v11) != 1;
      sub_1D5E3E404(v6);
      return v12;
    }
  }

  return 0;
}

BOOL sub_1D6CAC0A4(double a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext();
  v6 = v5();
  v7 = sub_1D5E02AFC(v6, v3);

  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return v7 > a1;
        }

        return v7 != a1;
      }

      return v7 == a1;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        return v7 <= a1;
      }

      return v7 < a1;
    }
  }

  else
  {
    if (v4 <= 2)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return v7 > a1;
        }

        return v7 != a1;
      }

      return v7 == a1;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return v7 <= a1;
      }

      return v7 < a1;
    }
  }

  return v7 >= a1;
}

unint64_t sub_1D6CAC218(uint64_t a1)
{
  result = sub_1D6CAC240();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6CAC240()
{
  result = qword_1EC894868;
  if (!qword_1EC894868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894868);
  }

  return result;
}

unint64_t sub_1D6CAC294(void *a1)
{
  a1[1] = sub_1D6662D2C();
  a1[2] = sub_1D67051E8();
  result = sub_1D6CAC2CC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6CAC2CC()
{
  result = qword_1EC894870;
  if (!qword_1EC894870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC894870);
  }

  return result;
}

uint64_t sub_1D6CAC330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = a1;
  v6 = *v3;
  v7 = *v3 >> 61;
  if (v7 <= 2)
  {
    if (v7 >= 2)
    {
      v20 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *(v20 + 16);
      v10 = MEMORY[0x1E69E7CC0];
      if (v21)
      {
        v36 = MEMORY[0x1E69E7CC0];

        sub_1D6997920(0, v21, 0);
        v10 = v36;
        v22 = v20 + 56;
        do
        {

          swift_retain_n();

          v23 = sub_1D6E5B0C8(v5, v4, a3);
          v25 = v24;
          v27 = v26;

          v29 = *(v36 + 16);
          v28 = *(v36 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1D6997920((v28 > 1), v29 + 1, 1);
          }

          v22 += 32;
          *(v36 + 16) = v29 + 1;
          v30 = v36 + 24 * v29;
          *(v30 + 32) = v23;
          *(v30 + 40) = v25;
          *(v30 + 48) = v27 & 1;
          --v21;
          v4 = a2;
          v5 = a1;
        }

        while (v21);
        goto LABEL_19;
      }

LABEL_20:
      v5 = sub_1D60ED798(v10);

      return v5;
    }

    goto LABEL_21;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      goto LABEL_18;
    }

LABEL_21:

    return v5;
  }

  if (v7 == 3)
  {
    v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *(v8 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v35 = MEMORY[0x1E69E7CC0];

      sub_1D6997920(0, v9, 0);
      v10 = v35;
      v11 = v8 + 56;
      do
      {

        swift_retain_n();

        v12 = sub_1D6E5B0C8(v5, v4, a3);
        v14 = v13;
        v16 = v15;

        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D6997920((v17 > 1), v18 + 1, 1);
        }

        v11 += 32;
        *(v35 + 16) = v18 + 1;
        v19 = v35 + 24 * v18;
        *(v19 + 32) = v12;
        *(v19 + 40) = v14;
        *(v19 + 48) = v16 & 1;
        --v9;
        v4 = a2;
        v5 = a1;
      }

      while (v9);
LABEL_19:

      goto LABEL_20;
    }

    goto LABEL_20;
  }

LABEL_18:

  v5 = sub_1D6E5B0C8(v5, v4, a3);

  return v5;
}

uint64_t static FormatTextSize.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 2)
  {
    if (v4 > 4)
    {
      if (v4 == 5)
      {
        if (v3 >> 61 != 5)
        {
          goto LABEL_31;
        }

LABEL_19:
        v14 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v17 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = v14;
        sub_1D5D085B4(v3);
        sub_1D5D085B4(v2);
        v11 = static FormatTextContent.== infix(_:_:)(&v18, &v17);
        goto LABEL_20;
      }

      if (v2 == 0xC000000000000000)
      {
        if (v3 != 0xC000000000000000)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000000);
        v15 = 0xC000000000000000;
      }

      else if (v2 == 0xC000000000000008)
      {
        if (v3 != 0xC000000000000008)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000008);
        v15 = 0xC000000000000008;
      }

      else
      {
        if (v3 != 0xC000000000000010)
        {
          goto LABEL_31;
        }

        sub_1D5D05694(0xC000000000000010);
        v15 = 0xC000000000000010;
      }

      sub_1D5D05694(v15);
      v9 = 1;
      return v9 & 1;
    }

    if (v4 == 3)
    {
      if (v3 >> 61 != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_17;
    }

    if (v3 >> 61 == 4)
    {
      goto LABEL_19;
    }

LABEL_31:
    sub_1D5D085B4(*a2);
    sub_1D5D085B4(v2);
LABEL_32:
    sub_1D5D05694(v2);
    sub_1D5D05694(v3);
    v9 = 0;
    return v9 & 1;
  }

  if (!v4)
  {
    if (!(v3 >> 61))
    {
      v10 = *(v2 + 16);
      v17 = *(v3 + 16);
      v18 = v10;
      sub_1D5D085B4(v3);
      sub_1D5D085B4(v2);
      v11 = static FormatSize.== infix(_:_:)(&v18, &v17);
LABEL_20:
      v9 = v11;
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (v4 == 1)
  {
    if (v3 >> 61 == 1)
    {
      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5D085B4(*a2);
      sub_1D5D085B4(v2);

      sub_1D5D085B4(v7);
      if ((sub_1D6353D38(v5, v8) & 1) == 0)
      {

        sub_1D5D05694(v7);
        goto LABEL_32;
      }

      v17 = v7;
      v18 = v6;
      v9 = static FormatTextSize.== infix(_:_:)(&v18, &v17);

      sub_1D5D05694(v7);
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  if (v3 >> 61 != 2)
  {
    goto LABEL_31;
  }

LABEL_17:
  v12 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v13 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1D5D085B4(*a2);
  sub_1D5D085B4(v2);

  v9 = sub_1D6353B70(v12, v13);

LABEL_21:
  sub_1D5D05694(v2);
  sub_1D5D05694(v3);
  return v9 & 1;
}

unint64_t FormatTextSize.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v86 = &v81 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v85 = &v81 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v84 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v81 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v81 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v82 = &v81 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v81 = &v81 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v83 = &v81 - v32;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v1;
  v38 = a1[3];
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v38);
  sub_1D5C30408();
  v88 = v36;
  sub_1D71B5B30(&type metadata for FormatCodingKeys, v40, v38, &type metadata for FormatVersions.JazzkonC, v39, &off_1F51F6C78, v36);
  v41 = v37 >> 61;
  if ((v37 >> 61) <= 2)
  {
    if (!v41)
    {
      v58 = v6;
      v59 = *(v37 + 16);
      v60 = a1[3];
      v61 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v60);
      sub_1D5C82CD8(v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v62 = sub_1D725BD1C();
      v63 = __swift_project_value_buffer(v62, qword_1EDFFCD30);
      (*(*(v62 - 8) + 16))(v58, v63, v62);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v64 = v87;
      sub_1D5D2BEC4(v58, sub_1D6CAD334, 0, v60, v61);
      v65 = v88;
      if (!v64)
      {
        sub_1D5D2CF28(v58, type metadata accessor for FormatVersionRequirement);
        v89 = v59;
        FormatSize.encode(to:)(a1);
        sub_1D5D2CF28(v65, sub_1D5D30DC4);
        return sub_1D5C92A8C(v59);
      }

      sub_1D5C92A8C(v59);
      v19 = v58;
      goto LABEL_42;
    }

    if (v41 == 1)
    {
      v48 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D5D085B4(v47);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v49 = sub_1D725BD1C();
      v50 = __swift_project_value_buffer(v49, qword_1EDFFCD30);
      (*(*(v49 - 8) + 16))(v23, v50, v49);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v51 = v88;
      sub_1D63BA708(3, v48, v47, v23);

      sub_1D5D05694(v47);
      sub_1D5D2CF28(v23, type metadata accessor for FormatVersionRequirement);
      v52 = v51;
      return sub_1D5D2CF28(v52, sub_1D5D30DC4);
    }

    v42 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66 = qword_1EDF31EB0;

    if (v66 != -1)
    {
      swift_once();
    }

    v67 = sub_1D725BD1C();
    v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
    (*(*(v67 - 8) + 16))(v19, v68, v67);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v46 = 5;
    goto LABEL_23;
  }

  if (v41 > 4)
  {
    if (v41 != 5)
    {
      if (v37 == 0xC000000000000000)
      {
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v76 = sub_1D725BD1C();
        v77 = __swift_project_value_buffer(v76, qword_1EDFFCD30);
        v19 = v83;
        (*(*(v76 - 8) + 16))(v83, v77, v76);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        v74 = 0;
        v78 = v19;
        v65 = v88;
      }

      else
      {
        if (v37 == 0xC000000000000008)
        {
          v65 = v88;
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v72 = sub_1D725BD1C();
          v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
          v19 = v81;
          (*(*(v72 - 8) + 16))(v81, v73, v72);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v74 = 1;
        }

        else
        {
          v65 = v88;
          if (qword_1EDF31EB0 != -1)
          {
            swift_once();
          }

          v79 = sub_1D725BD1C();
          v80 = __swift_project_value_buffer(v79, qword_1EDFFCD30);
          v19 = v82;
          (*(*(v79 - 8) + 16))(v82, v80, v79);
          type metadata accessor for FormatVersionRequirement.Value(0);
          swift_storeEnumTagMultiPayload();
          v74 = 4;
        }

        v78 = v19;
      }

      sub_1D6424100(v74, v78);
      goto LABEL_42;
    }

    v53 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v54 = qword_1EDF31F10;

    if (v54 != -1)
    {
      swift_once();
    }

    v55 = sub_1D725BD1C();
    v56 = __swift_project_value_buffer(v55, qword_1EDFFCDF8);
    v19 = v85;
    (*(*(v55 - 8) + 16))(v85, v56, v55);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = 7;
    goto LABEL_27;
  }

  if (v41 != 3)
  {
    v53 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v69 = qword_1EDF31F10;

    if (v69 != -1)
    {
      swift_once();
    }

    v70 = sub_1D725BD1C();
    v71 = __swift_project_value_buffer(v70, qword_1EDFFCDF8);
    v19 = v86;
    (*(*(v70 - 8) + 16))(v86, v71, v70);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v57 = 8;
LABEL_27:
    v65 = v88;
    sub_1D63BAA9C(v57, v53, v19);

    goto LABEL_42;
  }

  v42 = *((v37 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v43 = qword_1EDF31EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  v44 = sub_1D725BD1C();
  v45 = __swift_project_value_buffer(v44, qword_1EDFFCD30);
  v19 = v84;
  (*(*(v44 - 8) + 16))(v84, v45, v44);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v46 = 6;
LABEL_23:
  v65 = v88;
  sub_1D63BA8DC(v46, v42, v19);

LABEL_42:
  sub_1D5D2CF28(v19, type metadata accessor for FormatVersionRequirement);
  v52 = v65;
  return sub_1D5D2CF28(v52, sub_1D5D30DC4);
}