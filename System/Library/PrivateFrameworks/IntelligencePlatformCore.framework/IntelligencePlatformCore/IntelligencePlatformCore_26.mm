uint64_t sub_1C461F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *sub_1C4409678((v3 + 40), *(v3 + 64));
  v8 = sub_1C45EA9C0(a1);
  if (v4)
  {
    return v7;
  }

  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 16);
  v51 = v8 + 32;
  v48 = (a3 + 72);
  v7 = MEMORY[0x1E69E7CC8];
  v49 = v8;
  v50 = v11;
  v47 = a3;
  while (1)
  {
    if (v10 == v11)
    {

      return v7;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v52 = v10;
    v12 = v51 + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 16);
    *&v60[9] = *(v12 + 25);
    v59 = v13;
    *v60 = v14;
    v15 = *(a3 + 16);
    if (v15)
    {
      v16 = *(v12 + 40);
      v17 = *(v12 + 32);
      v53 = *(v12 + 16);
      v54 = *v12;
      sub_1C45A2358(&v59, v57);
      v58 = MEMORY[0x1E69E7CC0];
      sub_1C459D5A8(0, v15, 0);
      v56 = v58;
      v61[1] = v53;
      v61[0] = v54;
      v62 = v17;
      v18 = v48;
      v63 = v16;
      do
      {
        v55 = v15;
        v20 = *(v18 - 5);
        v19 = *(v18 - 4);
        v21 = *(v18 - 3);
        v22 = *(v18 - 2);
        v23 = *(v18 - 1);
        v24 = *v18;
        *&v64 = v20;
        *(&v64 + 1) = v19;
        v65 = v21;
        v66 = v22;
        v67 = v23;
        v68 = v24;
        sub_1C45D7F78(v20, v19, v21, v22, v23, v24);
        sub_1C45D7F78(v20, v19, v21, v22, v23, v24);
        LOBYTE(v57[0]) = 1;
        sub_1C4605810(v61, &v64, 0x100000000);
        v26 = v25;
        sub_1C45A23B4(v20, v19, v21, v22, v23, v24);
        v27 = v56;
        v58 = v56;
        v29 = *(v56 + 16);
        v28 = *(v56 + 24);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_1C459D5A8((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v27 = v58;
        }

        v18 += 48;
        *(v27 + 16) = v30;
        v56 = v27;
        v31 = v27 + 56 * v29;
        *(v31 + 32) = v20;
        *(v31 + 40) = v19;
        *(v31 + 48) = v21;
        *(v31 + 56) = v22;
        *(v31 + 64) = v23;
        *(v31 + 72) = v24;
        *(v31 + 80) = v26;
        v15 = v55 - 1;
      }

      while (v55 != 1);
      v9 = v49;
      a3 = v47;
    }

    else
    {
      sub_1C45A2358(&v59, v57);
      v56 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v57[0] = v7;
    v32 = sub_1C457AF68();
    if (__OFADD__(v7[2], (v33 & 1) == 0))
    {
      goto LABEL_24;
    }

    v34 = v32;
    v35 = v33;
    sub_1C456902C(&qword_1EC0B9F70, &qword_1C4F13338);
    if (sub_1C4F02458())
    {
      v36 = sub_1C457AF68();
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v34 = v36;
    }

    v7 = v57[0];
    if (v35)
    {
      v38 = *(v57[0] + 56);
      v39 = *(v38 + 8 * v34);
      *(v38 + 8 * v34) = v56;

      sub_1C45EC75C(&v59);
    }

    else
    {
      *(v57[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v40 = (v7[6] + 48 * v34);
      v41 = v59;
      v42 = *v60;
      *(v40 + 25) = *&v60[9];
      *v40 = v41;
      v40[1] = v42;
      *(v7[7] + 8 * v34) = v56;
      v43 = v7[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      v7[2] = v45;
    }

    v10 = v52 + 1;
    v11 = v50;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C461F690(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __int128 *, uint64_t, uint64_t))
{
  v10 = *sub_1C4409678((v4 + 40), *(v4 + 64));
  result = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v12 = result;
    v13 = 0;
    v19 = MEMORY[0x1E69E7CC8];
    v14 = *(result + 16);
    for (i = 32; ; i += 48)
    {
      if (v14 == v13)
      {

        return v19;
      }

      if (v13 >= *(v12 + 16))
      {
        break;
      }

      v16 = *(v12 + i);
      v17 = *(v12 + i + 16);
      *&v21[9] = *(v12 + i + 25);
      v20 = v16;
      *v21 = v17;
      sub_1C45A2358(&v20, v18);
      a4(&v19, &v20, a3, a2);
      ++v13;
      result = sub_1C45EC75C(&v20);
    }

    __break(1u);
  }

  return result;
}

void sub_1C461F7BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v8 = *a2;
  v60 = *(a2 + 16);
  v61 = v8;
  v9 = *(a2 + 32);
  v48 = a2;
  LODWORD(v54) = *(a2 + 40);
  v10 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v46 - v12;
  v13 = sub_1C4EF9D38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93D0, &qword_1C4F0EF18);
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v52 = &v46 - v23;
    v46 = a1;
    v64 = MEMORY[0x1E69E7CC0];
    v47 = v18;
    sub_1C459D548();
    v25 = v47;
    v62 = v64;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v55 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v66 = v60;
    v65 = v61;
    v67 = v9;
    v68 = v54;
    v51 = (v26 + 16);
    v54 = (v26 - 8);
    v50 = *(v26 + 56);
    v53 = v13;
    v49 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v55;
      v55(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v58;
      v30(v58, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v63 = 1;
      sub_1C4605F5C();
      if (v5)
      {
        break;
      }

      v33 = v32;
      *&v60 = v24;
      *&v61 = 0;
      sub_1C4420C3C(v31, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v34 = v52;
      (*v51)(v52, v29, v13);
      *(v34 + *(v57 + 28)) = v33;
      (*v54)(v20, v13);
      v35 = v62;
      v64 = v62;
      v36 = *(v62 + 16);
      v25 = v29;
      if (v36 >= *(v62 + 24) >> 1)
      {
        sub_1C459D548();
        v25 = v47;
        v35 = v64;
      }

      *(v35 + 16) = v36 + 1;
      v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v62 = v35;
      sub_1C4622960(v34, v35 + v37 + *(v56 + 72) * v36, &qword_1EC0B93D0);
      v28 += v50;
      v24 = v60 - 1;
      v5 = v61;
      v13 = v53;
      if (v60 == 1)
      {
        a1 = v46;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v38 = *v54;
    (*v54)(v29, v13);
    v38(v20, v13);
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v39 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *a1;
    sub_1C4660D4C(v62, v48, isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1));
    *a1 = v64;
  }
}

void sub_1C461FC90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v8 = *a2;
  v60 = *(a2 + 16);
  v61 = v8;
  v9 = *(a2 + 32);
  v48 = a2;
  LODWORD(v54) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v46 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v52 = &v46 - v23;
    v46 = a1;
    v64 = MEMORY[0x1E69E7CC0];
    v47 = v18;
    sub_1C459D5C8();
    v25 = v47;
    v62 = v64;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v55 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v66 = v60;
    v65 = v61;
    v67 = v9;
    v68 = v54;
    v51 = (v26 + 16);
    v54 = (v26 - 8);
    v50 = *(v26 + 56);
    v53 = v13;
    v49 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v55;
      v55(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v58;
      v30(v58, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v63 = 1;
      sub_1C4605974();
      if (v5)
      {
        break;
      }

      v33 = v32;
      *&v60 = v24;
      *&v61 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v34 = v52;
      (*v51)(v52, v29, v13);
      *(v34 + *(v57 + 28)) = v33;
      (*v54)(v20, v13);
      v35 = v62;
      v64 = v62;
      v36 = *(v62 + 16);
      v25 = v29;
      if (v36 >= *(v62 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v47;
        v35 = v64;
      }

      *(v35 + 16) = v36 + 1;
      v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v62 = v35;
      sub_1C4622960(v34, v35 + v37 + *(v56 + 72) * v36, &qword_1EC0B93A8);
      v28 += v50;
      v24 = v60 - 1;
      v5 = v61;
      v13 = v53;
      if (v60 == 1)
      {
        a1 = v46;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v38 = *v54;
    (*v54)(v29, v13);
    v38(v20, v13);
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v39 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *a1;
    sub_1C4660D74(v62, v48, isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1));
    *a1 = v64;
  }
}

void sub_1C4620164(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v8 = *a2;
  v60 = *(a2 + 16);
  v61 = v8;
  v9 = *(a2 + 32);
  v48 = a2;
  LODWORD(v54) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v46 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v52 = &v46 - v23;
    v46 = a1;
    v64 = MEMORY[0x1E69E7CC0];
    v47 = v18;
    sub_1C459D5C8();
    v25 = v47;
    v62 = v64;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v55 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v66 = v60;
    v65 = v61;
    v67 = v9;
    v68 = v54;
    v51 = (v26 + 16);
    v54 = (v26 - 8);
    v50 = *(v26 + 56);
    v53 = v13;
    v49 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v55;
      v55(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v58;
      v30(v58, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v63 = 1;
      sub_1C46059A4();
      if (v5)
      {
        break;
      }

      v33 = v32;
      *&v60 = v24;
      *&v61 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v34 = v52;
      (*v51)(v52, v29, v13);
      *(v34 + *(v57 + 28)) = v33;
      (*v54)(v20, v13);
      v35 = v62;
      v64 = v62;
      v36 = *(v62 + 16);
      v25 = v29;
      if (v36 >= *(v62 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v47;
        v35 = v64;
      }

      *(v35 + 16) = v36 + 1;
      v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v62 = v35;
      sub_1C4622960(v34, v35 + v37 + *(v56 + 72) * v36, &qword_1EC0B93A8);
      v28 += v50;
      v24 = v60 - 1;
      v5 = v61;
      v13 = v53;
      if (v60 == 1)
      {
        a1 = v46;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v38 = *v54;
    (*v54)(v29, v13);
    v38(v20, v13);
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v39 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *a1;
    sub_1C4660D74(v62, v48, isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1));
    *a1 = v64;
  }
}

void sub_1C4620638(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v59 = a4;
  v8 = *a2;
  v60 = *(a2 + 16);
  v61 = v8;
  v9 = *(a2 + 32);
  v48 = a2;
  LODWORD(v54) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v46 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v56 = *(v21 - 8);
  v57 = v21;
  v22 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v52 = &v46 - v23;
    v46 = a1;
    v64 = MEMORY[0x1E69E7CC0];
    v47 = v18;
    sub_1C459D5C8();
    v25 = v47;
    v62 = v64;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v55 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v66 = v60;
    v65 = v61;
    v67 = v9;
    v68 = v54;
    v51 = (v26 + 16);
    v54 = (v26 - 8);
    v50 = *(v26 + 56);
    v53 = v13;
    v49 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v55;
      v55(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v58;
      v30(v58, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v63 = 1;
      sub_1C4605B94();
      if (v5)
      {
        break;
      }

      v33 = v32;
      *&v60 = v24;
      *&v61 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v34 = v52;
      (*v51)(v52, v29, v13);
      *(v34 + *(v57 + 28)) = v33;
      (*v54)(v20, v13);
      v35 = v62;
      v64 = v62;
      v36 = *(v62 + 16);
      v25 = v29;
      if (v36 >= *(v62 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v47;
        v35 = v64;
      }

      *(v35 + 16) = v36 + 1;
      v37 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v62 = v35;
      sub_1C4622960(v34, v35 + v37 + *(v56 + 72) * v36, &qword_1EC0B93A8);
      v28 += v50;
      v24 = v60 - 1;
      v5 = v61;
      v13 = v53;
      if (v60 == 1)
      {
        a1 = v46;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v38 = *v54;
    (*v54)(v29, v13);
    v38(v20, v13);
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v39 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *a1;
    sub_1C4660D74(v62, v48, isUniquelyReferenced_nonNull_native, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1));
    *a1 = v64;
  }
}

void sub_1C4620B0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v8 = *a2;
  v65 = *(a2 + 16);
  v66 = v8;
  v9 = *(a2 + 32);
  v53 = a2;
  LODWORD(v59) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v51 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v57 = &v51 - v23;
    v51 = a1;
    v69 = MEMORY[0x1E69E7CC0];
    v52 = v18;
    sub_1C459D5C8();
    v25 = v52;
    v67 = v69;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v60 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v70[1] = v65;
    v70[0] = v66;
    v71 = v9;
    v72 = v59;
    v56 = (v26 + 16);
    v59 = (v26 - 8);
    v55 = *(v26 + 56);
    v58 = v13;
    v54 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v60;
      v60(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v63;
      v30(v63, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v68 = 1;
      sub_1C4606414(v70, v31, 0x100000000, v32, v33, v34, v35, v36);
      if (v5)
      {
        break;
      }

      v38 = v37;
      *&v65 = v24;
      *&v66 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = v57;
      (*v56)(v57, v29, v13);
      *(v39 + *(v62 + 28)) = v38;
      (*v59)(v20, v13);
      v40 = v67;
      v69 = v67;
      v41 = *(v67 + 16);
      v25 = v29;
      if (v41 >= *(v67 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v52;
        v40 = v69;
      }

      *(v40 + 16) = v41 + 1;
      v42 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v67 = v40;
      sub_1C4622960(v39, v40 + v42 + *(v61 + 72) * v41, &qword_1EC0B93A8);
      v28 += v55;
      v24 = v65 - 1;
      v5 = v66;
      v13 = v58;
      if (v65 == 1)
      {
        a1 = v51;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = *v59;
    (*v59)(v29, v13);
    v43(v20, v13);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v44 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a1;
    sub_1C4660D74(v67, v53, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1));
    *a1 = v69;
  }
}

void sub_1C4620FE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v8 = *a2;
  v65 = *(a2 + 16);
  v66 = v8;
  v9 = *(a2 + 32);
  v53 = a2;
  LODWORD(v59) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v51 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v57 = &v51 - v23;
    v51 = a1;
    v69 = MEMORY[0x1E69E7CC0];
    v52 = v18;
    sub_1C459D5C8();
    v25 = v52;
    v67 = v69;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v60 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v70[1] = v65;
    v70[0] = v66;
    v71 = v9;
    v72 = v59;
    v56 = (v26 + 16);
    v59 = (v26 - 8);
    v55 = *(v26 + 56);
    v58 = v13;
    v54 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v60;
      v60(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v63;
      v30(v63, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v68 = 1;
      sub_1C4606458(v70, v31, 0x100000000, v32, v33, v34, v35, v36);
      if (v5)
      {
        break;
      }

      v38 = v37;
      *&v65 = v24;
      *&v66 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = v57;
      (*v56)(v57, v29, v13);
      *(v39 + *(v62 + 28)) = v38;
      (*v59)(v20, v13);
      v40 = v67;
      v69 = v67;
      v41 = *(v67 + 16);
      v25 = v29;
      if (v41 >= *(v67 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v52;
        v40 = v69;
      }

      *(v40 + 16) = v41 + 1;
      v42 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v67 = v40;
      sub_1C4622960(v39, v40 + v42 + *(v61 + 72) * v41, &qword_1EC0B93A8);
      v28 += v55;
      v24 = v65 - 1;
      v5 = v66;
      v13 = v58;
      if (v65 == 1)
      {
        a1 = v51;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = *v59;
    (*v59)(v29, v13);
    v43(v20, v13);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v44 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a1;
    sub_1C4660D74(v67, v53, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1));
    *a1 = v69;
  }
}

void sub_1C46214B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v8 = *a2;
  v65 = *(a2 + 16);
  v66 = v8;
  v9 = *(a2 + 32);
  v53 = a2;
  LODWORD(v59) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v51 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v57 = &v51 - v23;
    v51 = a1;
    v69 = MEMORY[0x1E69E7CC0];
    v52 = v18;
    sub_1C459D5C8();
    v25 = v52;
    v67 = v69;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v60 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v70[1] = v65;
    v70[0] = v66;
    v71 = v9;
    v72 = v59;
    v56 = (v26 + 16);
    v59 = (v26 - 8);
    v55 = *(v26 + 56);
    v58 = v13;
    v54 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v60;
      v60(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v63;
      v30(v63, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v68 = 1;
      sub_1C4606690(v70, v31, 0x100000000, v32, v33, v34, v35, v36);
      if (v5)
      {
        break;
      }

      v38 = v37;
      *&v65 = v24;
      *&v66 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = v57;
      (*v56)(v57, v29, v13);
      *(v39 + *(v62 + 28)) = v38;
      (*v59)(v20, v13);
      v40 = v67;
      v69 = v67;
      v41 = *(v67 + 16);
      v25 = v29;
      if (v41 >= *(v67 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v52;
        v40 = v69;
      }

      *(v40 + 16) = v41 + 1;
      v42 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v67 = v40;
      sub_1C4622960(v39, v40 + v42 + *(v61 + 72) * v41, &qword_1EC0B93A8);
      v28 += v55;
      v24 = v65 - 1;
      v5 = v66;
      v13 = v58;
      if (v65 == 1)
      {
        a1 = v51;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = *v59;
    (*v59)(v29, v13);
    v43(v20, v13);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v44 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a1;
    sub_1C4660D74(v67, v53, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1));
    *a1 = v69;
  }
}

void sub_1C4621988(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v8 = *a2;
  v65 = *(a2 + 16);
  v66 = v8;
  v9 = *(a2 + 32);
  v53 = a2;
  LODWORD(v59) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v51 - v12;
  v13 = sub_1C4EF9CD8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v51 - v19;
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v61 = *(v21 - 8);
  v62 = v21;
  v22 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = *(a3 + 16);
  if (v24)
  {
    v57 = &v51 - v23;
    v51 = a1;
    v69 = MEMORY[0x1E69E7CC0];
    v52 = v18;
    sub_1C459D5C8();
    v25 = v52;
    v67 = v69;
    v27 = *(v14 + 16);
    v26 = v14 + 16;
    v60 = v27;
    v28 = (a3 + ((*(v26 + 64) + 32) & ~*(v26 + 64)));
    v70[1] = v65;
    v70[0] = v66;
    v71 = v9;
    v72 = v59;
    v56 = (v26 + 16);
    v59 = (v26 - 8);
    v55 = *(v26 + 56);
    v58 = v13;
    v54 = v26;
    while (1)
    {
      v29 = v25;
      v30 = v60;
      v60(v20, v28, v13);
      v30(v29, v20, v13);
      v31 = v63;
      v30(v63, v20, v13);
      sub_1C440BAA8(v31, 0, 1, v13);
      v68 = 1;
      sub_1C46066D4(v70, v31, 0x100000000, v32, v33, v34, v35, v36);
      if (v5)
      {
        break;
      }

      v38 = v37;
      *&v65 = v24;
      *&v66 = 0;
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v39 = v57;
      (*v56)(v57, v29, v13);
      *(v39 + *(v62 + 28)) = v38;
      (*v59)(v20, v13);
      v40 = v67;
      v69 = v67;
      v41 = *(v67 + 16);
      v25 = v29;
      if (v41 >= *(v67 + 24) >> 1)
      {
        sub_1C459D5C8();
        v25 = v52;
        v40 = v69;
      }

      *(v40 + 16) = v41 + 1;
      v42 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v67 = v40;
      sub_1C4622960(v39, v40 + v42 + *(v61 + 72) * v41, &qword_1EC0B93A8);
      v28 += v55;
      v24 = v65 - 1;
      v5 = v66;
      v13 = v58;
      if (v65 == 1)
      {
        a1 = v51;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v43 = *v59;
    (*v59)(v29, v13);
    v43(v20, v13);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v44 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *a1;
    sub_1C4660D74(v67, v53, isUniquelyReferenced_nonNull_native, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, *(&v66 + 1));
    *a1 = v69;
  }
}

uint64_t sub_1C4621E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8();
    v4 = v14;
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v13 = *(v5 - 1);
      v7 = sub_1C461E824(&v13);
      v9 = v8;
      v14 = v4;
      v10 = *(v4 + 16);
      if (v10 >= *(v4 + 24) >> 1)
      {
        sub_1C459D4E8();
        v4 = v14;
      }

      *(v4 + 16) = v10 + 1;
      v11 = (v4 + 24 * v10);
      v11[4] = v7;
      v11[5] = v9;
      v11[6] = v6;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4621F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8();
    v4 = (a2 + 48);
    do
    {
      v5 = *v4;
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      sub_1C4F02438();
      v6 = *(v11 + 16);
      if (v6 >= *(v11 + 24) >> 1)
      {
        sub_1C459D4E8();
      }

      *(v11 + 16) = v6 + 1;
      v7 = (v11 + 24 * v6);
      v7[4] = 0;
      v7[5] = 0xE000000000000000;
      v7[6] = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4622098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8();
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v9 = *(v4 - 1);
      sub_1C4F02438();
      v6 = *(v10 + 16);
      if (v6 >= *(v10 + 24) >> 1)
      {
        sub_1C459D4E8();
      }

      *(v10 + 16) = v6 + 1;
      v7 = (v10 + 24 * v6);
      v7[4] = 0;
      v7[5] = 0xE000000000000000;
      v7[6] = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46221D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8();
    v4 = (a2 + 80);
    do
    {
      v5 = *v4;
      v9 = *(v4 - 3);
      v10 = *(v4 - 2);
      v11 = *(v4 - 2);
      v12 = *(v4 - 8);
      sub_1C4F02438();
      v6 = *(v13 + 16);
      if (v6 >= *(v13 + 24) >> 1)
      {
        sub_1C459D4E8();
      }

      *(v13 + 16) = v6 + 1;
      v7 = (v13 + 24 * v6);
      v7[4] = 0;
      v7[5] = 0xE000000000000000;
      v7[6] = v5;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4622318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v9 = sub_1C4412D38(a1, a2, a3);
  v24 = v10;
  v23 = sub_1C456902C(v9, v10);
  sub_1C43FCDF8(v23);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440D110();
  if (v6)
  {
    sub_1C43FEC6C();
    sub_1C4425968();
    v22 = *(v12 + 72);
    v16 = a5;
    do
    {
      sub_1C4622908(v7, v5, a3);
      v16(0);
      sub_1C4F02438();
      v17 = *(v5 + *(v23 + 28));
      sub_1C4420C3C(v5, a3, v24);
      v18 = *(v25 + 16);
      if (v18 >= *(v25 + 24) >> 1)
      {
        sub_1C459D4E8();
        v16 = a5;
      }

      *(v25 + 16) = v18 + 1;
      v19 = (v25 + 24 * v18);
      v19[4] = 0;
      v19[5] = 0xE000000000000000;
      v19[6] = v17;
      v7 += v22;
      --v6;
    }

    while (v6);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46224D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v8 = v17 - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    v17[1] = a1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8();
    v10 = v21;
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      sub_1C4622908(v11, v8, &qword_1EC0B93A8);
      v12 = sub_1C461E714();
      v13 = *&v8[*(v19 + 28)];
      sub_1C4420C3C(v8, &qword_1EC0B93A8, &qword_1C4F0EEF0);
      v21 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_1C459D4E8();
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      v15 = (v10 + 24 * v14);
      v15[4] = v12;
      v15[5] = 0xE700000000000000;
      v15[6] = v13;
      v11 += v18;
      --v9;
    }

    while (v9);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46226AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5)
{
  v21 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  sub_1C43FCDF8(v21);
  v9 = v8;
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C440D110();
  if (v6)
  {
    sub_1C43FEC6C();
    sub_1C4425968();
    v20 = *(v9 + 72);
    do
    {
      sub_1C4622908(v7, v5, &qword_1EC0B93A8);
      v13 = sub_1C461E674(v5, a4, a5);
      v15 = v14;
      v16 = *(v5 + *(v21 + 28));
      sub_1C4420C3C(v5, &qword_1EC0B93A8, &qword_1C4F0EEF0);
      v17 = *(v24 + 16);
      if (v17 >= *(v24 + 24) >> 1)
      {
        sub_1C459D4E8();
      }

      *(v24 + 16) = v17 + 1;
      v18 = (v24 + 24 * v17);
      v18[4] = v13;
      v18[5] = v15;
      v18[6] = v16;
      v7 += v20;
      --v6;
    }

    while (v6);
  }

  return sub_1C45D2400();
}

void sub_1C46228A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(a2, a3, v7);
  *a4 = v7;
}

uint64_t sub_1C4622908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4412D38(a1, a2, a3);
  v7 = sub_1C456902C(v5, v6);
  sub_1C43FBCE0(v7);
  (*(v8 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1C4622960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4412D38(a1, a2, a3);
  v7 = sub_1C456902C(v5, v6);
  sub_1C43FBCE0(v7);
  (*(v8 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1C46229B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
  v8 = sub_1C4EF9CD8();
  v9 = *(*(v8 - 8) + 32);
  v9(v3 + v7, a1, v8);
  v9(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_endDate, a2, v8);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState) = v6;
  return v3;
}

uint64_t sub_1C4622A70()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
  v2 = sub_1C4EF9CD8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_endDate, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionStateEvent()
{
  result = qword_1EDDE6CB8;
  if (!qword_1EDDE6CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4622B90()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C4622C30(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v103 = a4;
  v7 = sub_1C4EFDAB8();
  v8 = sub_1C43FCDF8(v7);
  v98 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  v97 = (v12 - v13);
  sub_1C43FD1D0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v87 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v87 - v18;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v87 - v20;
  v21 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  sub_1C43FBD08();
  v88 = v23 - v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v92 = &v87 - v26;
  sub_1C43FD1D0();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v87 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v87 - v31;
  v33 = sub_1C4EF9CD8();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v91 = (v39 - v40);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v87 - v42;
  sub_1C4467FE0(a1, v32);
  sub_1C440A6F0(v32);
  if (v44)
  {
    sub_1C4EF9B28();
    sub_1C440A6F0(v32);
    if (!v44)
    {
      sub_1C44686E4(v32);
    }
  }

  else
  {
    v36[4](v43, v32, v33);
  }

  sub_1C4467FE0(a2, v30);
  sub_1C440A6F0(v30);
  if (v44)
  {
    sub_1C4EF9C88();
    sub_1C440A6F0(v30);
    if (!v44)
    {
      sub_1C44686E4(v30);
    }
  }

  else
  {
    v36[4](v91, v30, v33);
  }

  v107 = MEMORY[0x1E69E7CC0];
  v90 = v33;
  v87 = v36;
  v89 = v43;
  if (a3)
  {
    v45 = sub_1C4EFDA88();
  }

  else
  {
    v45 = sub_1C4EFDA58();
  }

  v46 = 0;
  v95 = *(v45 + 16);
  v102 = v98 + 16;
  v47 = v103 + 7;
  v48 = (v98 + 8);
  v99 = MEMORY[0x1E69E7CC0];
  v96 = (v98 + 32);
  v94 = v45;
  while (v46 != v95)
  {
    if (v46 >= *(v45 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1C440A710();
    v100 = v49;
    v52 = *(v51 + 72);
    v36 = *(v51 + 16);
    (v36)(v104, v50 + v49 + v52 * v46, v7);
    v101 = (v46 + 1);
    if (v103[2])
    {
      v53 = v103;
      v54 = v103[5];
      sub_1C4403D50(&qword_1EDDEFFD0);
      v55 = sub_1C4F00FD8();
      v56 = ~(-1 << *(v53 + 32));
      while (1)
      {
        v57 = v55 & v56;
        if (((*(v47 + (((v55 & v56) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v55 & v56)) & 1) == 0)
        {
          break;
        }

        (v36)(v17, v103[6] + v57 * v52, v7);
        sub_1C4403D50(&unk_1EDDEFFC0);
        v58 = sub_1C4F010B8();
        v59 = *v48;
        (*v48)(v17, v7);
        v55 = v57 + 1;
        if (v58)
        {
          v59(v104, v7);
          goto LABEL_25;
        }
      }
    }

    v36 = *v96;
    (*v96)(v97, v104, v7);
    v60 = v99;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v60;
    aBlock[0] = v60;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v63 = *(v60 + 16);
      sub_1C459D1E0();
      v62 = aBlock[0];
    }

    v64 = *(v62 + 16);
    if (v64 >= *(v62 + 24) >> 1)
    {
      sub_1C459D1E0();
      v62 = aBlock[0];
    }

    *(v62 + 16) = v64 + 1;
    v99 = v62;
    (v36)(v62 + v100 + v64 * v52, v97, v7);
LABEL_25:
    v45 = v94;
    v46 = v101;
  }

  v65 = *(v99 + 16);
  if (v65)
  {
    sub_1C440A710();
    v68 = v66 + v67;
    v103 = *(v69 + 72);
    v101 = *(v69 + 16);
    LODWORD(v100) = *MEMORY[0x1E69A9450];
    v104 = (v69 + 104);
    LODWORD(v98) = *MEMORY[0x1E69A9418];
    v96 = (v87 + 2);
    v97 = MEMORY[0x1E69E7CC0];
    v70 = v93;
    do
    {
      v101(v70, v68, v7);
      v71 = *v104;
      (*v104)(v17, v100, v7);
      sub_1C4403D50(&qword_1EDDEFFB8);
      sub_1C44118D8();
      sub_1C4431FBC();
      v72 = *v48;
      (*v48)(v17, v7);
      if (aBlock[0] == v106 || (v71(v17, v98, v7), sub_1C44118D8(), sub_1C4431FBC(), v72(v17, v7), aBlock[0] == v106))
      {
        v72(v70, v7);
      }

      else
      {
        v97 = v72;
        v73 = *v96;
        v74 = v90;
        (*v96)(v92, v89, v90);
        sub_1C4412D48();
        v75 = v88;
        (v73)(v88, v91, v74);
        sub_1C4412D48();
        v76 = v92;
        v77 = sub_1C4626020(v92, v75, v70);
        sub_1C44686E4(v75);
        sub_1C44686E4(v76);
        v78 = v77;
        MEMORY[0x1C6940330]();
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();

        v97(v70, v7);
        v97 = v107;
      }

      v68 += v103;
      --v65;
      v70 = v93;
    }

    while (v65);

    v36 = v90;
    v79 = v97;
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
    v36 = v90;
  }

  v80 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v81 = sub_1C4F01658();
  v46 = [v80 initWithSequence_];

  if (!(v79 >> 62))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02988();
    goto LABEL_39;
  }

LABEL_41:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  sub_1C4F024B8();

LABEL_39:
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  v82 = sub_1C4F01658();

  aBlock[4] = sub_1C4623614;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C46237BC;
  aBlock[3] = &unk_1F43E41B0;
  v83 = _Block_copy(aBlock);
  v84 = [v46 orderedMergeWithOthers:v82 comparator:v83];

  _Block_release(v83);

  v85 = v87[1];
  (v85)(v91, v36);
  (v85)(v89, v36);
  return v84;
}

uint64_t sub_1C4623614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1C442B870(a1, v24);
  type metadata accessor for BehaviorEvent();
  sub_1C43FFE58();
  v16 = v23;
  sub_1C442B870(a2, v24);
  sub_1C43FFE58();
  v17 = v23;
  v18 = *(v7 + 16);
  v18(v15, *(v16 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v18(v12, *(v17 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v19 = sub_1C4EF9C98();

  v20 = *(v7 + 8);
  v20(v12, v4);
  v20(v15, v4);
  return v19;
}

uint64_t sub_1C46237BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;
  v9[3] = swift_getObjectType();
  v9[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = v6(v10, v9);

  sub_1C440962C(v9);
  sub_1C440962C(v10);
  return v7;
}

uint64_t sub_1C4623884(uint64_t a1)
{
  sub_1C4409AB0(a1);

  v3 = v1(v2);

  return v3 & 1;
}

id sub_1C46238D4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary);
  }

  else
  {
    v2 = BiomeLibrary();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

SEL *sub_1C4623940(uint64_t *a1, SEL *a2, SEL *a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_1C4623A00(v4, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_1C46239A0(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_1C4623AB0(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

SEL *sub_1C4623A00(uint64_t a1, SEL *a2, SEL *a3, SEL *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [sub_1C46238D4() *a2];
  swift_unknownObjectRelease();
  v9 = [v8 *a3];
  swift_unknownObjectRelease();
  v10 = [v9 *a4];
  sub_1C441C818();
  swift_unknownObjectRelease();
  objc_autoreleasePoolPop(v7);
  return a4;
}

id sub_1C4623AB0(uint64_t a1, SEL *a2, SEL *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [sub_1C46238D4() *a2];
  swift_unknownObjectRelease();
  v7 = [v6 *a3];
  swift_unknownObjectRelease();
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_1C4623B38@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4410A24();
  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C445FFF0(v1 + v12, v2, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v13 = sub_1C4EF9F88();
  sub_1C44101EC();
  if (sub_1C44157D4(v14, v15, v16) == 1)
  {
    sub_1C4420C3C(v2, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v17 = objc_autoreleasePoolPush();
    sub_1C4EF9F58();
    objc_autoreleasePoolPop(v17);
    sub_1C440A6B8(v13);
    (*(v18 + 16))(v10, a1, v13);
    sub_1C43FBD94();
    sub_1C440BAA8(v19, v20, v21, v13);
    swift_beginAccess();
    sub_1C4630E08(v10, v1 + v12);
    return swift_endAccess();
  }

  else
  {
    sub_1C440A6B8(v13);
    return (*(v23 + 32))(a1, v2, v13);
  }
}

uint64_t *sub_1C4623CF4(uint64_t a1, void *a2)
{
  v4 = v2;
  v46 = *v2;
  v7 = type metadata accessor for Configuration();
  v8 = sub_1C43FBD18(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v44 = v12 - v11;
  sub_1C43FBE44();
  v13 = sub_1C4EFFB28();
  v14 = sub_1C43FCDF8(v13);
  v42 = v15;
  v43 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v45 = v19 - v18;
  sub_1C43FBE44();
  v20 = sub_1C4EFCE48();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream) = 0;
  sub_1C4EF9F88();
  sub_1C43FCF64();
  sub_1C440BAA8(v29, v30, v31, v32);
  v33 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);
  sub_1C4EFDA08();
  if (v3)
  {

    sub_1C4467948(a1);
    sub_1C4467948(v2 + v33);
    v34 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary);
    swift_unknownObjectRelease();

    sub_1C4420C3C(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v35 = *(*v2 + 48);
    v36 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v23 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView, v28, v20);
    sub_1C4EFD9E8();
    (*(v42 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView, v45, v43);
    sub_1C44098F0(a1, v44);
    v38 = type metadata accessor for GraphStore();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = GraphStore.init(config:)(v44);
    sub_1C4467948(0);

    v4[2] = v41;
  }

  return v4;
}

void *sub_1C4624330(uint64_t a1, void *a2)
{
  v4 = v2;
  v36 = *v4;
  v7 = sub_1C4EFFB28();
  v33 = sub_1C43FCDF8(v7);
  v34 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  v35 = v12 - v11;
  sub_1C43FBE44();
  v13 = sub_1C4EFCE48();
  v14 = sub_1C43FCDF8(v13);
  v37 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream) = 0;
  sub_1C4EF9F88();
  sub_1C43FCF64();
  sub_1C440BAA8(v21, v22, v23, v24);
  v4[2] = a1;
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  sub_1C44098F0(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);

  v26 = objc_autoreleasePoolPush();
  sub_1C4EFDA08();
  objc_autoreleasePoolPop(v26);
  if (v3)
  {

    v28 = v4[2];

    sub_1C4467948(v4 + v25);
    v29 = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary);
    swift_unknownObjectRelease();

    sub_1C4420C3C(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v30 = *(*v4 + 48);
    v31 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v37 + 32))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView, v20, v13);
    v27 = objc_autoreleasePoolPush();
    sub_1C4EFD9E8();
    objc_autoreleasePoolPop(v27);

    (*(v34 + 32))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView, v35, v33);
  }

  return v4;
}

uint64_t sub_1C46247D8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1C445E79C();
  sub_1C462482C(v4, v5, a1, v6);
  objc_autoreleasePoolPop(v1);
  return v8;
}

void sub_1C462482C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v136 = a3;
  v135 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v127 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v124 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v129 = &v124 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v124 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v124 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v132 = &v124 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v133 = &v124 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v134 = &v124 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v124 - v27;
  v29 = sub_1C4EFDAB8();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v126 = &v124 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v124 - v34;
  v36 = *(v30 + 16);
  v125 = a1;
  v36(&v124 - v34, a1, v29);
  v37 = (*(v30 + 88))(v35, v29);
  if (v37 == *MEMORY[0x1E69A9450])
  {
    goto LABEL_2;
  }

  if (v37 == *MEMORY[0x1E69A9468])
  {
    v38 = v135;
    v39 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream, &selRef_App, &selRef_InFocus);
    v40 = sub_1C4EF9CD8();
    (*(*(v40 - 8) + 16))(v28, v136, v40);
    sub_1C440BAA8(v28, 0, 1, v40);
    v41 = objc_autoreleasePoolPush();
    v42 = &unk_1F43E4AD0;
    v43 = &unk_1F43E4AF8;
    v44 = sub_1C4629758;
    goto LABEL_5;
  }

  if (v37 == *MEMORY[0x1E69A9460])
  {
    v49 = v135;
    v50 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream, &selRef_App, &selRef_Intent);
    v51 = sub_1C4EF9CD8();
    (*(*(v51 - 8) + 16))(v26, v136, v51);
    sub_1C440BAA8(v26, 0, 1, v51);
    v52 = objc_autoreleasePoolPush();
    v53 = v137;
    sub_1C4627DF0(v50, v26, v49, sub_1C46294C0, &unk_1F43E4B20, sub_1C46310A8, &unk_1F43E4B48);
    if (v53)
    {
      v123 = v52;
      goto LABEL_70;
    }

    v55 = v54;
    objc_autoreleasePoolPop(v52);

    v56 = v26;
LABEL_11:
    sub_1C4420C3C(v56, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v55;
    return;
  }

  if (v37 == *MEMORY[0x1E69A93D0])
  {
    v57 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v57 - 8) + 16))(v134, v136, v57);
    sub_1C440BAA8(v58, 0, 1, v57);
    v59 = sub_1C462BD44;
LABEL_14:
    v60 = sub_1C4625C70(v58, v59);
LABEL_15:
    v61 = v60;
    sub_1C4420C3C(v58, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v61;
    return;
  }

  if (v37 == *MEMORY[0x1E69A9410])
  {
LABEL_2:
    *a4 = 0;
    return;
  }

  if (v37 == *MEMORY[0x1E69A9438])
  {
    v62 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v62 - 8) + 16))(v134, v136, v62);
    sub_1C440BAA8(v58, 0, 1, v62);
    v59 = sub_1C462BFF4;
    goto LABEL_14;
  }

  if (v37 == *MEMORY[0x1E69A9448])
  {
    v63 = v135;
    v64 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream, &selRef_CarPlay, &selRef_Connected);
    v65 = sub_1C4EF9CD8();
    v66 = v133;
    (*(*(v65 - 8) + 16))(v133, v136, v65);
    sub_1C440BAA8(v66, 0, 1, v65);
    v41 = objc_autoreleasePoolPush();
    v67 = v137;
    sub_1C4627DF0(v64, v66, v63, sub_1C4629228, &unk_1F43E4C10, sub_1C46310A8, &unk_1F43E4C38);
    if (!v67)
    {
      v55 = v68;
      objc_autoreleasePoolPop(v41);

      v56 = v66;
      goto LABEL_11;
    }

LABEL_68:
    v123 = v41;
LABEL_70:
    objc_autoreleasePoolPop(v123);
    __break(1u);
    return;
  }

  if (v37 == *MEMORY[0x1E69A93E0])
  {
    v38 = v135;
    v39 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream, &selRef_Device, &selRef_ScreenLocked);
    v69 = sub_1C4EF9CD8();
    v28 = v132;
    (*(*(v69 - 8) + 16))(v132, v136, v69);
    sub_1C440BAA8(v28, 0, 1, v69);
    v41 = objc_autoreleasePoolPush();
    v42 = &unk_1F43E4C60;
    v43 = &unk_1F43E4C88;
    v44 = sub_1C4628F90;
LABEL_5:
    v45 = v137;
    sub_1C4627DF0(v39, v28, v38, v44, v42, sub_1C46310A8, v43);
    if (!v45)
    {
      v47 = v46;
      objc_autoreleasePoolPop(v41);

      v48 = v28;
LABEL_7:
      sub_1C4420C3C(v48, &unk_1EC0B84E0, qword_1C4F0D2D0);
      *a4 = v47;
      return;
    }

    goto LABEL_68;
  }

  if (v37 == *MEMORY[0x1E69A9428])
  {
    v70 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v70 - 8) + 16))(v134, v136, v70);
    sub_1C440BAA8(v58, 0, 1, v70);
    v59 = sub_1C462C694;
    goto LABEL_14;
  }

  if (v37 == *MEMORY[0x1E69A93D8])
  {
    v71 = v135;
    v72 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream, &selRef_Device, &selRef_Wireless, &selRef_AirplaneMode);
    v73 = sub_1C4EF9CD8();
    v74 = v131;
    (*(*(v73 - 8) + 16))(v131, v136, v73);
    sub_1C440BAA8(v74, 0, 1, v73);
    v41 = objc_autoreleasePoolPush();
    v75 = &unk_1F43E4CB0;
    v76 = &unk_1F43E4CD8;
    v77 = sub_1C4628CF8;
    goto LABEL_30;
  }

  if (v37 == *MEMORY[0x1E69A9470])
  {
    v71 = v135;
    v72 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream, &selRef_Device, &selRef_Wireless, &selRef_WiFi);
    v78 = sub_1C4EF9CD8();
    v74 = v130;
    (*(*(v78 - 8) + 16))(v130, v136, v78);
    sub_1C440BAA8(v74, 0, 1, v78);
    v41 = objc_autoreleasePoolPush();
    v75 = &unk_1F43E4D00;
    v76 = &unk_1F43E4D28;
    v77 = sub_1C4628A60;
    goto LABEL_30;
  }

  if (v37 == *MEMORY[0x1E69A9400])
  {
    v82 = sub_1C4EF9CD8();
    v83 = v134;
    (*(*(v82 - 8) + 16))(v134, v136, v82);
    sub_1C440BAA8(v83, 0, 1, v82);
    v84 = sub_1C4625C70(v83, sub_1C462C340);
    v85 = v83;
LABEL_34:
    sub_1C4420C3C(v85, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v84;
    return;
  }

  if (v37 == *MEMORY[0x1E69A93F0])
  {
    v71 = v135;
    v72 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream, &selRef_Device, &selRef_Power, &selRef_PluggedIn);
    v86 = sub_1C4EF9CD8();
    v74 = v129;
    (*(*(v86 - 8) + 16))(v129, v136, v86);
    sub_1C440BAA8(v74, 0, 1, v86);
    v41 = objc_autoreleasePoolPush();
    v75 = &unk_1F43E4DC8;
    v76 = &unk_1F43E4DF0;
    v77 = sub_1C46287C8;
LABEL_30:
    v79 = v137;
    sub_1C4627DF0(v72, v74, v71, v77, v75, sub_1C46310A8, v76);
    if (!v79)
    {
      v81 = v80;
      objc_autoreleasePoolPop(v41);

      sub_1C4420C3C(v74, &unk_1EC0B84E0, qword_1C4F0D2D0);
      *a4 = v81;
      return;
    }

    goto LABEL_68;
  }

  if (v37 == *MEMORY[0x1E69A93C8])
  {
    v87 = sub_1C4EF9CD8();
    v88 = v134;
    (*(*(v87 - 8) + 16))(v134, v136, v87);
    sub_1C440BAA8(v88, 0, 1, v87);
    v84 = sub_1C4625CC8(v88);
    v85 = v88;
    goto LABEL_34;
  }

  if (v37 == *MEMORY[0x1E69A9430])
  {
    v89 = v135;
    v90 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream, &selRef_HomeKit, &selRef_Client, &selRef_AccessoryControl);
    v91 = sub_1C4EF9CD8();
    v92 = v128;
    (*(*(v91 - 8) + 16))(v128, v136, v91);
    sub_1C440BAA8(v92, 0, 1, v91);
    v41 = objc_autoreleasePoolPush();
    v93 = v137;
    sub_1C4627DF0(v90, v92, v89, sub_1C4628530, &unk_1F43E4EE0, sub_1C46310A8, &unk_1F43E4F08);
    if (!v93)
    {
      v47 = v94;
      objc_autoreleasePoolPop(v41);

      v48 = v128;
      goto LABEL_7;
    }

    goto LABEL_68;
  }

  if (v37 == *MEMORY[0x1E69A9458])
  {
    v95 = v135;
    v96 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream, &selRef_Location, &selRef_Semantic);
    v97 = sub_1C4EF9CD8();
    v98 = v127;
    (*(*(v97 - 8) + 16))(v127, v136, v97);
    sub_1C440BAA8(v98, 0, 1, v97);
    v41 = objc_autoreleasePoolPush();
    v99 = v137;
    sub_1C4627DF0(v96, v98, v95, sub_1C4628298, &unk_1F43E4F30, sub_1C46310A8, &unk_1F43E4F58);
    if (!v99)
    {
      v47 = v100;
      objc_autoreleasePoolPop(v41);

      v48 = v127;
      goto LABEL_7;
    }

    goto LABEL_68;
  }

  if (v37 == *MEMORY[0x1E69A9420])
  {
    v101 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v101 - 8) + 16))(v134, v136, v101);
    sub_1C440BAA8(v58, 0, 1, v101);
    v60 = sub_1C4625D1C(v58);
    goto LABEL_15;
  }

  if (v37 == *MEMORY[0x1E69A9440])
  {
    v102 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v102 - 8) + 16))(v134, v136, v102);
    sub_1C440BAA8(v58, 0, 1, v102);
    v60 = sub_1C4625F7C();
    goto LABEL_15;
  }

  if (v37 == *MEMORY[0x1E69A9418])
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v103 = sub_1C4F00978();
    sub_1C442B738(v103, qword_1EDE2DDE0);
    v104 = sub_1C4F00968();
    v105 = sub_1C4F01CF8();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_1C43F8000, v104, v105, "BehaviorHistoryUtility: lastBehaviorEvent called with entityInteraction - this should only occur if EntityInteractionHistogramViews are updating", v106, 2u);
      MEMORY[0x1C6942830](v106, -1, -1);
    }

    goto LABEL_2;
  }

  if (v37 == *MEMORY[0x1E69A9408])
  {
    v107 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v107 - 8) + 16))(v134, v136, v107);
    sub_1C440BAA8(v58, 0, 1, v107);
    v108 = v58;
    v109 = 0;
