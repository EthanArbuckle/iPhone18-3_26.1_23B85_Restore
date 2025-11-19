uint64_t sub_1D6A89E0C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X4>, unint64_t *a5@<X8>)
{
  if (a1 >> 62)
  {
    v9 = sub_1D7263BFC();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EDC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v57 = v13;
    *v12 = 136446722;
    *(v12 + 4) = sub_1D5BC5100(a2, a3, &v57);
    *(v12 + 12) = 2050;
    *(v12 + 14) = *(a4 + 16);

    *(v12 + 22) = 2050;
    *(v12 + 24) = v9;
    _os_log_impl(&dword_1D5B42000, v10, v11, "%{public}s applying %{public}ld filters to %{public}ld items.", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {
  }

  v14 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v15 = *(a4 + 16);
  if (v15)
  {
    v50 = v9;
    v51 = a2;
    v52 = a5;
    v53 = a3;
    v56 = MEMORY[0x1E69E7CC0];
    sub_1D6999C2C(0, v15, 0);
    v16 = (a4 + 80);
    do
    {
      v18 = *(v16 - 6);
      v17 = *(v16 - 5);
      v20 = *(v16 - 4);
      v19 = *(v16 - 3);
      v21 = *(v16 - 2);
      v22 = *(v16 - 1);
      v54 = v15;
      v55 = v14;
      if (*v16)
      {
        if (v19)
        {
          if (v19 == 1)
          {

            v23 = sub_1D6A8C238;
            v24 = v18;
          }

          else
          {
            v27 = v20 | v17;
            v28 = sub_1D6C6B52C;
            if (v20 | v17 | v18 && ((v28 = sub_1D6C6B568, v18 != 1) || v27) && ((v28 = sub_1D6C6B598, v18 != 2) || v27))
            {
              v24 = 0;
              if (v27)
              {
                v39 = 0;
              }

              else
              {
                v39 = v18 == 3;
              }

              if (v39)
              {
                v23 = sub_1D5C00104;
              }

              else
              {
                v23 = sub_1D5DF55B8;
              }
            }

            else
            {
              v23 = v28;
              v24 = 0;
            }
          }
        }

        else
        {
          v24 = swift_allocObject();
          *(v24 + 16) = v18;

          v23 = sub_1D6A8D470;
        }

        v29 = swift_allocObject();
        *(v29 + 16) = v23;
        *(v29 + 24) = v24;
        *(v29 + 32) = v18;
        *(v29 + 40) = v17;
        *(v29 + 48) = v20;
        *(v29 + 56) = v19;
        *(v29 + 64) = v21;
        *(v29 + 72) = v22;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1D6A8CED8;
        *(v30 + 24) = v29;
        *(v30 + 32) = v18;
        *(v30 + 40) = v17;
        *(v30 + 48) = v20;
        *(v30 + 56) = v19;
        *(v30 + 64) = v21;
        *(v30 + 72) = v22;
        *(v30 + 80) = 1;
        v31 = sub_1D6A8CF14;
      }

      else
      {
        if (v19)
        {
          if (v19 == 1)
          {

            v25 = sub_1D6A8E5D0;
            v26 = v18;
          }

          else
          {
            v32 = v20 | v17;
            v33 = sub_1D6C6B52C;
            if (v20 | v17 | v18 && ((v33 = sub_1D6C6B568, v18 != 1) || v32) && ((v33 = sub_1D6C6B598, v18 != 2) || v32))
            {
              v26 = 0;
              if (v32)
              {
                v40 = 0;
              }

              else
              {
                v40 = v18 == 3;
              }

              if (v40)
              {
                v25 = sub_1D5C00104;
              }

              else
              {
                v25 = sub_1D5DF55B8;
              }
            }

            else
            {
              v25 = v33;
              v26 = 0;
            }
          }
        }

        else
        {
          v26 = swift_allocObject();
          *(v26 + 16) = v18;

          v25 = sub_1D6A8E5FC;
        }

        v34 = swift_allocObject();
        *(v34 + 16) = v25;
        *(v34 + 24) = v26;
        *(v34 + 32) = v18;
        *(v34 + 40) = v17;
        *(v34 + 48) = v20;
        *(v34 + 56) = v19;
        *(v34 + 64) = v21;
        *(v34 + 72) = v22;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_1D6A8E5D4;
        *(v30 + 24) = v34;
        *(v30 + 32) = v18;
        *(v30 + 40) = v17;
        *(v30 + 48) = v20;
        *(v30 + 56) = v19;
        *(v30 + 64) = v21;
        *(v30 + 72) = v22;
        *(v30 + 80) = 0;
        v31 = sub_1D6A8D4EC;
      }

      v35 = v31;
      sub_1D6A8CF2C(v18, v17, v20, v19);
      sub_1D6A8CF2C(v18, v17, v20, v19);
      v14 = v55;
      v56 = v55;
      v37 = *(v55 + 16);
      v36 = *(v55 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D6999C2C((v36 > 1), v37 + 1, 1);
        v14 = v56;
      }

      *(v14 + 16) = v37 + 1;
      v38 = v14 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v30;
      v16 += 56;
      v15 = v54 - 1;
    }

    while (v54 != 1);
    a5 = v52;
    a3 = v53;
    v9 = v50;
    a2 = v51;
  }

  v42 = sub_1D6A8D2AC(v41, v14, &v57, sub_1D6A8B15C);

  v43 = sub_1D725C3FC();
  v44 = sub_1D7262EDC();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v56 = v46;
    *v45 = 136446722;
    *(v45 + 4) = sub_1D5BC5100(a2, a3, &v56);
    *(v45 + 12) = 2050;
    *(v45 + 14) = v9;
    *(v45 + 22) = 2050;
    if (v42 >> 62)
    {
      v47 = sub_1D7263BFC();
    }

    else
    {
      v47 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v45 + 24) = v47;

    _os_log_impl(&dword_1D5B42000, v43, v44, "%{public}s filtered %{public}ld items to %{public}ld items.", v45, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x1DA6FD500](v46, -1, -1);
    MEMORY[0x1DA6FD500](v45, -1, -1);
  }

  else
  {
  }

  v48 = v57;
  *a5 = v42;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = v9;
  a5[4] = v48;
}

uint64_t sub_1D6A8A520(uint64_t a1, uint64_t a2, size_t *a3)
{
  v37 = a3;
  sub_1D69A83DC(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D6A8E470();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  v23 = *(a2 + 16);
  if (!v23)
  {
    return 1;
  }

  v35 = v7;
  v36 = v3;
  for (i = a2 + 40; ; i += 16)
  {
    v25 = *(i - 8);
    v38 = a1;

    v25(&v38);
    sub_1D6A8E504(v22, v18, sub_1D6A8E470);
    sub_1D6A8E424(0, qword_1EDF13AE8, sub_1D69A83DC);
    if ((*(*(v26 - 8) + 48))(v18, 1, v26) != 1)
    {
      break;
    }

    sub_1D6A8E56C(v22, sub_1D6A8E470);

    if (!--v23)
    {
      return 1;
    }
  }

  sub_1D6A8E3BC(v18, v14, sub_1D69A83DC);
  sub_1D6A8E504(v14, v10, sub_1D69A83DC);
  v28 = v37;
  v29 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D69958E4(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    *v28 = sub_1D69958E4(v31 > 1, v32 + 1, 1, v29);
  }

  sub_1D6A8E56C(v14, sub_1D69A83DC);
  sub_1D6A8E56C(v22, sub_1D6A8E470);
  v33 = *v28;
  *(v33 + 16) = v32 + 1;
  sub_1D6A8E3BC(v10, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, sub_1D69A83DC);
  return 0;
}

uint64_t sub_1D6A8A898(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v41 = a4;
  sub_1D69A8230(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v36 - v14;
  sub_1D6A8E024();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v36 - v22;
  v24 = *(a3 + 16);
  if (!v24)
  {
    return 1;
  }

  v37 = v9;
  v38 = v4;
  for (i = a3 + 40; ; i += 16)
  {
    v26 = *(i - 8);
    v40[0] = a1;
    v40[1] = a2;

    v26(v40);
    sub_1D6A8E504(v23, v19, sub_1D6A8E024);
    sub_1D6A8E424(0, &qword_1EC890E10, sub_1D69A8230);
    if ((*(*(v27 - 8) + 48))(v19, 1, v27) != 1)
    {
      break;
    }

    sub_1D6A8E56C(v23, sub_1D6A8E024);

    if (!--v24)
    {
      return 1;
    }
  }

  sub_1D6A8E3BC(v19, v15, sub_1D69A8230);
  v29 = v39;
  sub_1D6A8E504(v15, v39, sub_1D69A8230);
  v30 = v41;
  v31 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_1D6995918(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    *v30 = sub_1D6995918(v33 > 1, v34 + 1, 1, v31);
  }

  sub_1D6A8E56C(v15, sub_1D69A8230);
  sub_1D6A8E56C(v23, sub_1D6A8E024);
  v35 = *v30;
  *(v35 + 16) = v34 + 1;
  sub_1D6A8E3BC(v29, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34, sub_1D69A8230);
  return 0;
}

uint64_t sub_1D6A8AC1C(uint64_t a1, uint64_t a2, size_t *a3)
{
  v37 = a3;
  sub_1D69A816C(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v34 - v13;
  sub_1D6A8DAD8();
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v34 - v21;
  v23 = *(a2 + 16);
  if (!v23)
  {
    return 1;
  }

  v35 = v7;
  v36 = v3;
  for (i = a2 + 40; ; i += 16)
  {
    v25 = *(i - 8);
    v38 = a1;

    v25(&v38);
    sub_1D6A8E504(v22, v18, sub_1D6A8DAD8);
    sub_1D6A8E424(0, &qword_1EC890DF8, sub_1D69A816C);
    if ((*(*(v26 - 8) + 48))(v18, 1, v26) != 1)
    {
      break;
    }

    sub_1D6A8E56C(v22, sub_1D6A8DAD8);

    if (!--v23)
    {
      return 1;
    }
  }

  sub_1D6A8E3BC(v18, v14, sub_1D69A816C);
  sub_1D6A8E504(v14, v10, sub_1D69A816C);
  v28 = v37;
  v29 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D699594C(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    *v28 = sub_1D699594C(v31 > 1, v32 + 1, 1, v29);
  }

  sub_1D6A8E56C(v14, sub_1D69A816C);
  sub_1D6A8E56C(v22, sub_1D6A8DAD8);
  v33 = *v28;
  *(v33 + 16) = v32 + 1;
  sub_1D6A8E3BC(v10, v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v32, sub_1D69A816C);
  return 0;
}

uint64_t sub_1D6A8AF94(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 1;
  }

  for (i = a2 + 40; ; i += 16)
  {
    v6 = *(i - 8);
    v27 = a1;

    v6(&v22, &v27);
    v8 = v22;
    v7 = v23;
    v10 = v24;
    v9 = v25;
    v11 = v26;
    if (v22)
    {
      break;
    }

    sub_1D6A8D694(0, v23, v24, v25, v26);
    sub_1D6A8D704(0, v7, v10, v9, v11);

    if (!--v3)
    {
      return 1;
    }
  }

  v13 = v26;
  v20 = HIBYTE(v26);
  v14 = *a3;
  sub_1D6A8D694(v22, v23, v24, v25, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1D6995980(0, v14[2] + 1, 1, v14);
    *a3 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    *a3 = sub_1D6995980((v16 > 1), v17 + 1, 1, v14);
  }

  sub_1D6A8D704(v8, v7, v10, v9, v11);
  result = 0;
  v18 = *a3;
  v18[2] = v17 + 1;
  v19 = &v18[5 * v17];
  v19[4] = v8;
  v19[5] = v7;
  v19[6] = v10;
  v19[7] = v9;
  *(v19 + 64) = v13;
  *(v19 + 65) = v20 & 1;
  return result;
}

uint64_t sub_1D6A8B15C(uint64_t a1, uint64_t a2, void **a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 1;
  }

  for (i = a2 + 40; ; i += 16)
  {
    v7 = *(i - 8);
    *&v17 = a1;

    v7(v20, &v17);
    v21[0] = *v20;
    v21[1] = *&v20[16];
    v22[0] = *&v20[32];
    *(v22 + 9) = *&v20[41];
    v8 = *v20;
    if (*v20)
    {
      break;
    }

    v17 = *v20;
    v18 = *&v20[16];
    v19[0] = *&v20[32];
    *(v19 + 9) = *&v20[41];
    sub_1D6A8E504(v21, &v16, sub_1D6A8D550);
    sub_1D6A8E56C(&v17, sub_1D6A8D550);

    if (!--v3)
    {
      return 1;
    }
  }

  v10 = *a3;
  sub_1D6A8E504(v21, &v17, sub_1D6A8D550);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1D6995AE4(0, v10[2] + 1, 1, v10);
    *a3 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    *a3 = sub_1D6995AE4((v12 > 1), v13 + 1, 1, v10);
  }

  v17 = *v20;
  v18 = *&v20[16];
  v19[0] = *&v20[32];
  *(v19 + 9) = *&v20[41];
  sub_1D6A8E56C(&v17, sub_1D6A8D550);
  result = 0;
  v14 = *a3;
  v14[2] = v13 + 1;
  v15 = &v14[8 * v13];
  v15[4] = v8;
  *(v15 + 88) = v20[56];
  *(v15 + 9) = *&v20[40];
  *(v15 + 7) = *&v20[24];
  *(v15 + 5) = *&v20[8];
  return result;
}

uint64_t sub_1D6A8B374@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = a1;
  v14 = a1;
  result = a2(&v14);
  if (result)
  {
    v11 = 0;
    a3 = 0;
    a4 = 0;
    a5 = 0;
    *(a7 + 32) = 0;
  }

  else
  {
    *(a7 + 32) = a6;
    *(a7 + 33) = BYTE1(a6) & 1;
    swift_unknownObjectRetain();
    result = sub_1D6A8C1D8(a3, a4, a5, a6, (a6 >> 8) & 1);
  }

  *a7 = v11;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  return result;
}

uint64_t sub_1D6A8B42C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1;
  v9[0] = a1;
  result = a2(v9);
  if (result)
  {
    v5 = 0;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 8) = 0u;
  }

  else
  {
    v8 = *(a3 + 16);
    *(a4 + 8) = *a3;
    *(a4 + 24) = v8;
    *(a4 + 40) = *(a3 + 32);
    *(a4 + 56) = *(a3 + 48);
    swift_unknownObjectRetain();
    result = sub_1D6A8E504(a3, v9, sub_1D69A8004);
  }

  *a4 = v5;
  return result;
}

uint64_t sub_1D6A8B4E0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v11 = a1;
  v14 = a1;
  result = a2(&v14);
  if (result)
  {
    *(a7 + 32) = a6;
    *(a7 + 33) = BYTE1(a6) & 1;
    swift_unknownObjectRetain();
    result = sub_1D6A8C1D8(a3, a4, a5, a6, (a6 >> 8) & 1);
  }

  else
  {
    v11 = 0;
    a3 = 0;
    a4 = 0;
    a5 = 0;
    *(a7 + 32) = 0;
  }

  *a7 = v11;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  return result;
}

uint64_t sub_1D6A8B598@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = a1;
  v9[0] = a1;
  result = a2(v9);
  if (result)
  {
    v8 = *(a3 + 16);
    *(a4 + 8) = *a3;
    *(a4 + 24) = v8;
    *(a4 + 40) = *(a3 + 32);
    *(a4 + 56) = *(a3 + 48);
    swift_unknownObjectRetain();
    result = sub_1D6A8E504(a3, v9, sub_1D69A8004);
  }

  else
  {
    v5 = 0;
    *(a4 + 56) = 0;
    *(a4 + 40) = 0u;
    *(a4 + 24) = 0u;
    *(a4 + 8) = 0u;
  }

  *a4 = v5;
  return result;
}

uint64_t Array<A>.localizedOxfordCommaSeparatedList.getter(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_1D725811C();

  v5 = [v3 bundleForClass_];
  v6 = sub_1D725811C();
  v8 = v7;

  v9 = *(a1 + 16);
  if (v9 == 2)
  {

    v12 = MEMORY[0x1E69E62F8];
    sub_1D5B5D4E8(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    sub_1D6A8BA44(&qword_1EDF3C840, &qword_1EDF43BA0, v12);
    v11 = sub_1D7261F3C();
LABEL_8:

    return v11;
  }

  v10 = v9 - 1;
  if (v9 == 1)
  {

    v11 = *(a1 + 32);

    return v11;
  }

  if (v9)
  {
    sub_1D5B5D4E8(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D7270C10;

    MEMORY[0x1DA6F9910](32, 0xE100000000000000);
    v14 = MEMORY[0x1E69E6948];
    sub_1D5B5D4E8(0, &unk_1EDF1A5F0, MEMORY[0x1E69E6948]);
    v22 = v6;
    sub_1D6A8BA44(&qword_1EDF1A600, &unk_1EDF1A5F0, v14);
    v15 = sub_1D7261F3C();
    v17 = v16;

    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    v18 = (a1 + 32 + 16 * v10);
    v19 = v18[1];
    *(v13 + 48) = *v18;
    *(v13 + 56) = v19;

    MEMORY[0x1DA6F9910](v22, v8);

    v20 = MEMORY[0x1E69E62F8];
    sub_1D5B5D4E8(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    sub_1D6A8BA44(&qword_1EDF3C840, &qword_1EDF43BA0, v20);
    v11 = sub_1D7261F3C();

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_1D6A8BA44(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B5D4E8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Array<A>.filterResult(title:logger:filters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_1D6A8BF84(a1, a2, a3, a4, a5, a6, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding, sub_1D6A867B4);
}

{
  return sub_1D6A8BF84(a1, a2, a3, a4, a5, a6, &qword_1EDF3C770, &protocolRef_FCTagProviding, sub_1D6A89794);
}

uint64_t Array<A>.filterResult(title:logger:filters:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v35 = a1;
  v36 = a2;
  v34 = a6;
  sub_1D6A8BDC0();
  v38 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - v16;
  sub_1D69A8394(0);
  v37 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v32 = a5;
    v33 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D6999B6C(0, v23, 0);
    v24 = v39;
    v25 = a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v26 = *(v10 + 72);
    do
    {
      sub_1D6A8E504(v25, v17, sub_1D6A8BDC0);
      sub_1D6A8E3BC(v17, v13, sub_1D6A8BDC0);
      swift_getEnumCaseMultiPayload();
      sub_1D6A8E3BC(v13, v22, type metadata accessor for FeedItemFilterHeadlineMatcher);
      sub_1D69A8278();
      v28 = &v22[*(v27 + 44)];
      *v28 = sub_1D6A8BE9C;
      *(v28 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v39 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D6999B6C(v29 > 1, v30 + 1, 1);
        v24 = v39;
      }

      *(v24 + 16) = v30 + 1;
      sub_1D6A8E3BC(v22, v24 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, sub_1D69A8394);
      v25 += v26;
      --v23;
    }

    while (v23);
    a5 = v32;
    a3 = v33;
  }

  sub_1D6A877E8(a5, v35, v36, a3, v24, v34);
}

void sub_1D6A8BDC0()
{
  if (!qword_1EDF155D0[0])
  {
    type metadata accessor for FeedItemFilterHeadlineMatcher();
    sub_1D6A8BE54(&unk_1EDF13520, type metadata accessor for FeedItemFilterHeadlineMatcher);
    v0 = type metadata accessor for FeedItemFilter();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF155D0);
    }
  }
}

uint64_t sub_1D6A8BE54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Array<A>.filterResult(title:logger:filters:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1D5B63B80();
  v10 = sub_1D7263F8C();
  sub_1D6A88B10(v10, a1, a2, a3, a4, a5);
}

uint64_t sub_1D6A8BF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t a8, void (*a9)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D5B5534C(0, a7);
  v13 = sub_1D7263F8C();
  a9(v13, a1, a2, a3, a4);
}

uint64_t Array<A>.filterResult(title:logger:filters:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  sub_1D5B5534C(0, &qword_1EDF04500);
  v8 = sub_1D7263F8C();
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v22 = v8;
    v23 = a4;
    v24 = a1;
    v25 = a2;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D6999C7C(0, v9, 0);
    v10 = v26;
    v11 = (a3 + 57);
    do
    {
      v12 = *(v11 - 25);
      v13 = *(v11 - 17);
      v14 = *(v11 - 9);
      v15 = *v11;
      v16 = *(v11 - 1);
      sub_1D6A8C1D8(v12, v13, v14, v16, *v11);
      v18 = *(v26 + 16);
      v17 = *(v26 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_1D6999C7C((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
      }

      a1 = a1 & 0xFFFFFFFFFFFFFF00 | v16;
      *(v26 + 16) = v19;
      v20 = v26 + 56 * v18;
      *(v20 + 32) = v12;
      *(v20 + 40) = v13;
      *(v20 + 48) = v14;
      *(v20 + 56) = a1;
      *(v20 + 64) = sub_1D6A8BE9C;
      *(v20 + 72) = 0;
      *(v20 + 80) = v15;
      v11 += 32;
      --v9;
    }

    while (v9);
    a2 = v25;
    a4 = v23;
    a1 = v24;
    v8 = v22;
  }

  sub_1D6A89E0C(v8, a1, a2, v10, a4);
}

uint64_t sub_1D6A8C1DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t sub_1D6A8C240@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A83DC(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v20 = v14;
  if (a2(&v20, v11))
  {
    sub_1D6A8E424(0, qword_1EDF13AE8, sub_1D69A83DC);
    v16 = *(*(v15 - 8) + 56);

    return v16(a4, 1, 1, v15);
  }

  else
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D6A8BDC0);
    *v13 = v14;
    sub_1D6A8E3BC(v13, a4, sub_1D69A83DC);
    sub_1D6A8E424(0, qword_1EDF13AE8, sub_1D69A83DC);
    (*(*(v18 - 8) + 56))(a4, 0, 1, v18);
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1D6A8C424@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t *, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A83DC(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v20 = v14;
  if (a2(&v20, v11))
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D6A8BDC0);
    *v13 = v14;
    sub_1D6A8E3BC(v13, a4, sub_1D69A83DC);
    sub_1D6A8E424(0, qword_1EDF13AE8, sub_1D69A83DC);
    (*(*(v15 - 8) + 56))(a4, 0, 1, v15);
    return swift_unknownObjectRetain();
  }

  else
  {
    sub_1D6A8E424(0, qword_1EDF13AE8, sub_1D69A83DC);
    v18 = *(*(v17 - 8) + 56);

    return v18(a4, 1, 1, v17);
  }
}

id sub_1D6A8C608@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A8230(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v22 = a1[1];
  v23[0] = v14;
  v23[1] = v22;
  if (a2(v23, v11))
  {
    sub_1D6A8E424(0, &qword_1EC890E10, sub_1D69A8230);
    v16 = *(*(v15 - 8) + 56);

    return v16(a4, 1, 1, v15);
  }

  else
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D69A8394);
    v18 = v22;
    *v13 = v14;
    v13[1] = v18;
    sub_1D6A8E3BC(v13, a4, sub_1D69A8230);
    sub_1D6A8E424(0, &qword_1EC890E10, sub_1D69A8230);
    (*(*(v19 - 8) + 56))(a4, 0, 1, v19);
    swift_unknownObjectRetain();
    v20 = v22;

    return v20;
  }
}

