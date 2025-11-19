BOOL sub_1DF16E528(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v24 - v15);
  v17 = *a1;
  v18 = a1[1];
  *v16 = v17;
  v16[1] = v18;
  sub_1DF17A6A8(v24[0], v24 + *(v10 + 56) - v15, &qword_1ECE0CBA8, &qword_1DF22CF80);
  sub_1DF17A6A8(v16, v14, &qword_1ECE0CBC0, &qword_1DF22CF98);
  v19 = *(v14 + 1);

  v20 = &v14[*(v10 + 56)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  sub_1DF1657C8(*(v20 + *(v21 + 48)), *(v20 + *(v21 + 48) + 8));
  v22 = type metadata accessor for KVDatastore.MetadataType();
  (*(v5 + 16))(v8, v20 + *(v22 + 20), v4);
  sub_1DF169620(v20);
  sub_1DF1792F4(&qword_1ECE0C720);
  LOBYTE(v20) = sub_1DF22AC50();
  (*(v5 + 8))(v8, v4);
  sub_1DF16184C(v16, &qword_1ECE0CBC0, &qword_1DF22CF98);
  return (v20 & 1) == 0;
}

BOOL sub_1DF16E790(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  v4 = sub_1DF22A800();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v24 - v15);
  v17 = *a1;
  v18 = a1[1];
  *v16 = v17;
  v16[1] = v18;
  sub_1DF17A6A8(v24[0], v24 + *(v10 + 56) - v15, &qword_1ECE0CBB0, &qword_1DF22CF88);
  sub_1DF17A6A8(v16, v14, &qword_1ECE0CBB8, &qword_1DF22CF90);
  v19 = *(v14 + 1);

  v20 = &v14[*(v10 + 56)];
  v21 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88) + 48));

  v22 = type metadata accessor for KVDatastore.MetadataType();
  (*(v5 + 16))(v8, v20 + *(v22 + 20), v4);
  sub_1DF169620(v20);
  sub_1DF1792F4(&qword_1ECE0C720);
  LOBYTE(v20) = sub_1DF22AC50();
  (*(v5 + 8))(v8, v4);
  sub_1DF16184C(v16, &qword_1ECE0CBB8, &qword_1DF22CF90);
  return (v20 & 1) == 0;
}

uint64_t sub_1DF16E9F4()
{
  swift_beginAccess();
  if (!*(*(v0 + 112) + 16))
  {
    swift_beginAccess();
    if (!*(*(v0 + 120) + 16))
    {
      return 0;
    }
  }

  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 112) = MEMORY[0x1E69E7CC8];

  v2 = 1;
  swift_beginAccess();
  v3 = *(v0 + 120);
  *(v0 + 120) = v1;

  return v2;
}

uint64_t sub_1DF16EAA4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v91 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v91 - v12;
  swift_beginAccess();
  v14 = *(v3 + 112);
  if (!*(v14 + 16))
  {
    swift_beginAccess();
    if (!*(*(v3 + 120) + 16))
    {
      return 0;
    }
  }

  v15 = HIBYTE(a2) & 0xF;
  v91[1] = a1;
  v91[2] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    return 0;
  }

  v93 = v9;
  v94 = v13;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;

  v21 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      break;
    }