LABEL_61:
    v60 = sub_1C4625FC8(v108, v109);
    goto LABEL_15;
  }

  if (v37 == *MEMORY[0x1E69A93F8])
  {
    v110 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v110 - 8) + 16))(v134, v136, v110);
    sub_1C440BAA8(v58, 0, 1, v110);
    v108 = v58;
    v109 = 1;
    goto LABEL_61;
  }

  if (v37 == *MEMORY[0x1E69A93E8])
  {
    v111 = sub_1C4EF9CD8();
    v58 = v134;
    (*(*(v111 - 8) + 16))(v134, v136, v111);
    sub_1C440BAA8(v58, 0, 1, v111);
    v108 = v58;
    v109 = 2;
    goto LABEL_61;
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v112 = sub_1C4F00978();
  sub_1C442B738(v112, qword_1EDE2DDE0);
  v36(v126, v125, v29);
  v113 = sub_1C4F00968();
  LODWORD(v136) = sub_1C4F01CE8();
  if (os_log_type_enabled(v113, v136))
  {
    v114 = swift_slowAlloc();
    v134 = v114;
    v135 = swift_slowAlloc();
    v138 = v135;
    *v114 = 136315138;
    sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
    v115 = v126;
    v133 = sub_1C4F02858();
    v117 = v116;
    v118 = *(v30 + 8);
    v118(v115, v29);
    v119 = sub_1C441D828(v133, v117, &v138);

    v120 = v134;
    *(v134 + 4) = v119;
    v121 = v120;
    _os_log_impl(&dword_1C43F8000, v113, v136, "BehaviorHistoryUtility: lastBehaviorEvent called with unexpected type: %s", v120, 0xCu);
    v122 = v135;
    sub_1C440962C(v135);
    MEMORY[0x1C6942830](v122, -1, -1);
    MEMORY[0x1C6942830](v121, -1, -1);
  }

  else
  {

    v118 = *(v30 + 8);
    v118(v126, v29);
  }

  *a4 = 0;
  v118(v35, v29);
}