id sub_1D6A8C808@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A8230(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v22 = a1[1];
  v23[0] = v14;
  v23[1] = v22;
  if (a2(v23, v11))
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D69A8394);
    v15 = v22;
    *v13 = v14;
    v13[1] = v15;
    sub_1D6A8E3BC(v13, a4, sub_1D69A8230);
    sub_1D6A8E424(0, &qword_1EC890E10, sub_1D69A8230);
    (*(*(v16 - 8) + 56))(a4, 0, 1, v16);
    swift_unknownObjectRetain();
    v17 = v22;

    return v17;
  }

  else
  {
    sub_1D6A8E424(0, &qword_1EC890E10, sub_1D69A8230);
    v20 = *(*(v19 - 8) + 56);

    return v20(a4, 1, 1, v19);
  }
}

uint64_t sub_1D6A8CA08(__int128 *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v11 = *a1;
  sub_1D69A8278();
  (*(a4 + *(v6 + 44)))(&v10, &v11);
  v9 = v10;
  v7 = a2(&v9);
  swift_unknownObjectRelease();
  return v7 & 1;
}

id sub_1D6A8CA94@<X0>(void **a1@<X0>, uint64_t (*a2)(void **, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A816C(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  v20 = v19;
  if (a2(&v20, v11))
  {
    sub_1D6A8E424(0, &qword_1EC890DF8, sub_1D69A816C);
    v15 = *(*(v14 - 8) + 56);

    return v15(a4, 1, 1, v14);
  }

  else
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D6A8D768);
    *v13 = v19;
    sub_1D6A8E3BC(v13, a4, sub_1D69A816C);
    sub_1D6A8E424(0, &qword_1EC890DF8, sub_1D69A816C);
    (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
    v18 = v19;

    return v18;
  }
}

id sub_1D6A8CC88@<X0>(void **a1@<X0>, uint64_t (*a2)(void **, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1D69A816C(0);
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a1;
  v20 = v19;
  if (a2(&v20, v11))
  {
    sub_1D6A8E504(a3, v13 + *(v9 + 36), sub_1D6A8D768);
    *v13 = v19;
    sub_1D6A8E3BC(v13, a4, sub_1D69A816C);
    sub_1D6A8E424(0, &qword_1EC890DF8, sub_1D69A816C);
    (*(*(v14 - 8) + 56))(a4, 0, 1, v14);
    v15 = v19;

    return v15;
  }

  else
  {
    sub_1D6A8E424(0, &qword_1EC890DF8, sub_1D69A816C);
    v18 = *(*(v17 - 8) + 56);

    return v18(a4, 1, 1, v17);
  }
}

uint64_t sub_1D6A8CE7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }

  return result;
}

uint64_t sub_1D6A8CEDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D6A8CE7C(a1, a2, a3, a4);
}

uint64_t sub_1D6A8CF2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1D6A8C1DC(a1, a2, a3, a4);
}

uint64_t sub_1D6A8CF64(uint64_t result, uint64_t a2, size_t *a3)
{
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = v7;
      while (1)
      {
        if (v9 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v16 = *(v4 + 32 + 16 * v9);
        v10 = *(v4 + 32 + 16 * v9);
        swift_unknownObjectRetain();
        v11 = *(&v16 + 1);
        v12 = sub_1D6A8A898(v10, v11, a2, a3);
        if (v3)
        {

          swift_unknownObjectRelease();
          return v8;
        }

        if (v12)
        {
          break;
        }

        ++v9;

        result = swift_unknownObjectRelease();
        if (v5 == v9)
        {
          goto LABEL_16;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D6997CD0(0, *(v8 + 16) + 1, 1);
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1D6997CD0((v13 > 1), v14 + 1, 1);
      }

      v7 = v9 + 1;
      *(v8 + 16) = v14 + 1;
      *(v8 + 16 * v14 + 32) = v16;
    }

    while (v5 - 1 != v9);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_16:

  return v8;
}

size_t *sub_1D6A8D108(unint64_t a1, uint64_t a2, size_t *a3)
{
  v6 = a1;
  v18 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v16 = v6;
    v17 = v6 & 0xFFFFFFFFFFFFFF8;
    v15 = i;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x1DA6FB460](v8, v6);
      }

      else
      {
        if (v8 >= *(v17 + 16))
        {
          goto LABEL_17;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = sub_1D6A8AC1C(v10, a2, a3);
      if (v3)
      {

        return a3;
      }

      if (v13)
      {
        sub_1D7263E9C();
        sub_1D7263EDC();
        sub_1D7263EEC();
        sub_1D7263EAC();
        i = v15;
        v6 = v16;
      }

      else
      {
      }

      ++v8;
      if (v12 == i)
      {
        a3 = v18;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return a3;
}

uint64_t (*sub_1D6A8D2AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void)))(void, void, void)
{
  v17 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_18:
    v9 = sub_1D7263BFC();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v10 = 0;
      v15 = v9;
      v16 = a4;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1DA6FB460](v10, a1);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            swift_unknownObjectRelease();

            return a4;
          }
        }

        else
        {
          if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v11 = *(a1 + 8 * v10 + 32);
          swift_unknownObjectRetain();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_14;
          }
        }

        v13 = a4(v11, a2, a3);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v13)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          v9 = v15;
          sub_1D7263EEC();
          sub_1D7263EAC();
          a4 = v16;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v10;
        if (v12 == v9)
        {
          a4 = v17;
          goto LABEL_20;
        }
      }
    }
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return a4;
}

uint64_t sub_1D6A8D478(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 64);
  v8 = *a1;
  v3(&v7, &v8);
  v6 = v7;
  v4 = v2(&v6);
  swift_unknownObjectRelease();
  return v4 & 1;
}

uint64_t sub_1D6A8D504(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, _OWORD *))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *a1;
  v7 = *(v2 + 48);
  v9[0] = *(v2 + 32);
  v9[1] = v7;
  v9[2] = *(v2 + 64);
  v10 = *(v2 + 80);
  return a2(v6, v4, v5, v9);
}

void sub_1D6A8D550()
{
  if (!qword_1EC890DE0)
  {
    sub_1D69A7EB8();
    sub_1D6A8BE54(&qword_1EC88F398, sub_1D69A7EB8);
    v0 = type metadata accessor for FeedItemFilter.Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890DE0);
    }
  }
}

uint64_t objectdestroy_21Tm_0()
{

  sub_1D6A8D5E4(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D6A8D694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v8 = (a5 >> 8) & 1;
    swift_unknownObjectRetain();

    return sub_1D6A8C1D8(a2, a3, a4, a5, v8);
  }

  return result;
}

uint64_t sub_1D6A8D704(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result)
  {
    swift_unknownObjectRelease();

    return sub_1D6A8D5E4(a2, a3, a4, a5);
  }

  return result;
}

void sub_1D6A8D768()
{
  if (!qword_1EC890DE8)
  {
    type metadata accessor for FeedItemFilterIssueMatcher();
    sub_1D6A8BE54(&qword_1EC88F3F0, type metadata accessor for FeedItemFilterIssueMatcher);
    v0 = type metadata accessor for FeedItemFilter();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890DE8);
    }
  }
}

void sub_1D6A8D830()
{
  if (!qword_1EDF11BC0[0])
  {
    type metadata accessor for DateComparison();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDF11BC0);
    }
  }
}

uint64_t objectdestroy_36Tm()
{
  sub_1D6A8D768();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  type metadata accessor for FeedItemFilterIssueMatcher();
  v5 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (v5 <= 2)
    {
      if (v5)
      {
LABEL_4:
        if (v5 != 1)
        {
          if (v5 != 2)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }

        v7 = *v3;
        goto LABEL_17;
      }

LABEL_6:

      goto LABEL_18;
    }
  }

  else if (v5 <= 2)
  {
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  switch(v5)
  {
    case 3:
      type metadata accessor for DateComparison();
      v6 = sub_1D725891C();
      (*(*(v6 - 8) + 8))(v0 + v2, v6);
      break;
    case 4:
      v7 = *(v3 + 8);
LABEL_17:

      break;
    case 5:

      break;
  }

LABEL_18:

  return swift_deallocObject();
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

void sub_1D6A8DAD8()
{
  if (!qword_1EC890E00)
  {
    type metadata accessor for FeedItemFilterIssueMatcher();
    sub_1D6A8BE54(&qword_1EC88F3F0, type metadata accessor for FeedItemFilterIssueMatcher);
    v0 = type metadata accessor for FeedItemFilter.Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890E00);
    }
  }
}

uint64_t objectdestroy_78Tm_0()
{
  sub_1D69A8278();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  type metadata accessor for FeedItemFilterHeadlineMatcher();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1 && EnumCaseMultiPayload != 2)
      {
        goto LABEL_13;
      }

LABEL_10:
      type metadata accessor for DateComparison();
      v4 = sub_1D725891C();
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
      goto LABEL_13;
    }

LABEL_12:

    goto LABEL_13;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      goto LABEL_10;
    case 4:
      goto LABEL_12;
    case 5:

      break;
  }

LABEL_13:

  return swift_deallocObject();
}

uint64_t sub_1D6A8DD60(__int128 *a1)
{
  sub_1D69A8278();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));

  return sub_1D6A8CA08(a1, v4, v5, v6);
}

uint64_t objectdestroy_81Tm_0()
{
  sub_1D69A8394(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  type metadata accessor for FeedItemFilterHeadlineMatcher();
  v4 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (v4 <= 2)
    {
      if (v4)
      {
LABEL_4:
        if (v4 != 1 && v4 != 2)
        {
          goto LABEL_16;
        }

LABEL_14:
        type metadata accessor for DateComparison();
        v5 = sub_1D725891C();
        (*(*(v5 - 8) + 8))(v0 + v2, v5);
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else if (v4 <= 2)
  {
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_15;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_14;
    case 4:
LABEL_15:

      break;
    case 5:

      break;
  }

LABEL_16:
  sub_1D69A8278();

  return swift_deallocObject();
}

uint64_t sub_1D6A8DF8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_1D69A8394(0);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v2 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80));

  return a2(a1, v5, v6, v7);
}

void sub_1D6A8E024()
{
  if (!qword_1EC890E18)
  {
    sub_1D69A8278();
    sub_1D6A8BE54(&unk_1EC890DC0, sub_1D69A8278);
    v0 = type metadata accessor for FeedItemFilter.Result();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC890E18);
    }
  }
}

uint64_t objectdestroy_136Tm()
{
  sub_1D6A8BDC0();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  type metadata accessor for FeedItemFilterHeadlineMatcher();
  v4 = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    if (v4 <= 2)
    {
      if (v4)
      {
LABEL_4:
        if (v4 != 1 && v4 != 2)
        {
          goto LABEL_16;
        }

LABEL_14:
        type metadata accessor for DateComparison();
        v5 = sub_1D725891C();
        (*(*(v5 - 8) + 8))(v0 + v2, v5);
        goto LABEL_16;
      }

      goto LABEL_9;
    }
  }

  else if (v4 <= 2)
  {
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_9:

    goto LABEL_15;
  }

  switch(v4)
  {
    case 3:
      goto LABEL_14;
    case 4:
LABEL_15:

      break;
    case 5:

      break;
  }

LABEL_16:

  return swift_deallocObject();
}

uint64_t sub_1D6A8E298(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_1D6A8E334(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DateComparison() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 17) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1D6A8E3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D6A8E424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_1D6A8E470()
{
  if (!qword_1EDF15660[0])
  {
    type metadata accessor for FeedItemFilterHeadlineMatcher();
    sub_1D6A8BE54(&unk_1EDF13520, type metadata accessor for FeedItemFilterHeadlineMatcher);
    v0 = type metadata accessor for FeedItemFilter.Result();
    if (!v1)
    {
      atomic_store(v0, qword_1EDF15660);
    }
  }
}

uint64_t sub_1D6A8E504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6A8E56C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1D6A8E60C@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v41[4] = v1[4];
  v41[5] = v3;
  v4 = v1[7];
  v41[6] = v1[6];
  v41[7] = v4;
  v5 = v1[1];
  v41[0] = *v1;
  v41[1] = v5;
  v6 = v1[3];
  v41[2] = v1[2];
  v41[3] = v6;
  v7 = sub_1D5CFD35C(v41);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v9 = sub_1D5CFD34C(v41);
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 48);
      v13 = *(v9 + 56);
      v14 = *(v9 + 64);
      v15 = *(v9 + 104);
      v16 = *(v9 + 112);
      v17 = *(v9 + 120);

      v30 = *(v9 + 88);
      v32 = *(v9 + 72);
      v28 = *(v9 + 32);
      v29 = *(v9 + 16);
      LOBYTE(v34) = v12;
      *&v35 = v10;
      *(&v35 + 1) = v11;
      v36 = v29;
      v37 = v28;
      LOBYTE(v38) = v12;
      *(&v38 + 1) = v13;
      *v39 = v14;
      *&v39[24] = v30;
      *&v39[8] = v32;
      v39[40] = v15;
      *&v40 = sub_1D600A03C(v16);
      *(&v40 + 1) = v17;
      sub_1D6708C54(&v35);
    }

    else
    {
      v34 = *sub_1D5CFD34C(v41);
      sub_1D7100BB0(&v35);
      sub_1D5C49D78(&v35);
    }
  }

  else if (v7)
  {
    v18 = sub_1D5CFD34C(v41);
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 48);
    v22 = *(v18 + 56);

    v31 = *(v18 + 32);
    v33 = *(v18 + 16);
    sub_1D5D615EC(v21);
    *&v35 = sub_1D600A03C(v19);
    *(&v35 + 1) = v20;
    v36 = v33;
    v37 = v31;
    *&v38 = v21;
    *(&v38 + 1) = v22;
    sub_1D6687774(&v35);
  }

  else
  {
    v34 = *sub_1D5CFD34C(v41);

    sub_1D6E0CAE0(&v35);

    v8 = v35;

    sub_1D6E0CAE0(&v34);

    *&v35 = v8;
    *(&v35 + 1) = v34;
    sub_1D6708C58(&v35);
  }

  v23 = *&v39[16];
  a1[4] = *v39;
  a1[5] = v23;
  v24 = v40;
  a1[6] = *&v39[32];
  a1[7] = v24;
  v25 = v36;
  *a1 = v35;
  a1[1] = v25;
  result = *&v37;
  v27 = v38;
  a1[2] = v37;
  a1[3] = v27;
  return result;
}

uint64_t FormatFill.auxViewRequirements.getter()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_1D5CFD35C(v8);
  sub_1D5CFD34C(v8);
  result = MEMORY[0x1E69E7CD0];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    v7 = &unk_1F50F7738;
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    v7 = &unk_1F50F7710;
  }

  return sub_1D5E28004(v7);
}

uint64_t sub_1D6A8E8A8()
{
  v1 = v0[5];
  v8[4] = v0[4];
  v8[5] = v1;
  v2 = v0[7];
  v8[6] = v0[6];
  v8[7] = v2;
  v3 = v0[1];
  v8[0] = *v0;
  v8[1] = v3;
  v4 = v0[3];
  v8[2] = v0[2];
  v8[3] = v4;
  v5 = sub_1D5CFD35C(v8);
  sub_1D5CFD34C(v8);
  result = MEMORY[0x1E69E7CD0];
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      return result;
    }

    v7 = &unk_1F50F7738;
  }

  else
  {
    if (!v5)
    {
      return result;
    }

    v7 = &unk_1F50F7710;
  }

  return sub_1D5E28004(v7);
}

uint64_t _s8NewsFeed10FormatFillO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v71 = a1[4];
  v72 = v3;
  v4 = a1[5];
  v5 = a1[7];
  v73 = a1[6];
  v74 = v5;
  v6 = a1[1];
  v68[0] = *a1;
  v68[1] = v6;
  v7 = a1[3];
  v9 = *a1;
  v8 = a1[1];
  v69 = a1[2];
  v70 = v7;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[3];
  v77 = a2[2];
  v78 = v12;
  v13 = a2[1];
  v14 = a2[2];
  v15 = *a2;
  v75 = v10;
  v76 = v13;
  v16 = a2[5];
  v17 = a2[7];
  v81 = a2[6];
  v82 = v17;
  v18 = a2[3];
  v19 = a2[5];
  v79 = a2[4];
  v80 = v19;
  v20 = *a1;
  v21 = a1[1];
  v22 = a1[3];
  v83[2] = a1[2];
  v83[3] = v22;
  v83[0] = v20;
  v83[1] = v21;
  v23 = a1[7];
  v83[6] = a1[6];
  v83[7] = v23;
  v24 = a1[5];
  v83[4] = a1[4];
  v83[5] = v24;
  v83[10] = v14;
  v83[11] = v18;
  v83[8] = v15;
  v83[9] = v11;
  v25 = a2[7];
  v83[14] = v81;
  v83[15] = v25;
  v83[12] = v79;
  v83[13] = v16;
  v84[2] = v69;
  v84[3] = v2;
  v84[0] = v9;
  v84[1] = v8;
  v26 = a1[7];
  v84[6] = v73;
  v84[7] = v26;
  v84[4] = v71;
  v84[5] = v4;
  v27 = sub_1D5CFD35C(v84);
  if (v27 > 1)
  {
    if (v27 == 2)
    {
      v36 = sub_1D5CFD34C(v84);
      v64 = v79;
      v65 = v80;
      v66 = v81;
      v67 = v82;
      v60 = v75;
      v61 = v76;
      v62 = v77;
      v63 = v78;
      if (sub_1D5CFD35C(&v60) != 2)
      {
        goto LABEL_15;
      }

      v37 = sub_1D5CFD34C(&v60);
      v59[4] = v36[4];
      v59[5] = v36[5];
      v59[6] = v36[6];
      v59[7] = v36[7];
      v59[0] = *v36;
      v59[1] = v36[1];
      v59[2] = v36[2];
      v59[3] = v36[3];
      v38 = v37[5];
      v55 = v37[4];
      v56 = v38;
      v39 = v37[7];
      v57 = v37[6];
      v58 = v39;
      v40 = v37[1];
      v51 = *v37;
      v52 = v40;
      v41 = v37[3];
      v53 = v37[2];
      v54 = v41;
      sub_1D5CFD190(&v75, v50);
      sub_1D5CFD190(v68, v50);
      sub_1D5CFD190(v68, v50);
      sub_1D5CFD190(&v75, v50);
      v42 = _s8NewsFeed20FormatRadialGradientV2eeoiySbAC_ACtFZ_0(v59, &v51);
    }

    else
    {
      v47 = *sub_1D5CFD34C(v84);
      v62 = v77;
      v63 = v78;
      v60 = v75;
      v61 = v76;
      v66 = v81;
      v67 = v82;
      v64 = v79;
      v65 = v80;
      if (sub_1D5CFD35C(&v60) != 3)
      {
        goto LABEL_15;
      }

      v48 = *sub_1D5CFD34C(&v60);
      *&v51 = v47;
      *&v50[0] = v48;
      sub_1D5CFD190(&v75, v59);
      sub_1D5CFD190(v68, v59);
      sub_1D5CFD190(v68, v59);
      sub_1D5CFD190(&v75, v59);
      v42 = _s8NewsFeed11FormatShineO2eeoiySbAC_ACtFZ_0(&v51, v50);
    }

LABEL_14:
    v35 = v42;
    sub_1D6A8EEA0(v83);
    sub_1D5CFD368(&v75);
    sub_1D5CFD368(v68);
    return v35 & 1;
  }

  if (v27)
  {
    v43 = sub_1D5CFD34C(v84);
    v64 = v79;
    v65 = v80;
    v66 = v81;
    v67 = v82;
    v60 = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    if (sub_1D5CFD35C(&v60) != 1)
    {
      goto LABEL_15;
    }

    v44 = sub_1D5CFD34C(&v60);
    v45 = v43[1];
    v51 = *v43;
    v52 = v45;
    v46 = v43[3];
    v53 = v43[2];
    v54 = v46;
    v50[0] = *v44;
    v50[1] = v44[1];
    v50[2] = v44[2];
    v50[3] = v44[3];
    sub_1D5CFD190(&v75, v59);
    sub_1D5CFD190(v68, v59);
    sub_1D5CFD190(v68, v59);
    sub_1D5CFD190(&v75, v59);
    v42 = _s8NewsFeed14FormatGradientV2eeoiySbAC_ACtFZ_0(&v51, v50);
    goto LABEL_14;
  }

  v28 = sub_1D5CFD34C(v84);
  v30 = *v28;
  v29 = v28[1];
  v64 = v79;
  v65 = v80;
  v66 = v81;
  v67 = v82;
  v60 = v75;
  v61 = v76;
  v62 = v77;
  v63 = v78;
  if (sub_1D5CFD35C(&v60))
  {
LABEL_15:
    sub_1D5CFD190(v68, &v60);
    sub_1D5CFD190(&v75, &v60);
    sub_1D6A8EEA0(v83);
    goto LABEL_16;
  }

  v31 = sub_1D5CFD34C(&v60);
  v32 = *v31;
  v33 = v31[1];
  *&v51 = v30;
  *&v50[0] = v32;
  sub_1D5CFD190(&v75, v59);
  sub_1D5CFD190(v68, v59);
  sub_1D5CFD190(v68, v59);
  sub_1D5CFD190(&v75, v59);
  if ((static FormatColor.== infix(_:_:)(&v51, v50) & 1) == 0)
  {
    sub_1D6A8EEA0(v83);
    sub_1D5CFD368(&v75);
    sub_1D5CFD368(v68);
    goto LABEL_16;
  }

  *&v59[0] = v29;
  *&v51 = v33;
  v34 = static FormatColor.== infix(_:_:)(v59, &v51);
  sub_1D6A8EEA0(v83);
  sub_1D5CFD368(&v75);
  sub_1D5CFD368(v68);
  if ((v34 & 1) == 0)
  {
LABEL_16:
    v35 = 0;
    return v35 & 1;
  }

  v35 = 1;
  return v35 & 1;
}