LABEL_13:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = (*(v14 + 48) + ((v21 << 10) | (16 * v23)));
    v26 = *v24;
    v25 = v24[1];

    if (sub_1DF16F300())
    {
      v27 = v95;
      result = swift_isUniquelyReferenced_nonNull_native();
      v99 = v27;
      if ((result & 1) == 0)
      {
        result = sub_1DF160D10(0, *(v27 + 16) + 1, 1);
        v27 = v99;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v95 = v29 + 1;
        result = sub_1DF160D10((v28 > 1), v29 + 1, 1);
        v30 = v95;
        v27 = v99;
      }

      *(v27 + 16) = v30;
      v95 = v27;
      v31 = v27 + 16 * v29;
      *(v31 + 32) = v26;
      *(v31 + 40) = v25;
    }

    else
    {
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v14 + 64 + 8 * v21);
    ++v22;
    if (v18)
    {
      goto LABEL_13;
    }
  }

  v33 = v94;
  v32 = v95;
  v34 = *(v95 + 16);
  v96 = v3;
  if (!v34)
  {
LABEL_29:

    swift_beginAccess();
    v53 = *(v3 + 120);
    v54 = 1 << *(v53 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v53 + 64);
    v57 = (v54 + 63) >> 6;
    v58 = *(v3 + 120);

    v59 = 0;
    v95 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v60 = v59;
    if (!v56)
    {
      goto LABEL_34;
    }

    do
    {
      v59 = v60;
LABEL_37:
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v62 = (*(v53 + 48) + ((v59 << 10) | (16 * v61)));
      v64 = *v62;
      v63 = v62[1];

      if (sub_1DF16F300())
      {
        v65 = v95;
        result = swift_isUniquelyReferenced_nonNull_native();
        v98 = v65;
        if ((result & 1) == 0)
        {
          result = sub_1DF160D10(0, *(v65 + 16) + 1, 1);
          v65 = v98;
        }

        v67 = *(v65 + 16);
        v66 = *(v65 + 24);
        v68 = v67 + 1;
        if (v67 >= v66 >> 1)
        {
          v95 = v67 + 1;
          result = sub_1DF160D10((v66 > 1), v67 + 1, 1);
          v68 = v95;
          v65 = v98;
        }

        *(v65 + 16) = v68;
        v95 = v65;
        v69 = v65 + 16 * v67;
        *(v69 + 32) = v64;
        *(v69 + 40) = v63;
        goto LABEL_32;
      }

      v60 = v59;
    }

    while (v56);
LABEL_34:
    while (1)
    {
      v59 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_57;
      }

      if (v59 >= v57)
      {

        v70 = v95;
        v71 = *(v95 + 16);
        v72 = v93;
        if (!v71)
        {
LABEL_54:

          return 1;
        }

        v73 = 0;
        v74 = (v95 + 40);
        v94 = *(v95 + 16);
        while (v73 < *(v70 + 16))
        {
          v77 = *(v74 - 1);
          v76 = *v74;
          swift_beginAccess();
          v78 = *(v3 + 120);

          v79 = sub_1DF175254(v77, v76);
          if (v80)
          {
            v81 = v79;
            v82 = *(v3 + 120);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v84 = *(v3 + 120);
            v97 = v84;
            *(v3 + 120) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
              v84 = v97;
            }

            v85 = *(*(v84 + 48) + 16 * v81 + 8);

            v86 = *(v84 + 56);
            v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
            v88 = *(v87 - 8);
            v89 = v86 + *(v88 + 72) * v81;
            v72 = v93;
            sub_1DF17A710(v89, v93, &qword_1ECE0CBB0, &qword_1DF22CF88);
            sub_1DF175BCC(v81, v84, &qword_1ECE0CBB0, &qword_1DF22CF88);
            v3 = v96;
            v90 = *(v96 + 120);
            *(v96 + 120) = v84;

            (*(v88 + 56))(v72, 0, 1, v87);
            v71 = v94;
            v70 = v95;
          }

          else
          {
            v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
            (*(*(v75 - 8) + 56))(v72, 1, 1, v75);
          }

          ++v73;
          sub_1DF16184C(v72, &qword_1ECE0CBE8, &qword_1DF22CFC0);
          swift_endAccess();

          v74 += 2;
          if (v71 == v73)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_59;
      }

      v56 = *(v53 + 64 + 8 * v59);
      ++v60;
      if (v56)
      {
        goto LABEL_37;
      }
    }
  }

  v35 = 0;
  v36 = (v95 + 40);
  v92 = v34;
  while (v35 < *(v32 + 16))
  {
    v39 = *(v36 - 1);
    v38 = *v36;
    swift_beginAccess();
    v40 = *(v3 + 112);

    v41 = sub_1DF175254(v39, v38);
    if (v42)
    {
      v43 = v41;
      v44 = *(v3 + 112);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v3 + 112);
      v98 = v46;
      *(v3 + 112) = 0x8000000000000000;
      if (!v45)
      {
        sub_1DF175E10(&qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
        v46 = v98;
      }

      v47 = *(*(v46 + 48) + 16 * v43 + 8);

      v48 = *(v46 + 56);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v50 = *(v49 - 8);
      v51 = v48 + *(v50 + 72) * v43;
      v33 = v94;
      sub_1DF17A710(v51, v94, &qword_1ECE0CBA8, &qword_1DF22CF80);
      sub_1DF175BCC(v43, v46, &qword_1ECE0CBA8, &qword_1DF22CF80);
      v3 = v96;
      v52 = *(v96 + 112);
      *(v96 + 112) = v46;

      (*(v50 + 56))(v33, 0, 1, v49);
      v32 = v95;
      v34 = v92;
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    }

    ++v35;
    sub_1DF16184C(v33, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    swift_endAccess();

    v36 += 2;
    if (v34 == v35)
    {
      goto LABEL_29;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1DF16F300()
{

  v0 = sub_1DF22AD60();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_1DF22AD60();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_1DF22B620();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_1DF22AD60();
      v3 = v5;
    }

    while (v5);
  }

  sub_1DF22AD60();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_1DF16F45C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v28 - v14 + 16;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - v18 + 16;
  swift_beginAccess();
  if (*(*(v5 + 112) + 16) || (swift_beginAccess(), *(*(v5 + 120) + 16)))
  {
    v20 = sub_1DF16C5DC(a1, a2, a3, a4, v28);
    if (v6)
    {
      *a5 = v28[0];
    }

    else
    {
      v22 = v20;
      v23 = v21;
      swift_beginAccess();
      sub_1DF175524(v22, v23, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v19);
      swift_endAccess();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      if ((*(*(v24 - 8) + 48))(v19, 1, v24) == 1)
      {
        sub_1DF16184C(v19, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        swift_beginAccess();
        sub_1DF175524(v22, v23, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v15);
        swift_endAccess();

        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        LOBYTE(v5) = (*(*(v25 - 8) + 48))(v15, 1, v25) != 1;
        sub_1DF16184C(v15, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      }

      else
      {

        sub_1DF16184C(v19, &qword_1ECE0CBE0, &qword_1DF22CFB8);
        LOBYTE(v5) = 1;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DF16F788@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, char *a6@<X8>)
{
  v45 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v44 - v15 + 16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = v44 - v19 + 16;
  swift_beginAccess();
  if (!*(*(v6 + 112) + 16))
  {
    result = swift_beginAccess();
    if (!*(*(v6 + 120) + 16))
    {
      v33 = 2;
      goto LABEL_14;
    }
  }

  result = sub_1DF16C5DC(a1, a2, a3, a4, v44);
  if (v7)
  {
    *a5 = v44[0];
    return result;
  }

  v23 = result;
  v24 = v22;
  v25 = *(v6 + 112);
  if (!*(v25 + 16))
  {
LABEL_10:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    (*(*(v34 - 8) + 56))(v20, 1, 1, v34);
    sub_1DF16184C(v20, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    swift_beginAccess();
    v35 = *(v6 + 120);
    if (*(v35 + 16) && (, v36 = sub_1DF175254(v23, v24), v38 = v37, , (v38 & 1) != 0))
    {
      v39 = *(v35 + 56);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v41 = *(v40 - 8);
      sub_1DF17A6A8(v39 + *(v41 + 72) * v36, v16, &qword_1ECE0CBB0, &qword_1DF22CF88);

      v33 = 1;
      (*(v41 + 56))(v16, 0, 1, v40);
      result = sub_1DF16184C(v16, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    }

    else
    {

      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      (*(*(v42 - 8) + 56))(v16, 1, 1, v42);
      result = sub_1DF16184C(v16, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      v33 = 2;
    }

    goto LABEL_14;
  }

  v26 = *(v6 + 112);

  v27 = sub_1DF175254(v23, v24);
  if ((v28 & 1) == 0)
  {

    goto LABEL_10;
  }

  v29 = v27;

  v30 = *(v25 + 56);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v32 = *(v31 - 8);
  sub_1DF17A6A8(v30 + *(v32 + 72) * v29, v20, &qword_1ECE0CBA8, &qword_1DF22CF80);

  (*(v32 + 56))(v20, 0, 1, v31);
  result = sub_1DF16184C(v20, &qword_1ECE0CBE0, &qword_1DF22CFB8);
  v33 = 0;
LABEL_14:
  *v45 = v33;
  return result;
}

uint64_t sub_1DF16FC04@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v61 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v61 - v17;
  v19 = type metadata accessor for KVDatastore.MetadataType();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v65 = &v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v64 = &v61 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  swift_beginAccess();
  if (*(*(v6 + 112) + 16) || (swift_beginAccess(), *(*(v6 + 120) + 16)))
  {
    v30 = v71;
    result = sub_1DF16C5DC(a1, a2, a3, a4, v70);
    if (v30)
    {
      *a5 = v70[0];
      return result;
    }

    v33 = result;
    v34 = v32;
    v71 = 0;
    v35 = *(v6 + 112);
    if (*(v35 + 16))
    {
      v63 = v6;

      v36 = sub_1DF175254(v33, v34);
      if (v37)
      {
        v38 = v36;
        v62 = *(v35 + 56);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
        v40 = *(v39 - 8);
        sub_1DF17A6A8(v62 + *(v40 + 72) * v38, v18, &qword_1ECE0CBA8, &qword_1DF22CF80);

        (*(v40 + 56))(v18, 0, 1, v39);
      }

      else
      {

        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
        (*(*(v44 - 8) + 56))(v18, 1, 1, v44);
      }

      v6 = v63;
    }

    else
    {
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
    if ((*(*(v45 - 8) + 48))(v18, 1, v45))
    {
      sub_1DF16184C(v18, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      swift_beginAccess();
      v46 = *(v6 + 120);
      if (*(v46 + 16) && (, v47 = sub_1DF175254(v33, v34), v49 = v48, , (v49 & 1) != 0))
      {
        v50 = *(v46 + 56);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        v52 = *(v51 - 8);
        v53 = v50 + *(v52 + 72) * v47;
        v54 = v66;
        sub_1DF17A6A8(v53, v66, &qword_1ECE0CBB0, &qword_1DF22CF88);

        (*(v52 + 56))(v54, 0, 1, v51);
      }

      else
      {

        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
        v54 = v66;
        (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
      }

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
      v58 = (*(*(v57 - 8) + 48))(v54, 1, v57);
      v42 = v69;
      if (v58)
      {
        sub_1DF16184C(v54, &qword_1ECE0CBE8, &qword_1DF22CFC0);
        v41 = 1;
        return (*(v67 + 56))(v42, v41, 1, v68);
      }

      v59 = v65;
      sub_1DF17A5D8(v54, v65, type metadata accessor for KVDatastore.MetadataType);
      sub_1DF16184C(v54, &qword_1ECE0CBE8, &qword_1DF22CFC0);
      v60 = v64;
      sub_1DF17A640(v59, v64, type metadata accessor for KVDatastore.MetadataType);
      v55 = v60;
    }

    else
    {

      sub_1DF17A5D8(v18, v27, type metadata accessor for KVDatastore.MetadataType);
      sub_1DF16184C(v18, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      sub_1DF17A640(v27, v29, type metadata accessor for KVDatastore.MetadataType);
      v55 = v29;
      v42 = v69;
    }

    sub_1DF17A640(v55, v42, type metadata accessor for KVDatastore.MetadataType);
    v41 = 0;
    return (*(v67 + 56))(v42, v41, 1, v68);
  }

  v41 = 1;
  v42 = v69;
  return (*(v67 + 56))(v42, v41, 1, v68);
}

uint64_t sub_1DF1702FC(uint64_t a1, unint64_t a2, _BYTE *a3)
{
  swift_beginAccess();
  if (!*(*(v3 + 112) + 16))
  {
    swift_beginAccess();
    if (!*(*(v3 + 120) + 16))
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  if (!a2)
  {
    return sub_1DF169E7C();
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    return sub_1DF169E7C();
  }

  sub_1DF17924C();
  if (sub_1DF22B1D0())
  {
    *a3 = 1;
    sub_1DF1792A0();
    return swift_willThrowTypedImpl();
  }

  else
  {
    result = sub_1DF169E7C();
    v9 = result;
    v10 = *(result + 16);
    if (v10)
    {
      v11 = 0;
      v12 = result + 40;
      v25 = MEMORY[0x1E69E7CC0];
      v23 = result + 40;
      do
      {
        v13 = (v12 + 16 * v11);
        v14 = v11;
        while (1)
        {
          if (v14 >= *(v9 + 16))
          {
            __break(1u);
            return result;
          }

          v16 = *(v13 - 1);
          v15 = *v13;
          v11 = v14 + 1;

          if (sub_1DF16F300())
          {
            break;
          }

          v13 += 2;
          ++v14;
          if (v10 == v11)
          {
            goto LABEL_25;
          }
        }

        v17 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v24 = v25;
        if ((result & 1) == 0)
        {
          result = sub_1DF160D10(0, *(v25 + 16) + 1, 1);
          v17 = v25;
        }

        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v26 = v19 + 1;
          v22 = *(v17 + 16);
          result = sub_1DF160D10((v18 > 1), v19 + 1, 1);
          v19 = v22;
          v20 = v26;
          v17 = v24;
        }

        *(v17 + 16) = v20;
        v25 = v17;
        v21 = v17 + 16 * v19;
        *(v21 + 32) = v16;
        *(v21 + 40) = v15;
        v12 = v23;
      }

      while (v10 - 1 != v14);
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
    }

LABEL_25:

    return v25;
  }
}

char *sub_1DF170564(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5, _BYTE *a6)
{
  v70 = a6;
  v71 = a1;
  v68 = a5;
  v73 = a3;
  v74 = a4;
  v72 = a2;
  v6 = sub_1DF22A800();
  v66 = *(v6 - 8);
  v7 = *(v66 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v64 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v64 - v28;
  v30 = v76;
  v31 = sub_1DF16C5DC(v71, v72, v73, v74, v75);
  if (!v30)
  {
    v70 = v32;
    v71 = v27;
    v72 = v24;
    v73 = v12;
    v74 = v10;
    v64 = v19;
    v65 = v17;
    v33 = v13;
    v34 = v66;
    v35 = v31;
    v76 = 0;
    v36 = v67;
    if (v68)
    {
      swift_beginAccess();
      v37 = v71;
      sub_1DF175524(v35, v70, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8, v71);
      swift_endAccess();

      v38 = v69;
    }

    else
    {
      swift_beginAccess();
      v39 = *(v36 + 112);
      v37 = v71;
      if (*(v39 + 16) && (, v40 = sub_1DF175254(v35, v70), v42 = v41, , (v42 & 1) != 0))
      {
        v38 = v69;
        sub_1DF17A6A8(*(v39 + 56) + *(v69 + 72) * v40, v37, &qword_1ECE0CBA8, &qword_1DF22CF80);

        (*(v38 + 56))(v37, 0, 1, v33);
      }

      else
      {

        v38 = v69;
        (*(v69 + 56))(v37, 1, 1, v33);
      }
    }

    v43 = v37;
    v44 = v29;
    sub_1DF17A710(v43, v29, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    v45 = v72;
    sub_1DF17A6A8(v29, v72, &qword_1ECE0CBE0, &qword_1DF22CFB8);
    v46 = *(v38 + 48);
    v71 = v33;
    v47 = v46(v45, 1, v33);
    v48 = v6;
    v50 = v73;
    v49 = v74;
    if (v47 == 1)
    {
      sub_1DF16184C(v29, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      v51 = v45;
      v52 = &qword_1ECE0CBE0;
      v53 = &qword_1DF22CFB8;
    }

    else
    {
      v54 = v34;
      v55 = v45;
      v56 = v64;
      sub_1DF17A710(v55, v64, &qword_1ECE0CBA8, &qword_1DF22CF80);
      v57 = v65;
      sub_1DF17A6A8(v56, v65, &qword_1ECE0CBA8, &qword_1DF22CF80);
      sub_1DF1657C8(*(v57 + *(v71 + 12)), *(v57 + *(v71 + 12) + 8));
      v58 = type metadata accessor for KVDatastore.MetadataType();
      (*(v34 + 16))(v50, v57 + *(v58 + 20), v48);
      sub_1DF169620(v57);
      sub_1DF22A7D0();
      v59 = sub_1DF22A780();
      v60 = *(v54 + 8);
      v60(v49, v48);
      v60(v50, v48);
      sub_1DF16184C(v44, &qword_1ECE0CBE0, &qword_1DF22CFB8);
      if (v59)
      {
        sub_1DF17A710(v56, v57, &qword_1ECE0CBA8, &qword_1DF22CF80);
        v61 = (v57 + *(v71 + 12));
        v10 = *v61;
        v62 = v61[1];
        sub_1DF169620(v57);
        return v10;
      }

      v52 = &qword_1ECE0CBA8;
      v53 = &qword_1DF22CF80;
      v51 = v56;
    }

    sub_1DF16184C(v51, v52, v53);
    return 0;
  }

  *v70 = v75[0];
  return v10;
}

uint64_t sub_1DF170AFC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, char a9, char *a10)
{
  v12 = v10;
  v95 = a7;
  v96 = a8;
  v99 = a6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE0, &qword_1DF22CFB8);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v90 - v20;
  result = sub_1DF16C5DC(a1, a2, a3, a4, v98);
  if (v11)
  {
    *a10 = v98[0];
    return result;
  }

  v24 = result;
  v25 = v23;
  v92 = a5;
  v93 = a3;
  v26 = a4;
  v90 = 0;
  v91 = v21;
  v27 = v99;
  v28 = v95;
  if (a9)
  {
    v28 = 0xC0DDD92E56000000;
  }

  v94 = a10;
  v95 = v28;
  v29 = 4683;
  if ((a9 & 1) == 0)
  {
    v29 = v96;
  }

  v96 = v29;
  swift_beginAccess();
  v30 = v12;
  if (*(*(v12 + 112) + 16))
  {
    v31 = *(v12 + 112);

    sub_1DF175254(v24, v25);
    v33 = v32;

    if (v33)
    {
      goto LABEL_65;
    }
  }

  swift_beginAccess();
  if (*(*(v12 + 120) + 16))
  {
    v34 = *(v12 + 120);

    sub_1DF175254(v24, v25);
    v36 = v35;

    if (v36)
    {
LABEL_65:
      if (!*(*(v12 + 112) + 16) || (v37 = *(v12 + 112), , sub_1DF175254(v24, v25), v39 = v38, , (v39 & 1) == 0))
      {

        if (qword_1ED8E7530 != -1)
        {
          swift_once();
        }

        v50 = sub_1DF22A8C0();
        __swift_project_value_buffer(v50, qword_1ED8E92C0);
        v51 = v26;

        v52 = sub_1DF22A8A0();
        v53 = sub_1DF22B0F0();

        v54 = os_log_type_enabled(v52, v53);
        v55 = v93;
        if (v54)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v97[0] = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_1DF160728(v55, v51, v97);
          _os_log_impl(&dword_1DF15A000, v52, v53, "Key already exists but is not accessible due wrong type (key: %s).", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          MEMORY[0x1E12D0B40](v57, -1, -1);
          MEMORY[0x1E12D0B40](v56, -1, -1);
        }

        v49 = 2;
        goto LABEL_58;
      }
    }
  }

  if (sub_1DF22B770() & 1) != 0 || (sub_1DF22B770())
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v40 = sub_1DF22A8C0();
    __swift_project_value_buffer(v40, qword_1ED8E92C0);
    v41 = sub_1DF22A8A0();
    v42 = sub_1DF22B0F0();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v97[0] = v44;
      *v43 = 136315138;
      v45 = sub_1DF22B760();
      v47 = sub_1DF160728(v45, v46, v97);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_1DF15A000, v41, v42, "Invalid time to live: %s.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1E12D0B40](v44, -1, -1);
      MEMORY[0x1E12D0B40](v43, -1, -1);
    }

    v48 = v94;
    v49 = 4;
    goto LABEL_59;
  }

  v58 = v27;
  v59 = v27 >> 62;
  if ((v27 >> 62) <= 1)
  {
    v60 = v91;
    v61 = v92;
    if (!v59)
    {
      v62 = BYTE6(v58);
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  v60 = v91;
  v61 = v92;
  if (v59 != 2)
  {
    v62 = 0;
    goto LABEL_35;
  }

  v64 = *(v92 + 16);
  v63 = *(v92 + 24);
  v65 = __OFSUB__(v63, v64);
  v62 = v63 - v64;
  if (v65)
  {
    __break(1u);
LABEL_32:
    LODWORD(v62) = HIDWORD(v61) - v61;
    if (__OFSUB__(HIDWORD(v61), v61))
    {
      __break(1u);
      goto LABEL_61;
    }

    v62 = v62;
  }

LABEL_35:
  if (v62 < *(v30 + 136))
  {
    if (sub_1DF16C738(v61, v58))
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
      v93 = (v60 + *(v66 + 48));
      v94 = v66;
      v67 = type metadata accessor for KVDatastore.MetadataType();
      v68 = (v60 + *(v67 + 24));
      sub_1DF22A7D0();
      v69 = v60;
      v70 = v95;
      v71 = v96;
      sub_1DF22B750();
      v72 = v69 + *(v67 + 20);
      sub_1DF22A760();
      *v68 = v70;
      v68[1] = v71;
      v74 = v93;
      v73 = v94;
      v75 = v99;
      *v93 = v61;
      v74[1] = v75;
      (*(*(v73 - 1) + 56))(v69, 0, 1);
      swift_beginAccess();
      sub_1DF16573C(v61, v75);
      sub_1DF167238(v69, v24, v25);
      return swift_endAccess();
    }

    if (qword_1ED8E7530 == -1)
    {
LABEL_45:
      v80 = sub_1DF22A8C0();
      __swift_project_value_buffer(v80, qword_1ED8E92C0);
      v77 = sub_1DF22A8A0();
      v81 = sub_1DF22B110();
      if (os_log_type_enabled(v77, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        v83 = "Database reached max size.";
        v84 = v81;
        v85 = v77;
        v86 = v82;
        v87 = 2;
LABEL_56:
        _os_log_impl(&dword_1DF15A000, v85, v84, v83, v86, v87);
        MEMORY[0x1E12D0B40](v82, -1, -1);
      }

LABEL_57:

      v49 = 3;
LABEL_58:
      v48 = v94;
LABEL_59:
      *v48 = v49;
      LOBYTE(v97[0]) = v49;
      sub_1DF1792A0();
      return swift_willThrowTypedImpl();
    }

LABEL_61:
    swift_once();
    goto LABEL_45;
  }

  if (qword_1ED8E7530 != -1)
  {
    swift_once();
  }

  v76 = sub_1DF22A8C0();
  __swift_project_value_buffer(v76, qword_1ED8E92C0);
  sub_1DF16573C(v61, v58);
  v77 = sub_1DF22A8A0();
  v78 = sub_1DF22B0F0();
  if (!os_log_type_enabled(v77, v78))
  {
    sub_1DF1657C8(v61, v58);
    goto LABEL_57;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  if (v59 > 1)
  {
    if (v59 != 2)
    {
      v79 = 0;
      goto LABEL_55;
    }

    v89 = *(v61 + 16);
    v88 = *(v61 + 24);
    v65 = __OFSUB__(v88, v89);
    v79 = v88 - v89;
    if (!v65)
    {
      goto LABEL_55;
    }

    __break(1u);
  }

  else if (!v59)
  {
    v79 = BYTE6(v58);
LABEL_55:
    *(result + 4) = v79;
    v82 = result;
    sub_1DF1657C8(v61, v58);
    v83 = "Invalid value size: %ld.";
    v84 = v78;
    v85 = v77;
    v86 = v82;
    v87 = 12;
    goto LABEL_56;
  }

  LODWORD(v79) = HIDWORD(v61) - v61;
  if (!__OFSUB__(HIDWORD(v61), v61))
  {
    v79 = v79;
    goto LABEL_55;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF1712C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v71 = a6;
  v69 = a5;
  v74 = a3;
  v75 = a4;
  v72 = a1;
  v73 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v63 - v8;
  v10 = sub_1DF22A800();
  v68 = *(v10 - 8);
  v11 = *(v68 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v63 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v63 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v63 - v26;
  v28 = v77;
  result = sub_1DF16C5DC(v72, v73, v74, v75, v76);
  if (v28)
  {
    *v71 = v76[0];
    return result;
  }

  v73 = v9;
  v74 = result;
  v77 = v30;
  v63 = v25;
  v64 = v18;
  v65 = v16;
  v66 = v22;
  v31 = v68;
  v71 = v27;
  v72 = v17;
  v75 = 0;
  v32 = v70;
  swift_beginAccess();
  if (!*(*(v32 + 120) + 16))
  {
    goto LABEL_17;
  }

  v33 = *(v32 + 120);

  sub_1DF175254(v74, v77);
  v35 = v34;

  if ((v35 & 1) == 0 || (v36 = *(v32 + 120), !*(v36 + 16)) || (v37 = *(v32 + 120), , v38 = sub_1DF175254(v74, v77), v40 = v39, , (v40 & 1) == 0))
  {
LABEL_17:

    return 0;
  }

  v41 = *(v36 + 56) + *(v64 + 72) * v38;
  v42 = v63;
  sub_1DF17A6A8(v41, v63, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v43 = v42;
  v44 = v71;
  sub_1DF17A710(v43, v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v45 = v66;
  sub_1DF17A6A8(v44, v66, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v46 = *(v45 + *(v72 + 48));

  v47 = type metadata accessor for KVDatastore.MetadataType();
  v48 = v65;
  (*(v31 + 16))(v65, v45 + *(v47 + 20), v10);
  sub_1DF169620(v45);
  sub_1DF22A7D0();
  LOBYTE(v45) = sub_1DF22A780();
  v49 = *(v31 + 8);
  v49(v14, v10);
  result = (v49)(v48, v10);
  if ((v45 & 1) == 0)
  {
    sub_1DF16184C(v44, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v50 = *&v44[*(v72 + 48)];
  v51 = v50[3];
  v52 = v67;
  if (!v51)
  {
LABEL_16:
    sub_1DF16184C(v71, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v53 = 0;
  while (1)
  {
    if (v53 >= v51)
    {
      __break(1u);
      goto LABEL_24;
    }

    v54 = v50[4];
    v55 = v53 + v54 >= v50[2] ? v50[2] : 0;
    v56 = v73;
    sub_1DF17A6A8(v50 + ((*(v52 + 80) + 40) & ~*(v52 + 80)) + (v53 + v54 - v55) * *(v52 + 72), v73, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    sub_1DF1792F4(&qword_1ECE0C720);
    v57 = sub_1DF22AC50();
    result = sub_1DF16184C(v56, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    if ((v57 & 1) == 0)
    {
      break;
    }

    ++v53;
    v51 = v50[3];
    if (v53 == v51)
    {
      goto LABEL_16;
    }
  }

  v58 = v71;
  v59 = v66;
  sub_1DF17A6A8(v71, v66, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v60 = *(*(v59 + *(v72 + 48)) + 24);

  v61 = __OFSUB__(v60, v53);
  v62 = v60 - v53;
  if (!v61)
  {
    sub_1DF169620(v59);
    sub_1DF16184C(v58, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return v62;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DF17186C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v92 = a6;
  v89 = a5;
  v95 = a3;
  v96 = a4;
  v93 = a1;
  v94 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v88 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v87 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v82 - v13;
  v15 = sub_1DF22A800();
  v90 = *(v15 - 8);
  v16 = *(v90 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v82 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v82 - v31;
  v33 = v98;
  result = sub_1DF16C5DC(v93, v94, v95, v96, v97);
  if (v33)
  {
    *v92 = v97[0];
    return result;
  }

  v83 = v30;
  v92 = v23;
  v93 = v19;
  v95 = v27;
  v96 = result;
  v98 = v35;
  v94 = v21;
  v84 = v32;
  v36 = v91;
  swift_beginAccess();
  if (!*(*(v36 + 120) + 16))
  {
    goto LABEL_17;
  }

  v37 = v36;
  v38 = *(v36 + 120);

  sub_1DF175254(v96, v98);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
    goto LABEL_17;
  }

  v41 = *(v37 + 120);
  if (!*(v41 + 16))
  {
    goto LABEL_17;
  }

  v42 = *(v37 + 120);

  v43 = sub_1DF175254(v96, v98);
  if ((v44 & 1) == 0)
  {

LABEL_17:

    return 0;
  }

  v45 = v83;
  sub_1DF17A6A8(*(v41 + 56) + *(v92 + 72) * v43, v83, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v46 = v84;
  sub_1DF17A710(v45, v84, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v47 = v95;
  sub_1DF17A6A8(v46, v95, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v82 = v22;
  v48 = *(v47 + *(v22 + 48));

  v92 = type metadata accessor for KVDatastore.MetadataType();
  v49 = v90;
  v50 = v94;
  v51 = v15;
  (*(v90 + 16))(v94, v47 + *(v92 + 20), v15);
  sub_1DF169620(v47);
  v52 = v93;
  sub_1DF22A7D0();
  v53 = sub_1DF22A780();
  v55 = *(v49 + 8);
  v54 = v49 + 8;
  v56 = v52;
  v57 = v55;
  v55(v56, v51);
  v93 = v51;
  v55(v50, v51);
  if ((v53 & 1) == 0)
  {
    sub_1DF16184C(v84, &qword_1ECE0CBB0, &qword_1DF22CF88);
    goto LABEL_17;
  }

  v58 = v84;
  sub_1DF17A6A8(v84, v47, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v59 = v82;
  v60 = *(*(v47 + *(v82 + 48)) + 24);

  sub_1DF169620(v47);
  if (!v60)
  {
    swift_beginAccess();
    v81 = v88;
    sub_1DF175524(v96, v98, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v88);
    sub_1DF16184C(v81, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    swift_endAccess();

    sub_1DF16184C(v58, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v90 = v54;

  sub_1DF17A6A8(v58, v47, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v61 = sub_1DF172030(*(v47 + *(v59 + 48)));
  sub_1DF169620(v47);
  v62 = *(v61 + 16);

  v63 = v89;
  if (v89 < 0 || v62 <= v89)
  {
    sub_1DF16184C(v58, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v64 = v95;
  sub_1DF17A6A8(v58, v95, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v65 = sub_1DF172030(*(v64 + *(v22 + 48)));
  result = sub_1DF169620(v64);
  if (*(v65 + 16) > v63)
  {
    v66 = v14;
    sub_1DF17A6A8(v65 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v63, v14, &qword_1ECE0CBC8, &qword_1DF22CFA0);

    v67 = v94;
    sub_1DF22A7D0();
    sub_1DF22A7F0();
    v69 = v68;
    v57(v67, v93);
    sub_1DF17A6A8(v58, v64, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v70 = *(v64 + *(v82 + 48));

    v71 = (v64 + *(v92 + 24));
    v72 = *v71;
    v73 = v71[1];
    v74 = sub_1DF22B750();
    sub_1DF16184C(v58, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v75 = v74;
    sub_1DF169620(v64);
    v77 = v86;
    v76 = v87;
    if (v69 < v75)
    {
      sub_1DF17A710(v66, v87, &qword_1ECE0CBC8, &qword_1DF22CFA0);
      v78 = (v76 + *(v77 + 48));
      v79 = *v78;
      v80 = v78[1];
      v57(v76, v93);
      return v79;
    }

    sub_1DF16184C(v66, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF172030(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = *(a1 + 24);
  if (v9 < 0)
  {
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(a1 + 24);
    v11 = sub_1DF22AEE0();
    *(v11 + 16) = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v30 + 80);
  v13 = v11 + ((v12 + 32) & ~v12);
  v31[1] = v9;
  v32 = 0;
  v31[0] = v13;
  result = sub_1DF17903C((a1 + 16), a1 + ((v12 + 40) & ~v12), v31, &v32);
  if (v9 < v32)
  {
LABEL_19:
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v32;

    v14 = *(v11 + 16);
    v15 = v11;
    if (v14 >= 2)
    {
      v16 = 0;
      v17 = v14 >> 1;
      v18 = v14 - 1;
      v28 = v15;
      do
      {
        if (v16 != v18)
        {
          v19 = *(v15 + 16);
          if (v16 >= v19)
          {
            goto LABEL_16;
          }

          v20 = *(v30 + 72);
          v21 = v13 + v20 * v16;
          result = sub_1DF17A6A8(v21, v8, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          if (v18 >= v19)
          {
            goto LABEL_17;
          }

          v22 = v13;
          v23 = v8;
          v24 = v22;
          v25 = v22 + v20 * v18;
          v26 = v29;
          sub_1DF17A6A8(v25, v29, &qword_1ECE0CBC8, &qword_1DF22CFA0);
          result = sub_1DF17A778(v26, v21);
          v15 = v28;
          if (v18 >= *(v28 + 16))
          {
            __break(1u);
LABEL_16:
            __break(1u);
LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v8 = v23;
          result = sub_1DF17A778(v23, v25);
          v13 = v24;
        }

        ++v16;
        --v18;
      }

      while (v17 != v16);
    }

    return v15;
  }

  return result;
}

size_t sub_1DF172294(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  v200 = a7;
  v201 = a8;
  v196 = a6;
  v195 = a5;
  v203 = a10;
  v204 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v191 = &v175 - v16;
  v192 = sub_1DF22A800();
  v197 = *(v192 - 8);
  v17 = *(v197 + 64);
  v18 = MEMORY[0x1EEE9AC00](v192);
  v189 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v187 = &v175 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v185 = &v175 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v186 = &v175 - v24;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v194 = *(v199 - 8);
  v25 = *(v194 + 64);
  v26 = MEMORY[0x1EEE9AC00](v199);
  v190 = &v175 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v188 = &v175 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v202 = &v175 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v198 = &v175 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  *&v193 = *(v34 - 8);
  v35 = *(v193 + 64);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v175 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v175 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = &v175 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v175 - v45;
  v47 = a1;
  v48 = a3;
  v49 = a3;
  v50 = a4;
  result = sub_1DF16C5DC(v47, v204, v49, a4, v208);
  if (v10)
  {
    *v203 = v208[0];
    return result;
  }

  v53 = result;
  v54 = v52;
  v178 = v44;
  v181 = v48;
  v182 = v50;
  v177 = v41;
  v176 = v38;
  v184 = v46;
  v180 = v34;
  v183 = 0;
  if (a9)
  {
    v55 = 0xC0DDD92E56000000;
  }

  else
  {
    v55 = v200;
  }

  v56 = 4683;
  if ((a9 & 1) == 0)
  {
    v56 = v201;
  }

  v179 = v56;
  v57 = v205;
  swift_beginAccess();
  v58 = *(v57 + 112);
  v59 = v54;
  v60 = v53;
  if (*(v58 + 16))
  {

    sub_1DF175254(v53, v54);
    v62 = v61;

    if (v62)
    {
      goto LABEL_101;
    }
  }

  v63 = v205;
  swift_beginAccess();
  if (*(*(v63 + 120) + 16))
  {

    sub_1DF175254(v53, v59);
    v65 = v64;

    if (v65)
    {
LABEL_101:
      v66 = v205;
      swift_beginAccess();
      if (!*(*(v66 + 120) + 16) || (, sub_1DF175254(v53, v59), v68 = v67, , (v68 & 1) == 0))
      {

        if (qword_1ED8E7530 != -1)
        {
          goto LABEL_90;
        }

        goto LABEL_18;
      }
    }
  }

  v182 = v55;
  LODWORD(v181) = a9;
  v204 = v59;
  v69 = v196;
  v70 = v196 >> 62;
  if ((v196 >> 62) <= 1)
  {
    v71 = v205;
    v72 = v195;
    v73 = v197;
    if (!v70)
    {
      v74 = BYTE6(v196);
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v71 = v205;
  v72 = v195;
  v73 = v197;
  if (v70 != 2)
  {
    v74 = 0;
    goto LABEL_28;
  }

  v86 = *(v195 + 16);
  v85 = *(v195 + 24);
  v87 = __OFSUB__(v85, v86);
  v74 = v85 - v86;
  if (v87)
  {
    __break(1u);
LABEL_25:
    LODWORD(v74) = HIDWORD(v72) - v72;
    if (__OFSUB__(HIDWORD(v72), v72))
    {
      __break(1u);
LABEL_92:
      swift_once();
LABEL_42:
      v102 = sub_1DF22A8C0();
      __swift_project_value_buffer(v102, qword_1ED8E92C0);
      v73 = sub_1DF22A8A0();
      v103 = sub_1DF22B110();
      if (os_log_type_enabled(v73, v103))
      {
        v104 = swift_slowAlloc();
        *v104 = 0;
        v105 = "Database reached max size.";
        v106 = v103;
        v107 = v73;
        v108 = v104;
        v109 = 2;
LABEL_59:
        _os_log_impl(&dword_1DF15A000, v107, v106, v105, v108, v109);
        MEMORY[0x1E12D0B40](v104, -1, -1);
        goto LABEL_60;
      }

      goto LABEL_60;
    }

    v74 = v74;
  }

LABEL_28:
  if (v74 >= *(v71 + 136))
  {

    if (qword_1ED8E7530 != -1)
    {
      swift_once();
    }

    v98 = sub_1DF22A8C0();
    __swift_project_value_buffer(v98, qword_1ED8E92C0);
    sub_1DF16573C(v72, v69);
    v73 = sub_1DF22A8A0();
    v99 = sub_1DF22B0F0();
    if (os_log_type_enabled(v73, v99))
    {
      v100 = swift_slowAlloc();
      *v100 = 134217984;
      if (v70 > 1)
      {
        if (v70 == 2)
        {
          v111 = *(v72 + 16);
          v110 = *(v72 + 24);
          v87 = __OFSUB__(v110, v111);
          v101 = v110 - v111;
          if (v87)
          {
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          v101 = 0;
        }
      }

      else if (v70)
      {
        LODWORD(v101) = HIDWORD(v72) - v72;
        if (__OFSUB__(HIDWORD(v72), v72))
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v101 = v101;
      }

      else
      {
        v101 = BYTE6(v69);
      }

      *(v100 + 4) = v101;
      v104 = v100;
      sub_1DF1657C8(v72, v69);
      v105 = "Invalid value size: %ld.";
      v106 = v99;
      v107 = v73;
      v108 = v104;
      v109 = 12;
      goto LABEL_59;
    }

    sub_1DF1657C8(v72, v69);
LABEL_60:

    v84 = 3;
    v83 = v203;
    goto LABEL_61;
  }

  if ((sub_1DF16C738(v72, v69) & 1) == 0)
  {

    if (qword_1ED8E7530 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

  swift_beginAccess();
  v88 = *(v71 + 120);
  v70 = v199;
  if (!*(v88 + 16))
  {
LABEL_50:
    v112 = sub_1DF178760();
    v209 = v112;
    v113 = v189;
    sub_1DF22A7D0();
    v53 = v190;
    v114 = (v190 + *(v70 + 48));
    (*(v73 + 32))(v190, v113, v192);
    *v114 = v72;
    v114[1] = v69;
    v115 = *(v112 + 24);
    v116 = v115 + 1;
    if (!__OFADD__(v115, 1))
    {
      sub_1DF16573C(v72, v69);
      v117 = v209;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v194;
      if (*(v117 + 16) < v116 || (isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DF178290(isUniquelyReferenced_nonNull_native, v116);
        v117 = v209;
      }

      v120 = v183;
      sub_1DF178848((v117 + 16), v117 + ((*(v119 + 80) + 40) & ~*(v119 + 80)), v53);
      v183 = v120;
      sub_1DF16184C(v53, &qword_1ECE0CBC8, &qword_1DF22CFA0);
      v121 = v180;
      v203 = *(v180 + 48);
      v122 = type metadata accessor for KVDatastore.MetadataType();
      v123 = v191;
      v124 = &v191[*(v122 + 24)];
      sub_1DF22A7D0();
      v125 = v182;
      v126 = v179;
      sub_1DF22B750();
      v127 = v123 + *(v122 + 20);
      sub_1DF22A760();
      *v124 = v125;
      *(v124 + 1) = v126;
      *&v203[v123] = v117;
      (*(v193 + 56))(v123, 0, 1, v121);
      swift_beginAccess();

      sub_1DF167040(v123, v60, v204);
      swift_endAccess();
    }

    __break(1u);
    goto LABEL_94;
  }

  v89 = *(v71 + 120);

  v90 = sub_1DF175254(v53, v204);
  if ((v91 & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  v190 = v53;
  v92 = v178;
  sub_1DF17A6A8(*(v88 + 56) + *(v193 + 72) * v90, v178, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v93 = v184;
  sub_1DF17A710(v92, v184, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v71 = *(v180 + 48);
  v60 = *(v93 + v71);
  if (v60[3] < 16)
  {
LABEL_33:
    v94 = type metadata accessor for KVDatastore.MetadataType();
    v95 = &v184[*(v94 + 24)];
    if (v181)
    {
      v96 = *v95;
      v97 = v95[1];
    }

    else
    {
      v148 = v201;
      *v95 = v200;
      v95[1] = v148;
    }

    v69 = v185;
    sub_1DF22A7D0();
    sub_1DF22B750();
    v149 = v192;
    v150 = v186;
    sub_1DF22A760();
    v151 = v197;
    (*(v197 + 8))(v69, v149);
    v152 = v184;
    (*(v151 + 40))(&v184[*(v94 + 20)], v150, v149);
    v53 = v187;
    sub_1DF22A7D0();
    v153 = (v188 + *(v199 + 48));
    (*(v151 + 32))();
    v154 = v195;
    v155 = v196;
    *v153 = v195;
    v153[1] = v155;
    v156 = v60[3];
    v157 = v156 + 1;
    if (!__OFADD__(v156, 1))
    {
      sub_1DF16573C(v154, v155);
      v158 = *(v152 + v71);
      result = swift_isUniquelyReferenced_nonNull_native();
      v159 = *(v152 + v71);
      v69 = v190;
      v160 = v194;
      if (v159[2] < v157 || (result & 1) == 0)
      {
        v161 = v184;
        result = sub_1DF178290(result, v157);
        v159 = *(v161 + v71);
      }

      v162 = *(v160 + 80);
      v163 = v159[4];
      v164 = v177;
      if (v163)
      {
        v165 = v163 - 1;
        v53 = v205;
        v71 = v191;
        if (!__OFSUB__(v163, 1))
        {
LABEL_86:
          v167 = v188;
          sub_1DF17A6A8(v188, v159 + ((v162 + 40) & ~v162) + v165 * *(v194 + 72), &qword_1ECE0CBC8, &qword_1DF22CFA0);
          v159[4] = v165;
          v168 = v159[3];
          v87 = __OFADD__(v168, 1);
          v169 = v168 + 1;
          if (!v87)
          {
            v159[3] = v169;
            sub_1DF16184C(v167, &qword_1ECE0CBC8, &qword_1DF22CFA0);
            v170 = v184;
            sub_1DF17A6A8(v184, v164, &qword_1ECE0CBB0, &qword_1DF22CF88);
            v171 = *(v180 + 48);
            v172 = *(v164 + v171);
            v173 = v164;
            v174 = v176;
            sub_1DF17A640(v173, v176, type metadata accessor for KVDatastore.MetadataType);
            *(v174 + v171) = v172;
            swift_beginAccess();
            sub_1DF17850C(v174, v69, v204, v71);
            sub_1DF16184C(v71, &qword_1ECE0CBE8, &qword_1DF22CFC0);
            swift_endAccess();

            return sub_1DF16184C(v170, &qword_1ECE0CBB0, &qword_1DF22CF88);
          }

          goto LABEL_95;
        }

        __break(1u);
      }

      v166 = v159[2];
      v165 = v166 - 1;
      v53 = v205;
      v71 = v191;
      if (__OFSUB__(v166, 1))
      {
        __break(1u);
        return result;
      }

      goto LABEL_86;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v69 = v204;
  v53 = v194;
  if (qword_1ED8E7530 != -1)
  {
LABEL_97:
    swift_once();
  }

  v203 = sub_1DF22A8C0();
  v128 = (v53 + 56);
  *&v129 = 136315138;
  v193 = v129;
  while (1)
  {
    __swift_project_value_buffer(v203, qword_1ED8E92C0);

    v132 = sub_1DF22A8A0();
    v133 = sub_1DF22B100();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v206 = v135;
      *v134 = v193;
      *(v134 + 4) = sub_1DF160728(v190, v69, &v206);
      _os_log_impl(&dword_1DF15A000, v132, v133, "List %s reached max element count. Dropping oldest element.", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v135);
      MEMORY[0x1E12D0B40](v135, -1, -1);
      v136 = v134;
      v53 = v194;
      MEMORY[0x1E12D0B40](v136, -1, -1);
    }

    v137 = v199;
    v138 = v202;
    if (!v60[3])
    {
      v130 = 1;
      v131 = v198;
      goto LABEL_65;
    }

    v139 = v184;
    v140 = *&v184[v71];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DF179338();
      v138 = v202;
    }

    v60 = *(v139 + v71);
    v141 = v60[3];
    v87 = __OFSUB__(v141, 1);
    v142 = v141 - 1;
    if (v87)
    {
      break;
    }

    v143 = v60[4] + v142;
    v144 = v60[2];
    if (v143 < v144)
    {
      v144 = 0;
    }

    sub_1DF17A710(v60 + ((*(v53 + 80) + 40) & ~*(v53 + 80)) + (v143 - v144) * *(v53 + 72), v138, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v145 = v60[3];
    v87 = __OFSUB__(v145, 1);
    v146 = v145 - 1;
    if (v87)
    {
      goto LABEL_89;
    }

    v60[3] = v146;
    v147 = v138;
    v131 = v198;
    sub_1DF17A710(v147, v198, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    v130 = 0;
LABEL_65:
    (*v128)(v131, v130, 1, v137);
    sub_1DF16184C(v131, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    if (v60[3] < 16)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  swift_once();
LABEL_18:
  v75 = sub_1DF22A8C0();
  __swift_project_value_buffer(v75, qword_1ED8E92C0);
  v76 = v182;

  v77 = sub_1DF22A8A0();
  v78 = sub_1DF22B0F0();

  v79 = os_log_type_enabled(v77, v78);
  v80 = v181;
  if (v79)
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v207 = v82;
    *v81 = 136315138;
    *(v81 + 4) = sub_1DF160728(v80, v76, &v207);
    _os_log_impl(&dword_1DF15A000, v77, v78, "Key already exists but is not accessible due wrong type (key: %s).", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x1E12D0B40](v82, -1, -1);
    MEMORY[0x1E12D0B40](v81, -1, -1);
  }

  v83 = v203;
  v84 = 2;
LABEL_61:
  *v83 = v84;
  LOBYTE(v207) = v84;
  sub_1DF1792A0();
  return swift_willThrowTypedImpl();
}

uint64_t sub_1DF173418(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v106 = a5;
  v109 = a3;
  v110 = a4;
  v107 = a1;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBE8, &qword_1DF22CFC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v100 = *(v8 - 8);
  v101 = v8;
  v9 = *(v100 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v98 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBF8, &qword_1DF22CFC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v92 - v20;
  v22 = sub_1DF22A800();
  v102 = *(v22 - 8);
  v23 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v103 = *(v26 - 8);
  v27 = *(v103 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v92 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v92 - v37;
  v39 = v112;
  result = sub_1DF16C5DC(v107, v108, v109, v110, v111);
  if (v39)
  {
    *v106 = v111[0];
    return result;
  }

  v96 = v36;
  v42 = v103;
  v95 = v33;
  v109 = result;
  v92 = v30;
  v112 = v41;
  v106 = v25;
  v93 = v19;
  v108 = v38;
  v94 = v21;
  v107 = v22;
  v110 = 0;
  v43 = v104;
  v44 = v105;
  swift_beginAccess();
  if (!*(*(v44 + 120) + 16))
  {
    goto LABEL_20;
  }

  v45 = *(v44 + 120);

  sub_1DF175254(v109, v112);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_20;
  }

  v48 = *(v44 + 120);
  if (!*(v48 + 16))
  {
    goto LABEL_20;
  }

  v49 = *(v44 + 120);

  v50 = sub_1DF175254(v109, v112);
  if ((v51 & 1) == 0)
  {

LABEL_20:

    return 0;
  }

  v52 = v96;
  sub_1DF17A6A8(*(v48 + 56) + *(v42 + 72) * v50, v96, &qword_1ECE0CBB0, &qword_1DF22CF88);

  v53 = v108;
  sub_1DF17A710(v52, v108, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v96 = type metadata accessor for KVDatastore.MetadataType();
  v54 = *(v96 + 5);
  v55 = v106;
  sub_1DF22A7D0();
  LOBYTE(v54) = sub_1DF22A780();
  v56 = v102 + 8;
  v103 = *(v102 + 8);
  (v103)(v55, v107);
  if ((v54 & 1) == 0 || (v57 = *(v26 + 48), !*(*(v53 + v57) + 24)))
  {
    swift_beginAccess();
    sub_1DF175524(v109, v112, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0, v43);
    sub_1DF16184C(v43, &qword_1ECE0CBE8, &qword_1DF22CFC0);
    swift_endAccess();

    sub_1DF16184C(v53, &qword_1ECE0CBB0, &qword_1DF22CF88);
    return 0;
  }

  v102 = v56;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DF179338();
  }

  v58 = *(v53 + v57);
  v59 = v58[3];
  v60 = __OFSUB__(v59, 1);
  v61 = v59 - 1;
  if (v60)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v62 = v99;
  v63 = v100;
  v64 = v58[4] + v61;
  v65 = v58[2];
  if (v64 < v65)
  {
    v65 = 0;
  }

  result = sub_1DF17A710(v58 + ((*(v100 + 80) + 40) & ~*(v100 + 80)) + (v64 - v65) * *(v100 + 72), v99, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v66 = v58[3];
  v60 = __OFSUB__(v66, 1);
  v67 = v66 - 1;
  v68 = v95;
  if (v60)
  {
    goto LABEL_27;
  }

  v69 = v26;
  v58[3] = v67;
  v70 = v94;
  sub_1DF17A710(v62, v94, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v71 = v101;
  (*(v63 + 56))(v70, 0, 1, v101);
  sub_1DF17A6A8(v108, v68, &qword_1ECE0CBB0, &qword_1DF22CF88);
  v72 = *(v69 + 48);
  v73 = *(v68 + v72);
  v74 = v68;
  v75 = v92;
  sub_1DF17A640(v74, v92, type metadata accessor for KVDatastore.MetadataType);
  *(v75 + v72) = v73;
  swift_beginAccess();
  sub_1DF17850C(v75, v109, v112, v43);
  sub_1DF16184C(v43, &qword_1ECE0CBE8, &qword_1DF22CFC0);
  swift_endAccess();

  v76 = v93;
  sub_1DF17A6A8(v70, v93, &qword_1ECE0CBF8, &qword_1DF22CFC8);
  if ((*(v63 + 48))(v76, 1, v71) == 1)
  {
    sub_1DF16184C(v70, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    sub_1DF16184C(v108, &qword_1ECE0CBB0, &qword_1DF22CF88);
    sub_1DF16184C(v76, &qword_1ECE0CBF8, &qword_1DF22CFC8);
    return 0;
  }

  v77 = v98;
  sub_1DF17A710(v76, v98, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  sub_1DF22A7D0();
  sub_1DF22A7F0();
  v79 = v78;
  v80 = v55;
  v81 = v107;
  v82 = v103;
  (v103)(v80, v107);
  v83 = v108;
  v84 = (v108 + *(v96 + 6));
  v85 = *v84;
  v86 = v84[1];
  v87 = sub_1DF22B750();
  sub_1DF16184C(v70, &qword_1ECE0CBF8, &qword_1DF22CFC8);
  sub_1DF16184C(v83, &qword_1ECE0CBB0, &qword_1DF22CF88);
  if (v79 >= v87)
  {
    sub_1DF16184C(v77, &qword_1ECE0CBC8, &qword_1DF22CFA0);
    return 0;
  }

  v88 = v97;
  sub_1DF17A710(v77, v97, &qword_1ECE0CBC8, &qword_1DF22CFA0);
  v89 = (v88 + *(v101 + 48));
  v90 = *v89;
  v91 = v89[1];
  v82(v88, v81);
  return v90;
}

uint64_t sub_1DF173D00(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5)
{
  v51 = a5;
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v6 = sub_1DF22A800();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v48 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v24 = v56;
  result = sub_1DF16C5DC(a1, v52, v53, v54, v55);
  if (v24)
  {
    *v51 = v55[0];
    return result;
  }

  v52 = v12;
  v53 = result;
  v56 = v26;
  v51 = v21;
  v48 = v23;
  v54 = 0;
  v27 = v50;
  swift_beginAccess();
  if (!*(*(v27 + 120) + 16))
  {
    goto LABEL_9;
  }

  v28 = *(v27 + 120);

  sub_1DF175254(v53, v56);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    goto LABEL_9;
  }

  v31 = *(v27 + 120);
  if (*(v31 + 16) && (v32 = *(v27 + 120), , v33 = sub_1DF175254(v53, v56), v35 = v34, , (v35 & 1) != 0))
  {
    v36 = v51;
    sub_1DF17A6A8(*(v31 + 56) + *(v14 + 72) * v33, v51, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v37 = v48;
    sub_1DF17A710(v36, v48, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v38 = v18;
    sub_1DF17A6A8(v37, v18, &qword_1ECE0CBB0, &qword_1DF22CF88);
    v39 = *&v18[*(v13 + 48)];

    v40 = type metadata accessor for KVDatastore.MetadataType();
    v41 = v49;
    v42 = v52;
    v43 = v6;
    (*(v49 + 16))(v52, &v18[*(v40 + 20)], v6);
    sub_1DF169620(v18);
    sub_1DF22A7D0();
    v44 = sub_1DF22A780();
    v45 = *(v41 + 8);
    v45(v10, v43);
    v45(v42, v43);
    if (v44)
    {
      v46 = v48;
      sub_1DF17A6A8(v48, v38, &qword_1ECE0CBB0, &qword_1DF22CF88);
      v47 = *(*(v38 + *(v13 + 48)) + 24);
      sub_1DF16184C(v46, &qword_1ECE0CBB0, &qword_1DF22CF88);

      sub_1DF169620(v38);
      return v47;
    }

    sub_1DF16184C(v48, &qword_1ECE0CBB0, &qword_1DF22CF88);
  }

  else
  {
LABEL_9:
  }

  return 0;
}

uint64_t sub_1DF17411C@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[16];
  v3 = v1[17];
  swift_beginAccess();
  v5 = *(v1[14] + 16);
  result = swift_beginAccess();
  v7 = *(v1[15] + 16);
  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = sub_1DF16A784();
  v10 = *(v1[14] + 16);
  v11 = type metadata accessor for KVDatastore.MetadataType();
  v12 = *(v11 - 8);
  result = v11 - 8;
  v13 = *(v12 + 64);
  v14 = v10 * v13;
  if ((v10 * v13) >> 64 != (v10 * v13) >> 63)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = *(v1[15] + 16);
  v16 = v15 * v13;
  if ((v15 * v13) >> 64 != (v15 * v13) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = __OFADD__(v14, v16);
  v18 = v14 + v16;
  if (v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = __OFADD__(v9, v18);
  v19 = v9 + v18;
  if (v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1DF16AA60();
  v20 = v19 + result;
  if (!__OFADD__(v19, result))
  {
    v21 = sub_1DF16A784();
    result = sub_1DF16AA60();
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = xmmword_1DF22CF30;
    *(a1 + 32) = v8;
    *(a1 + 40) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t KVDatastore.deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KVDatastore.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DF1742D4(uint64_t result)
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

  result = sub_1DF174610(result, v11, 1, v3);
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

uint64_t sub_1DF1743C8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1DF174E54(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_1ECE0CCE8, &qword_1DF22D6E8, type metadata accessor for TaskTelemetry);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TaskTelemetry(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1DF174518(uint64_t result)
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

  result = sub_1DF174B0C(result, v11, 1, v3);
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

char *sub_1DF174610(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
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

char *sub_1DF174730(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C848, &unk_1DF22CA00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF1748B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1DF17499C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD28, &qword_1DF22D728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD30, &unk_1DF22D730);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF174B0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD8, &unk_1DF22D6D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1DF174C98(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

size_t sub_1DF174E54(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1DF17509C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1DF1751D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0C8D0, &qword_1DF22CA28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

unint64_t sub_1DF175254(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  v6 = sub_1DF22B6F0();

  return sub_1DF17536C(a1, a2, v6);
}

unint64_t sub_1DF1752CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  v10 = sub_1DF22B6F0();

  return sub_1DF175424(a1, a2, a3, a4, v10);
}

unint64_t sub_1DF17536C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1DF22B620())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DF175424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DF22B620() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DF22B620() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1DF175524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = *v7;
  v15 = sub_1DF175254(a1, a2);
  if (v16)
  {
    v17 = v15;
    v18 = *v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v12;
    v31 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF175E10(a3, a4, a5, a6);
      v20 = v31;
    }

    v21 = *(*(v20 + 48) + 16 * v17 + 8);

    v22 = *(v20 + 56);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v30 = *(v23 - 8);
    sub_1DF17A710(v22 + *(v30 + 72) * v17, a7, a3, a4);
    sub_1DF175BCC(v17, v20, a3, a4);
    *v12 = v20;
    v24 = *(v30 + 56);
    v25 = a7;
    v26 = 0;
    v27 = v23;
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v24 = *(*(v28 - 8) + 56);
    v27 = v28;
    v25 = a7;
    v26 = 1;
  }

  return v24(v25, v26, 1, v27);
}

uint64_t sub_1DF1756BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DF175254(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF1764F8();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1DF22AA80();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1DF1759E0(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1DF22AA80();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1DF17582C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DF175254(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DF176778();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1DF175BCC(v9, v12, &qword_1ECE0CD38, &unk_1DF2387C0);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_1DF1759E0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1DF22B230() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1DF22B6C0();

      sub_1DF22AD20();
      v13 = sub_1DF22B6F0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1DF22AA80() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1DF175BCC(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_1DF22B230() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_1DF22B6C0();

      sub_1DF22AD20();
      v17 = sub_1DF22B6F0();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1DF175E10(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v41 = a1;
  v42 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *v4;
  v12 = sub_1DF22B3D0();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v7;
    v38 = (v11 + 64);
    if (v13 != v11 || result >= v11 + 64 + 8 * v15)
    {
      result = memmove(result, v38, 8 * v15);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = (*(v11 + 48) + 16 * v26);
        v29 = *v28;
        v30 = v28[1];
        v31 = v39;
        v32 = *(v40 + 72) * v26;
        v34 = v41;
        v33 = v42;
        sub_1DF17A6A8(*(v11 + 56) + v32, v39, v41, v42);
        v35 = v43;
        v36 = (*(v43 + 48) + v27);
        *v36 = v29;
        v36[1] = v30;
        sub_1DF17A710(v31, *(v35 + 56) + v32, v34, v33);

        v21 = v44;
      }

      while (v44);
    }

    v24 = v17;
    v13 = v43;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v37;
        goto LABEL_21;
      }

      v25 = *(v38 + v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v44 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

id sub_1DF176080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA0, &qword_1DF22D7A0);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF176200()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCD0, &qword_1DF22D6C8);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = *(v2 + 56) + v17;
        v24 = *(v23 + 16);
        v25 = *(v23 + 24);
        v26 = (*(v4 + 48) + v17);
        v27 = *v23;
        *v26 = v20;
        v26[1] = v19;
        v26[2] = v21;
        v26[3] = v22;
        v28 = *(v4 + 56) + v17;
        *v28 = v27;
        *(v28 + 16) = v24;
        *(v28 + 24) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1DF176390()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD78, &qword_1DF22D770);
  v2 = *v0;
  v3 = sub_1DF22B3D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1DF1764F8()
{
  v1 = v0;
  v36 = sub_1DF22AA80();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD58, &qword_1DF22FF90);
  v4 = *v0;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1DF176778()
{
  v1 = v0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD38, &unk_1DF2387C0);
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CD40, &unk_1DF22D740);
  v4 = *v0;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1DF176A28(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_1DF176B98()
{
  v1 = v0;
  v2 = type metadata accessor for MLHostAnalytics();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CCF0, &unk_1DF22D6F0);
  v5 = *v0;
  v6 = sub_1DF22B3D0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_1DF17A5D8(v22 + v28, v33, type metadata accessor for MLHostAnalytics);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_1DF17A640(v27, *(v29 + 56) + v28, type metadata accessor for MLHostAnalytics);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1DF176E30(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DF22B3D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1DF176F90(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v13 = swift_slowAlloc();
  v14 = sub_1DF177E18(v13, v7, v5, a3);
  result = MEMORY[0x1E12D0B40](v13, -1, -1);
  if (!v3)
  {
    result = v14;
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF177100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v25 = a6;
  v13 = a1;
  v26 = *MEMORY[0x1E69E9840];
  v14 = *(a3 + 32);
  v15 = ((1 << v14) + 63) >> 6;
  v16 = 8 * v15;
  if ((v14 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    v23 = a5;
    v24 = &v23;
    MEMORY[0x1EEE9AC00](a1);
    bzero(&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0), v16);
    result = sub_1DF177BCC((&v23 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0)), v15, a3, v13, a2, a4, v23, v25, a7);
    if (v7)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  v24 = (((1 << v14) + 63) >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v15 = v24;
    goto LABEL_2;
  }

  v19 = swift_slowAlloc();
  v20 = a3;
  v21 = v19;
  v22 = sub_1DF177EA0(v19, v24, v20, v13, a2, a4, a5, v25, a7);
  result = MEMORY[0x1E12D0B40](v21, -1, -1);
  if (!v7)
  {
    result = v22;
  }

LABEL_4:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DF1772C8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v46 = a1;
  v61 = sub_1DF22A800();
  v4 = *(v61 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v61);
  v60 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v44 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB8, &qword_1DF22CF90);
  v9 = *(*(v58 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v58);
  v57 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v54 = *(v13 - 8);
  v55 = v13;
  v14 = *(v54 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v53 = &v44 - v16;
  v17 = 0;
  v62 = a3;
  v18 = *(a3 + 64);
  v47 = 0;
  v48 = a3 + 64;
  v19 = 1 << *(a3 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v49 = (v19 + 63) >> 6;
  v51 = (v4 + 8);
  v52 = (v4 + 16);
  v22 = v56;
  while (v21)
  {
    v23 = __clz(__rbit64(v21));
    v64 = (v21 - 1) & v21;
LABEL_11:
    v26 = v23 | (v17 << 6);
    v27 = v62[7];
    v28 = (v62[6] + 16 * v26);
    v30 = *v28;
    v29 = v28[1];
    v31 = v53;
    v32 = *(v54 + 72);
    v50 = v26;
    sub_1DF17A6A8(v27 + v32 * v26, v53, &qword_1ECE0CBB0, &qword_1DF22CF88);
    *v22 = v30;
    v22[1] = v29;
    v63 = v29;
    v33 = v58;
    sub_1DF17A6A8(v31, v22 + *(v58 + 48), &qword_1ECE0CBB0, &qword_1DF22CF88);
    v34 = v57;
    sub_1DF17A6A8(v22, v57, &qword_1ECE0CBB8, &qword_1DF22CF90);
    v35 = *(v34 + 8);
    swift_bridgeObjectRetain_n();

    v36 = v34 + *(v33 + 48);
    v37 = *(v36 + *(v55 + 48));

    v38 = type metadata accessor for KVDatastore.MetadataType();
    v39 = v59;
    v40 = v61;
    (*v52)(v59, v36 + *(v38 + 20), v61);
    sub_1DF169620(v36);
    v41 = v60;
    sub_1DF22A7D0();
    LOBYTE(v36) = sub_1DF22A780();
    v42 = *v51;
    (*v51)(v41, v40);
    v42(v39, v40);
    sub_1DF16184C(v22, &qword_1ECE0CBB8, &qword_1DF22CF90);
    sub_1DF16184C(v31, &qword_1ECE0CBB0, &qword_1DF22CF88);

    v21 = v64;
    if (v36)
    {
      *(v46 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v46, v45, v47, v62, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
      }
    }
  }

  v24 = v17;
  while (1)
  {
    v17 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v17 >= v49)
    {
      return sub_1DF177F68(v46, v45, v47, v62, &qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
    }

    v25 = *(v48 + 8 * v17);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v64 = (v25 - 1) & v25;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF177748(unint64_t *a1, uint64_t a2, void *a3)
{
  v46 = a2;
  v47 = a1;
  v60 = sub_1DF22A800();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v60);
  v59 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v45 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC0, &qword_1DF22CF98);
  v9 = *(*(v57 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v55 = &v45 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBA8, &qword_1DF22CF80);
  v53 = *(v13 - 8);
  v54 = v13;
  v14 = *(v53 + 64);
  result = MEMORY[0x1EEE9AC00](v13);
  v64 = &v45 - v16;
  v17 = 0;
  v61 = a3;
  v20 = a3[8];
  v19 = a3 + 8;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v48 = 0;
  v49 = (v21 + 63) >> 6;
  v51 = (v4 + 8);
  v52 = (v4 + 16);
  v24 = v55;
  while (v23)
  {
    v25 = __clz(__rbit64(v23));
    v63 = (v23 - 1) & v23;
LABEL_11:
    v28 = v25 | (v17 << 6);
    v29 = v61[7];
    v30 = (v61[6] + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = *(v53 + 72);
    v50 = v28;
    v34 = v64;
    sub_1DF17A6A8(v29 + v33 * v28, v64, &qword_1ECE0CBA8, &qword_1DF22CF80);
    *v24 = v31;
    v24[1] = v32;
    v62 = v32;
    v35 = v57;
    sub_1DF17A6A8(v34, v24 + *(v57 + 48), &qword_1ECE0CBA8, &qword_1DF22CF80);
    v36 = v56;
    sub_1DF17A6A8(v24, v56, &qword_1ECE0CBC0, &qword_1DF22CF98);
    v37 = *(v36 + 8);
    swift_bridgeObjectRetain_n();

    v38 = v36 + *(v35 + 48);
    sub_1DF1657C8(*(v38 + *(v54 + 48)), *(v38 + *(v54 + 48) + 8));
    v39 = type metadata accessor for KVDatastore.MetadataType();
    v40 = v58;
    v41 = v60;
    (*v52)(v58, v38 + *(v39 + 20), v60);
    sub_1DF169620(v38);
    v42 = v59;
    sub_1DF22A7D0();
    LOBYTE(v38) = sub_1DF22A780();
    v43 = *v51;
    (*v51)(v42, v41);
    v43(v40, v41);
    sub_1DF16184C(v24, &qword_1ECE0CBC0, &qword_1DF22CF98);
    sub_1DF16184C(v64, &qword_1ECE0CBA8, &qword_1DF22CF80);

    v23 = v63;
    if (v38)
    {
      *(v47 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
      if (__OFADD__(v48++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v47, v46, v48, v61, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
      }
    }
  }

  v26 = v17;
  while (1)
  {
    v17 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v17 >= v49)
    {
      return sub_1DF177F68(v47, v46, v48, v61, &qword_1ECE0CBA8, &qword_1DF22CF80, &qword_1ECE0CDB8, &qword_1DF22D7B8);
    }

    v27 = v19[v17];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v63 = (v27 - 1) & v27;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DF177BCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v36 = a8;
  v37 = a1;
  v43 = a4;
  v34 = a2;
  v35 = a9;
  v45 = a6;
  v46 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  result = MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v34 - v13;
  v14 = 0;
  v44 = a3;
  v15 = *(a3 + 64);
  v38 = 0;
  v39 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v47 = (v18 - 1) & v18;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = v45;
    v25 = v44[7];
    v26 = (v44[6] + 16 * v23);
    v27 = v26[1];
    v48[0] = *v26;
    v48[1] = v27;
    v28 = v41;
    v29 = *(v42 + 72);
    v40 = v23;
    v30 = v46;
    sub_1DF17A6A8(v25 + v29 * v23, v41, v45, v46);

    v31 = v49;
    v32 = v43(v48, v28);
    sub_1DF16184C(v28, v24, v30);

    v49 = v31;
    if (v31)
    {
      return result;
    }

    v18 = v47;
    if (v32)
    {
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_1DF177F68(v37, v34, v38, v44, v45, v46, v36, v35);
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_1DF177F68(v37, v34, v38, v44, v45, v46, v36, v35);
    }

    v22 = *(v39 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v47 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DF177E18(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_1DF177EA0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v10 = result;
      v17 = a2;
      v11 = a8;
      v12 = a7;
      v13 = a6;
      v14 = a5;
      v15 = a4;
      bzero(result, 8 * a2);
      result = v10;
      a2 = v17;
      a4 = v15;
      a5 = v14;
      a6 = v13;
      a7 = v12;
      a8 = v11;
    }

    v16 = sub_1DF177BCC(result, a2, a3, a4, a5, a6, a7, a8, a9);

    return v16;
  }

  return result;
}

uint64_t sub_1DF177F68(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v55 = a5;
  v56 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v51 = *(v14 - 8);
  v15 = *(v51 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v48 - v18;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  result = sub_1DF22B3F0();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v23 = result + 64;
  v48 = a4;
  v49 = result;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v52 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[7];
    v29 = (a4[6] + 16 * v27);
    v30 = *v29;
    v31 = v29[1];
    v32 = v50;
    v53 = *(v51 + 72);
    v34 = v55;
    v33 = v56;
    sub_1DF17A6A8(v28 + v53 * v27, v50, v55, v56);
    v35 = v34;
    v36 = v30;
    sub_1DF17A710(v32, v54, v35, v33);
    v20 = v49;
    v37 = *(v49 + 40);
    sub_1DF22B6C0();

    sub_1DF22AD20();
    result = sub_1DF22B6F0();
    v38 = -1 << *(v20 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v23 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v23 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v23 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v46 = (*(v20 + 48) + 16 * v41);
    *v46 = v36;
    v46[1] = v31;
    result = sub_1DF17A710(v54, *(v20 + 56) + v41 * v53, v55, v56);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v48;
    v21 = v52;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v52 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

size_t sub_1DF178290(char a1, uint64_t a2)
{
  v5 = *v2;
  v6 = (*v2 + 16);
  v7 = *v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v9 = v8;
  if (v7 >= a2)
  {
    v18 = *(v8 - 8);
    v19 = *(v18 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
    v20 = *(v18 + 72);
    v15 = swift_allocObject();
    v21 = *(v5 + 24);
    *(v15 + 16) = v7;
    *(v15 + 24) = v21;
    if (v21 >= 1)
    {
      sub_1DF178D74(v15 + 16, v15 + ((v19 + 40) & ~v19), v6, v5 + ((v19 + 40) & ~v19));
    }

    goto LABEL_19;
  }

  sub_1DF22A890();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  if (a1)
  {
    v12 = *(v5 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
    v13 = *(v10 + 72);
    v14 = (v11 + 40) & ~v11;
    v15 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v15);
    if (v13)
    {
      if (result - v14 != 0x8000000000000000 || v13 != -1)
      {
        *(v15 + 16) = (result - v14) / v13;
        *(v15 + 24) = v12;
        *(v15 + 32) = 0;
        if (v12 >= 1)
        {
          sub_1DF178928(v15 + 16, v15 + v14, v6, v5 + v14);
          *(v5 + 24) = 0;
        }

LABEL_19:

        *v2 = v15;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v22 = *(v10 + 72);
  v23 = (v11 + 40) & ~v11;
  v15 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v15);
  if (!v22)
  {
    goto LABEL_21;
  }

  if (result - v23 != 0x8000000000000000 || v22 != -1)
  {
    v25 = *(v5 + 24);
    *(v15 + 16) = (result - v23) / v22;
    *(v15 + 24) = v25;
    *(v15 + 32) = 0;
    if (v25 >= 1)
    {
      sub_1DF178C00(v15 + 16, v15 + v23, v6, v5 + v23);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1DF17850C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  v14 = sub_1DF175254(a2, a3);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v15;
  if (v13[3] < v19)
  {
    sub_1DF1A5A80(v19, isUniquelyReferenced_nonNull_native);
    v14 = sub_1DF175254(a2, a3);
    if ((v5 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = sub_1DF22B660();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = v14;
    sub_1DF175E10(&qword_1ECE0CBB0, &qword_1DF22CF88, &qword_1ECE0CDB0, &qword_1DF22D7B0);
    v14 = v27;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DF1A84DC(v14, a2, a3, a1, v13);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
    (*(*(v28 - 8) + 56))(a4, 1, 1, v28);

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v13[7];
  v22 = v14;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBB0, &qword_1DF22CF88);
  v24 = *(v23 - 8);
  v25 = *(v24 + 72) * v22;
  sub_1DF17A710(v21 + v25, a4, &qword_1ECE0CBB0, &qword_1DF22CF88);
  sub_1DF17A710(a1, v13[7] + v25, &qword_1ECE0CBB0, &qword_1DF22CF88);
  result = (*(v24 + 56))(a4, 0, 1, v23);
LABEL_11:
  *v6 = v13;
  return result;
}

size_t sub_1DF178760()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 40) & ~*(v0 + 80);
  v3 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v3);
  if (v1)
  {
    if (result - v2 != 0x8000000000000000 || v1 != -1)
    {
      v3[3] = 0;
      v3[4] = 0;
      v3[2] = (result - v2) / v1;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DF178848(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
        result = sub_1DF17A6A8(a3, a2 + *(*(v10 - 8) + 72) * v5, &qword_1ECE0CBC8, &qword_1DF22CFA0);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1DF178928(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = a3[1];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  if (v5 < v8)
  {
    v10 = v8 - v5;
    if (!__OFSUB__(v8, v5))
    {
      v11 = v5;
      v12 = a4;
      goto LABEL_6;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = 0;
  v10 = 0;
  v11 = v8;
LABEL_6:
  if (v10)
  {
    v13 = v5 < v8;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v11 < 1)
  {
    v11 = 0;
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (!a4)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = a4 + *(v9 + 72) * v4;
  if (v15 > a2 || v15 + *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72) * v11 <= a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v15 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
    if (v5 >= v8)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v5 >= v8)
  {
    return;
  }

LABEL_23:
  if (v10 < 1)
  {
    return;
  }

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72);
  v17 = a2 + v16 * v11;
  v18 = v14 + v16 * v10;
  if (v17 < v14 || v17 >= v18)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v17 != v14)
  {
    swift_arrayInitWithTakeBackToFront();
  }
}

void *sub_1DF178B34@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result[2];
  v5 = *result - v4;
  if (__OFSUB__(*result, v4))
  {
    __break(1u);
  }

  else
  {
    v7 = result[1];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    v10 = *(v8 - 8);
    result = (v8 - 8);
    v9 = v10;
    if (v5 >= v7)
    {
      v11 = 0;
      v12 = 0;
      v13 = v7;
LABEL_6:
      *a3 = a2 + *(v9 + 72) * v4;
      *(a3 + 8) = v13;
      *(a3 + 16) = v11;
      *(a3 + 24) = v12;
      *(a3 + 32) = v5 >= v7;
      return result;
    }

    v12 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v13 = v5;
      v11 = a2;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DF178C00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 < 1)
  {
LABEL_5:
    if (v5 >= v7)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_8:
  if (!a4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = a4 + *(v8 + 72) * v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  swift_arrayInitWithCopy();
  if (v5 >= v7)
  {
    return;
  }

LABEL_10:
  if (v9 < 1)
  {
    return;
  }

  if (!v10)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72);
  swift_arrayInitWithCopy();
}

void sub_1DF178D74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = a3[1];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = a4;
      if (v5 < 1)
      {
        goto LABEL_9;
      }

LABEL_7:
      if (a4)
      {
        v11 = a4 + *(v8 + 72) * v4;
        v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0) - 8) + 72);
        swift_arrayInitWithCopy();
        goto LABEL_9;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = 0;
  v9 = 0;
  if (v7 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
      swift_arrayInitWithCopy();
      return;
    }

LABEL_17:
    __break(1u);
  }
}

void *sub_1DF178EE4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DF17903C(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_1DF178B34(a1, a2, &v18);
  v7 = v19;
  if (v19 < 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18)
  {
    v8 = v19 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    result = swift_arrayInitWithCopy();
  }

  v10 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_22;
  }

  *a4 = v10;
  if (v22)
  {
    return result;
  }

  v11 = v21;
  if (__OFADD__(v7, v21))
  {
    goto LABEL_23;
  }

  v12 = v21;
  if (v7 + v21 < v7)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v20;
  v14 = *a3;
  if (v14)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    v16 = *(v15 - 8);
    result = v15 - 8;
    v17 = v14 + *(v16 + 72) * v7;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else if (!v20)
  {
    goto LABEL_18;
  }

  if (v11)
  {
    if (v12 < v11)
    {
LABEL_26:
      __break(1u);
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
    result = swift_arrayInitWithCopy();
    v10 = *a4;
  }

LABEL_18:
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *a4 = v10 + v11;
  return result;
}

uint64_t sub_1DF1791A4()
{
  v1 = *v0;
  v3 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  v6 = __OFADD__(v2, v3);
  v4 = v2 + v3;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 < 0)
  {
LABEL_7:
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(v1 + 16);
    v6 = __OFADD__(v4, v7);
    v4 += v7;
    if (!v6)
    {
      goto LABEL_9;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  v5 = *(v1 + 16);
  v6 = __OFSUB__(v4, v5);
  v1 = v4 - v5;
  if (v1 < 0 == v6)
  {
    v4 = v1;
    if (v6)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

LABEL_9:
  if (!v4 || v4 == v0[1])
  {
    return 0;
  }

  v0[1] = 0;
  v0[2] = v4;
  return 1;
}

unint64_t sub_1DF17924C()
{
  result = qword_1ED8E7340;
  if (!qword_1ED8E7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8E7340);
  }

  return result;
}

unint64_t sub_1DF1792A0()
{
  result = qword_1ECE0CBF0;
  if (!qword_1ECE0CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CBF0);
  }

  return result;
}

uint64_t sub_1DF1792F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DF22A800();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF179338()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  v3 = *(v1 + 16);
  v4 = *(v2 - 8);
  v5 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDA8, &qword_1DF22D7A8);
  v6 = *(v4 + 72);
  v7 = swift_allocObject();
  v8 = *(v1 + 24);
  *(v7 + 16) = v3;
  *(v7 + 24) = v8;
  if (v8 >= 1)
  {
    sub_1DF178D74(v7 + 16, v7 + ((v5 + 40) & ~v5), (v1 + 16), v1 + ((v5 + 40) & ~v5));
  }

  *v0 = v7;
  return result;
}

unint64_t sub_1DF179440()
{
  result = qword_1ECE0CC00;
  if (!qword_1ECE0CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC00);
  }

  return result;
}

unint64_t sub_1DF1794C8()
{
  result = qword_1ECE0CC18;
  if (!qword_1ECE0CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC18);
  }

  return result;
}

uint64_t sub_1DF17954C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KVDatastoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF179704(uint64_t a1, int a2)
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

uint64_t sub_1DF179724(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF179DA8()
{
  result = sub_1DF22A800();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KVDatastoreInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KVDatastoreInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DF179F98()
{
  result = qword_1ECE0CC30;
  if (!qword_1ECE0CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC30);
  }

  return result;
}

unint64_t sub_1DF179FF0()
{
  result = qword_1ECE0CC38;
  if (!qword_1ECE0CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC38);
  }

  return result;
}

unint64_t sub_1DF17A048()
{
  result = qword_1ECE0CC40;
  if (!qword_1ECE0CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC40);
  }

  return result;
}

unint64_t sub_1DF17A0A0()
{
  result = qword_1ECE0CC48;
  if (!qword_1ECE0CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC48);
  }

  return result;
}

unint64_t sub_1DF17A0F8()
{
  result = qword_1ECE0CC50;
  if (!qword_1ECE0CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC50);
  }

  return result;
}

unint64_t sub_1DF17A150()
{
  result = qword_1ECE0CC58;
  if (!qword_1ECE0CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC58);
  }

  return result;
}

uint64_t sub_1DF17A1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A695378616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726970784578616DLL && a2 == 0xED00006E6F697461 || (sub_1DF22B620() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43746E6572727563 && a2 == 0xEC000000746E756FLL || (sub_1DF22B620() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x53746E6572727563 && a2 == 0xEB00000000657A69 || (sub_1DF22B620() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657A69537379656BLL && a2 == 0xE800000000000000 || (sub_1DF22B620() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69537365756C6176 && a2 == 0xEA0000000000657ALL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1DF22B620();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1DF17A404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1DF22B620() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEE00657461446E6FLL || (sub_1DF22B620() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x694C6F54656D6974 && a2 == 0xEA00000000006576)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF22B620();

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

unint64_t sub_1DF17A530()
{
  result = qword_1ECE0CC60;
  if (!qword_1ECE0CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC60);
  }

  return result;
}

unint64_t sub_1DF17A584()
{
  result = qword_1ECE0CC68;
  if (!qword_1ECE0CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CC68);
  }

  return result;
}

uint64_t sub_1DF17A5D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF17A640(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF17A6A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF17A710(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DF17A778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CBC8, &qword_1DF22CFA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LedgerState.index.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LedgerState.index.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerState.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LedgerState() + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LedgerState()
{
  result = qword_1ECE0CE48;
  if (!qword_1ECE0CE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LedgerState.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LedgerState() + 20);
  v4 = sub_1DF22A800();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LedgerState.init(index:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LedgerState() + 20);
  v7 = sub_1DF22A800();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t static LedgerState.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1DF22B620() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for LedgerState() + 20);

  return sub_1DF22A7B0();
}

uint64_t sub_1DF17AB10()
{
  if (*v0)
  {
    result = 0x6D617473656D6974;
  }

  else
  {
    result = 0x7865646E69;
  }

  *v0;
  return result;
}

uint64_t sub_1DF17AB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF17AC2C(uint64_t a1)
{
  v2 = sub_1DF17AE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17AC68(uint64_t a1)
{
  v2 = sub_1DF17AE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDC8, &qword_1DF22D7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17AE5C();
  sub_1DF22B740();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1DF22B580();
  if (!v2)
  {
    v13 = *(type metadata accessor for LedgerState() + 20);
    v15[14] = 1;
    sub_1DF22A800();
    sub_1DF17C310(&qword_1ECE0C728, MEMORY[0x1E6969530]);
    sub_1DF22B5C0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DF17AE5C()
{
  result = qword_1ECE0CDD0;
  if (!qword_1ECE0CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDD0);
  }

  return result;
}

uint64_t LedgerState.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DF22AD20();
  v3 = *(type metadata accessor for LedgerState() + 20);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530]);
  return sub_1DF22AC30();
}

uint64_t LedgerState.hashValue.getter()
{
  sub_1DF22B6C0();
  v1 = *v0;
  v2 = v0[1];
  sub_1DF22AD20();
  v3 = *(type metadata accessor for LedgerState() + 20);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t LedgerState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1DF22A800();
  v20 = *(v23 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDE0, &qword_1DF22D7D8);
  v22 = *(v24 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v19 - v8;
  v10 = type metadata accessor for LedgerState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17AE5C();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v10;
  v16 = v22;
  v15 = v23;
  v26 = 0;
  *v13 = sub_1DF22B4A0();
  v13[1] = v17;
  v25 = 1;
  sub_1DF17C310(&qword_1ED8E6BE0, MEMORY[0x1E6969530]);
  sub_1DF22B4E0();
  (*(v16 + 8))(v9, v24);
  (*(v20 + 32))(v13 + *(v19 + 20), v6, v15);
  sub_1DF17B4F4(v13, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DF17B558(v13);
}

uint64_t sub_1DF17B310@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DF17B31C(uint64_t a1)
{
  sub_1DF22B6C0();
  v3 = *v1;
  v4 = v1[1];
  sub_1DF22AD20();
  v5 = *(a1 + 20);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17B3C4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1DF22AD20();
  v6 = *(a2 + 20);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530]);
  return sub_1DF22AC30();
}

uint64_t sub_1DF17B450(uint64_t a1, uint64_t a2)
{
  sub_1DF22B6C0();
  v4 = *v2;
  v5 = v2[1];
  sub_1DF22AD20();
  v6 = *(a2 + 20);
  sub_1DF22A800();
  sub_1DF17C310(&qword_1ECE0CDD8, MEMORY[0x1E6969530]);
  sub_1DF22AC30();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17B4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LedgerState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF17B558(uint64_t a1)
{
  v2 = type metadata accessor for LedgerState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DF17B5E4(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DF22B620() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1DF22A7B0();
}

uint64_t LedgerTransition.start.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LedgerTransition.start.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LedgerTransition.end.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LedgerTransition.end.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

LighthouseBackground::LedgerTransition __swiftcall LedgerTransition.init(start:end:)(Swift::String start, Swift::String end)
{
  *v2 = start;
  v2[1] = end;
  result.end = end;
  result.start = start;
  return result;
}

uint64_t LedgerTransition.description.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v1, v2);
  return v4;
}

uint64_t LedgerTransition.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1DF22B780();
  sub_1DF17924C();
  v6 = sub_1DF22B1C0();

  v8 = v6[2];
  if (v8)
  {
    if (v8 != 1)
    {
      v10 = v6[4];
      v9 = v6[5];
      v12 = v6[6];
      v11 = v6[7];

      result = (*(*(a2 - 8) + 8))(a1, a2);
      *a3 = v10;
      a3[1] = v9;
      a3[2] = v12;
      a3[3] = v11;
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

uint64_t LedgerTransition.codingKey.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v3, v4);
  a1[3] = &type metadata for LedgerTransitionCodingKey;
  a1[4] = sub_1DF17B9A4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v6;
  *(result + 24) = v7;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

unint64_t sub_1DF17B9A4()
{
  result = qword_1ECE0CDE8;
  if (!qword_1ECE0CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDE8);
  }

  return result;
}

uint64_t static LedgerTransition.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF22B620(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF22B620();
    }
  }

  return result;
}

uint64_t sub_1DF17BA9C()
{
  if (*v0)
  {
    result = 6581861;
  }

  else
  {
    result = 0x7472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1DF17BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1DF22B620() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF22B620();

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

uint64_t sub_1DF17BBA4(uint64_t a1)
{
  v2 = sub_1DF17BDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17BBE0(uint64_t a1)
{
  v2 = sub_1DF17BDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LedgerTransition.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CDF0, &qword_1DF22D7E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17BDB0();
  sub_1DF22B740();
  v16 = 0;
  v12 = v14[3];
  sub_1DF22B580();
  if (!v12)
  {
    v15 = 1;
    sub_1DF22B580();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DF17BDB0()
{
  result = qword_1ECE0CDF8;
  if (!qword_1ECE0CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CDF8);
  }

  return result;
}

uint64_t LedgerTransition.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22AD20();

  return sub_1DF22AD20();
}

uint64_t LedgerTransition.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t LedgerTransition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE0CE00, &qword_1DF22D7E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DF17BDB0();
  sub_1DF22B730();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v11 = sub_1DF22B4A0();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DF22B4A0();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DF17C0BC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

void *sub_1DF17C0C8@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t sub_1DF17C0DC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17C144()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22AD20();

  return sub_1DF22AD20();
}

uint64_t sub_1DF17C194()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DF22B6C0();
  sub_1DF22AD20();
  sub_1DF22AD20();
  return sub_1DF22B6F0();
}

uint64_t sub_1DF17C21C(void *a1)
{
  a1[1] = sub_1DF17C310(&qword_1ECE0CE08, type metadata accessor for LedgerState);
  a1[2] = sub_1DF17C310(&qword_1ECE0CE10, type metadata accessor for LedgerState);
  result = sub_1DF17C310(&qword_1ECE0CE18, type metadata accessor for LedgerState);
  a1[3] = result;
  return result;
}

uint64_t sub_1DF17C310(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DF17C358(void *a1)
{
  a1[1] = sub_1DF17C390();
  a1[2] = sub_1DF17C3E4();
  result = sub_1DF17C438();
  a1[3] = result;
  return result;
}

unint64_t sub_1DF17C390()
{
  result = qword_1ECE0CE28;
  if (!qword_1ECE0CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE28);
  }

  return result;
}

unint64_t sub_1DF17C3E4()
{
  result = qword_1ECE0CE30;
  if (!qword_1ECE0CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE30);
  }

  return result;
}

unint64_t sub_1DF17C438()
{
  result = qword_1ECE0CE38;
  if (!qword_1ECE0CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE38);
  }

  return result;
}

unint64_t sub_1DF17C490()
{
  result = qword_1ECE0CE40;
  if (!qword_1ECE0CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE40);
  }

  return result;
}

uint64_t sub_1DF17C514()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;
  v5 = v0[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v1, v2);
  return v4;
}

uint64_t sub_1DF17C57C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = *v1;
  v7 = v1[1];

  MEMORY[0x1E12CF820](0x209286E220, 0xA500000000000000);
  MEMORY[0x1E12CF820](v3, v4);
  a1[3] = &type metadata for LedgerTransitionCodingKey;
  a1[4] = sub_1DF17B9A4();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v6;
  *(result + 24) = v7;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1DF17C624(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1DF22B620(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1DF22B620();
    }
  }

  return result;
}

uint64_t sub_1DF17C6F0()
{
  result = sub_1DF22A800();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DF17C778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF17C7C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1DF17C834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF17C87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF17C8E4()
{
  result = qword_1ECE0CE58;
  if (!qword_1ECE0CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE58);
  }

  return result;
}

uint64_t sub_1DF17C938@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  return result;
}

uint64_t sub_1DF17C948()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1DF17C954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DF22B600();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1DF17C9B0(uint64_t a1)
{
  v2 = sub_1DF17B9A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF17C9EC(uint64_t a1)
{
  v2 = sub_1DF17B9A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF17CA2C()
{
  result = qword_1ECE0CE60;
  if (!qword_1ECE0CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE60);
  }

  return result;
}

unint64_t sub_1DF17CA84()
{
  result = qword_1ECE0CE68;
  if (!qword_1ECE0CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE68);
  }

  return result;
}

unint64_t sub_1DF17CADC()
{
  result = qword_1ECE0CE70;
  if (!qword_1ECE0CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE70);
  }

  return result;
}

unint64_t sub_1DF17CB34()
{
  result = qword_1ECE0CE78;
  if (!qword_1ECE0CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE78);
  }

  return result;
}

unint64_t sub_1DF17CB8C()
{
  result = qword_1ECE0CE80;
  if (!qword_1ECE0CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE80);
  }

  return result;
}

unint64_t sub_1DF17CBE4()
{
  result = qword_1ECE0CE88;
  if (!qword_1ECE0CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE88);
  }

  return result;
}

unint64_t sub_1DF17CC3C()
{
  result = qword_1ECE0CE90;
  if (!qword_1ECE0CE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE0CE90);
  }

  return result;
}

uint64_t sub_1DF17CCA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x437373616C43;
  v6 = 0xE700000000000000;
  v7 = 0x58437373616C43;
  if (a1 != 4)
  {
    v7 = 0x447373616C43;
    v6 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x417373616C43;
  if (a1 != 1)
  {
    v8 = 0x427373616C43;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v8 = 1701736270;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x437373616C43)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x58437373616C43)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x447373616C43)
      {
LABEL_34:
        v12 = sub_1DF22B620();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE600000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x417373616C43)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x427373616C43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE400000000000000;
    if (v9 != 1701736270)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1DF17CE5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x546E61656C6F6F42;
    }

    if (v2)
    {
      v4 = 0x80000001DF23D180;
    }

    else
    {
      v4 = 0xEB00000000657079;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x646574656B637542;
    v4 = 0xEC00000065707954;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x69726F6765746143;
    }

    else
    {
      v3 = 0x74616E69626D6F43;
    }

    if (v2 == 3)
    {
      v4 = 0xEF657079546C6163;
    }

    else
    {
      v4 = 0xEF657079546E6F69;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0x546E61656C6F6F42;
    }

    if (a2)
    {
      v8 = 0x80000001DF23D180;
    }

    else
    {
      v8 = 0xEB00000000657079;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v8 = 0xEC00000065707954;
    if (v3 != 0x646574656B637542)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x69726F6765746143;
      v6 = 1416388963;
    }

    else
    {
      v5 = 0x74616E69626D6F43;
      v6 = 1416523625;
    }

    v8 = v6 | 0xEF65707900000000;
    if (v3 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v8)
  {
LABEL_34:
    v9 = sub_1DF22B620();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

uint64_t sub_1DF17D034(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v8 = 0xD000000000000010;
    v9 = 0x80000001DF23D410;
    if (a1 != 6)
    {
      v8 = 0xD000000000000014;
      v9 = 0x80000001DF23D430;
    }

    v10 = 0xE700000000000000;
    v11 = 0x676E696C637943;
    if (a1 != 4)
    {
      v11 = 0x69746F6D6F747541;
      v10 = 0xEA00000000006576;
    }

    if (a1 <= 5u)
    {
      v6 = v11;
    }

    else
    {
      v6 = v8;
    }

    if (v2 <= 5)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x676E696B6C6157;
    if (a1 != 2)
    {
      v4 = 0x676E696E6E7552;
    }

    v5 = 0x616E6F6974617453;
    if (a1)
    {
      v3 = 0xEA00000000007972;
    }

    else
    {
      v5 = 1701736270;
    }

    if (a1 <= 1u)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 1)
    {
      v7 = v3;
    }

    else
    {
      v7 = 0xE700000000000000;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v12 = 0xE400000000000000;
        if (v6 != 1701736270)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x616E6F6974617453;
      v15 = 31090;
LABEL_38:
      v12 = v15 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v6 != v14)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v12 = 0xE700000000000000;
    if (a2 == 2)
    {
      v13 = 1802264919;
    }

    else
    {
      v13 = 1852732754;
    }

    goto LABEL_41;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v14 = 0x69746F6D6F747541;
      v15 = 25974;
      goto LABEL_38;
    }

    v12 = 0xE700000000000000;
    v13 = 1818458435;
LABEL_41:
    if (v6 != (v13 | 0x676E6900000000))
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 == 6)
  {
    v12 = 0x80000001DF23D410;
    if (v6 != 0xD000000000000010)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v12 = 0x80000001DF23D430;
    if (v6 != 0xD000000000000014)
    {
LABEL_46:
      v16 = sub_1DF22B620();
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v7 != v12)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_1DF17D294(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1684107116;
    }

    else
    {
      v4 = 0x7472617473;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x737365636F7270;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x64616F6C7075;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x64656873696E6966;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1684107116;
    }

    else
    {
      v9 = 0x7472617473;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x64616F6C7075;
    if (a2 != 3)
    {
      v6 = 0x64656873696E6966;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x737365636F7270;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1DF22B620();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DF17D404(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x79726F6D656DLL;
    }

    else
    {
      v4 = 5591107;
    }

    if (v2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 4542017;
    if (a1 != 3)
    {
      v3 = 5591111;
    }

    if (a1 == 2)
    {
      v4 = 1802725732;
    }

    else
    {
      v4 = v3;
    }

    if (v2 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x79726F6D656DLL;
    }

    else
    {
      v9 = 5591107;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v6 = 5591111;
    if (a2 == 3)
    {
      v6 = 4542017;
    }

    if (a2 == 2)
    {
      v7 = 1802725732;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v7)
    {
      goto LABEL_36;
    }
  }

  if (v5 != v8)
  {
LABEL_36:
    v10 = sub_1DF22B620();
    goto LABEL_37;
  }

  v10 = 1;
LABEL_37:

  return v10 & 1;
}

uint64_t sub_1DF17D548(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E64696C61766E69;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x4564696C61766E69;
    v12 = 0xEE0065746144646ELL;
    if (a1 != 6)
    {
      v11 = 0x4F64696C61766E69;
      v12 = 0xED00006570795453;
    }

    v13 = 0x80000001DF23D290;
    v14 = 0xD000000000000019;
    if (a1 != 4)
    {
      v14 = 0xD000000000000010;
      v13 = 0x80000001DF23D2B0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x80000001DF23D250;
    v6 = 0xD000000000000012;
    if (a1 == 2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v5 = 0x80000001DF23D270;
    }

    v7 = 0x80000001DF23D230;
    v8 = 0xD000000000000017;
    if (!a1)
    {
      v8 = 0x4E64696C61766E69;
      v7 = 0xEB00000000656D61;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEE0065746144646ELL;
        if (v9 != 0x4564696C61766E69)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v2 = 0xED00006570795453;
        if (v9 != 0x4F64696C61766E69)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000001DF23D290;
      if (v9 != 0xD000000000000019)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v2 = 0x80000001DF23D2B0;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_45;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000001DF23D250;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v2 = 0x80000001DF23D270;
      v3 = 0xD000000000000012;
    }

    else if (a2)
    {
      v2 = 0x80000001DF23D230;
      if (v9 != 0xD000000000000017)
      {
        goto LABEL_45;
      }

      goto LABEL_42;
    }

    if (v9 != v3)
    {
LABEL_45:
      v15 = sub_1DF22B620();
      goto LABEL_46;
    }
  }

LABEL_42:
  if (v10 != v2)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_1DF17D7E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7974696C697455;
    }

    else
    {
      v4 = 0x74696E4972657355;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xED00006465746169;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x616E65746E69614DLL;
    }

    else
    {
      v4 = 1701736270;
    }

    if (v3)
    {
      v5 = 0xEB0000000065636ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7974696C697455;
  if (a2 != 2)
  {
    v8 = 0x74696E4972657355;
    v7 = 0xED00006465746169;
  }

  if (a2)
  {
    v2 = 0x616E65746E69614DLL;
    v6 = 0xEB0000000065636ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DF22B620();
  }

  return v11 & 1;
}

uint64_t sub_1DF17D94C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002ELL;
  v3 = "oad";
  if (a1 == 5)
  {
    v4 = 0xD000000000000025;
  }

  else
  {
    v4 = 0xD00000000000002BLL;
  }

  if (a1 == 5)
  {
    v5 = "ouseLedger.PushTaskTelemetry";
  }

  else
  {
    v5 = ".CloudWorkerTelemetry";
  }

  if (a1 == 3)
  {
    v6 = 0xD00000000000002ELL;
  }

  else
  {
    v6 = 0xD00000000000002CLL;
  }

  if (a1 == 3)
  {
    v7 = "ouseLedger.TaskErrorTelemetry";
  }

  else
  {
    v7 = "ouseLedger.TaskCustomTelemetry";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000002ELL;
  }

  else
  {
    v9 = 0xD00000000000002DLL;
  }

  if (a1 == 1)
  {
    v10 = "eStatusTelemetry";
  }

  else
  {
    v10 = "ouseLedger.TaskStatusTelemetry";
  }

  if (!a1)
  {
    v9 = 0xD000000000000030;
    v10 = "oad";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = "eStatusTelemetry";
      }

      else
      {
        v2 = 0xD00000000000002DLL;
        v3 = "ouseLedger.TaskStatusTelemetry";
      }
    }

    else
    {
      v2 = 0xD000000000000030;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD000000000000025;
      v3 = "ouseLedger.PushTaskTelemetry";
    }

    else
    {
      v2 = 0xD00000000000002BLL;
      v3 = ".CloudWorkerTelemetry";
    }
  }

  else if (a2 == 3)
  {
    v3 = "ouseLedger.TaskErrorTelemetry";
  }

  else
  {
    v2 = 0xD00000000000002CLL;
    v3 = "ouseLedger.TaskCustomTelemetry";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DF22B620();
  }

  return v13 & 1;
}

uint64_t sub_1DF17DAE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F6973726556;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x697078456B736154;
    }

    else
    {
      v4 = 0x6E6F6973726556;
    }

    if (v3)
    {
      v5 = 0xEE006E6F69746172;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001DF23D110;
  }

  else if (a1 == 3)
  {
    v4 = 0x68637461426E694DLL;
    v5 = 0xEC000000657A6953;
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7365727574616546;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x697078456B736154;
    v8 = 0xEE006E6F69746172;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    v6 = 0x80000001DF23D110;
    v7 = 0x68637461426E694DLL;
    v8 = 0xEC000000657A6953;
    if (a2 != 3)
    {
      v7 = 0x7365727574616546;
      v8 = 0xE800000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DF22B620();
  }

  return v12 & 1;
}

uint64_t sub_1DF17DC94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x4764696C61766E69;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xEC00000070756F72;
    }

    else
    {
      v4 = 0x80000001DF23CED0;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x4B64696C61766E69;
    v4 = 0xEA00000000007965;
  }

  else if (a1 == 3)
  {
    v3 = 0x5664696C61766E69;
    v4 = 0xEC00000065756C61;
  }

  else
  {
    v4 = 0x80000001DF23CF10;
    v3 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x4764696C61766E69;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2)
    {
      v6 = 0xEC00000070756F72;
    }

    else
    {
      v6 = 0x80000001DF23CED0;
    }

    if (v3 != v7)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEA00000000007965;
    if (v3 != 0x4B64696C61766E69)
    {
LABEL_34:
      v8 = sub_1DF22B620();
      goto LABEL_35;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0x5664696C61766E69;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 3)
    {
      v6 = 0xEC00000065756C61;
    }

    else
    {
      v6 = 0x80000001DF23CF10;
    }

    if (v3 != v5)
    {
      goto LABEL_34;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_34;
  }

  v8 = 1;
LABEL_35:

  return v8 & 1;
}

uint64_t sub_1DF17DE5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF6E6F6974656C70;
  v3 = 0x6D6F43656C637963;
  v4 = a1;
  v5 = 0x6974656C706D6F63;
  v6 = 0xEA00000000006E6FLL;
  v7 = 0xE700000000000000;
  v8 = 0x6572756C696166;
  if (a1 != 4)
  {
    v8 = 0x6C61727265666564;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x696146656C637963;
  v10 = 0xEC0000006572756CLL;
  if (a1 != 1)
  {
    v9 = 0x666544656C637963;
    v10 = 0xED00006C61727265;
  }

  if (!a1)
  {
    v9 = 0x6D6F43656C637963;
    v10 = 0xEF6E6F6974656C70;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEA00000000006E6FLL;
      if (v11 != 0x6974656C706D6F63)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x6572756C696166)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x6C61727265666564)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC0000006572756CLL;
        if (v11 != 0x696146656C637963)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x666544656C637963;
      v2 = 0xED00006C61727265;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_1DF22B620();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_1DF17E090(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00747365757165;
  v3 = 0x5264696C61766E69;
  v4 = a1;
  v5 = 0xEB0000000064696CLL;
  v6 = 0x6E6E75526B736174;
  if (a1 != 4)
  {
    v6 = 0x646E65506B736174;
  }

  if (a1 == 3)
  {
    v6 = 0x61766E496B736174;
  }

  else
  {
    v5 = 0xEB00000000676E69;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001DF23D6C0;
  v9 = 0x696C756465686373;
  v10 = 0xEF726F727245676ELL;
  if (a1 == 1)
  {
    v9 = 0x5264696C61766E69;
    v10 = 0xEE00747365757165;
  }

  if (a1)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v7;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = 0x61766E496B736174;
      v13 = 6580588;
    }

    else
    {
      if (a2 == 4)
      {
        v3 = 0x6E6E75526B736174;
      }

      else
      {
        v3 = 0x646E65506B736174;
      }

      v13 = 6778473;
    }

    v2 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      v3 = 0x696C756465686373;
      v2 = 0xEF726F727245676ELL;
    }
  }

  else
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001DF23D6C0;
  }

  if (v11 == v3 && v12 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1DF22B620();
  }

  return v14 & 1;
}