uint64_t sub_1C4625C70(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C4426A20();
  a2(v6, a1);
  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_1C4625CC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C462D2C0(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C4625D1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31[-v8];
  v10 = sub_1C4EF9CD8();
  v11 = sub_1C43FCDF8(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31[-v17];
  v19 = objc_autoreleasePoolPush();
  sub_1C445FFF0(a1, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44101EC();
  if (sub_1C44157D4(v20, v21, v22) == 1)
  {
    sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9CC8();
  }

  else
  {
    sub_1C4EF9AD8();
    (*(v13 + 8))(v9, v10);
    sub_1C4EF9AC8();
  }

  sub_1C4EF9AC8();
  sub_1C462DC9C();
  v24 = v23;
  v25 = objc_autoreleasePoolPush();
  sub_1C462802C(v2, v24, sub_1C462A1B8, &unk_1F43E4F80, sub_1C46310A8, &unk_1F43E4FA8);
  v27 = v26;
  objc_autoreleasePoolPop(v25);

  v28 = *(v13 + 8);
  v29 = sub_1C43FE99C();
  v28(v29);
  (v28)(v18, v10);
  objc_autoreleasePoolPop(v19);
  return v27;
}

uint64_t sub_1C4625F7C()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C445E79C();
  sub_1C462F670(v2, v3, v4);
  objc_autoreleasePoolPop(v0);
  return v6;
}

uint64_t sub_1C4625FC8(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1C4426A20();
  sub_1C462FC6C(a1, a2, v6);
  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_1C4626020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C4405814();
  sub_1C462608C(v6, v7, a3, v3, v8);
  objc_autoreleasePoolPop(v5);
  return v10;
}

uint64_t sub_1C462608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v74 = a3;
  v71 = a4;
  v73 = a5;
  v76 = sub_1C4EFDAB8();
  v72 = *(v76 - 8);
  v7 = v72[8];
  v8 = MEMORY[0x1EEE9AC00](v76);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v69 - v10;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - v16;
  v18 = sub_1C4EF9CD8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v69 - v23;
  sub_1C445FFF0(a1, v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    sub_1C4EF9B28();
    if (sub_1C44157D4(v17, 1, v18) != 1)
    {
      sub_1C4420C3C(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v19 + 32))(v24, v17, v18);
  }

  sub_1C445FFF0(a2, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v25 = sub_1C44157D4(v15, 1, v18);
  v26 = v77;
  if (v25 == 1)
  {
    sub_1C4EF9C88();
    if (sub_1C44157D4(v15, 1, v18) != 1)
    {
      sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v19 + 32))(v77, v15, v18);
  }

  v27 = v72;
  v28 = v72[2];
  v29 = v75;
  v30 = v76;
  v28(v75, v74, v76);
  v31 = (v27[11])(v29, v30);
  if (v31 == *MEMORY[0x1E69A9450])
  {
    goto LABEL_10;
  }

  if (v31 == *MEMORY[0x1E69A9468] || v31 == *MEMORY[0x1E69A9460])
  {
    goto LABEL_13;
  }

  if (v31 == *MEMORY[0x1E69A93D0])
  {
    sub_1C4626C08();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A9410])
  {
LABEL_10:
    v32 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v33 = sub_1C4F01658();
    v34 = [v32 initWithSequence_];

LABEL_15:
    v36 = *(v19 + 8);
    v36(v26, v18);
    v37 = v24;
LABEL_16:
    result = (v36)(v37, v18);
    *v73 = v34;
    return result;
  }

  if (v31 == *MEMORY[0x1E69A9438] || v31 == *MEMORY[0x1E69A9448] || v31 == *MEMORY[0x1E69A93E0])
  {
LABEL_13:
    sub_1C4627818();
LABEL_14:
    v34 = v35;
    goto LABEL_15;
  }

  if (v31 == *MEMORY[0x1E69A9428])
  {
    v35 = sub_1C4626DC4();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A93D8])
  {
    sub_1C4626F18();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A9470])
  {
    sub_1C46270D4();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A9400])
  {
    sub_1C4627290();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A93F0])
  {
    sub_1C462744C();
    goto LABEL_14;
  }

  if (v31 == *MEMORY[0x1E69A93C8])
  {
    v35 = sub_1C4627608(v24, v26);
    goto LABEL_14;
  }

  v39 = v24;
  if (v31 == *MEMORY[0x1E69A9430])
  {
    v40 = v77;
    sub_1C462765C();
LABEL_56:
    v34 = v41;
    v36 = *(v19 + 8);
    v36(v40, v18);
LABEL_57:
    v37 = v24;
    goto LABEL_16;
  }

  if (v31 == *MEMORY[0x1E69A9458])
  {
    v40 = v77;
    sub_1C4627818();
    goto LABEL_56;
  }

  if (v31 == *MEMORY[0x1E69A9420])
  {
    v40 = v77;
    sub_1C4627A5C();
    goto LABEL_56;
  }

  if (v31 == *MEMORY[0x1E69A9440])
  {
    v40 = v77;
    v41 = sub_1C4627BC0();
    goto LABEL_56;
  }

  if (v31 == *MEMORY[0x1E69A9418])
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v42 = sub_1C4F00978();
    sub_1C442B738(v42, qword_1EDE2DDE0);
    v43 = sub_1C4F00968();
    v44 = sub_1C4F01CF8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C43F8000, v43, v44, "BehaviorHistoryUtility: lastBehaviorEvent unexpectedly called with entityInteraction - this should only occur if EntityInteractionHistogramViews are updating", v45, 2u);
      MEMORY[0x1C6942830](v45, -1, -1);
    }

    v46 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v47 = sub_1C4F01658();
    v34 = [v46 initWithSequence_];

    v36 = *(v19 + 8);
    v36(v77, v18);
    goto LABEL_57;
  }

  if (v31 == *MEMORY[0x1E69A9408])
  {
    v48 = v24;
    v40 = v77;
    v49 = v77;
    v50 = 0;
LABEL_55:
    v41 = sub_1C4627C74(v48, v49, v50);
    goto LABEL_56;
  }

  if (v31 == *MEMORY[0x1E69A93F8])
  {
    v48 = v24;
    v40 = v77;
    v49 = v77;
    v50 = 1;
    goto LABEL_55;
  }

  if (v31 == *MEMORY[0x1E69A93E8])
  {
    v48 = v24;
    v40 = v77;
    v49 = v77;
    v50 = 2;
    goto LABEL_55;
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v51 = sub_1C4F00978();
  sub_1C442B738(v51, qword_1EDE2DDE0);
  v28(v70, v74, v76);
  v52 = sub_1C4F00968();
  LODWORD(v74) = sub_1C4F01CE8();
  if (os_log_type_enabled(v52, v74))
  {
    v53 = swift_slowAlloc();
    v69 = v53;
    v71 = swift_slowAlloc();
    v78 = v71;
    *v53 = 136315138;
    sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
    v54 = v70;
    v55 = v76;
    v56 = sub_1C4F02858();
    v58 = v57;
    v59 = v55;
    v60 = v72[1];
    v60(v54, v59);
    v61 = sub_1C441D828(v56, v58, &v78);

    v62 = v69;
    *(v69 + 1) = v61;
    v63 = v62;
    _os_log_impl(&dword_1C43F8000, v52, v74, "BehaviorHistoryUtility: behaviorEventPublisher called with unexpected type: %s", v62, 0xCu);
    v64 = v71;
    sub_1C440962C(v71);
    MEMORY[0x1C6942830](v64, -1, -1);
    MEMORY[0x1C6942830](v63, -1, -1);
  }

  else
  {

    v60 = v72[1];
    v60(v70, v76);
  }

  v65 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v66 = sub_1C4F01658();
  v67 = [v65 initWithSequence_];

  v68 = *(v19 + 8);
  v68(v77, v18);
  v68(v39, v18);
  *v73 = v67;
  return (v60)(v75, v76);
}

void sub_1C4626C08()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream, &selRef_Location, &selRef_PointOfInterest, &selRef_Category);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C46299F0(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

id sub_1C4626DC4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream, &selRef_Location, &selRef_MicroLocationVisit);
  v2 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];

  v3 = sub_1C4EF9BF8();
  v4 = sub_1C4EF9BF8();
  v5 = [v2 microLocationVisitEventPublisherFrom:v3 to:v4];

  v9[4] = sub_1C462C92C;
  v9[5] = 0;
  sub_1C442597C();
  v9[1] = 1107296256;
  v9[2] = sub_1C463109C;
  v9[3] = &unk_1F43E45A8;
  v6 = _Block_copy(v9);
  v7 = [v5 mapWithTransform_];

  _Block_release(v6);
  objc_autoreleasePoolPop(v0);
  return v7;
}

void sub_1C4626F18()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream, &selRef_Device, &selRef_Wireless, &selRef_AirplaneMode);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C4628CF8(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C46270D4()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream, &selRef_Device, &selRef_Wireless, &selRef_WiFi);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C4628A60(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627290()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream, &selRef_Device, &selRef_Wireless, &selRef_Bluetooth);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C4629F20(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C462744C()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream, &selRef_Device, &selRef_Power, &selRef_PluggedIn);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C46287C8(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

uint64_t sub_1C4627608(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C4426A20();
  sub_1C462CA54(a2, v5);
  objc_autoreleasePoolPop(v2);
  return v7;
}

void sub_1C462765C()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C4402CA8();
  v28 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream, &selRef_HomeKit, &selRef_Client, &selRef_AccessoryControl);
  sub_1C4403FC0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v12);
  v14 = *(v13 + 16);
  v15 = sub_1C4410A14();
  v14(v15);
  v16 = sub_1C44067C0();
  v14(v16);
  sub_1C440F390(v2);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C4412D68();
  v19 = sub_1C441C120(v18, sel_publisherWithOptions_);

  v20 = sub_1C440DF34();
  v14(v20);
  v21 = sub_1C442C514();
  v14(v21);
  v22 = sub_1C4416DDC();
  sub_1C444B028(v22, v23, v24);
  v25 = sub_1C43FFE7C();
  sub_1C4628530(v25, v26, v27);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v28);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627818()
{
  sub_1C43FBD3C();
  v45 = v3;
  v46 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C443FADC();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C4410A24();
  v44 = objc_autoreleasePoolPush();
  sub_1C46239A0(v9, v7, v5);
  sub_1C4403FC0();
  v20 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v20);
  v22 = *(v21 + 16);
  sub_1C443F118();
  v22();
  v23 = sub_1C4416DDC();
  sub_1C440BAA8(v23, v24, v25, v20);
  (v22)(v0, v46, v20);
  sub_1C43FBD94();
  sub_1C440BAA8(v26, v27, v28, v20);
  v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C43FE99C();
  sub_1C440F1BC();
  v34 = sub_1C457A86C(v30, v31, v32, v33, 0);
  v35 = sub_1C441C120(v34, sel_publisherWithOptions_);

  sub_1C443F118();
  v22();
  sub_1C43FBD94();
  sub_1C440BAA8(v36, v37, v38, v20);
  (v22)(v16, v46, v20);
  sub_1C43FBD94();
  sub_1C440BAA8(v39, v40, v41, v20);
  v42 = objc_autoreleasePoolPush();
  v43 = sub_1C441C818();
  v45(v43, v1, v16);
  sub_1C444FC74();

  sub_1C4420C3C(v16, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  objc_autoreleasePoolPop(v44);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627A5C()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = objc_autoreleasePoolPush();
  sub_1C462DC9C();
  v12 = v11;
  v13 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v13);
  v15 = *(v14 + 16);
  v16 = sub_1C440DF34();
  v15(v16);
  sub_1C440F390(v9);
  (v15)(v0, v2, v13);
  v17 = sub_1C4416DDC();
  v20 = sub_1C444B028(v17, v18, v19);
  sub_1C462A1B8(v12, v9, v0);
  objc_autoreleasePoolPop(v20);

  sub_1C4420C3C(v0, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  objc_autoreleasePoolPop(v10);
  sub_1C442B974();
  sub_1C43FE9F0();
}

id sub_1C4627BC0()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C4405814();
  v4 = sub_1C4AB18E0(v2, v3, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C462EBA8(v4, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v5 = sub_1C4F01658();
    v6 = [v7 initWithSequence_];
  }

  v8 = v6;

  objc_autoreleasePoolPop(v1);
  return v8;
}

id sub_1C4627C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream, &selRef_Location, &selRef_HashedCoordinates);
  v6 = [objc_allocWithZone(GDGeoHashVisitUtility) initWithGeoHashStream_];

  v7 = sub_1C4EF9BF8();
  v8 = sub_1C4EF9BF8();
  v9 = [v6 geoHashVisitEventPublisherFrom:v7 to:v8 level:a3];

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v14[4] = sub_1C4630CDC;
  v14[5] = v10;
  sub_1C442597C();
  v14[1] = 1107296256;
  v14[2] = sub_1C463109C;
  v14[3] = &unk_1F43E4A80;
  v11 = _Block_copy(v14);

  v12 = [v9 mapWithTransform_];

  _Block_release(v11);
  objc_autoreleasePoolPop(v4);
  return v12;
}