unint64_t sub_1D6A8ED74(uint64_t a1)
{
  result = sub_1D6A8ED9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A8ED9C()
{
  result = qword_1EC890E20;
  if (!qword_1EC890E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890E20);
  }

  return result;
}

unint64_t sub_1D6A8EDF0(void *a1)
{
  a1[1] = sub_1D5C320E4();
  a1[2] = sub_1D5D35694();
  result = sub_1D6A8EE28();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A8EE28()
{
  result = qword_1EC890E28;
  if (!qword_1EC890E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890E28);
  }

  return result;
}

uint64_t sub_1D6A8EEA0(uint64_t a1)
{
  sub_1D6A8EEFC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6A8EEFC()
{
  if (!qword_1EC890E30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC890E30);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed26SportsKeyPlayerEligibilityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D6A8EF80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D726473C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void *sub_1D6A8F0FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D6A8F144(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1D6A8F144(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v4 = sub_1D72646FC();
    v3 = v4;
    v7 = v5;
    v8 = v4 == 0x6465776F6C6C61 && v5 == 0xE700000000000000;
    if (v8 || (sub_1D72646CC() & 1) != 0 || v3 == 0x64656C6261736964 && v7 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0 || v3 == 0x6572726566657270 && v7 == 0xE900000000000064 || (sub_1D72646CC() & 1) != 0 || v3 == 0x737961776C61 && v7 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
    {

      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

char *sub_1D6A8F34C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentBounds];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 clearColor];
  [v15 setBackgroundColor_];

  [v15 setUserInteractionEnabled_];
  v17 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer;
  v18 = *&v15[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 mainScreen];
  [v21 scale];
  v23 = v22;

  [v20 setLineWidth_];
  v24 = *&v15[v17];
  v25 = [v14 systemGrayColor];
  v26 = [v25 CGColor];

  [v24 setStrokeColor_];
  v27 = [v15 layer];

  [v27 addSublayer_];
  return v15;
}

void sub_1D6A8F67C()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_gridLayer];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale;
  if (*&v0[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale] <= 0.0 || (([v0 bounds], v3 = CGRectGetWidth(v8) / *&v0[v2], v3 >= 200.0) ? (v4 = v3 < 50.0) : (v4 = 1), !v4 ? (v5 = v3 < 100.0) : (v5 = 1), v5))
  {
    Mutable = CGPathCreateMutable();
    sub_1D6A8F790(Mutable, 0);
    sub_1D6A8F790(Mutable, 1);
    [v1 setPath_];
  }

  else
  {
    [v1 setPath_];
  }
}

void sub_1D6A8F790(uint64_t a1, char a2)
{
  sub_1D6A8FB7C(a2 & 1, v2);
  if (v4 >= 2)
  {
    v5 = v4;
    v6 = 0;
    v7 = &v2[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentBounds];
    v8 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale;
    v9 = -100;
    while (1)
    {
      while (1)
      {
        if (v9 >= v5)
        {
          if ((v9 != v5) | v6 & 1)
          {
            return;
          }

          v6 = 1;
          v10 = v5;
        }

        else
        {
          v10 = v9 + 1;
        }

        v11 = *&v2[v8];
        v12 = 1.0;
        if (v11 > 0.0)
        {
          [v2 bounds];
          Width = CGRectGetWidth(v26);
          v11 = *&v2[v8];
          v14 = Width / v11;
          if (v14 >= 50.0)
          {
            v12 = 2.0;
            if (v14 >= 100.0)
            {
              v12 = 10.0;
              if (v14 >= 200.0)
              {
                if (v14 >= 500.0)
                {
                  v12 = 100.0;
                }

                else
                {
                  v12 = 50.0;
                }
              }
            }
          }
        }

        v15 = v12 * v11 * v9;
        v16 = *v7;
        v17 = *(v7 + 1);
        v18 = *(v7 + 2);
        v19 = *(v7 + 3);
        if ((a2 & 1) == 0)
        {
          break;
        }

        MinY = CGRectGetMinY(*&v16);
        [v2 frame];
        v9 = v10;
        if (MinY + CGRectGetMinY(v27) < v15)
        {
          v21 = CGRectGetMinY(*v7);
          [v2 frame];
          v9 = v10;
          if (v15 < v21 + CGRectGetMaxY(v28))
          {
            CGRectGetMinY(*v7);
            [v2 frame];
            CGRectGetMinY(v24);
            [v2 bounds];
            CGRectGetWidth(v25);
            goto LABEL_3;
          }
        }
      }

      MinX = CGRectGetMinX(*&v16);
      [v2 frame];
      v9 = v10;
      if (MinX + CGRectGetMinX(v29) < v15)
      {
        v23 = CGRectGetMinX(*v7);
        [v2 frame];
        v9 = v10;
        if (v15 < v23 + CGRectGetMaxX(v30))
        {
          CGRectGetMinX(*v7);
          [v2 frame];
          CGRectGetMinX(v31);
          [v2 bounds];
          CGRectGetHeight(v32);
LABEL_3:
          sub_1D7262F0C();
          sub_1D7262F2C();
          v9 = v10;
        }
      }
    }
  }
}

void sub_1D6A8FB7C(char a1, char *a2)
{
  v2 = &a2[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_contentSize];
  if (a1)
  {
    v3 = *(v2 + 8);
    v4 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale;
    v5 = *&a2[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale];
    v6 = 1.0;
    if (v5 > 0.0)
    {
      [a2 bounds];
      Width = CGRectGetWidth(v19);
      v5 = *&a2[v4];
      v9 = Width / v5;
      if (v9 >= 50.0)
      {
        v6 = 2.0;
        if (v9 >= 100.0)
        {
          v6 = 10.0;
          if (v9 >= 200.0)
          {
            if (v9 >= 500.0)
            {
              v6 = 100.0;
            }

            else
            {
              v6 = 50.0;
            }
          }
        }
      }
    }

    v10 = v3 / (v6 * v5);
    if (COERCE__INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v2 = 0x43E0000000000000;
    if (v10 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }

  v11 = *v2;
  v12 = OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale;
  v13 = *&a2[OBJC_IVAR____TtC8NewsFeed19DebugFormatGridView_scale];
  v14 = 1.0;
  if (v13 > 0.0)
  {
    v15 = a2;
    [a2 bounds];
    v16 = CGRectGetWidth(v20);
    v13 = *&v15[v12];
    v17 = v16 / v13;
    if (v17 >= 50.0)
    {
      v14 = 2.0;
      if (v17 >= 100.0)
      {
        v14 = 10.0;
        if (v17 >= 200.0)
        {
          if (v17 >= 500.0)
          {
            v14 = 100.0;
          }

          else
          {
            v14 = 50.0;
          }
        }
      }
    }
  }

  v18 = v11 / (v14 * v13);
  if (COERCE__INT64(fabs(v18)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
  }
}

uint64_t FeedLayoutAttributesFactoryProvider.deinit()
{

  return v0;
}

uint64_t FeedLayoutAttributesFactoryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D6A8FE78(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v8 = v3[1];
  v23 = v3[2];
  v32 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v12 = v3[6];
  sub_1D6FB6B38(a1, a2, v3[7], &v26);
  if (!v4)
  {
    v22 = a3;
    if (v28)
    {
      sub_1D5B63F14(&v26, v29);
      *&v26 = v9;
      *(&v26 + 1) = v8;
      v27 = v23;
      v28 = v32;
      sub_1D62B7098(v9, v8, v23, v32);
      sub_1D63264FC(a1, a2, v24);
      sub_1D62B7130(v26, *(&v26 + 1), v27, v28);
      v14 = v24[0];
      v13 = v24[1];
      v15 = v25;
      if ((v12 & 0x2000000000000000) != 0)
      {
        *&v26 = v10;
        v17 = sub_1D5E42CB0(a1);
      }

      else
      {

        v17 = sub_1D6AC9624(v16, v10, v11, v12, a1);
      }

      v32 = v17;
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = (*(v19 + 8))(a1, v18, v19);
      *v22 = v14;
      v22[1] = v13;
      v21 = v32;
      v22[2] = v15;
      v22[3] = v21;
      v22[4] = ((v12 & 0x2000000000000000uLL) >> 61) ^ 1;
      v22[5] = v20;
      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    else
    {
      sub_1D6A90190(&v26);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0;
      *(a3 + 40) = 1;
    }
  }
}

unint64_t sub_1D6A90088(void *a1)
{
  a1[1] = sub_1D5C7671C();
  a1[2] = sub_1D66F3618();
  result = sub_1D6A900C0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A900C0()
{
  result = qword_1EC890E58;
  if (!qword_1EC890E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890E58);
  }

  return result;
}

unint64_t sub_1D6A90114(uint64_t a1)
{
  result = sub_1D6A9013C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A9013C()
{
  result = qword_1EC890E60;
  if (!qword_1EC890E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890E60);
  }

  return result;
}

uint64_t sub_1D6A90190(uint64_t a1)
{
  sub_1D6A901EC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6A901EC()
{
  if (!qword_1EDF0D5E8)
  {
    sub_1D6A90244();
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF0D5E8);
    }
  }
}

unint64_t sub_1D6A90244()
{
  result = qword_1EDF0D5F0;
  if (!qword_1EDF0D5F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF0D5F0);
  }

  return result;
}

uint64_t sub_1D6A902A8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  v17 = a2[7];
  v18 = a1[7];
  v23 = *a1;
  v24 = v2;
  v25 = v3;
  v26 = v4;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  sub_1D62B7098(v23, v2, v3, v4);
  sub_1D62B7098(v8, v9, v10, v11);
  LOBYTE(v10) = _s8NewsFeed15FormatMenuTitleO2eeoiySbAC_ACtFZ_0(&v23, &v19);
  sub_1D62B7130(v19, v20, v21, v22);
  sub_1D62B7130(v23, v24, v25, v26);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v23 = v5;
  v24 = v6;
  v25 = v7;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  sub_1D62B6FC0(v5, v6, v7);
  sub_1D62B6FC0(v12, v13, v14);
  v15 = _s8NewsFeed15FormatMenuImageO2eeoiySbAC_ACtFZ_0(&v23, &v19);
  sub_1D62B703C(v19, v20, v21);
  sub_1D62B703C(v23, v24, v25);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  return sub_1D6FB6D20(v18, v17);
}

uint64_t type metadata accessor for SportsDataVisualizationResponseData()
{
  result = qword_1EDF15F80;
  if (!qword_1EDF15F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6A90474()
{
  sub_1D68FF2F0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D6A904F0(void *a1)
{
  sub_1D6A90CCC(0, &qword_1EC890E68, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A90BB8();
  sub_1D7264B5C();
  v10[15] = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for SportsDataVisualizationResponseData();
    v10[14] = 1;
    sub_1D68FF2F0();
    sub_1D6A90D30(&qword_1EC890E70, sub_1D68FF2F0);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D6A906B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D68FF2F0();
  v24 = v4;
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A90CCC(0, &qword_1EDF03CB0, MEMORY[0x1E69E6F48]);
  v25 = v8;
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = type metadata accessor for SportsDataVisualizationResponseData();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6A90BB8();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v12;
  v17 = v23;
  v16 = v24;
  v27 = 0;
  *v15 = sub_1D72642BC();
  v15[1] = v18;
  v26 = 1;
  sub_1D6A90D30(&qword_1EDF17C18, sub_1D68FF2F0);
  sub_1D726431C();
  (*(v17 + 8))(v11, v25);
  (*(v21 + 32))(v15 + *(v20 + 20), v7, v16);
  sub_1D6A90C0C(v15, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D6A90C70(v15);
}

uint64_t sub_1D6A909EC()
{
  if (*v0)
  {
    return 0x7A696C6175736976;
  }

  else
  {
    return 0x6449676174;
  }
}

uint64_t sub_1D6A90A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6449676174 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7A696C6175736976 && a2 == 0xEE00736E6F697461)
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

uint64_t sub_1D6A90B10(uint64_t a1)
{
  v2 = sub_1D6A90BB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6A90B4C(uint64_t a1)
{
  v2 = sub_1D6A90BB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D6A90BB8()
{
  result = qword_1EDF15FB0;
  if (!qword_1EDF15FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15FB0);
  }

  return result;
}

uint64_t sub_1D6A90C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataVisualizationResponseData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6A90C70(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataVisualizationResponseData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D6A90CCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6A90BB8();
    v7 = a3(a1, &type metadata for SportsDataVisualizationResponseData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6A90D30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D6A90D8C()
{
  result = qword_1EC890E78;
  if (!qword_1EC890E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890E78);
  }

  return result;
}

unint64_t sub_1D6A90DE4()
{
  result = qword_1EDF15FA0;
  if (!qword_1EDF15FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15FA0);
  }

  return result;
}

unint64_t sub_1D6A90E3C()
{
  result = qword_1EDF15FA8;
  if (!qword_1EDF15FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15FA8);
  }

  return result;
}

uint64_t sub_1D6A90E90(uint64_t *a1)
{
  v3 = type metadata accessor for FormatSlotDefinitionItemSet();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6875AE0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v13 = *a1;
  v14 = a1[1];
  *(inited + 32) = *a1;
  *(inited + 40) = v14;
  sub_1D5CBA110(v13, v14);
  v15 = sub_1D5E2755C(inited);
  swift_setDeallocating();
  sub_1D6875B30(inited + 32);
  v16 = *(v4 + 44);
  v17 = sub_1D725B76C();
  (*(*(v17 - 8) + 56))(&v7[v16], 1, 1, v17);
  *(v7 + 24) = 0u;
  *v7 = 0x100000001;
  v18 = MEMORY[0x1E69E7CC0];
  *(v7 + 1) = v15;
  *(v7 + 2) = v18;
  sub_1D5CDE22C(0);
  v19 = type metadata accessor for FormatDerivedDataBindingItemResult();
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  sub_1D6F13C80(v7, a1 + *(v19 + 20), v11);
  sub_1D6A912BC(v7, type metadata accessor for FormatSlotDefinitionItemSet);
  return sub_1D618846C(v11, v1);
}

uint64_t sub_1D6A9106C()
{
  v2 = type metadata accessor for FormatSlotDefinition();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60747E4();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v20 - v12;
  v14 = type metadata accessor for FormatSlotDefinitionItemSet();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D70A54E4(v13);
  if (!v1)
  {
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      return sub_1D6A912BC(v13, sub_1D60747E4);
    }

    else
    {
      sub_1D607483C(v13, v18);
      (*(v15 + 56))(v9, 1, 1, v14);
      sub_1D6F13C80(v18, v9, v5);
      sub_1D6A912BC(v9, sub_1D60747E4);
      sub_1D6A912BC(v18, type metadata accessor for FormatSlotDefinitionItemSet);
      return sub_1D618846C(v5, v0);
    }
  }

  return result;
}

uint64_t sub_1D6A912BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for FormatDerivedDataBindingSlotResult()
{
  result = qword_1EC890E80;
  if (!qword_1EC890E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6A91390()
{
  result = type metadata accessor for FormatSlotDefinition();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OfflineModel.Traits.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

uint64_t OfflineModel.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OfflineModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t OfflineModel.description.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall OfflineModel.init(identifier:title:description:traits:)(NewsFeed::OfflineModel *__return_ptr retstr, Swift::String identifier, Swift::String title, Swift::String description, Swift::OpaquePointer traits)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->description = description;
  retstr->traits = traits;
}

uint64_t OfflineModel.errorModel.getter()
{

  return sub_1D725C9EC();
}

uint64_t sub_1D6A91588()
{
  v0 = sub_1D725895C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D725894C();
  v5 = sub_1D725893C();
  v7 = v6;
  result = (*(v1 + 8))(v4, v0);
  qword_1EC890E90 = v5;
  *algn_1EC890E98 = v7;
  qword_1EC890EA0 = 0;
  unk_1EC890EA8 = 0xE000000000000000;
  qword_1EC890EB0 = 0;
  unk_1EC890EB8 = 0xE000000000000000;
  qword_1EC890EC0 = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t static OfflineModel.empty.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D8F0 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = *algn_1EC890E98;
  v2 = qword_1EC890EA0;
  v3 = unk_1EC890EA8;
  v4 = qword_1EC890EB0;
  v5 = unk_1EC890EB8;
  v6 = qword_1EC890EC0;
  *a1 = qword_1EC890E90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
}

BOOL _s8NewsFeed12OfflineModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1D72646CC() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1D72646CC() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D635933C(v5, v11);
}

unint64_t sub_1D6A91848()
{
  result = qword_1EC890EC8;
  if (!qword_1EC890EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890EC8);
  }

  return result;
}

id SharingPuzzleTextActivityItemSource.__allocating_init(puzzle:puzzleRankProvider:puzzleDifficultyDescriptionProvider:shareData:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithTimeText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithRankText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithMovesText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedPuzzleTypeText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithTimeText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedDifficultyText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithRank] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithMovesText] = xmmword_1D7279980;
  *&v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle] = a1;
  sub_1D6A91CA4(a2, &v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider], qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D6A91CA4(a3, &v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleDifficultyDescriptionProvider], qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v12 = &v10[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData];
  v13 = a4[1];
  *v12 = *a4;
  *(v12 + 1) = v13;
  *(v12 + 2) = a4[2];
  *(v12 + 42) = *(a4 + 42);
  v16.receiver = v10;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D5BFB704(a3, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB704(a2, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  return v14;
}

id sub_1D6A91A6C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v0 setAllowedUnits_];
  [v0 setAllowsFractionalUnits_];
  result = [v0 setUnitsStyle_];
  qword_1EC9BAA78 = v0;
  return result;
}

id SharingPuzzleTextActivityItemSource.init(puzzle:puzzleRankProvider:puzzleDifficultyDescriptionProvider:shareData:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithTimeText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithRankText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithMovesText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedPuzzleTypeText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithTimeText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedDifficultyText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithRank] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithMovesText] = xmmword_1D7279980;
  *&v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle] = a1;
  sub_1D6A91CA4(a2, &v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider], qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  sub_1D6A91CA4(a3, &v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleDifficultyDescriptionProvider], qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v12 = &v5[OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData];
  v13 = a4[1];
  *v12 = *a4;
  *(v12 + 1) = v13;
  *(v12 + 2) = a4[2];
  *(v12 + 42) = *(a4 + 42);
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D5BFB704(a3, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  sub_1D5BFB704(a2, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
  return v14;
}

uint64_t sub_1D6A91CA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1D5F572B0(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D6A91D28()
{
  v1 = (v0 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText);
  if (*(v0 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___defaultText + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1D6A91DA4(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1D6A91DA4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle);
  v2 = [objc_msgSend(v1 puzzleType)];
  swift_unknownObjectRelease();
  sub_1D726207C();
  v4 = v3;

  v21[0] = v4;
  v5 = [v1 publishDateString];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D726207C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = 0;
  v21[1] = v7;
  v21[2] = v9;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v12 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D5B858EC(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      v18 = &v11[16 * v17];
      *(v18 + 4) = v15;
      *(v18 + 5) = v14;
      goto LABEL_5;
    }
  }

  sub_1D5B49F88(0, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
  swift_arrayDestroy();
  sub_1D5B49F88(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v19 = sub_1D7261F3C();

  return v19;
}

uint64_t sub_1D6A91FC0(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData;
  v2 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32);
  if (v2 != 1 && (*v1 & 1) != 0)
  {
    v3 = *(v1 + 57);
    if (v3 == 2 || (v3 & 1) == 0)
    {
      if (v2)
      {
        v4 = *(v1 + 24);
        sub_1D6A91CA4(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider, v29, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
        v6 = v30;
        if (v30)
        {
          v7 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v8 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle);
          v9 = [objc_msgSend(v8 puzzleType)];
          swift_unknownObjectRelease();
          v10 = sub_1D726207C();
          v12 = v11;

          v13 = (*(v7 + 8))(v4, v2, v10, v12, v6, v7);

          __swift_destroy_boxed_opaque_existential_1(v29);
          if (v13)
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v15 = [objc_opt_self() bundleForClass_];
            sub_1D725811C();

            sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_1D7270C10;
            v17 = [objc_msgSend(v8 puzzleType];
            swift_unknownObjectRelease();
            v18 = sub_1D726207C();
            v20 = v19;

            v21 = MEMORY[0x1E69E6158];
            *(v16 + 56) = MEMORY[0x1E69E6158];
            v22 = sub_1D5B7E2C0();
            *(v16 + 64) = v22;
            *(v16 + 32) = v18;
            *(v16 + 40) = v20;
            v23 = [v13 name];
            v24 = sub_1D726207C();
            v26 = v25;

            *(v16 + 96) = v21;
            *(v16 + 104) = v22;
            *(v16 + 72) = v24;
            *(v16 + 80) = v26;
            v27 = sub_1D726204C();

            return v27;
          }
        }

        else
        {
          sub_1D5BFB704(v29, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D6A9230C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData;
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32) == 1)
  {
    return 0;
  }

  if ((*v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 57);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 56))
  {
    return 0;
  }

  v4 = *(v1 + 48);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7270C10;
  v9 = [objc_msgSend(*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle) puzzleType];
  swift_unknownObjectRelease();
  v10 = sub_1D726207C();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1D5B7E2C0();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v14 = MEMORY[0x1E69E65A8];
  *(v8 + 96) = MEMORY[0x1E69E6530];
  *(v8 + 104) = v14;
  *(v8 + 64) = v13;
  *(v8 + 72) = v4;
  v15 = sub_1D726204C();

  return v15;
}

uint64_t sub_1D6A92530(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData);
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32) == 1)
  {
    return 0;
  }

  if ((*v1 & 1) == 0)
  {
    return 0;
  }

  v2 = v1[57];
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7273AE0;
  v8 = [objc_msgSend(*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle) puzzleType];
  swift_unknownObjectRelease();
  v9 = sub_1D726207C();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D5B7E2C0();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  v12 = sub_1D726204C();

  return v12;
}

uint64_t sub_1D6A92730(uint64_t a1)
{
  sub_1D6A91CA4(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleDifficultyDescriptionProvider, v12, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  v2 = v13;
  if (v13)
  {
    v3 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = (*(v3 + 8))(*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle), v2, v3);
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v6)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v8 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D7273AE0;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1D5B7E2C0();
      *(v9 + 32) = v4;
      *(v9 + 40) = v6;
      v10 = sub_1D726204C();

      return v10;
    }
  }

  else
  {
    sub_1D5BFB704(v12, qword_1EDF1C510, &qword_1EDF3CDC0, &protocol descriptor for PuzzleDifficultyDescriptionProviderType);
  }

  return 0;
}

uint64_t sub_1D6A92948(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32);
  if (v1 >= 2)
  {
    v3 = *(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 24);
    sub_1D6A91CA4(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzleRankProvider, v20, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
    v4 = v21;
    if (v21)
    {
      v5 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v6 = [objc_msgSend(*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle) puzzleType)];
      swift_unknownObjectRelease();
      v7 = sub_1D726207C();
      v9 = v8;

      v10 = (*(v5 + 8))(v3, v1, v7, v9, v4, v5);

      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v10)
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v12 = [objc_opt_self() bundleForClass_];
        sub_1D725811C();

        sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1D7273AE0;
        v14 = [v10 name];
        v15 = sub_1D726207C();
        v17 = v16;

        *(v13 + 56) = MEMORY[0x1E69E6158];
        *(v13 + 64) = sub_1D5B7E2C0();
        *(v13 + 32) = v15;
        *(v13 + 40) = v17;
        v18 = sub_1D726204C();

        return v18;
      }
    }

    else
    {
      sub_1D5BFB704(v20, qword_1EDF27B30, qword_1EDF3F7F0, &protocol descriptor for PuzzleRankProviderType);
    }
  }

  return 0;
}

