uint64_t sub_1B0AEC7F4(int a1, uint64_t a2)
{
  v46 = a1;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v4 = *(*(Missing - 8) + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v45 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  v41 = v15;
  if (v18)
  {
    v20 = *(v15 + 72);
    v42 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v43 = v14;
    v21 = a2 + v42;
    v44 = Missing;
    v22 = v14;
    do
    {
      sub_1B03B5C80(v21, v17, &qword_1EB6E4260, &qword_1B0EC47E0);
      sub_1B0AEAE5C(&v17[*(v22 + 52)], v6, type metadata accessor for FindMissingMessages.CommandID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v46 != 2 && ((v6[8] ^ v46) & 1) == 0)
        {
LABEL_11:
          sub_1B03C60A4(v17, v12, &qword_1EB6E4260, &qword_1B0EC47E0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B0B0A1E4(0, *(v19 + 16) + 1, 1);
            v19 = v47;
          }

          v30 = *(v19 + 16);
          v29 = *(v19 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1B0B0A1E4(v29 > 1, v30 + 1, 1);
            v19 = v47;
          }

          *(v19 + 16) = v30 + 1;
          sub_1B03C60A4(v12, v19 + v42 + v30 * v20, &qword_1EB6E4260, &qword_1B0EC47E0);
          v22 = v43;
          Missing = v44;
          goto LABEL_4;
        }
      }

      else
      {
        v23 = Missing;
        v24 = v20;
        v25 = v12;
        v26 = v46;
        sub_1B0AEAEC4(v6, type metadata accessor for FindMissingMessages.CommandID);
        v27 = v26 == 2;
        v12 = v25;
        v20 = v24;
        Missing = v23;
        if (v27)
        {
          goto LABEL_11;
        }
      }

      sub_1B0398EFC(v17, &qword_1EB6E4260, &qword_1B0EC47E0);
LABEL_4:
      v21 += v20;
      --v18;
    }

    while (v18);
  }

  v31 = *(v19 + 16);
  if (v31)
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B0B09D44(0, v31, 0);
    v32 = v47;
    v33 = v19 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v34 = *(v41 + 72);
    do
    {
      v35 = v45;
      sub_1B03B5C80(v33, v45, &qword_1EB6E4260, &qword_1B0EC47E0);
      v36 = *v35;
      sub_1B0398EFC(v35, &qword_1EB6E4260, &qword_1B0EC47E0);
      v47 = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1B0B09D44((v37 > 1), v38 + 1, 1);
        v32 = v47;
      }

      *(v32 + 16) = v38 + 1;
      *(v32 + 4 * v38 + 32) = v36;
      v33 += v34;
      --v31;
    }

    while (v31);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v32;
}