void sub_1C4627DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _BYTE *, uint64_t), uint64_t a5, void (*a6)(void *a1), uint64_t a7)
{
  v42 = a7;
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  sub_1C445FFF0(a2, v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v21 = sub_1C4EF9CD8();
  sub_1C44101EC();
  if (sub_1C44157D4(v22, v23, v24) == 1)
  {
    sub_1C4420C3C(v18, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v25 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    sub_1C440A6B8(v21);
    (*(v26 + 8))(v18, v21);
    v25 = 0;
  }

  sub_1C440BAA8(v20, v25, 1, v21);
  sub_1C43FCF64();
  sub_1C440BAA8(v27, v28, v29, v21);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C440F1BC();
  v35 = sub_1C457A86C(v31, v32, v33, v34, 1);
  v36 = [a1 publisherWithOptions_];

  v37 = objc_autoreleasePoolPush();
  sub_1C462802C(a3, v36, v39, v40, v41, v42);
  objc_autoreleasePoolPop(v37);
  if (v7)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1C462802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, uint64_t), uint64_t a4, void (*a5)(void *a1), uint64_t a6)
{
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  sub_1C443FADC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &aBlock[-v18];
  v20 = sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v21, v22, v23, v20);
  sub_1C43FCF64();
  sub_1C440BAA8(v24, v25, v26, v20);
  v27 = objc_autoreleasePoolPush();
  v28 = a3(a2, v19, v7);
  if (v6)
  {
    objc_autoreleasePoolPop(v27);
    __break(1u);
  }

  else
  {
    v29 = v28;
    objc_autoreleasePoolPop(v27);
    sub_1C443F118();
    sub_1C4420C3C(v30, v31, v32);
    sub_1C443F118();
    sub_1C4420C3C(v33, v34, v35);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    v45 = sub_1C462828C;
    v46 = 0;
    sub_1C43FC054();
    v42 = 1107296256;
    v43 = sub_1C44405F8;
    v44 = a4;
    v37 = _Block_copy(aBlock);
    v45 = a5;
    v46 = v36;
    sub_1C43FC054();
    v42 = 1107296256;
    v43 = sub_1C4623884;
    v44 = a6;
    v38 = _Block_copy(aBlock);

    v39 = [v29 sinkWithCompletion:v37 shouldContinue:v38];

    _Block_release(v38);
    _Block_release(v37);

    sub_1C440F1BC();
    swift_beginAccess();
    v40 = *(v36 + 16);
  }
}

id sub_1C4628298(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A450;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E48F0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4940;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628530(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A468;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4878;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E48C8;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46287C8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A480;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4738;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4788;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628A60(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A64C;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4648;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4698;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A664;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E45D0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4620;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628F90(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A830;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4530;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4580;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629228(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462A9FC;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E44B8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4508;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46294C0(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462AA14;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4350;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E43A0;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629758(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462AA40;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E42D8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C4630874;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4328;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46299F0(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462ACFC;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E43C8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4418;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629C88(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462AD28;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4440;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4490;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629F20(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462AD40;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E46C0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4710;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C462A1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v26 = sub_1C462AF08;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4968;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v9, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E49B8;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

uint64_t sub_1C462A480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 11;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_1C45D644C(&v21, v9);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

uint64_t sub_1C462A664@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 8;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_1C45D644C(&v21, v9);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

uint64_t sub_1C462A830@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 6;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v9, v11, v4);
  v18 = sub_1C45D644C(&v21, v9);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

void sub_1C462AA6C()
{
  sub_1C43FBD3C();
  v43 = v2;
  v44 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = sub_1C43FCDF8(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4402CA8();
  v21 = [v7 eventBody];
  v22 = 0uLL;
  if (v21)
  {
    v23 = v21;
    v5(v45, 0);
    v41 = v45[0];
    v42 = v45[1];
    v24 = v46;
    v25 = v47;

    if (v25 == 255)
    {
      v24 = 0;
      LOBYTE(v25) = 21;
      v26 = 0uLL;
      v22 = 0uLL;
    }

    else
    {
      v22 = v41;
      v26 = v42;
    }
  }

  else
  {
    v24 = 0;
    LOBYTE(v25) = 21;
    v26 = 0uLL;
  }

  v48[0] = v22;
  v48[1] = v26;
  v49 = v24;
  v50 = v25;
  v27 = [v7 eventBody];
  if (v27)
  {
    v28 = v27;
    v43();

    if (sub_1C44157D4(v13, 1, v14) != 1)
    {
      (*(v17 + 32))(v0, v13, v14);
      goto LABEL_12;
    }
  }

  else
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v29, v30, v31, v14);
  }

  [v7 timestamp];
  sub_1C4EF9AC8();
  if (sub_1C44157D4(v13, 1, v14) != 1)
  {
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

LABEL_12:
  v32 = type metadata accessor for BehaviorEvent();
  v33 = *(v17 + 16);
  v34 = sub_1C43FE99C();
  v35(v34);
  sub_1C45D644C(v48, v1);
  v36 = v44;
  v44[3] = v32;
  *v36 = v37;
  v38 = *(v17 + 8);
  v39 = sub_1C4405814();
  v40(v39);
  sub_1C43FE9F0();
}

void sub_1C462AD58()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1C4EF9CD8();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4402CA8();
  v14 = [v4 eventBody];
  v15 = 0uLL;
  if (v14)
  {
    v16 = v14;
    v2(v30, 0);
    v28 = v30[0];
    v29 = v30[1];
    v17 = v31;
    v18 = v32;

    if (v18 == 255)
    {
      v17 = 0;
      LOBYTE(v18) = 21;
      v19 = 0uLL;
      v15 = 0uLL;
    }

    else
    {
      v15 = v28;
      v19 = v29;
    }
  }

  else
  {
    v17 = 0;
    LOBYTE(v18) = 21;
    v19 = 0uLL;
  }

  v33[0] = v15;
  v33[1] = v19;
  v34 = v17;
  v35 = v18;

  [v4 timestamp];
  sub_1C4EF9AC8();
  v20 = type metadata accessor for BehaviorEvent();
  v21 = *(v10 + 16);
  v22 = sub_1C43FE99C();
  v23(v22);
  sub_1C45D644C(v33, v0);
  v6[3] = v20;
  *v6 = v24;
  v25 = *(v10 + 8);
  v26 = sub_1C4405814();
  v27(v26);
  sub_1C43FE9F0();
}

uint64_t sub_1C462AF08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C4D331F8();

    v15 = 15;
  }

  else
  {
    v14 = 0;
    v15 = 21;
  }

  LOBYTE(v21) = v15;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v16 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v9, v11, v4);
  v17 = sub_1C45D644C(&v20, v9);
  a2[3] = v16;
  *a2 = v18;
  return (*(v5 + 8))(v11, v4, v17);
}

uint64_t sub_1C462B0D4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v115 = a3;
  v5 = sub_1C4EFDAB8();
  v117 = *(v5 - 8);
  v118 = v5;
  v6 = *(v117 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v116 = &v106 - v10;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v106 - v16;
  v18 = sub_1C4EF9CD8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v112 = (&v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v21);
  v114 = &v106 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v113 = &v106 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v106 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v106 - v30;
  type metadata accessor for BehaviorEvent();
  swift_unknownObjectRetain();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v33 = v32;
    sub_1C445FFF0(a2, v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v17, 1, v18) == 1)
    {
      sub_1C4420C3C(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v111 = a1;
      (*(v19 + 32))(v31, v17, v18);
      v35 = *(v33 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
      v109 = *(v19 + 16);
      v110 = (v19 + 16);
      v109(v29, v35, v18);
      v36 = sub_1C4EF9C18();
      v37 = (v19 + 8);
      v38 = *(v19 + 8);
      v38(v29, v18);
      if (v36)
      {
        v115 = v38;
        if (qword_1EDDFA668 != -1)
        {
          swift_once();
        }

        v39 = sub_1C4F00978();
        sub_1C442B738(v39, qword_1EDE2DDE0);
        v40 = v113;
        v109(v113, v31, v18);
        swift_unknownObjectRetain();
        v41 = sub_1C4F00968();
        v42 = sub_1C4F01CD8();
        swift_unknownObjectRelease();
        LODWORD(v114) = v42;
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v119 = v112;
          *v43 = 136315650;
          v44 = *(v33 + 32);
          v120 = *(v33 + 16);
          v121[0] = v44;
          *(v121 + 9) = *(v33 + 41);
          v108 = v41;
          v45 = v116;
          sub_1C45D5A24(v116);
          sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
          v46 = v118;
          v47 = sub_1C4F02858();
          v107 = v37;
          v49 = v48;
          (*(v117 + 8))(v45, v46);
          v50 = sub_1C441D828(v47, v49, &v119);

          *(v43 + 4) = v50;
          *(v43 + 12) = 2080;
          v109(v29, *(v33 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v18);
          sub_1C4630878(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
          v51 = sub_1C4F02858();
          v53 = v52;
          v54 = v29;
          v55 = v115;
          v115(v54, v18);
          v56 = sub_1C441D828(v51, v53, &v119);

          v57 = v43;
          *(v43 + 14) = v56;
          *(v43 + 22) = 2080;
          v58 = v113;
          v59 = sub_1C4F02858();
          v61 = v60;
          v55(v58, v18);
          v62 = sub_1C441D828(v59, v61, &v119);

          *(v57 + 24) = v62;
          v63 = v108;
          _os_log_impl(&dword_1C43F8000, v108, v114, "BehaviorHistoryUtility [behaviorPublisher]: Biome unexpectedly emitted %s event on %s, which is earlier than publisher start date %s.", v57, 0x20u);
          v64 = v112;
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v64, -1, -1);
          MEMORY[0x1C6942830](v57, -1, -1);
          swift_unknownObjectRelease();

          v55(v31, v18);
        }

        else
        {
          swift_unknownObjectRelease();

          v103 = v40;
          v104 = v115;
          v115(v103, v18);
          v104(v31, v18);
        }

        goto LABEL_5;
      }

      v38(v31, v18);
      a1 = v111;
    }

    sub_1C445FFF0(v115, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v15, 1, v18) == 1)
    {
      sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_20:
      v96 = *(v33 + 32);
      v120 = *(v33 + 16);
      v121[0] = v96;
      *(v121 + 9) = *(v33 + 41);
      v97 = v116;
      sub_1C45D5A24(v116);
      v99 = v117;
      v98 = v118;
      (*(v117 + 104))(v9, *MEMORY[0x1E69A9450], v118);
      sub_1C4630878(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
      v100 = sub_1C4F010B8();
      swift_unknownObjectRelease();
      v101 = *(v99 + 8);
      v101(v9, v98);
      v101(v97, v98);
      v34 = v100 ^ 1;
      return v34 & 1;
    }

    v65 = v19;
    v66 = v114;
    (*(v19 + 32))(v114, v15, v18);
    v67 = *(v33 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v115 = *(v19 + 16);
    (v115)(v29, v67, v18);
    v68 = sub_1C4EF9C08();
    v71 = *(v65 + 8);
    v69 = (v65 + 8);
    v70 = v71;
    v71(v29, v18);
    if ((v68 & 1) == 0)
    {
      v70(v66, v18);
      goto LABEL_20;
    }

    v110 = v70;
    v113 = v69;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v72 = sub_1C4F00978();
    sub_1C442B738(v72, qword_1EDE2DDE0);
    v73 = v112;
    v74 = v114;
    (v115)(v112, v114, v18);
    swift_unknownObjectRetain();
    v75 = sub_1C4F00968();
    v76 = sub_1C4F01CD8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v119 = v109;
      *v77 = 136315650;
      v78 = *(v33 + 32);
      v120 = *(v33 + 16);
      v121[0] = v78;
      *(v121 + 9) = *(v33 + 41);
      LODWORD(v108) = v76;
      v79 = v116;
      sub_1C45D5A24(v116);
      sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478]);
      v107 = v75;
      v80 = v118;
      v81 = sub_1C4F02858();
      v111 = a1;
      v83 = v82;
      (*(v117 + 8))(v79, v80);
      v84 = sub_1C441D828(v81, v83, &v119);

      *(v77 + 4) = v84;
      *(v77 + 12) = 2080;
      (v115)(v29, *(v33 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v18);
      sub_1C4630878(&qword_1EDDFCD50, MEMORY[0x1E6969530]);
      v85 = sub_1C4F02858();
      v87 = v86;
      v88 = v110;
      v110(v29, v18);
      v89 = sub_1C441D828(v85, v87, &v119);

      *(v77 + 14) = v89;
      *(v77 + 22) = 2080;
      v90 = sub_1C4F02858();
      v92 = v91;
      v88(v73, v18);
      v93 = sub_1C441D828(v90, v92, &v119);

      *(v77 + 24) = v93;
      v94 = v107;
      _os_log_impl(&dword_1C43F8000, v107, v108, "BehaviorHistoryUtility [behaviorPublisher]: Biome unexpectedly emitted %s event on %s, which is later than publisher end date %s.", v77, 0x20u);
      v95 = v109;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v95, -1, -1);
      MEMORY[0x1C6942830](v77, -1, -1);
      swift_unknownObjectRelease();

      v88(v114, v18);
    }

    else
    {
      swift_unknownObjectRelease();

      v105 = v110;
      v110(v73, v18);
      v105(v74, v18);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_5:
  v34 = 0;
  return v34 & 1;
}

uint64_t sub_1C462BCF4(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3 & 1;
}

void sub_1C462BD44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream, &selRef_Location, &selRef_PointOfInterest, &selRef_Category);
  sub_1C445FFF0(a2, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v12, 1, v16) == 1)
  {
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v17 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v16 - 8) + 8))(v12, v16);
    v17 = 0;
  }

  sub_1C440BAA8(v14, v17, 1, v16);
  sub_1C440BAA8(v9, 1, 1, v16);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v14, v9, 0, 0, 1);
  v20 = [(SEL *)v15 publisherWithOptions:v19];

  v21 = objc_autoreleasePoolPush();
  v22 = v25[1];
  sub_1C462802C(a1, v20, sub_1C46299F0, &unk_1F43E4B70, sub_1C46310A8, &unk_1F43E4B98);
  if (v22)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);
  }

  else
  {
    v24 = v23;
    objc_autoreleasePoolPop(v21);

    *v26 = v24;
  }
}

void sub_1C462BFF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - v13;
  v15 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream, &selRef_UserFocus, &selRef_ComputedMode);
  sub_1C445FFF0(a2, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v12, 1, v16) == 1)
  {
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v17 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v16 - 8) + 8))(v12, v16);
    v17 = 0;
  }

  sub_1C440BAA8(v14, v17, 1, v16);
  sub_1C440BAA8(v9, 1, 1, v16);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v14, v9, 0, 0, 1);
  v20 = [v15 publisherWithOptions_];

  v21 = objc_autoreleasePoolPush();
  v22 = v25[1];
  sub_1C462802C(a1, v20, sub_1C4629C88, &unk_1F43E4BC0, sub_1C46310A8, &unk_1F43E4BE8);
  if (v22)
  {
    objc_autoreleasePoolPop(v21);
    __break(1u);
  }

  else
  {
    v24 = v23;
    objc_autoreleasePoolPop(v21);

    *v26 = v24;
  }
}

uint64_t sub_1C462C29C(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 deviceType];

    if (v4 == 21)
    {
      return 1;
    }
  }

  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = [result deviceType];

    return v7 == 23;
  }

  return result;
}

void sub_1C462C340(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v29 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v27 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v27 - v13;
  v15 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream, &selRef_Device, &selRef_Wireless, &selRef_Bluetooth);
  sub_1C445FFF0(a2, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v16 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v12, 1, v16) == 1)
  {
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v17 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v16 - 8) + 8))(v12, v16);
    v17 = 0;
  }

  sub_1C440BAA8(v14, v17, 1, v16);
  sub_1C440BAA8(v9, 1, 1, v16);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v14, v9, 0, 0, 1);
  v20 = [(SEL *)v15 publisherWithOptions:v19];

  aBlock[4] = sub_1C4630CE4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C46310A0;
  aBlock[3] = &unk_1F43E4D50;
  v21 = _Block_copy(aBlock);

  v22 = [v20 filterWithIsIncluded_];
  _Block_release(v21);

  v23 = objc_autoreleasePoolPush();
  v24 = v27[1];
  sub_1C462802C(a1, v22, sub_1C4629F20, &unk_1F43E4D78, sub_1C46310A8, &unk_1F43E4DA0);
  if (v24)
  {
    objc_autoreleasePoolPop(v23);
    __break(1u);
  }

  else
  {
    v26 = v25;
    objc_autoreleasePoolPop(v23);

    *v29 = v26;
  }
}

void sub_1C462C694(uint64_t a1@<X1>, void *a2@<X8>)
{
  v25 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - v10;
  v12 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream, &selRef_Location, &selRef_MicroLocationVisit);
  v13 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];

  sub_1C445FFF0(a1, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = 0;
  if (sub_1C44157D4(v11, 1, v3) != 1)
  {
    v14 = sub_1C4EF9BF8();
    (*(v4 + 8))(v11, v3);
  }

  v15 = [v13 lastMicroLocationVisitEventPriorTo_];

  if (v15)
  {
    type metadata accessor for BehaviorEvent();
    v16 = [v15 microLocationIdentifier];
    v17 = sub_1C4F01138();
    v19 = v18;

    v20 = [v15 isEnter];
    v26[0] = v17;
    v26[1] = v19;
    v26[3] = 0;
    v26[4] = 0;
    v26[2] = v20;
    v27 = 7;
    v21 = [v15 date];
    sub_1C4EF9C78();

    sub_1C45D644C(v26, v7);
    v23 = v22;
  }

  else
  {

    v23 = 0;
  }

  *v25 = v23;
}

void sub_1C462C92C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BehaviorEvent();
  v9 = [a1 microLocationIdentifier];
  v10 = sub_1C4F01138();
  v12 = v11;

  v13 = [a1 isEnter];
  LOBYTE(v17) = 7;
  v14 = [a1 date];
  sub_1C4EF9C78();

  sub_1C45D644C(&v16, v7);
  a2[3] = v8;
  *a2 = v15;
}

void sub_1C462CA54(uint64_t a1@<X1>, void *a2@<X8>)
{
  v38 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v7 = [objc_allocWithZone(MEMORY[0x1E69AD068]) init];
  v8 = sub_1C4EF9BF8();
  aBlock = 0;
  v9 = sub_1C46308C0(0x6D6574737953, 0xE600000000000000, v8, &aBlock, v7);

  v10 = aBlock;
  if (v9)
  {
    (*(v4 + 16))(&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = swift_allocObject();
    (*(v4 + 32))(v12 + v11, &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v44 = sub_1C463093C;
    v45 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C46310A0;
    v43 = &unk_1F43E47D8;
    v13 = _Block_copy(&aBlock);
    v14 = v10;

    v15 = [v9 filterWithIsIncluded_];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v6;
    v44 = sub_1C463099C;
    v45 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C463109C;
    v43 = &unk_1F43E4828;
    v17 = _Block_copy(&aBlock);
    v18 = v6;

    v19 = [v15 mapWithTransform_];
    _Block_release(v17);

    v44 = sub_1C4630F88;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C462BCF4;
    v43 = &unk_1F43E4850;
    v20 = _Block_copy(&aBlock);
    v21 = [v19 filterWithIsIncluded_];

    _Block_release(v20);
  }

  else
  {
    v22 = aBlock;
    v23 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DDE0);
    v25 = v23;
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v39 = v23;
      aBlock = v29;
      *v28 = 136315138;
      v30 = v23;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v31 = sub_1C4F01198();
      v33 = sub_1C441D828(v31, v32, &aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C43F8000, v26, v27, "BehaviorHistoryUtility [linkActionEventPublisher]: Unable to access Link action transcript: %s", v28, 0xCu);
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v29, -1, -1);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    v34 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v35 = sub_1C4F01658();
    v21 = [v34 initWithSequence_];
  }

  *v38 = v21;
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C462CFB4(void *a1)
{
  v2 = sub_1C4EF9CD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 timestamp];
  sub_1C4EF9AC8();
  v7 = sub_1C4EF9C18();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_1C462D0A8(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v3 = v1;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1C462D0F4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = [a1 eventBody];
  v15 = 0uLL;
  if (v14)
  {
    v16 = v14;
    sub_1C46310AC(v14, a2, v24);

    v17 = v26;
    if (v26 == 255)
    {
      v18 = 0;
      v17 = 21;
      v19 = 0uLL;
      v15 = 0uLL;
    }

    else
    {
      v18 = v25;
      v15 = v24[0];
      v19 = v24[1];
    }
  }

  else
  {
    v18 = 0;
    v17 = 21;
    v19 = 0uLL;
  }

  v27[0] = v15;
  v27[1] = v19;
  v28 = v18;
  v29 = v17;
  [a1 timestamp];
  sub_1C4EF9AC8();
  v20 = type metadata accessor for BehaviorEvent();
  (*(v7 + 16))(v11, v13, v6);
  v21 = sub_1C45D644C(v27, v11);
  a3[3] = v20;
  *a3 = v22;
  return (*(v7 + 8))(v13, v6, v21);
}

void sub_1C462D2C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v38 - v6;
  v39 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E69AD068]) init];
  v10 = sub_1C4F01108();
  aBlock = 0;
  v11 = [v9 transcriptPublisherWithStreamName:v10 fromDate:0 error:&aBlock];

  v12 = aBlock;
  if (v11)
  {
    sub_1C445FFF0(a1, v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v14 = swift_allocObject();
    sub_1C45B69E4(v7, v14 + v13);
    v46 = sub_1C4630D00;
    v47 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1C46310A0;
    v45 = &unk_1F43E4E40;
    v15 = _Block_copy(&aBlock);
    v16 = v12;

    v17 = [v11 filterWithIsIncluded_];
    _Block_release(v15);

    v46 = sub_1C462DA9C;
    v47 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1C44405F8;
    v45 = &unk_1F43E4E68;
    v18 = _Block_copy(&aBlock);
    v19 = swift_allocObject();
    v20 = v39;
    *(v19 + 16) = v39;
    *(v19 + 24) = v8;
    v46 = sub_1C4630D70;
    v47 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1C4440590;
    v45 = &unk_1F43E4EB8;
    v21 = _Block_copy(&aBlock);
    v22 = v20;

    v23 = [v17 sinkWithCompletion:v18 receiveInput:v21];

    _Block_release(v21);
    _Block_release(v18);

    swift_beginAccess();
    *v40 = *(v8 + 16);
  }

  else
  {
    v24 = v40;
    v25 = aBlock;
    v26 = sub_1C4EF97A8();

    swift_willThrow();

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v27 = sub_1C4F00978();
    sub_1C442B738(v27, qword_1EDE2DDE0);
    v28 = v26;
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41 = v26;
      aBlock = v32;
      *v31 = 136315138;
      v33 = v26;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v34 = sub_1C4F01198();
      v36 = sub_1C441D828(v34, v35, &aBlock);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1C43F8000, v29, v30, "BehaviorHistoryUtility [lastLinkActionEvent]: Unable to access Link action transcript: %s", v31, 0xCu);
      sub_1C440962C(v32);
      MEMORY[0x1C6942830](v32, -1, -1);
      MEMORY[0x1C6942830](v31, -1, -1);
    }

    else
    {
    }

    *v24 = 0;
  }

  v37 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C462D838(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1C445FFF0(a2, v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = [a1 eventBody];
    if (!result)
    {
      return result;
    }

    sub_1C4630D78(result);
    if (v17)
    {

      return 1;
    }
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    [a1 timestamp];
    sub_1C4EF9AC8();
    v18 = sub_1C4EF9C18();
    v19 = *(v9 + 8);
    v19(v13, v8);
    if (v18)
    {
      v20 = [a1 eventBody];
      v19(v15, v8);
      if (v20)
      {

        return 1;
      }
    }

    else
    {
      v19(v15, v8);
    }
  }

  return 0;
}