uint64_t sub_1D6A92C0C(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v6 = a2(v2);
    v7 = *v3;
    v8 = v3[1];
    *v3 = v6;
    v3[1] = v9;

    sub_1D5D25B88(v7, v8);
  }

  sub_1D5D64C6C(v4, v5);
  return v6;
}

uint64_t sub_1D6A92CA0(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData;
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32) == 1)
  {
    return 0;
  }

  if ((*v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 57);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 56))
  {
    return 0;
  }

  v4 = *(v1 + 48);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E6530];
  *(v7 + 16) = xmmword_1D7273AE0;
  v9 = MEMORY[0x1E69E65A8];
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;
  *(v7 + 32) = v4;
  v10 = sub_1D726204C();

  return v10;
}

uint64_t sub_1D6A92E44(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle);
  swift_getObjectType();
  v4 = [v3 subtitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1D726207C();
    v8 = v7;

    v62[0] = 34;
    v62[1] = 0xE100000000000000;

    MEMORY[0x1DA6F9910](v6, v8);
    MEMORY[0x1DA6F9910](34, 0xE100000000000000);
    swift_bridgeObjectRelease_n();
    v10 = 34;
    v9 = 0xE100000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = [objc_msgSend(v3 puzzleType)];
  swift_unknownObjectRelease();
  v14 = sub_1D726207C();
  v16 = v15;

  (*(v12 + 56))(v62, v14, v16, v11, v12);

  __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v63;
  v18 = v64;
  __swift_project_boxed_opaque_existential_1(v62, v63);
  (*(v18 + 16))(v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v62);
  v19 = [v3 publishDateString];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1D726207C();
    v23 = v22;

    v24 = a1[3];
    v25 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    (*(v25 + 56))(v62, v21, v23, v24, v25);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v26 = v63;
    v27 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v27 + 16))(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  if (v9)
  {
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    (*(v29 + 56))(v62, v10, v9, v28, v29);

    __swift_destroy_boxed_opaque_existential_1(a1);
    v30 = v63;
    v31 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v31 + 16))(v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v62);
  }

  result = FCPuzzleProviding.puzzleTypeTraits.getter();
  v33 = result;
  if ((result & 2) != 0)
  {
    result = sub_1D6A92C0C(&OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedDifficultyText, sub_1D6A92730);
    if (v34)
    {
      v35 = result;
      v36 = v34;
      v37 = a1[3];
      v38 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v37);
      (*(v38 + 56))(v62, v35, v36, v37, v38);

      __swift_destroy_boxed_opaque_existential_1(a1);
      v39 = v63;
      v40 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v40 + 16))(v39, v40);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  if ((v33 & 0x200) != 0)
  {
    result = sub_1D6A92C0C(&OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithTimeText, sub_1D6A94CEC);
    if (v41)
    {
      v42 = result;
      v43 = v41;
      v44 = a1[3];
      v45 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v44);
      (*(v45 + 56))(v62, v42, v43, v44, v45);

      __swift_destroy_boxed_opaque_existential_1(a1);
      v46 = v63;
      v47 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v47 + 16))(v46, v47);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  if ((v33 & 0x400) != 0)
  {
    result = sub_1D6A92C0C(&OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithRank, sub_1D6A92948);
    if (v48)
    {
      v49 = result;
      v50 = v48;
      v51 = a1[3];
      v52 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v51);
      (*(v52 + 56))(v62, v49, v50, v51, v52);

      __swift_destroy_boxed_opaque_existential_1(a1);
      v53 = v63;
      v54 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v54 + 16))(v53, v54);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  if ((v33 & 0x100000) != 0)
  {
    result = sub_1D6A92C0C(&OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedWithMovesText, sub_1D6A92CA0);
    if (v55)
    {
      v56 = result;
      v57 = v55;
      v58 = a1[3];
      v59 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v58);
      (*(v59 + 56))(v62, v56, v57, v58, v59);

      __swift_destroy_boxed_opaque_existential_1(a1);
      v60 = v63;
      v61 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v61 + 16))(v60, v61);
      return __swift_destroy_boxed_opaque_existential_1(v62);
    }
  }

  return result;
}

uint64_t sub_1D6A93458()
{
  sub_1D5B4D3E0();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v69 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v68 = &v66 - v6;
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v66 - v14;
  v16 = type metadata accessor for SharingHTMLBuilder();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  swift_beginAccess();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0xE000000000000000;
  v84 = v16;
  v85 = &off_1F51B62F0;
  v83[0] = v17;
  sub_1D6A92E44(v83);
  v18 = [*(v0 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle) identifier];
  if (!v18)
  {
    sub_1D726207C();
    v18 = sub_1D726203C();
  }

  v19 = objc_opt_self();
  v20 = [v19 nss:v18 NewsURLForPuzzleID:?];

  v21 = &off_1E84D3000;
  if (v20)
  {
    sub_1D72584EC();

    (*(v8 + 32))(v15, v11, v7);
    v22 = v84;
    v23 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (v23[2])(v80, v22, v23);
    v24 = v81;
    v25 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    v67 = v19;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    v28 = sub_1D725811C();
    v30 = v29;

    (*(v25 + 56))(v77, v28, v30, v24, v25);

    v31 = v78;
    v32 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v32 + 16))(v74, v31, v32);
    v33 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    sub_1D614088C();
    v34 = sub_1D72644BC();
    (*(v33 + 56))(&v71, v34);

    v35 = v72;
    v36 = v73;
    __swift_project_boxed_opaque_existential_1(&v71, v72);
    v37 = *(v36 + 16);
    v38 = v35;
    v19 = v67;
    v39 = v36;
    v21 = 0x1FB922000;
    v37(v70, v38, v39);
    (*(v8 + 8))(v15, v7);
    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1D5B63F14(v70, v83);
    __swift_destroy_boxed_opaque_existential_1(&v71);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v40 = [v19 nss_MarketingPageURL];
  if (v40)
  {
    v41 = v69;
    v42 = v40;
    sub_1D72584EC();

    v43 = 0;
  }

  else
  {
    v43 = 1;
    v41 = v69;
  }

  v44 = v68;
  (*(v8 + 56))(v41, v43, 1, v7);
  sub_1D5EB8540(v41, v44);
  if ((*(v8 + 48))(v44, 1, v7) == 1)
  {
    sub_1D5E3E404(v44);
  }

  else
  {
    v45 = sub_1D72583DC();
    v47 = v46;
    (*(v8 + 8))(v44, v7);
    v48 = v84;
    v49 = v85;
    __swift_project_boxed_opaque_existential_1(v83, v84);
    (v49[2])(v80, v48, v49);
    v50 = v81;
    v51 = v82;
    __swift_project_boxed_opaque_existential_1(v80, v81);
    type metadata accessor for Localized();
    v52 = v21;
    v53 = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() v52 + 1083];
    v55 = sub_1D725811C();
    v57 = v56;

    (*(v51 + 56))(v77, v55, v57, v50, v51);

    v58 = v78;
    v59 = v79;
    __swift_project_boxed_opaque_existential_1(v77, v78);
    (*(v59 + 56))(v74, 32, 0xE100000000000000, v58, v59);
    v60 = v75;
    v61 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    (*(v61 + 48))(&v71, 0x654E20656C707041, 0xEA00000000007377, v45, v47, v60, v61);

    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1D5B63F14(&v71, v83);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v62 = v84;
  v63 = v85;
  __swift_project_boxed_opaque_existential_1(v83, v84);
  v64 = (v63[8])(v62, v63);
  __swift_destroy_boxed_opaque_existential_1(v83);
  return v64;
}

id SharingPuzzleTextActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleTextActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SharingPuzzleTextActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D6A91D28();
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void SharingPuzzleTextActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  v99 = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();
  v6 = v5;
  if (!a1)
  {

    v24 = sub_1D6A91D28();
    *(a2 + 24) = MEMORY[0x1E69E6158];
    *a2 = v24;
    *(a2 + 8) = v25;
    return;
  }

  v7 = sub_1D726207C();
  v9 = v8;
  if (v7 == sub_1D726207C() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1D72646CC();

    if ((v12 & 1) == 0)
    {
      v13 = sub_1D726207C();
      v15 = v14;
      if (v13 == sub_1D726207C() && v15 == v16)
      {
        v48 = a1;
      }

      else
      {
        v18 = sub_1D72646CC();
        v19 = a1;

        if ((v18 & 1) == 0)
        {
          v20 = sub_1D726207C();
          v22 = v21;
          if (v20 == sub_1D726207C() && v22 == v23)
          {
            goto LABEL_14;
          }

          v49 = sub_1D72646CC();

          if (v49)
          {
LABEL_27:
            v50 = sub_1D6A946E8();
            v52 = v51;
            *(a2 + 24) = MEMORY[0x1E69E6158];

            if (v52)
            {
LABEL_28:
              *a2 = v50;
              *(a2 + 8) = v52;
              return;
            }

            goto LABEL_24;
          }

          v53 = sub_1D726207C();
          v55 = v54;
          if (v53 == sub_1D726207C() && v55 == v56)
          {
LABEL_14:

            goto LABEL_27;
          }

          v57 = sub_1D72646CC();

          if (v57)
          {
            goto LABEL_27;
          }

          v58 = v19;
          v59 = sub_1D726203C();
          v60 = sub_1D726207C();
          v62 = v61;
          if (v60 == sub_1D726207C() && v62 == v63)
          {

            goto LABEL_14;
          }

          v64 = sub_1D72646CC();

          if (v64)
          {
            goto LABEL_27;
          }

          v65 = sub_1D726207C();
          v67 = v66;
          if (v65 == sub_1D726207C() && v67 == v68)
          {

LABEL_40:
            v70 = sub_1D6A91D28();
LABEL_41:
            v50 = v70;
            v52 = v71;
            *(a2 + 24) = MEMORY[0x1E69E6158];

            goto LABEL_28;
          }

          v69 = sub_1D72646CC();

          if (v69)
          {
            goto LABEL_40;
          }

          v72 = sub_1D726207C();
          v74 = v73;
          if (v72 == sub_1D726207C() && v74 == v75)
          {

            v70 = sub_1D6A93458();
            goto LABEL_41;
          }

          v76 = sub_1D72646CC();

          if (v76)
          {
            v70 = sub_1D6A93458();
            goto LABEL_41;
          }

          v77 = v58;
          v78 = sub_1D726203C();
          v79 = sub_1D726207C();
          v81 = v80;
          if (v79 != sub_1D726207C() || v81 != v82)
          {
            v83 = sub_1D72646CC();

            if (v83)
            {
              goto LABEL_51;
            }

            v89 = v77;
            v78 = sub_1D726203C();
            v90 = sub_1D726207C();
            v92 = v91;
            if (v90 != sub_1D726207C() || v92 != v93)
            {
              v94 = sub_1D72646CC();

              if ((v94 & 1) == 0)
              {
                v50 = sub_1D6A91D28();
                v52 = v95;
                *(a2 + 24) = MEMORY[0x1E69E6158];

                goto LABEL_28;
              }

              goto LABEL_51;
            }
          }

LABEL_51:
          v84 = type metadata accessor for SharingPlainTextBuilder();
          v85 = swift_allocObject();
          v85[2] = 0;
          v85[3] = 0xE000000000000000;
          swift_beginAccess();
          v85[2] = 0;
          v85[3] = 0xE000000000000000;
          v97 = v84;
          v98 = &off_1F512FCE0;
          v96[0] = v85;
          sub_1D6A92E44(v96);
          v86 = v97;
          v87 = v98;
          __swift_project_boxed_opaque_existential_1(v96, v97);
          v50 = (v87[8])(v86, v87);
          v52 = v88;
          __swift_destroy_boxed_opaque_existential_1(v96);
          *(a2 + 24) = MEMORY[0x1E69E6158];

          goto LABEL_28;
        }
      }

      *(a2 + 24) = MEMORY[0x1E69E6158];

LABEL_24:
      *a2 = 0;
      *(a2 + 8) = 0xE000000000000000;
      return;
    }
  }

  v26 = MEMORY[0x1DA6F9430](2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v27 = *(v2 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle);
  v28 = [v27 title];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1D726207C();
    v32 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v26;
    sub_1D6D76D20(v30, v32, 0x742D656C7A7A7570, 0xEC000000656C7469, isUniquelyReferenced_nonNull_native);
  }

  v34 = [objc_msgSend(v27 puzzleType)];
  swift_unknownObjectRelease();
  v35 = sub_1D726207C();
  v37 = v36;

  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D6D76D20(v35, v37, 0xD000000000000010, 0x80000001D73E2920, v38);
  v39 = objc_opt_self();
  v40 = sub_1D7261D2C();

  v96[0] = 0;
  v41 = [v39 archivedDataWithRootObject:v40 requiringSecureCoding:1 error:v96];

  v42 = v96[0];
  if (v41)
  {
    v43 = sub_1D725867C();
    v45 = v44;

    *(a2 + 24) = MEMORY[0x1E6969080];
    *a2 = v43;
    *(a2 + 8) = v45;
  }

  else
  {
    v46 = v42;
    v47 = sub_1D725829C();

    swift_willThrow();
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

uint64_t sub_1D6A946E8()
{
  swift_getObjectType();
  v0 = FCPuzzleProviding.puzzleTypeTraits.getter();
  if ((v0 & 0x200) != 0)
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithTimeText;
    v3 = sub_1D6A94A60;
  }

  else if ((v0 & 0x400) != 0)
  {
    v2 = &OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithRankText;
    v3 = sub_1D6A91FC0;
  }

  else
  {
    if ((v0 & 0x100000) == 0)
    {
      return 0;
    }

    v2 = &OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___completeSolvedWithMovesText;
    v3 = sub_1D6A9230C;
  }

  return sub_1D6A92C0C(v2, v3);
}

Swift::String __swiftcall SharingPuzzleTextActivityItemSource.activityViewController(_:dataTypeIdentifierForActivityType:)(UIActivityViewController *_, UIActivityType_optional dataTypeIdentifierForActivityType)
{
  v2 = sub_1D607A9A8(dataTypeIdentifierForActivityType.value);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall SharingPuzzleTextActivityItemSource.activityViewController(_:subjectForActivityType:)(UIActivityViewController *_, UIActivityType_optional subjectForActivityType)
{
  v2 = sub_1D6A92C0C(&OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource____lazy_storage___solvedPuzzleTypeText, sub_1D6A92530);
  if (!v3)
  {
    v2 = sub_1D6A91D28();
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

id sub_1D6A94A60(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData;
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32) == 1)
  {
    return 0;
  }

  if ((*v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 57);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 16))
  {
    return 0;
  }

  v5 = *(v1 + 8);
  if (qword_1EC87D8F8 != -1)
  {
    swift_once();
  }

  result = [qword_1EC9BAA78 stringFromTimeInterval_];
  if (result)
  {
    v6 = result;
    v7 = sub_1D726207C();
    v9 = v8;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v11 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D7270C10;
    v13 = [objc_msgSend(*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_puzzle) puzzleType];
    swift_unknownObjectRelease();
    v14 = sub_1D726207C();
    v16 = v15;

    v17 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v18 = sub_1D5B7E2C0();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    *(v12 + 96) = v17;
    *(v12 + 104) = v18;
    *(v12 + 64) = v18;
    *(v12 + 72) = v7;
    *(v12 + 80) = v9;
    v19 = sub_1D726204C();

    return v19;
  }

  return result;
}

id sub_1D6A94CEC(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData;
  if (*(a1 + OBJC_IVAR____TtC8NewsFeed35SharingPuzzleTextActivityItemSource_shareData + 32) == 1)
  {
    return 0;
  }

  if ((*v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 57);
  if (v2 != 2 && (v2 & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 16))
  {
    return 0;
  }

  v4 = *(v1 + 8);
  if (qword_1EC87D8F8 != -1)
  {
    swift_once();
  }

  result = [qword_1EC9BAA78 stringFromTimeInterval_];
  if (result)
  {
    v5 = result;
    v6 = sub_1D726207C();
    v8 = v7;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    sub_1D725811C();

    sub_1D5F572B0(0, &qword_1EDF3C5E0, &qword_1EDF3C5C0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1D5B7E2C0();
    *(v11 + 32) = v6;
    *(v11 + 40) = v8;
    v12 = sub_1D726204C();

    return v12;
  }

  return result;
}

uint64_t FeedGroupTag.init(tag:subscription:subscriptionPaidAccess:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

void *FeedGroupTag.subscription.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t FeedGroupTag.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  v5 = v3;

  return swift_unknownObjectRetain();
}

uint64_t sub_1D6A9500C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for FeedGroupItem();
  swift_storeEnumTagMultiPayload();
  v5 = v3;

  return swift_unknownObjectRetain();
}

char *sub_1D6A95074()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v4 = v1;
  v5 = sub_1D5EEDC00(0x2D70756F7267, 0xE600000000000000, ObjectType);
  if (!v1)
  {
    goto LABEL_31;
  }

  sub_1D7263D4C();

  v6 = sub_1D6026E04([v4 subscriptionOrigin]);
  MEMORY[0x1DA6F9910](v6);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D5B858EC(0, *(v5 + 2) + 1, 1, v5);
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1D5B858EC((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = 0xD00000000000001ELL;
  *(v9 + 5) = 0x80000001D73E2FB0;
  sub_1D7263D4C();

  v10 = [v4 subscriptionType];
  if (v10 > 2)
  {
    switch(v10)
    {
      case 3:
        v11 = 0x80000001D73E3020;
        v12 = 0xD000000000000011;
        goto LABEL_20;
      case 4:
        v11 = 0xED00006761742D65;
        v12 = 0x6C626170756F7267;
        goto LABEL_20;
      case 5:
        v11 = 0xEB00000000676174;
        v12 = 0x2D6465726F6E6769;
        goto LABEL_20;
    }

LABEL_17:
    v11 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
    goto LABEL_20;
  }

  if (!v10)
  {
    v11 = 0xE300000000000000;
    v12 = 6775156;
    goto LABEL_20;
  }

  if (v10 == 1)
  {
    v11 = 0xE700000000000000;
    v12 = 0x676E69646E6570;
    goto LABEL_20;
  }

  if (v10 != 2)
  {
    goto LABEL_17;
  }

  v11 = 0xE900000000000067;
  v12 = 0x61742D646574756DLL;
LABEL_20:
  MEMORY[0x1DA6F9910](v12, v11);

  v14 = *(v5 + 2);
  v13 = *(v5 + 3);
  if (v14 >= v13 >> 1)
  {
    v5 = sub_1D5B858EC((v13 > 1), v14 + 1, 1, v5);
  }

  *(v5 + 2) = v14 + 1;
  v15 = &v5[16 * v14];
  *(v15 + 4) = 0xD00000000000001CLL;
  *(v15 + 5) = 0x80000001D73E2FD0;
  sub_1D7263D4C();

  v16 = [v4 notificationsEnabled];
  v17 = v16 == 0;
  if (v16)
  {
    v18 = 0x64656C62616E65;
  }

  else
  {
    v18 = 0x64656C6261736964;
  }

  if (v17)
  {
    v19 = 0xE800000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  MEMORY[0x1DA6F9910](v18, v19);

  v21 = *(v5 + 2);
  v20 = *(v5 + 3);
  if (v21 >= v20 >> 1)
  {
    v5 = sub_1D5B858EC((v20 > 1), v21 + 1, 1, v5);
  }

  *(v5 + 2) = v21 + 1;
  v22 = &v5[16 * v21];
  *(v22 + 4) = 0xD000000000000025;
  *(v22 + 5) = 0x80000001D73E2FF0;
LABEL_31:
  if (v2 == 3)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D5B858EC(0, *(v5 + 2) + 1, 1, v5);
    }

    v24 = *(v5 + 2);
    v23 = *(v5 + 3);
    v25 = v24 + 1;
    if (v24 >= v23 >> 1)
    {
      v5 = sub_1D5B858EC((v23 > 1), v24 + 1, 1, v5);
    }

    v26 = 0x80000001D73E2F50;
    v27 = 0xD000000000000027;
  }

  else
  {
    sub_1D7263D4C();

    v28 = 0xEA00000000006574;
    v29 = 0x7261632D616C2D61;
    if (v2 != 1)
    {
      v29 = 0x6E75622D64696170;
      v28 = 0xEB00000000656C64;
    }

    if (v2)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0x736275732D746F6ELL;
    }

    if (v2)
    {
      v31 = v28;
    }

    else
    {
      v31 = 0xEE00646562697263;
    }

    MEMORY[0x1DA6F9910](v30, v31);

    v27 = 0xD000000000000023;
    v26 = 0x80000001D73E2F80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1D5B858EC(0, *(v5 + 2) + 1, 1, v5);
    }

    v24 = *(v5 + 2);
    v32 = *(v5 + 3);
    v25 = v24 + 1;
    if (v24 >= v32 >> 1)
    {
      v5 = sub_1D5B858EC((v32 > 1), v24 + 1, 1, v5);
    }
  }

  *(v5 + 2) = v25;
  v33 = &v5[16 * v24];
  *(v33 + 4) = v27;
  *(v33 + 5) = v26;
  return v5;
}