uint64_t sub_1B0AECC20(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        v10 = *(v8 - 4);
        result = *(v8 - 1);
        v11 = *v8;
        v12 = *v8 >> 60;
        if (v12 != 11)
        {
          break;
        }

        if (v4 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        result = sub_1B05072A8(result, v11);
LABEL_6:
        ++v9;
        v8 += 3;
        if (v5 == v2)
        {
          goto LABEL_21;
        }
      }

      if (v12 == 15)
      {
        break;
      }

      if (v4 != 1)
      {
        goto LABEL_6;
      }

LABEL_14:
      v13 = *(v8 - 1);
      v14 = *v8;
      sub_1B0AEF1B0(result, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A424(0, *(v7 + 16) + 1, 1);
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v14;
      v18 = v13;
      if (v16 >= v15 >> 1)
      {
        result = sub_1B0B0A424((v15 > 1), v16 + 1, 1);
        v18 = v13;
        v17 = v14;
      }

      *(v7 + 16) = v16 + 1;
      v19 = v7 + 24 * v16;
      *(v19 + 32) = v10;
      *(v19 + 40) = v18;
      *(v19 + 48) = v17;
      v3 = MEMORY[0x1E69E7CC0];
      v6 = v26;
      if (v5 == v2)
      {
        goto LABEL_21;
      }
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v20 = *(v7 + 16);
  if (v20)
  {
    sub_1B0B09D44(0, v20, 0);
    v21 = v3;
    v22 = *(v3 + 16);
    v23 = 32;
    do
    {
      v24 = *(v7 + v23);
      v25 = *(v21 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09D44((v25 > 1), v22 + 1, 1);
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 4 * v22 + 32) = v24;
      v23 += 24;
      ++v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1B0AECE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v59 = a3;
  v51 = a2;
  v58 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v57 = &v48 - v13;
  v14 = type metadata accessor for TaskHistory.Previous(0);
  v53 = *(v14 - 8);
  v15 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - v26;
  result = a5(a1, a4, v25);
  v54 = *(result + 16);
  if (v54)
  {
    v55 = v11;
    v56 = result;
    v48 = v8;
    v49 = v20;
    v29 = 0;
    v52 = result + 32;
    v50 = v17;
    do
    {
      if (v29 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v60 = v29;
      v30 = *(v59 + 16);
      if (!v30)
      {
        goto LABEL_3;
      }

      v61 = *(v52 + 4 * v60);
      v31 = v59 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
      v32 = *(v53 + 72);
      v33 = v31;
      v34 = v30;
      while (1)
      {
        sub_1B0AEAE5C(v33, v27, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v27, v23, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AEAEC4(v23, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v33 += v32;
        if (!--v34)
        {
          goto LABEL_3;
        }
      }

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3ED8, &qword_1B0EC2B30);
      v36 = *&v23[*(v35 + 48)];
      sub_1B0AEAEC4(v23, type metadata accessor for ClientCommand);
      if (v36 != v61)
      {
        goto LABEL_8;
      }

      v38 = v49;
      v37 = v50;
      while (1)
      {
        sub_1B0AEAE5C(v31, v38, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v38, v37, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          break;
        }

        sub_1B0AEAEC4(v37, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v31 += v32;
        if (!--v30)
        {
LABEL_22:
          v47 = 1;
          goto LABEL_24;
        }
      }

      v39 = *(v37 + *(v35 + 48));
      sub_1B0AEAEC4(v37, type metadata accessor for ClientCommand);
      if (v39 != v61)
      {
        goto LABEL_13;
      }

      v40 = *(v51 + 16);
      if (v40)
      {
        v41 = v51 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
        v42 = *(v48 + 72);
        do
        {
          v43 = v57;
          sub_1B0AEAE5C(v41, v57, type metadata accessor for TaskHistory.Running);
          v44 = v55;
          sub_1B0AEF094(v43, v55, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1B0AEAEC4(v44, type metadata accessor for TaskHistory.Running);
          }

          else
          {
            v45 = *(v44 + 8);
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
            sub_1B0AEAEC4(v44 + *(v46 + 64), type metadata accessor for ClientCommand);
            if (v45 == v61)
            {
              goto LABEL_22;
            }
          }

          v41 += v42;
          --v40;
        }

        while (v40);
      }

LABEL_3:
      v29 = v60 + 1;
      result = v56;
    }

    while (v60 + 1 != v54);
  }

  v47 = 0;
LABEL_24:

  return v47;
}

uint64_t sub_1B0AED35C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  v7 = type metadata accessor for DownloadTask.CommandID(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A084(0, v12, 0);
    v13 = v20;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v14, v6, &qword_1EB6E4280, &qword_1B0EC4800);
      sub_1B0AEF094(&v6[*(v2 + 52)], v11, type metadata accessor for DownloadTask.CommandID);
      v20 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B0B0A084(v16 > 1, v17 + 1, 1);
        v13 = v20;
      }

      *(v13 + 16) = v17 + 1;
      sub_1B0AEF094(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for DownloadTask.CommandID);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1B0AED594(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - v5;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v8 = *(Missing - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](Missing - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A1C4(0, v12, 0);
    v13 = v20;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    do
    {
      sub_1B03B5C80(v14, v6, &qword_1EB6E4260, &qword_1B0EC47E0);
      sub_1B0AEF094(&v6[*(v2 + 52)], v11, type metadata accessor for FindMissingMessages.CommandID);
      v20 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1B0B0A1C4(v16 > 1, v17 + 1, 1);
        v13 = v20;
      }

      *(v13 + 16) = v17 + 1;
      sub_1B0AEF094(v11, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for FindMissingMessages.CommandID);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_1B0AED7CC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }

        v10 = *v8;
        if (*v8)
        {
          break;
        }

        if (v4)
        {
          goto LABEL_10;
        }

LABEL_5:
        ++v9;
        v8 += 24;
        if (v5 == v2)
        {
          goto LABEL_17;
        }
      }

      if (v4)
      {
        goto LABEL_5;
      }

LABEL_10:
      v11 = *(v8 - 4);
      v12 = *(v8 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A204(0, *(v7 + 16) + 1, 1);
      }

      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B0B0A204((v13 > 1), v14 + 1, 1);
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 24 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      *(v15 + 48) = v10;
      if (v5 == v2)
      {
        goto LABEL_17;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v16 = *(v7 + 16);
  if (v16)
  {
    sub_1B0B09DC4(0, v16, 0);
    v17 = *(v3 + 16);
    v18 = 32;
    do
    {
      v19 = *(v7 + v18);
      v20 = *(v3 + 24);
      if (v17 >= v20 >> 1)
      {
        sub_1B0B09DC4((v20 > 1), v17 + 1, 1);
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 4 * v17 + 32) = v19;
      v18 += 24;
      ++v17;
      --v16;
    }

    while (v16);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1B0AED9C4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, double))
{
  v54 = a3;
  v45 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  result = a5(a1 & 1, a4, v23);
  v49 = *(result + 16);
  if (v49)
  {
    v44 = v8;
    v27 = 0;
    v47 = result + 32;
    v50 = result;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v27;
      v28 = *(v54 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v29 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v30 = *(v48 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_1B0AEAE5C(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = *(v21 + 2);
      sub_1B03E1BE8(*v21);
      if (v33 != v56)
      {
        goto LABEL_8;
      }

      v34 = v46;
      while (1)
      {
        sub_1B0AEAE5C(v29, v34, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v34, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v35 = *(v16 + 2);
      sub_1B03E1BE8(*v16);
      if (v35 != v56)
      {
        goto LABEL_13;
      }

      v36 = *(v45 + 16);
      if (v36)
      {
        v37 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v38 = *(v44 + 72);
        do
        {
          v39 = v51;
          sub_1B0AEAE5C(v37, v51, type metadata accessor for TaskHistory.Running);
          v40 = v52;
          sub_1B0AEF094(v39, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = *(v40 + 4);
            sub_1B03E1BE8(*(v40 + 8));
            if (v41 == v56)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v40, type metadata accessor for TaskHistory.Running);
          }

          v37 += v38;
          --v36;
        }

        while (v36);
      }

LABEL_3:
      v27 = v55 + 1;
      result = v50;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_1B0AEDE44(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 48;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v2)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }

        v5 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        v10 = *(v8 - 4);
        result = *(v8 - 1);
        v11 = *v8;
        v12 = (*v8 >> 60) & 3;
        if (!v12)
        {
          if (!v4)
          {
            goto LABEL_14;
          }

          goto LABEL_5;
        }

        if (v12 != 1)
        {
          break;
        }

        if (v4 == 2)
        {
          goto LABEL_14;
        }

LABEL_5:
        ++v9;
        v8 += 3;
        if (v5 == v2)
        {
          goto LABEL_21;
        }
      }

      if (v4 != 1)
      {
        result = sub_1B0AEF194(result, v11);
        goto LABEL_5;
      }

LABEL_14:
      v13 = *(v8 - 1);
      v14 = *v8;
      sub_1B0AEF178(result, v11);
      result = swift_isUniquelyReferenced_nonNull_native();
      v26 = v6;
      if ((result & 1) == 0)
      {
        result = sub_1B0B0A404(0, *(v7 + 16) + 1, 1);
      }

      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      v17 = v14;
      v18 = v13;
      if (v16 >= v15 >> 1)
      {
        result = sub_1B0B0A404((v15 > 1), v16 + 1, 1);
        v18 = v13;
        v17 = v14;
      }

      *(v7 + 16) = v16 + 1;
      v19 = v7 + 24 * v16;
      *(v19 + 32) = v10;
      *(v19 + 40) = v18;
      *(v19 + 48) = v17;
      v3 = MEMORY[0x1E69E7CC0];
      v6 = v26;
      if (v5 == v2)
      {
        goto LABEL_21;
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v20 = *(v7 + 16);
  if (v20)
  {
    sub_1B0B09DC4(0, v20, 0);
    v21 = v3;
    v22 = *(v3 + 16);
    v23 = 32;
    do
    {
      v24 = *(v7 + v23);
      v25 = *(v21 + 24);
      if (v22 >= v25 >> 1)
      {
        sub_1B0B09DC4((v25 > 1), v22 + 1, 1);
      }

      *(v21 + 16) = v22 + 1;
      *(v21 + 4 * v22 + 32) = v24;
      v23 += 24;
      ++v22;
      --v20;
    }

    while (v20);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1B0AEE08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, double))
{
  v54 = a3;
  v45 = a2;
  v53 = type metadata accessor for TaskHistory.Running(0);
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TaskHistory.Previous(0);
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v43 - v24;
  result = a5(a1, a4, v23);
  v49 = *(result + 16);
  if (v49)
  {
    v44 = v8;
    v27 = 0;
    v47 = result + 32;
    v50 = result;
    do
    {
      if (v27 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v55 = v27;
      v28 = *(v54 + 16);
      if (!v28)
      {
        goto LABEL_3;
      }

      v56 = *(v47 + 4 * v55);
      v29 = v54 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v30 = *(v48 + 72);
      v31 = v29;
      v32 = v28;
      while (1)
      {
        sub_1B0AEAE5C(v31, v25, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v25, v21, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v21, type metadata accessor for TaskHistory.Previous);
LABEL_8:
        v31 += v30;
        if (!--v32)
        {
          goto LABEL_3;
        }
      }

      v33 = *(v21 + 2);
      sub_1B03E1BE8(*v21);
      if (v33 != v56)
      {
        goto LABEL_8;
      }

      v34 = v46;
      while (1)
      {
        sub_1B0AEAE5C(v29, v34, type metadata accessor for TaskHistory.Previous);
        sub_1B0AEF094(v34, v16, type metadata accessor for TaskHistory.Previous);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          break;
        }

        sub_1B0AEAEC4(v16, type metadata accessor for TaskHistory.Previous);
LABEL_13:
        v29 += v30;
        if (!--v28)
        {
LABEL_22:
          v42 = 1;
          goto LABEL_24;
        }
      }

      v35 = *(v16 + 2);
      sub_1B03E1BE8(*v16);
      if (v35 != v56)
      {
        goto LABEL_13;
      }

      v36 = *(v45 + 16);
      if (v36)
      {
        v37 = v45 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v38 = *(v44 + 72);
        do
        {
          v39 = v51;
          sub_1B0AEAE5C(v37, v51, type metadata accessor for TaskHistory.Running);
          v40 = v52;
          sub_1B0AEF094(v39, v52, type metadata accessor for TaskHistory.Running);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = *(v40 + 4);
            sub_1B03E1BE8(*(v40 + 8));
            if (v41 == v56)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_1B0AEAEC4(v40, type metadata accessor for TaskHistory.Running);
          }

          v37 += v38;
          --v36;
        }

        while (v36);
      }

LABEL_3:
      v27 = v55 + 1;
      result = v50;
    }

    while (v55 + 1 != v49);
  }

  v42 = 0;
LABEL_24:

  return v42;
}

uint64_t sub_1B0AEE50C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v82 = a3;
  v83 = a4;
  v81 = a2;
  v84 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v68 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3628, &unk_1B0EA2080);
  v14 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v74 = (&v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v68 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v78 = *(v19 - 8);
  v79 = v19;
  v20 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v68 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v73 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v68 - v30;
  v32 = *(v4 + 72);
  v75 = *(v4 + 64);
  v76 = v32;
  MissingMessages = type metadata accessor for FindMissingMessages(0);
  v33 = v4 + MissingMessages[18];
  if (*(v33 + 24) && ((v84 >> 59) & 0x1E | (v84 >> 2) & 1) == 0xA)
  {
    v69 = v22;
    v70 = v9;
    v71 = v6;
    v72 = v5;
    v34 = swift_projectBox();
    sub_1B03B5C80(v34, v18, &qword_1EB6E3628, &unk_1B0EA2080);
    v35 = *v18;
    v36 = *(v77 + 48);
    v37 = *(v77 + 64);
    if (v76 == v18[1])
    {
      v38 = sub_1B04520BC(v75, *v18);

      if (v38)
      {
        sub_1B03C60A4(v18 + v36, v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v39 = sub_1B03C60A4(v18 + v37, v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v40 = *(v33 + 24);
        MEMORY[0x1EEE9AC00](v39);
        *(&v68 - 2) = v25;
        v41 = sub_1B0BA7094(sub_1B0AEF0FC, (&v68 - 4), v40);
        v5 = v72;
        if ((v42 & 1) == 0)
        {
          v43 = v41;
          if (sub_1B0AEBA2C(v41, 0, v81, v82, v83, sub_1B0A9EEE8))
          {
            v44 = v40;
            result = swift_isUniquelyReferenced_nonNull_native();
            v9 = v70;
            v6 = v71;
            if (result)
            {
              if ((v43 & 0x8000000000000000) == 0)
              {
                goto LABEL_9;
              }
            }

            else
            {
              result = sub_1B0B8C950(v44);
              v44 = result;
              if ((v43 & 0x8000000000000000) == 0)
              {
LABEL_9:
                v68 = v4;
                if (v43 < v44[2])
                {
                  v46 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
                  v47 = v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v43;
                  sub_1B0AF2B0C(v31);
                  sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  *(v33 + 24) = v44;
                  sub_1B0398EFC(v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
                  v4 = v68;
LABEL_14:
                  v22 = v69;
                  goto LABEL_15;
                }

LABEL_32:
                __break(1u);
                return result;
              }
            }

            __break(1u);
            goto LABEL_32;
          }
        }

        sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0398EFC(v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
LABEL_13:
        v9 = v70;
        v6 = v71;
        goto LABEL_14;
      }
    }

    else
    {
      v48 = *v18;
    }

    sub_1B0398EFC(v18 + v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v18 + v36, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v5 = v72;
    goto LABEL_13;
  }

LABEL_15:
  result = sub_1B0AEBA2C(0, 1, v81, v82, v83, sub_1B0A9EEE8);
  if ((result & 1) == 0)
  {
    return result;
  }

  v49 = v4 + MissingMessages[11];
  v50 = *v49;
  v51 = *(v49 + 8) | (*(v49 + 12) << 32);
  v52 = *(v49 + 13);
  v53 = *(v49 + 16);
  LOBYTE(v49) = *(v49 + 20);
  v86 = v52;
  v85 = v49;
  sub_1B0AF58C8(v50, v13);
  if ((*(v78 + 48))(v13, 1, v79) == 1)
  {
    v54 = &unk_1EB6E3670;
    v55 = &unk_1B0E9B260;
    v56 = v13;
  }

  else
  {
    sub_1B03C60A4(v13, v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    if (((v84 >> 59) & 0x1E | (v84 >> 2) & 1) == 0xA)
    {
      v57 = v22;
      v58 = swift_projectBox();
      v59 = v74;
      sub_1B03B5C80(v58, v74, &qword_1EB6E3628, &unk_1B0EA2080);
      v60 = *v59;
      v61 = *(v77 + 48);
      v62 = *(v77 + 64);
      if (v76 == v59[1])
      {
        v63 = sub_1B04520BC(v75, *v59);

        if (v63)
        {
          v64 = v73;
          sub_1B03C60A4(v59 + v61, v73, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          sub_1B03D06F8();
          v65 = sub_1B0E46E08();
          sub_1B0398EFC(v59 + v62, &unk_1EB6E26C0, &unk_1B0E9DE10);
          if (v65)
          {
            v66 = MissingMessages[17];
            (*(v6 + 16))(v9, v64, v5);
            sub_1B0E46ED8();
          }

          sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          v54 = &unk_1EB6E26C0;
          v55 = &unk_1B0E9DE10;
          v56 = v57;
          return sub_1B0398EFC(v56, v54, v55);
        }
      }

      else
      {
        v67 = *v59;
      }

      sub_1B0398EFC(v57, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v59 + v62, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v54 = &unk_1EB6E1AF0;
      v55 = &unk_1B0E9AF40;
      v56 = v59 + v61;
    }

    else
    {
      v54 = &unk_1EB6E26C0;
      v55 = &unk_1B0E9DE10;
      v56 = v22;
    }
  }

  return sub_1B0398EFC(v56, v54, v55);
}

uint64_t sub_1B0AEECD8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MailboxTaskLogger(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - v17;
  if ((*(a5 + 4) & 1) == 0)
  {
    v19 = *a5;
    v38 = a4;
    v16 = sub_1B0B6C188(a2, a3, v19);
    a4 = v38;
    if ((v16 & 0x100000000) == 0)
    {
      v37 = v16;
      sub_1B0AEAE5C(a6, v18, type metadata accessor for MailboxTaskLogger);
      sub_1B0AEAE5C(a6, v14, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v20 = sub_1B0E43988();
      v21 = sub_1B0E458D8();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = v21;
        v23 = v22;
        v36 = swift_slowAlloc();
        v41 = v36;
        *v23 = 68159491;
        *(v23 + 4) = 2;
        *(v23 + 8) = 256;
        v33 = &v14[*(v11 + 20)];
        v34 = v20;
        *(v23 + 10) = *v33;
        *(v23 + 11) = 2082;
        v24 = &v18[*(v11 + 20)];
        *(v23 + 13) = sub_1B0399D64(*(v24 + 1), *(v24 + 2), &v41);
        *(v23 + 21) = 1040;
        *(v23 + 23) = 2;
        *(v23 + 27) = 512;
        LODWORD(v33) = *(v33 + 12);
        sub_1B0AEAEC4(v14, type metadata accessor for MailboxTaskLogger);
        *(v23 + 29) = v33;
        *(v23 + 31) = 2160;
        *(v23 + 33) = 0x786F626C69616DLL;
        *(v23 + 41) = 2085;
        v25 = *(v24 + 4);
        LODWORD(v24) = *(v24 + 10);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEAEC4(v18, type metadata accessor for MailboxTaskLogger);
        v39 = v25;
        v40 = v24;
        v26 = sub_1B0E44BA8();
        v28 = sub_1B0399D64(v26, v27, &v41);

        *(v23 + 43) = v28;
        *(v23 + 51) = 1024;
        *(v23 + 53) = v37;
        v29 = v34;
        _os_log_impl(&dword_1B0389000, v34, v35, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Updating server next UID to %u.", v23, 0x39u);
        v30 = v36;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v30, -1, -1);
        MEMORY[0x1B272C230](v23, -1, -1);
      }

      else
      {
        sub_1B0AEAEC4(v14, type metadata accessor for MailboxTaskLogger);

        v16 = sub_1B0AEAEC4(v18, type metadata accessor for MailboxTaskLogger);
      }

      a4 = v38;
    }
  }

  MEMORY[0x1EEE9AC00](v16);
  *(&v32 - 4) = a5;
  *(&v32 - 3) = a6;
  *(&v32 - 2) = a4;
  return sub_1B0B86564(a2, a3, sub_1B0AEF07C, (&v32 - 6));
}

uint64_t sub_1B0AEF094(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AEF11C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B0AEF160(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1B03E1BE8(a2);
  }

  return result;
}

uint64_t sub_1B0AEF178(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B03B2000(result, a2);
}

uint64_t sub_1B0AEF194(uint64_t result, unint64_t a2)
{
  v2 = (a2 >> 60) & 3;
  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    a2 &= 0xCFFFFFFFFFFFFFFFLL;
  }

  return sub_1B0391D50(result, a2);
}

uint64_t sub_1B0AEF1B0(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 60) | 4) != 0xF)
  {
    return sub_1B03B2000(a1, a2);
  }

  return a1;
}

void sub_1B0AEF1F0()
{
  sub_1B0AD434C(319, &qword_1EB6DE198);
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO10NewMissingVMa(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0AEF2A4()
{
  sub_1B043CC04(319, qword_1EB6DE250, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for OptionalMillisecondDate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MessageSize(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0AEF394(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0AEF3B0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

unint64_t sub_1B0AEF3E0()
{
  result = qword_1EB6E4288;
  if (!qword_1EB6E4288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4288);
  }

  return result;
}

unint64_t sub_1B0AEF438()
{
  result = qword_1EB6E4290;
  if (!qword_1EB6E4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4290);
  }

  return result;
}

unint64_t sub_1B0AEF490()
{
  result = qword_1EB6E4298;
  if (!qword_1EB6E4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4298);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FindMissingMessages.CommandID.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

_BYTE *sub_1B0AEF638(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_1B0AEF66C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0AEF6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0AEF704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  v110 = a5;
  *&v111 = a4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  v12 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v104 = &v101 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4038, &qword_1B0EC2B08);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v101 - v18;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4040, &qword_1B0EC2B10);
  v107 = *(v109 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v102 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v101 - v23;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v25 = *(Missing - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v101 - v30;
  result = sub_1B0AF2D78(v32, v33, v34, a6);
  if ((a3 * 3) >> 64 != (3 * a3) >> 63)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v103 = v19;
  if (result < (3 * a3) / 4)
  {
    v37 = sub_1B0AF3134(result, v111 & 0xFFFFFFFF00000101, v36, a6);
    if ((v37 & 0x100000000) == 0)
    {
      v38 = v37;
      if (v37 >= 2)
      {
        v101 = a7;
        result = sub_1B0AF4680(a1, a2);
        v39 = result;
        v40 = *(result + 16);
        if (v40)
        {
          v41 = 0;
          while (v41 < *(v39 + 16))
          {
            sub_1B0AF4CB4(v39 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v41, v31, type metadata accessor for FindMissingMessages.CommandID);
            sub_1B0AF4C4C(v31, v28, type metadata accessor for FindMissingMessages.CommandID);
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              goto LABEL_28;
            }

            ++v41;
            result = sub_1B0AF4054(v28, type metadata accessor for FindMissingMessages.CommandID);
            if (v40 == v41)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_10:
        v42 = v111;
        v43 = (v111 >> 8) & 1;

        v44 = *(a6 + 16);
        if ((v43 | v42))
        {
          if ((v110 & 0x100000000) != 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
            v77 = swift_allocBox();
            v79 = v78;
            v115[0] = v38;
            LODWORD(v114) = v38;
            v80 = sub_1B041C1E8();
            static MessageIdentifier.... infix(_:_:)(v115, &v114, &type metadata for UID, v80, v112);
            *v115 = v112[0];
            v114 = Range<>.init<A>(_:)(v115, &type metadata for UID, v80);
            sub_1B03D06F8();
            sub_1B0E46F08();
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
            (*(*(v81 - 8) + 56))(v79, 0, 1, v81);
            v82 = v77 | 0xA000000000000000;
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
            v83 = v101;
            v84 = (v101 + *(v60 + 48));
            *v101 = v44;
            *(v83 + 8) = 0;
            if ((v111 & 0x100) != 0)
            {
              *v84 = v82;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
              v85 = *(type metadata accessor for SearchReturnOption() - 8);
              v86 = *(v85 + 72);
              v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
              v88 = swift_allocObject();
              *(v88 + 16) = xmmword_1B0EC1E70;
              swift_storeEnumTagMultiPayload();
              *v84 = v82;
              v84[1] = v88;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v74 = *(*(v60 - 8) + 56);
            v75 = v83;
          }

          else
          {
            if ((v110 & 0xFFFFFFFE) == 0)
            {
LABEL_28:
              v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
              return (*(*(v76 - 8) + 56))(v101, 1, 1, v76);
            }

            LODWORD(v112[0]) = 1;
            if ((v110 & 0xFFFFFFFE) > 0xFFFFFFF5uLL)
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              return result;
            }

            v115[0] = v110 + 10;
            v45 = sub_1B041B7F0();
            static MessageIdentifier.... infix(_:_:)(v112, v115, &type metadata for SequenceNumber, v45, &v113);
            sub_1B03D06F8();
            v46 = v108;
            sub_1B0E46EE8();
            v112[0] = v113;
            *v115 = Range<>.init<A>(_:)(v112, &type metadata for SequenceNumber, v45);
            v47 = v109;
            v48 = v103;
            if (HIDWORD(*v115) != v115[0])
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
              v49 = sub_1B0E46E88();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
              sub_1B0E46E38();
              v49(v112, 0);
            }

            result = a3 + 20;
            if (__OFADD__(a3, 20))
            {
              goto LABEL_48;
            }

            v50 = v104;
            MessageIdentifierSet.suffix(_:)(result, v105, v104);
            sub_1B0398EFC(v46, &qword_1EB6E4030, &qword_1B0EC2B00);
            v51 = MessageIdentifierSet.count.getter();
            v52 = v106;
            if (v51 <= 0)
            {
              sub_1B0398EFC(v50, &qword_1EB6E4030, &qword_1B0EC2B00);
              v54 = 1;
            }

            else
            {
              v53 = v102;
              sub_1B03C60A4(v50, v102, &qword_1EB6E4030, &qword_1B0EC2B00);
              sub_1B03C60A4(v53, v48, &qword_1EB6E4040, &qword_1B0EC2B10);
              v54 = 0;
            }

            v89 = v107;
            v90 = *(v107 + 56);
            v90(v48, v54, 1, v47);
            if ((*(v89 + 48))(v48, 1, v47) == 1)
            {
              sub_1B0398EFC(v48, &qword_1EB6E4038, &qword_1B0EC2B08);
              goto LABEL_28;
            }

            sub_1B03C60A4(v48, v52, &qword_1EB6E4040, &qword_1B0EC2B10);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4050, &unk_1B0EC2B20);
            v91 = swift_allocBox();
            v93 = v92;
            sub_1B03B5C80(v52, v92, &qword_1EB6E4040, &qword_1B0EC2B10);
            v90(v93, 0, 1, v47);
            v94 = v91 | 0xB000000000000004;
            v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
            v95 = v101;
            v96 = (v101 + *(v60 + 48));
            *v101 = v44;
            *(v95 + 8) = 1;
            if ((v111 & 0x100) != 0)
            {
              sub_1B0398EFC(v52, &qword_1EB6E4040, &qword_1B0EC2B10);
              *v96 = v94;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
              v97 = *(type metadata accessor for SearchReturnOption() - 8);
              v98 = *(v97 + 72);
              v99 = (*(v97 + 80) + 32) & ~*(v97 + 80);
              v100 = swift_allocObject();
              *(v100 + 16) = xmmword_1B0EC1E70;
              swift_storeEnumTagMultiPayload();
              sub_1B0398EFC(v52, &qword_1EB6E4040, &qword_1B0EC2B10);
              *v96 = v94;
              v96[1] = v100;
            }

            type metadata accessor for ClientCommand(0);
            swift_storeEnumTagMultiPayload();
            v74 = *(*(v60 - 8) + 56);
            v75 = v101;
          }
        }

        else
        {
          v57 = a3 - 1;
          if (__OFSUB__(a3, 1))
          {
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }

          if (v57 > 0xFFFFFFFFLL)
          {
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          if (v57 > 0x7FFFFFFFFFFFFFFELL)
          {
LABEL_45:
            __break(1u);
            goto LABEL_46;
          }

          if (HIDWORD(a3))
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v115[0] = 1;
          LODWORD(v114) = a3;
          v58 = sub_1B041B7F0();
          static MessageIdentifier.... infix(_:_:)(v115, &v114, &type metadata for SequenceNumber, v58, v112);
          v59 = v112[0];
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
          v61 = v101;
          v62 = (v101 + *(v60 + 48));
          *v101 = v44;
          *(v61 + 8) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB0, &unk_1B0EC2010);
          v63 = swift_allocBox();
          v65 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
          inited = swift_initStackObject();
          v111 = xmmword_1B0EC1E70;
          *(inited + 16) = xmmword_1B0EC1E70;
          LODWORD(v112[0]) = 1;
          v115[0] = v38;
          v67 = sub_1B041C1E8();
          static MessageIdentifier.... infix(_:_:)(v112, v115, &type metadata for UID, v67, inited + 32);
          sub_1B0AF32C8(inited);
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
          (*(*(v68 - 8) + 56))(v65, 0, 1, v68);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
          v69 = *(type metadata accessor for SearchReturnOption() - 8);
          v70 = *(v69 + 72);
          v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
          v72 = swift_allocObject();
          *(v72 + 16) = v111;
          v73 = v72 + v71;
          *v73 = v59;
          *(v73 + 8) = 1;
          swift_storeEnumTagMultiPayload();
          *v62 = v63 | 0xA000000000000000;
          v62[1] = v72;
          type metadata accessor for ClientCommand(0);
          swift_storeEnumTagMultiPayload();
          v74 = *(*(v60 - 8) + 56);
          v75 = v61;
        }

        return v74(v75, 0, 1, v60);
      }
    }
  }

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4270, &qword_1B0EC47F0);
  v56 = *(*(v55 - 8) + 56);

  return v56(a7, 1, 1, v55);
}

uint64_t sub_1B0AF0444(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v149 = a5;
  v9 = _s20GrowWindowOfInterestV6ResultVMa();
  v152 = *(v9 - 8);
  v10 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v151 = v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v159 = v141 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v157 = *(v15 - 8);
  v158 = v15;
  v16 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v150 = v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v153 = v141 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A8, &qword_1B0EC49E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v156 = v141 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42B0, &qword_1B0EC49E8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v161 = v141 - v25;
  v26 = type metadata accessor for TaskHistory.Running(0);
  v154 = *(v26 - 8);
  v27 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v147 = v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v141 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v148 = v141 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v141 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v155 = v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v160 = v141 - v41;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v162 = *(Missing - 8);
  v163 = Missing;
  v43 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v144 = v141 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v143 = v141 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v146 = v141 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v145 = v141 - v50;
  v51 = type metadata accessor for UntaggedResponse(0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v141 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = v141 - v56;
  if ((sub_1B0AECC08(0, a2, a3, a4) & 1) == 0)
  {
    result = sub_1B0AECC08(1, a2, a3, a4);
    if ((result & 1) == 0)
    {
      return result;
    }

    v70 = a4;
    sub_1B0AF4CB4(a1, v54, type metadata accessor for UntaggedResponse);
    if (swift_getEnumCaseMultiPayload() != 12)
    {
      sub_1B0AF4054(v54, type metadata accessor for UntaggedResponse);
LABEL_20:
      v92 = *(v164 + 8);
      v93 = v164;
      v94 = *(v164 + 9);
      if (*(v164 + 9))
      {
        v95 = 256;
      }

      else
      {
        v95 = 0;
      }

      v96 = v159;
      sub_1B0B7EA7C(v95 | v92, v159);
      if ((*(v157 + 48))(v96, 1, v158) == 1)
      {
        v85 = &qword_1EB6E3920;
        v86 = &qword_1B0E9B070;
        v87 = v96;
        return sub_1B0398EFC(v87, v85, v86);
      }

      v113 = v153;
      v114 = sub_1B03C60A4(v96, v153, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v116 = *v93;
      v117 = *(v93 + 24);
      v118 = 256;
      if (!v94)
      {
        v118 = 0;
      }

      v119 = sub_1B0AF3134(v114, v118 | v92 | (*(v93 + 12) << 32), v115, *(v93 + 24));
      if ((v119 & 0x100000000) != 0)
      {
        v85 = &unk_1EB6E1AF0;
        v86 = &unk_1B0E9AF40;
        v87 = v113;
        return sub_1B0398EFC(v87, v85, v86);
      }

      v120 = v119;
      v121 = v150;
      sub_1B03B5C80(v113, v150, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v122 = v151;
      sub_1B0AF23A0(v121, v120, v116, v151);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_1B0B00038(0, v117[2] + 1, 1, v117);
      }

      v123 = v152;
      v125 = v117[2];
      v124 = v117[3];
      if (v125 >= v124 >> 1)
      {
        v117 = sub_1B0B00038(v124 > 1, v125 + 1, 1, v117);
      }

      sub_1B0398EFC(v113, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v117[2] = v125 + 1;
      result = sub_1B0AF4C4C(v122, v117 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v125, _s20GrowWindowOfInterestV6ResultVMa);
      *(v93 + 24) = v117;
      return result;
    }

    v71 = *v54;
    v72 = *(v54 + 1);
    v73 = *(v54 + 2);
    v74 = *(v54 + 3);
    v75 = v54[32];
    v76 = *(v54 + 5);
    v156 = *v54;
    if (v72)
    {
      LODWORD(v145) = v75;
      v146 = v74;
      v148 = v73;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v77 = Tag.init(_:)(v71, v72);
      if (v78)
      {
        v80 = v162;
        v79 = v163;
      }

      else
      {
        v126 = v77;
        v141[1] = v76;
        v142 = v70;
        v141[0] = a1;
        v127 = *(a2 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        if (v127)
        {
          LODWORD(v161) = v126;
          v160 = HIDWORD(v126);
          v128 = a2 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
          v129 = *(v154 + 72);
          do
          {
            sub_1B0AF4CB4(v128, v31, type metadata accessor for TaskHistory.Running);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_1B0AF4054(v31, type metadata accessor for TaskHistory.Running);
            }

            else
            {
              v130 = *v31;
              v131 = a2;
              v132 = *(v31 + 1);
              v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
              sub_1B0AF4054(&v31[*(v133 + 64)], type metadata accessor for ClientCommand);
              v134 = v130 == v161 && v132 == v160;
              a2 = v131;
              if (v134)
              {
                a1 = v147;
                sub_1B0AF4CB4(v128, v147, type metadata accessor for TaskHistory.Running);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  goto LABEL_85;
                }

                v106 = *a1;
                v136 = *(a1 + 1);
                v135 = *(a1 + 2);
                sub_1B0AF4054(&a1[*(v133 + 64)], type metadata accessor for ClientCommand);

                if (v106 == v161)
                {
                  a1 = v141[0];
                  v137 = v163;
                  if (v136 == v160)
                  {
                    v68 = v155;
                    sub_1B0AE2A30(v135, v142, v155);
                    sub_1B0AEF11C(v156, v72);

                    if ((*(v162 + 48))(v68, 1, v137) != 1)
                    {
                      v138 = v68;
                      v139 = v143;
                      sub_1B0AF4C4C(v138, v143, type metadata accessor for FindMissingMessages.CommandID);
                      v140 = v139;
                      v112 = v144;
                      sub_1B0AF4C4C(v140, v144, type metadata accessor for FindMissingMessages.CommandID);
                      result = swift_getEnumCaseMultiPayload();
                      if (result == 1)
                      {
                        if (*(v112 + 8) != 1)
                        {
                          return result;
                        }

                        goto LABEL_20;
                      }

                      return sub_1B0AF4054(v112, type metadata accessor for FindMissingMessages.CommandID);
                    }

LABEL_77:
                    v85 = &qword_1EB6E4258;
                    v86 = &qword_1B0EC49F0;
                    v87 = v68;
                    return sub_1B0398EFC(v87, v85, v86);
                  }

LABEL_83:
                  __break(1u);
LABEL_84:
                  sub_1B0AF4054(v106, type metadata accessor for TaskHistory.Running);
                  __break(1u);
LABEL_85:
                  result = sub_1B0AF4054(a1, type metadata accessor for TaskHistory.Running);
                  __break(1u);
                  return result;
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }
            }

            v128 += v129;
            --v127;
          }

          while (v127);
        }

        v80 = v162;
        v79 = v163;
      }
    }

    else
    {
      v80 = v162;
      v79 = v163;
    }

    sub_1B0AEF11C(v156, v72);

    v68 = v155;
    (*(v80 + 56))(v155, 1, 1, v79);
    goto LABEL_77;
  }

  v159 = a2;
  v142 = a4;
  sub_1B0AF4CB4(a1, v57, type metadata accessor for UntaggedResponse);
  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1B0AF4054(v57, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  v59 = *v57;
  v58 = *(v57 + 1);
  v60 = *(v57 + 2);
  v61 = *(v57 + 3);
  v62 = v57[32];
  v63 = *(v57 + 5);
  if (!v58)
  {
    v97 = 0;
    v67 = v162;
    v66 = v163;
    v68 = v160;
LABEL_55:
    sub_1B0AEF11C(v59, v97);

    (*(v67 + 56))(v68, 1, 1, v66);
    goto LABEL_77;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v155 = v58;
  v64 = Tag.init(_:)(v59, v58);
  if (v65)
  {
    v67 = v162;
    v66 = v163;
    v68 = v160;
LABEL_54:
    v97 = v155;
    goto LABEL_55;
  }

  v98 = v64;
  v147 = v59;
  LODWORD(v150) = v62;
  v151 = v61;
  v152 = v60;
  v153 = v63;
  v99 = *(v159 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (!v99)
  {
LABEL_53:

    v67 = v162;
    v66 = v163;
    v68 = v160;
    v59 = v147;
    goto LABEL_54;
  }

  LODWORD(v158) = v98;
  v157 = HIDWORD(v98);
  v100 = v159 + ((*(v154 + 80) + 32) & ~*(v154 + 80));
  v101 = *(v154 + 72);
  while (1)
  {
    sub_1B0AF4CB4(v100, v36, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1B0AF4054(v36, type metadata accessor for TaskHistory.Running);
LABEL_29:
    v100 += v101;
    if (!--v99)
    {
      goto LABEL_53;
    }
  }

  v102 = *v36;
  v103 = *(v36 + 1);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
  sub_1B0AF4054(&v36[*(v104 + 64)], type metadata accessor for ClientCommand);
  v105 = v102 == v158 && v103 == v157;
  if (!v105)
  {
    goto LABEL_29;
  }

  v106 = v148;
  sub_1B0AF4CB4(v100, v148, type metadata accessor for TaskHistory.Running);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_84;
  }

  v107 = *v106;
  v108 = *(v106 + 4);
  v109 = *(v106 + 8);
  sub_1B0AF4054(v106 + *(v104 + 64), type metadata accessor for ClientCommand);

  v105 = v107 == v158;
  v68 = v160;
  if (!v105)
  {
    __break(1u);
    goto LABEL_81;
  }

  v110 = v163;
  if (v108 != v157)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  sub_1B0AE2A30(v109, v142, v160);
  sub_1B0AEF11C(v147, v155);

  if ((*(v162 + 48))(v68, 1, v110) == 1)
  {
    goto LABEL_77;
  }

  v111 = v145;
  sub_1B0AF4C4C(v68, v145, type metadata accessor for FindMissingMessages.CommandID);
  v112 = v146;
  sub_1B0AF4C4C(v111, v146, type metadata accessor for FindMissingMessages.CommandID);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    return sub_1B0AF4054(v112, type metadata accessor for FindMissingMessages.CommandID);
  }

  if (*(v112 + 8))
  {
    return result;
  }

LABEL_12:
  v81 = v164;
  if (*(v164 + 9))
  {
    v82 = 256;
  }

  else
  {
    v82 = 0;
  }

  v83 = v161;
  sub_1B0B7EB64(v82 | *(v164 + 8), v161);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4030, &qword_1B0EC2B00);
  if ((*(*(v84 - 8) + 48))(v83, 1, v84) == 1)
  {
    v85 = &qword_1EB6E42B0;
    v86 = &qword_1B0EC49E8;
    v87 = v83;
  }

  else
  {
    v88 = v156;
    MessageIdentifierSet.ranges.getter(v156);
    v89 = sub_1B0B4A3FC();
    v91 = v90;
    sub_1B0398EFC(v88, &qword_1EB6E42A8, &qword_1B0EC49E0);
    if ((v91 & 1) == 0)
    {
      result = sub_1B0398EFC(v83, &qword_1EB6E4030, &qword_1B0EC2B00);
      *(v81 + 16) = HIDWORD(v89);
      *(v81 + 20) = 0;
      return result;
    }

    v85 = &qword_1EB6E4030;
    v86 = &qword_1B0EC2B00;
    v87 = v83;
  }

  return sub_1B0398EFC(v87, v85, v86);
}

uint64_t sub_1B0AF1388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v109 = a2;
  v110 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v15 = *(v132 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v121 = &v103 - v17;
  v18 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v120 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v128 = &v103 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v131 = &v103 - v26;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42B8, &qword_1B0EC49F8);
  v27 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v107 = (&v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v104 = &v103 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v103 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v130 = &v103 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C0, &qword_1B0EC4A00);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v105 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v106 = (&v103 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v103 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v111 = (&v103 - v45);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v46 = *(v129 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v116 = &v103 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v115 = &v103 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v108 = &v103 - v52;
  v53 = *(a11 + 16);
  v114 = a11;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v112 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v118 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v113 = a5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v117 = a6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v127 = v53;
  if (!v53)
  {
LABEL_17:
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v87 = v111;
    (*(*(v86 - 8) + 56))(v111, 1, 1, v86);
    goto LABEL_20;
  }

  v125 = (v46 + 56);
  v126 = (v15 + 48);
  v119 = (v46 + 48);
  v54 = _s20GrowWindowOfInterestV6ResultVMa();
  v55 = 0;
  v56 = v114 + ((*(*(v54 - 8) + 80) + 32) & ~*(*(v54 - 8) + 80));
  v122 = *(*(v54 - 8) + 72);
  v123 = v54;
  v124 = v43;
  v57 = v128;
  while (1)
  {
    v58 = v133;
    v59 = *(v133 + 48);
    v60 = v130;
    sub_1B0AF4CB4(v56, &v130[v59], _s20GrowWindowOfInterestV6ResultVMa);
    *v33 = v55;
    v61 = v33 + *(v58 + 48);
    sub_1B0AF4C4C(&v60[v59], v61, _s20GrowWindowOfInterestV6ResultVMa);
    sub_1B03B5C80(v61 + *(v54 + 24), v57, &qword_1EB6E3920, &qword_1B0E9B070);
    v62 = (*v126)(v57, 1, v132);
    sub_1B0398EFC(v57, &qword_1EB6E3920, &qword_1B0E9B070);
    if (v62 != 1)
    {
      v69 = v131;
      (*v125)(v131, 1, 1, v129);
      v71 = v124;
LABEL_9:
      v74 = v69;
      v75 = &unk_1EB6E3670;
      v76 = &unk_1B0E9B260;
LABEL_10:
      sub_1B0398EFC(v74, v75, v76);
      v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
      (*(*(v77 - 8) + 56))(v71, 1, 1, v77);
      goto LABEL_11;
    }

    v63 = v61 + *(v54 + 20);
    v64 = v120;
    sub_1B0AF4CB4(v63, v120, _s15MissingMessagesO11QueriedUIDsVMa);
    v65 = v64;
    v66 = v121;
    sub_1B03C60A4(v65, v121, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() <= 0)
    {
      sub_1B0398EFC(v66, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v70 = 1;
      v69 = v131;
    }

    else
    {
      v67 = v116;
      sub_1B03C60A4(v66, v116, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v68 = v67;
      v69 = v131;
      sub_1B03C60A4(v68, v131, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v70 = 0;
    }

    v72 = v129;
    (*v125)(v69, v70, 1, v129);
    v73 = (*v119)(v69, 1, v72);
    v71 = v124;
    if (v73 == 1)
    {
      goto LABEL_9;
    }

    v82 = v69;
    v83 = v115;
    sub_1B03C60A4(v82, v115, &unk_1EB6E26C0, &unk_1B0E9DE10);
    if (sub_1B0A9EF00(v55, 0, v118, v117))
    {
      v74 = v83;
      v75 = &unk_1EB6E26C0;
      v76 = &unk_1B0E9DE10;
      goto LABEL_10;
    }

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v85 = *(v84 + 48);
    *v71 = v55;
    sub_1B03C60A4(v83, v71 + v85, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(*(v84 - 8) + 56))(v71, 0, 1, v84);
LABEL_11:
    sub_1B0398EFC(v33, &qword_1EB6E42B8, &qword_1B0EC49F8);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    v79 = *(v78 - 8);
    v80 = *(v79 + 48);
    v81 = v80(v71, 1, v78);
    sub_1B0398EFC(v71, &qword_1EB6E42C0, &qword_1B0EC4A00);
    if (v81 != 1)
    {
      break;
    }

    ++v55;
    v54 = v123;
    v56 += v122;
    if (v127 == v55)
    {
      goto LABEL_17;
    }
  }

  v88 = v133;
  v89 = *(v133 + 48);
  v90 = v104;
  sub_1B0AF4CB4(v56, &v104[v89], _s20GrowWindowOfInterestV6ResultVMa);
  v91 = v107;
  *v107 = v55;
  v92 = *(v88 + 48);
  sub_1B0AF4C4C(&v90[v89], v91 + v92, _s20GrowWindowOfInterestV6ResultVMa);
  v93 = v106;
  sub_1B0AF3414(v55, v91 + v92, v118, v117, v106);
  sub_1B0398EFC(v91, &qword_1EB6E42B8, &qword_1B0EC49F8);
  v94 = v105;
  sub_1B03B5C80(v93, v105, &qword_1EB6E42C0, &qword_1B0EC4A00);
  if (v80(v94, 1, v78) == 1)
  {

    __break(1u);
  }

  else
  {
    v87 = v111;
    sub_1B03C60A4(v94, v111, &qword_1EB6E42C8, &qword_1B0EC4A08);
    sub_1B0398EFC(v93, &qword_1EB6E42C0, &qword_1B0EC4A00);
    (*(v79 + 56))(v87, 0, 1, v78);
LABEL_20:

    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    if ((*(*(v95 - 8) + 48))(v87, 1, v95) == 1)
    {
      sub_1B0398EFC(v87, &qword_1EB6E42C0, &qword_1B0EC4A00);
      return 0;
    }

    else
    {
      v96 = *v87;
      v97 = v108;
      sub_1B03C60A4(v87 + *(v95 + 48), v108, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3620, &qword_1B0EC26A0);
      swift_allocBox();
      v99 = *(v98 + 48);
      v100 = v109;
      *v101 = v110;
      v101[1] = v100;
      sub_1B03C60A4(v97, v101 + v99, &unk_1EB6E26C0, &unk_1B0E9DE10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    }

    return v96;
  }

  return result;
}

uint64_t sub_1B0AF1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v33 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v12 = *(v40 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v38 = &v33 - v14;
  v15 = _s20GrowWindowOfInterestV6ResultVMa();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D06F8();
  result = sub_1B0E46EE8();
  v21 = *(a4 + 16);
  if (v21)
  {
    v22 = *(v15 + 24);
    v23 = a4 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v24 = (v12 + 16);
    v25 = v16;
    v26 = (v9 + 48);
    v36 = *(v25 + 72);
    v37 = v22;
    v34 = v19;
    do
    {
      sub_1B0AF4CB4(v23, v19, _s20GrowWindowOfInterestV6ResultVMa);
      (*v24)(v38, v19, v40);
      sub_1B0E46ED8();
      sub_1B03B5C80(&v19[v37], v8, &qword_1EB6E3920, &qword_1B0E9B070);
      if ((*v26)(v8, 1, v39) == 1)
      {
        sub_1B0AF4054(v19, _s20GrowWindowOfInterestV6ResultVMa);
        result = sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
      }

      else
      {
        v27 = v8;
        v28 = v26;
        v29 = v24;
        v30 = v8;
        v31 = v35;
        sub_1B03C60A4(v27, v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0E46EC8();
        v32 = v31;
        v8 = v30;
        v24 = v29;
        v26 = v28;
        v19 = v34;
        sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        result = sub_1B0AF4054(v19, _s20GrowWindowOfInterestV6ResultVMa);
      }

      v23 += v36;
      --v21;
    }

    while (v21);
  }

  return result;
}

uint64_t _s20GrowWindowOfInterestV6ResultVMa()
{
  result = qword_1EB6DDA10;
  if (!qword_1EB6DDA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0AF23A0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v32 = a4;
  v33 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  LODWORD(v35[0]) = 1;
  LODWORD(v36) = a2;
  v17 = sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(v35, &v36, &type metadata for UID, v17, &v37);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v35[0] = v37;
  v36 = Range<>.init<A>(_:)(v35, &type metadata for UID, v17);
  if (HIDWORD(v36) != v36)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v18 = sub_1B0E46E88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    sub_1B0E46E38();
    v18(v35, 0);
  }

  MessageIdentifierSet.intersection(_:)(v10, v13);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.suffix(_:)(v30, v5, v16);
  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v19 = sub_1B0B4AAF0();
  if ((v19 & 0x100000000) != 0 || (v20 = v19, v19 > a2))
  {
    v25 = v29;
    sub_1B0E46EE8();
    LODWORD(v36) = 1;
    LODWORD(v34) = a2;
    static MessageIdentifier.... infix(_:_:)(&v36, &v34, &type metadata for UID, v17, v35);
    v36 = v35[0];
    v34 = Range<>.init<A>(_:)(&v36, &type metadata for UID, v17);
    v26 = _s20GrowWindowOfInterestV6ResultVMa();
    v27 = v32;
    v28 = v32 + *(v26 + 20);
    sub_1B0E46F08();
    sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*(v31 + 56))(v27 + *(v26 + 24), 1, 1, v5);
    return sub_1B03C60A4(v25, v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v21 = v32;
    sub_1B03B5C80(v16, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v36) = v20;
    LODWORD(v34) = a2;
    static MessageIdentifier.... infix(_:_:)(&v36, &v34, &type metadata for UID, v17, v35);
    v36 = v35[0];
    v34 = Range<>.init<A>(_:)(&v36, &type metadata for UID, v17);
    v22 = _s20GrowWindowOfInterestV6ResultVMa();
    v23 = v21 + *(v22 + 20);
    sub_1B0E46F08();
    sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return (*(v31 + 56))(v21 + *(v22 + 24), 1, 1, v5);
  }
}

uint64_t sub_1B0AF27F8@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v23 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  v18 = _s20GrowWindowOfInterestV6ResultVMa();
  sub_1B03B5C80(v1 + *(v18 + 24), v17, &qword_1EB6E3920, &qword_1B0E9B070);
  v19 = 1;
  LODWORD(v6) = (*(v6 + 48))(v17, 1, v5);
  v20 = v24;
  sub_1B0398EFC(v17, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v6 == 1)
  {
    sub_1B0AF4CB4(v1 + *(v18 + 20), v13, _s15MissingMessagesO11QueriedUIDsVMa);
    sub_1B03C60A4(v13, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      v21 = v23;
      sub_1B03C60A4(v9, v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B03C60A4(v21, v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v19 = 0;
    }
  }

  return (*(v25 + 56))(v20, v19, 1, v26);
}

uint64_t sub_1B0AF2B0C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *(_s20GrowWindowOfInterestV6ResultVMa() + 24);
  sub_1B03B5C80(v2 + v16, v10, &qword_1EB6E3920, &qword_1B0E9B070);
  v17 = *(v12 + 48);
  v18 = (v12 + 56);
  if (v17(v10, 1, v11) == 1)
  {
    sub_1B0398EFC(v10, &qword_1EB6E3920, &qword_1B0E9B070);
    sub_1B0398EFC(v2 + v16, &qword_1EB6E3920, &qword_1B0E9B070);
    sub_1B03B5C80(a1, v2 + v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return (*v18)(v2 + v16, 0, 1, v11);
  }

  else
  {
    sub_1B03C60A4(v10, v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MessageIdentifierSet.union(_:)(a1, v7);
    sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    (*v18)(v7, 0, 1, v11);
    return sub_1B0ADE468(v7, v2 + v16);
  }
}

uint64_t sub_1B0AF2D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v41 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(v48 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = _s20GrowWindowOfInterestV6ResultVMa();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 16);
  if (v23)
  {
    v46 = v8;
    v24 = 0;
    v25 = *(v19 + 24);
    v26 = a4 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v43 = *(v20 + 72);
    v44 = v25;
    v27 = (v9 + 48);
    v28 = &unk_1EB6E1AF0;
    v41 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v42 = v27;
    while (1)
    {
      sub_1B0AF4CB4(v26, v22, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B03B5C80(v22, v47, v28, &unk_1B0E9AF40);
      v29 = v46;
      sub_1B03B5C80(&v22[v44], v46, &qword_1EB6E3920, &qword_1B0E9B070);
      v30 = v28;
      v31 = *v27;
      if ((*v27)(v29, 1, v48) == 1)
      {
        sub_1B03D06F8();
        v32 = v45;
        sub_1B0E46EE8();
        v33 = v29;
        v34 = v32;
        v22 = v41;
        v35 = v31(v33, 1, v48);
        v28 = v30;
        if (v35 != 1)
        {
          sub_1B0398EFC(v46, &qword_1EB6E3920, &qword_1B0E9B070);
        }
      }

      else
      {
        v36 = v29;
        v34 = v45;
        sub_1B03C60A4(v36, v45, v30, &unk_1B0E9AF40);
        v28 = v30;
      }

      v37 = v47;
      MessageIdentifierSet.subtracting(_:)(v34, v16);
      sub_1B0398EFC(v37, v28, &unk_1B0E9AF40);
      sub_1B0398EFC(v34, v28, &unk_1B0E9AF40);
      v38 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v16, v28, &unk_1B0E9AF40);
      result = sub_1B0AF4054(v22, _s20GrowWindowOfInterestV6ResultVMa);
      v40 = __OFADD__(v24, v38);
      v24 += v38;
      if (v40)
      {
        break;
      }

      v27 = v42;
      v26 += v43;
      if (!--v23)
      {
        return v24;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B0AF3134(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11];
  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = *(_s20GrowWindowOfInterestV6ResultVMa() - 8);
    sub_1B03B5C80(a4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v14, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v9, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v16 = sub_1B0B4AAF0();
    sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v17 = 0;
    v18 = 1;
    if ((v16 & 0x100000000) == 0 && (v16 & 0xFFFFFFFE) != 0)
    {
      v18 = 0;
      v17 = (v16 - 1);
    }
  }

  else
  {
    v18 = 0;
    v17 = HIDWORD(a2);
  }

  return v17 | (v18 << 32);
}

unint64_t sub_1B0AF32C8(unint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    sub_1B03D06F8();
    result = sub_1B0E46EE8();
    v2 = *(v1 + 16);
    if (!v2)
    {
    }

    v3 = 0;
    while (v3 < *(v1 + 16))
    {
      v6[0] = *(v1 + 32 + 8 * v3);
      v4 = sub_1B041C1E8();
      result = Range<>.init<A>(_:)(v6, &type metadata for UID, v4);
      v6[4] = result;
      if (HIDWORD(result) != result)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v5 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        result = v5(v6, 0);
      }

      if (v2 == ++v3)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AF3414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v48 = a1;
  v52 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v9;
  v10 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v50 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v45 = &v45 - v26;
  v27 = _s20GrowWindowOfInterestV6ResultVMa();
  sub_1B03B5C80(a2 + *(v27 + 24), v16, &qword_1EB6E3920, &qword_1B0E9B070);
  LODWORD(v7) = (*(v7 + 48))(v16, 1, v6);
  sub_1B0398EFC(v16, &qword_1EB6E3920, &qword_1B0E9B070);
  if (v7 != 1)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
LABEL_7:
    v35 = &unk_1EB6E3670;
    v36 = &unk_1B0E9B260;
    v37 = v20;
LABEL_8:
    sub_1B0398EFC(v37, v35, v36);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
    return (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
  }

  v28 = a2 + *(v27 + 20);
  v29 = v50;
  sub_1B0AF4CB4(v28, v50, _s15MissingMessagesO11QueriedUIDsVMa);
  v30 = v29;
  v31 = v51;
  sub_1B03C60A4(v30, v51, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v34 = 1;
  }

  else
  {
    v32 = v31;
    v33 = v49;
    sub_1B03C60A4(v32, v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v33, v20, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v34 = 0;
  }

  (*(v22 + 56))(v20, v34, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  v40 = v45;
  sub_1B03C60A4(v20, v45, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v41 = v48;
  if (sub_1B0A9EF00(v48, 0, v46, v47))
  {
    v35 = &unk_1EB6E26C0;
    v36 = &unk_1B0E9DE10;
    v37 = v40;
    goto LABEL_8;
  }

  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42C8, &qword_1B0EC4A08);
  v43 = *(v42 + 48);
  v44 = v52;
  *v52 = v41;
  sub_1B03C60A4(v40, v44 + v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
  return (*(*(v42 - 8) + 56))(v44, 0, 1, v42);
}

uint64_t sub_1B0AF3920(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42A0, "ְ\t");
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v28 - v19;
  sub_1B0AF27F8(&v28 - v19);
  sub_1B03B5C80(a2, v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(v4 + 56))(v17, 0, 1, v3);
  v21 = *(v8 + 56);
  sub_1B03B5C80(v20, v11, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B03B5C80(v17, &v11[v21], &unk_1EB6E3670, &unk_1B0E9B260);
  v22 = *(v4 + 48);
  if (v22(v11, 1, v3) != 1)
  {
    sub_1B03B5C80(v11, v29, &unk_1EB6E3670, &unk_1B0E9B260);
    if (v22(&v11[v21], 1, v3) != 1)
    {
      v24 = &v11[v21];
      v25 = v28;
      sub_1B03C60A4(v24, v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v26 = v29;
      v23 = sub_1B0E46E08();
      sub_1B0398EFC(v25, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0398EFC(v20, &unk_1EB6E3670, &unk_1B0E9B260);
      sub_1B0398EFC(v26, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
      return v23 & 1;
    }

    sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v20, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v29, &unk_1EB6E26C0, &unk_1B0E9DE10);
    goto LABEL_6;
  }

  sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
  sub_1B0398EFC(v20, &unk_1EB6E3670, &unk_1B0E9B260);
  if (v22(&v11[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_1B0398EFC(v11, &qword_1EB6E42A0, "ְ\t");
    v23 = 0;
    return v23 & 1;
  }

  sub_1B0398EFC(v11, &unk_1EB6E3670, &unk_1B0E9B260);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1B0AF3D34@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20GrowWindowOfInterestV6ResultVMa();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v32 = &v32 - v22;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = v4;
    v25 = *(v12 + 20);
    v26 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v27 = *(v13 + 72);
    v28 = (v24 + 16);
    do
    {
      sub_1B0AF4CB4(v26, v16, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B0AF4CB4(&v16[v25], v11, _s15MissingMessagesO11QueriedUIDsVMa);
      (*v28)(v7, v11, v3);
      sub_1B0E46ED8();
      sub_1B0AF4054(v16, _s20GrowWindowOfInterestV6ResultVMa);
      sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v29 = v20;
  v30 = v32;
  sub_1B03C60A4(v29, v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return sub_1B03C60A4(v30, v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0AF4054(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1B0AF40B4(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4280, &qword_1B0EC4800);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D8, &qword_1B0EC4A10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DownloadTask.CommandID(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v43 - v19;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v20 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v43 - v25;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = 0;
  v27 = *(v24 + 80);
  v53 = *(v24 + 72);
  v54 = a1 + ((v27 + 32) & ~v27);
  v51 = (v15 + 48);
  v52 = (v15 + 56);
  v58 = MEMORY[0x1E69E7CC0];
  v28 = v50;
  v46 = v15;
  v47 = v14;
  do
  {
    sub_1B0AF4CB4(v54 + v53 * v26, v28, type metadata accessor for TaskHistory.Running);
    sub_1B0AF4CB4(v28, v22, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0AF4054(v22, type metadata accessor for TaskHistory.Running);
      v29 = 1;
    }

    else
    {
      v30 = v13;
      v31 = *(v22 + 2);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
      sub_1B0AF4054(&v22[*(v32 + 64)], type metadata accessor for ClientCommand);
      v33 = *(v49 + 16);
      if (v33)
      {
        v34 = v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v35 = *(v45 + 72);
        while (1)
        {
          sub_1B03B5C80(v34, v7, &qword_1EB6E4280, &qword_1B0EC4800);
          if (*v7 == v31)
          {
            break;
          }

          sub_1B0398EFC(v7, &qword_1EB6E4280, &qword_1B0EC4800);
          v34 += v35;
          if (!--v33)
          {
            v29 = 1;
            v13 = v30;
            goto LABEL_14;
          }
        }

        v36 = v43;
        sub_1B03C60A4(v7, v43, &qword_1EB6E4280, &qword_1B0EC4800);
        v13 = v30;
        sub_1B0AF4CB4(v36 + *(v44 + 52), v30, type metadata accessor for DownloadTask.CommandID);
        sub_1B0398EFC(v36, &qword_1EB6E4280, &qword_1B0EC4800);
        v29 = 0;
LABEL_14:
        v15 = v46;
        v14 = v47;
        v28 = v50;
      }

      else
      {
        v29 = 1;
        v13 = v30;
        v15 = v46;
        v14 = v47;
      }
    }

    (*v52)(v13, v29, 1, v14);
    sub_1B0AF4054(v28, type metadata accessor for TaskHistory.Running);
    if ((*v51)(v13, 1, v14) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E42D8, &qword_1B0EC4A10);
    }

    else
    {
      v37 = v48;
      sub_1B0AF4C4C(v13, v48, type metadata accessor for DownloadTask.CommandID);
      sub_1B0AF4C4C(v37, v57, type metadata accessor for DownloadTask.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B0AFFC30(0, v58[2] + 1, 1, v58);
      }

      v39 = v58[2];
      v38 = v58[3];
      if (v39 >= v38 >> 1)
      {
        v58 = sub_1B0AFFC30(v38 > 1, v39 + 1, 1, v58);
      }

      v40 = v57;
      v41 = v58;
      v58[2] = v39 + 1;
      sub_1B0AF4C4C(v40, v41 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, type metadata accessor for DownloadTask.CommandID);
      v28 = v50;
    }

    ++v26;
  }

  while (v26 != v55);
  return v58;
}

void *sub_1B0AF4680(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4260, &qword_1B0EC47E0);
  v4 = *(v3 - 8);
  v44 = v3;
  v45 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4258, &qword_1B0EC49F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - v12;
  Missing = type metadata accessor for FindMissingMessages.CommandID(0);
  v15 = *(Missing - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](Missing);
  v57 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v43 - v19;
  v56 = type metadata accessor for TaskHistory.Running(0);
  v20 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v43 - v25;
  v55 = *(a1 + 16);
  if (!v55)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = 0;
  v27 = *(v24 + 80);
  v53 = *(v24 + 72);
  v54 = a1 + ((v27 + 32) & ~v27);
  v51 = (v15 + 48);
  v52 = (v15 + 56);
  v58 = MEMORY[0x1E69E7CC0];
  v28 = v50;
  v46 = v15;
  v47 = Missing;
  do
  {
    sub_1B0AF4CB4(v54 + v53 * v26, v28, type metadata accessor for TaskHistory.Running);
    sub_1B0AF4CB4(v28, v22, type metadata accessor for TaskHistory.Running);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B0AF4054(v22, type metadata accessor for TaskHistory.Running);
      v29 = 1;
    }

    else
    {
      v30 = v13;
      v31 = *(v22 + 2);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EE0, &qword_1B0EC2AF0);
      sub_1B0AF4054(&v22[*(v32 + 64)], type metadata accessor for ClientCommand);
      v33 = *(v49 + 16);
      if (v33)
      {
        v34 = v49 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
        v35 = *(v45 + 72);
        while (1)
        {
          sub_1B03B5C80(v34, v7, &qword_1EB6E4260, &qword_1B0EC47E0);
          if (*v7 == v31)
          {
            break;
          }

          sub_1B0398EFC(v7, &qword_1EB6E4260, &qword_1B0EC47E0);
          v34 += v35;
          if (!--v33)
          {
            v29 = 1;
            v13 = v30;
            goto LABEL_14;
          }
        }

        v36 = v43;
        sub_1B03C60A4(v7, v43, &qword_1EB6E4260, &qword_1B0EC47E0);
        v13 = v30;
        sub_1B0AF4CB4(v36 + *(v44 + 52), v30, type metadata accessor for FindMissingMessages.CommandID);
        sub_1B0398EFC(v36, &qword_1EB6E4260, &qword_1B0EC47E0);
        v29 = 0;
LABEL_14:
        v15 = v46;
        Missing = v47;
        v28 = v50;
      }

      else
      {
        v29 = 1;
        v13 = v30;
        v15 = v46;
        Missing = v47;
      }
    }

    (*v52)(v13, v29, 1, Missing);
    sub_1B0AF4054(v28, type metadata accessor for TaskHistory.Running);
    if ((*v51)(v13, 1, Missing) == 1)
    {
      sub_1B0398EFC(v13, &qword_1EB6E4258, &qword_1B0EC49F0);
    }

    else
    {
      v37 = v48;
      sub_1B0AF4C4C(v13, v48, type metadata accessor for FindMissingMessages.CommandID);
      sub_1B0AF4C4C(v37, v57, type metadata accessor for FindMissingMessages.CommandID);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_1B0B00010(0, v58[2] + 1, 1, v58);
      }

      v39 = v58[2];
      v38 = v58[3];
      if (v39 >= v38 >> 1)
      {
        v58 = sub_1B0B00010(v38 > 1, v39 + 1, 1, v58);
      }

      v40 = v57;
      v41 = v58;
      v58[2] = v39 + 1;
      sub_1B0AF4C4C(v40, v41 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v39, type metadata accessor for FindMissingMessages.CommandID);
      v28 = v50;
    }

    ++v26;
  }

  while (v26 != v55);
  return v58;
}

uint64_t sub_1B0AF4C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AF4CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for PartialRange(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialRange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_1B0AF4DF4()
{
  sub_1B043B29C();
  if (v0 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v1 <= 0x3F)
    {
      sub_1B0AB44A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for FetchedWindow(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FetchedWindow(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1B0AF4EFC()
{
  result = qword_1EB6E42E0;
  if (!qword_1EB6E42E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E42E0);
  }

  return result;
}

uint64_t sub_1B0AF4F50@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MessagesToRemoveHelper.Range();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1B0AF8134(v13, v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1B0AF819C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      }

      if (v15)
      {
        break;
      }

      sub_1B0AF819C(v11, type metadata accessor for MessagesToRemoveHelper.Range);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1B0AF81FC(v11, v19, type metadata accessor for MessagesToRemoveHelper.Range);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

unint64_t sub_1B0AF511C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a3 + 32); ; ++i)
  {
    v8 = *i;
    v9 = *i;
    result = a1(&v9);
    if (v3)
    {
      break;
    }

    if (result)
    {
      return v8 | (HIDWORD(v8) << 32);
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0AF51AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = BYTE5(a4);
  v65 = a3;
  v66 = a1;
  v63 = a2;
  v67 = a6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = *(*(v61 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v56 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v60 = &v56 - v15;
  v16 = type metadata accessor for MessageBatches(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v58 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v56 = &v56 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v56 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x1EEE9AC00](v29 - 8);
  v33 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v56 - v34;
  LOBYTE(v70[0]) = v7 & 1;
  LOBYTE(v69) = BYTE4(a5) & 1;
  v64 = a5;
  sub_1B0AF6F68(v65, v66, &v56 - v34);
  sub_1B03B5C80(v35, v33, &unk_1EB6E3670, &unk_1B0E9B260);
  if ((*(v21 + 48))(v33, 1, v20) == 1)
  {
    sub_1B0398EFC(v35, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0398EFC(v33, &unk_1EB6E3670, &unk_1B0E9B260);
    return (*(v21 + 56))(v67, 1, 1, v20);
  }

  v65 = v21;
  v66 = v20;
  v37 = v67;
  sub_1B03C60A4(v33, v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B0AF8134(v63, v19, type metadata accessor for MessageBatches);
  LOBYTE(v70[0]) = 0;
  v38 = 0xFFFFFFFFLL;
  if ((v64 & 0x100000000) == 0)
  {
    v38 = a5;
  }

  sub_1B0B3EDEC(v38);
  v39 = *(v19 + 1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v40 = sub_1B0AF819C(v19, type metadata accessor for MessageBatches);
  MEMORY[0x1EEE9AC00](v40);
  *(&v56 - 2) = v28;
  v41 = sub_1B0AF511C(sub_1B0AF74CC, (&v56 - 4), v39);
  v43 = v42;

  v44 = v28;
  if ((v43 & 1) == 0)
  {
    v70[0] = v41;
    v45 = sub_1B041C1E8();
    v69 = Range<>.init<A>(_:)(v70, &type metadata for UID, v45);
    sub_1B03D06F8();
    v46 = v62;
    sub_1B0E46F08();
    v48 = v60;
    v47 = v61;
    MessageIdentifierSet.intersection(_:)(v28, v60);
    sub_1B0398EFC(v46, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((v64 & 0x100000000) != 0 || (LODWORD(v70[0]) = v64, (MessageIdentifierSet.contains(_:)(v70, v47) & 1) == 0))
    {
      v50 = v59;
      sub_1B03B5C80(v48, v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v54 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v35, &unk_1EB6E3670, &unk_1B0E9B260);
      if (v54 >= 1)
      {
        v52 = v50;
        v53 = v58;
        goto LABEL_13;
      }
    }

    else
    {
      LODWORD(v69) = v64;
      LODWORD(v68) = -1;
      static MessageIdentifier.... infix(_:_:)(&v69, &v68, &type metadata for UID, v45, v70);
      v69 = v70[0];
      v68 = Range<>.init<A>(_:)(&v69, &type metadata for UID, v45);
      v49 = v62;
      sub_1B0E46F08();
      v50 = v57;
      MessageIdentifierSet.union(_:)(v49, v57);
      sub_1B0398EFC(v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v51 = MessageIdentifierSet.count.getter();
      sub_1B0398EFC(v48, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v35, &unk_1EB6E3670, &unk_1B0E9B260);
      if (v51 >= 1)
      {
        v52 = v50;
        v53 = v56;
LABEL_13:
        sub_1B03C60A4(v52, v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B03C60A4(v53, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v55 = 0;
LABEL_15:
        (*(v65 + 56))(v37, v55, 1, v66);
        return sub_1B0398EFC(v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
      }
    }

    sub_1B0398EFC(v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v55 = 1;
    goto LABEL_15;
  }

  sub_1B0398EFC(v35, &unk_1EB6E3670, &unk_1B0E9B260);
  (*(v65 + 56))(v37, 1, 1, v66);
  return sub_1B0398EFC(v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t sub_1B0AF58C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v33 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v37 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v35 = &v33 - v20;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = (v4 + 16);
    v23 = (a1 + 40);
    do
    {
      if ((*v23 & 1) == 0)
      {
        v42 = *(v23 - 1);
        v24 = sub_1B041C1E8();
        v41 = Range<>.init<A>(_:)(&v42, &type metadata for UID, v24);
        sub_1B0E46F08();
        (*v22)(v7, v13, v3);
        sub_1B0E46ED8();
        sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v23 += 12;
      --v21;
    }

    while (v21);
  }

  v25 = v35;
  sub_1B03C60A4(v18, v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v26 = v37;
  sub_1B03B5C80(v25, v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v27 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v25, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v27 <= 0)
  {
    sub_1B0398EFC(v26, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v31 = 1;
    v30 = v40;
  }

  else
  {
    v28 = v34;
    sub_1B03C60A4(v26, v34, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v29 = v28;
    v30 = v40;
    sub_1B03C60A4(v29, v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v31 = 0;
  }

  return (*(v38 + 56))(v30, v31, 1, v39);
}

void sub_1B0AF5C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  if ((a1 & 0x100000000) == 0)
  {
    if (a1 == -1)
    {
      __break(1u);
      return;
    }

    ++v10;
    if ((a4 & 0x100000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  if ((a4 & 0x100000000) == 0)
  {
LABEL_6:
    if (v10 <= a4)
    {
      v33 = a4;
    }

    else
    {
      v33 = v10;
    }

    if ((a1 & 0x100000000) != 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = v33;
    }

LABEL_12:
    v48 = v10;
    v49 = v28;
    v50 = v32;
    v51 = &v47 - v29;
    v52 = v31;
    v53 = v30;
    v54 = a2;
    v55 = v27;
    v56 = a5;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v34 = *(a3 + 16);
    if (v34)
    {
      v35 = (a3 + 32);
      v36 = sub_1B041C1E8();
      v37 = (v47 + 16);
      do
      {
        v38 = *v35;
        v35 = (v35 + 12);
        v58[0] = v38;
        *v60 = Range<>.init<A>(_:)(v58, &type metadata for UID, v36);
        sub_1B0E46F08();
        (*v37)(v14, v20, v11);
        sub_1B0E46ED8();
        sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        --v34;
      }

      while (v34);
    }

    v39 = v49;
    sub_1B03C60A4(v23, v49, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v58[0]) = v48;
    v60[0] = -1;
    v40 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v58, v60, &type metadata for UID, v40, &v59);
    v41 = v50;
    sub_1B0E46EE8();
    v58[0] = v59;
    *v60 = Range<>.init<A>(_:)(v58, &type metadata for UID, v40);
    if (HIDWORD(*v60) != v60[0])
    {
      v42 = sub_1B0E46E88();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      sub_1B0E46E38();
      v42(v58, 0);
    }

    v43 = v52;
    MessageIdentifierSet.subtracting(_:)(v41, v52);
    sub_1B0398EFC(v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if ((v54 & 0x100000000) != 0)
    {
      v44 = 1;
    }

    else
    {
      v44 = v54;
    }

    v60[0] = v44;
    LODWORD(v57) = -1;
    static MessageIdentifier.... infix(_:_:)(v60, &v57, &type metadata for UID, v40, v58);
    *v60 = v58[0];
    v57 = Range<>.init<A>(_:)(v60, &type metadata for UID, v40);
    v45 = v53;
    sub_1B0E46F08();
    v46 = v51;
    MessageIdentifierSet.intersection(_:)(v45, v51);
    sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v46, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return;
  }

  sub_1B0B4B7A8(a5);
}

BOOL sub_1B0AF61A8(unsigned int *a1, unsigned int *a2)
{
  v2 = *(a2 + 5);
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v4 = *a2 | (*(a2 + 4) << 32);
  if (((*a1 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v4 & 0x100000000) == 0)
  {
    *(a2 + 4);
    *(a1 + 4);
    if (*a1 == *a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1B0AF62A8(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 14931;
  }

  else
  {
    v2 = 978332499;
  }

  v5 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  v3 = sub_1B0E44B88();
  MEMORY[0x1B2726E80](v3);

  return v5;
}

uint64_t sub_1B0AF6338(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = *v2;
  v18 = *(v2 + 8) | (*(v2 + 12) << 32);
  v19 = *(v2 + 16);
  v20 = *(v2 + 20);
  LOBYTE(v28) = *(v2 + 13);
  LOBYTE(v27) = v20;
  sub_1B0AF6718(a1, a2, v17, v18 | (v28 << 40), v19 | (v20 << 32), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B0398EFC(v8, &unk_1EB6E3670, &unk_1B0E9B260);
    result = sub_1B0B3ED74();
    if (v22)
    {
      return result;
    }

    LODWORD(v27) = result;
    LODWORD(v26) = -1;
    v23 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v27, &v26, &type metadata for UID, v23, &v28);
    v27 = v28;
    v26 = Range<>.init<A>(_:)(&v27, &type metadata for UID, v23);
    sub_1B03D06F8();
    sub_1B0E46F08();
    sub_1B0AF6BEC(v14);
    v24 = v14;
  }

  else
  {
    sub_1B03C60A4(v8, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0AF6BEC(v16);
    v24 = v16;
  }

  return sub_1B0398EFC(v24, &unk_1EB6E26C0, &unk_1B0E9DE10);
}

uint64_t sub_1B0AF65C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - v7;
  v9 = *(a2 + 8);
  v10 = *(v9 + 16);
  if (v10 > a1)
  {
    v11 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else if (v11 < v10)
    {
      LODWORD(v15) = *(v9 + 8 * v11 + 32);
      LODWORD(v14) = -1;
      v12 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v15, &v14, &type metadata for UID, v12, &v16);
      v15 = v16;
      v14 = Range<>.init<A>(_:)(&v15, &type metadata for UID, v12);
      sub_1B03D06F8();
      sub_1B0E46F08();
      sub_1B0AF6BEC(v8);
      return sub_1B0398EFC(v8, &unk_1EB6E26C0, &unk_1B0E9DE10);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B0AF6718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v54 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v49 = *(v52 - 8);
  v11 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v50 = v42 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v29 = v42 - v28;
  v53 = a2;
  if (*(*(a2 + 8) + 16) <= a1)
  {
    v35 = *(v45 + 56);

    return v35(a6, 1, 1, v17);
  }

  else
  {
    v42[1] = v26;
    v43 = v27;
    v42[0] = v21;
    v55 = v17;
    v44 = a6;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if (a1 >= 1)
    {
      v30 = a5;
      v31 = a5;
      v32 = (v45 + 48);
      v46 = (v49 + 16);
      v33 = HIDWORD(v31) & 1;
      v48 = a4 & 0xFFFFFFFFFFLL | (((a4 >> 40) & 1) << 40);
      v49 = (a4 >> 40) & 1;
      v47 = v30 | (v33 << 32);
      while (1)
      {
        v57 = v49;
        v56 = v33;
        sub_1B0AF51AC(v29, v53, v54, v48, v47, v16);
        if ((*v32)(v16, 1, v55) == 1)
        {
          break;
        }

        v34 = v50;
        sub_1B03C60A4(v16, v50, &unk_1EB6E26C0, &unk_1B0E9DE10);
        (*v46)(v51, v34, v52);
        sub_1B0E46ED8();
        sub_1B0398EFC(v34, &unk_1EB6E26C0, &unk_1B0E9DE10);
        if (!--a1)
        {
          goto LABEL_11;
        }
      }

      sub_1B0398EFC(v16, &unk_1EB6E3670, &unk_1B0E9B260);
    }

LABEL_11:
    v37 = v43;
    sub_1B03B5C80(v29, v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v38 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v38 < 1)
    {
      sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return (*(v45 + 56))(v44, 1, 1, v55);
    }

    else
    {
      v39 = v42[0];
      sub_1B03C60A4(v37, v42[0], &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v40 = v39;
      v41 = v44;
      sub_1B03C60A4(v40, v44, &unk_1EB6E26C0, &unk_1B0E9DE10);
      return (*(v45 + 56))(v41, 0, 1, v55);
    }
  }
}

uint64_t sub_1B0AF6BEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 12);
  v4 = *(v1 + 8);
  v5 = *(v1 + 13);
  v9[2] = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = sub_1B0B3E4C8(sub_1B0AF6CEC, v9, v2);

  *v1 = v6;
  LOBYTE(v6) = sub_1B0B64D24(v6, v2);

  if ((v6 & 1) == 0 && (v5 & 1) == 0 && ((v4 | (v3 << 32)) & 0x100000000) == 0)
  {
    if (v4 == -1)
    {
      __break(1u);
    }

    else
    {
      v10[0] = v4 + 1;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = MessageIdentifierSet.contains(_:)(v10, v8);
      if ((result & 1) == 0)
      {
        *(v1 + 12) = 256;
        *(v1 + 8) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B0AF6CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  result = sub_1B0AF6D30(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1B0AF6D30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22[-v13];
  v25 = a2;
  v15 = sub_1B041C1E8();
  v24 = Range<>.init<A>(_:)(&v25, &type metadata for UID, v15);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a1, v14);
  sub_1B0398EFC(v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = sub_1B0B4AAF0();
  if (v16 & 0x100000000) != 0 || (v17 = v16, MessageIdentifierSet.ranges.getter(v7), v18 = sub_1B0B4A3E8() >> 32, v20 = v19, sub_1B0398EFC(v7, &unk_1EB6E2780, &unk_1B0E9C5E0), (v20))
  {
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return 0;
  }

  else
  {
    v23 = v18;
    LODWORD(v24) = v17;
    static MessageIdentifier.... infix(_:_:)(&v24, &v23, &type metadata for UID, v15, &v25);
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v25;
  }
}

uint64_t sub_1B0AF6F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v44 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v45 = *(v9 - 8);
  v46 = v9;
  v10 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = *(*(v42 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v42);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v43 = &v38 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v40 = &v38 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v41 = &v38 - v23;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = (a1 + 32);
    v26 = sub_1B041C1E8();
    do
    {
      v27 = *v25;
      v25 = (v25 + 12);
      v49 = v27;
      v48 = Range<>.init<A>(_:)(&v49, &type metadata for UID, v26);
      sub_1B0E46F08();
      (*(v5 + 16))(v8, v15, v4);
      sub_1B0E46ED8();
      sub_1B0398EFC(v15, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      --v24;
    }

    while (v24);
  }

  v28 = v20;
  v29 = v40;
  sub_1B03C60A4(v28, v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = v41;
  MessageIdentifierSet.subtracting(_:)(v44, v41);
  sub_1B0398EFC(v29, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v31 = v43;
  sub_1B03B5C80(v30, v43, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v30, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v32 <= 0)
  {
    sub_1B0398EFC(v31, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v36 = 1;
    v35 = v47;
  }

  else
  {
    v33 = v39;
    sub_1B03C60A4(v31, v39, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v34 = v33;
    v35 = v47;
    sub_1B03C60A4(v34, v47, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v36 = 0;
  }

  return (*(v45 + 56))(v35, v36, 1, v46);
}

BOOL sub_1B0AF7364(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v14 = *a1;
  v11 = sub_1B041C1E8();
  v13 = Range<>.init<A>(_:)(&v14, &type metadata for UID, v11);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  LOBYTE(a2) = sub_1B0E46E98();
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return (a2 & 1) == 0;
}

uint64_t sub_1B0AF74EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1B0B64D24(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    if ((a5 & 0x10000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a5 & 0x10000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x100000000) != 0)
    {
      if ((a5 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else if ((a5 & 0x100000000) != 0 || a5 != a2)
    {
      return 0;
    }
  }

  if ((a3 & 0x100000000) != 0)
  {
    if ((a6 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((a6 & 0x100000000) == 0 && a6 == a3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B0AF7574(unint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v73) = a5;
  v80 = a4;
  v81 = a3;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v74 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v77 = v72 - v11;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E24D8, &qword_1B0E9CCD8);
  v12 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v14 = v72 - v13;
  v15 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = v72 - v24;
  v25 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42E8, &unk_1B0EC4B30);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v72 - v32;
  v79 = a1;
  sub_1B0B4B4F0(v72 - v32);
  if ((*(v26 + 48))(v33, 1, v25) == 1)
  {
    if (v81)
    {
      LODWORD(v83) = 1;
      LODWORD(v82) = -1;
      v34 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v34, &v84);
      v35 = v84;
      v19 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v37 = *(v19 + 16);
      v36 = *(v19 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v19 = sub_1B0AFFFFC((v36 > 1), v37 + 1, 1, v19);
      }

LABEL_55:
      sub_1B0AF819C(v79, _s15MissingMessagesOMa);
      *(v19 + 16) = v38;
      v70 = v19 + 12 * v37;
      *(v70 + 32) = v35;
      *(v70 + 40) = 0;
      goto LABEL_56;
    }

    v46 = HIDWORD(v78);
    if (v73 > 1u)
    {
      v48 = 0xFFFFFFFFLL;
      if (v46 != 0xFFFFFFFF)
      {
        LODWORD(v83) = HIDWORD(v78) + 1;
        LODWORD(v82) = -1;
        v67 = sub_1B041C1E8();
        static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v67, &v84);
        v35 = v84;
        v19 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v37 = *(v19 + 16);
        v68 = *(v19 + 24);
        goto LABEL_53;
      }

      __break(1u);
    }

    else
    {
      if ((v78 & 0xFFFFFFFE) == 0)
      {
        v19 = MEMORY[0x1E69E7CC0];
        goto LABEL_48;
      }

      LODWORD(v83) = 1;
      LODWORD(v82) = v78 - 1;
      v47 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v47, &v84);
      v5 = v84;
      v19 = sub_1B0AFFFFC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      a1 = *(v19 + 16);
      v48 = *(v19 + 24);
      v14 = (a1 + 1);
      if (a1 < v48 >> 1)
      {
LABEL_11:
        *(v19 + 16) = v14;
        v49 = v19 + 12 * a1;
        *(v49 + 32) = v5;
        *(v49 + 40) = 0;
LABEL_48:
        if (v46 == 0xFFFFFFFF)
        {
          sub_1B0AF819C(v79, _s15MissingMessagesOMa);
          goto LABEL_56;
        }

        LODWORD(v83) = v46 + 1;
        LODWORD(v82) = -1;
        v69 = sub_1B041C1E8();
        static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v69, &v84);
        v35 = v84;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1B0AFFFFC(0, *(v19 + 16) + 1, 1, v19);
        }

        v37 = *(v19 + 16);
        v68 = *(v19 + 24);
LABEL_53:
        v38 = v37 + 1;
        if (v37 >= v68 >> 1)
        {
          v19 = sub_1B0AFFFFC((v68 > 1), v37 + 1, 1, v19);
        }

        goto LABEL_55;
      }
    }

    v19 = sub_1B0AFFFFC((v48 > 1), v14, 1, v19);
    goto LABEL_11;
  }

  sub_1B0AF81FC(v33, v29, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  v39 = sub_1B041C1E8();
  static MessageIdentifierRange.all.getter(&type metadata for UID, v39, &v84);
  v83 = v84;
  v72[0] = v39;
  v82 = Range<>.init<A>(_:)(&v83, &type metadata for UID, v39);
  sub_1B03D06F8();
  sub_1B0E46F08();
  v40 = *(v25 + 20);
  v73 = v29;
  sub_1B0AF8134(&v29[v40], v18, _s15MissingMessagesO11QueriedUIDsVMa);
  v41 = v75;
  MessageIdentifierSet.subtracting(_:)(v18, v75);
  sub_1B0398EFC(v23, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v18, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v42 = v77;
  v72[1] = v19;
  MessageIdentifierSet.ranges.getter(v77);
  sub_1B03B5C80(v42, v14, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v43 = *(v76 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v44 = sub_1B0E46E18();
  sub_1B0398EFC(v42, &unk_1EB6E2780, &unk_1B0E9C5E0);
  *&v14[v43] = v44;
  v45 = v41;
  if (v44 != sub_1B0E46E28())
  {
    v50 = v43;
    v19 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      MessageIdentifierSet.RangeView.subscript.getter(v7, &v84);
      v51 = v84;
      v52 = sub_1B0E46E18();
      v53 = sub_1B0E46E28();
      if (v44 < v52 || v44 >= v53)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1B0AFFFFC(0, *(v19 + 16) + 1, 1, v19);
      }

      v55 = *(v19 + 16);
      v54 = *(v19 + 24);
      if (v55 >= v54 >> 1)
      {
        v19 = sub_1B0AFFFFC((v54 > 1), v55 + 1, 1, v19);
      }

      ++v44;
      *(v19 + 16) = v55 + 1;
      v56 = v19 + 12 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = 0;
      if (v44 == sub_1B0E46E28())
      {
        *&v14[v50] = v44;
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_21:
  sub_1B0398EFC(v14, &qword_1EB6E24D8, &qword_1B0E9CCD8);
  v57 = v74;
  v52 = v45;
  MessageIdentifierSet.ranges.getter(v74);
  v58 = sub_1B0B4A3E8();
  v60 = v59;
  sub_1B0398EFC(v57, &unk_1EB6E2780, &unk_1B0E9C5E0);
  v44 = v73;
  v61 = HIDWORD(v78);
  if (v81)
  {
    v62 = 0;
  }

  else
  {
    v62 = HIDWORD(v78);
  }

  if (v62 <= *v73)
  {
    v62 = *v73;
  }

  if (v81)
  {
    LODWORD(v61) = *v73;
    v62 = *v73;
  }

  if (!v73[4])
  {
    LODWORD(v61) = v62;
  }

  if (v60)
  {
    if (v73[4] & v81)
    {
      v63 = 1;
      goto LABEL_39;
    }
  }

  else
  {
    if (v61 <= HIDWORD(v58))
    {
      LODWORD(v61) = HIDWORD(v58);
    }

    if ((v73[4] & v81) != 0)
    {
      LODWORD(v61) = HIDWORD(v58);
    }
  }

  if (v61 == -1)
  {
    sub_1B0AF819C(v79, _s15MissingMessagesOMa);
    sub_1B0398EFC(v45, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0AF819C(v44, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
    goto LABEL_56;
  }

  v63 = v61 + 1;
LABEL_39:
  LODWORD(v83) = v63;
  LODWORD(v82) = -1;
  static MessageIdentifier.... infix(_:_:)(&v83, &v82, &type metadata for UID, v72[0], &v84);
  v51 = v84;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_58:
    v19 = sub_1B0AFFFFC(0, *(v19 + 16) + 1, 1, v19);
  }

  v65 = *(v19 + 16);
  v64 = *(v19 + 24);
  if (v65 >= v64 >> 1)
  {
    v19 = sub_1B0AFFFFC((v64 > 1), v65 + 1, 1, v19);
  }

  sub_1B0AF819C(v79, _s15MissingMessagesOMa);
  sub_1B0398EFC(v52, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AF819C(v44, _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa);
  *(v19 + 16) = v65 + 1;
  v66 = v19 + 12 * v65;
  *(v66 + 32) = v51;
  *(v66 + 40) = 1;
LABEL_56:
  LOBYTE(v84) = 0;
  LOBYTE(v83) = BYTE4(v80) & 1;
  return v19;
}

uint64_t sub_1B0AF7FEC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_1B0AF8034(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s11QueryRangesV7ElementVwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s11QueryRangesV7ElementVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0AF8134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AF819C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AF81FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11QueryRangesV19FetchedWindowUpdateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1B0AF82B0(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0AF82CC(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

unint64_t sub_1B0AF8314()
{
  result = qword_1EB6E42F0;
  if (!qword_1EB6E42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E42F0);
  }

  return result;
}

uint64_t sub_1B0AF8368()
{
  result = sub_1B03D0770(&unk_1F2710E80);
  qword_1EB737D70 = result;
  return result;
}

uint64_t sub_1B0AF8390(uint64_t a1)
{
  v2 = v1;
  PendingDownload = type metadata accessor for FindPendingDownload();
  v5 = PendingDownload - 8;
  v6 = *(*(PendingDownload - 8) + 64);
  MEMORY[0x1EEE9AC00](PendingDownload);
  v106 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v99 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v99 - v12;
  v109 = type metadata accessor for MailboxTaskLogger(0);
  v14 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v101 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v104 = &v99 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v99 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v99 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v99 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v99 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v102 = &v99 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v99 - v36;
  v38 = *(v5 + 44);
  v108 = v2;
  sub_1B03D08AC(v2 + v38, &v99 - v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0AFB928(a1, v28, type metadata accessor for MailboxTaskLogger);
    sub_1B0AFB928(a1, v25, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v39 = sub_1B0E43988();
    v40 = sub_1B0E45908();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v112 = v42;
      *v41 = 68159235;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v43 = v109;
      v44 = &v25[*(v109 + 20)];
      *(v41 + 10) = *v44;
      *(v41 + 11) = 2082;
      v45 = &v28[*(v43 + 20)];
      *(v41 + 13) = sub_1B0399D64(*(v45 + 1), *(v45 + 2), &v112);
      *(v41 + 21) = 1040;
      *(v41 + 23) = 2;
      *(v41 + 27) = 512;
      LOWORD(v44) = *(v44 + 12);
      sub_1B0AFB990(v25, type metadata accessor for MailboxTaskLogger);
      *(v41 + 29) = v44;
      *(v41 + 31) = 2160;
      *(v41 + 33) = 0x786F626C69616DLL;
      *(v41 + 41) = 2085;
      v46 = *(v45 + 4);
      LODWORD(v45) = *(v45 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v28, type metadata accessor for MailboxTaskLogger);
      v110 = v46;
      v111 = v45;
      v47 = sub_1B0E44BA8();
      v49 = sub_1B0399D64(v47, v48, &v112);

      *(v41 + 43) = v49;
      _os_log_impl(&dword_1B0389000, v39, v40, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task.", v41, 0x33u);
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v42, -1, -1);
      MEMORY[0x1B272C230](v41, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v25, type metadata accessor for MailboxTaskLogger);

      sub_1B0AFB990(v28, type metadata accessor for MailboxTaskLogger);
    }

    v79 = v37;
    return sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v100 = v29;
  v107 = v37;
  MessageIdentifierSet.ranges.getter(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v50 = sub_1B0E46E18();
  v51 = sub_1B0E46E28();
  v52 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v50 < v52 || result < v50)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = sub_1B0E46E18();
  v55 = sub_1B0E46E28();
  result = sub_1B0398EFC(v13, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v51 < v54 || v55 < v51)
  {
    goto LABEL_26;
  }

  if (!__OFSUB__(v51, v50))
  {
    if (v51 - v50 > 19)
    {
      v80 = v104;
      sub_1B0AFB928(a1, v104, type metadata accessor for MailboxTaskLogger);
      v81 = v101;
      sub_1B0AFB928(a1, v101, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v82 = v107;
      sub_1B03D08AC(v107, v32);
      v83 = v106;
      sub_1B0AFB928(v108, v106, type metadata accessor for FindPendingDownload);
      v84 = sub_1B0E43988();
      v85 = sub_1B0E45908();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v112 = v108;
        *v86 = 68159747;
        *(v86 + 4) = 2;
        *(v86 + 8) = 256;
        v87 = v109;
        v88 = v80;
        v89 = v81 + *(v109 + 20);
        *(v86 + 10) = *v89;
        *(v86 + 11) = 2082;
        v90 = v88 + *(v87 + 20);
        *(v86 + 13) = sub_1B0399D64(*(v90 + 8), *(v90 + 16), &v112);
        *(v86 + 21) = 1040;
        *(v86 + 23) = 2;
        *(v86 + 27) = 512;
        LOWORD(v89) = *(v89 + 24);
        sub_1B0AFB990(v81, type metadata accessor for MailboxTaskLogger);
        *(v86 + 29) = v89;
        *(v86 + 31) = 2160;
        *(v86 + 33) = 0x786F626C69616DLL;
        *(v86 + 41) = 2085;
        v91 = *(v90 + 32);
        LODWORD(v89) = *(v90 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AFB990(v88, type metadata accessor for MailboxTaskLogger);
        v110 = v91;
        v111 = v89;
        v92 = sub_1B0E44BA8();
        v94 = sub_1B0399D64(v92, v93, &v112);

        *(v86 + 43) = v94;
        *(v86 + 51) = 2048;
        v95 = MessageIdentifierSet.count.getter();
        sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v86 + 53) = v95;
        *(v86 + 61) = 2082;
        if (*(v83 + 57))
        {
          v96 = 6581810;
        }

        else
        {
          v96 = 7631665;
        }

        sub_1B0AFB990(v83, type metadata accessor for FindPendingDownload);
        v97 = sub_1B0399D64(v96, 0xE300000000000000, &v112);

        *(v86 + 63) = v97;
        _os_log_impl(&dword_1B0389000, v84, v85, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding %ld, UIDs %{public}s", v86, 0x47u);
        v98 = v108;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v98, -1, -1);
        MEMORY[0x1B272C230](v86, -1, -1);

        v79 = v107;
      }

      else
      {
        sub_1B0398EFC(v32, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AFB990(v81, type metadata accessor for MailboxTaskLogger);

        sub_1B0AFB990(v83, type metadata accessor for FindPendingDownload);
        sub_1B0AFB990(v80, type metadata accessor for MailboxTaskLogger);
        v79 = v82;
      }
    }

    else
    {
      v56 = v103;
      sub_1B0AFB928(a1, v103, type metadata accessor for MailboxTaskLogger);
      sub_1B0AFB928(a1, v20, type metadata accessor for MailboxTaskLogger);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v57 = v102;
      sub_1B03D08AC(v107, v102);
      v58 = v105;
      sub_1B0AFB928(v108, v105, type metadata accessor for FindPendingDownload);
      v59 = sub_1B0E43988();
      v60 = sub_1B0E45908();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v112 = v108;
        *v61 = 68159747;
        *(v61 + 4) = 2;
        *(v61 + 8) = 256;
        v62 = v109;
        v63 = &v20[*(v109 + 20)];
        *(v61 + 10) = *v63;
        *(v61 + 11) = 2082;
        v64 = v57;
        v65 = v56;
        v66 = v56 + *(v62 + 20);
        *(v61 + 13) = sub_1B0399D64(*(v66 + 8), *(v66 + 16), &v112);
        *(v61 + 21) = 1040;
        *(v61 + 23) = 2;
        *(v61 + 27) = 512;
        LOWORD(v63) = *(v63 + 12);
        sub_1B0AFB990(v20, type metadata accessor for MailboxTaskLogger);
        *(v61 + 29) = v63;
        *(v61 + 31) = 2160;
        *(v61 + 33) = 0x786F626C69616DLL;
        *(v61 + 41) = 2085;
        v67 = *(v66 + 32);
        v68 = *(v66 + 40);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AFB990(v65, type metadata accessor for MailboxTaskLogger);
        v110 = v67;
        v111 = v68;
        v69 = sub_1B0E44BA8();
        v71 = sub_1B0399D64(v69, v70, &v112);

        *(v61 + 43) = v71;
        *(v61 + 51) = 2082;
        v72 = MessageIdentifierSet.debugDescription.getter(v100);
        v74 = v73;
        sub_1B0398EFC(v64, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        v75 = sub_1B0399D64(v72, v74, &v112);

        *(v61 + 53) = v75;
        *(v61 + 61) = 2082;
        if (*(v58 + 57))
        {
          v76 = 6581810;
        }

        else
        {
          v76 = 7631665;
        }

        sub_1B0AFB990(v58, type metadata accessor for FindPendingDownload);
        v77 = sub_1B0399D64(v76, 0xE300000000000000, &v112);

        *(v61 + 63) = v77;
        _os_log_impl(&dword_1B0389000, v59, v60, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Excluding UIDs %{public}s, %{public}s", v61, 0x47u);
        v78 = v108;
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v78, -1, -1);
        MEMORY[0x1B272C230](v61, -1, -1);

        v79 = v107;
      }

      else
      {
        sub_1B0AFB990(v20, type metadata accessor for MailboxTaskLogger);

        sub_1B0AFB990(v58, type metadata accessor for FindPendingDownload);
        sub_1B0398EFC(v57, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        sub_1B0AFB990(v56, type metadata accessor for MailboxTaskLogger);
        v79 = v107;
      }
    }

    return sub_1B0398EFC(v79, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1B0AF9048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v158 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v8 = &v145 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v145 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v145 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v153 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v151 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v145 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v155 = &v145 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v145 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](&v145 - v36);
  v38 = &v145 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v160 = &v145 - v44;
  v45 = *v3;
  if (!*v3)
  {
    sub_1B0AFB928(a2, v11, type metadata accessor for MailboxTaskLogger);
    sub_1B0AFB928(a2, v8, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v78 = sub_1B0E43988();
    v79 = sub_1B0E458D8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v159 = a2;
      v160 = v81;
      v163[0] = v81;
      *v80 = 68159235;
      *(v80 + 4) = 2;
      *(v80 + 8) = 256;
      v82 = v158;
      v83 = &v8[*(v158 + 20)];
      *(v80 + 10) = *v83;
      *(v80 + 11) = 2082;
      v84 = a1;
      v85 = v3;
      v86 = &v11[*(v82 + 20)];
      *(v80 + 13) = sub_1B0399D64(*(v86 + 1), *(v86 + 2), v163);
      *(v80 + 21) = 1040;
      *(v80 + 23) = 2;
      *(v80 + 27) = 512;
      LOWORD(v83) = *(v83 + 12);
      sub_1B0AFB990(v8, type metadata accessor for MailboxTaskLogger);
      *(v80 + 29) = v83;
      *(v80 + 31) = 2160;
      *(v80 + 33) = 0x786F626C69616DLL;
      *(v80 + 41) = 2085;
      v87 = *(v86 + 4);
      LODWORD(v83) = *(v86 + 10);
      v3 = v85;
      a1 = v84;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v11, type metadata accessor for MailboxTaskLogger);
      v161 = v87;
      v162 = v83;
      v88 = sub_1B0E44BA8();
      v90 = sub_1B0399D64(v88, v89, v163);

      *(v80 + 43) = v90;
      _os_log_impl(&dword_1B0389000, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v80, 0x33u);
      v91 = v160;
      swift_arrayDestroy();
      a2 = v159;
      MEMORY[0x1B272C230](v91, -1, -1);
      MEMORY[0x1B272C230](v80, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v8, type metadata accessor for MailboxTaskLogger);

      v92 = sub_1B0AFB990(v11, type metadata accessor for MailboxTaskLogger);
    }

    goto LABEL_35;
  }

  v148 = v40;
  v149 = v43;
  v150 = v42;
  v147 = v41;
  v145 = v27;
  v157 = v3;
  v46 = *(v45 + 16);
  v47 = MEMORY[0x1E69E7CC0];
  v159 = a2;
  if (v46)
  {
    v146 = a1;
    v161 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A044(0, v46, 0);
    v47 = v161;
    v48 = (v45 + 32);
    v49 = *(v161 + 2);
    do
    {
      v51 = *v48;
      v48 += 6;
      v50 = v51;
      v161 = v47;
      v52 = *(v47 + 3);
      if (v49 >= v52 >> 1)
      {
        sub_1B0B0A044((v52 > 1), v49 + 1, 1);
        v47 = v161;
      }

      *(v47 + 2) = v49 + 1;
      *&v47[4 * v49++ + 32] = v50;
      --v46;
    }

    while (v46);
    a1 = v146;
    a2 = v159;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v53 = *(v47 + 2);
  if (v53)
  {
    v54 = (v47 + 32);
    do
    {
      v55 = *v54++;
      LODWORD(v163[0]) = v55;
      MessageIdentifierSet.insert(_:)(&v161, v163, v31);
      --v53;
    }

    while (v53);
  }

  v56 = v160;
  sub_1B074BA2C(v38, v160);
  MessageIdentifierSet.ranges.getter(v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v57 = sub_1B0E46E18();
  v58 = sub_1B0E46E28();
  v59 = sub_1B0E46E18();
  v60 = sub_1B0E46E28();
  if (v57 < v59 || v60 < v57)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v61 = sub_1B0E46E18();
  v62 = sub_1B0E46E28();
  sub_1B0398EFC(v30, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v58 < v61 || v62 < v58)
  {
    goto LABEL_39;
  }

  if (__OFSUB__(v58, v57))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if ((v58 - v57 - 21) >= 0xFFFFFFFFFFFFFFECLL)
  {
    v93 = v155;
    sub_1B0AFB928(a2, v155, type metadata accessor for MailboxTaskLogger);
    v94 = v154;
    sub_1B0AFB928(a2, v154, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v95 = v148;
    sub_1B03D08AC(v56, v148);
    v96 = sub_1B0E43988();
    v97 = sub_1B0E458D8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v163[0] = v156;
      *v98 = 68159491;
      LODWORD(v153) = v97;
      *(v98 + 4) = 2;
      *(v98 + 8) = 256;
      v99 = v158;
      v100 = v94 + *(v158 + 20);
      *(v98 + 10) = *v100;
      *(v98 + 11) = 2082;
      v101 = v93 + *(v99 + 20);
      *(v98 + 13) = sub_1B0399D64(*(v101 + 8), *(v101 + 16), v163);
      *(v98 + 21) = 1040;
      *(v98 + 23) = 2;
      *(v98 + 27) = 512;
      LOWORD(v100) = *(v100 + 24);
      sub_1B0AFB990(v94, type metadata accessor for MailboxTaskLogger);
      *(v98 + 29) = v100;
      *(v98 + 31) = 2160;
      *(v98 + 33) = 0x786F626C69616DLL;
      *(v98 + 41) = 2085;
      v102 = v93;
      v103 = *(v101 + 32);
      LODWORD(v100) = *(v101 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v102, type metadata accessor for MailboxTaskLogger);
      v161 = v103;
      v162 = v100;
      v104 = sub_1B0E44BA8();
      v106 = sub_1B0399D64(v104, v105, v163);

      *(v98 + 43) = v106;
      *(v98 + 51) = 2082;
      v107 = MessageIdentifierSet.debugDescription.getter(v31);
      v109 = v108;
      sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v110 = sub_1B0399D64(v107, v109, v163);

      *(v98 + 53) = v110;
      _os_log_impl(&dword_1B0389000, v96, v153, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned UIDs %{public}s to download.", v98, 0x3Du);
      v111 = v156;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v111, -1, -1);
      MEMORY[0x1B272C230](v98, -1, -1);

      a2 = v159;
      v112 = v160;
    }

    else
    {
      sub_1B0AFB990(v94, type metadata accessor for MailboxTaskLogger);

      sub_1B0398EFC(v95, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0AFB990(v93, type metadata accessor for MailboxTaskLogger);
      v112 = v56;
    }

    v92 = sub_1B0398EFC(v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v3 = v157;
    goto LABEL_35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v63 = sub_1B0E46E98();
  v3 = v157;
  if (v63)
  {
    v64 = v152;
    sub_1B0AFB928(a2, v152, type metadata accessor for MailboxTaskLogger);
    v65 = v151;
    sub_1B0AFB928(a2, v151, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v66 = sub_1B0E43988();
    v67 = sub_1B0E458D8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v163[0] = v156;
      *v68 = 68159235;
      *(v68 + 4) = 2;
      *(v68 + 8) = 256;
      v69 = v158;
      v70 = v65 + *(v158 + 20);
      *(v68 + 10) = *v70;
      *(v68 + 11) = 2082;
      v71 = v64;
      v72 = v64 + *(v69 + 20);
      *(v68 + 13) = sub_1B0399D64(*(v72 + 8), *(v72 + 16), v163);
      *(v68 + 21) = 1040;
      *(v68 + 23) = 2;
      *(v68 + 27) = 512;
      LOWORD(v70) = *(v70 + 24);
      sub_1B0AFB990(v65, type metadata accessor for MailboxTaskLogger);
      *(v68 + 29) = v70;
      *(v68 + 31) = 2160;
      *(v68 + 33) = 0x786F626C69616DLL;
      *(v68 + 41) = 2085;
      v73 = *(v72 + 32);
      LODWORD(v72) = *(v72 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0AFB990(v71, type metadata accessor for MailboxTaskLogger);
      v161 = v73;
      v162 = v72;
      v74 = sub_1B0E44BA8();
      v76 = sub_1B0399D64(v74, v75, v163);

      *(v68 + 43) = v76;
      a2 = v159;
      _os_log_impl(&dword_1B0389000, v66, v67, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned no messages to download.", v68, 0x33u);
      v77 = v156;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v77, -1, -1);
      MEMORY[0x1B272C230](v68, -1, -1);
    }

    else
    {
      sub_1B0AFB990(v65, type metadata accessor for MailboxTaskLogger);

      sub_1B0AFB990(v64, type metadata accessor for MailboxTaskLogger);
    }

    v138 = v160;
    goto LABEL_34;
  }

  v113 = v153;
  sub_1B0AFB928(a2, v153, type metadata accessor for MailboxTaskLogger);
  sub_1B0AFB928(a2, v156, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B03D08AC(v56, v149);
  sub_1B03D08AC(v56, v150);
  v114 = v147;
  sub_1B03D08AC(v56, v147);
  v115 = sub_1B0E43988();
  v116 = sub_1B0E458D8();
  if (os_log_type_enabled(v115, v116))
  {
    LODWORD(v155) = v116;
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v163[0] = v118;
    *v117 = 68160003;
    *(v117 + 4) = 2;
    *(v117 + 8) = 256;
    v119 = v158;
    v120 = v156;
    v121 = v156 + *(v158 + 20);
    *(v117 + 10) = *v121;
    *(v117 + 11) = 2082;
    v122 = v113;
    v123 = v113 + *(v119 + 20);
    *(v117 + 13) = sub_1B0399D64(*(v123 + 8), *(v123 + 16), v163);
    *(v117 + 21) = 1040;
    *(v117 + 23) = 2;
    *(v117 + 27) = 512;
    LOWORD(v121) = *(v121 + 24);
    sub_1B0AFB990(v120, type metadata accessor for MailboxTaskLogger);
    *(v117 + 29) = v121;
    *(v117 + 31) = 2160;
    *(v117 + 33) = 0x786F626C69616DLL;
    *(v117 + 41) = 2085;
    v124 = *(v123 + 32);
    LODWORD(v123) = *(v123 + 40);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0AFB990(v122, type metadata accessor for MailboxTaskLogger);
    v161 = v124;
    v162 = v123;
    v125 = sub_1B0E44BA8();
    v127 = sub_1B0399D64(v125, v126, v163);

    *(v117 + 43) = v127;
    *(v117 + 51) = 2048;
    v128 = v149;
    v129 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v128, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v117 + 53) = v129;
    *(v117 + 61) = 1024;
    v130 = v150;
    v131 = sub_1B0B4AAF0();
    if ((v131 & 0x100000000) == 0)
    {
      v132 = v131;
      sub_1B0398EFC(v130, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      *(v117 + 63) = v132;
      *(v117 + 67) = 1024;
      v133 = v145;
      v134 = v147;
      MessageIdentifierSet.ranges.getter(v145);
      v135 = sub_1B0B4A3E8();
      v137 = v136;
      sub_1B0398EFC(v133, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if ((v137 & 1) == 0)
      {
        sub_1B0398EFC(v134, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        *(v117 + 69) = HIDWORD(v135);
        _os_log_impl(&dword_1B0389000, v115, v155, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Persistence returned %ld (min:  %u, max: %u) messages to download.", v117, 0x49u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v118, -1, -1);
        MEMORY[0x1B272C230](v117, -1, -1);

        v92 = sub_1B0398EFC(v160, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        a2 = v159;
        v3 = v157;
        goto LABEL_35;
      }

LABEL_42:
      __break(1u);
      return;
    }

LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_1B0398EFC(v114, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v150, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0398EFC(v149, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0AFB990(v156, type metadata accessor for MailboxTaskLogger);

  sub_1B0AFB990(v113, type metadata accessor for MailboxTaskLogger);
  v138 = v56;
LABEL_34:
  v92 = sub_1B0398EFC(v138, &unk_1EB6E1AF0, &unk_1B0E9AF40);
LABEL_35:
  v139 = *(v3 + 32);
  v140 = *(v3 + 40);
  MEMORY[0x1EEE9AC00](v92);
  *(&v145 - 2) = v3;
  *(&v145 - 1) = a2;
  if (*(a1 + 192) == 1)
  {
    v142 = *(a1 + 176);
    v141 = *(a1 + 184);
    v161 = *(a1 + 168);
    v143 = v161;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B2BE00(&v161, v139, v140, 0, sub_1B0AFB7DC);
    sub_1B03BB638(v143, v142, v141, 1);
    v144 = v161;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v144;
    *(a1 + 192) = 1;
  }
}

void sub_1B0AFA12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v139 = a3;
  v5 = type metadata accessor for MailboxTaskLogger(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v133 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v132 = &v122 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v134 = &v122 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v122 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v136 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v137 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v140 = &v122 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v122 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v122 - v30;
  v32 = type metadata accessor for MessagesPendingDownload();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  MEMORY[0x1EEE9AC00](v34);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v122 - v38;
  v40 = *a2;
  if (*a2)
  {
    v123 = v10;
    v124 = v5;
    v128 = v37;
    v130 = v36;
    v41 = *(a2 + 57);
    v42 = a1 + *(type metadata accessor for MailboxSyncState() + 52);
    v43 = v42 + *(type metadata accessor for PendingPersistenceUpdates() + 28);
    v44 = v43;
    v127 = v41;
    if (v41 == 1)
    {
      v44 = v43 + *(type metadata accessor for MessagesPendingDownloadPerPass() + 20);
    }

    v129 = v43;
    v138 = v31;
    v45 = sub_1B0AFB928(v44, v39, type metadata accessor for MessagesPendingDownload);
    MEMORY[0x1EEE9AC00](v45);
    v131 = v39;
    *(&v122 - 2) = v39;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v125 = v40;
    v46 = sub_1B0B1578C(sub_1B0AFB7E4, (&v122 - 4), v40);
    v47 = *(v46 + 16);
    v48 = MEMORY[0x1E69E7CC0];
    v135 = a1;
    v126 = v46;
    if (v47)
    {
      v49 = v46;
      v141 = MEMORY[0x1E69E7CC0];
      sub_1B0B0A044(0, v47, 0);
      v48 = v141;
      v50 = (v49 + 32);
      v51 = *(v141 + 16);
      do
      {
        v53 = *v50;
        v50 += 6;
        v52 = v53;
        v141 = v48;
        v54 = *(v48 + 24);
        if (v51 >= v54 >> 1)
        {
          sub_1B0B0A044((v54 > 1), v51 + 1, 1);
          v48 = v141;
        }

        *(v48 + 16) = v51 + 1;
        *(v48 + 4 * v51++ + 32) = v52;
        --v47;
      }

      while (v47);
    }

    sub_1B03D06F8();
    sub_1B0E46EE8();
    v55 = *(v48 + 16);
    v56 = v140;
    if (v55)
    {
      v57 = (v48 + 32);
      do
      {
        v58 = *v57++;
        LODWORD(v143[0]) = v58;
        MessageIdentifierSet.insert(_:)(&v141, v143, v19);
        --v55;
      }

      while (v55);
    }

    v59 = v138;
    sub_1B074BA2C(v28, v138);
    MessageIdentifierSet.ranges.getter(v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v60 = sub_1B0E46E18();
    v61 = sub_1B0E46E28();
    v62 = sub_1B0E46E18();
    v63 = sub_1B0E46E28();
    if (v60 < v62 || v63 < v60)
    {
      __break(1u);
    }

    else
    {
      v64 = sub_1B0E46E18();
      v65 = sub_1B0E46E28();
      sub_1B0398EFC(v18, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v61 >= v64 && v65 >= v61)
      {
        if (!__OFSUB__(v61, v60))
        {
          if ((v61 - v60 - 21) >= 0xFFFFFFFFFFFFFFECLL)
          {
            v88 = v139;
            v89 = v134;
            sub_1B0AFB928(v139, v134, type metadata accessor for MailboxTaskLogger);
            v90 = v132;
            sub_1B0AFB928(v88, v132, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B03D08AC(v59, v56);
            v91 = v137;
            sub_1B03D08AC(v59, v137);
            v92 = v125;
            swift_bridgeObjectRetain_n();
            v93 = sub_1B0E43988();
            v94 = sub_1B0E45908();
            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v143[0] = v139;
              *v95 = 68160003;
              *(v95 + 4) = 2;
              *(v95 + 8) = 256;
              v96 = v124;
              v97 = *(v124 + 20);
              LODWORD(v136) = v94;
              v98 = v90 + v97;
              *(v95 + 10) = *(v90 + v97);
              *(v95 + 11) = 2082;
              v99 = v90;
              v100 = v89;
              v101 = v89 + *(v96 + 20);
              *(v95 + 13) = sub_1B0399D64(*(v101 + 8), *(v101 + 16), v143);
              *(v95 + 21) = 1040;
              *(v95 + 23) = 2;
              *(v95 + 27) = 512;
              v102 = *(v98 + 24);
              sub_1B0AFB990(v99, type metadata accessor for MailboxTaskLogger);
              *(v95 + 29) = v102;
              *(v95 + 31) = 2160;
              *(v95 + 33) = 0x786F626C69616DLL;
              *(v95 + 41) = 2085;
              v103 = *(v101 + 32);
              LODWORD(v101) = *(v101 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AFB990(v100, type metadata accessor for MailboxTaskLogger);
              v141 = v103;
              v142 = v101;
              v104 = sub_1B0E44BA8();
              v106 = sub_1B0399D64(v104, v105, v143);

              *(v95 + 43) = v106;
              *(v95 + 51) = 2082;
              v107 = MessageIdentifierSet.debugDescription.getter(v19);
              v109 = v108;
              sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v110 = sub_1B0399D64(v107, v109, v143);

              *(v95 + 53) = v110;
              *(v95 + 61) = 2048;
              v111 = v137;
              v112 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v111, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v95 + 63) = v112;
              *(v95 + 71) = 2048;
              v113 = *(v92 + 16);

              *(v95 + 73) = v113;

              _os_log_impl(&dword_1B0389000, v93, v136, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %{public}s (%ld out of %ld) to download.", v95, 0x51u);
              v114 = v139;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v114, -1, -1);
              v115 = v95;
              v59 = v138;
              MEMORY[0x1B272C230](v115, -1, -1);
            }

            else
            {

              sub_1B0398EFC(v91, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v90, type metadata accessor for MailboxTaskLogger);

              sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v89, type metadata accessor for MailboxTaskLogger);
            }

            v116 = v129;
            if (!v127)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v66 = v139;
            v67 = v123;
            sub_1B0AFB928(v139, v123, type metadata accessor for MailboxTaskLogger);
            v68 = v133;
            sub_1B0AFB928(v66, v133, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v69 = v136;
            sub_1B03D08AC(v59, v136);
            v70 = v125;
            swift_bridgeObjectRetain_n();
            v71 = sub_1B0E43988();
            v72 = sub_1B0E45908();
            if (os_log_type_enabled(v71, v72))
            {
              v73 = v68;
              v74 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v143[0] = v140;
              *v74 = 68159747;
              *(v74 + 4) = 2;
              *(v74 + 8) = 256;
              v75 = v124;
              v76 = *(v124 + 20);
              LODWORD(v139) = v72;
              v77 = v73 + v76;
              *(v74 + 10) = *(v73 + v76);
              *(v74 + 11) = 2082;
              v78 = v67 + *(v75 + 20);
              *(v74 + 13) = sub_1B0399D64(*(v78 + 8), *(v78 + 16), v143);
              *(v74 + 21) = 1040;
              *(v74 + 23) = 2;
              *(v74 + 27) = 512;
              v79 = *(v77 + 24);
              sub_1B0AFB990(v73, type metadata accessor for MailboxTaskLogger);
              *(v74 + 29) = v79;
              *(v74 + 31) = 2160;
              *(v74 + 33) = 0x786F626C69616DLL;
              *(v74 + 41) = 2085;
              v80 = *(v78 + 32);
              LODWORD(v78) = *(v78 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0AFB990(v67, type metadata accessor for MailboxTaskLogger);
              v141 = v80;
              v142 = v78;
              v59 = v138;
              v81 = sub_1B0E44BA8();
              v83 = sub_1B0399D64(v81, v82, v143);

              *(v74 + 43) = v83;
              *(v74 + 51) = 2048;
              v84 = v136;
              v85 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v84, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v74 + 53) = v85;
              *(v74 + 61) = 2048;
              v86 = *(v70 + 16);

              *(v74 + 63) = v86;

              _os_log_impl(&dword_1B0389000, v71, v139, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Adding %ld messages (out of %ld) to download.", v74, 0x47u);
              v87 = v140;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v87, -1, -1);
              MEMORY[0x1B272C230](v74, -1, -1);
            }

            else
            {

              sub_1B0398EFC(v69, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              sub_1B0AFB990(v68, type metadata accessor for MailboxTaskLogger);

              sub_1B0AFB990(v67, type metadata accessor for MailboxTaskLogger);
            }

            v116 = v129;
            if (!v127)
            {
LABEL_24:
              v117 = v128;
              sub_1B0AFB928(v116, v128, type metadata accessor for MessagesPendingDownload);
              sub_1B0B41F0C(v126);

              sub_1B0ABC908(v117, v116);
              v118 = v130;
              sub_1B0AFB928(v116, v130, type metadata accessor for MessagesPendingDownload);
              sub_1B0B420DC();
              sub_1B0ABC908(v118, v116);

              goto LABEL_28;
            }
          }

          v119 = type metadata accessor for MessagesPendingDownloadPerPass();
          v120 = v128;
          sub_1B0AFB928(v116 + *(v119 + 20), v128, type metadata accessor for MessagesPendingDownload);
          sub_1B0B41F0C(v126);

          sub_1B0ABC908(v120, v116 + *(v119 + 20));
          v121 = v130;
          sub_1B0AFB928(v116 + *(v119 + 20), v130, type metadata accessor for MessagesPendingDownload);
          sub_1B0B420DC();
          sub_1B0ABC908(v121, v116 + *(v119 + 20));
          LOBYTE(v119) = sub_1B0E46A78();

          if ((v119 & 1) == 0)
          {
LABEL_29:
            sub_1B0398EFC(v59, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0AFB990(v131, type metadata accessor for MessagesPendingDownload);
            return;
          }

LABEL_28:
          sub_1B03BDE74(0xAu);
          sub_1B03BDD7C(&v141, 10);
          goto LABEL_29;
        }

LABEL_33:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_33;
  }
}

uint64_t sub_1B0AFAE6C(int *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = *(type metadata accessor for MessagesPendingDownload() + 20);
  v17 = v8;
  if (MessageIdentifierSet.contains(_:)(&v17, v4))
  {
    v10 = 0;
  }

  else
  {
    v11 = *a2;
    v12 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B24198(v12);
    v16 = v8;
    v13 = MessageIdentifierSet.contains(_:)(&v16, v4);
    sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v10 = v13 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1B0AFAF8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AFAFE0()
{
  if (qword_1EB6DD9A0 != -1)
  {
    swift_once();
  }

  return _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
}

uint64_t sub_1B0AFB04C()
{
  BYTE8(v2) = 0;
  *&v2 = *(v0 + 57);
  sub_1B0E46508();
  return *(&v2 + 1);
}

unint64_t sub_1B0AFB0A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  result = sub_1B0A9F14C(a1, a2);
  if (result)
  {
    v8 = 0xF000000000000007;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E35F8, &unk_1B0EC4DC0);
    v10 = swift_allocBox();
    v12 = v11;
    v13 = v9[16];
    v14 = v11 + v9[20];
    v15 = v9[24];
    v16 = *(v4 + 16);
    *v11 = *(v4 + 8);
    *(v11 + 8) = v16;
    *(v11 + 16) = *(v4 + 57);
    sub_1B03D08AC(v4 + *(a3 + 36), v11 + v13);
    v17 = (v4 + *(a3 + 40));
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 8);
    *v14 = v18;
    *(v14 + 8) = v17;
    *(v12 + v15) = 563;
    v8 = v10 | 0x4000000000000004;
    result = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  *a4 = v8;
  return result;
}

uint64_t sub_1B0AFB1C4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFB244()
{
  v1 = *(v0 + 12);
  MEMORY[0x1B2728D70](*(v0 + 8) | (*(v0 + 8) << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0AFB2B8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1 | (v1 << 32));
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFB334(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 0x100000000;
  if (*(a1 + 12))
  {
    v4 = 0x100000000;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 12))
  {
    v3 = 0;
  }

  return sub_1B0AFB370(*a1, v4 | *(a1 + 8), *a2, v3 | *(a2 + 8));
}

uint64_t sub_1B0AFB370(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4 || (v4 = *(result + 16), v4 != *(a3 + 16)))
  {
LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    if ((a2 & 0x100000000) != 0)
    {
      v8 = 6581810;
    }

    else
    {
      v8 = 7631665;
    }

    if ((a4 & 0x100000000) != 0)
    {
      v9 = 6581810;
    }

    else
    {
      v9 = 7631665;
    }

    if (v8 == v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_1B0E46A78();
    }

    swift_bridgeObjectRelease_n();
    return v10 & 1;
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      goto LABEL_19;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFB43C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_1B0AFB484(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B0AFB500()
{
  sub_1B0AFB64C();
  if (v0 <= 0x3F)
  {
    sub_1B043CB9C(319, &qword_1EB6DAD90, sub_1B0451ED8, &type metadata for SyncStep, MEMORY[0x1E69E64E8]);
    if (v1 <= 0x3F)
    {
      sub_1B043CB9C(319, &qword_1EB6DE3E0, sub_1B041C1E8, &type metadata for UID, type metadata accessor for MessageIdentifierSet);
      if (v2 <= 0x3F)
      {
        sub_1B07F2F30();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B0AFB64C()
{
  if (!qword_1EB6DB360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E3600, &unk_1B0EA2060);
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB360);
    }
  }
}

unint64_t sub_1B0AFB6B0()
{
  result = qword_1EB6DD998;
  if (!qword_1EB6DD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD998);
  }

  return result;
}

unint64_t sub_1B0AFB704(uint64_t a1)
{
  result = sub_1B0AFB72C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B0AFB72C()
{
  result = qword_1EB6DD990;
  if (!qword_1EB6DD990)
  {
    type metadata accessor for FindPendingDownload();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD990);
  }

  return result;
}

unint64_t sub_1B0AFB788()
{
  result = qword_1EB6DD9A8;
  if (!qword_1EB6DD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DD9A8);
  }

  return result;
}

uint64_t sub_1B0AFB804(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0AEBEB4(a2, a3, a4);
  if ((result & 1) != 0 && !*v4 && ((a1 >> 59) & 0x1E | (a1 >> 2) & 1) == 12)
  {
    v8 = a1 & 0xFFFFFFFFFFFFFFBLL;
    if (*(v4 + 16) == *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
      result = sub_1B04520BC(*(v4 + 8), *(v8 + 16));
      if (result)
      {
        if (*(v4 + 57))
        {
          v11 = 6581810;
        }

        else
        {
          v11 = 7631665;
        }

        if (v9)
        {
          v12 = 6581810;
        }

        else
        {
          v12 = 7631665;
        }

        if (v11 == v12)
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          result = swift_bridgeObjectRelease_n();
LABEL_18:
          *v4 = v10;
          return result;
        }

        v13 = sub_1B0E46A78();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        result = swift_bridgeObjectRelease_n();
        if (v13)
        {
          goto LABEL_18;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B0AFB928(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0AFB990(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0AFBA04(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 64;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(v1 + 48) + ((v8 << 10) | (16 * v9));
      v11 = *v10;
      v12 = *(v10 + 8);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03AB2E0(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1B0AFBB0C(uint64_t a1)
{
  v2 = type metadata accessor for MoveAndCopyMessages.CommandID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1B0B0D400(*(a1 + 48) + *(v3 + 72) * (v19 | (v18 << 6)), v12, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B0D530(v12, v6);
    sub_1B0B02C9C(v9, v6);
    sub_1B0B0D468(v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(a1 + 56 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0AFBD00(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1B03BDD7C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1B0AFBDDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBE98(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBF54(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFBFE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_1B0B01BA4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_1B0AFC078(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0AFF1F4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFC16C(uint64_t a1)
{
  v2 = v1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v52 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v58 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v52 - v13;
  v14 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *v2;
  v23 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v25 = v22[3] >> 1, v25 < v23))
  {
    v22 = sub_1B0B00400(isUniquelyReferenced_nonNull_native, v23, 1, v22, &qword_1EB6E4240, &unk_1B0EC5120, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v25 = v22[3] >> 1;
  }

  v26 = v22[2];
  v27 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = *(v4 + 72);
  v29 = v25 - v26;
  v30 = v22 + v27 + v28 * v26;
  sub_1B0B0D400(a1, v17, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  v31 = sub_1B0ADF500(v21, v30, v29);
  result = sub_1B0B0D468(a1, type metadata accessor for MessageBatches.OtherUIDsBatchSequence);
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (!v31)
  {
LABEL_8:
    if (v31 != v29)
    {
      result = sub_1B0B0D468(v21, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
LABEL_10:
      *v2 = v22;
      return result;
    }

LABEL_12:
    v36 = v22[2];
    v37 = v61;
    sub_1B0B3FBB4(v61);
    v38 = v58;
    sub_1B0A1C8C0(v37, v58);
    v54 = *(v4 + 48);
    for (i = v54(v38, 1, v60); i != 1; i = v54(v38, 1, v60))
    {
      sub_1B0398EFC(v38, &unk_1EB6E3670, &unk_1B0E9B260);
      v41 = v22[3];
      v42 = v41 >> 1;
      if ((v41 >> 1) < v36 + 1)
      {
        v22 = sub_1B0B00400(v41 > 1, v36 + 1, 1, v22, &qword_1EB6E4240, &unk_1B0EC5120, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v42 = v22[3] >> 1;
      }

      v43 = v59;
      sub_1B0A1C8C0(v61, v59);
      v44 = v54(v43, 1, v60);
      v56 = v36;
      if (v44 == 1)
      {
        v45 = v59;
LABEL_26:
        sub_1B0398EFC(v45, &unk_1EB6E3670, &unk_1B0E9B260);
        v40 = v56;
      }

      else
      {
        if (v36 <= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v36;
        }

        v53 = v46;
        v55 = v22 + v27 + v28 * v36;
        v47 = v57;
        v45 = v59;
        while (1)
        {
          sub_1B03C60A4(v45, v47, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v48 = v56;
          if (v53 == v56)
          {
            break;
          }

          sub_1B0398EFC(v61, &unk_1EB6E3670, &unk_1B0E9B260);
          v49 = v55;
          sub_1B03C60A4(v47, v55, &unk_1EB6E26C0, &unk_1B0E9DE10);
          v56 = v48 + 1;
          v50 = v61;
          sub_1B0B3FBB4(v61);
          v45 = v59;
          sub_1B0A1C8C0(v50, v59);
          v51 = v54(v45, 1, v60);
          v55 = v49 + v28;
          if (v51 == 1)
          {
            goto LABEL_26;
          }
        }

        sub_1B0398EFC(v47, &unk_1EB6E26C0, &unk_1B0E9DE10);
        v40 = v53;
      }

      v36 = v40;
      v22[2] = v40;
      v38 = v58;
      sub_1B0A1C8C0(v61, v58);
    }

    sub_1B0398EFC(v61, &unk_1EB6E3670, &unk_1B0E9B260);
    sub_1B0B0D468(v21, type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator);
    result = sub_1B0398EFC(v38, &unk_1EB6E3670, &unk_1B0E9B260);
    goto LABEL_10;
  }

  v33 = v22[2];
  v34 = __OFADD__(v33, v31);
  v35 = v33 + v31;
  if (!v34)
  {
    v22[2] = v35;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFC708(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0B0007C(result, v11, 1, v3, &qword_1EB6E41A0, &unk_1B0EF9FA0);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFC818(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1B0440EC4(result, v12, 1, v3, &qword_1EB6E4418, &qword_1B0EC76A0);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFC914(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B0B005E8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t Flags.Label.flags.getter(unsigned __int8 a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  v21 = v1;
  v22 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v5 = Flag.flagged.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = sub_1B0B0B038(inited);
  swift_setDeallocating();
  sub_1B0B0B218(inited + 32);
  v20 = v8;
  if (a1 > 3u)
  {
    if (a1 != 6)
    {
      if (a1 == 5)
      {
        goto LABEL_13;
      }

      if (a1 != 4)
      {
        goto LABEL_12;
      }
    }

LABEL_10:
    v10 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v19, v11, v12);

    if (a1 - 5 >= 2)
    {
      if (a1 == 2)
      {
        return v20;
      }

      goto LABEL_12;
    }

LABEL_13:
    v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v17 = *v16;
    v18 = v16[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v19, v17, v18);

    return v20;
  }

  if (a1 == 1)
  {
    return v20;
  }

  if (a1 == 2)
  {
    goto LABEL_10;
  }

LABEL_12:
  v13 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v14 = *v13;
  v15 = v13[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v19, v14, v15);

  if (a1 >= 5u)
  {
    goto LABEL_13;
  }

  return v20;
}

unint64_t sub_1B0AFCB98(unsigned __int8 a1)
{
  v2 = 0x5000000000000004;
  v3 = 0x5000000000000004;
  if ((a1 - 2) <= 4u)
  {
    v3 = qword_1B0EC5308[(a1 - 2)];
  }

  v4 = swift_allocObject();
  v5 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v7 = *v5;
  v6 = *(v5 + 1);
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = 0x2000000000000004;
  if (a1 <= 6u)
  {
    v8 = qword_1B0EC5330[a1];
  }

  v9 = v3 | v4;
  v10 = swift_allocObject();
  v11 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v13 = *v11;
  v12 = *(v11 + 1);
  *(v10 + 16) = v13;
  *(v10 + 24) = v12;
  v14 = v8 | v10;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if (a1 >= 5u)
  {
    v2 = 0x2000000000000004;
  }

  v15 = swift_allocObject();
  v16 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v18 = *v16;
  v17 = *(v16 + 1);
  *(v15 + 16) = v18;
  *(v15 + 24) = v17;
  v19 = v2 | v15;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EA8, &unk_1B0EF9FB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B0EC4E20;
  *(v21 + 32) = 0xF00000000000001CLL;
  *(v21 + 40) = v9;
  *(v21 + 48) = v14;
  *(v21 + 56) = v19;
  *(v20 + 16) = v21;
  return v20 | 0xC000000000000000;
}

uint64_t FlagEncoder.debugDescription.getter()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1B0AFF1F4(0, 14, 0, MEMORY[0x1E69E7CC0]);
  v4 = v3;
  v47 = v3;
  v5 = v1[1];
  if (v5)
  {
    v6 = *v1;
    v7 = *(v3 + 2);
    v8 = *(v3 + 3);
    v9 = v1[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v7 >= v8 >> 1)
    {
      v4 = sub_1B0AFF1F4((v8 > 1), v7 + 1, 1, v4);
    }

    *(v4 + 2) = v7 + 1;
    v10 = &v4[16 * v7];
    *(v10 + 4) = v6;
    *(v10 + 5) = v5;
    v47 = v4;
  }

  v11 = v1[3];
  if (v11)
  {
    v12 = v1[2];
    v13 = *(v4 + 2);
    v14 = *(v4 + 3);
    v15 = v1[3];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v13 >= v14 >> 1)
    {
      v4 = sub_1B0AFF1F4((v14 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v16 = &v4[16 * v13];
    *(v16 + 4) = v12;
    *(v16 + 5) = v11;
    v47 = v4;
  }

  v17 = v1[4];
  v18 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v18);
  v19 = v1[5];
  v20 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v20);
  v21 = v1[7];
  v22 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v22);
  v23 = v1[8];
  v24 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v24);
  v25 = v1[9];
  v26 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0AFC078(v26);
  v27 = v1[12];
  v28 = v47;
  if (v27)
  {
    v29 = v1[11];
    v30 = v1[12];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1B0AFF1F4(0, *(v47 + 2) + 1, 1, v47);
    }

    v32 = *(v28 + 2);
    v31 = *(v28 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v28 = sub_1B0AFF1F4((v31 > 1), v32 + 1, 1, v28);
    }

    *(v28 + 2) = v33;
    v34 = &v28[16 * v32];
    *(v34 + 4) = v29;
    *(v34 + 5) = v27;
  }

  else
  {
    v33 = *(v47 + 2);
    if (!v33)
    {
      goto LABEL_20;
    }
  }

  sub_1B041D32C(0, v33, 0);
  v35 = (v28 + 40);
  do
  {
    v37 = *(v35 - 1);
    v36 = *v35;
    v39 = *(v2 + 16);
    v38 = *(v2 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if (v39 >= v38 >> 1)
    {
      sub_1B041D32C((v38 > 1), v39 + 1, 1);
    }

    *(v2 + 16) = v39 + 1;
    v40 = v2 + 16 * v39;
    *(v40 + 32) = v37;
    *(v40 + 40) = v36;
    v35 += 2;
    --v33;
  }

  while (v33);
LABEL_20:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v41 = sub_1B0E448E8();
  v43 = v42;

  MEMORY[0x1B2726E80](v41, v43);

  MEMORY[0x1B2726E80](0x3A73726F6C6F6320, 0xE900000000000020);
  if (v1[10])
  {
    v44 = 7562617;
  }

  else
  {
    v44 = 28526;
  }

  if (v1[10])
  {
    v45 = 0xE300000000000000;
  }

  else
  {
    v45 = 0xE200000000000000;
  }

  MEMORY[0x1B2726E80](v44, v45);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 123;
}

uint64_t FlagDecoder.debugDescription.getter(uint64_t a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1B0AFF0E8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1B0AFF0E8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6564726177726F46;
  *(v5 + 5) = 0xE900000000000064;
  if ((a1 & 0x100) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B0AFF0E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463657269646552;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  if ((a1 & 0x10000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1B0AFF0E8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1802401098;
    *(v11 + 5) = 0xE400000000000000;
    if ((a1 & 0x1000000) == 0)
    {
LABEL_14:
      if ((a1 & 0x100000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 0x1000000) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1B0AFF0E8((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  strcpy(v14 + 32, "ColoredLabel");
  v14[45] = 0;
  *(v14 + 23) = -5120;
  if ((a1 & 0x100000000) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B0AFF0E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_1B0AFF0E8((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    strcpy(v17 + 32, "iCloudCleanup");
    *(v17 + 23) = -4864;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B03B11C4();
  v18 = sub_1B0E448E8();
  v20 = v19;

  MEMORY[0x1B2726E80](v18, v20);

  MEMORY[0x1B2726E80](125, 0xE100000000000000);
  return 0x7374726F70707573;
}

uint64_t sub_1B0AFD478()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return FlagDecoder.debugDescription.getter(v4 | *v0 | v3 | v2 | v1);
}

__n128 FlagEncoder.init(permanentFlags:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B0B0B26C(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1B0AFD53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s13IMAP2Behavior11FlagEncoderV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t FlagDecoder.init(permanentFlags:)(uint64_t a1)
{
  v1 = sub_1B0B0CE64(a1);

  return v1 & 0x101010101;
}

uint64_t sub_1B0AFD5E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a3 + 16))
  {
    return a4 & 1;
  }

  v6 = *(a3 + 40);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](0);
  sub_1B0E44BB8();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  v7 = sub_1B0E46CB8();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return a4 & 1;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    if (!v11[1])
    {
      goto LABEL_4;
    }

    v12 = *v11;
    v13 = sub_1B0E44BB8();
    v15 = v14;
    if (v13 == sub_1B0E44BB8() && v15 == v16)
    {
      break;
    }

    v18 = sub_1B0E46A78();

    if (v18)
    {
      goto LABEL_13;
    }

LABEL_4:
    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return a4 & 1;
    }
  }

LABEL_13:
  a4 = 1;
  return a4 & 1;
}

uint64_t *Flag.Keyword.iCloudCleanup.unsafeMutableAddressor()
{
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  return &static Flag.Keyword.iCloudCleanup;
}

unint64_t FlagDecoder.decode(_:)(uint64_t a1, uint64_t a2)
{
  v4 = Flag.seen.unsafeMutableAddressor();
  v5 = *v4;
  v6 = v4[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = sub_1B0A92834(v5, v6, a1);

  v8 = Flag.deleted.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = sub_1B0A92834(v9, v10, a1);

  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v69 = sub_1B0A92834(v13, v14, a1);

  v15 = Flag.draft.unsafeMutableAddressor();
  v16 = *v15;
  v17 = v15[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v18 = sub_1B0A92834(v16, v17, a1);

  if ((a2 & 1) == 0)
  {
    v22 = 0x200000000;
    if ((a2 & 0x100) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v31 = Flag.Keyword.unregistered_redirected.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v32) = sub_1B0A92834(v32, v33, a1);

    if (v32)
    {
      v26 = 0x10000000000;
    }

    else
    {
      v26 = 0;
    }

    if ((a2 & 0x10000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v30 = 0x3000000000000;
    goto LABEL_15;
  }

  v19 = Flag.Keyword.forwarded.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v20) = sub_1B0A92834(v20, v21, a1);

  v22 = 0x100000000;
  if ((v20 & 1) == 0)
  {
    v23 = Flag.Keyword.unregistered_forwarded.unsafeMutableAddressor();
    v24 = *v23;
    v25 = v23[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v24) = sub_1B0A92834(v24, v25, a1);

    if ((v24 & 1) == 0)
    {
      v22 = 0;
    }
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  v26 = 0x20000000000;
  if ((a2 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v27 = Flag.Keyword.notJunk.unsafeMutableAddressor();
  v28 = *v27;
  v29 = v27[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v28) = sub_1B0A92834(v28, v29, a1);

  if (v28)
  {
LABEL_8:
    v30 = 0x2000000000000;
    goto LABEL_15;
  }

  v51 = Flag.Keyword.junk.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v52) = sub_1B0A92834(v52, v53, a1);

  if (v52)
  {
    v30 = 0x1000000000000;
  }

  else
  {
    v61 = Flag.Keyword.unregistered_notJunk.unsafeMutableAddressor();
    v62 = *v61;
    v63 = v61[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v62) = sub_1B0A92834(v62, v63, a1);

    if (v62)
    {
      goto LABEL_8;
    }

    v64 = Flag.Keyword.unregistered_junk.unsafeMutableAddressor();
    v65 = *v64;
    v66 = v64[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v65) = sub_1B0A92834(v65, v66, a1);

    if (v65)
    {
      v30 = 0x1000000000000;
    }

    else
    {
      v30 = 0;
    }
  }

LABEL_15:
  v34 = Flag.flagged.unsafeMutableAddressor();
  v35 = *v34;
  v36 = v34[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v37 = sub_1B0A92834(v35, v36, a1);

  if ((a2 & 0x1000000) == 0)
  {
    if (v37)
    {
      v38 = 0x800000000000000;
    }

    else
    {
      v38 = 0;
    }

    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v37)
  {
    v67 = v18;
    v68 = v11;
    v39 = v7;
    v40 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
    v41 = *v40;
    v42 = v40[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = sub_1B0A92834(v41, v42, a1);

    v44 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
    v45 = *v44;
    v46 = v44[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v47 = sub_1B0A92834(v45, v46, a1);

    v48 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
    v49 = *v48;
    v50 = v48[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    LOBYTE(v49) = sub_1B0A92834(v49, v50, a1);

    if (v49)
    {
      v7 = v39;
      v11 = v68;
      if (v47)
      {
        v18 = v67;
        if ((v43 & 1) == 0)
        {
          v38 = 0x700000000000000;
          if ((a2 & 0x100000000) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_30;
        }

LABEL_55:
        v38 = 0x100000000000000;
        if ((a2 & 0x100000000) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      v58 = (v43 & 1) == 0;
      v59 = 0x500000000000000;
      v60 = 0x600000000000000;
LABEL_47:
      if (v58)
      {
        v38 = v59;
      }

      else
      {
        v38 = v60;
      }

      v18 = v67;
      if ((a2 & 0x100000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    v7 = v39;
    v11 = v68;
    if (v47)
    {
      v58 = (v43 & 1) == 0;
      v59 = 0x300000000000000;
      v60 = 0x400000000000000;
      goto LABEL_47;
    }

    v18 = v67;
    if ((v43 & 1) == 0)
    {
      goto LABEL_55;
    }

    v38 = 0x200000000000000;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v38 = 0;
    if ((a2 & 0x100000000) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_30:
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  sub_1B0A92834(static Flag.Keyword.iCloudCleanup, unk_1EB737E80, a1);
LABEL_33:
  v54 = 256;
  if ((v11 & 1) == 0)
  {
    v54 = 0;
  }

  v55 = 0x10000;
  if ((v69 & 1) == 0)
  {
    v55 = 0;
  }

  v56 = 0x1000000;
  if ((v18 & 1) == 0)
  {
    v56 = 0;
  }

  return v54 & 0xFFFFFFFFFFFFFFFELL | ((v7 & 1) == 0) | v55 | v56 | v22 | v26 | v30 | v38;
}

uint64_t FlagUpdatesToBeSent.add.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FlagUpdatesToBeSent.remove.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t static FlagUpdatesToBeSent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1B0AFE1EC(a1, a3) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0AFE1EC(a2, a4);
}

uint64_t sub_1B0AFDD30(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
LABEL_7:
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(a2 + 40);
    sub_1B0E46C28();
    MEMORY[0x1B2728D70](v15 | (v15 << 32));
    result = sub_1B0E46CB8();
    v17 = -1 << *(a2 + 32);
    v18 = result & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      if ((v20[2] | (v20[2] << 32)) == (v15 | (v15 << 32)))
      {
        v21 = *v20;
        v22 = *(*v20 + 16);
        if (v22 == *(v14 + 16))
        {
          break;
        }
      }

LABEL_16:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

    v23 = (v21 + 32);
    if (v22)
    {
      v24 = v21 == v14;
    }

    else
    {
      v24 = 1;
    }

    if (!v24)
    {
      v25 = (v14 + 32);
      while (v22)
      {
        if (*v23 != *v25)
        {
          goto LABEL_16;
        }

        ++v23;
        ++v25;
        if (!--v22)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B0AFDF14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v38 = result + 56;
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
  v39 = v7;
  v40 = result;
  v47 = a2 + 56;
  if (!v6)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v9 = __clz(__rbit64(v6));
    v42 = (v6 - 1) & v6;
LABEL_13:
    v41 = v3;
    v12 = *(result + 48) + 24 * (v9 | (v3 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = *(v12 + 16);
    v17 = *(v12 + 20);
    v18 = *(v12 + 22);
    v19 = *(v2 + 40);
    sub_1B0E46C28();
    v44 = v14;
    v48 = v16;
    v50 = v18;
    v20 = v43 & 0xFF00000000000000 | v16 | (v17 << 32) | (v18 << 48);
    GmailLabel.hash(into:)(v51, v13, v14 | (v15 << 32), v20);
    v21 = sub_1B0E46CB8();
    v22 = -1 << *(v2 + 32);
    v23 = v21 & ~v22;
    if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return 0;
    }

    v43 = v20;
    v24 = ~v22;
    v25 = v15 - v44;

    v49 = v13;
    swift_beginAccess();
    v45 = (v18 | (v17 << 8)) + v44;
    v46 = v17;
    v26 = v17;
    while (1)
    {
      v27 = *(v2 + 48) + 24 * v23;
      v28 = *(v27 + 8);
      v29 = *(v27 + 12);
      if (v29 - v28 != v25)
      {
        goto LABEL_15;
      }

      v30 = v2;
      v31 = *v27;
      v32 = *(v27 + 20);
      v33 = *(v27 + 22);
      v34 = *(v27 + 16) == v48 && v32 == v26;
      v35 = v34 && v33 == v50;
      if (v35 && v31 == v49)
      {
        break;
      }

      swift_beginAccess();
      v37 = memcmp((*(v31 + 24) + (v33 | (v32 << 8)) + v28), (*(v49 + 24) + v45), v29 - v28);
      v26 = v46;
      v8 = v47;
      v2 = v30;
      if (!v37)
      {

        v7 = v39;
        result = v40;
        goto LABEL_30;
      }

LABEL_15:
      v23 = (v23 + 1) & v24;
      if (((*(v8 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {

        return 0;
      }
    }

    v7 = v39;
    result = v40;
    v2 = v30;
    v8 = v47;
LABEL_30:
    v3 = v41;
    v6 = v42;
    if (v42)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v38 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v42 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0AFE1EC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v29 = result + 56;
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
  v30 = v7;
  v31 = result;
  if (v6)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v32 = (v6 - 1) & v6;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      v15 = *(a2 + 40);
      sub_1B0E46C28();
      sub_1B0E44BB8();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v16 = sub_1B0E46CB8();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        break;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = (*(a2 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = sub_1B0E44BB8();
        v25 = v24;
        if (v23 == sub_1B0E44BB8() && v25 == v26)
        {
          break;
        }

        v28 = sub_1B0E46A78();

        if (v28)
        {
          goto LABEL_23;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:

      v7 = v30;
      result = v31;
      v6 = v32;
      if (!v32)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v11 = *(v29 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v32 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t FlagUpdatesToBeSent.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  sub_1B0B0ADF0(a1, a2);

  return sub_1B0B0ADF0(a1, a3);
}

uint64_t FlagUpdatesToBeSent.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  sub_1B0B0ADF0(v5, a1);
  sub_1B0B0ADF0(v5, a2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFE4C4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0B0ADF0(v4, v1);
  sub_1B0B0ADF0(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFE518(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1B0B0ADF0(a1, v3);

  return sub_1B0B0ADF0(a1, v4);
}

uint64_t sub_1B0AFE558()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B0E46C28();
  sub_1B0B0ADF0(v4, v1);
  sub_1B0B0ADF0(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0AFE5A8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1B0AFE1EC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1B0AFE1EC(v2, v3);
}

uint64_t FlagEncoder.test_encode(_:)(unint64_t a1, char a2)
{
  v31 = MEMORY[0x1E69E7CD0];
  if (a1)
  {
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = Flag.seen.unsafeMutableAddressor();
    v7 = *v6;
    v8 = v6[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v30, v7, v8);

    if ((a1 & 0x100) == 0)
    {
LABEL_3:
      if ((a1 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  v9 = Flag.deleted.unsafeMutableAddressor();
  v10 = *v9;
  v11 = v9[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v30, v10, v11);

  if ((a1 & 0x10000) == 0)
  {
LABEL_4:
    v5 = v2[1];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_8:
  v12 = Flag.answered.unsafeMutableAddressor();
  v13 = *v12;
  v14 = v12[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v30, v13, v14);

  v5 = v2[1];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((a1 & 0x1000000) != 0)
  {
    v15 = *v2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v30, v15, v5);
  }

LABEL_11:
  if ((a1 & 0x100000000) != 0)
  {
    v16 = v2[4];
    v17 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v17);
  }

  if ((a1 & 0x10000000000) != 0)
  {
    v18 = v2[5];
    v19 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v19);
  }

  v20 = HIBYTE(a1);
  if (BYTE6(a1))
  {
    v21 = 8;
    if (BYTE6(a1) == 1)
    {
      v21 = 7;
    }

    v22 = v2[v21];
    v23 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B0AF54(v23);
  }

  if (!v20)
  {
    goto LABEL_29;
  }

  v24 = Flag.flagged.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(&v30, v25, v26);

  if (v20 <= 6)
  {
    if (((1 << v20) & 0x54) == 0)
    {
      if (((1 << v20) & 3) != 0)
      {
        goto LABEL_29;
      }

      if (v20 != 5)
      {
        goto LABEL_27;
      }

LABEL_28:
      sub_1B0B01BA4(&v30, 0x616C466C69614D24, 0xED00003274694267);

      goto LABEL_29;
    }

    sub_1B0B01BA4(&v30, 0x616C466C69614D24, 0xED00003074694267);

    if ((v20 - 5) < 2)
    {
      goto LABEL_28;
    }

    if (v20 == 2)
    {
      goto LABEL_29;
    }
  }

LABEL_27:
  sub_1B0B01BA4(&v30, 0x616C466C69614D24, 0xED00003174694267);

  if (v20 >= 5)
  {
    goto LABEL_28;
  }

LABEL_29:
  v27 = v2[12];
  if (v27 && (a2 & 1) != 0)
  {
    v28 = v2[11];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(&v30, v28, v27);
  }

  return v31;
}

uint64_t FlagEncoder.encode(_:)(unint64_t a1, uint64_t a2, unsigned int a3)
{
  *&v60 = a2;
  BYTE8(v60) = a3;
  v5 = *(&v60 + 1);
  v6 = a3 >> 8;
  *&v60 = MEMORY[0x1E69E7CD0];
  *(&v60 + 1) = MEMORY[0x1E69E7CD0];
  v7 = a2 & 1;
  v59[0] = a2 & 1;
  *&v59[1] = v5;
  v59[9] = BYTE1(a3);
  v8 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v9 = sub_1B0A94670(0, v8);

  if (v9)
  {
    v10 = Flag.seen.unsafeMutableAddressor();
    v11 = *v10;
    v12 = v10[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v59, v11, v12);
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v13 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v14 = sub_1B0A94670(1, v13);

  if (v14)
  {
    v15 = Flag.deleted.unsafeMutableAddressor();
    v16 = *v15;
    v17 = v15[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v59, v16, v17);
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v18 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v19 = sub_1B0A94670(2, v18);

  if (v19)
  {
    v20 = Flag.answered.unsafeMutableAddressor();
    v21 = *v20;
    v22 = v20[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v59, v21, v22);
  }

  v23 = *(v3 + 8);
  if (v23)
  {
    v24 = *v3;
    v25 = *(v3 + 8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59[0] = v7;
    *&v59[1] = v5;
    v59[9] = v6;
    v26 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
    v27 = sub_1B0A94670(3, v26);

    if (v27)
    {
      sub_1B0B01BA4(v59, v24, v23);
    }
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v28 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v29 = sub_1B0A94670(4, v28);

  if (v29)
  {
    v30 = *(v3 + 32);
    v59[0] = v7;
    *&v59[1] = v5;
    v59[9] = v6;
    sub_1B0AFBDDC(v30);
    sub_1B0AFBFE0(*(v3 + 48));
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v31 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v32 = sub_1B0A94670(5, v31);

  if (v32)
  {
    v33 = *(v3 + 40);
    v59[0] = v7;
    *&v59[1] = v5;
    v59[9] = v6;
    sub_1B0AFBE98(v33);
    sub_1B0AFBFE0(*(v3 + 48));
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v34 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v35 = sub_1B0A94670(6, v34);

  if (v35)
  {
    v36 = *(v3 + 56);
    if (BYTE6(a1))
    {
      if (BYTE6(a1) != 1)
      {
        sub_1B0AFBFE0(v36);
        sub_1B0AFBF54(*(v3 + 64));
        goto LABEL_22;
      }

      sub_1B0AFBF54(v36);
    }

    else
    {
      sub_1B0AFBFE0(v36);
    }

    sub_1B0AFBFE0(*(v3 + 64));
LABEL_22:
    sub_1B0AFBFE0(*(v3 + 72));
  }

  v59[0] = v7;
  *&v59[1] = v5;
  v59[9] = v6;
  v37 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
  v38 = sub_1B0A94670(7, v37);

  if ((v38 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (HIBYTE(a1))
  {
    v42 = Flag.flagged.unsafeMutableAddressor();
    v43 = *v42;
    v44 = v42[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v59, v43, v44);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v39 = Flag.flagged.unsafeMutableAddressor();
    v40 = *v39;
    v41 = v39[1];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B01BA4(v59, v40, v41);

    if ((*(v3 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  v45 = Flag.Keyword.colorBit0.unsafeMutableAddressor();
  v46 = *v45;
  v47 = v45[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v59, v46, v47);

  v48 = Flag.Keyword.colorBit1.unsafeMutableAddressor();
  v49 = *v48;
  v50 = v48[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v59, v49, v50);

  v51 = Flag.Keyword.colorBit2.unsafeMutableAddressor();
  v52 = *v51;
  v53 = v51[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B01BA4(v59, v52, v53);

LABEL_29:
  v54 = *(v3 + 96);
  if (v54)
  {
    v55 = *(v3 + 88);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v59[0] = v7;
    *&v59[1] = v5;
    v59[9] = v6;
    v56 = FlagsWithModifications.locallyModified.getter(a1 & 0xFFFF010101010101, *v59, *&v59[8]);
    v57 = sub_1B0A94670(8, v56);

    if (v57)
    {
      sub_1B0B01BA4(v59, v55, v54);
    }
  }

  return v60;
}

unint64_t sub_1B0AFEFFC()
{
  result = Flag.Keyword.init(_:)(0x4364756F6C436924uLL, 0xEE0070756E61656CLL);
  if (v1)
  {
    static Flag.Keyword.iCloudCleanup = result;
    unk_1EB737E80 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Flag.Keyword.iCloudCleanup.getter()
{
  if (qword_1EB6DE190 != -1)
  {
    swift_once();
  }

  v0 = static Flag.Keyword.iCloudCleanup;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

char *sub_1B0AFF0E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFF1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42F8, &unk_1B0EC4E40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0AFF314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44B0, &qword_1B0EC5230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0AFF450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44A8, &qword_1B0EC5228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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