void sub_1C462DAA8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12 + 16;
  v14 = [a1 eventBody];
  if (v14)
  {
    v19 = v14;
    sub_1C46310AC(v14, a2, v20);
    if (v22 == 255)
    {
      v18 = v19;
    }

    else
    {
      v23[0] = v20[0];
      v23[1] = v20[1];
      v24 = v21;
      v25 = v22;
      [a1 timestamp];
      sub_1C4EF9AC8();
      type metadata accessor for BehaviorEvent();
      (*(v7 + 16))(v11, v13, v6);
      sub_1C45D644C(v23, v11);
      v16 = v15;

      (*(v7 + 8))(v13, v6);
      swift_beginAccess();
      v17 = *(a3 + 16);
      *(a3 + 16) = v16;
    }
  }
}

void sub_1C462DC9C()
{
  sub_1C43FBD3C();
  v48 = v2;
  v47 = v3;
  v45 = v4;
  v5 = type metadata accessor for Configuration();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v44 = v10 - v9;
  sub_1C43FBE44();
  v11 = sub_1C4EF9CD8();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  v46 = objc_autoreleasePoolPush();
  v43 = v0;
  v30 = *(v0 + 16);
  v31 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView;
  v32 = sub_1C4EFCE48();
  sub_1C43FBCE0(v32);
  (*(v33 + 16))(v29, v0 + v31, v32);
  sub_1C43FBD94();
  sub_1C440BAA8(v34, v35, v36, v32);
  v37 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  type metadata accessor for VirtualInteractionEnumerator();
  v38 = *(v14 + 16);
  v38(v22, v45, v11);
  v38(v19, v47, v11);
  sub_1C445FFF0(v29, v1, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v39 = v44;
  sub_1C44098F0(v43 + v37, v44);

  v40 = sub_1C4D28B94(v22, v19, (v48 & 1) == 0, v30, v1, 0, 1, v39);
  v41 = objc_autoreleasePoolPush();
  v49 = v40;
  v50 = sub_1C4D339F4;
  v51 = 0;
  sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
  sub_1C4630B7C();
  sub_1C4F014B8();
  objc_autoreleasePoolPop(v41);

  sub_1C4420C3C(v29, &qword_1EC0BA0C8, &unk_1C4F6E090);
  objc_autoreleasePoolPop(v46);
  sub_1C43FE9F0();
}

void sub_1C462DF88()
{
  sub_1C43FBD3C();
  v34 = v0;
  v35 = v3;
  v33 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = sub_1C43FBD18(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C443FADC();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v32 = objc_autoreleasePoolPush();
  sub_1C445FFF0(v8, v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4EF9CD8();
  sub_1C44101EC();
  v23 = sub_1C44157D4(v20, v21, v22);
  sub_1C4420C3C(v19, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v23 != 1)
  {
    sub_1C445FFF0(v6, v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C44101EC();
    sub_1C44157D4(v24, v25, v26);
    sub_1C4420C3C(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  v27 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream, &selRef_Motion, &selRef_Activity);
  sub_1C445FFF0(v8, v2, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v6, v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v28 = v35;
  if (v35 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
    v30 = sub_1C457A86C(v2, v1, v28, 0, (v33 & 1) == 0);
    v31 = [v27 publisherWithOptions_];

    sub_1C462E1D8(v31);
    objc_autoreleasePoolPop(v32);
    sub_1C43FE9F0();
  }
}

id sub_1C462E1D8(void *a1)
{
  v12 = sub_1C462E458;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C463109C;
  v11 = &unk_1F43E4288;
  v2 = _Block_copy(&v8);
  v3 = sub_1C43FD04C(v2, sel_mapWithTransform_);
  v4 = sub_1C441C818();
  _Block_release(v4);
  v12 = sub_1C462E820;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C462BCF4;
  v11 = &unk_1F43E42B0;
  v5 = _Block_copy(&v8);
  v6 = sub_1C43FD04C(v5, sel_filterWithIsIncluded_);
  _Block_release(v5);

  return v6;
}

id sub_1C462E30C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 hasUnknown])
  {
    v4 = [a1 unknown];
  }

  else
  {
    v4 = 0;
  }

  if ([a1 hasStationary] && objc_msgSend(a1, sel_stationary))
  {
    v4 |= 2uLL;
  }

  if ([a1 hasWalking] && objc_msgSend(a1, sel_walking))
  {
    v4 |= 4uLL;
  }

  if ([a1 hasRunning] && objc_msgSend(a1, sel_running))
  {
    v4 |= 8uLL;
  }

  if ([a1 hasCycling] && objc_msgSend(a1, sel_cycling))
  {
    v4 |= 0x10uLL;
  }

  result = [a1 hasAutomotive];
  if (result)
  {
    result = [a1 automotive];
    if (result)
    {
      v4 |= 0x20uLL;
    }
  }

  *a2 = v4;
  return result;
}

void sub_1C462E458(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_1C4EF9CD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v35 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v35 - v17;
  v19 = [a1 eventBody];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 startDate];
    if (v21)
    {
      v22 = v21;
      sub_1C4EF9C78();

      v23 = *(v9 + 32);
      v23(v7, v16, v8);
      sub_1C440BAA8(v7, 0, 1, v8);
      v23(v18, v7, v8);
    }

    else
    {
      sub_1C440BAA8(v7, 1, 1, v8);
      [a1 timestamp];
      sub_1C4EF9AC8();
      if (sub_1C44157D4(v7, 1, v8) != 1)
      {
        sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    [a1 timestamp];
    sub_1C4EF9AC8();
    type metadata accessor for BehaviorHistoryUtility();
    sub_1C462E30C(v20, &v36);
    v32 = type metadata accessor for MotionStateEvent();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    v31 = sub_1C46229B8(v18, v16, &v36);
    a2[3] = v32;
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DDE0);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Unexpected empty event body from MotionActivity publisher. Skipping event.", v27, 2u);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    [a1 timestamp];
    sub_1C4EF9AC8();
    [a1 timestamp];
    sub_1C4EF9AC8();
    v36 = 1;
    v28 = type metadata accessor for MotionStateEvent();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    v31 = sub_1C46229B8(v16, v13, &v36);
    a2[3] = v28;
  }

  *a2 = v31;
}

BOOL sub_1C462E820()
{
  type metadata accessor for MotionStateEvent();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
    swift_unknownObjectRelease();
    return (v1 & 1) == 0;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_1C462E890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v23 = objc_autoreleasePoolPush();
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v10 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v10);
  (*(v11 + 16))(v8, a2, v10);
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v10);
  sub_1C462DF88();
  v16 = v15;
  sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v28 = sub_1C462EB14;
  v29 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C44405F8;
  v27 = &unk_1F43E4238;
  v17 = _Block_copy(&aBlock);
  v28 = sub_1C463086C;
  v29 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1C45DFE08;
  v27 = &unk_1F43E4260;
  v18 = _Block_copy(&aBlock);

  v19 = [v16 sinkWithCompletion:v17 receiveInput:v18];

  _Block_release(v18);
  _Block_release(v17);

  sub_1C440F1BC();
  swift_beginAccess();
  v20 = *(v9 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  objc_autoreleasePoolPop(v23);
  return v20;
}

uint64_t sub_1C462EB20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x1C6940330](v3);
  sub_1C4427EF0(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1C4F01748();
  return swift_endAccess();
}

uint64_t sub_1C462EBA8(uint64_t a1, uint64_t a2)
{
  sub_1C4403FC0();
  v4 = sub_1C4EFFB28();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + v10, &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v22 = sub_1C4630C68;
  v23 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1C463109C;
  v21 = &unk_1F43E4A08;
  _Block_copy(&aBlock);

  v13 = sub_1C43FD04C(v12, sel_mapWithTransform_);
  v14 = sub_1C441C818();
  _Block_release(v14);
  v22 = sub_1C4630F88;
  v23 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1C462BCF4;
  v21 = &unk_1F43E4A30;
  v15 = _Block_copy(&aBlock);
  v16 = sub_1C43FD04C(v15, sel_filterWithIsIncluded_);
  _Block_release(v15);

  return sub_1C442B974();
}

void sub_1C462EDBC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_1C4EFF0C8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 eventBody];
  if (v17)
  {
    v18 = v17;
    v50 = a1;
    v51 = a2;
    v19 = OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson;
    v20 = &v17[*(type metadata accessor for PhotosPersonObservation(0) + 20) + v19];
    v21 = *v20;
    v22 = v20[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFB18();

    v29 = sub_1C44157D4(v11, 1, v12);
    if (v29 == 1)
    {
      sub_1C4420C3C(v11, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v30 = sub_1C4F00978();
      sub_1C442B738(v30, qword_1EDE2DDE0);
      v31 = v18;
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CD8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v52 = v35;
        *v34 = 136315138;
        v36 = *v20;
        v37 = v20[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v38 = sub_1C441D828(v36, v37, &v52);

        *(v34 + 4) = v38;
        _os_log_impl(&dword_1C43F8000, v32, v33, "Unable to find mdid for PHPerson ID: %s", v34, 0xCu);
        sub_1C440962C(v35);
        MEMORY[0x1C6942830](v35, -1, -1);
        MEMORY[0x1C6942830](v34, -1, -1);
      }

      v39 = v50;
      v40 = type metadata accessor for BehaviorEvent();
      v52 = 0u;
      v53 = 0u;
      v54 = 0;
      v55 = 21;
      [v39 timestamp];
      sub_1C4EF9AC8();
      sub_1C45D644C(&v52, v7);
      v42 = v41;
      v43 = v51;
      v51[3] = v40;

      *v43 = v42;
    }

    else
    {
      (*(v13 + 32))(v16, v11, v12);
      v44 = type metadata accessor for BehaviorEvent();
      *&v52 = sub_1C4EFF048();
      *(&v52 + 1) = v45;
      v54 = 0;
      v53 = 0uLL;
      v55 = 16;
      [v50 timestamp];
      sub_1C4EF9AC8();
      sub_1C45D644C(&v52, v7);
      v47 = v46;
      v48 = v51;
      v51[3] = v44;

      *v48 = v47;
      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DDE0);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "Unexpected empty event body from PhotosPersonEvent publisher. Skipping event.", v26, 2u);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    v27 = type metadata accessor for BehaviorEvent();
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
    v55 = 21;
    [a1 timestamp];
    sub_1C4EF9AC8();
    sub_1C45D644C(&v52, v7);
    a2[3] = v27;
    *a2 = v28;
  }
}

uint64_t sub_1C462F4C8()
{
  v2 = sub_1C4EFDAB8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4410A24();
  type metadata accessor for BehaviorEvent();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v14 = v9[1];
    *v15 = v9[2];
    *&v15[9] = *(v9 + 41);
    sub_1C45D5A24(v1);
    (*(v5 + 104))(v0, *MEMORY[0x1E69A9450], v2);
    sub_1C4630878(&unk_1EDDEFFC0, MEMORY[0x1E69A9478]);
    sub_1C43FE99C();
    v10 = sub_1C4F010B8();
    swift_unknownObjectRelease();
    v11 = *(v5 + 8);
    v11(v0, v2);
    v11(v1, v2);
    v12 = v10 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1C462F670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v37 = a3;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v33 - v8;
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v33 - v16;
  v19 = v18;
  sub_1C445FFF0(a1, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v9, 1, v19) == 1)
  {
    sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9CC8();
  }

  else
  {
    sub_1C4EF9AD8();
    (*(v11 + 8))(v9, v19);
    sub_1C4EF9AC8();
  }

  sub_1C4EF9AC8();
  v20 = sub_1C4AB18E0(v15, v17, 1, 0);
  if (v20)
  {
    v21 = v20;
    v34 = sub_1C462EBA8(v20, a2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = (v22 + 16);
    v42 = sub_1C462FA58;
    v43 = 0;
    v36 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v35 = v19;
    v40 = sub_1C44405F8;
    v41 = &unk_1F43E4FD0;
    v24 = _Block_copy(&aBlock);
    v42 = sub_1C4630DE8;
    v43 = v22;
    v33[1] = v22;
    aBlock = MEMORY[0x1E69E9820];
    v39 = 1107296256;
    v40 = sub_1C4623884;
    v41 = &unk_1F43E4FF8;
    v25 = _Block_copy(&aBlock);

    v26 = v34;
    v27 = [v34 sinkWithCompletion:v24 shouldContinue:v25];
    _Block_release(v25);
    _Block_release(v24);

    v28 = *(v11 + 8);
    v29 = v35;
    v28(v15, v35);
    v28(v17, v29);
    swift_beginAccess();
    v30 = *v23;
  }

  else
  {
    v32 = *(v11 + 8);
    v32(v15, v19);
    result = (v32)(v17, v19);
    v30 = 0;
  }

  *v37 = v30;
  return result;
}

void sub_1C462FA64(void *a1, const char *a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1C4F02A38();
      v12 = sub_1C441D828(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1C43F8000, oslog, v7, a2, v8, 0xCu);
      sub_1C440962C(v9);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C462FC14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return 0;
}

void sub_1C462FC6C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v33 = a3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v32 - v11;
  v13 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream, &selRef_Location, &selRef_HashedCoordinates);
  v14 = [objc_allocWithZone(GDGeoHashVisitUtility) initWithGeoHashStream_];

  sub_1C445FFF0(a1, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = 0;
  if (sub_1C44157D4(v12, 1, v5) != 1)
  {
    v15 = sub_1C4EF9BF8();
    (*(v6 + 8))(v12, v5);
  }

  v16 = [v14 lastGeoHashVisitEventAt:v15 level:a2];

  if (!v16)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    type metadata accessor for BehaviorEvent();
    v22 = [v16 geoHash];
    v23 = [v16 isEnter];
    v34 = v22;
    v35 = v23;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = 18;
    v19 = [v16 date];
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    type metadata accessor for BehaviorEvent();
    v20 = [v16 geoHash];
    v21 = [v16 isEnter];
    v34 = v20;
    v35 = v21;
    v37 = 0;
    v38 = 0;
    v36 = 0;
    v39 = 19;
    v19 = [v16 date];
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDE2DDE0);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CE8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = a2;
      _os_log_impl(&dword_1C43F8000, v29, v30, "BehaviorHistoryUtility: lastGeoHashChangeEvent - Unexpected geohash level: %ld", v31, 0xCu);
      MEMORY[0x1C6942830](v31, -1, -1);
    }

LABEL_16:
    v27 = 0;
    goto LABEL_17;
  }

  type metadata accessor for BehaviorEvent();
  v17 = [v16 geoHash];
  v18 = [v16 isEnter];
  v34 = v17;
  v35 = v18;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = 20;
  v19 = [v16 date];
LABEL_10:
  v24 = v19;
  v25 = v32;
  sub_1C4EF9C78();

  sub_1C45D644C(&v34, v25);
  v27 = v26;

LABEL_17:
  *v33 = v27;
}

void sub_1C4630094(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 2:
      v10 = type metadata accessor for BehaviorEvent();
      v14 = [a1 geoHash];
      v15 = [a1 isEnter];
      v22 = v14;
      v23 = v15;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 20;
      v13 = [a1 date];
      goto LABEL_7;
    case 1:
      v10 = type metadata accessor for BehaviorEvent();
      v11 = [a1 geoHash];
      v12 = [a1 isEnter];
      v22 = v11;
      v23 = v12;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 19;
      v13 = [a1 date];
LABEL_7:
      v18 = v13;
      sub_1C4EF9C78();

      sub_1C45D644C(&v22, v9);
      a3[3] = v10;
      *a3 = v19;
      return;
    case 0:
      v10 = type metadata accessor for BehaviorEvent();
      v16 = [a1 geoHash];
      v17 = [a1 isEnter];
      v22 = v16;
      v23 = v17;
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v27 = 18;
      v13 = [a1 date];
      goto LABEL_7;
  }

  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000004ALL, 0x80000001C4F8E4D0);
  v21[1] = a2;
  v20 = sub_1C4F02858();
  MEMORY[0x1C6940010](v20);

  sub_1C4F024A8();
  __break(1u);
}

id sub_1C463031C(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v3 = v1;
  v2(v6);

  sub_1C4409678(v6, v6[3]);
  v4 = sub_1C4F02918();
  sub_1C440962C(v6);

  return v4;
}

uint64_t sub_1C46303A4()
{
  v1 = *(v0 + 16);

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView;
  v3 = sub_1C4EFCE48();
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView;
  v6 = sub_1C4EFFB28();
  sub_1C43FBCE0(v6);
  (*(v7 + 8))(v0 + v5);
  v8 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary);
  swift_unknownObjectRelease();

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  return v0;
}

uint64_t sub_1C463056C()
{
  sub_1C46303A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorHistoryUtility()
{
  result = qword_1EDDFB008;
  if (!qword_1EDDFB008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4630618()
{
  v0 = type metadata accessor for Configuration();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_1C4EFCE48();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_1C4EFFB28();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1C4630784();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4630784()
{
  if (!qword_1EDDFCD48)
  {
    sub_1C4EF9F88();
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDFCD48);
    }
  }
}

uint64_t sub_1C4630878(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C46308C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C4F01108();

  v9 = [a5 transcriptPublisherWithStreamName:v8 fromDate:a3 error:a4];

  return v9;
}

uint64_t sub_1C463093C()
{
  sub_1C4403FC0();
  v1 = sub_1C4EF9CD8();
  sub_1C43FBD18(v1);
  v3 = *(v2 + 80);
  sub_1C441B788();

  return sub_1C462CFB4(v0);
}

uint64_t sub_1C46309A4()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v6 + v3 + v4) & ~v3;
  v8 = sub_1C4EF9CD8();
  if (!sub_1C44157D4(v0 + v4, 1, v8))
  {
    sub_1C440A6B8(v8);
    (*(v9 + 8))(v0 + v4, v8);
  }

  if (!sub_1C44157D4(v0 + v7, 1, v8))
  {
    sub_1C440A6B8(v8);
    (*(v10 + 8))(v0 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v3 | 7);
}

uint64_t sub_1C4630ADC(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v1 + ((*(v7 + 64) + v8 + v9) & ~v8));

  return sub_1C462B0D4(a1, v1 + v9, v10);
}

unint64_t sub_1C4630B7C()
{
  result = qword_1EDDF0348;
  if (!qword_1EDDF0348)
  {
    sub_1C4572308(&unk_1EC0BA0D0, qword_1C4F13420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0348);
  }

  return result;
}

uint64_t sub_1C4630BE0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

void sub_1C4630C68(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EFFB28();
  sub_1C43FBD18(v4);
  v6 = *(v5 + 80);
  sub_1C441B788();

  sub_1C462EDBC(a1, a2);
}

uint64_t sub_1C4630D00(void *a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 80);
  sub_1C441B788();

  return sub_1C462D838(a1, v5);
}