uint64_t sub_1D6A9560C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D5BFC9B4(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v19 - v9;
  sub_1D673D8C0(a1, v19 - v9);
  v11 = sub_1D726294C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D5BEFF8C(v10, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_1D726285C();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D726293C();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_1D6A9580C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6A9582C, 0, 0);
}

uint64_t sub_1D6A9582C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(v1 + 24);
  v0[7] = v3;
  v4 = *(v1 + 16);
  v0[8] = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[9] = AssociatedTypeWitness;
  v6 = sub_1D7261E1C();
  v7 = swift_task_alloc();
  v0[10] = v7;
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v2;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1D6A959C0;

  return MEMORY[0x1EEE6DD58](v0 + 2, AssociatedTypeWitness, v6, 0, 0, &unk_1D731AE30, v7, AssociatedTypeWitness);
}

void sub_1D6A959C0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D6A95B00, 0, 0);
  }
}

uint64_t sub_1D6A95B00()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v12 = v0[2];
  v0[3] = sub_1D6A96ACC();
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  type metadata accessor for FeedCursorGroup();
  v5 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  sub_1D5B874E4(sub_1D6A9A8D0, v4, v5, v2, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  v0[4] = sub_1D6A96704();
  v8 = swift_task_alloc();
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v12;
  type metadata accessor for FeedDatabaseGroup();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D726242C();

  v9 = sub_1D726274C();

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1D6A95D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = swift_getAssociatedTypeWitness();
  v5[11] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[12] = AssociatedTypeWitness;
  sub_1D726393C();
  v5[13] = swift_task_alloc();
  v5[14] = *(AssociatedTypeWitness - 8);
  v5[15] = swift_task_alloc();
  v5[16] = sub_1D5B49474(255, &qword_1EDF3C5D0);
  v7 = sub_1D7264ABC();
  v5[17] = v7;
  v8 = sub_1D726393C();
  v5[18] = v8;
  v5[19] = *(v8 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  sub_1D5BFC9B4(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6A95FD0, 0, 0);
}

uint64_t sub_1D6A95FD0()
{
  type metadata accessor for RepoolFeedData();
  v0 = sub_1D6A96704();
  type metadata accessor for FeedDatabaseGroup();
  if (sub_1D726279C())
  {
    v1 = 0;
    do
    {
      v2 = sub_1D726277C();
      sub_1D726271C();
      if (v2)
      {
        v3 = *(v0 + 8 * v1 + 32);

        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v3 = sub_1D7263DBC();
        v4 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_9:
          __break(1u);
          break;
        }
      }

      v5 = v12[24];
      v6 = sub_1D726294C();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v3;
      sub_1D72629FC();
      sub_1D6A9560C(v5, &unk_1D731AE40, v7);
      sub_1D5BEFF8C(v5, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
      ++v1;
    }

    while (v4 != sub_1D726279C());
  }

  v12[4] = sub_1D7261CEC();
  v8 = swift_task_alloc();
  v12[25] = v8;
  v9 = sub_1D72629FC();
  *v8 = v12;
  v8[1] = sub_1D6A96294;
  v10 = v12[20];

  return sub_1D6A96890(v10, 0, 0, v9);
}

uint64_t sub_1D6A96294()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6A96390, 0, 0);
}

uint64_t sub_1D6A96390()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[17];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[5];
    (*(v0[19] + 8))(v1, v0[18]);
    *v4 = v0[4];

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[22];
    v7 = v0[23];
    (*(v2 + 32))(v7, v1, v3);
    (*(v2 + 16))(v8, v7, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = v0[22];
    v11 = v0[21];
    v12 = v0[17];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v11 + 8);
      v13(v0[23], v0[17]);
      v13(v10, v12);
    }

    else
    {
      v14 = v0[14];
      v15 = v0[15];
      v16 = v0[12];
      v17 = v0[13];
      v24 = v0[23];
      (*(v14 + 32))(v15, v10, v16);
      swift_getAssociatedConformanceWitness();
      v18 = sub_1D725AA4C();
      v20 = v19;
      (*(v14 + 16))(v17, v15, v16);
      (*(v14 + 56))(v17, 0, 1, v16);
      v0[2] = v18;
      v0[3] = v20;
      sub_1D7261E1C();
      sub_1D7261E4C();
      (*(v14 + 8))(v15, v16);
      (*(v11 + 8))(v24, v12);
    }

    v21 = swift_task_alloc();
    v0[25] = v21;
    v22 = sub_1D72629FC();
    *v21 = v0;
    v21[1] = sub_1D6A96294;
    v23 = v0[20];

    return sub_1D6A96890(v23, 0, 0, v22);
  }
}

uint64_t sub_1D6A96704()
{
  type metadata accessor for FeedDatabaseGroup();
  sub_1D726274C();
  sub_1D72627FC();
  swift_getWitnessTable();
  v0 = sub_1D72623CC();

  return v0;
}

uint64_t sub_1D6A967F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D5C47A60(a1);
}

uint64_t sub_1D6A96890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1D6A96940;

  return MEMORY[0x1EEE6DAB8](a1, a4);
}

uint64_t sub_1D6A96940()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    if (v2[2])
    {
      swift_getObjectType();
      v3 = sub_1D726285C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_1D6A96AB0, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_1D6A96ACC()
{
  type metadata accessor for FeedCursorGroup();
  sub_1D726274C();
  sub_1D72627FC();
  swift_getWitnessTable();
  v0 = sub_1D72623CC();

  return v0;
}

uint64_t sub_1D6A96BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for FeedCursorGroup() + 36);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1 + v4, AssociatedTypeWitness);
}

uint64_t sub_1D6A96CAC()
{
  FeedDatabaseGroup.identifier.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1D7261E3C();
}

int *sub_1D6A96DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for FeedCursorTrackerSnapshot();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for RepoolFeedData();
  *(a6 + result[9]) = a2;
  *(a6 + result[10]) = a3;
  *(a6 + result[11]) = a4;
  *(a6 + result[12]) = a5;
  return result;
}

uint64_t sub_1D6A96E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_1D6A96F04;

  return sub_1D6A97480(a2);
}

uint64_t sub_1D6A96F04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1D6A97258;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1D6A9702C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6A9702C()
{
  v1 = FeedCursor.rootCursor.getter();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_1D6A970DC;
  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1D6A980D4(v5, v1, v3, v4);
}

uint64_t sub_1D6A970DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6A971F4, 0, 0);
}

uint64_t sub_1D6A971F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A97258()
{
  v1 = FeedCursor.rootCursor.getter();
  v0[11] = v1;
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1D6A97304;
  v3 = v0[4];
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D6A980D4(v4, v1, v5, v3);
}

uint64_t sub_1D6A97304()
{

  return MEMORY[0x1EEE6DFA0](sub_1D6A9741C, 0, 0);
}

uint64_t sub_1D6A9741C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A97480(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D6A974C8, 0, 0);
}

uint64_t sub_1D6A974C8()
{
  v1 = v0[9];
  v2 = v1[32];
  if (v2 <= 2)
  {
    if (v1[32])
    {
      if (v2 != 1)
      {
        sub_1D7262EBC();
        sub_1D5C384A0();
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_1D7273AE0;
        v0[7] = v1;
        type metadata accessor for FeedCursor();
        swift_getWitnessTable();
        v12 = sub_1D725B0BC();
        v14 = v13;
        *(v11 + 56) = MEMORY[0x1E69E6158];
        *(v11 + 64) = sub_1D5B7E2C0();
        *(v11 + 32) = v12;
        *(v11 + 40) = v14;
        sub_1D5B5F6D0();
        v7 = sub_1D72638FC();
        goto LABEL_22;
      }

      v8 = sub_1D5BE1A00();
      if (!v8)
      {
        v24 = v0[9];
        sub_1D7262EBC();
        sub_1D5C384A0();
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D7273AE0;
        v0[8] = v24;
        type metadata accessor for FeedCursor();
        swift_getWitnessTable();
        v26 = sub_1D725B0BC();
        v28 = v27;
        *(v25 + 56) = MEMORY[0x1E69E6158];
        *(v25 + 64) = sub_1D5B7E2C0();
        *(v25 + 32) = v26;
        *(v25 + 40) = v28;
        sub_1D5B5F6D0();
        v7 = sub_1D72638FC();
        goto LABEL_22;
      }

      v1 = v8;
      goto LABEL_11;
    }

LABEL_10:

LABEL_11:
    v9 = v0[1];

    return v9(v1);
  }

  if (v1[32] > 4u)
  {
    if (v2 != 5)
    {
      sub_1D7262EBC();
      sub_1D5C384A0();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1D7273AE0;
      v0[6] = v1;
      type metadata accessor for FeedCursor();
      swift_getWitnessTable();
      v21 = sub_1D725B0BC();
      v23 = v22;
      *(v20 + 56) = MEMORY[0x1E69E6158];
      *(v20 + 64) = sub_1D5B7E2C0();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_1D5B5F6D0();
      v7 = sub_1D72638FC();
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  if (v2 == 3)
  {
    sub_1D7262EBC();
    sub_1D5C384A0();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D7273AE0;
    v0[5] = v1;
    type metadata accessor for FeedCursor();
    swift_getWitnessTable();
    v4 = sub_1D725B0BC();
    v6 = v5;
    *(v3 + 56) = MEMORY[0x1E69E6158];
    *(v3 + 64) = sub_1D5B7E2C0();
    *(v3 + 32) = v4;
    *(v3 + 40) = v6;
    sub_1D5B5F6D0();
    v7 = sub_1D72638FC();
LABEL_22:
    sub_1D725C30C();

    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = 3;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
LABEL_23:
    *(v29 + 32) = 6;
    swift_willThrow();
    v30 = v0[1];

    return v30();
  }

  v15 = *(*v1 + 272);
  swift_beginAccess();
  v16 = *&v1[v15];
  v0[12] = v16;
  if (!v16)
  {
    type metadata accessor for FeedServiceError();
    swift_getWitnessTable();
    swift_allocError();
    *v29 = 0u;
    *(v29 + 16) = 0u;
    goto LABEL_23;
  }

  v17 = FeedNextCursor.syncCursor.getter();
  v0[13] = v17;
  if (v17)
  {
    v18 = v17;
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_1D6A97AEC;

    return sub_1D6A97480(v18);
  }

  else
  {

    v31 = swift_task_alloc();
    v0[17] = v31;
    *v31 = v0;
    v31[1] = sub_1D6A97C7C;

    return sub_1D6F72B98();
  }
}

uint64_t sub_1D6A97AEC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_1D6A97F9C;
  }

  else
  {
    *(v4 + 128) = a1;
    v5 = sub_1D6A97C14;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6A97C14()
{

  v1 = *(v0 + 128);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6A97C7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6A98000, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[20] = v6;
    *v6 = v5;
    v6[1] = sub_1D6A97E00;

    return sub_1D6A97480(a1);
  }
}

uint64_t sub_1D6A97E00(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_1D6A98064;
  }

  else
  {
    *(v4 + 176) = a1;
    v5 = sub_1D6A97F28;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6A97F28()
{

  v1 = *(v0 + 176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6A97F9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A98000()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A98064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A980D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *(*v4 + 80);
  v5[8] = *(v6 + 88);
  v7 = type metadata accessor for RepoolFeedData();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for FeedCursorTrackerSnapshot();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D6A9823C, 0, 0);
}

uint64_t sub_1D6A9823C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[4];
  v0[15] = *(v0[3] + *(*v0[3] + 280));
  FeedCursorTracker.snapshot()(v1);
  sub_1D6A987B0(v3, v1, v2);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1D6A98334;
  v5 = v0[11];
  v6 = v0[5];
  v7 = v0[3];

  return sub_1D6A98EA8(v5, v7, v6);
}

uint64_t sub_1D6A98334(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v7 = *v1;
  *(v3 + 136) = a1;

  v4 = swift_task_alloc();
  *(v3 + 144) = v4;
  *v4 = v7;
  v4[1] = sub_1D6A98498;
  v5 = *(v2 + 72);

  return sub_1D6A9580C(v5);
}

uint64_t sub_1D6A98498(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D6A98598, 0, 0);
}

uint64_t sub_1D6A98598()
{
  v1 = v0[19];
  v2 = v0[17];
  v16 = v0[15];
  v23 = v0[14];
  v21 = v0[13];
  v22 = v0[12];
  v17 = v0[10];
  v3 = v0[8];
  v18 = v0[9];
  v19 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v20 = v0[2];
  v8 = v4[2];
  v15 = v4[3];
  v9 = v4[4];
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;
  *(v10 + 24) = v7;
  v11 = swift_task_alloc();
  *(v11 + 16) = v2;
  sub_1D5F9628C(v6, v16, sub_1D6A9A7E0, v10, sub_1D6A9A7E8, v11, v8, v15, v9, v5, v3);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v12 = sub_1D726275C();

  (*(v17 + 8))(v19, v18);
  (*(v21 + 8))(v23, v22);
  sub_1D688A25C(v12, v20);

  v13 = v0[1];

  return v13();
}

int *sub_1D6A987B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v59 = a2;
  v47 = a3;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  v58 = type metadata accessor for FeedCursorTrackerSnapshot();
  v46 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v7);
  v45 = v44 - v8;
  v9 = type metadata accessor for FeedCursorGroup();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v50 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v44 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v44 - v19;
  v65 = sub_1D7261CFC();
  v64 = sub_1D7261CFC();
  v21 = type metadata accessor for FeedDatabaseGroup();
  v63 = sub_1D7261CFC();
  v49 = v21;
  v62 = sub_1D7261CFC();
  v22 = sub_1D6F73BA4();
  v23 = sub_1D726279C();
  v48 = v6;
  if (v23)
  {
    v56 = v20;
    v44[0] = v11;
    v44[1] = a1;
    swift_getAssociatedTypeWitness();
    v44[2] = v5;
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v24 = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v52 = *(AssociatedConformanceWitness + 88);
    v53 = AssociatedConformanceWitness + 88;
    v57 = (v10 + 16);
    v51 = (v10 + 32);
    v25 = (v10 + 8);
    do
    {
      v26 = sub_1D726277C();
      sub_1D726271C();
      if (v26)
      {
        v27 = v22 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v24;
        v28 = v10;
        v29 = *(v10 + 16);
        v30 = v56;
        v29(v56, v27, v9);
        v31 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v28 = v10;
        result = sub_1D7263DBC();
        v30 = v56;
        if (v44[0] != 8)
        {
          goto LABEL_32;
        }

        v61 = result;
        v29 = *v57;
        (*v57)(v56, &v61, v9);
        swift_unknownObjectRelease();
        v31 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      (*v51)(v16, v30, v9);
      v32 = swift_checkMetadataState();
      v52(&v61, v32, AssociatedConformanceWitness);
      if (v61 & 0xFE) != 2 && (v61)
      {
        v29(v50, v16, v9);
        sub_1D72627FC();
        sub_1D72627BC();
      }

      v33._countAndFlagsBits = FeedCursorGroup.identifier.getter();
      v34 = FeedCursorTrackerSnapshot.contains(identifier:)(v33);

      if (!v34)
      {
        v29(v50, v16, v9);
        sub_1D72627FC();
        sub_1D72627BC();
      }

      (*v25)(v16, v9);
      ++v24;
      v10 = v28;
    }

    while (v31 != sub_1D726279C());
  }

  v36 = sub_1D6F74CF4();
  if (sub_1D726279C())
  {
    v37 = 0;
    while (1)
    {
      v38 = sub_1D726277C();
      sub_1D726271C();
      if (v38)
      {
        v39 = *(v36 + 8 * v37 + 32);

        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_29;
        }
      }

      else
      {
        v39 = sub_1D7263DBC();
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      sub_1D725C4CC();
      sub_1D725C73C();

      if (!v61)
      {
        break;
      }

      sub_1D725C89C();

      sub_1D725C58C();

      if (v60 & 0xFE) != 2 && (v60)
      {
        v61 = v39;
        sub_1D72627FC();

        sub_1D72627BC();
      }

      v41._countAndFlagsBits = FeedDatabaseGroup.identifier.getter();
      v42 = FeedCursorTrackerSnapshot.contains(identifier:)(v41);

      if (v42)
      {
      }

      else
      {
        v61 = v39;
        sub_1D72627FC();
        sub_1D72627BC();
      }

      ++v37;
      if (v40 == sub_1D726279C())
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    v43 = v45;
    (*(v46 + 16))(v45, v59, v58);
    return sub_1D6A96DA0(v43, v65, v63, v64, v62, v47);
  }

  return result;
}

uint64_t sub_1D6A98EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v7 = *v3;
  v4[5] = *(*v3 + 88);
  v8 = *(v7 + 80);
  v4[6] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[7] = AssociatedTypeWitness;
  v4[8] = *(AssociatedTypeWitness - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = *(v8 - 8);
  v4[12] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[13] = v10;
  *v10 = v4;
  v10[1] = sub_1D6A9905C;

  return sub_1D6A99D1C(a1, a2);
}

uint64_t sub_1D6A9905C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D6A991B8, 0, 0);
  }
}

uint64_t sub_1D6A991B8()
{
  if (v0[14])
  {
    v2 = v0[9];
    v1 = v0[10];
    v4 = v0[7];
    v3 = v0[8];
    v6 = v0[5];
    v5 = v0[6];
    v7 = v0[4];
    v16 = v0[12];
    v8 = v0[2];
    v20 = v7[2];
    v21 = v0[11];
    v18 = v0[14];
    v19 = v7[3];
    v17 = v7[4];
    (*(v6 + 64))(v5, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    FeedContentConfigType.seenContentMarker()(v4, AssociatedConformanceWitness, v1);
    v10 = *(v3 + 8);
    v10(v2, v4);
    (*(v6 + 160))(v1, v5, v6);
    v10(v1, v4);
    v11 = *(v8 + *(*v8 + 280));
    v12 = swift_task_alloc();
    *(v12 + 16) = v5;
    *(v12 + 24) = v6;
    v13 = sub_1D5F9628C(v16, v11, sub_1D6A9AA10, v12, sub_1D6A9AA90, v18, v20, v19, v17, v5, v6);

    (*(v21 + 8))(v16, v5);
  }

  else
  {
    v13 = 0;
  }

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_1D6A993DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v23[0] = a1;
  v23[1] = a4;
  v6 = *a3;
  v7 = *(*a3 + 88);
  v8 = *(*a3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1D726393C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v23 - v17;
  v23[11] = a2;
  v19 = *(v6 + 224);
  swift_beginAccess();
  (*(v11 + 16))(v14, a3 + v19, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  + infix<A>(_:_:)(v23[0], v14, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v21 = *(v11 + 8);
  v21(v14, v10);
  v23[4] = v8;
  v23[5] = v7;
  swift_getAssociatedTypeWitness();
  sub_1D72627FC();
  swift_getWitnessTable();
  sub_1D726249C();
  return (v21)(v18, v10);
}

uint64_t sub_1D6A99654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v17 - v10;
  (*(v7 + 16))(&v17 - v10, a1, v6, v9);
  v12 = *(AssociatedTypeWitness - 8);
  v13 = 1;
  if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    v14 = a3;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = a3;
    (*(AssociatedConformanceWitness + 24))(v18, AssociatedTypeWitness, AssociatedConformanceWitness);
    v13 = 0;
    v7 = v12;
    v6 = AssociatedTypeWitness;
  }

  (*(v7 + 8))(v11, v6);
  return (*(v12 + 56))(v14, v13, 1, AssociatedTypeWitness);
}

char *sub_1D6A99858(void *a1, uint64_t a2)
{
  v37 = a2;
  v3 = *a1;
  v41 = type metadata accessor for FeedContext;
  sub_1D5BFC9B4(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v33 = &v32 - v6;
  v39 = a1;
  v34 = *(v3 + 88);
  v7 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = sub_1D726393C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v9);
  v11 = &v32 - v10;
  v36 = MEMORY[0x1E6969530];
  sub_1D5BFC9B4(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v32 - v18;
  v35 = sub_1D726393C();
  v20 = *(v35 - 8);
  v22 = MEMORY[0x1EEE9AC00](v35, v21);
  v24 = &v32 - v23;
  (*(*(v7 - 8) + 56))(&v32 - v23, 1, 1, v7, v22);
  v48[0] = 5;
  v25 = sub_1D725891C();
  v26 = *(*(v25 - 8) + 56);
  v26(v19, 1, 1, v25);
  v26(v15, 1, 1, v25);
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  v27 = type metadata accessor for FeedContext();
  v28 = v33;
  (*(*(v27 - 8) + 56))(v33, 1, 1, v27);
  FeedJournal.init(entries:)(MEMORY[0x1E69E7CC0], &v46);
  v44 = v46;
  v45 = v47;
  v42 = 0;
  v43 = 256;
  v29 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v24, 0, v48, v19, v15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v11, v28, &v44, &v42, 0, 0, v37);
  sub_1D5C086A4(v44);
  sub_1D5BEFF8C(v28, qword_1EDF34CA0, v41);
  (*(v38 + 8))(v11, v40);
  v30 = v36;
  sub_1D5BEFF8C(v15, &qword_1EDF45B00, v36);
  sub_1D5BEFF8C(v19, &qword_1EDF45B00, v30);
  (*(v20 + 8))(v24, v35);
  return v29;
}

uint64_t sub_1D6A99D1C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D6A99D40, 0, 0);
}

uint64_t sub_1D6A99D40()
{
  v1 = sub_1D6F74E20(v0[2]);
  v0[5] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1D6A99E10;

    return sub_1D6F72B98();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D6A99E10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_1D6A9A214;
  }

  else
  {
    v4 = sub_1D6A99F24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D6A99F24()
{
  v1 = v0[7];
  v2 = sub_1D6F74E20(v0[2]);
  v0[9] = v2;
  sub_1D6F758D8();
  if (v2 && ((v3 = *(v1 + 16), v4 = *(v1 + 24), v3 == sub_1D6F790F0()) ? (v6 = v4 == v5) : (v6 = 0), v6 || (sub_1D72646CC() & 1) != 0))
  {
    v7 = v0[7];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_1D6A9A06C;
    v11 = v0[7];
    v12 = v0[2];

    return sub_1D6A99D1C(v12, v11);
  }
}

uint64_t sub_1D6A9A06C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1D6A9A278;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1D6A9A194;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D6A9A194()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D6A9A214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D6A9A278()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_1D6A9A2F4(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = *a1;
  v44 = type metadata accessor for FeedContext;
  sub_1D5BFC9B4(0, qword_1EDF34CA0, type metadata accessor for FeedContext);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v36 = &v35 - v6;
  v43 = a1;
  v37 = *(v3 + 88);
  v7 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1D726393C();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v35 - v11;
  v39 = MEMORY[0x1E6969530];
  sub_1D5BFC9B4(0, &qword_1EDF45B00, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v35 - v19;
  v38 = sub_1D726393C();
  v21 = *(v38 - 8);
  v23 = MEMORY[0x1EEE9AC00](v38, v22);
  v25 = &v35 - v24;
  (*(*(v7 - 8) + 56))(&v35 - v24, 1, 1, v7, v23);
  v49 = 1;
  v26 = sub_1D725891C();
  v27 = *(*(v26 - 8) + 56);
  v27(v20, 1, 1, v26);
  v27(v16, 1, 1, v26);
  (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
  v28 = type metadata accessor for FeedContext();
  v29 = v36;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v48 = 0;
  v47 = 0u;
  v45 = 0;
  v46 = 256;
  type metadata accessor for FeedNextCursor();

  v31 = sub_1D6F74CB4(v30);
  v32 = FeedCursor.with(identifier:serviceConfig:serviceState:kind:publishDate:createdDate:openEmitters:slottedEmitters:stagedEmitters:expandEmitters:emittedGroups:databaseGroups:skippedSlotCount:slotOffset:slotAdjustment:emitterCursors:emitterOutputs:feedPool:feedContext:feedJournal:cachePolicy:tracker:sidecars:nextCursor:)(0, 0, v25, 0, &v49, v20, v16, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, v12, v29, &v47, &v45, 0, 0, v31);

  sub_1D5BEFF8C(v29, qword_1EDF34CA0, v44);
  (*(v41 + 8))(v12, v42);
  v33 = v39;
  sub_1D5BEFF8C(v16, &qword_1EDF45B00, v39);
  sub_1D5BEFF8C(v20, &qword_1EDF45B00, v33);
  (*(v21 + 8))(v25, v38);
  return v32;
}

uint64_t sub_1D6A9A80C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D6A95D1C(a1, a2, v8, v6, v7);
}

uint64_t sub_1D6A9A910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FeedCursorGroup();
  result = FeedCursorGroup.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6A9A95C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5B64684;

  return sub_1D6A967F4(a1);
}

uint64_t sub_1D6A9AA10@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1D6A9AA98()
{
  result = type metadata accessor for FeedCursorTrackerSnapshot();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FeedCursorGroup();
    result = sub_1D72627FC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FeedDatabaseGroup();
      result = sub_1D72627FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D6A9AB7C(_DWORD *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = a2 - v7 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9)) == 0)
  {
LABEL_28:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      v17 = *(v5 + 48);

      return v17(a1);
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void sub_1D6A9ADE8(_DWORD *a1, uint64_t a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = ((((((((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v13 = 0;
    v14 = a2 - v9;
    if (a2 <= v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = a3 - v9 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v9;
    if (a2 <= v9)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(a1 + v10) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v10) = 0;
      }

      else if (v13)
      {
        *(a1 + v10) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = ((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v9 + a2;
    bzero(a1, v10);
    *a1 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(a1 + v10) = v15;
    }

    else
    {
      *(a1 + v10) = v15;
    }
  }

  else if (v13)
  {
    *(a1 + v10) = v15;
  }
}

__n128 FormatPattern.init(mode:content:position:)@<Q0>(unsigned __int8 *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = *a2;
  v5 = a3[1].n128_u64[0];
  v6 = a3[1].n128_u8[8];
  a4->n128_u8[0] = *a1;
  a4->n128_u64[1] = v4;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u64[0] = v5;
  a4[2].n128_u8[8] = v6;
  return result;
}

__n128 FormatPattern.position.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u64[0];
  v3 = v1[2].n128_u8[8];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  return result;
}

uint64_t sub_1D6A9B104@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D725ECFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v2;
  v23[1] = *(v2 + 1);

  sub_1D6CDC614(a1, v10);

  if (!v3)
  {
    if ((v11 & 0x80) != 0)
    {
      sub_1D6A9B764(0, &qword_1EDF16F50, MEMORY[0x1E69D8380]);
      v18 = *(v17 + 48);
      (*(v7 + 32))(a2, v10, v6);
      v19 = sub_1D725ED5C();
      v20 = MEMORY[0x1E69D8370];
      if ((v11 & 1) == 0)
      {
        v20 = MEMORY[0x1E69D8378];
      }

      (*(*(v19 - 8) + 104))(a2 + v18, *v20, v19);
      v16 = MEMORY[0x1E69D8350];
    }

    else
    {
      sub_1D6A9B764(0, &unk_1EDF16F58, MEMORY[0x1E69D8358]);
      v14 = *(v13 + 48);
      (*(v7 + 32))(a2, v10, v6);
      v15 = sub_1D725ED3C();
      (*(*(v15 - 8) + 104))(a2 + v14, **(&unk_1E84CF168 + v11), v15);
      v16 = MEMORY[0x1E69D8348];
    }

    v21 = *v16;
    v22 = sub_1D725ED1C();
    return (*(*(v22 - 8) + 104))(a2, v21, v22);
  }

  return result;
}

uint64_t _s8NewsFeed13FormatPatternV2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 4);
  v7 = a1[40];
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = a2[16];
  v11 = a2[40];
  if (v4 < 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 0;
    }

    v21 = *(a2 + 24);
    v22 = *(a1 + 1);
    v12 = (v4 & 1) == 0;
    if (v4)
    {
      v13 = 0x6F546D6F74746F62;
    }

    else
    {
      v13 = 0x746F426F54706F74;
    }

    if (v12)
    {
      v14 = 0xEB000000006D6F74;
    }

    else
    {
      v14 = 0xEB00000000706F54;
    }

    if (v8)
    {
      v15 = 0x6F546D6F74746F62;
    }

    else
    {
      v15 = 0x746F426F54706F74;
    }

    if (v8)
    {
      v16 = 0xEB00000000706F54;
    }

    else
    {
      v16 = 0xEB000000006D6F74;
    }

    if (v13 == v15 && v14 == v16)
    {
    }

    else
    {
      v18 = sub_1D72646CC();

      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v8 < 0)
    {
      return 0;
    }

    v21 = *(a2 + 24);
    v22 = *(a1 + 1);
    if ((sub_1D6DDE758(v4, v8) & 1) == 0)
    {
      return 0;
    }
  }

  *&v26 = v5;
  v23 = v9;

  v19 = static FormatPatternContent.== infix(_:_:)(&v26, &v23);

  if (v19)
  {
    if (v22 == 4)
    {
      if (v10 != 4)
      {
        return 0;
      }
    }

    else
    {
      v26 = v22;
      v27 = v6;
      v28 = v7;
      if (v10 == 4)
      {
        return 0;
      }

      LOBYTE(v23) = v10;
      v24 = v21;
      v25 = v11 & 1;
      if (!_s8NewsFeed21FormatPatternPositionV2eeoiySbAC_ACtFZ_0(&v26, &v23))
      {
        return 0;
      }
    }

    return 1;
  }

  return 0;
}

unint64_t sub_1D6A9B59C(uint64_t a1)
{
  result = sub_1D6A9B5C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A9B5C4()
{
  result = qword_1EC890F38;
  if (!qword_1EC890F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F38);
  }

  return result;
}

unint64_t sub_1D6A9B618(void *a1)
{
  a1[1] = sub_1D6686394();
  a1[2] = sub_1D66FEF04();
  result = sub_1D6A9B650();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A9B650()
{
  result = qword_1EC890F40;
  if (!qword_1EC890F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F40);
  }

  return result;
}

uint64_t sub_1D6A9B6B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 16);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D6A9B704(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 4;
    }
  }

  return result;
}

void sub_1D6A9B764(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D725ECFC();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

id sub_1D6A9B978(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D5DF6790();
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v7 = *v6;
  *(inited + 32) = *v6;
  v8 = *(v3 + 24);
  v9 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = *(v3 + 80);
  v12 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = a3;
  v14 = v7;
  v15 = v8;
  v16 = v10;
  v17 = v11;
  v18 = v13;
  v19 = a3;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v20 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v21 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v22 = sub_1D7261D2C();

  v23 = [v20 initWithString:v21 attributes:v22];

  return v23;
}

id sub_1D6A9BB40()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setLineBreakMode_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *(v0 + 32);
  v6 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = *(v0 + 88);
  v9 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v8;
  v10 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v1;

  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v10;
  v16 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v19 = sub_1D7261D2C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_1D6A9BD60()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  [v1 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  v3 = MEMORY[0x1E69DB648];
  *(inited + 16) = xmmword_1D7279970;
  v4 = *v3;
  *(inited + 32) = *v3;
  v5 = *(v0 + 32);
  v6 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = *(v0 + 96);
  v9 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v8;
  v10 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  *(inited + 144) = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v1;

  v11 = v4;
  v12 = v5;
  v13 = v7;
  v14 = v8;
  v15 = v10;
  v16 = v1;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v17 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v18 = sub_1D726203C();

  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v19 = sub_1D7261D2C();

  v20 = [v17 initWithString:v18 attributes:v19];

  return v20;
}

id sub_1D6A9BF80(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_1D7258AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 40);
  sub_1D7258A4C();
  v9 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v8);
  (*(v4 + 8))(v7, v3);
  [v9 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v12 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v8;
  v13 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = *(v2 + 136);
  v15 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  v17 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v9;
  v18 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v19 = v11;
  v20 = v8;
  v21 = v13;
  v22 = v14;
  v23 = v16;
  v24 = v9;
  v25 = v18;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v27 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v28 = sub_1D7261D2C();

  v29 = [v26 initWithString:v27 attributes:v28];

  return v29;
}

id sub_1D6A9C234()
{
  v1 = sub_1D7258AAC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  sub_1D7258A4C();
  v7 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v6);
  (*(v2 + 8))(v5, v1);
  [v7 setAlignment_];
  sub_1D5DF6790();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7274590;
  v9 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v10 = sub_1D5B5A498(0, &qword_1EDF1A720);
  *(inited + 40) = v6;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v9;
  v14 = v6;
  v15 = v11;
  v16 = [v12 secondaryLabelColor];
  v17 = sub_1D5B5A498(0, qword_1EDF1A6A0);
  *(inited + 80) = v16;
  v18 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v17;
  *(inited + 112) = v18;
  v19 = sub_1D5B5A498(0, &qword_1EDF1A840);
  *(inited + 120) = v7;
  v20 = *MEMORY[0x1E69DB660];
  *(inited + 144) = v19;
  *(inited + 152) = v20;
  *(inited + 184) = MEMORY[0x1E69E63B0];
  *(inited + 160) = 0xBFE0000000000000;
  v21 = v18;
  v22 = v7;
  v23 = v20;
  sub_1D5C09CEC(inited);
  swift_setDeallocating();
  sub_1D5C09DD4();
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v25 = sub_1D726203C();
  type metadata accessor for Key(0);
  sub_1D5C09E68();
  v26 = sub_1D7261D2C();

  v27 = [v24 initWithString:v25 attributes:v26];

  return v27;
}

void sub_1D6A9C504(void *a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    [a1 setClipsToBounds_];
    v4 = [a1 layer];
    [v4 setCornerRadius_];

    v5 = *(v2 + 104);

    [a1 setBackgroundColor_];
  }

  else
  {
    [a1 setClipsToBounds_];
    v6 = [a1 layer];
    [v6 setCornerRadius_];

    v7 = [objc_opt_self() clearColor];
    [a1 setBackgroundColor_];
  }
}

void sub_1D6A9C638(char *a1)
{
  v3 = sub_1D725CCCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8NewsFeed21CoverViewFollowSwitch_toggleState;
  swift_beginAccess();
  (*(v4 + 16))(v7, &a1[v8], v3);
  v9 = (*(v4 + 88))(v7, v3);
  if (v9 == *MEMORY[0x1E69D7630])
  {
    v10 = [a1 layer];
    [v10 setBorderWidth_];
LABEL_5:

    return;
  }

  if (v9 == *MEMORY[0x1E69D7638])
  {
    v11 = *(v1 + 136);
    v12 = v11;
    sub_1D69EA858(v11);

    v13 = [a1 layer];
    [v13 setBorderWidth_];

    v10 = [a1 layer];
    [a1 bounds];
    [v10 setCornerRadius_];
    goto LABEL_5;
  }

  sub_1D726402C();
  __break(1u);
}

id sub_1D6A9C884(void *a1)
{
  v3 = [a1 layer];
  [v3 setCornerRadius_];

  v4 = [a1 layer];
  [v4 setMaskedCorners_];

  [a1 setBackgroundColor_];
  [a1 setProgressTintColor_];

  return [a1 setHidden_];
}

uint64_t sub_1D6A9C94C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);

  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);

  __swift_destroy_boxed_opaque_existential_1(v0 + 144);

  return swift_deallocClassInstance();
}

id sub_1D6A9CA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D7258AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v5 + 24);
  sub_1D7258A4C();
  v15 = _sSo23NSMutableParagraphStyleC8NewsFeedE06localebC03for0F0ABSo6UIFontC_10Foundation6LocaleVtFZ_0(v14);
  (*(v10 + 8))(v13, v9);
  [v15 setLineBreakMode_];
  v16 = sub_1D6A9B978(a1, a2, v15);

  return v16;
}

id sub_1D6A9CC74(char *a1)
{
  v3 = *(*v1 + 80);
  v4 = *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState];
  *&a1[OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_tintColorForNormalState] = v3;
  v5 = v3;

  return [a1 setTintColor_];
}

id sub_1D6A9CD0C(void *a1, char a2)
{
  v4 = [a1 layer];
  [a1 bounds];
  [v4 setCornerRadius_];

  v5 = objc_opt_self();
  if (a2)
  {
    v6 = v5;
    v7 = [v5 systemPinkColor];
    [a1 setBackgroundColor_];

    v8 = [a1 layer];
    v9 = [v6 whiteColor];
    v10 = [v9 CGColor];

    [v8 setBorderColor_];
    v11 = [a1 layer];
    [v11 setBorderWidth_];

    v12 = [v6 whiteColor];
    [a1 setTintColor_];

    v13 = sub_1D726203C();
    v14 = [objc_opt_self() systemImageNamed_];

    if (v14)
    {
      v15 = [objc_opt_self() configurationWithPointSize:7 weight:13.0];
      v16 = [v14 imageWithConfiguration_];
    }

    else
    {
      v16 = 0;
    }

    [a1 setImage_];

    v24 = sel_setContentMode_;
    v25 = a1;
    v26 = 4;
  }

  else
  {
    v17 = v5;
    v18 = [v5 whiteColor];
    v19 = [v18 colorWithAlphaComponent_];

    [a1 setBackgroundColor_];
    v20 = [a1 layer];
    v21 = [v17 secondaryLabelColor];
    v22 = [v21 CGColor];

    [v20 setBorderColor_];
    v23 = [a1 layer];
    [v23 setBorderWidth_];

    v24 = sel_setImage_;
    v25 = a1;
    v26 = 0;
  }

  return [v25 v24];
}

uint64_t sub_1D6A9D098(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v9[0] = v4;
    v9[1] = v5;
    (*(v7 + 8))(v9, a2, ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t _s8NewsFeed18FormatGroupBindingV5ColorO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = (2 * (*(a1 + 9) & 0x7F)) | (v3 >> 5) & 1;
  v7 = (2 * *(a2 + 9)) | (v5 >> 5) & 1;
  if (v6 <= 2)
  {
    v11 = v4 == v2;
    if (v7)
    {
      v11 = 0;
    }

    v12 = v7;
    v13 = v4 == v2;
    if (v12 != 1)
    {
      v13 = 0;
    }

    v14 = (v4 ^ v2) == 0;
    if (v12 != 2)
    {
      v14 = 0;
    }

    if (v6 == 1)
    {
      v14 = v13;
    }

    if (v6)
    {
      return v14;
    }

    else
    {
      return v11;
    }
  }

  else if (v6 > 4)
  {
    if (v6 != 5)
    {
      if (((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)) == 6)
      {
        v17 = v3 >> 6;
        if (v3 >> 6 > 1)
        {
          if (v17 == 2)
          {
            if ((v5 & 0xC0) == 0x80 && v2 == v4 && ((v5 ^ v3) & 0x3F) == 0)
            {
              return 1;
            }
          }

          else if (v2 | v3 ^ 0xC0)
          {
            if (v5 >= 0xC0 && v4 == 1 && v5 == 192)
            {
              return 1;
            }
          }

          else if (v5 >= 0xC0 && !v4 && v5 == 192)
          {
            return 1;
          }
        }

        else if (v17)
        {
          if ((v5 & 0xC0) == 0x40 && v4 == v2)
          {
            return 1;
          }
        }

        else if (v5 <= 0x3F && v4 == v2)
        {
          return 1;
        }
      }

      return 0;
    }

    v15 = (v4 ^ v2) == 0;
    return ((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)) == 5 && v15;
  }

  else
  {
    if (v6 == 3)
    {
      if (((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)) == 3)
      {
        v8 = v5 & 0xDF;
        v9 = v3 & 0xFFFFFFDF;
        if (v9)
        {
          if (v9 == 1)
          {
            if (v8 == 1 && v2 == v4)
            {
              return 1;
            }
          }

          else if (v2 > 1)
          {
            if (v2 == 2)
            {
              if (v8 == 2 && v4 == 2)
              {
                return 1;
              }
            }

            else if (v8 == 2 && v4 == 3)
            {
              return 1;
            }
          }

          else if (v2)
          {
            if (v8 == 2 && v4 == 1)
            {
              return 1;
            }
          }

          else if (v8 == 2 && !v4)
          {
            return 1;
          }
        }

        else if (!v8 && v2 == v4)
        {
          return 1;
        }
      }

      return 0;
    }

    v16 = (v4 ^ v2) == 0;
    return ((2 * *(a2 + 9)) | ((v5 & 0x20) != 0)) == 4 && v16;
  }
}

unint64_t sub_1D6A9D3D0(uint64_t a1)
{
  result = sub_1D6A9D3F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A9D3F8()
{
  result = qword_1EC890F48;
  if (!qword_1EC890F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F48);
  }

  return result;
}

unint64_t sub_1D6A9D44C(void *a1)
{
  a1[1] = sub_1D667EBC0();
  a1[2] = sub_1D6700128();
  result = sub_1D6A9D484();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A9D484()
{
  result = qword_1EC890F50;
  if (!qword_1EC890F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F50);
  }

  return result;
}

uint64_t _s5ColorOwet_4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FA && *(a1 + 10))
  {
    return (*a1 + 506);
  }

  v3 = ((*(a1 + 8) >> 5) & 1 | (2 * *(a1 + 9))) ^ 0x1FF;
  if (v3 >= 0x1F9)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5ColorOwst_4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1F9)
  {
    *(result + 8) = 0;
    *result = a2 - 506;
    if (a3 >= 0x1FA)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FA)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 32 * (-a2 & 1);
      *(result + 9) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_1D6A9D5A4(uint64_t result, unsigned int a2)
{
  *(result + 8) = *(result + 8) & 0xDF | (32 * (a2 & 1));
  *(result + 9) = a2 >> 1;
  return result;
}