uint64_t sub_1C4630D78(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4630E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C46310AC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C45B4BF8(a1, &selRef_bundleIdentifier);
  v8 = v7;
  if (!v7)
  {
    v9 = 0;
    v30 = 0;
    v31 = 0;
    v21 = 0;
    v32 = -1;
    goto LABEL_22;
  }

  v9 = v6;
  v10 = sub_1C4F01108();
  v11 = &off_1E81F1000;
  v12 = [v4 action];
  v13 = [v12 identifier];

  if (!v13)
  {
    sub_1C4F01138();
    v13 = sub_1C4F01108();
  }

  v59[0] = 0;
  v14 = [a2 actionForBundleIdentifier:v10 andActionIdentifier:v13 error:v59];

  if (v14)
  {
    v15 = v59[0];
    v16 = [v14 systemProtocols];
    sub_1C4631F48();
    v17 = sub_1C4F01678();

    v18 = sub_1C4428DA0(v17);
    v58 = v14;
    if (!v18)
    {

      v21 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v50 = [v4 v11[203]];
      v51 = [v50 identifier];

      v30 = sub_1C4F01138();
      v31 = v52;

      v32 = 12;
      goto LABEL_22;
    }

    v19 = v18;
    v56 = a3;
    v57 = v4;
    v54 = v9;
    v55 = v8;
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v21 = v59[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1C6940F90](v20, v17);
        }

        else
        {
          v22 = *(v17 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v22 identifier];
        v25 = sub_1C4F01138();
        v27 = v26;

        v59[0] = v21;
        v28 = v21[2];
        if (v28 >= v21[3] >> 1)
        {
          sub_1C44CD9C0();
          v21 = v59[0];
        }

        ++v20;
        v21[2] = v28 + 1;
        v29 = &v21[2 * v28];
        v29[4] = v25;
        v29[5] = v27;
      }

      while (v19 != v20);

      v8 = v55;
      a3 = v56;
      v9 = v54;
      v4 = v57;
      v11 = &off_1E81F1000;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  v33 = v59[0];
  v17 = sub_1C4EF97A8();

  swift_willThrow();
  if (qword_1EDDFA668 != -1)
  {
LABEL_24:
    swift_once();
  }

  v34 = sub_1C4F00978();
  sub_1C442B738(v34, qword_1EDE2DDE0);
  v35 = v17;
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CD8();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v8;
    v40 = v9;
    v41 = swift_slowAlloc();
    v59[0] = v41;
    *v38 = 136315138;
    v42 = v17;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v43 = sub_1C4F01198();
    v45 = sub_1C441D828(v43, v44, v59);

    *(v38 + 4) = v45;
    _os_log_impl(&dword_1C43F8000, v36, v37, "BehaviorRepresentable: Unable to access Link action metadata: %s", v38, 0xCu);
    sub_1C440962C(v41);
    v46 = v41;
    v9 = v40;
    v8 = v39;
    MEMORY[0x1C6942830](v46, -1, -1);
    MEMORY[0x1C6942830](v38, -1, -1);
  }

  v47 = [v4 action];
  v48 = [v47 identifier];

  v30 = sub_1C4F01138();
  v31 = v49;

  v32 = 12;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_22:
  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v30;
  *(a3 + 24) = v31;
  *(a3 + 32) = v21;
  *(a3 + 40) = v32;
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1C4631590(uint64_t *a1@<X8>)
{
  if (sub_1C46315F4())
  {
    v3 = sub_1C45B4BF8(v1, &selRef_bundleID);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a1 = v5;
  a1[1] = v6;
  sub_1C441F560(v7);
}

uint64_t sub_1C46315F4()
{
  sub_1C45B4BF8(v0, &selRef_bundleID);
  if (!v1)
  {
    goto LABEL_13;
  }

  sub_1C45B4BF8(v0, &selRef_launchReason);
  if (!v2)
  {
LABEL_12:

LABEL_13:
    v5 = 0;
    return v5 & 1;
  }

  if (([v0 starting] & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C45B4BF8(v0, &selRef_extensionHostID);
  if (v3)
  {

    goto LABEL_12;
  }

  if ((sub_1C4F013E8() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_1C4415EA8();
  if (sub_1C44191D4() & 1) != 0 || (sub_1C44191D4())
  {
  }

  else
  {
    v7 = sub_1C44191D4();

    if ((v7 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v4 = sub_1C4F013E8();

  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1C46317D8@<X0>(uint64_t a1@<X8>)
{
  if (!sub_1C463186C())
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    v7 = 0;
    v8 = -1;
    goto LABEL_6;
  }

  result = sub_1C45B4BF8(v1, &selRef_bundleID);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    result = sub_1C45B4BF8(v1, &selRef_intentClass);
    if (v7)
    {
      v8 = 1;
LABEL_6:
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = result;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;
      *(a1 + 40) = v8;
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

BOOL sub_1C463186C()
{
  v1 = sub_1C45B4BF8(v0, &selRef_intentClass);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1C45B4BF8(v0, &selRef_bundleID);
  if (!v6)
  {

    return 0;
  }

  if (v5 == 0xD000000000000013 && v6 == 0x80000001C4F84800)
  {
  }

  else
  {
    v8 = sub_1C4F02938();

    if ((v8 & 1) == 0)
    {

      return 1;
    }
  }

  if (v3 == 0xD000000000000013 && v4 == 0x80000001C4F8E570)
  {
  }

  else
  {
    v11 = sub_1C4F02938();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  return [v0 interactionDirection] == 2;
}

void sub_1C46319B0()
{
  sub_1C43FFE94();
  v3 = sub_1C45B4BF8(v1, &selRef_poiCategory);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    if (![v2 rank])
    {
      v7 = 2;
      goto LABEL_7;
    }

    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = -1;
LABEL_7:
  *v0 = v6;
  v0[1] = v5;
  sub_1C441F560(v7);
}

uint64_t sub_1C4631A40@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1C4EF9C78();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a2, v6, 1, v7);
}

id sub_1C4631ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = [v2 loiIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_1C4EF9D18();

    v13 = sub_1C4EF9D38();
    v14 = 0;
  }

  else
  {
    v13 = sub_1C4EF9D38();
    v14 = 1;
  }

  sub_1C440BAA8(v8, v14, 1, v13);
  sub_1C4631F8C(v8, v10);
  sub_1C4EF9D38();
  if (sub_1C44157D4(v10, 1, v13) == 1)
  {
    sub_1C4631FFC(v10);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_1C4EF9CF8();
    v16 = v17;
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  v18 = [v2 userSpecificPlaceType];
  result = [v2 starting];
  v20 = 0x100000000;
  *a1 = v15;
  *(a1 + 8) = v16;
  if (!result)
  {
    v20 = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v20 | v18;
  *(a1 + 40) = 14;
  return result;
}

void sub_1C4631C88()
{
  sub_1C43FFE94();
  v4 = sub_1C45B4BF8(v1, &selRef_mode);
  v6 = v5;
  if (v5)
  {
    v2 = v4;
    v7 = [v3 semanticType];
    v8 = [v3 starting];
    v9 = 0x100000000;
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v9 | v7;
  }

  else
  {
    sub_1C4406800();
  }

  *v0 = v2;
  v0[1] = v6;
  sub_1C442C544(v10);
}

double sub_1C4631D20@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 reason];
  v4 = [v1 starting];
  v5 = 0x100000000;
  if (!v4)
  {
    v5 = 0;
  }

  *a1 = v5 | v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 5;
  return result;
}

void sub_1C4631D98()
{
  sub_1C43FFE94();
  sub_1C45B4BF8(v1, &selRef_SSID);
  if (!v4)
  {
    v7 = 0;
    sub_1C4406800();
    goto LABEL_5;
  }

  v5 = sub_1C45B4BF8(v3, &selRef_SSID);
  if (v6)
  {
    v7 = v5;
    v2 = v6;
    v8 = [v3 starting];
LABEL_5:
    *v0 = v7;
    v0[1] = v2;
    sub_1C442C544(v8);
    return;
  }

  __break(1u);
}

void sub_1C4631E28()
{
  sub_1C43FFE94();
  sub_1C45B4BF8(v1, &selRef_address);
  if (!v4)
  {
    v7 = 0;
    sub_1C4406800();
    goto LABEL_5;
  }

  v5 = sub_1C45B4BF8(v3, &selRef_address);
  if (v6)
  {
    v7 = v5;
    v2 = v6;
    v8 = [v3 starting];
LABEL_5:
    *v0 = v7;
    v0[1] = v2;
    sub_1C442C544(v8);
    return;
  }

  __break(1u);
}

void sub_1C4631EB8(uint64_t *a1@<X8>)
{
  sub_1C45B4BF8(v1, &selRef_accessoryUniqueIdentifier);
  if (!v3)
  {
    v4 = 0;
    v5 = -1;
    goto LABEL_5;
  }

  v4 = sub_1C45B4BF8(v1, &selRef_accessoryUniqueIdentifier);
  if (v3)
  {
    v5 = 13;
LABEL_5:
    *a1 = v4;
    a1[1] = v3;
    sub_1C441F560(v5);
    return;
  }

  __break(1u);
}

unint64_t sub_1C4631F48()
{
  result = qword_1EC0BA100;
  if (!qword_1EC0BA100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BA100);
  }

  return result;
}

uint64_t sub_1C4631F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4631FFC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C463206C()
{
  v2 = v0;
  v3 = *sub_1C4409678((v0 + 32), *(v0 + 56));
  sub_1C45F52A4();
  if (!v1)
  {
    object = v2[7]._object;
    KeyValueStore.delete(key:)(v2[1]);
  }
}

void sub_1C46320C0(uint64_t a1)
{
  v60 = a1;
  v2 = v1;
  v57 = type metadata accessor for BehaviorSampleGeneratorError();
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBD08();
  v55 = (v4 - v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v56 = v54 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = v54 - v9;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v54 - v12;
  v14 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v58 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v21 = v19 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v54 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = v54 - v26;
  v28 = *(v1 + 120);
  v30 = *(v2 + 16);
  v29 = *(v2 + 24);
  v31 = v61;
  sub_1C446FB00();
  if (v31)
  {
    return;
  }

  v54[1] = v2;
  v54[2] = v28;
  v54[3] = v29;
  v54[4] = v30;
  v33 = v58;
  v32 = v59;
  v54[0] = v21;
  v61 = 0;
  if (sub_1C44157D4(v13, 1, v14) == 1)
  {
    sub_1C4EF9CC8();
    sub_1C4EF9BE8();
    v34 = v33;
    (*(v33 + 8))(v25, v14);
    v35 = sub_1C44157D4(v13, 1, v14);
    v36 = v32;
    v37 = v60;
    if (v35 != 1)
    {
      sub_1C44686E4(v13);
    }
  }

  else
  {
    v34 = v33;
    (*(v33 + 32))(v27, v13, v14);
    v36 = v32;
    v37 = v60;
  }

  if ((sub_1C4EF9C18() & 1) == 0)
  {
LABEL_17:
    v51 = sub_1C43FFEA0();
    v52(v51);
    return;
  }

  v38 = v61;
  sub_1C46325B8(v27, v37, 0);
  if (!v38)
  {
    sub_1C448EE10();
    v61 = 0;
    goto LABEL_17;
  }

  v39 = v56;
  v62 = v38;
  v40 = v38;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v41 = swift_dynamicCast();
  v42 = v55;
  if (v41)
  {

    sub_1C4633218(v36, v39);
    sub_1C463327C(v39, v42);
    v43 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);
    if (sub_1C44157D4(v42, 1, v43) == 1)
    {
      sub_1C46332E0();
      swift_allocError();
      sub_1C463327C(v39, v44);
      swift_willThrow();
      sub_1C4633338(v39);
      v45 = sub_1C43FFEA0();
      v46(v45);
      sub_1C4633338(v42);

      return;
    }

    v49 = *v42;
    v50 = v54[0];
    (*(v34 + 32))(v54[0], &v42[*(v43 + 48)], v14);
    sub_1C448EE10();
    swift_willThrow();
    v53 = *(v34 + 8);
    v53(v50, v14);
    sub_1C4633338(v39);
    v53(v27, v14);
  }

  else
  {
    v47 = sub_1C43FFEA0();
    v48(v47);
  }
}

void sub_1C46325B8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBD08();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  if ((a3 & 1) == 0 || (sub_1C463206C(), !v4))
  {
    v24 = a1;
    v25 = a2;
    v26 = objc_autoreleasePoolPush();
    v18 = v5[13];
    v17 = v5[14];
    v23[1] = sub_1C4409678(v5 + 10, v18);
    v19 = sub_1C4EF9CD8();
    v20 = *(*(v19 - 8) + 16);
    v20(v16, v24, v19);
    sub_1C440BAA8(v16, 0, 1, v19);
    v20(v13, v25, v19);
    sub_1C440BAA8(v13, 0, 1, v19);
    v21 = sub_1C4EFDA68();
    v22 = (*(v17 + 32))(v16, v13, 0, v21, v18, v17);

    sub_1C44686E4(v13);
    sub_1C44686E4(v16);
    sub_1C442C554();
    sub_1C45F2ACC(v22, sub_1C46327E4, 0);

    objc_autoreleasePoolPop(v26);
    if (!v4)
    {
      sub_1C442C554();
      sub_1C45F3BBC();
    }
  }
}

uint64_t sub_1C46327E4(uint64_t a1)
{
  result = sub_1C4F01968();
  if (v1)
  {
    type metadata accessor for BehaviorSampleGeneratorError();
    sub_1C46332E0();
    swift_allocError();
    v5 = v4;
    v6 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);
    v7 = *(v6 + 48);
    *v5 = v1;
    v8 = sub_1C4EF9CD8();
    (*(*(v8 - 8) + 16))(&v5[v7], a1, v8);
    sub_1C440BAA8(v5, 0, 1, v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C46328CC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *sub_1C4409678((v2 + 32), *(v2 + 56));
  v8 = sub_1C45F451C(a1);
  if (!v3)
  {
    v9 = v8;
    sub_1C442C554();
    v10 = sub_1C45F3F88();
    v12 = v10;
    v13 = sub_1C4A3E114(v10);
    if (v14)
    {

      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v15 = sub_1C4F00978();
      sub_1C442B738(v15, qword_1EDE2DDE0);
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CF8();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "BehaviorSampleGenerator: Returning no negative samples since there are no behaviors in the table";
LABEL_15:
      _os_log_impl(&dword_1C43F8000, v16, v17, v19, v18, 2u);
      MEMORY[0x1C6942830](v18, -1, -1);
LABEL_16:

      return MEMORY[0x1E69E7CC0];
    }

    if (v13 < 1)
    {

      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406728();
      }

      v22 = sub_1C4F00978();
      sub_1C442B738(v22, qword_1EDE2DDE0);
      v16 = sub_1C4F00968();
      v17 = sub_1C4F01CF8();
      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "BehaviorSampleGenerator: Returning no negative samples since cumulative counts has not been computed";
      goto LABEL_15;
    }

    v20 = *(v4 + 72);
    *(swift_allocObject() + 16) = v13;
    v21 = sub_1C4632B88(v12, v9, a2, sub_1C46331C4);

    sub_1C442C554();
    v7 = sub_1C45F4CC4(v21);
  }

  return v7;
}

uint64_t sub_1C4632B50@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    result = sub_1C4703364();
    *a2 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4632B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v8 = 0;
  v27 = MEMORY[0x1E69E7CD0];
  v9 = a2 + 56;
  while (1)
  {
LABEL_2:
    if (v8 == 50)
    {
      return v27;
    }

    v10 = v27;
    if (*(v27 + 16) >= a3)
    {
      return v10;
    }

    a4(&v26);
    result = sub_1C45E2594(v26, a1);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = 0;
LABEL_7:
    ++v8;
    if (v13 >= *(a1 + 16))
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v18 = sub_1C4F00978();
      sub_1C442B738(v18, qword_1EDE2DDE0);
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CE8();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1C43F8000, v19, v20, "WeightedProbabilitySampleGenerator: Random number was generated that is larger than the maximum value in the cdf", v21, 2u);
        MEMORY[0x1C6942830](v21, -1, -1);
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v14 = *(a2 + 40);
        v15 = sub_1C4F02AE8();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(v9 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(a2 + 48) + 8 * v17) == v13)
          {
            goto LABEL_2;
          }
        }
      }

      if (*(v10 + 16))
      {
        v22 = *(v10 + 40);
        v23 = sub_1C4F02AE8();
        v24 = ~(-1 << *(v10 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(v10 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v23 = v25 + 1;
          if (*(*(v10 + 48) + 8 * v25) == v13)
          {
            goto LABEL_2;
          }
        }
      }

      sub_1C483A4A0(&v26, v13);
    }
  }

  v13 = result + 1;
  if (!__OFADD__(result, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_1C4632DD0()
{
  v1 = v0[3];

  sub_1C440962C(v0 + 4);
  v2 = v0[9];

  sub_1C440962C(v0 + 10);
  v3 = v0[15];

  return v0;
}

uint64_t sub_1C4632E10()
{
  sub_1C4632DD0();

  return swift_deallocClassInstance();
}

void *sub_1C4632EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C43FCE64();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39[-1] - v23;
  v40 = v25;
  v41 = v26;
  v27 = sub_1C4422F90(v39);
  (*(*(a5 - 8) + 32))(v27, a1, a5);
  (*(v15 + 32))(v24, a2, a6);
  v28 = swift_allocObject();
  sub_1C4418280(v39, v40);
  sub_1C43FCE64();
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v39[-1] - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33);
  v35 = *v33;
  (*(v15 + 16))(v21, v24, a6);
  v36 = sub_1C46330F4(v35, v21, a3, v28, a6, a8);
  (*(v15 + 8))(v24, a6);
  sub_1C440962C(v39);
  return v36;
}

void *sub_1C46330F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[13] = a5;
  a4[14] = a6;
  v11 = sub_1C4422F90(a4 + 10);
  (*(*(a5 - 8) + 32))(v11, a2, a5);
  a4[7] = type metadata accessor for BehaviorDatabase(0);
  a4[8] = &off_1F43E5250;
  a4[2] = 0xD000000000000029;
  a4[3] = 0x80000001C4F8E5F0;
  a4[4] = a1;
  type metadata accessor for WeightedProbabilitySampleGenerator();
  a4[9] = swift_allocObject();
  a4[15] = a3;
  return a4;
}

uint64_t type metadata accessor for BehaviorSampleGeneratorError()
{
  result = qword_1EC0BA118;
  if (!qword_1EC0BA118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4633218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorSampleGeneratorError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C463327C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BehaviorSampleGeneratorError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46332E0()
{
  result = qword_1EC0BA110;
  if (!qword_1EC0BA110)
  {
    type metadata accessor for BehaviorSampleGeneratorError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BA110);
  }

  return result;
}

uint64_t sub_1C4633338(uint64_t a1)
{
  v2 = type metadata accessor for BehaviorSampleGeneratorError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46333BC()
{
  sub_1C4633414();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C4633414()
{
  if (!qword_1EC0BA128)
  {
    sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4EF9CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0BA128);
    }
  }
}

unint64_t sub_1C4633494()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      if (*v3++)
      {

        v5 = sub_1C45D62A8();
        v7 = v6;
      }

      else
      {
        v7 = 0xE300000000000000;
        v5 = 7104878;
      }

      MEMORY[0x1C6940010](v5, v7);

      MEMORY[0x1C6940010](2604, 0xE200000000000000);
      MEMORY[0x1C6940010](8224, 0xE200000000000000);

      --v2;
    }

    while (v2);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](93, 0xE100000000000000);

  return 0xD000000000000010;
}

uint64_t getEnumTagSinglePayload for BehaviorSequenceGenerator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BehaviorSequenceGenerator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

id sub_1C4633650(void *a1, uint64_t a2, double a3, double a4)
{
  if (a2 <= 0)
  {
    v19 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorSequence();
    v20 = sub_1C4F01658();
    v21 = [v19 initWithSequence_];

    return v21;
  }

  else
  {
    v8 = sub_1C4F029C8();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    *(v9 + 32) = a4;
    v26 = sub_1C4633A94;
    v27 = v9;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C4633D18;
    v25 = &unk_1F43E5368;
    v10 = _Block_copy(&v22);

    v11 = [a1 scanWithInitial:v8 nextPartialResult:v10];
    _Block_release(v10);
    swift_unknownObjectRelease();
    v26 = sub_1C4633DE0;
    v27 = 0;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C462BCF4;
    v25 = &unk_1F43E5390;
    v12 = _Block_copy(&v22);
    v13 = [v11 filterWithIsIncluded_];

    _Block_release(v12);
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    *(v14 + 32) = a4;
    v26 = sub_1C4633F60;
    v27 = v14;
    v22 = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = sub_1C4633F6C;
    v25 = &unk_1F43E53E0;
    v15 = _Block_copy(&v22);
    v16 = v13;

    v17 = [v16 mapWithTransform_];

    _Block_release(v15);
    return v17;
  }
}