double sub_1D6A9D5D4(uint64_t a1)
{
  v3 = sub_1D725A19C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v38 - v18;
  v20 = *v1;
  if (*v1)
  {
    if (v20 == 1)
    {
      sub_1D7259EDC();
      sub_1D725A18C();
      v26 = v25;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      v27 = round(v26 * 56.0 * 0.25);
      if (v40)
      {
        v24 = v27;
      }

      else
      {
        v24 = 14.0;
      }

      v19 = v15;
    }

    else if (v20 == 2)
    {
      sub_1D7259EDC();
      sub_1D725A18C();
      v22 = v21;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      v23 = round(v22 * 80.0 * 0.25);
      if (v41)
      {
        v24 = v23;
      }

      else
      {
        v24 = 20.0;
      }

      v19 = v11;
    }

    else
    {
      v43 = a1;
      v32 = off_1F51AF338[0];
      type metadata accessor for FormatNodeContext();
      v33 = v32();
      v34 = v38;
      v24 = sub_1D5E02AFC(v33, v20);

      if (v34)
      {
        return v24;
      }

      sub_1D7259EDC();
      sub_1D725A18C();
      v36 = v35;
      if (qword_1EDF34BB8 != -1)
      {
        swift_once();
      }

      sub_1D7264C3C();
      v37 = round(v24 * 4.0 * v36 * 0.25);
      if (v42)
      {
        v24 = v37;
      }

      v19 = v7;
    }
  }

  else
  {
    sub_1D7259EDC();
    sub_1D725A18C();
    v29 = v28;
    if (qword_1EDF34BB8 != -1)
    {
      swift_once();
    }

    sub_1D7264C3C();
    v30 = round(v29 * 48.0 * 0.25);
    if (v39)
    {
      v24 = v30;
    }

    else
    {
      v24 = 12.0;
    }
  }

  (*(v4 + 8))(v19, v3);
  return v24;
}

unint64_t sub_1D6A9D9F4(uint64_t a1)
{
  result = sub_1D6A9DA1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6A9DA1C()
{
  result = qword_1EC890F58;
  if (!qword_1EC890F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F58);
  }

  return result;
}

unint64_t sub_1D6A9DA70(void *a1)
{
  a1[1] = sub_1D5CBFAE4();
  a1[2] = sub_1D666D440();
  result = sub_1D6A9DAA8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6A9DAA8()
{
  result = qword_1EC890F60;
  if (!qword_1EC890F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC890F60);
  }

  return result;
}

uint64_t sub_1D6A9DB0C()
{

  sub_1D725B31C();
}

uint64_t sub_1D6A9DB5C(void *a1)
{
  v8 = sub_1D62DCB8C(MEMORY[0x1E69E7CC0]);
  v2 = a1 + *(type metadata accessor for DebugFormatCanvasBindRequest() + 28);
  if (v2[193] == 1)
  {
    sub_1D5FEB300(&v4, 0);
  }

  if (v2[194] == 1)
  {
    sub_1D5FEB300(&v5, 1);
  }

  if (*a1 != 1)
  {
    sub_1D5FEB300(&v7, 2);

    sub_1D725972C();

    if ((v6[1] & 1) == 0)
    {
      sub_1D5FEB300(v6, 3);
    }
  }

  return v8;
}

uint64_t sub_1D6A9DC44@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = sub_1D7257A4C();
  v1 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC87D5D0 != -1)
  {
    swift_once();
  }

  sub_1D6AA8C90(&qword_1EC88DEE8, type metadata accessor for DebugFormatEditor);
  sub_1D725964C();
  v18 = v20;
  v19 = v21;
  sub_1D72579DC();
  sub_1D5BF4D9C();
  v13 = sub_1D7263A4C();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v4, v15);

  v20 = 0x2F2F3A70747468;
  v21 = 0xE700000000000000;
  if (qword_1EC87D5C8 != -1)
  {
    swift_once();
  }

  sub_1D725964C();
  v16 = v18;
  v17 = v19;
  sub_1D72579DC();
  v8 = sub_1D7263A4C();
  v10 = v9;
  v7(v4, v15);

  MEMORY[0x1DA6F9910](v8, v10);

  MEMORY[0x1DA6F9910](58, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v13, v6);

  sub_1D725855C();
}

double sub_1D6A9DF10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_1D725BD1C();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D7259F5C();
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DebugFormatEditorLayoutContext();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;

  sub_1D725B31C();

  if ((*(v25 + 48))(v32, 1, v24))
  {
    sub_1D6AA8A18(v32, sub_1D68D69A0);
    v57 = [objc_opt_self() currentTraitCollection];
  }

  else
  {
    sub_1D6AA3978(v32, v28, type metadata accessor for DebugFormatEditorLayoutContext);
    sub_1D6AA8A18(v32, sub_1D68D69A0);
    v33 = v56;
    (*(v56 + 16))(v23, &v28[*(v24 + 20)], v20);
    sub_1D6AA8A18(v28, type metadata accessor for DebugFormatEditorLayoutContext);
    v57 = sub_1D7259EBC();
    (*(v33 + 8))(v23, v20);
  }

  v34 = *(v60 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  sub_1D725972C();

  sub_1D60D74F0(v15);
  sub_1D6AA8A18(v19, type metadata accessor for FormatVersioningModeSelection);
  v35 = sub_1D6AA5460(v61, v15, v34);
  (*(v58 + 8))(v15, v59);
  sub_1D5F2B1F8(v61);
  v36 = &v35[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager];
  v37 = *&v35[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 24];
  v38 = *&v35[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager + 32];
  __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_appConfigManager], v37);
  v59 = (*(v38 + 8))(v37, v38);
  v39 = *(v36 + 3);
  v40 = *(v36 + 4);
  __swift_project_boxed_opaque_existential_1(v36, v39);
  v41 = (*(v40 + 16))(v39, v40);
  v42 = *(v36 + 3);
  v43 = *(v36 + 4);
  __swift_project_boxed_opaque_existential_1(v36, v42);
  (*(v43 + 24))(v61, v42, v43);
  v44 = v61[0];
  v45 = v61[1];
  v46 = *(v36 + 3);
  v47 = *(v36 + 4);
  __swift_project_boxed_opaque_existential_1(v36, v46);
  v48 = (*(v47 + 40))(v46, v47);
  v49 = [*&v35[OBJC_IVAR____TtC8NewsFeed19FormatSystemFactory_bundleSubscriptionManager] cachedSubscription];

  sub_1D72596FC();
  sub_1D72596DC();
  if (qword_1EDF43B30 != -1)
  {
    swift_once();
  }

  sub_1D72596CC();

  v50 = v61[0];
  v51 = [objc_opt_self() mainScreen];
  [v51 scale];
  v53 = v52;

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = a5;
  *(a2 + 40) = a6;
  *(a2 + 48) = v53;
  *(a2 + 56) = v57;
  *(a2 + 64) = 0;
  *(a2 + 65) = v50;
  result = 0.0;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = v59;
  *(a2 + 112) = v41;
  *(a2 + 120) = v44;
  *(a2 + 128) = v45;
  *(a2 + 136) = v48;
  *(a2 + 144) = v49;
  return result;
}

uint64_t sub_1D6A9E528()
{

  sub_1D725B31C();

  v60[10] = v56;
  v60[11] = v57;
  v60[12] = v58;
  v61 = v59;
  v60[6] = v52;
  v60[7] = v53;
  v60[8] = v54;
  v60[9] = v55;
  v60[2] = v48;
  v60[3] = v49;
  v60[4] = v50;
  v60[5] = v51;
  v60[0] = v46;
  v60[1] = v47;
  if (sub_1D5DEA380(v60) != 1)
  {
    v1 = BYTE3(v58);
    v2 = BYTE4(v58);
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v45 = v59;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v41 = v55;
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v32 = v46;
    v33 = v47;
    sub_1D6AA87D4(&v32, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    if ((v2 & 1) == 0)
    {
LABEL_7:
      v0 = 0;
      return v0 | v1;
    }

LABEL_5:
    v0 = 256;
    return v0 | v1;
  }

  v42 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v37 = v51;
  v32 = v46;
  v33 = v47;
  sub_1D6AA87D4(&v32, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);

  sub_1D725B31C();

  v31[10] = v28;
  v31[11] = v29;
  v31[12] = v30;
  v31[6] = v24;
  v31[7] = v25;
  v31[8] = v26;
  v31[9] = v27;
  v31[2] = v20;
  v31[3] = v21;
  v31[4] = v22;
  v31[5] = v23;
  v31[0] = v18;
  v31[1] = v19;
  if (sub_1D5DEA380(v31) != 1)
  {
    v1 = BYTE3(v30);
    v3 = BYTE4(v30);
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v11 = v24;
    v12 = v25;
    v13 = v26;
    v14 = v27;
    v7 = v20;
    v8 = v21;
    v9 = v22;
    v10 = v23;
    v5 = v18;
    v6 = v19;
    sub_1D6AA87D4(&v5, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v15 = v28;
  v16 = v29;
  v17 = v30;
  v11 = v24;
  v12 = v25;
  v13 = v26;
  v14 = v27;
  v7 = v20;
  v8 = v21;
  v9 = v22;
  v10 = v23;
  v5 = v18;
  v6 = v19;
  sub_1D6AA87D4(&v5, &qword_1EC8834B8, &type metadata for DebugFormatWorkspaceUserData);
  v0 = 0;
  v1 = 25;
  return v0 | v1;
}

uint64_t sub_1D6A9E7C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    sub_1D725972C();

    v6 = v15;
    v15 = a1;
    v16 = a2;
    MEMORY[0x1EEE9AC00](v5, v7);
    v14 = &v15;
    v8 = sub_1D5BD04C4;
  }

  else
  {

    sub_1D725972C();

    v6 = v15;
    v15 = a1;
    v16 = a2;
    MEMORY[0x1EEE9AC00](v9, v10);
    v14 = &v15;
    v8 = sub_1D5BD0538;
  }

  v11 = sub_1D5BD0418(v8, &v13, v6);

  return v11 & 1;
}

uint64_t sub_1D6A9E900(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
    if (sub_1D6A9E7C8(a1, a2, 1))
    {

      sub_1D725972C();

      v7 = *(v34 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v34 + 40;
        v10 = MEMORY[0x1E69E7CC0];
        do
        {
          v11 = (v9 + 16 * v8);
          v12 = v8;
          while (1)
          {
            if (v12 >= *(v34 + 16))
            {
              __break(1u);
              goto LABEL_40;
            }

            v13 = *(v11 - 1);
            v14 = *v11;
            if (v13 != a1 || v14 != a2)
            {
              result = sub_1D72646CC();
              if ((result & 1) == 0)
              {
                break;
              }
            }

            ++v12;
            v11 += 2;
            if (v7 == v12)
            {
              goto LABEL_37;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D5BFC364(0, *(v10 + 16) + 1, 1);
          }

          v17 = *(v10 + 16);
          v16 = *(v10 + 24);
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            result = sub_1D5BFC364((v16 > 1), v17 + 1, 1);
            v18 = v17 + 1;
          }

          v8 = v12 + 1;
          *(v10 + 16) = v18;
          v19 = v10 + 16 * v17;
          *(v19 + 32) = v13;
          *(v19 + 40) = v14;
          v9 = v34 + 40;
        }

        while (v7 - 1 != v12);
      }

LABEL_37:
      sub_1D607F09C();

      sub_1D725973C();
    }
  }

  else if (sub_1D6A9E7C8(a1, a2, 0))
  {

    sub_1D725972C();

    v20 = *(v34 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v34 + 40;
      v23 = MEMORY[0x1E69E7CC0];
      do
      {
        v24 = (v22 + 16 * v21);
        v25 = v21;
        while (1)
        {
          if (v25 >= *(v34 + 16))
          {
LABEL_40:
            __break(1u);
            return result;
          }

          v26 = *(v24 - 1);
          v27 = *v24;
          if (v26 != a1 || v27 != a2)
          {
            result = sub_1D72646CC();
            if ((result & 1) == 0)
            {
              break;
            }
          }

          ++v25;
          v24 += 2;
          if (v20 == v25)
          {
            goto LABEL_37;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D5BFC364(0, *(v23 + 16) + 1, 1);
        }

        v30 = *(v23 + 16);
        v29 = *(v23 + 24);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          result = sub_1D5BFC364((v29 > 1), v30 + 1, 1);
          v31 = v30 + 1;
        }

        v21 = v25 + 1;
        *(v23 + 16) = v31;
        v32 = v23 + 16 * v30;
        *(v32 + 32) = v26;
        *(v32 + 40) = v27;
        v22 = v34 + 40;
      }

      while (v20 - 1 != v25);
    }

    goto LABEL_37;
  }

  sub_1D6AA8C40(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D7273AE0;
  *(v33 + 32) = a1;
  *(v33 + 40) = a2;

  sub_1D725972C();

  sub_1D6985160(v34);

  sub_1D725973C();
}

void sub_1D6A9ED58(unint64_t a1, int a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatDerivedDataCompilerSettings();
  v136 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v134 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v118 - v12;
  v137 = sub_1D725BD1C();
  v125 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137, v14);
  v124 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v123 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D68D69A0(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for DebugFormatEditorLayoutContext();
  v23 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v24);
  v26 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = a2;
  v27 = sub_1D6C460B4(a1, a3, a2);
  v28 = a1 >> 62;
  v140 = v27;
  if (a1 >> 62)
  {
    goto LABEL_70;
  }

  v29 = v27;
  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_73:

    return;
  }

LABEL_3:
  v138 = v3;
  v30 = v29 >> 62;
  if (v29 >> 62)
  {
    v31 = sub_1D7263BFC();
    if (!v31)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_73;
    }
  }

  v120 = v28;
  v121 = v31;
  v122 = v26;
  v133 = v13;

  sub_1D725B31C();

  if ((*(v23 + 48))(v22, 1, v129) == 1)
  {

    v32 = sub_1D68D69A0;
    v33 = v22;
    goto LABEL_123;
  }

  sub_1D6AA8ADC(v22, v122, type metadata accessor for DebugFormatEditorLayoutContext);
  LOBYTE(v158) = 1;

  sub_1D725B32C();

  sub_1D5F5F928(0x2D656C69706D6F63, 0xEC000000656D6974, 0);

  *&v158 = 0;
  *(&v158 + 1) = 0xE000000000000000;
  sub_1D7263D4C();
  MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73E3A70);
  if (v30)
  {
    v28 = sub_1D7263BFC();
  }

  else
  {
    v28 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v156[0] = v28;
  v34 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v34);

  MEMORY[0x1DA6F9910](0xD000000000000017, 0x80000001D73E3A90);
  *&v156[0] = 0x69706D6F6365727BLL;
  *(&v156[0] + 1) = 0xEB000000003D656CLL;
  if (v126)
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (v126)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v35, v36);

  MEMORY[0x1DA6F9910](125, 0xE100000000000000);
  MEMORY[0x1DA6F9910](*&v156[0], *(&v156[0] + 1));

  v38 = *(&v158 + 1);
  v37 = v158;
  v39 = v138;
  if (qword_1EC87D498 != -1)
  {
    v66 = v158;
    swift_once();
    v37 = v66;
  }

  v119 = qword_1EC9BA710;
  sub_1D5F5EBA0(2, 0, 0, v37, v38);

  sub_1D6AA8C40(0, &qword_1EDF17B98, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6770]);
  v41 = objc_allocWithZone(v40);
  v42 = sub_1D725B3AC();
  v43 = sub_1D726203C();
  [v42 setName_];

  v23 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v23;
  *(v13 + 24) = a1;
  v44 = v42;

  sub_1D725ACDC();
  v139 = v44;

  v45 = MEMORY[0x1E69E7CC0];
  v132 = a1;
  if (v28)
  {
    *&v156[0] = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
LABEL_125:
      __break(1u);
      return;
    }

    v13 = 0;
    v45 = *&v156[0];
    v46 = v140 & 0xC000000000000001;
    do
    {
      if (v46)
      {
        v47 = MEMORY[0x1DA6FB460](v13, v140);
      }

      else
      {
        v47 = *(v140 + 8 * v13 + 32);
      }

      v48 = *(v47 + 16);
      *&v158 = 0;
      *(&v158 + 1) = 0xE000000000000000;
      v49 = *(v48 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
      if (v49 <= 2)
      {
        v50 = 0xE600000000000000;
        if (*(v48 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
        {
          if (v49 == 1)
          {
            v51 = 0x726564616548;
          }

          else
          {
            v51 = 0x7265746F6F46;
          }
        }

        else
        {
          v51 = 0x74756F79614CLL;
        }
      }

      else if (*(v48 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) > 4u)
      {
        if (v49 == 5)
        {
          v50 = 0xE700000000000000;
          v51 = 0x7972617262694CLL;
        }

        else
        {
          v51 = 0x756F72676B636142;
          v50 = 0xEA0000000000646ELL;
        }
      }

      else if (v49 == 3)
      {
        v50 = 0xE700000000000000;
        v51 = 0x6C6C6177796150;
      }

      else
      {
        v50 = 0xE500000000000000;
        v51 = 0x656D656854;
      }

      MEMORY[0x1DA6F9910](v51, v50);

      MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
      MEMORY[0x1DA6F9910](*(v48 + 16), *(v48 + 24));

      v52 = v158;
      *&v156[0] = v45;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      v23 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        sub_1D5BFC364((v53 > 1), v54 + 1, 1);
        v45 = *&v156[0];
      }

      ++v13;
      *(v45 + 16) = v23;
      *(v45 + 16 * v54 + 32) = v52;
    }

    while (v28 != v13);
    v39 = v138;
  }

  *&v141 = sub_1D5B86020(v45);

  v131 = *(v39 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_compilerOperationQueue);
  v3 = [v131 operations];
  sub_1D5B5A498(0, &qword_1EDF04680);
  v26 = sub_1D726267C();

  if (v26 >> 62)
  {
    v22 = sub_1D7263BFC();
    if (v22)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v22 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_43:
      a1 = 0;
      v130 = v26 & 0xC000000000000001;
      v127 = v26 + 32;
      *&v128 = v26 & 0xFFFFFFFFFFFFFF8;
      v55 = v141 + 56;
      do
      {
        if (v130)
        {
          v56 = MEMORY[0x1DA6FB460](a1, v26);
        }

        else
        {
          if (a1 >= *(v128 + 16))
          {
            goto LABEL_69;
          }

          v56 = *(v127 + 8 * a1);
        }

        v57 = v56;
        if (__OFADD__(a1++, 1))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          v65 = sub_1D7263BFC();
          v29 = v140;
          if (!v65)
          {
            goto LABEL_73;
          }

          goto LABEL_3;
        }

        v59 = [v56 name];
        if (v59)
        {
          v3 = v59;
          v28 = sub_1D726207C();
          v23 = v60;

          if (*(v141 + 16))
          {
            v13 = v141;
            sub_1D7264A0C();
            sub_1D72621EC();
            v61 = sub_1D7264A5C();
            v62 = -1 << *(v13 + 32);
            v3 = v61 & ~v62;
            if ((*(v55 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3))
            {
              v13 = ~v62;
              while (1)
              {
                v63 = (*(v141 + 48) + 16 * v3);
                v64 = *v63 == v28 && v63[1] == v23;
                if (v64 || (sub_1D72646CC() & 1) != 0)
                {
                  break;
                }

                v3 = (v3 + 1) & v13;
                if (((*(v55 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
                {
                  goto LABEL_64;
                }
              }

              [v57 cancel];
            }
          }

LABEL_64:
          if (v28 == 1701736292 && v23 == 0xE400000000000000)
          {
          }

          else
          {
            v3 = sub_1D72646CC();

            if ((v3 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

          [v139 addDependency_];
        }

LABEL_46:
      }

      while (a1 != v22);
    }
  }

  sub_1D725B31C();

  v67 = v158;
  v68 = v159;
  if (v126)
  {
    v69 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v69 = v67;
  }

  *&v158 = v69;
  sub_1D67423FC();
  sub_1D6AA8C90(&qword_1EC88DDF0, sub_1D67423FC);
  v70 = sub_1D72623DC();

  v71 = v138;
  *&v158 = v69;
  *(&v158 + 1) = v70;
  *&v159 = v68;

  sub_1D725B32C();

  sub_1D725B31C();

  v128 = v158;

  v130 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerResult;
  v158 = v128;

  sub_1D725B32C();

  sub_1D725B31C();

  v72 = sub_1D6741EC0(v141, v158, v159);
  v74 = v73;
  v76 = v75;

  *&v158 = v72;
  *(&v158 + 1) = v74;
  *&v159 = v76;

  sub_1D725B32C();

  sub_1D725B31C();

  v141 = v158;

  v158 = v141;

  sub_1D725B32C();

  type metadata accessor for FormatContentSubgroupNeighborsResolver();
  sub_1D5CE998C(&unk_1F51192D8, &v158);
  sub_1D6AA886C(&unk_1F51192F8);
  v77 = v158;
  v78 = *(v71 + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_defaultSystemFactory);
  swift_weakInit();
  swift_weakAssign();

  v79 = v123;
  sub_1D725972C();

  v80 = v124;
  sub_1D60D74F0(v124);
  sub_1D6AA8A18(v79, type metadata accessor for FormatVersioningModeSelection);
  v81 = sub_1D6AA5460(&v158, v80, v78);
  (*(v125 + 8))(v80, v137);
  sub_1D5F2B1F8(&v158);
  if (*(v77 + 16))
  {
    v82 = sub_1D5B69D90(0x72656C69706D6F63, 0xE800000000000000);
    v83 = v133;
    v84 = v119;
    if (v85)
    {
      v86 = (*(v77 + 56) + 16 * v82);
      v87 = *v86;
      v88 = v86[1];
    }

    else
    {
      v88 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E69E7CD0];
    }
  }

  else
  {
    v88 = MEMORY[0x1E69E7CC0];
    v87 = MEMORY[0x1E69E7CD0];
    v83 = v133;
    v84 = v119;
  }

  v89 = sub_1D6AA56F4((v122 + *(v129 + 20)), v122, 0, v84, v87, v88, v81);

  *&v141 = v121 - 1;
  if (v121 < 1)
  {
    __break(1u);
    goto LABEL_125;
  }

  v129 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspace;
  v130 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__compilerSettings;
  *&v128 = v140 & 0xC000000000000001;
  swift_beginAccess();
  v90 = 0;
  if (!v128)
  {
    goto LABEL_88;
  }

LABEL_87:
  v91 = MEMORY[0x1DA6FB460](v90, v140);
  while (1)
  {

    sub_1D725B31C();

    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v137, qword_1EDF3CA58);
    v92 = v134;
    sub_1D6AA3978(v83, v134, type metadata accessor for FormatDerivedDataCompilerSettings);
    v93 = (*(v136 + 80) + 32) & ~*(v136 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v91;
    *(v94 + 24) = v89;
    sub_1D6AA8ADC(v92, v94 + v93, type metadata accessor for FormatDerivedDataCompilerSettings);
    sub_1D6AA8A78(0, &qword_1EC8911E8, sub_1D67423FC, MEMORY[0x1E69D6940]);
    objc_allocWithZone(v95);

    v96 = sub_1D725B71C();
    sub_1D6AA8A18(v83, type metadata accessor for FormatDerivedDataCompilerSettings);
    v97 = *(v91 + 16);
    v172 = 0;
    v173 = 0xE000000000000000;
    v98 = *(v97 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
    v99 = 0x756F72676B636142;
    if (v98 == 5)
    {
      v99 = 0x7972617262694CLL;
    }

    v100 = 0xEA0000000000646ELL;
    if (v98 == 5)
    {
      v100 = 0xE700000000000000;
    }

    v101 = 0x6C6C6177796150;
    if (v98 != 3)
    {
      v101 = 0x656D656854;
    }

    v102 = 0xE500000000000000;
    if (v98 == 3)
    {
      v102 = 0xE700000000000000;
    }

    if (*(v97 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 4u)
    {
      v99 = v101;
      v100 = v102;
    }

    v103 = 0x7265746F6F46;
    if (v98 == 1)
    {
      v103 = 0x726564616548;
    }

    if (!*(v97 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role))
    {
      v103 = 0x74756F79614CLL;
    }

    if (*(v97 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
    {
      v104 = v103;
    }

    else
    {
      v104 = v99;
    }

    if (*(v97 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role) <= 2u)
    {
      v105 = 0xE600000000000000;
    }

    else
    {
      v105 = v100;
    }

    v106 = v96;
    MEMORY[0x1DA6F9910](v104, v105);

    MEMORY[0x1DA6F9910](24415, 0xE200000000000000);
    MEMORY[0x1DA6F9910](*(v97 + 16), *(v97 + 24));
    v107 = sub_1D726203C();

    [v106 setName_];

    sub_1D725B31C();

    v156[10] = v152;
    v156[11] = v153;
    v156[12] = v154;
    v156[6] = v148;
    v156[7] = v149;
    v156[8] = v150;
    v156[9] = v151;
    v156[2] = v144;
    v156[3] = v145;
    v156[4] = v146;
    v156[5] = v147;
    v156[0] = v142;
    v156[1] = v143;
    v168 = v152;
    v169 = v153;
    v170 = v154;
    v164 = v148;
    v165 = v149;
    v166 = v150;
    v167 = v151;
    v160 = v144;
    v161 = v145;
    v162 = v146;
    v163 = v147;
    v157 = v155;
    v171 = v155;
    v158 = v142;
    v159 = v143;
    v108 = sub_1D5DEA380(&v158);
    v83 = v133;
    if (v108 != 1)
    {
      v152 = v168;
      v153 = v169;
      v154 = v170;
      v155 = v171;
      v148 = v164;
      v149 = v165;
      v150 = v166;
      v151 = v167;
      v144 = v160;
      v145 = v161;
      v146 = v162;
      v147 = v163;
      v142 = v158;
      v143 = v159;
      if (sub_1D6C5727C(v91))
      {
        [v106 setQueuePriority_];

        sub_1D6AA87D4(v156, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        goto LABEL_116;
      }

      sub_1D6AA87D4(v156, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    }

    [v106 setQueuePriority_];

LABEL_116:
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v91;

    sub_1D725ACEC();

    v111 = swift_allocObject();
    swift_weakInit();
    v112 = swift_allocObject();
    v112[2] = v111;
    v112[3] = v132;
    v112[4] = v91;

    sub_1D725ACDC();
    [v139 addDependency_];
    [v131 addOperation_];

    if (v141 == v90)
    {
      break;
    }

    ++v90;
    if (v128)
    {
      goto LABEL_87;
    }

LABEL_88:
    v91 = *(v140 + 8 * v90 + 32);
  }

  v113 = v131;
  [v131 addOperation_];
  v114 = [v113 operationCount];
  if (v120)
  {
    v116 = v114;
    v115 = sub_1D7263BFC();
    v114 = v116;
  }

  else
  {
    v115 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v117 = v122;
  sub_1D6AA41E4(v114, v115);

  v32 = type metadata accessor for DebugFormatEditorLayoutContext;
  v33 = v117;
LABEL_123:
  sub_1D6AA8A18(v33, v32);
}

uint64_t sub_1D6AA02BC()
{
  sub_1D60CF280();
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = (&v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v81 = v0;
  v82 = &v67 - v11;
  v67 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__workspace;

  sub_1D725B31C();

  v86[10] = v85[10];
  v86[11] = v85[11];
  v86[12] = v85[12];
  v86[6] = v85[6];
  v86[7] = v85[7];
  v86[8] = v85[8];
  v86[9] = v85[9];
  v86[2] = v85[2];
  v86[3] = v85[3];
  v86[4] = v85[4];
  v86[5] = v85[5];
  v86[0] = v85[0];
  v86[1] = v85[1];
  v98 = v85[10];
  v99[0] = v85[11];
  v99[1] = v85[12];
  v94 = v85[6];
  v95 = v85[7];
  v96 = v85[8];
  v97 = v85[9];
  v90 = v85[2];
  v91 = v85[3];
  v92 = v85[4];
  v93 = v85[5];
  v87 = *&v85[13];
  v100 = *&v85[13];
  v88 = v85[0];
  v89 = v85[1];
  result = sub_1D5DEA380(&v88);
  if (result == 1)
  {
    return result;
  }

  v13 = v100;
  v14 = *(v100 + 16);
  v80 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor__packages;

  v15 = MEMORY[0x1E69E7CC0];
  v72 = v14;
  if (v14)
  {
    v16 = 0;
    v17 = 0;
    v69 = v8;
    v70 = v4;
    v68 = v5;
    v71 = v13;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v73 + 72);
      v77 = (*(v73 + 80) + 32) & ~*(v73 + 80);
      v78 = v16;
      v76 = v18;
      v19 = v82;
      sub_1D6AA3978(v13 + v77 + v18 * v16, v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);

      sub_1D725B31C();

      memcpy(v85, v84, sizeof(v85));
      memcpy(v83, v84, sizeof(v83));
      v20 = sub_1D71689D8();
      v21 = sub_1D60CEF18(v85);
      MEMORY[0x1EEE9AC00](v21, v22);
      *(&v67 - 2) = v19;
      v23 = sub_1D5E3EA18(sub_1D6AA8844, (&v67 - 4), v20);

      if (!v23)
      {

        if (qword_1EC87D498 != -1)
        {
          swift_once();
        }

        sub_1D5F5EBA0(0, 0, 0, 0xD000000000000039, 0x80000001D73C93D0);
        sub_1D60CF378(v84);
        v83[10] = v84[10];
        v83[11] = v84[11];
        v83[12] = v84[12];
        *&v83[13] = *&v84[13];
        v83[6] = v84[6];
        v83[7] = v84[7];
        v83[8] = v84[8];
        v83[9] = v84[9];
        v83[2] = v84[2];
        v83[3] = v84[3];
        v83[4] = v84[4];
        v83[5] = v84[5];
        v83[0] = v84[0];
        v83[1] = v84[1];
        sub_1D6AA103C(v83);
        v83[10] = v84[10];
        v83[11] = v84[11];
        v83[12] = v84[12];
        *&v83[13] = *&v84[13];
        v83[6] = v84[6];
        v83[7] = v84[7];
        v83[8] = v84[8];
        v83[9] = v84[9];
        v83[2] = v84[2];
        v83[3] = v84[3];
        v83[4] = v84[4];
        v83[5] = v84[5];
        v83[0] = v84[0];
        v83[1] = v84[1];

        sub_1D725B32C();

        sub_1D6AA1610();
        goto LABEL_47;
      }

      v24 = *(v23 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups;
      swift_beginAccess();
      v25 = *(v24 + 16);
      if (!*(v25 + 16))
      {
        sub_1D5C8F9E0();
        (*(*(v66 - 8) + 56))(v4, 1, 1, v66);
LABEL_44:

        sub_1D6AA8A18(v4, sub_1D60CF280);

        if (qword_1EC87D498 != -1)
        {
          swift_once();
        }

        sub_1D5F5EBA0(0, 0, 0, 0xD00000000000003FLL, 0x80000001D73C9350);
        sub_1D60CF378(v84);
        v83[10] = v84[10];
        v83[11] = v84[11];
        v83[12] = v84[12];
        *&v83[13] = *&v84[13];
        v83[6] = v84[6];
        v83[7] = v84[7];
        v83[8] = v84[8];
        v83[9] = v84[9];
        v83[2] = v84[2];
        v83[3] = v84[3];
        v83[4] = v84[4];
        v83[5] = v84[5];
        v83[0] = v84[0];
        v83[1] = v84[1];
        sub_1D6AA103C(v83);
        v83[10] = v84[10];
        v83[11] = v84[11];
        v83[12] = v84[12];
        *&v83[13] = *&v84[13];
        v83[6] = v84[6];
        v83[7] = v84[7];
        v83[8] = v84[8];
        v83[9] = v84[9];
        v83[2] = v84[2];
        v83[3] = v84[3];
        v83[4] = v84[4];
        v83[5] = v84[5];
        v83[0] = v84[0];
        v83[1] = v84[1];

        sub_1D725B32C();

        sub_1D6AA1610();

LABEL_47:
        sub_1D6AA87D4(v86, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
        return sub_1D6AA8A18(v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      }

      v74 = v23;
      v75 = v17;
      v79 = v15;
      v26 = (v82 + *(v5 + 28));
      v28 = *v26;
      v27 = v26[1];

      v29 = sub_1D5B69D90(v28, v27);
      if (v30)
      {
        v31 = v29;
        v32 = *(v25 + 56);
        sub_1D5C8F9E0();
        v34 = v33;
        v35 = *(v33 - 8);
        v36 = v32 + *(v35 + 72) * v31;
        v4 = v70;
        sub_1D6AA3978(v36, v70, sub_1D5C8F9E0);
        (*(v35 + 56))(v4, 0, 1, v34);
        v5 = v68;
      }

      else
      {
        sub_1D5C8F9E0();
        v34 = v37;
        v4 = v70;
        (*(*(v37 - 8) + 56))(v70, 1, 1, v37);
      }

      v15 = v79;

      sub_1D5C8F9E0();
      v38 = (*(*(v34 - 8) + 48))(v4, 1, v34);
      v39 = v74;
      v17 = v75;
      if (v38 == 1)
      {
        goto LABEL_44;
      }

      v40 = v4[7];
      v84[6] = v4[6];
      v84[7] = v40;
      v84[8] = v4[8];
      v41 = v4[3];
      v84[2] = v4[2];
      v84[3] = v41;
      v42 = v4[5];
      v84[4] = v4[4];
      v84[5] = v42;
      v43 = v4[1];
      v84[0] = *v4;
      v84[1] = v43;
      sub_1D5D65D5C(v84, v83);
      sub_1D6AA8A18(v4, sub_1D5C8F9E0);
      v44 = v82;
      v45 = v69;
      sub_1D6AA3978(v82, v69, type metadata accessor for FormatWorkspaceGroup);
      *(v45 + *(v5 + 20)) = *(v44 + *(v5 + 20));
      *(v45 + *(v5 + 24)) = v39;
      v46 = (v45 + *(v5 + 28));
      v47 = v84[3];
      v46[2] = v84[2];
      v46[3] = v47;
      v48 = v84[1];
      *v46 = v84[0];
      v46[1] = v48;
      v49 = v84[8];
      v46[7] = v84[7];
      v46[8] = v49;
      v50 = v84[6];
      v46[5] = v84[5];
      v46[6] = v50;
      v46[4] = v84[4];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1D699164C(0, v15[2] + 1, 1, v15);
      }

      v53 = v15[2];
      v52 = v15[3];
      if (v53 >= v52 >> 1)
      {
        v15 = sub_1D699164C(v52 > 1, v53 + 1, 1, v15);
      }

      v54 = v78 + 1;
      v15[2] = v53 + 1;
      v16 = v54;
      sub_1D6AA8ADC(v45, v15 + v77 + v53 * v76, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      sub_1D6AA8A18(v82, type metadata accessor for DebugFormatEditorWorkspaceGroup);
      if (v72 == v16)
      {
        goto LABEL_18;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v17 = 0;
LABEL_18:

  v5 = *(&v99[1] + 1);
  *&v83[0] = MEMORY[0x1E69E7CC0];
  if (*(&v99[1] + 1) >> 62)
  {
LABEL_52:
    v82 = v5 & 0xFFFFFFFFFFFFFF8;
    v55 = sub_1D7263BFC();
    goto LABEL_20;
  }

  v82 = *(&v99[1] + 1) & 0xFFFFFFFFFFFFFF8;
  v55 = *((*(&v99[1] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
  v57 = *(&v88 + 1);
  v56 = v88;

  sub_1D5ECF1C0(&v89, v85);
  if (v55)
  {
    v75 = v17;
    v58 = 0;
    v78 = v5 & 0xC000000000000001;
    v73 = v56;
    v74 = MEMORY[0x1E69E7CC0];
    v76 = v5;
    v77 = v55;
    v79 = v15;
    v72 = v57;
    do
    {
      v59 = v58;
      while (1)
      {
        if (v78)
        {
          v60 = MEMORY[0x1DA6FB460](v59, v5);
          v58 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if (v59 >= *(v82 + 16))
          {
            goto LABEL_50;
          }

          v60 = *(v5 + 8 * v59 + 32);

          v58 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }
        }

        sub_1D725B31C();

        memcpy(v85, v84, sizeof(v85));
        v15 = *(&v85[5] + 1);
        v17 = *(&v85[6] + 1);
        v61 = *&v85[6];

        sub_1D60CEF18(v85);

        if (*(v61 + 16))
        {
          v62 = *(v60 + 16);
          v63 = *(v62 + 16);
          v17 = *(v62 + 24);

          sub_1D5B69D90(v63, v17);
          LOBYTE(v63) = v64;

          if (v63)
          {
            break;
          }
        }

        v5 = v76;

        ++v59;
        if (v58 == v77)
        {
          v15 = v79;
          v57 = v72;
          v56 = v73;
          goto LABEL_39;
        }
      }

      MEMORY[0x1DA6F9CE0](v65);
      v5 = v76;
      if (*((*&v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v83[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((*&v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D726272C();
      }

      sub_1D726278C();
      v74 = *&v83[0];
      v15 = v79;
      v57 = v72;
      v56 = v73;
    }

    while (v58 != v77);
  }

  else
  {
    v74 = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v85[9] = v97;
  v85[10] = v98;
  v85[11] = v99[0];
  *(&v85[11] + 15) = *(v99 + 15);
  v85[5] = v93;
  v85[6] = v94;
  v85[7] = v95;
  v85[8] = v96;
  v85[1] = v89;
  v85[2] = v90;
  v85[3] = v91;
  v85[4] = v92;
  *&v85[0] = v56;
  *(&v85[0] + 1) = v57;
  *(&v85[12] + 3) = *(&v99[1] + 3);
  *(&v85[12] + 1) = v74;
  *&v85[13] = v15;
  nullsub_1();
  v84[10] = v85[10];
  v84[11] = v85[11];
  v84[12] = v85[12];
  *&v84[13] = *&v85[13];
  v84[6] = v85[6];
  v84[7] = v85[7];
  v84[8] = v85[8];
  v84[9] = v85[9];
  v84[2] = v85[2];
  v84[3] = v85[3];
  v84[4] = v85[4];
  v84[5] = v85[5];
  v84[0] = v85[0];
  v84[1] = v85[1];
  sub_1D6AA103C(v84);
  v84[10] = v85[10];
  v84[11] = v85[11];
  v84[12] = v85[12];
  *&v84[13] = *&v85[13];
  v84[6] = v85[6];
  v84[7] = v85[7];
  v84[8] = v85[8];
  v84[9] = v85[9];
  v84[2] = v85[2];
  v84[3] = v85[3];
  v84[4] = v85[4];
  v84[5] = v85[5];
  v84[0] = v85[0];
  v84[1] = v85[1];

  sub_1D725B32C();

  sub_1D6AA1610();
  return sub_1D6AA87D4(v86, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
}

uint64_t sub_1D6AA103C(__int128 *a1)
{
  v2 = v1;
  v41 = type metadata accessor for DebugFormatEditorWorkspaceGroup();
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[11];
  v89 = a1[10];
  v90 = v8;
  v91 = a1[12];
  v92 = *(a1 + 26);
  v9 = a1[7];
  v85 = a1[6];
  v86 = v9;
  v10 = a1[9];
  v87 = a1[8];
  v88 = v10;
  v11 = a1[3];
  v81 = a1[2];
  v82 = v11;
  v12 = a1[5];
  v83 = a1[4];
  v84 = v12;
  v13 = a1[1];
  v79 = *a1;
  v80 = v13;

  sub_1D725B31C();

  v93[10] = v75;
  v93[11] = v76;
  v93[12] = v77;
  v94 = v78;
  v93[6] = v71;
  v93[7] = v72;
  v93[8] = v73;
  v93[9] = v74;
  v93[2] = v67;
  v93[3] = v68;
  v93[4] = v69;
  v93[5] = v70;
  v93[0] = v65;
  v93[1] = v66;
  if (sub_1D5DEA380(v93) == 1)
  {
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v51 = v65;
    v52 = v66;
    sub_1D6AA87D4(&v51, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v14 = 0;
  }

  else
  {
    v15 = v78;
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v60 = v74;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v70;
    v51 = v65;
    v52 = v66;

    sub_1D6AA87D4(&v51, qword_1EC880D80, &type metadata for DebugFormatEditorWorkspace);
    v16 = *(v15 + 16);
    if (v16)
    {
      v39 = v2;
      *&v50[0] = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v16, 0);
      v14 = *&v50[0];
      v17 = *(v4 + 80);
      v38 = v15;
      v18 = v15 + ((v17 + 32) & ~v17);
      v40 = v4;
      v19 = *(v4 + 72);
      do
      {
        sub_1D6AA3978(v18, v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        v20 = *(*&v7[*(v41 + 24)] + 16);
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);

        sub_1D6AA8A18(v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
        *&v50[0] = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D5BFC364((v23 > 1), v24 + 1, 1);
          v14 = *&v50[0];
        }

        *(v14 + 16) = v24 + 1;
        v25 = v14 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        v18 += v19;
        --v16;
      }

      while (v16);

      v2 = v39;
      v4 = v40;
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }
  }

  v61 = v89;
  v62 = v90;
  v63 = v91;
  v64 = v92;
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  v53 = v81;
  v54 = v82;
  v55 = v83;
  v56 = v84;
  v51 = v79;
  v52 = v80;
  result = sub_1D5DEA380(&v51);
  if (result == 1)
  {
    if (!v14)
    {
      return result;
    }

    goto LABEL_22;
  }

  v27 = v64;
  v28 = *(v64 + 16);
  if (!v28)
  {
    v29 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_22:

    goto LABEL_23;
  }

  v39 = v2;
  *&v50[0] = MEMORY[0x1E69E7CC0];
  sub_1D5BFC364(0, v28, 0);
  v29 = *&v50[0];
  v30 = v27 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v40 = *(v4 + 72);
  do
  {
    sub_1D6AA3978(v30, v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    v31 = *(*&v7[*(v41 + 24)] + 16);
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_1D6AA8A18(v7, type metadata accessor for DebugFormatEditorWorkspaceGroup);
    *&v50[0] = v29;
    v35 = *(v29 + 16);
    v34 = *(v29 + 24);
    if (v35 >= v34 >> 1)
    {
      sub_1D5BFC364((v34 > 1), v35 + 1, 1);
      v29 = *&v50[0];
    }

    *(v29 + 16) = v35 + 1;
    v36 = v29 + 16 * v35;
    *(v36 + 32) = v32;
    *(v36 + 40) = v33;
    v30 += v40;
    --v28;
  }

  while (v28);
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_19:
  v37 = sub_1D5BF1C0C(v14, v29);

  if ((v37 & 1) == 0)
  {
LABEL_23:
    LOBYTE(v50[0]) = 0;

    sub_1D725B32C();

    sub_1D607F0A4(v50);
    v46 = v50[4];
    v47 = v50[5];
    v48 = v50[6];
    v49 = v50[7];
    v42 = v50[0];
    v43 = v50[1];
    v44 = v50[2];
    v45 = v50[3];

    sub_1D725B32C();

    *&v44 = 0;
    v42 = 0u;
    v43 = 0u;

    sub_1D725B32C();

    *&v42 = MEMORY[0x1E69E7CC0];

    sub_1D725B32C();
  }

  return result;
}