uint64_t sub_1C463390C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  sub_1C442B870(a1, &v17);
  swift_dynamicCast();
  v11 = v19;
  if (v19)
  {
    sub_1C456902C(&qword_1EC0BA130, qword_1C4F13908);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C4F0D130;
    *(v12 + 32) = v11;
    v18 = v12;
  }

  v13 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v14 = sub_1C4633AA0(v13, a2, a3, a5, a6);

  if (v14)
  {

    MEMORY[0x1C6940330](v15);
    if (*(v18 + 16) >= *(v18 + 24) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    a2 = 0;
    v19 = 0;
  }

  else
  {
    v19 = a2;
    swift_retain_n();
  }

  a4[3] = &type metadata for BehaviorSequenceGenerator.PartialSequence;
  *a4 = v18;
  a4[1] = a2;
}

BOOL sub_1C4633AA0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1C4EF9CD8();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *(a1 + 16);
  if (v18 >= a3)
  {
    return 0;
  }

  if (!v18)
  {
    return 1;
  }

  v19 = *(a1 + 32);
  if (!v19)
  {
    return 1;
  }

  v20 = sub_1C4A3E138(a1);
  if (v20 < 2)
  {
    return 1;
  }

  v22 = v20;
  v23 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
  v24 = v11[2];
  v31 = *(a2 + 64);
  v24(v17, v31 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);
  v24(v14, *(v19 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);

  sub_1C4EF9B78();
  v26 = v25;
  v27 = v11[1];
  v27(v14, v10);
  v27(v17, v10);
  if (v26 > a4)
  {
    sub_1C4634004(v22);

    return 0;
  }

  v24(v17, v31 + v23, v10);
  v24(v14, *(v22 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v10);
  sub_1C4EF9B78();
  v29 = v28;
  sub_1C4634004(v22);

  v27(v14, v10);
  v27(v17, v10);
  return v29 <= a5;
}

id sub_1C4633D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[3] = swift_getObjectType();
  v10[0] = a2;

  swift_unknownObjectRetain();

  v6(v9, v10, a3);

  sub_1C4409678(v9, v9[3]);
  v7 = sub_1C4F02918();
  sub_1C440962C(v9);
  sub_1C440962C(v10);

  return v7;
}

BOOL sub_1C4633DE0()
{
  swift_unknownObjectRetain();
  swift_dynamicCast();

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_1C4633E4C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  v5 = v12;
  v6 = *(v12 + 16);
  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_12:
    __break(1u);
  }

  else
  {
    if (v7 >= 1)
    {
      v8 = 1;
      while (1)
      {
        MEMORY[0x1C6940330](result);
        if (*(v12 + 16) >= *(v12 + 24) >> 1)
        {
          sub_1C4F016D8();
        }

        result = sub_1C4F01748();
        if (v7 == v8)
        {
          break;
        }

        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          goto LABEL_12;
        }
      }

      v5 = v12;
    }

    v10 = type metadata accessor for BehaviorSequence();
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    a2[3] = v10;
    *a2 = v11;
  }

  return result;
}

uint64_t sub_1C4633F60@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_1C4633E4C(v1[2], a1);
}

id sub_1C4633F6C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v6, v3);

  swift_unknownObjectRelease();
  sub_1C4409678(v6, v6[3]);
  v4 = sub_1C4F02918();
  sub_1C440962C(v6);

  return v4;
}

uint64_t sub_1C4634004(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1C463402C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0();
    v5 = sub_1C486C288(v2);
    v6 = 0;
    v7 = v2 + 56;
    v26 = v2 + 64;
    v27 = v1;
    v28 = v2 + 56;
    v29 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v31 = v4;
        v30 = v3;
        v9 = *(v2 + 48) + 16 * v5;
        v10 = *v9;
        v11 = *(v9 + 8);
        sub_1C45A24AC(*v9, v11);
        sub_1C45FE65C(v10, v11);
        v13 = v12;
        v15 = v14;
        sub_1C45A24C0(v10, v11);
        v16 = *(v32 + 16);
        if (v16 >= *(v32 + 24) >> 1)
        {
          sub_1C44CD9C0();
        }

        *(v32 + 16) = v16 + 1;
        v17 = v32 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v15;
        if (v31)
        {
          goto LABEL_29;
        }

        v7 = v28;
        v2 = v29;
        v18 = 1 << *(v29 + 32);
        if (v5 >= v18)
        {
          goto LABEL_26;
        }

        v19 = *(v28 + 8 * v8);
        if ((v19 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v29 + 36) != v30)
        {
          goto LABEL_28;
        }

        v20 = v19 & (-2 << (v5 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = v8 << 6;
          v22 = v8 + 1;
          v23 = (v26 + 8 * v8);
          while (v22 < (v18 + 63) >> 6)
          {
            v25 = *v23++;
            v24 = v25;
            v21 += 64;
            ++v22;
            if (v25)
            {
              sub_1C440951C(v5, v30, 0);
              v18 = __clz(__rbit64(v24)) + v21;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v30, 0);
        }

LABEL_19:
        if (++v6 == v27)
        {
          return;
        }

        v4 = 0;
        v3 = *(v29 + 36);
        v5 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1C463428C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C4637848(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

BOOL sub_1C4634310(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  for (i = a2 + 32; ; i += 40)
  {
    if (!v3)
    {
      v12 = 0;
      memset(v11, 0, sizeof(v11));
      goto LABEL_7;
    }

    sub_1C442E860(i, &v8);
    v5 = v9;
    v6 = v10;
    sub_1C4409678(&v8, v9);
    if ((*(v6 + 8))(a1, v5, v6))
    {
      break;
    }

    sub_1C440962C(&v8);
    --v3;
  }

  sub_1C441D670(&v8, v11);
LABEL_7:
  sub_1C4420C3C(v11, &qword_1EC0BA178, &unk_1C4F13A30);
  return v3 != 0;
}

void sub_1C46343F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v22 = sub_1C45FD2E4();
  sub_1C463402C(v22);
  v24 = v23;

  sub_1C448DE08(&unk_1F43D2A90);
  sub_1C49D36C0(v25);

  sub_1C4499940(v24, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C463446C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v35 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v35);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v32 = v6 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v29 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v29 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - v15;
  v17 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  sub_1C4EF9B78();
  sub_1C4EF9BE8();
  v34 = v14;
  sub_1C4EF9BE8();
  v18 = v2[16];
  v19 = v2[18];
  v20 = sub_1C4409678(v2 + 13, v18);
  sub_1C4EF9BE8();
  v21 = v33;
  (*(v19 + 8))(v11, v18, v19);
  v22 = sub_1C440DF44();
  if (v21)
  {
    v25 = v35;
    v20(v22, v35);
    v20(v34, v25);
    return (v20)(v16, v25);
  }

  else
  {
    v20(v22, v35);
    v33 = v2[10];
    v23 = v2[12];
    v29[1] = sub_1C4409678(v2 + 7, v33);
    v24 = v32;
    sub_1C4EF9BE8();
    (*(v23 + 8))(v24, v33, v23);
    v27 = v35;
    v20(v32, v35);
    v33 = objc_autoreleasePoolPush();
    v28 = v34;
    sub_1C463476C(v31, v16, v34, v30);
    objc_autoreleasePoolPop(v33);
    v20(v28, v27);
    return (v20)(v16, v27);
  }
}

void sub_1C463476C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v133 = a3;
  v130 = a2;
  v118 = a1;
  v132 = a4;
  v131 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v131);
  v124 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v125 = v10 - v9;
  v11 = sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8);
  v12 = sub_1C43FBD18(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v91 - v15;
  v16 = sub_1C456902C(&qword_1EC0BA150, &unk_1C4F139F8);
  v17 = sub_1C43FCDF8(v16);
  v127 = v18;
  v128 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBD08();
  v126 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v120 = &v91 - v24;
  v25 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v26 = sub_1C43FBD18(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v91 - v33;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  v36 = v4[5];
  v37 = v4[6];
  v129 = v4;
  sub_1C4409678(v4 + 2, v36);
  v38 = sub_1C4EF9CD8();
  sub_1C43FBCE0(v38);
  v40 = *(v39 + 16);
  v40(v34, v130, v38);
  sub_1C440BAA8(v34, 0, 1, v38);
  v40(v31, v133, v38);
  sub_1C440BAA8(v31, 0, 1, v38);
  v41 = sub_1C4EFDA68();
  v42 = (*(v37 + 32))(v34, v31, 0, v41, v36, v37);

  sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v34, &unk_1EC0B84E0, qword_1C4F0D2D0);
  type metadata accessor for BehaviorEvent();
  v43 = v42;
  v44 = v134;
  sub_1C4EFFC38();
  v45 = v44;
  if (v44)
  {

LABEL_37:
  }

  else
  {
    v93 = v43;
    v94 = 0;
    v95 = v35;
    v46 = type metadata accessor for TimeBasedBehaviorSample();
    v47 = v123;
    sub_1C440BAA8(v123, 1, 1, v46);
    v48 = sub_1C4636628(v47, 5);
    sub_1C4420C3C(v47, &qword_1EC0BA140, &qword_1C4F139E8);
    v123 = *(v48 + 16);
    v104 = *MEMORY[0x1E69A9450];
    v49 = (v124 + 104);
    v103 = *MEMORY[0x1E69A93E8];
    v102 = *MEMORY[0x1E69A93F8];
    v101 = *MEMORY[0x1E69A9408];
    v117 = *MEMORY[0x1E69A9418];
    v116 = *MEMORY[0x1E69A9440];
    v115 = *MEMORY[0x1E69A9420];
    v114 = *MEMORY[0x1E69A9458];
    v100 = *MEMORY[0x1E69A9430];
    v113 = *MEMORY[0x1E69A93C8];
    v112 = *MEMORY[0x1E69A93F0];
    v99 = *MEMORY[0x1E69A9400];
    v111 = *MEMORY[0x1E69A9470];
    v98 = *MEMORY[0x1E69A93D8];
    v110 = *MEMORY[0x1E69A9428];
    v97 = *MEMORY[0x1E69A93E0];
    v96 = *MEMORY[0x1E69A9448];
    v109 = *MEMORY[0x1E69A9438];
    v108 = *MEMORY[0x1E69A9410];
    v107 = *MEMORY[0x1E69A93D0];
    v106 = *MEMORY[0x1E69A9460];
    v121 = (v124 + 8);
    v105 = *MEMORY[0x1E69A9468];
    v124 = v48;
    v50 = v48 + 72;
    v119 = MEMORY[0x1E69E7CC0];
    v51 = v132;
    v52 = v130;
    v122 = v49;
    v92 = v48 + 72;
LABEL_4:
    v53 = (v50 + 48 * v45);
    v54 = v127;
    v55 = v128;
    v57 = v125;
    v56 = v126;
    while (v123 != v45)
    {
      if (v45 >= *(v124 + 16))
      {
        __break(1u);
        return;
      }

      v58 = v51;
      v59 = *(v53 - 5);
      v60 = *(v53 - 4);
      v131 = *(v53 - 3);
      v132 = v59;
      v61 = *(v53 - 2);
      v133 = *(v53 - 1);
      v134 = v61;
      v62 = *v53;
      v64 = v129[26];
      v63 = v129[27];
      v65 = *v49;
      switch(*v53)
      {
        case 1:
          sub_1C4431FDC();
          v69();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          goto LABEL_23;
        case 2:
          v66 = &v141 + 4;
          goto LABEL_21;
        case 3:
          v68 = &v142;
          goto LABEL_26;
        case 4:
          v66 = &v142 + 4;
          goto LABEL_21;
        case 5:
          v68 = &v136;
          goto LABEL_26;
        case 6:
          v68 = (&v136 + 4);
          goto LABEL_26;
        case 7:
        case 9:
        case 14:
        case 15:
        case 16:
        case 17:
          goto LABEL_22;
        case 8:
          v68 = &v137;
          goto LABEL_26;
        case 10:
          v66 = &v137 + 4;
          goto LABEL_21;
        case 11:
          goto LABEL_27;
        case 12:
          sub_1C4431FDC();
          v67();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          goto LABEL_23;
        case 13:
          v66 = &v138;
          goto LABEL_21;
        case 18:
          v68 = (&v138 + 4);
          goto LABEL_26;
        case 19:
          v68 = &v139;
          goto LABEL_26;
        case 20:
          v68 = (&v139 + 4);
          goto LABEL_26;
        case 21:
          v68 = &v140;
LABEL_26:
          v72 = *(v68 - 64);
LABEL_27:
          sub_1C4431FDC();
          v73();
          break;
        default:
          v66 = &v140 + 4;
LABEL_21:
          v70 = *(v66 - 64);
LABEL_22:
          sub_1C4431FDC();
          v71();
LABEL_23:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          break;
      }

      v74 = v64(v57);
      (*v121)(v57, v55);
      if (v74)
      {
        v75 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v135 = v75;
        v51 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = *(v75 + 16);
          sub_1C4408714();
          sub_1C459D238();
          v75 = v135;
        }

        v52 = v130;
        v49 = v122;
        v50 = v92;
        v78 = *(v75 + 16);
        v79 = v78 + 1;
        if (v78 >= *(v75 + 24) >> 1)
        {
          v119 = v78 + 1;
          sub_1C459D238();
          v79 = v119;
          v49 = v122;
          v75 = v135;
        }

        ++v45;
        *(v75 + 16) = v79;
        v119 = v75;
        v80 = v75 + 48 * v78;
        *(v80 + 32) = v132;
        *(v80 + 40) = v60;
        *(v80 + 48) = v131;
        *(v80 + 56) = v134;
        *(v80 + 64) = v133;
        *(v80 + 72) = v62;
        goto LABEL_4;
      }

      sub_1C45A23B4(v132, v60, v131, v134, v133, v62);
      v53 += 48;
      ++v45;
      v51 = v58;
      v54 = v127;
      v55 = v128;
      v52 = v130;
      v57 = v125;
      v56 = v126;
      v49 = v122;
    }

    MEMORY[0x1EEE9AC00](v81);
    *(&v91 - 2) = v52;
    v82 = v94;
    sub_1C45D9C64();
    v84 = v83;

    v85 = v118;
    v86 = v129;
    v87 = sub_1C4636AFC(v84, v118, -1);
    if (v82)
    {
      (*(v54 + 8))(v120, v55);

      v43 = v93;
      goto LABEL_37;
    }

    v134 = v87;

    (*(v54 + 16))(v56, v120, v55);
    v88 = swift_allocObject();
    v89 = v95;
    v88[2] = v86;
    v88[3] = v89;
    v88[4] = v85;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0BA158, &qword_1C4F13A18);
    sub_1C4401CBC(&qword_1EC0BA160, &qword_1EC0BA150, &unk_1C4F139F8);
    sub_1C4401CBC(&qword_1EC0BA168, &qword_1EC0BA158, &qword_1C4F13A18);
    sub_1C4F02958();

    (*(v54 + 8))(v120, v55);

    v90 = sub_1C456902C(&qword_1EC0BA170, &unk_1C4F13A20);
    *(v51 + *(v90 + 52)) = v134;
  }
}

uint64_t sub_1C4635278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for TimeBasedBehaviorSample() + 24);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3 + v11, a2, v12);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 41) = 1;
  return sub_1C45D7F78(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C4635350(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v5[24] = a1;
  v5[25] = a3;
  v7 = *(*(sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8) - 8) + 64) + 15;
  v5[28] = swift_task_alloc();
  v8 = type metadata accessor for TimeBasedBehaviorSample();
  v5[29] = v8;
  v9 = *(v8 - 8);
  v5[30] = v9;
  v10 = *(v9 + 64) + 15;
  v5[31] = swift_task_alloc();
  v11 = sub_1C4EF9CD8();
  v5[32] = v11;
  v12 = *(v11 - 8);
  v5[33] = v12;
  v13 = *(v12 + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v14 = sub_1C4EFDAB8();
  v5[36] = v14;
  v15 = *(v14 - 8);
  v5[37] = v15;
  v16 = *(v15 + 64) + 15;
  v5[38] = swift_task_alloc();
  v17 = swift_task_alloc();
  v18 = *a2;
  v5[39] = v17;
  v5[40] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1C4635524, 0, 0);
}

uint64_t sub_1C4635524()
{
  v128 = v0;
  if (sub_1C4634310(*(v0 + 320), *(*(v0 + 200) + 192)))
  {
    if (qword_1EDDFA668 != -1)
    {
LABEL_52:
      sub_1C4406728();
    }

    v1 = *(v0 + 320);
    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DDE0);

    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 320);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v127[0] = v7;
      *v6 = 136315138;

      v8 = sub_1C45D62A8();
      v10 = v9;

      v11 = sub_1C441D828(v8, v10, v127);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, v3, v4, "BehaviorsFeatureProvider: Dropping sample due to hitting window limit for behavior: %s", v6, 0xCu);
      sub_1C440962C(v7);
      sub_1C43FFD4C();
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    goto LABEL_47;
  }

  v12 = *(v0 + 208);
  swift_beginAccess();
  if (*(v12 + 16) > 99)
  {
    goto LABEL_47;
  }

  v14 = *(v0 + 312);
  v13 = *(v0 + 320);
  v15 = *(v0 + 288);
  v16 = *(v0 + 296);
  v17 = *(v0 + 200);
  v18 = *(v17 + 208);
  v19 = *(v17 + 216);
  v20 = *(v13 + 41);
  v21 = v13[2];
  *(v0 + 16) = v13[1];
  *(v0 + 32) = v21;
  *(v0 + 41) = v20;
  sub_1C45D5A24(v14);
  v122 = v18;
  v22 = v18(v14);
  v121 = *(v16 + 8);
  v121(v14, v15);
  if ((v22 & 1) == 0)
  {
LABEL_47:
    **(v0 + 192) = MEMORY[0x1E69E7CC0];
LABEL_48:
    v84 = *(v0 + 304);
    v83 = *(v0 + 312);
    v86 = *(v0 + 272);
    v85 = *(v0 + 280);
    v87 = *(v0 + 248);
    v88 = *(v0 + 224);

    v89 = *(v0 + 8);

    return v89();
  }

  v23 = *(v0 + 320);
  v24 = *(v0 + 272);
  v25 = *(v0 + 280);
  v26 = *(v0 + 256);
  v27 = *(v0 + 264);
  v28 = *(v0 + 200);
  v29 = v28[16];
  v30 = v28[18];
  sub_1C4409678(v28 + 13, v29);
  v123 = v23;
  v119 = *(v27 + 16);
  v119(v24, *(v23 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v26);
  sub_1C4EF9BE8();
  v31 = *(v27 + 8);
  v31(v24, v26);
  (*(v30 + 8))(v25, v29, v30);
  v32 = *(v0 + 224);
  v33 = *(v0 + 320);
  v125 = *(v0 + 296);
  v34 = *(v0 + 248);
  v35 = *(v0 + 256);
  v36 = *(v0 + 232);
  v117 = *(v0 + 200);
  v31(*(v0 + 280), v35);
  v37 = *(v13 + 2);
  v39 = *(v33 + 24);
  v38 = *(v33 + 32);
  v40 = *(v33 + 48);
  v112 = v37;
  v114 = *(v33 + 40);
  LOBYTE(v33) = *(v33 + 56);
  v119(v34 + *(v36 + 24), *(v123 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v35);
  *v34 = v112;
  *(v34 + 8) = v39;
  *(v34 + 16) = v38;
  *(v34 + 24) = v114;
  *(v34 + 32) = v40;
  *(v34 + 40) = v33;
  *(v34 + 41) = 0;
  sub_1C46375C4(v34, v32);
  sub_1C440BAA8(v32, 0, 1, v36);
  sub_1C45D7F78(v112, v39, v38, v114, v40, v33);
  v41 = sub_1C4636628(v32, 5);
  sub_1C4420C3C(v32, &qword_1EC0BA140, &qword_1C4F139E8);
  v42 = 0;
  v118 = *(v41 + 16);
  v99 = *MEMORY[0x1E69A9450];
  v43 = (v125 + 104);
  v98 = *MEMORY[0x1E69A93E8];
  v96 = *MEMORY[0x1E69A9408];
  v97 = *MEMORY[0x1E69A93F8];
  v111 = *MEMORY[0x1E69A9440];
  v113 = *MEMORY[0x1E69A9418];
  v109 = *MEMORY[0x1E69A9458];
  v110 = *MEMORY[0x1E69A9420];
  v95 = *MEMORY[0x1E69A9430];
  v108 = *MEMORY[0x1E69A93C8];
  v107 = *MEMORY[0x1E69A93F0];
  v94 = *MEMORY[0x1E69A9400];
  v106 = *MEMORY[0x1E69A9470];
  v93 = *MEMORY[0x1E69A93D8];
  v105 = *MEMORY[0x1E69A9428];
  v92 = *MEMORY[0x1E69A93E0];
  v91 = *MEMORY[0x1E69A9448];
  v104 = *MEMORY[0x1E69A9438];
  v102 = *MEMORY[0x1E69A93D0];
  v103 = *MEMORY[0x1E69A9410];
  v100 = *MEMORY[0x1E69A9468];
  v101 = *MEMORY[0x1E69A9460];
  v120 = v41;
  v44 = v41 + 72;
  v115 = MEMORY[0x1E69E7CC0];
  v116 = (v125 + 104);
  v90 = v41 + 72;
LABEL_9:
  v45 = (v44 + 48 * v42);
  while (v118 != v42)
  {
    if (v42 >= *(v120 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v46 = *(v45 - 5);
    v47 = *(v45 - 4);
    v49 = *(v45 - 3);
    v48 = *(v45 - 2);
    v124 = v46;
    v126 = *(v45 - 1);
    v50 = *v45;
    v51 = *v43;
    v52 = *(v0 + 304);
    v53 = *(v0 + 288);
    switch(*v45)
    {
      case 1:
        v51(v52, v101, v53);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v54 = v48;
        goto LABEL_34;
      case 2:
        v54 = *(v45 - 2);
        v55 = v102;
        goto LABEL_33;
      case 3:
        v54 = *(v45 - 2);
        v56 = v103;
        goto LABEL_37;
      case 4:
        v54 = *(v45 - 2);
        v55 = v104;
        goto LABEL_33;
      case 5:
        v54 = *(v45 - 2);
        v56 = v91;
        goto LABEL_37;
      case 6:
        v54 = *(v45 - 2);
        v56 = v92;
        goto LABEL_37;
      case 7:
        v54 = *(v45 - 2);
        v55 = v105;
        goto LABEL_33;
      case 8:
        v54 = *(v45 - 2);
        v56 = v93;
        goto LABEL_37;
      case 9:
        v54 = *(v45 - 2);
        v55 = v106;
        goto LABEL_33;
      case 10:
        v54 = *(v45 - 2);
        v55 = v94;
        goto LABEL_33;
      case 11:
        v54 = *(v45 - 2);
        v56 = v107;
        goto LABEL_37;
      case 12:
        v51(v52, v108, v53);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v54 = v48;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        goto LABEL_34;
      case 13:
        v54 = *(v45 - 2);
        v55 = v95;
        goto LABEL_33;
      case 14:
        v54 = *(v45 - 2);
        v55 = v109;
        goto LABEL_33;
      case 15:
        v54 = *(v45 - 2);
        v51(v52, v110, v53);
        goto LABEL_34;
      case 16:
        v54 = *(v45 - 2);
        v55 = v111;
        goto LABEL_33;
      case 17:
        v54 = *(v45 - 2);
        v55 = v113;
        goto LABEL_33;
      case 18:
        v54 = *(v45 - 2);
        v56 = v96;
        goto LABEL_37;
      case 19:
        v54 = *(v45 - 2);
        v56 = v97;
        goto LABEL_37;
      case 20:
        v54 = *(v45 - 2);
        v56 = v98;
        goto LABEL_37;
      case 21:
        v54 = *(v45 - 2);
        v56 = v99;
LABEL_37:
        v51(v52, v56, v53);
        break;
      default:
        v54 = *(v45 - 2);
        v55 = v100;
LABEL_33:
        v51(v52, v55, v53);
LABEL_34:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        break;
    }

    v57 = *(v0 + 304);
    v58 = *(v0 + 288);
    v59 = v122(v57);
    v121(v57, v58);
    if (v59)
    {
      v60 = v115;
      v127[0] = v115;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v115 + 16);
        sub_1C4408714();
        sub_1C459D238();
        v60 = v127[0];
      }

      v43 = v116;
      v44 = v90;
      v62 = *(v60 + 16);
      v63 = v62 + 1;
      if (v62 >= *(v60 + 24) >> 1)
      {
        sub_1C459D238();
        v63 = v62 + 1;
        v60 = v127[0];
      }

      ++v42;
      *(v60 + 16) = v63;
      v115 = v60;
      v64 = v60 + 48 * v62;
      *(v64 + 32) = v124;
      *(v64 + 40) = v47;
      *(v64 + 48) = v49;
      *(v64 + 56) = v54;
      *(v64 + 64) = v126;
      *(v64 + 72) = v50;
      goto LABEL_9;
    }

    sub_1C45A23B4(v124, v47, v49, v54, v126, v50);
    v45 += 48;
    ++v42;
    v43 = v116;
  }

  v66 = *(v0 + 240);
  v65 = *(v0 + 248);
  v68 = *(v0 + 208);
  v67 = *(v0 + 216);
  v69 = *(v0 + 200);

  *(swift_task_alloc() + 16) = v65;
  sub_1C45D9C64();
  v71 = v70;

  sub_1C456902C(&qword_1EC0B9118, &unk_1C4F0EC30);
  v72 = *(v66 + 72);
  v73 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1C4F0D130;
  sub_1C46375C4(v65, v74 + v73);
  v127[0] = v74;
  sub_1C49D38F8(v71);
  swift_beginAccess();
  v75 = sub_1C4636AFC(v74, v67, *(v68 + 16));
  v76 = *(v0 + 248);
  v77 = *(v0 + 208);
  v78 = *(v0 + 192);

  *v78 = v75;
  sub_1C4637628(v76);
  result = swift_beginAccess();
  v80 = *(v77 + 16);
  v81 = __OFADD__(v80, 1);
  v82 = v80 + 1;
  if (!v81)
  {
    *(*(v0 + 208) + 16) = v82;
    goto LABEL_48;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C46360B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(type metadata accessor for TimeBasedBehaviorSample() + 24);
  v12 = sub_1C4EF9CD8();
  (*(*(v12 - 8) + 16))(a3 + v11, a2 + v11, v12);
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 41) = 1;
  return sub_1C45D7F78(v5, v6, v7, v8, v9, v10);
}

id sub_1C463618C(__int128 *a1, uint64_t a2)
{
  v4 = sub_1C4EFDAB8();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = a1 + *(type metadata accessor for TimeBasedBehaviorSample() + 24);
  sub_1C4EF9C58();
  v15 = v14;
  v16 = v14;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v21 = *a1;
  *v22 = a1[1];
  *&v22[9] = *(a1 + 25);
  sub_1C45D5A24(v12);
  v18 = sub_1C4EFDAA8();
  (*(v7 + 8))(v12, v4);
  v19 = objc_opt_self();
  *(inited + 48) = [v19 featureValueWithInt64_];
  *(inited + 56) = 0x696669746E656469;
  *(inited + 64) = 0xEA00000000007265;
  sub_1C4577DBC();
  sub_1C45D2400();
  *(inited + 72) = sub_1C4594E18();
  *(inited + 80) = 0x69746167654E7369;
  *(inited + 88) = 0xEA00000000006576;
  *(inited + 96) = [v19 featureValueWithInt64_];
  strcpy((inited + 104), "sequenceNumber");
  *(inited + 119) = -18;
  result = [v19 featureValueWithInt64_];
  *(inited + 120) = result;
  *(inited + 128) = 0x6D617473656D6974;
  *(inited + 136) = 0xE900000000000070;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 < 9.22337204e18)
  {
    *(inited + 144) = [v19 featureValueWithInt64_];
    return sub_1C4F00F28();
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1C463644C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C4EFDAB8();
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  sub_1C445FFF0(v2 + 152, &v28, &qword_1EC0BA148, &qword_1C4F3F500);
  if (v29)
  {
    sub_1C441D670(&v28, v24);
    v12 = v25;
    v13 = v26;
    sub_1C4409678(v24, v25);
    sub_1C440F3AC();
    v14 = [objc_opt_self() isInternalDevice];
    (*(v13 + 8))(v27, &v28, v14, 1, v12, v13);
    v15 = *(a1 + 41);
    v16 = *(type metadata accessor for TimeBasedBehaviorSample() + 24);
    v17 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v17);
    (*(v18 + 16))(a2 + v16, a1 + v16);
    sub_1C4402CEC();
    sub_1C440962C(v24);
  }

  else
  {
    sub_1C4420C3C(&v28, &qword_1EC0BA148, &qword_1C4F3F500);
    sub_1C440F3AC();
    sub_1C45D5A24(v11);
    sub_1C45D29E0(v11, 7040629, 0xE300000000000000, v27);
    v20 = *(a1 + 41);
    v21 = *(type metadata accessor for TimeBasedBehaviorSample() + 24);
    v22 = sub_1C4EF9CD8();
    sub_1C43FBCE0(v22);
    (*(v23 + 16))(a2 + v21, a1 + v21);
    *&result = sub_1C4402CEC().n128_u64[0];
  }

  return result;
}

uint64_t sub_1C4636628(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0BA140, &qword_1C4F139E8);
  v6 = sub_1C43FBD18(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v29[-v9];
  v11 = type metadata accessor for TimeBasedBehaviorSample();
  v12 = sub_1C43FBCE0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C445FFF0(a1, v10, &qword_1EC0BA140, &qword_1C4F139E8);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0BA140, &qword_1C4F139E8);
    v18 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1C4637CB8(v10, v17, type metadata accessor for TimeBasedBehaviorSample);
    sub_1C456902C(&qword_1EC0B88D8, &qword_1C4F139F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    v20 = *v17;
    v21 = *(v17 + 8);
    v22 = *(v17 + 16);
    v23 = *(v17 + 24);
    v24 = *(v17 + 32);
    v25 = *(v17 + 40);
    *(inited + 32) = *v17;
    *(inited + 40) = v21;
    *(inited + 48) = v22;
    *(inited + 56) = v23;
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    sub_1C45D7F78(v20, v21, v22, v23, v24, v25);
    v18 = sub_1C4597538(inited);
    sub_1C4637628(v17);
  }

  v26 = *sub_1C4409678((v2 + 56), *(v2 + 80));
  v27 = sub_1C46328CC(v18, a2);

  return v27;
}

void sub_1C4636940(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + ((v7 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45FE940(v12, v13);
    if (v15 != -1)
    {
      v16 = v14;
      v17 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v8 + 16);
        sub_1C4408714();
        sub_1C458B398();
        v8 = v22;
      }

      v18 = *(v8 + 16);
      v19 = v18 + 1;
      if (v18 >= *(v8 + 24) >> 1)
      {
        v37 = v18 + 1;
        v23 = *(v8 + 16);
        sub_1C458B398();
        v18 = v23;
        v19 = v37;
        v8 = v24;
      }

      *(v8 + 16) = v19;
      v20 = v8 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v25 = sub_1C45979EC(v8);
      sub_1C463402C(v25);
      sub_1C4499940(v26, v27, v28, v29, v30, v31, v32, v33, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      v35 = v34;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4637AF0(v35);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C4636AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v130 = a3;
  v145 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v145);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v139 = v13 - v12;
  v14 = sub_1C456902C(&qword_1EC0BA138, &qword_1C4F1E150);
  v15 = sub_1C43FBD18(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v138 = v123 - v18;
  v137 = type metadata accessor for FeatureProviderChange(0);
  v19 = sub_1C43FCDF8(v137);
  v128 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v136 = v24 - v23;
  v25 = type metadata accessor for TimeBasedBehaviorSample();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v129 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v140 = (v123 - v34);
  sub_1C4636940(a2);
  v37 = v35;
  v135 = *(a1 + 16);
  if (!v135)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v131 = v36;
  v38 = 0;
  v144 = *(v25 + 24);
  v134 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v133 = *(v28 + 72);
  v143 = (v9 + 16);
  v39 = v35 + 56;
  v40 = MEMORY[0x1E69E7CC0];
  v41 = v132;
  v42 = v140;
  v148 = v35;
  while (1)
  {
    v146 = v40;
    v147 = v38;
    sub_1C46375C4(v134 + v133 * v38, v42);
    v43 = sub_1C4409678((v41 + 104), *(v41 + 128));
    v44 = v42[1];
    v151 = *v42;
    *v152 = v44;
    *&v152[9] = *(v42 + 25);
    v142 = *v143;
    v142(v139, v42 + v144, v145);
    v149 = 0;
    v150 = 256;
    v45 = type metadata accessor for BehaviorContext();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_1C45D689C();
    v48 = *v43;
    v50 = sub_1C4601874(&v151, v37, v49);

    v153 = v50;
    if (v50)
    {
      break;
    }

    v106 = 1;
    v107 = v137;
    v105 = v138;
    v42 = v140;
LABEL_27:
    sub_1C440BAA8(v105, v106, 1, v107);
    sub_1C4637628(v42);
    v108 = sub_1C44157D4(v105, 1, v107);
    v40 = v146;
    if (v108 == 1)
    {
      sub_1C4420C3C(v105, &qword_1EC0BA138, &qword_1C4F1E150);
      v37 = v148;
    }

    else
    {
      sub_1C440A740();
      sub_1C4637CB8(v105, v136, v109);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v148;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v116 = *(v40 + 16);
        v117 = sub_1C4408714();
        sub_1C458B3C8(v117, v118, v119, v40);
        v40 = v120;
      }

      v112 = *(v40 + 16);
      v111 = *(v40 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_1C458B3C8(v111 > 1, v112 + 1, 1, v40);
        v40 = v121;
      }

      *(v40 + 16) = v112 + 1;
      v113 = v40 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v112;
      sub_1C440A740();
      sub_1C4637CB8(v136, v114, v115);
    }

    v38 = v147 + 1;
    if (v147 + 1 == v135)
    {

      return v40;
    }
  }

  v141 = v4;
  v51 = 1 << *(v37 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & *(v37 + 56);
  v54 = (v51 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v55 = 0;
  v56 = MEMORY[0x1E69E7CC8];
  while (v53)
  {
    v57 = v56;
    v58 = v55;
LABEL_14:
    v59 = __clz(__rbit64(v53));
    v53 &= v53 - 1;
    v60 = *(v37 + 48) + ((v58 << 10) | (16 * v59));
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = sub_1C440BB4C();
    sub_1C45A24AC(v63, v64);
    v65 = sub_1C440BB4C();
    sub_1C45FE65C(v65, v66);
    v67 = sub_1C4F01108();

    v68 = [v153 featureValueForName_];

    if (v68)
    {
      v71 = sub_1C440BB4C();
      sub_1C45FE65C(v71, v72);
      v74 = v73;
      v126 = v75;
      v125 = v68;
      v76 = v57;
      v77 = v126;
      v123[1] = swift_isUniquelyReferenced_nonNull_native();
      v149 = v76;
      v124 = v74;
      v78 = sub_1C445FAA8(v74, v77);
      if (__OFADD__(v76[2], (v79 & 1) == 0))
      {
        goto LABEL_39;
      }

      v123[0] = v79;
      v127 = v78;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      if (sub_1C4F02458())
      {
        v80 = sub_1C445FAA8(v124, v77);
        v37 = v148;
        if ((v123[0] & 1) != (v81 & 1))
        {
          goto LABEL_41;
        }

        if (v123[0])
        {
LABEL_20:
          v127 = v80;

          v56 = v149;
          v82 = v149[7];
          v83 = *(v82 + 8 * v127);
          v84 = v125;
          *(v82 + 8 * v127) = v125;

          v85 = sub_1C440BB4C();
          sub_1C45A24C0(v85, v86);

          goto LABEL_24;
        }
      }

      else
      {
        v37 = v148;
        v80 = v127;
        if (v123[0])
        {
          goto LABEL_20;
        }
      }

      v56 = v149;
      v149[(v80 >> 6) + 8] |= 1 << v80;
      v87 = (v56[6] + 16 * v80);
      *v87 = v124;
      v87[1] = v77;
      v88 = v125;
      *(v56[7] + 8 * v80) = v125;
      v89 = sub_1C440BB4C();
      sub_1C45A24C0(v89, v90);

      v91 = v56[2];
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (v92)
      {
        goto LABEL_40;
      }

      v56[2] = v93;
LABEL_24:
      v55 = v58;
    }

    else
    {
      v69 = sub_1C440BB4C();
      sub_1C45A24C0(v69, v70);
      v55 = v58;
      v37 = v148;
      v56 = v57;
    }
  }

  while (1)
  {
    v58 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v58 >= v54)
    {

      v94 = v129;
      v95 = v140;
      v41 = v132;
      v96 = v56;
      sub_1C463644C(v140, v129);
      v97 = sub_1C463618C(v94, v130);
      sub_1C4637628(v94);
      v98 = v131;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v99 = v98;
      v100 = v141;
      v101 = sub_1C4637684(v97, v99);

      v102 = sub_1C463428C(v101, v96);
      v4 = v100;
      sub_1C465CF34(v102);
      v104 = v103;

      v42 = v95;
      swift_unknownObjectRelease();
      v105 = v138;
      v142(v138, (v95 + v144), v145);
      v106 = 0;
      v107 = v137;
      *(v105 + *(v137 + 20)) = 2;
      *(v105 + *(v107 + 24)) = v104;
      goto LABEL_27;
    }

    v53 = *(v39 + 8 * v58);
    ++v55;
    if (v53)
    {
      v57 = v56;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t *sub_1C4637358()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 13);
  sub_1C4420C3C((v0 + 19), &qword_1EC0BA148, &qword_1C4F3F500);
  v1 = v0[24];

  v2 = v0[27];

  return v0;
}

uint64_t sub_1C46373B0()
{
  sub_1C4637358();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4637460()
{
  v2 = v0[18];
  sub_1C4409678(v0 + 13, v0[16]);
  v3 = sub_1C43FFEB0();
  result = v4(v3);
  if (!v1)
  {
    v6 = v0[12];
    sub_1C4409678(v0 + 7, v0[10]);
    v7 = sub_1C43FFEB0();
    result = v8(v7);
    v9 = 0;
    v10 = v0[24];
    v11 = *(v10 + 16);
    v12 = v10 + 32;
    while (v11 != v9)
    {
      if (v9 >= *(v10 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1C442E860(v12, v15);
      sub_1C4409678(v15, v15[3]);
      v13 = sub_1C43FFEB0();
      v14(v13);
      ++v9;
      result = sub_1C440962C(v15);
      v12 += 40;
    }
  }

  return result;
}

uint64_t type metadata accessor for TimeBasedBehaviorSample()
{
  result = qword_1EC0BA180;
  if (!qword_1EC0BA180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46375C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimeBasedBehaviorSample();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4637628(uint64_t a1)
{
  v2 = type metadata accessor for TimeBasedBehaviorSample();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1C4637684(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4637848(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v62 = a5;
  sub_1C46C3CC4(v57);
  v7 = v57[1];
  v8 = v59;
  v9 = v60;
  v50 = v61;
  v51 = v57[0];
  v47 = v58;
  v10 = (v58 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v48 = a3;

  v49 = v7;
  if (v9)
  {
    while (1)
    {
      v52 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v51 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v51 + 56) + 8 * v13);
      v56[0] = *v14;
      v56[1] = v15;
      v56[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v50(&v53, v56);

      v18 = v53;
      v19 = v54;
      v20 = v55;
      v21 = *v62;
      v29 = sub_1C445FAA8(v53, v54);
      v30 = *(v21 + 16);
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (*(v21 + 24) >= v32)
      {
        if ((v52 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        v34 = v62;
        sub_1C46795D8(v32, v52 & 1, v23, v24, v25, v26, v27, v28, v46, v47, v48, SBYTE4(v48));
        v35 = *v34;
        v36 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v37 & 1))
        {
          goto LABEL_24;
        }

        v29 = v36;
      }

      v9 &= v9 - 1;
      v38 = *v62;
      if (v33)
      {

        v39 = v38[7];
        v40 = *(v39 + 8 * v29);
        *(v39 + 8 * v29) = v20;
      }

      else
      {
        v38[(v29 >> 6) + 8] |= 1 << v29;
        v41 = (v38[6] + 16 * v29);
        *v41 = v18;
        v41[1] = v19;
        *(v38[7] + 8 * v29) = v20;
        v42 = v38[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_23;
        }

        v38[2] = v44;
      }

      a4 = 1;
      v8 = v11;
      v7 = v49;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v52 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C4637AF0(uint64_t result)
{
  v2 = 0;
  v22 = result;
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
LABEL_5:
  while (v6)
  {
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(v22 + 48) + ((v2 << 10) | (16 * v9)));
    v12 = *v10;
    v11 = v10[1];
    v13 = *v1;
    if (*(*v1 + 16))
    {
      v14 = *(v13 + 40);
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v15 = sub_1C4F02B68();
      v16 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v17 = v15 & v16;
        if (((*(v13 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {
          break;
        }

        v18 = (*(v13 + 48) + 16 * v17);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = sub_1C4F02938();
          v15 = v17 + 1;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        v1 = v21;
        sub_1C4A7E078(v12, v11);

        goto LABEL_5;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v1 = v21;
    sub_1C44869B4(v23, v12, v11);
  }

  while (1)
  {
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
      goto LABEL_10;
    }
  }
}

uint64_t sub_1C4637CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C43FBCE0(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}