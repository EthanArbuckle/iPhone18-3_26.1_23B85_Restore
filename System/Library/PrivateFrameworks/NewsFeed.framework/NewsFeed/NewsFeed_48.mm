uint64_t sub_1D5FAC504(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v49[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v49[0] = a2;
    v49[1] = a3;

    v7 = sub_1D6844380(v49);

    v44 = *(v7 + 16);
    if (!v44)
    {
LABEL_91:

      return 2;
    }

    v40 = v4;
    v8 = 0;
    v48 = 0;
    v43 = v7 + 32;
    v41 = a1;
    v45 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v37 = a2;
    swift_once();
    a2 = v37;
  }

  v46 = v8;
  v10 = (v43 + 56 * v8);
  v11 = v10[1];
  v13 = v10[3];
  v12 = v10[4];
  v15 = v10[5];
  v14 = v10[6];
  LOBYTE(v10) = *(v13 + 32);
  v16 = v10 & 0x3F;
  v17 = ((1 << v10) + 63) >> 6;
  v18 = 8 * v17;
  swift_bridgeObjectRetain_n();

  v47 = v11;

  if (v16 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v18 = swift_slowAlloc();

      v35 = v48;
      a3 = sub_1D5FB8844(v18, v17, v13, a1, sub_1D5FB88DC);

      v48 = v35;
      if (v35)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v18, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v20);
  bzero(&v39[-((v18 + 15) & 0x3FFFFFFFFFFFFFF0)], v18);
  v21 = v48;
  v22 = sub_1D5FB88DC(&v39[-((v18 + 15) & 0x3FFFFFFFFFFFFFF0)], v17, v13, a1);
  v48 = v21;
  if (!v21)
  {
    a3 = v22;

LABEL_11:
    v4 = v14;
    v23 = sub_1D5BFC390(a3, v13);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v12) & 1) == 0)
    {

LABEL_49:
      v7 = v45;
      v9 = v46;
      goto LABEL_6;
    }

    v24 = *(v15 + 16);
    v42 = v12;
    if (!v24)
    {
      v29 = *(v14 + 16);
      if (!v29)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v25 = 0;
    v26 = (v15 + 40);
    while (v25 < *(v15 + 16))
    {
      a3 = *v26;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v27 = sub_1D726203C();
          v28 = [objc_opt_self() systemImageNamed_];

          if (!v28)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v41;
            goto LABEL_49;
          }

LABEL_45:
          ++v25;
          v26 += 2;
          if (v24 == v25)
          {

            v29 = *(v4 + 16);
            if (!v29)
            {
LABEL_92:

              return v40 & 1;
            }

LABEL_53:

            v30 = 0;
            v31 = (v4 + 40);
            while (1)
            {
              if (v30 >= *(v4 + 16))
              {
                goto LABEL_95;
              }

              a3 = *v31;
              swift_bridgeObjectRetain_n();
              v32 = sub_1D61E05F4();
              if (v32 != 13)
              {
                break;
              }

              v33 = sub_1D726203C();
              v34 = [objc_opt_self() systemImageNamed_];

              if (v34)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v30;
              v31 += 2;
              if (v29 == v30)
              {

                goto LABEL_92;
              }
            }

            a1 = v41;
            v7 = v45;
            switch(v32)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v9 = v46;
LABEL_6:
            v8 = v9 + 1;
            if (v8 == v44)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v38 = v48;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v18, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAD028(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v47[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v47[0] = a2;
    v47[1] = a3;

    v7 = sub_1D6844380(v47);

    v42 = *(v7 + 16);
    if (!v42)
    {
LABEL_91:

      return 0;
    }

    v8 = 0;
    v46 = 0;
    v41 = v7 + 32;
    v40[0] = a1;
    v43 = v7;
LABEL_7:
    if (v8 < *(v7 + 16))
    {
      break;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v38 = a2;
    swift_once();
    a2 = v38;
  }

  v44 = v8;
  v9 = (v41 + 56 * v8);
  v10 = v9[1];
  v12 = v9[3];
  v11 = v9[4];
  v13 = v9[5];
  v14 = v9[6];
  LOBYTE(v9) = *(v12 + 32);
  v15 = v9 & 0x3F;
  v16 = ((1 << v9) + 63) >> 6;
  v17 = (8 * v16);
  swift_bridgeObjectRetain_n();

  v45 = v10;

  if (v15 > 0xD)
  {
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if ((isStackAllocationSafe & 1) == 0)
    {
      v17 = swift_slowAlloc();

      v36 = v46;
      v22 = sub_1D5FB8844(v17, v16, v12, a1, sub_1D5FB88DC);

      v46 = v36;
      if (v36)
      {
        goto LABEL_98;
      }

      MEMORY[0x1DA6FD500](v17, -1, -1);
      goto LABEL_11;
    }
  }

  MEMORY[0x1EEE9AC00](isStackAllocationSafe, v19);
  bzero(v40 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0), v17);
  v20 = v46;
  v21 = sub_1D5FB88DC(v40 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0), v16, v12, a1);
  v46 = v20;
  if (!v20)
  {
    v22 = v21;

LABEL_11:
    a3 = v14;
    v23 = sub_1D5BFC390(v22, v12);

    if ((v23 & 1) == 0 || (sub_1D670EDB8(a1, v11) & 1) == 0)
    {

LABEL_49:
      v7 = v43;
      v29 = v44;
      goto LABEL_6;
    }

    v24 = *(v13 + 16);
    v40[1] = v11;
    if (!v24)
    {
      v30 = *(v14 + 16);
      if (!v30)
      {
        goto LABEL_92;
      }

      goto LABEL_53;
    }

    v25 = 0;
    v26 = v13 + 40;
    while (v25 < *(v13 + 16))
    {

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_42;
          }

          goto LABEL_44;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_42:
            swift_once();
          }

LABEL_44:

          goto LABEL_45;
        default:
          v27 = sub_1D726203C();
          v28 = [objc_opt_self() systemImageNamed_];

          if (!v28)
          {

            swift_bridgeObjectRelease_n();

LABEL_86:
            a1 = v40[0];
            goto LABEL_49;
          }

LABEL_45:
          ++v25;
          v26 += 16;
          if (v24 == v25)
          {

            v30 = *(a3 + 16);
            if (!v30)
            {
LABEL_92:

              return *&a4;
            }

LABEL_53:

            v31 = 0;
            v32 = a3 + 40;
            while (1)
            {
              if (v31 >= *(a3 + 16))
              {
                goto LABEL_95;
              }

              swift_bridgeObjectRetain_n();
              v33 = sub_1D61E05F4();
              if (v33 != 13)
              {
                break;
              }

              v34 = sub_1D726203C();
              v35 = [objc_opt_self() systemImageNamed_];

              if (v35)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_86;
              }

              ++v31;
              v32 += 16;
              if (v30 == v31)
              {

                goto LABEL_92;
              }
            }

            a1 = v40[0];
            v7 = v43;
            v29 = v44;
            switch(v33)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_83;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_83;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_83:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

LABEL_6:
            v8 = v29 + 1;
            if (v8 == v42)
            {
              goto LABEL_91;
            }

            goto LABEL_7;
          }

          break;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

  v39 = v46;
  swift_willThrow();

  __break(1u);
LABEL_98:

  result = MEMORY[0x1DA6FD500](v17, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FADB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, uint64_t, uint64_t (*)())@<X2>, uint64_t (*a4)(void)@<X3>, void **a5@<X8>)
{
  v9 = v5;
  v61[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v12 = *(v9 + 8);
    v61[0] = *v9;
    v61[1] = v12;

    v13 = sub_1D6844380(v61);

    v56 = *(v13 + 16);
    if (!v56)
    {

LABEL_92:
      v39 = a4(0);
      return (*(*(v39 - 8) + 56))(a5, 1, 1, v39);
    }

    v48 = a2;
    v49 = a3;
    v50 = v9;
    v51 = a4;
    v52 = a5;
    v53 = a1;
    v14 = 0;
    v60 = 0;
    v55 = v13 + 32;
    v57 = v13;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        goto LABEL_95;
      }

      v58 = v14;
      v16 = (v55 + 56 * v14);
      v17 = v16[1];
      v9 = v16[3];
      v18 = v16[4];
      a2 = v16[5];
      v19 = v16[6];
      LOBYTE(v16) = *(v9 + 32);
      a5 = (v16 & 0x3F);
      v20 = ((1 << v16) + 63) >> 6;
      v21 = (8 * v20);
      swift_bridgeObjectRetain_n();

      v59 = v17;
      v22 = v18;

      if (a5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        a5 = &v47;
        MEMORY[0x1EEE9AC00](isStackAllocationSafe, v24);
        bzero(&v47 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v21);
        v25 = v60;
        v26 = sub_1D5FB88DC(&v47 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0), v20, v9, a1);
        v60 = v25;
        if (v25)
        {

          v46 = v60;
          swift_willThrow();

          __break(1u);
LABEL_99:

          result = MEMORY[0x1DA6FD500](v21, -1, -1);
          __break(1u);
          return result;
        }

        a3 = v26;
      }

      else
      {
        v21 = swift_slowAlloc();

        v38 = v60;
        a3 = sub_1D5FB8844(v21, v20, v9, a1, sub_1D5FB88DC);

        v60 = v38;
        if (v38)
        {
          goto LABEL_99;
        }

        MEMORY[0x1DA6FD500](v21, -1, -1);
      }

      a4 = v19;
      v27 = sub_1D5BFC390(a3, v9);

      if ((v27 & 1) == 0)
      {

LABEL_48:
        v13 = v57;
        v15 = v58;
        goto LABEL_5;
      }

      v28 = sub_1D670EDB8(a1, v18);
      v13 = v57;
      if (v28)
      {
        break;
      }

      v15 = v58;
LABEL_5:
      v14 = v15 + 1;
      if (v14 == v56)
      {

        a4 = v51;
        a5 = v52;
        goto LABEL_92;
      }
    }

    v54 = v22;
    v29 = *(a2 + 16);
    if (!v29)
    {
      goto LABEL_49;
    }

    v30 = 0;
    a5 = (a2 + 40);
LABEL_14:
    if (v30 < *(a2 + 16))
    {
      break;
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  a3 = *a5;

  switch(sub_1D72641CC())
  {
    case 0:
      if (qword_1EC87DB60 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 1:
      if (qword_1EDF05C38 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 2:
      if (qword_1EC87DB90 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 3:
      if (qword_1EDF1BBE8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 4:
      if (qword_1EC87DB70 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 5:
      if (qword_1EDF05CB8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 6:
      if (qword_1EC87DB80 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 7:
      if (qword_1EC87DB98 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 8:
      if (qword_1EC87DBA0 == -1)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 9:
      if (qword_1EC87DBA8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 10:
      if (qword_1EC87DBB0 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 11:
      if (qword_1EC87DBB8 != -1)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    case 12:
      if (qword_1EC87DBC0 != -1)
      {
LABEL_41:
        swift_once();
      }

LABEL_43:

      goto LABEL_44;
    default:
      v31 = sub_1D726203C();
      v32 = [objc_opt_self() systemImageNamed_];

      if (!v32)
      {

        swift_bridgeObjectRelease_n();

        goto LABEL_85;
      }

LABEL_44:
      ++v30;
      a5 += 2;
      if (v29 != v30)
      {
        goto LABEL_14;
      }

LABEL_49:
      a5 = *(a4 + 2);
      if (!a5)
      {
        goto LABEL_93;
      }

      v33 = 0;
      v34 = (a4 + 40);
      while (2)
      {
        if (v33 >= *(a4 + 2))
        {
          goto LABEL_96;
        }

        a3 = *v34;
        swift_bridgeObjectRetain_n();
        v35 = sub_1D61E05F4();
        if (v35 != 13)
        {
          a1 = v53;
          a5 = v54;
          v13 = v57;
          v15 = v58;
          switch(v35)
          {
            case 1:
              if (qword_1EDF05C38 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 2:
              if (qword_1EC87DB90 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 3:
              if (qword_1EDF1BBE8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 4:
              if (qword_1EC87DB70 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 5:
              if (qword_1EDF05CB8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 6:
              if (qword_1EC87DB80 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 7:
              if (qword_1EC87DB98 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 8:
              if (qword_1EC87DBA0 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 9:
              if (qword_1EC87DBA8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 10:
              if (qword_1EC87DBB0 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 11:
              if (qword_1EC87DBB8 != -1)
              {
                goto LABEL_80;
              }

              break;
            case 12:
              if (qword_1EC87DBC0 != -1)
              {
                goto LABEL_80;
              }

              break;
            default:
              if (qword_1EC87DB60 != -1)
              {
LABEL_80:
                swift_once();
              }

              break;
          }

          swift_bridgeObjectRelease_n();

          goto LABEL_5;
        }

        v36 = sub_1D726203C();
        v37 = [objc_opt_self() systemImageNamed_];

        if (v37)
        {
          swift_bridgeObjectRelease_n();

LABEL_85:
          a1 = v53;
          goto LABEL_48;
        }

        v33 = (v33 + 1);
        v34 += 2;
        if (a5 != v33)
        {
          continue;
        }

        break;
      }

LABEL_93:

      v41 = *(v49(0, v48, type metadata accessor for FormatSelectorValueSelector) + 36);
      v42 = v51(0);
      v43 = *(v42 - 8);
      v44 = v50 + v41;
      v45 = v52;
      (*(v43 + 16))(v52, v44, v42);
      return (*(v43 + 56))(v45, 0, 1, v42);
  }
}

uint64_t sub_1D5FAE784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, void ***a5@<X8>)
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v49[0] = a2;
    v49[1] = a3;

    v9 = sub_1D6844380(v49);

    v44 = *(v9 + 16);
    if (!v44)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return result;
    }

    v39 = a4;
    v40 = a5;
    v10 = 0;
    v48 = 0;
    v43 = v9 + 32;
    v45 = v9;
    v41 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v46 = v10;
    v13 = (v43 + 56 * v10);
    v14 = v13[1];
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[5];
    v18 = v13[6];
    LOBYTE(v13) = *(v16 + 32);
    a4 = (v13 & 0x3F);
    v19 = ((1 << v13) + 63) >> 6;
    v20 = (8 * v19);
    swift_bridgeObjectRetain_n();

    v47 = v14;
    v21 = v15;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v20 = swift_slowAlloc();

        v36 = v48;
        a3 = sub_1D5FB8844(v20, v19, v16, a1, sub_1D5FB88DC);

        v48 = v36;
        if (v36)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v20, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v39;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v23);
    bzero(&v39 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v20);
    v24 = v48;
    v25 = sub_1D5FB88DC(&v39 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v19, v16, a1);
    v48 = v24;
    if (v24)
    {
      break;
    }

    a3 = v25;

LABEL_12:
    a5 = v18;
    v26 = sub_1D5BFC390(a3, v16);

    if ((v26 & 1) == 0 || (sub_1D670EDB8(a1, v15) & 1) == 0)
    {

LABEL_50:
      v9 = v45;
      v12 = v46;
      goto LABEL_7;
    }

    v27 = *(v17 + 16);
    v42 = v21;
    if (!v27)
    {
      a4 = v18[2];
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v17 + 40);
    while (v28 < *(v17 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v41;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              *v40 = v39;
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v33 = sub_1D61E05F4();
              if (v33 != 13)
              {
                break;
              }

              v34 = sub_1D726203C();
              v35 = [objc_opt_self() systemImageNamed_];

              if (v35)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v41;
            v9 = v45;
            switch(v33)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v12 = v46;
LABEL_7:
            v10 = v12 + 1;
            if (v10 == v44)
            {

              a5 = v40;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v37 = a2;
    swift_once();
    a2 = v37;
  }

  v38 = v48;
  swift_willThrow();

  __break(1u);
LABEL_100:

  result = MEMORY[0x1DA6FD500](v20, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_1D5FAF2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, void ***a5@<X8>)
{
  v50[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v50[0] = a2;
    v50[1] = a3;

    v9 = sub_1D6844380(v50);

    v45 = *(v9 + 16);
    if (!v45)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return result;
    }

    v40 = a4;
    v41 = a5;
    v10 = 0;
    v49 = 0;
    v44 = v9 + 32;
    v46 = v9;
    v42 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v47 = v10;
    v13 = (v44 + 56 * v10);
    v14 = v13[1];
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[5];
    v18 = v13[6];
    LOBYTE(v13) = *(v16 + 32);
    a4 = (v13 & 0x3F);
    v19 = ((1 << v13) + 63) >> 6;
    v20 = (8 * v19);
    swift_bridgeObjectRetain_n();

    v48 = v14;
    v21 = v15;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v20 = swift_slowAlloc();

        v36 = v49;
        a3 = sub_1D5FB8844(v20, v19, v16, a1, sub_1D5FB88DC);

        v49 = v36;
        if (v36)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v20, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v40;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v23);
    bzero(&v40 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v20);
    v24 = v49;
    v25 = sub_1D5FB88DC(&v40 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v19, v16, a1);
    v49 = v24;
    if (v24)
    {
      break;
    }

    a3 = v25;

LABEL_12:
    a5 = v18;
    v26 = sub_1D5BFC390(a3, v16);

    if ((v26 & 1) == 0 || (sub_1D670EDB8(a1, v15) & 1) == 0)
    {

LABEL_50:
      v9 = v46;
      v12 = v47;
      goto LABEL_7;
    }

    v27 = *(v17 + 16);
    v43 = v21;
    if (!v27)
    {
      a4 = v18[2];
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v17 + 40);
    while (v28 < *(v17 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v42;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              v37 = v40;
              *v41 = v40;
              return sub_1D5F33D5C(v37);
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v33 = sub_1D61E05F4();
              if (v33 != 13)
              {
                break;
              }

              v34 = sub_1D726203C();
              v35 = [objc_opt_self() systemImageNamed_];

              if (v35)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v42;
            v9 = v46;
            switch(v33)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v12 = v47;
LABEL_7:
            v10 = v12 + 1;
            if (v10 == v45)
            {

              a5 = v41;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v38 = a2;
    swift_once();
    a2 = v38;
  }

  v39 = v49;
  swift_willThrow();

  __break(1u);
LABEL_100:

  result = MEMORY[0x1DA6FD500](v20, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FAFE08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X3>, void ***a5@<X8>)
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (qword_1EDF2AB18 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v49[0] = a2;
    v49[1] = a3;

    v9 = sub_1D6844380(v49);

    v44 = *(v9 + 16);
    if (!v44)
    {

LABEL_93:
      *a5 = 0xF000000000000007;
      return result;
    }

    v39 = a4;
    v40 = a5;
    v10 = 0;
    v48 = 0;
    v43 = v9 + 32;
    v45 = v9;
    v41 = a1;
LABEL_8:
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_96;
    }

    v46 = v10;
    v13 = (v43 + 56 * v10);
    v14 = v13[1];
    v16 = v13[3];
    v15 = v13[4];
    v17 = v13[5];
    v18 = v13[6];
    LOBYTE(v13) = *(v16 + 32);
    a4 = (v13 & 0x3F);
    v19 = ((1 << v13) + 63) >> 6;
    v20 = (8 * v19);
    swift_bridgeObjectRetain_n();

    v47 = v14;
    v21 = v15;

    if (a4 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v20 = swift_slowAlloc();

        v36 = v48;
        a3 = sub_1D5FB8844(v20, v19, v16, a1, sub_1D5FB88DC);

        v48 = v36;
        if (v36)
        {
          goto LABEL_100;
        }

        MEMORY[0x1DA6FD500](v20, -1, -1);
        goto LABEL_12;
      }
    }

    a4 = &v39;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v23);
    bzero(&v39 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v20);
    v24 = v48;
    v25 = sub_1D5FB88DC(&v39 - ((v20 + 15) & 0x3FFFFFFFFFFFFFF0), v19, v16, a1);
    v48 = v24;
    if (v24)
    {
      break;
    }

    a3 = v25;

LABEL_12:
    a5 = v18;
    v26 = sub_1D5BFC390(a3, v16);

    if ((v26 & 1) == 0 || (sub_1D670EDB8(a1, v15) & 1) == 0)
    {

LABEL_50:
      v9 = v45;
      v12 = v46;
      goto LABEL_7;
    }

    v27 = *(v17 + 16);
    v42 = v21;
    if (!v27)
    {
      a4 = v18[2];
      if (!a4)
      {
        goto LABEL_94;
      }

      goto LABEL_54;
    }

    v28 = 0;
    a4 = (v17 + 40);
    while (v28 < *(v17 + 16))
    {
      a3 = *a4;

      switch(sub_1D72641CC())
      {
        case 0:
          if (qword_1EC87DB60 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 1:
          if (qword_1EDF05C38 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 2:
          if (qword_1EC87DB90 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 3:
          if (qword_1EDF1BBE8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 4:
          if (qword_1EC87DB70 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 5:
          if (qword_1EDF05CB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 6:
          if (qword_1EC87DB80 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 7:
          if (qword_1EC87DB98 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 8:
          if (qword_1EC87DBA0 == -1)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        case 9:
          if (qword_1EC87DBA8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 10:
          if (qword_1EC87DBB0 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 11:
          if (qword_1EC87DBB8 != -1)
          {
            goto LABEL_43;
          }

          goto LABEL_45;
        case 12:
          if (qword_1EC87DBC0 != -1)
          {
LABEL_43:
            swift_once();
          }

LABEL_45:

          goto LABEL_46;
        default:
          v29 = sub_1D726203C();
          v30 = [objc_opt_self() systemImageNamed_];

          if (!v30)
          {

            swift_bridgeObjectRelease_n();

LABEL_87:
            a1 = v41;
            goto LABEL_50;
          }

LABEL_46:
          ++v28;
          a4 += 2;
          if (v27 == v28)
          {

            a4 = a5[2];
            if (!a4)
            {
LABEL_94:

              *v40 = v39;
            }

LABEL_54:

            v31 = 0;
            v32 = (a5 + 5);
            while (1)
            {
              if (v31 >= a5[2])
              {
                goto LABEL_97;
              }

              a3 = *v32;
              swift_bridgeObjectRetain_n();
              v33 = sub_1D61E05F4();
              if (v33 != 13)
              {
                break;
              }

              v34 = sub_1D726203C();
              v35 = [objc_opt_self() systemImageNamed_];

              if (v35)
              {
                swift_bridgeObjectRelease_n();

                goto LABEL_87;
              }

              v31 = (v31 + 1);
              v32 += 2;
              if (a4 == v31)
              {

                goto LABEL_94;
              }
            }

            a1 = v41;
            v9 = v45;
            switch(v33)
            {
              case 1:
                if (qword_1EDF05C38 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 2:
                if (qword_1EC87DB90 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 3:
                if (qword_1EDF1BBE8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 4:
                if (qword_1EC87DB70 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 5:
                if (qword_1EDF05CB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 6:
                if (qword_1EC87DB80 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 7:
                if (qword_1EC87DB98 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 8:
                if (qword_1EC87DBA0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 9:
                if (qword_1EC87DBA8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 10:
                if (qword_1EC87DBB0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 11:
                if (qword_1EC87DBB8 != -1)
                {
                  goto LABEL_84;
                }

                break;
              case 12:
                if (qword_1EC87DBC0 != -1)
                {
                  goto LABEL_84;
                }

                break;
              default:
                if (qword_1EC87DB60 != -1)
                {
LABEL_84:
                  swift_once();
                }

                break;
            }

            swift_bridgeObjectRelease_n();

            v12 = v46;
LABEL_7:
            v10 = v12 + 1;
            if (v10 == v44)
            {

              a5 = v40;
              goto LABEL_93;
            }

            goto LABEL_8;
          }

          break;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    v37 = a2;
    swift_once();
    a2 = v37;
  }

  v38 = v48;
  swift_willThrow();

  __break(1u);
LABEL_100:

  result = MEMORY[0x1DA6FD500](v20, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D5FB094C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v17 = a2;
    swift_once();
    a2 = v17;
  }

  *&v19[0] = a2;
  *(&v19[0] + 1) = a3;

  a3 = sub_1D6844380(v19);

  v7 = -*(a3 + 16);
  v8 = -1;
  v9 = 32;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v10 = v9 + 56;
    v11 = a3 + v9;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 32);
    v20 = *(v11 + 48);
    v19[1] = v13;
    v19[2] = v14;
    v19[0] = v12;
    sub_1D5E3B610(v19, v18);
    v15 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v19);
    v9 = v10;
    if (v15)
    {

      return a4;
    }
  }

  return 0;
}

uint64_t sub_1D5FB0A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;
    }
  }

  *a5 = 0xF000000000000007;
  return result;
}

uint64_t sub_1D5FB0BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;
    }
  }

  *a5 = 0xF000000000000007;
  return result;
}

uint64_t sub_1D5FB0D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    swift_once();
  }

  v21 = *v3;
  v22[0] = v21;
  sub_1D5FBA2F0(&v21, v20);
  v6 = sub_1D6844380(v22);

  v7 = -*(v6 + 16);
  v8 = -1;
  v9 = 32;
  while (v7 + v8 != -1)
  {
    if (++v8 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v10 = v9 + 56;
    v11 = v6 + v9;
    v12 = *v11;
    v13 = *(v11 + 16);
    v14 = *(v11 + 32);
    v23 = *(v11 + 48);
    v22[1] = v13;
    v22[2] = v14;
    v22[0] = v12;
    sub_1D5E3B610(v22, v20);
    v15 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v22);
    v9 = v10;
    if (v15)
    {

      v16 = *(v3 + 2);
      v17 = *(v3 + 3);
      v18 = *(v3 + 32);
      *a2 = v16;
      *(a2 + 8) = v17;
      *(a2 + 16) = v18;
      return sub_1D5E04CC4(v16);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = -1;
  return result;
}

uint64_t sub_1D5FB0E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;
    }
  }

  *a5 = 0;
  return result;
}

uint64_t sub_1D5FB0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 6;
LABEL_8:

  *a5 = a4;
  return result;
}

uint64_t sub_1D5FB1118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 7;
LABEL_8:

  *a5 = a4;
  return result;
}

uint64_t sub_1D5FB1254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 3;
LABEL_8:

  *a5 = a4;
  return result;
}

uint64_t sub_1D5FB1390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  a4 = 4;
LABEL_8:

  *a5 = a4;
  return result;
}

uint64_t sub_1D5FB14CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v23 = a2;
    swift_once();
    a2 = v23;
  }

  *&v25[0] = a2;
  *(&v25[0] + 1) = a3;

  a3 = sub_1D6844380(v25);

  v13 = -*(a3 + 16);
  v14 = -1;
  v15 = 32;
  while (v13 + v14 != -1)
  {
    if (++v14 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v16 = v15 + 56;
    v17 = a3 + v15;
    v18 = *v17;
    v19 = *(v17 + 16);
    v20 = *(v17 + 32);
    v26 = *(v17 + 48);
    v25[1] = v19;
    v25[2] = v20;
    v25[0] = v18;
    sub_1D5E3B610(v25, v24);
    v21 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v25);
    v15 = v16;
    if (v21)
    {

      *a7 = a4;
      return a6(a4);
    }
  }

  *a7 = a5;
  return result;
}

uint64_t sub_1D5FB162C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;
    }
  }

  *a5 = 0xF000000000000007;
  return result;
}

uint64_t sub_1D5FB177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_10:
    v20 = a2;
    swift_once();
    a2 = v20;
  }

  *&v22[0] = a2;
  *(&v22[0] + 1) = a3;

  a3 = sub_1D6844380(v22);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_10;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v23 = *(v13 + 48);
    v22[1] = v15;
    v22[2] = v16;
    v22[0] = v14;
    sub_1D5E3B610(v22, v21);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v22);
    v11 = v12;
    if (v17)
    {

      v19 = a4 & 1;
      goto LABEL_8;
    }
  }

  v19 = 2;
LABEL_8:
  *a5 = v19;
  return result;
}

uint64_t sub_1D5FB18C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (qword_1EDF2AB18 != -1)
  {
LABEL_9:
    v19 = a2;
    swift_once();
    a2 = v19;
  }

  *&v21[0] = a2;
  *(&v21[0] + 1) = a3;

  a3 = sub_1D6844380(v21);

  v9 = -*(a3 + 16);
  v10 = -1;
  v11 = 32;
  while (v9 + v10 != -1)
  {
    if (++v10 >= *(a3 + 16))
    {
      __break(1u);
      goto LABEL_9;
    }

    v12 = v11 + 56;
    v13 = a3 + v11;
    v14 = *v13;
    v15 = *(v13 + 16);
    v16 = *(v13 + 32);
    v22 = *(v13 + 48);
    v21[1] = v15;
    v21[2] = v16;
    v21[0] = v14;
    sub_1D5E3B610(v21, v20);
    v17 = sub_1D68444DC(a1);
    sub_1D5E3B66C(v21);
    v11 = v12;
    if (v17)
    {

      *a5 = a4;
    }
  }

  *a5 = 0xF000000000000007;
  return result;
}

uint64_t sub_1D5FB1A58(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v17 = sub_1D5FB1A58(a1, a2, v16);
      if (!v3)
      {
        if (v17)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);

      v12 = sub_1D5FB1A58(a1, a2, v10);
      if (!v3)
      {
        if ((v12 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_26:
        LOBYTE(a2) = sub_1D5FB1A58(a1, a2, v11);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB1A58(a1, a2, v13);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v22) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = sub_1D68669F8();
      if (v7 > 5)
      {
        if (v7 <= 8)
        {
          if (v7 != 6)
          {
            if (v7 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_22;
          }

LABEL_34:
          LOBYTE(a2) = v9 == v8;
          return a2 & 1;
        }

        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v7 <= 2)
        {
          if (v7)
          {
            if (v7 != 1)
            {
LABEL_8:
              LOBYTE(a2) = v9 < v8;
              return a2 & 1;
            }

LABEL_22:
            LOBYTE(a2) = v9 != v8;
            return a2 & 1;
          }

          goto LABEL_34;
        }

        if (v7 != 3)
        {
          if (v7 != 4)
          {
LABEL_30:
            v21 = v8 > v9;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a2) = v8 < v9;
          return a2 & 1;
        }
      }

      v21 = v9 > v8;
LABEL_36:
      LOBYTE(a2) = !v21;
      return a2 & 1;
    }

    v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA74A4(&v22, a2, v14);

    if (v3)
    {
    }

    else
    {

      v19 = FormatColor.color.getter(v18);
      LOBYTE(a2) = sub_1D5FB1A58(v19, a2, v15);
    }
  }

  return a2 & 1;
}

uint64_t sub_1D5FB1DCC(objc_class *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(Class, uint64_t, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v9 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v9)
    {
      v20 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v21 = a4(a1, a2, v20);
      if (!v5)
      {
        if (v21)
        {

          LOBYTE(a4) = 1;
          return a4 & 1;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v13 = *(a3 + 16);
      v14 = *(a3 + 24);

      v15 = a4(a1, a2, v13);
      if (!v5)
      {
        if ((v15 & 1) == 0)
        {

          LOBYTE(a4) = 0;
          return a4 & 1;
        }

LABEL_27:
        LOBYTE(a4) = a4(a1, a2, v14);

        return a4 & 1;
      }
    }

    LOBYTE(a4) = v5;

    return a4 & 1;
  }

  if (v9 == 2)
  {
    v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a4) = a4(a1, a2, v16);

    if (!v5)
    {
      LOBYTE(a4) = a4 ^ 1;
    }
  }

  else
  {
    if (v9 == 3)
    {
      v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v26) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = sub_1D68669F8();
      if (v10 > 5)
      {
        if (v10 <= 8)
        {
          if (v10 != 6)
          {
            if (v10 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_23;
          }

LABEL_34:
          LOBYTE(a4) = v12 == v11;
          return a4 & 1;
        }

        if (v10 != 9)
        {
          if (v10 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v10 <= 2)
        {
          if (v10)
          {
            if (v10 != 1)
            {
LABEL_8:
              LOBYTE(a4) = v12 < v11;
              return a4 & 1;
            }

LABEL_23:
            LOBYTE(a4) = v12 != v11;
            return a4 & 1;
          }

          goto LABEL_34;
        }

        if (v10 != 3)
        {
          if (v10 != 4)
          {
LABEL_30:
            v25 = v11 > v12;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a4) = v11 < v12;
          return a4 & 1;
        }
      }

      v25 = v12 > v11;
LABEL_36:
      LOBYTE(a4) = !v25;
      return a4 & 1;
    }

    v17 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    a5(&v26, a2, v17);

    if (v5)
    {
    }

    else
    {

      v24 = FormatColor.color.getter(v23);
      LOBYTE(a4) = a4(v24, a2, v18);
    }
  }

  return a4 & 1;
}

uint64_t sub_1D5FB2130(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v16 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v17 = sub_1D5FB2130(a1, a2, v16);
      if (!v3)
      {
        if (v17)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);

      v12 = sub_1D5FB2130(a1, a2, v10);
      if (!v3)
      {
        if ((v12 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_26:
        LOBYTE(a2) = sub_1D5FB2130(a1, a2, v11);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB2130(a1, a2, v13);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      v7 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x11);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v22) = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = sub_1D68669F8();
      if (v7 > 5)
      {
        if (v7 <= 8)
        {
          if (v7 != 6)
          {
            if (v7 != 7)
            {
              goto LABEL_8;
            }

            goto LABEL_22;
          }

LABEL_34:
          LOBYTE(a2) = v9 == v8;
          return a2 & 1;
        }

        if (v7 != 9)
        {
          if (v7 != 10)
          {
            goto LABEL_30;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v7 <= 2)
        {
          if (v7)
          {
            if (v7 != 1)
            {
LABEL_8:
              LOBYTE(a2) = v9 < v8;
              return a2 & 1;
            }

LABEL_22:
            LOBYTE(a2) = v9 != v8;
            return a2 & 1;
          }

          goto LABEL_34;
        }

        if (v7 != 3)
        {
          if (v7 != 4)
          {
LABEL_30:
            v21 = v8 > v9;
            goto LABEL_36;
          }

LABEL_33:
          LOBYTE(a2) = v8 < v9;
          return a2 & 1;
        }
      }

      v21 = v9 > v8;
LABEL_36:
      LOBYTE(a2) = !v21;
      return a2 & 1;
    }

    v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA85A4(&v22, a2, v14);

    if (v3)
    {
    }

    else
    {

      v19 = FormatColor.color.getter(v18);
      LOBYTE(a2) = sub_1D5FB2130(v19, a2, v15);
    }
  }

  return a2 & 1;
}

BOOL sub_1D5FB2460(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v14 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v15 = sub_1D5FB2460(v5, a2, v14);
      if (!v3)
      {
        if (v15)
        {

          LOBYTE(v5) = 1;
          return v5 & 1;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);

      v10 = sub_1D5FB2460(v5, a2, v8);
      if (!v3)
      {
        if ((v10 & 1) == 0)
        {

          LOBYTE(v5) = 0;
          return v5 & 1;
        }

LABEL_19:
        LOBYTE(v5) = sub_1D5FB2460(v5, a2, v9);

        return v5 & 1;
      }
    }

    return v5 & 1;
  }

  if (v6 == 2)
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(v5) = sub_1D5FB2460(v5, a2, v11);

    if (!v3)
    {
      LOBYTE(v5) = v5 ^ 1;
    }
  }

  else
  {
    if (v6 == 3)
    {
      return sub_1D5FB3CB0(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, a2, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
    }

    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA8D3C(a2, v12);

    if (v3)
    {
    }

    else
    {

      v17 = FormatColor.color.getter(v16);
      LOBYTE(v5) = sub_1D5FB2460(v17, a2, v13);
    }
  }

  return v5 & 1;
}

uint64_t sub_1D5FB26CC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v14 = sub_1D5FB26CC(a1, a2, v13);
      if (!v3)
      {
        if (v14)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);

      v9 = sub_1D5FB26CC(a1, a2, v7);
      if (!v3)
      {
        if ((v9 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_18:
        LOBYTE(a2) = sub_1D5FB26CC(a1, a2, v8);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB26CC(a1, a2, v10);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else if (v6 == 3)
  {
    LOBYTE(a2) = sub_1D5FB3E84(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA94D4(&v18, a2, v11);

    if (v3)
    {
    }

    else
    {

      v16 = FormatColor.color.getter(v15);
      LOBYTE(a2) = sub_1D5FB26CC(v16, a2, v12);
    }
  }

  return a2 & 1;
}

uint64_t sub_1D5FB2954(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 61;
  if ((a3 >> 61) <= 1)
  {
    if (v6)
    {
      v13 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

      v14 = sub_1D5FB2954(a1, a2, v13);
      if (!v3)
      {
        if (v14)
        {

          LOBYTE(a2) = 1;
          return a2 & 1;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v7 = *(a3 + 16);
      v8 = *(a3 + 24);

      v9 = sub_1D5FB2954(a1, a2, v7);
      if (!v3)
      {
        if ((v9 & 1) == 0)
        {

          LOBYTE(a2) = 0;
          return a2 & 1;
        }

LABEL_18:
        LOBYTE(a2) = sub_1D5FB2954(a1, a2, v8);

        return a2 & 1;
      }
    }

    LOBYTE(a2) = v3;

    return a2 & 1;
  }

  if (v6 == 2)
  {
    v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    LOBYTE(a2) = sub_1D5FB2954(a1, a2, v10);

    if (!v3)
    {
      LOBYTE(a2) = a2 ^ 1;
    }
  }

  else if (v6 == 3)
  {
    LOBYTE(a2) = sub_1D5FB3E84(*((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), a1, *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
  }

  else
  {
    v11 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    swift_retain_n();
    sub_1D5FA9D9C(&v18, a2, v11);

    if (v3)
    {
    }

    else
    {

      v16 = FormatColor.color.getter(v15);
      LOBYTE(a2) = sub_1D5FB2954(v16, a2, v12);
    }
  }

  return a2 & 1;
}

uint64_t sub_1D5FB2C1C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB2C1C(&v28, a1, v20);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB2C1C(&v27, a1, v21);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return result;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB2C1C(&v28, a1, v10);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB2C1C(&v27, a1, v11);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return result;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB2C1C(&v28, a1, v15);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = v8;
      *a3 = result | 0x6000000000000000;
      return result;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA74A4(&v28, a1, v17);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB2C1C(&v27, a1, v18);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return result;
    }
  }

  return swift_deallocUninitializedObject();
}

uint64_t sub_1D5FB2F78@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v9)
    {
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();

      a3(&v32, a1, v24);
      if (!v5)
      {
        v28 = v32;
        a3(&v31, a1, v25);
        v30 = v31;
        *(v26 + 16) = v28;
        *(v26 + 24) = v30;

        *a5 = v26 | 0x2000000000000000;
        return result;
      }
    }

    else
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = swift_allocObject();

      a3(&v32, a1, v13);
      if (!v5)
      {
        v16 = v32;
        a3(&v31, a1, v14);
        v17 = v31;
        *(v15 + 16) = v16;
        *(v15 + 24) = v17;

        *a5 = v15;
        return result;
      }
    }
  }

  else
  {
    if (v9 == 2)
    {
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = swift_allocObject();

      a3(&v32, a1, v18);

      if (!v5)
      {
        *(v19 + 16) = v32;
        *a5 = v19 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    if (v9 == 3)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = v11;
      *a5 = result | 0x6000000000000000;
      return result;
    }

    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = swift_allocObject();

    a4(&v32, a1, v20);
    if (!v5)
    {
      v27 = v32;
      a3(&v31, a1, v21);
      v29 = v31;
      *(v23 + 16) = v27;
      *(v23 + 24) = v29;

      *a5 = v23 | 0x8000000000000000;
      return result;
    }
  }

  return swift_deallocUninitializedObject();
}

uint64_t sub_1D5FB3338@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X3>, void *a5@<X8>)
{
  v9 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v9)
    {
      v24 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();

      a3(&v32, a1, v24);
      if (!v5)
      {
        v28 = v32;
        a3(&v31, a1, v25);
        v30 = v31;
        *(v26 + 16) = v28;
        *(v26 + 24) = v30;

        *a5 = v26 | 0x2000000000000000;
        return result;
      }
    }

    else
    {
      v13 = *(a2 + 16);
      v14 = *(a2 + 24);
      v15 = swift_allocObject();

      a3(&v32, a1, v13);
      if (!v5)
      {
        v16 = v32;
        a3(&v31, a1, v14);
        v17 = v31;
        *(v15 + 16) = v16;
        *(v15 + 24) = v17;

        *a5 = v15;
        return result;
      }
    }
  }

  else
  {
    if (v9 == 2)
    {
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = swift_allocObject();

      a3(&v32, a1, v18);

      if (!v5)
      {
        *(v19 + 16) = v32;
        *a5 = v19 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    if (v9 == 3)
    {
      v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      result = swift_allocObject();
      *(result + 16) = v10;
      *(result + 24) = v11;
      *a5 = result | 0x6000000000000000;
      return result;
    }

    v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = swift_allocObject();

    a4(&v32, a1, v20);
    if (!v5)
    {
      v27 = v32;
      a3(&v31, a1, v21);
      v29 = v31;
      *(v23 + 16) = v27;
      *(v23 + 24) = v29;

      *a5 = v23 | 0x8000000000000000;
      return result;
    }
  }

  return swift_deallocUninitializedObject();
}

uint64_t sub_1D5FB3678@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB3678(&v28, a1, v20);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB3678(&v27, a1, v21);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return result;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB3678(&v28, a1, v10);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB3678(&v27, a1, v11);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return result;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB3678(&v28, a1, v15);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = v8;
      *a3 = result | 0x6000000000000000;
      return result;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA94D4(&v28, a1, v17);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB3678(&v27, a1, v18);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return result;
    }
  }

  return swift_deallocUninitializedObject();
}

uint64_t sub_1D5FB3994@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v6)
    {
      v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v22 = swift_allocObject();

      sub_1D5FB3994(&v28, a1, v20);
      if (!v3)
      {
        v24 = v28;
        sub_1D5FB3994(&v27, a1, v21);
        v26 = v27;
        *(v22 + 16) = v24;
        *(v22 + 24) = v26;

        *a3 = v22 | 0x2000000000000000;
        return result;
      }
    }

    else
    {
      v10 = *(a2 + 16);
      v11 = *(a2 + 24);
      v12 = swift_allocObject();

      sub_1D5FB3994(&v28, a1, v10);
      if (!v3)
      {
        v13 = v28;
        sub_1D5FB3994(&v27, a1, v11);
        v14 = v27;
        *(v12 + 16) = v13;
        *(v12 + 24) = v14;

        *a3 = v12;
        return result;
      }
    }
  }

  else
  {
    if (v6 == 2)
    {
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = swift_allocObject();

      sub_1D5FB3994(&v28, a1, v15);

      if (!v3)
      {
        *(v16 + 16) = v28;
        *a3 = v16 | 0x4000000000000000;
        return result;
      }

      return swift_deallocUninitializedObject();
    }

    if (v6 == 3)
    {
      v7 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      result = swift_allocObject();
      *(result + 16) = v7;
      *(result + 24) = v8;
      *a3 = result | 0x6000000000000000;
      return result;
    }

    v17 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v19 = swift_allocObject();

    sub_1D5FA9D9C(&v28, a1, v17);
    if (!v3)
    {
      v23 = v28;
      sub_1D5FB3994(&v27, a1, v18);
      v25 = v27;
      *(v19 + 16) = v23;
      *(v19 + 24) = v25;

      *a3 = v19 | 0x8000000000000000;
      return result;
    }
  }

  return swift_deallocUninitializedObject();
}

BOOL sub_1D5FB3CB0(double a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = HIBYTE(a4);
  if (a4 <= 2u)
  {
    if (!a4)
    {
      sub_1D72635BC();
      v6 = v8;
      goto LABEL_15;
    }

    if (a4 == 1)
    {
      sub_1D72635BC();
      v6 = v9;
      goto LABEL_15;
    }

    sub_1D72635BC();
  }

  else
  {
    if (a4 <= 4u)
    {
      if (a4 == 3)
      {
        sub_1D72635BC();
        v6 = v11;
      }

      else
      {
        sub_1D72635CC();
        v6 = v8;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      sub_1D72635CC();
      v6 = v9;
      goto LABEL_15;
    }

    sub_1D72635CC();
  }

  v6 = v10;
LABEL_15:
  if (v12)
  {
    v6 = 0.0;
  }

  if (v5 > 5u)
  {
    if (v5 <= 8u)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          return v6 < a1;
        }

        return v6 != a1;
      }

      return v6 == a1;
    }

    if (v5 != 9)
    {
      if (v5 != 10)
      {
        return v6 >= a1;
      }

      return v6 > a1;
    }
  }

  else
  {
    if (v5 <= 2u)
    {
      if (v5)
      {
        if (v5 != 1)
        {
          return v6 < a1;
        }

        return v6 != a1;
      }

      return v6 == a1;
    }

    if (v5 != 3)
    {
      if (v5 != 4)
      {
        return v6 >= a1;
      }

      return v6 > a1;
    }
  }

  return v6 <= a1;
}

BOOL sub_1D5FB3E84(double a1, uint64_t a2, __int16 a3)
{
  v4 = HIBYTE(a3);
  if (a3 <= 2u)
  {
    if (!a3)
    {
      sub_1D72635BC();
      v5 = v7;
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      sub_1D72635BC();
      v5 = v8;
      goto LABEL_15;
    }

    sub_1D72635BC();
  }

  else
  {
    if (a3 <= 4u)
    {
      if (a3 == 3)
      {
        sub_1D72635BC();
        v5 = v10;
      }

      else
      {
        sub_1D72635CC();
        v5 = v7;
      }

      goto LABEL_15;
    }

    if (a3 == 5)
    {
      sub_1D72635CC();
      v5 = v8;
      goto LABEL_15;
    }

    sub_1D72635CC();
  }

  v5 = v9;
LABEL_15:
  if (v11)
  {
    v5 = 0.0;
  }

  if (v4 > 5u)
  {
    if (v4 <= 8u)
    {
      if (v4 != 6)
      {
        if (v4 != 7)
        {
          return v5 < a1;
        }

        return v5 != a1;
      }

      return v5 == a1;
    }

    if (v4 != 9)
    {
      if (v4 != 10)
      {
        return v5 >= a1;
      }

      return v5 > a1;
    }
  }

  else
  {
    if (v4 <= 2u)
    {
      if (v4)
      {
        if (v4 != 1)
        {
          return v5 < a1;
        }

        return v5 != a1;
      }

      return v5 == a1;
    }

    if (v4 != 3)
    {
      if (v4 != 4)
      {
        return v5 >= a1;
      }

      return v5 > a1;
    }
  }

  return v5 <= a1;
}

id sub_1D5FB4058(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(void **__return_ptr, void **, unint64_t *))
{
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a6();
  if (v12)
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    v16[2] = a5;
    v14 = sub_1D632A694(v11, a7, v16, a4);

    return v14;
  }

  return v11;
}

uint64_t sub_1D5FB4138()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D5FB41E4(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v11 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a3 >> 7) & 0xFE | (a3 >> 5) & 1;
  if (v15 <= 2)
  {
    if (v15)
    {
      if (v15 == 1)
      {
        sub_1D6752174(*(a1 + *a4 + 8), v14);
        if (!v5)
        {
          LOBYTE(v37) = a2;
          sub_1D613C6BC(v14, a5);
          sub_1D5C0AD20(v14, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D6750B04(*(a1 + *a4 + 8), &v37);
        if (!v5)
        {
          v18 = v37;
          LOBYTE(v37) = a2;
          sub_1D5FCCDD4(v18, a5);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D6751EC0(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        v35 = v43;
        v36[0] = v44[0];
        *(v36 + 9) = *(v44 + 9);
        v31 = v39;
        v32 = v40;
        v33 = v41;
        v34 = v42;
        v29 = v37;
        v30 = v38;
        v27 = v43;
        v28[0] = v44[0];
        *(v28 + 9) = *(v44 + 9);
        v23 = v39;
        v24 = v40;
        v25 = v41;
        v26 = v42;
        LOBYTE(v45) = a2;
        v21 = v37;
        v22 = v38;
        sub_1D6327A70(&v21, a5);
        sub_1D5ECF320(&v29);
      }
    }
  }

  else if (v15 > 4)
  {
    if (v15 == 5)
    {
      sub_1D67505CC(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        v16 = v37;
        v17 = [objc_msgSend(v37 backingTag)];
        swift_unknownObjectRelease();
        if (v17)
        {
          LOBYTE(v37) = a2;
          sub_1D5FCCDD4(v17, a5);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D6750380(*(a1 + *a4 + 8), &v37);
      if (!v5)
      {
        *&v29 = a2;
        BYTE8(v29) = a3;
        sub_1D6ACAC18(&v37, a5);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v15 == 3)
  {
    sub_1D6751370(*(a1 + *a4 + 8), &v37);
    if (!v5)
    {
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      v45 = a2;
      v46 = a3 & 0xDF;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      v24 = v40;
      sub_1D6AFCE08(&v21, a5);
      sub_1D5F2DE58(&v29);
    }
  }

  else
  {
    sub_1D67505CC(*(a1 + *a4 + 8), &v37);
    if (!v5)
    {
      v19 = v37;
      LOBYTE(v37) = a2;
      v20 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v20, a5);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D5FB4614(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 >> 7) & 0xFE | (a2 >> 5) & 1;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        sub_1D5FB500C(sub_1D6752174);
        if (!v3)
        {
          LOBYTE(v33) = a1;
          sub_1D613C6BC(v10, a3);
          sub_1D5C0AD20(v10, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D5FB6008(&v33);
        if (!v3)
        {
          v14 = v33;
          LOBYTE(v33) = a1;
          sub_1D5FCCDD4(v14, a3);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D5FB5E58(sub_1D6751EC0);
      if (!v3)
      {
        v31 = v39;
        v32[0] = v40[0];
        *(v32 + 9) = *(v40 + 9);
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v25 = v33;
        v26 = v34;
        v23 = v39;
        v24[0] = v40[0];
        *(v24 + 9) = *(v40 + 9);
        v19 = v35;
        v20 = v36;
        v21 = v37;
        v22 = v38;
        LOBYTE(v41) = a1;
        v17 = v33;
        v18 = v34;
        sub_1D6327A70(&v17, a3);
        sub_1D5ECF320(&v25);
      }
    }
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      sub_1D5FB5A80(&v33);
      if (!v3)
      {
        v12 = v33;
        v13 = [objc_msgSend(v33 backingTag)];
        swift_unknownObjectRelease();
        if (v13)
        {
          LOBYTE(v33) = a1;
          sub_1D5FCCDD4(v13, a3);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D5FB58A4(sub_1D6750380);
      if (!v3)
      {
        *&v25 = a1;
        BYTE8(v25) = a2;
        sub_1D6ACAC18(&v33, a3);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v11 == 3)
  {
    sub_1D5FB54EC(sub_1D6751370);
    if (!v3)
    {
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v41 = a1;
      v42 = a2 & 0xDF;
      v17 = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      sub_1D6AFCE08(&v17, a3);
      sub_1D5F2DE58(&v25);
    }
  }

  else
  {
    sub_1D5FB5A80(&v33);
    if (!v3)
    {
      v15 = v33;
      LOBYTE(v33) = a1;
      v16 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v16, a3);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1D5FB4A34(uint64_t a1@<X1>, unsigned int a2@<W2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a2 >> 7) & 0xFE | (a2 >> 5) & 1;
  if (v11 <= 2)
  {
    if (v11)
    {
      if (v11 == 1)
      {
        sub_1D5F55D7C(v10);
        if (!v3)
        {
          LOBYTE(v33) = a1;
          sub_1D613C6BC(v10, a3);
          sub_1D5C0AD20(v10, type metadata accessor for FeedHeadline);
        }
      }

      else
      {
        sub_1D5F55B34(&v33);
        if (!v3)
        {
          v14 = v33;
          LOBYTE(v33) = a1;
          sub_1D5FCCDD4(v14, a3);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      sub_1D5F55870(&v33);
      if (!v3)
      {
        v31 = v39;
        v32[0] = v40[0];
        *(v32 + 9) = *(v40 + 9);
        v27 = v35;
        v28 = v36;
        v29 = v37;
        v30 = v38;
        v25 = v33;
        v26 = v34;
        v23 = v39;
        v24[0] = v40[0];
        *(v24 + 9) = *(v40 + 9);
        v19 = v35;
        v20 = v36;
        v21 = v37;
        v22 = v38;
        LOBYTE(v41) = a1;
        v17 = v33;
        v18 = v34;
        sub_1D6327A70(&v17, a3);
        sub_1D5ECF320(&v25);
      }
    }
  }

  else if (v11 > 4)
  {
    if (v11 == 5)
    {
      sub_1D5F54F8C(&v33);
      if (!v3)
      {
        v12 = v33;
        v13 = [objc_msgSend(v33 backingTag)];
        swift_unknownObjectRelease();
        if (v13)
        {
          LOBYTE(v33) = a1;
          sub_1D5FCCDD4(v13, a3);
          swift_unknownObjectRelease();
        }

        else
        {
          type metadata accessor for FormatLayoutError();
          sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }
    }

    else
    {
      sub_1D5F549CC(&v33);
      if (!v3)
      {
        *&v25 = a1;
        BYTE8(v25) = a2;
        sub_1D6ACAC18(&v33, a3);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (v11 == 3)
  {
    sub_1D5F544DC(&v33);
    if (!v3)
    {
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      v41 = a1;
      v42 = a2 & 0xDF;
      v17 = v33;
      v18 = v34;
      v19 = v35;
      v20 = v36;
      sub_1D6AFCE08(&v17, a3);
      sub_1D5F2DE58(&v25);
    }
  }

  else
  {
    sub_1D5F54F8C(&v33);
    if (!v3)
    {
      v15 = v33;
      LOBYTE(v33) = a1;
      v16 = FCFeedDescriptor.feedTag.getter();
      sub_1D5FCCDD4(v16, a3);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D5FB4E04()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD000000000000048;
  v0[1] = 0x80000001D73C36B0;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5FB4EB0()
{
  type metadata accessor for FormatLayoutError();
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5FB500C(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB526C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v11 = *(v10 + 48);
    sub_1D6B7C06C(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D6B7C06C(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), a1);
  }
}

uint64_t sub_1D5FB54EC(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB56C8(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB58A4(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB5A80@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v11 = *(v10 + 48);
    sub_1D67505CC(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D67505CC(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), a1);
  }
}

uint64_t sub_1D5FB5C50(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB5E58(void (*a1)(void, void))
{
  v3 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v1, v6, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v10 = *(v9 + 48);
    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8));

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v11 - 8) + 8))(&v6[v10], v11);
  }

  else
  {

    a1(*(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), *(v8 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8));
  }
}

uint64_t sub_1D5FB6008@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOptionsNodeStatementContext();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D286BC(v2, v7, type metadata accessor for FormatOptionsNodeStatementContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v7;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920();
    v11 = *(v10 + 48);
    sub_1D6750B04(*(v9 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack + 8), a1);

    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    return (*(*(v12 - 8) + 8))(&v7[v11], v12);
  }

  else
  {

    sub_1D6750B04(*(v9 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack + 8), a1);
  }
}

void sub_1D5FB61D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v54 = a2;
  v50 = a4;
  v53 = a3;
  v82 = a1;
  v52 = a6;
  v7 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for FormatOption();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a5;
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      v36 = v55;
      v37 = v53;
      if (v27 == 6)
      {
        sub_1D6B7BBAC(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v56);
        if (!v36)
        {
          v72 = v56;
          v73 = v57;
          v74 = v58;
          v75 = v59;
          v80 = v54;
          v81 = v37;
          v64 = v56;
          v65 = v57;
          v66 = v58;
          v67 = v59;
          sub_1D6AFCE08(&v64, v52);
          sub_1D5F2DE58(&v72);
        }
      }

      else
      {
        sub_1D6B7B210(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v10);
        if (!v36)
        {
          LOBYTE(v56) = v54;
          sub_1D5E46CD8(v10, v52);
          v30 = type metadata accessor for FeedRecipe;
          v31 = v10;
LABEL_25:
          sub_1D5C0AD20(v31, v30);
        }
      }
    }

    else
    {
      v32 = v55;
      v33 = v53;
      if (v27 == 4)
      {
        sub_1D5FB41E4(v82, v54, v53, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, v52);
      }

      else
      {
        sub_1D6B7B65C(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v56);
        if (!v32)
        {
          *&v72 = v54;
          BYTE8(v72) = v33;
          sub_1D6ACAC18(&v56, v52);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else if (a5 > 1u)
  {
    v34 = v54;
    if (a5 == 2)
    {
      v35 = v55;
      sub_1D6B7C1C8(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v56);
      if (!v35)
      {
        v77 = v61;
        v78 = v62;
        v79[0] = v63[0];
        *(v79 + 9) = *(v63 + 9);
        v74 = v58;
        v75 = v59;
        v76 = v60;
        v72 = v56;
        v73 = v57;
        v70 = v62;
        v71[0] = v63[0];
        *(v71 + 9) = *(v63 + 9);
        v66 = v58;
        v67 = v59;
        v68 = v60;
        v69 = v61;
        LOBYTE(v80) = v34;
        v64 = v56;
        v65 = v57;
        sub_1D6327A70(&v64, v52);
        sub_1D5ECF320(&v72);
      }
    }

    else
    {
      v39 = v53;

      FormatOptionCollection.subscript.getter(v34, v39, v17);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_1D5B87964(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v40 = v51;
        *v51 = v34;
        *(v40 + 8) = v39;
        swift_storeEnumTagMultiPayload();
        v41 = *(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
        sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v43 = swift_allocError();
        if (v41)
        {
          sub_1D5FBA968(v40, v42, type metadata accessor for FormatLayoutError);
          v44 = swift_allocObject();
          *(v44 + 16) = 2;
          *(v44 + 24) = 0x3FF0000000000000;
          *(v44 + 32) = 0;

          *v52 = v44 | 0x1000000000000000;
        }

        else
        {
          sub_1D5D286BC(v40, v42, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5C0AD20(v40, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {
        v45 = v34;

        sub_1D5FBA968(v17, v22, type metadata accessor for FormatOption);
        v46 = *(v22 + 2);

        v47 = v82;
        v48 = v55;
        sub_1D6B744A8(&v56, v82, v46);
        if (!v48)
        {

          sub_1D6B7DC08(v56, v45, v39, v50, v47, v52);
        }

        sub_1D5C0AD20(v22, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v28 = v54;
    if (!v27)
    {
      v29 = v55;
      sub_1D6B7C374(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), v26);
      if (v29)
      {
        return;
      }

      LOBYTE(v56) = v28;
      sub_1D613C6BC(v26, v52);
      v30 = type metadata accessor for FeedHeadline;
      v31 = v26;
      goto LABEL_25;
    }

    v38 = v55;
    sub_1D6B7C06C(*(v82 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack), &v56);
    if (!v38)
    {
      LOBYTE(v72) = v28;
      sub_1D5FCCDD4(v57, v52);
      sub_1D5EE5B54(&v56);
    }
  }
}

void sub_1D5FB6948(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v36 = a4;
  v50 = a3;
  v39 = a2;
  v37 = a6;
  v8 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v34 - v14;
  v16 = type metadata accessor for FormatOption();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4138();
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v30 = 0xD00000000000006ELL;
    v30[1] = 0x80000001D73C3790;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v34[1] = v8;
  v21 = *(a1 + 80);
  v45 = *(a1 + 64);
  v46 = v21;
  v47 = *(a1 + 96);
  v22 = *(a1 + 16);
  v41 = *a1;
  v42 = v22;
  v23 = *(a1 + 48);
  v43 = *(a1 + 32);
  v44 = v23;
  v35 = off_1F51B1B98[0];
  v24 = v50;

  (v35)(v39, v24, &type metadata for FormatPrefetchContext, &off_1F51B1B80);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v25 = *(a1 + 8);
    sub_1D5B87964(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v26 = v50;
    *v11 = v39;
    v11[1] = v26;
    swift_storeEnumTagMultiPayload();
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v28 = swift_allocError();
    if (v25)
    {
      sub_1D5FBA968(v11, v27, type metadata accessor for FormatLayoutError);
      v29 = swift_allocObject();
      *(v29 + 16) = 2;
      *(v29 + 24) = 0x3FF0000000000000;
      *(v29 + 32) = 0;

      *v37 = v29 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v11, v27, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v11, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    v31 = v50;

    sub_1D5FBA968(v15, v20, type metadata accessor for FormatOption);
    v32 = *(v20 + 2);
    v49[4] = v45;
    v49[5] = v46;
    v49[6] = v47;
    v49[0] = v41;
    v49[1] = v42;
    v49[2] = v43;
    v49[3] = v44;

    v33 = v38;
    sub_1D6B74D28(&v40, v49, v32);
    if (!v33)
    {

      v48[3] = v44;
      v48[4] = v45;
      v48[5] = v46;
      v48[6] = v47;
      v48[0] = v41;
      v48[1] = v42;
      v48[2] = v43;
      sub_1D6B7E640(v40, v39, v31, v36, v48, v37);
    }

    sub_1D5C0AD20(v20, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB6E58(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v54 = a2;
  v50 = a4;
  v53 = a3;
  v82 = a1;
  v52 = a6;
  v7 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v11, v12);
  v51 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for FormatOption();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a5;
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      v36 = v55;
      v37 = v53;
      if (v27 == 6)
      {
        sub_1D6B7BBAC(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v56);
        if (!v36)
        {
          v72 = v56;
          v73 = v57;
          v74 = v58;
          v75 = v59;
          v80 = v54;
          v81 = v37;
          v64 = v56;
          v65 = v57;
          v66 = v58;
          v67 = v59;
          sub_1D6AFCE08(&v64, v52);
          sub_1D5F2DE58(&v72);
        }
      }

      else
      {
        sub_1D6B7B210(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v10);
        if (!v36)
        {
          LOBYTE(v56) = v54;
          sub_1D5E46CD8(v10, v52);
          v30 = type metadata accessor for FeedRecipe;
          v31 = v10;
LABEL_25:
          sub_1D5C0AD20(v31, v30);
        }
      }
    }

    else
    {
      v32 = v55;
      v33 = v53;
      if (v27 == 4)
      {
        sub_1D5FB41E4(v82, v54, v53, &OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack, v52);
      }

      else
      {
        sub_1D6B7B65C(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v56);
        if (!v32)
        {
          *&v72 = v54;
          BYTE8(v72) = v33;
          sub_1D6ACAC18(&v56, v52);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  else if (a5 > 1u)
  {
    v34 = v54;
    if (a5 == 2)
    {
      v35 = v55;
      sub_1D6B7C1C8(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v56);
      if (!v35)
      {
        v77 = v61;
        v78 = v62;
        v79[0] = v63[0];
        *(v79 + 9) = *(v63 + 9);
        v74 = v58;
        v75 = v59;
        v76 = v60;
        v72 = v56;
        v73 = v57;
        v70 = v62;
        v71[0] = v63[0];
        *(v71 + 9) = *(v63 + 9);
        v66 = v58;
        v67 = v59;
        v68 = v60;
        v69 = v61;
        LOBYTE(v80) = v34;
        v64 = v56;
        v65 = v57;
        sub_1D6327A70(&v64, v52);
        sub_1D5ECF320(&v72);
      }
    }

    else
    {
      v39 = v53;

      FormatOptionCollection.subscript.getter(v34, v39, v17);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_1D5B87964(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v40 = v51;
        *v51 = v34;
        *(v40 + 8) = v39;
        swift_storeEnumTagMultiPayload();
        v41 = *(v82 + 48);
        sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
        v43 = swift_allocError();
        if (v41)
        {
          sub_1D5FBA968(v40, v42, type metadata accessor for FormatLayoutError);
          v44 = swift_allocObject();
          *(v44 + 16) = 2;
          *(v44 + 24) = 0x3FF0000000000000;
          *(v44 + 32) = 0;

          *v52 = v44 | 0x1000000000000000;
        }

        else
        {
          sub_1D5D286BC(v40, v42, type metadata accessor for FormatLayoutError);
          swift_willThrow();
          sub_1D5C0AD20(v40, type metadata accessor for FormatLayoutError);
        }
      }

      else
      {
        v45 = v34;

        sub_1D5FBA968(v17, v22, type metadata accessor for FormatOption);
        v46 = *(v22 + 2);

        v47 = v82;
        v48 = v55;
        sub_1D6B755A8(&v56, v82, v46);
        if (!v48)
        {

          sub_1D6B7F7A4(v56, v45, v39, v50, v47, v52);
        }

        sub_1D5C0AD20(v22, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    v28 = v54;
    if (!v27)
    {
      v29 = v55;
      sub_1D6B7C374(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), v26);
      if (v29)
      {
        return;
      }

      LOBYTE(v56) = v28;
      sub_1D613C6BC(v26, v52);
      v30 = type metadata accessor for FeedHeadline;
      v31 = v26;
      goto LABEL_25;
    }

    v38 = v55;
    sub_1D6B7C06C(*(v82 + OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_bindingStack), &v56);
    if (!v38)
    {
      LOBYTE(v72) = v28;
      sub_1D5FCCDD4(v57, v52);
      sub_1D5EE5B54(&v56);
    }
  }
}

void sub_1D5FB75BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v49 = a6;
  v12 = type metadata accessor for FeedRecipe();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 > 5u)
    {
      if (a5 != 6)
      {
        sub_1D5FB500C(sub_1D6B7B210);
        if (v6)
        {
          return;
        }

        LOBYTE(v23) = a2;
        sub_1D5E46CD8(v15, v49);
        v20 = type metadata accessor for FeedRecipe;
        v21 = v15;
        goto LABEL_22;
      }

      sub_1D5FB54EC(sub_1D6B7BBAC);
      if (!v6)
      {
        v39 = v23;
        v40 = v24;
        v41 = v25;
        v42 = v26;
        v47 = a2;
        v48 = a3;
        v31 = v23;
        v32 = v24;
        v33 = v25;
        v34 = v26;
        sub_1D6AFCE08(&v31, v49);
        sub_1D5F2DE58(&v39);
      }
    }

    else if (a5 == 4)
    {
      sub_1D5FB4614(a2, a3, v49);
    }

    else
    {
      sub_1D5FB58A4(sub_1D6B7B65C);
      if (!v6)
      {
        *&v39 = a2;
        BYTE8(v39) = a3;
        sub_1D6ACAC18(&v23, v49);
        swift_unknownObjectRelease();
      }
    }
  }

  else if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5FB5E58(sub_1D6B7C1C8);
      if (!v6)
      {
        v44 = v28;
        v45 = v29;
        v46[0] = v30[0];
        *(v46 + 9) = *(v30 + 9);
        v41 = v25;
        v42 = v26;
        v43 = v27;
        v39 = v23;
        v40 = v24;
        v37 = v29;
        v38[0] = v30[0];
        *(v38 + 9) = *(v30 + 9);
        v33 = v25;
        v34 = v26;
        v35 = v27;
        v36 = v28;
        LOBYTE(v47) = a2;
        v31 = v23;
        v32 = v24;
        sub_1D6327A70(&v31, v49);
        sub_1D5ECF320(&v39);
      }
    }

    else
    {
      sub_1D6F70570(a1, a2, a3, a4, v49);
    }
  }

  else
  {
    if (!a5)
    {
      sub_1D5FB500C(sub_1D6B7C374);
      if (v6)
      {
        return;
      }

      LOBYTE(v23) = a2;
      sub_1D613C6BC(v19, v49);
      v20 = type metadata accessor for FeedHeadline;
      v21 = v19;
LABEL_22:
      sub_1D5C0AD20(v21, v20);
      return;
    }

    sub_1D5FB526C(&v23);
    if (!v6)
    {
      LOBYTE(v39) = a2;
      sub_1D5FCCDD4(v24, v49);
      sub_1D5EE5B54(&v23);
    }
  }
}

void sub_1D5FB79AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v31 = a4;
  v32 = a6;
  v33 = a2;
  v34 = a1;
  v9 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4A34(v33, a3, v32);
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v26 = 0xD000000000000066;
    v26[1] = 0x80000001D73C3700;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v30 = v6;
  v29 = off_1F513B088[0];
  type metadata accessor for FormatDecorationContext();

  v29(v33, a3, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5B87964(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v12 = v33;
    v12[1] = a3;
    swift_storeEnumTagMultiPayload();
    v22 = *(v34 + 8);
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v24 = swift_allocError();
    if (v22)
    {
      sub_1D5FBA968(v12, v23, type metadata accessor for FormatLayoutError);
      v25 = swift_allocObject();
      *(v25 + 16) = 2;
      *(v25 + 24) = 0x3FF0000000000000;
      *(v25 + 32) = 0;

      *v32 = v25 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v12, v23, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5FBA968(v16, v21, type metadata accessor for FormatOption);

    v27 = v34;
    v28 = v30;
    sub_1D6B766A8(v34, &v35);
    if (!v28)
    {

      sub_1D6B8310C(v35, v33, a3, v31, v27, v32);
    }

    sub_1D5C0AD20(v21, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB7E54(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v32 = a2;
  v29 = a4;
  v30 = a6;
  v9 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B7B320(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for FormatOption();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 3u)
  {
    if (a5 == 4)
    {
      sub_1D5FB4E04();
      return;
    }

    goto LABEL_8;
  }

  if (a5 <= 2u)
  {
LABEL_8:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v26 = 0xD000000000000048;
    v26[1] = 0x80000001D73C36B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  FormatOptionCollection.subscript.getter(v32, a3, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5B87964(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
    *v12 = v32;
    v12[1] = a3;
    swift_storeEnumTagMultiPayload();
    v22 = *a1;
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    v24 = swift_allocError();
    if (v22)
    {
      sub_1D5FBA968(v12, v23, type metadata accessor for FormatLayoutError);
      v25 = swift_allocObject();
      *(v25 + 16) = 2;
      *(v25 + 24) = 0x3FF0000000000000;
      *(v25 + 32) = 0;

      *v30 = v25 | 0x1000000000000000;
    }

    else
    {
      sub_1D5D286BC(v12, v23, type metadata accessor for FormatLayoutError);
      swift_willThrow();
      sub_1D5C0AD20(v12, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {

    sub_1D5FBA968(v16, v21, type metadata accessor for FormatOption);
    v27 = *(v21 + 2);

    v28 = v31;
    sub_1D6B76F28(&v33, a1, v27);
    if (!v28)
    {

      sub_1D6B84254(v33, v32, a3, v29, a1, v30);
    }

    sub_1D5C0AD20(v21, type metadata accessor for FormatOption);
  }
}

void sub_1D5FB82C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W4>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4 > 3u)
  {
    if (a4 == 4)
    {
      sub_1D5FB4EB0();
      return;
    }

    goto LABEL_7;
  }

  if (a4 <= 2u)
  {
LABEL_7:
    sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
    swift_allocError();
    *v18 = 0xD00000000000005DLL;
    v18[1] = 0x80000001D73C3880;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  *v13 = a2;
  v13[1] = a3;
  swift_storeEnumTagMultiPayload();
  v14 = *(a1 + 64);
  sub_1D5FBA0C0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError);
  v16 = swift_allocError();
  if (v14)
  {
    sub_1D5FBA968(v13, v15, type metadata accessor for FormatLayoutError);
    v17 = swift_allocObject();
    *(v17 + 16) = 2;
    *(v17 + 24) = 0x3FF0000000000000;
    *(v17 + 32) = 0;

    *a5 = v17 | 0x1000000000000000;
  }

  else
  {
    sub_1D5D286BC(v13, v15, type metadata accessor for FormatLayoutError);
    swift_willThrow();

    sub_1D5C0AD20(v13, type metadata accessor for FormatLayoutError);
  }
}

void *sub_1D5FB855C(uint64_t a1, uint64_t a2)
{

  return sub_1D5FB863C(a1, a2, sub_1D5FB88DC, sub_1D5FB88DC);
}

void *sub_1D5FB85CC(uint64_t a1, uint64_t a2)
{

  return sub_1D5FB863C(a1, a2, sub_1D5FB8CB8, sub_1D5FB8CB8);
}

void *sub_1D5FB863C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v13);
    bzero(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_1D5FB8844(v16, v10, a2, a1, a4);

    MEMORY[0x1DA6FD500](v16, -1, -1);
  }

  return v14;
}

void *sub_1D5FB8844(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

uint64_t sub_1D5FB88DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v26 = sub_1D7264A5C();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_1D6EC09F8(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_1D7264A0C();

      sub_1D72621EC();
      v39 = sub_1D7264A5C();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_1D72646CC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5FB8CB8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      result = MEMORY[0x1DA6FC080](*(a4 + 40), v32, 4);
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1D6EC0C28(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v6 << 6)));
      result = MEMORY[0x1DA6FC080](*(a3 + 40), v15, 4);
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_1D5FB8FA0(uint64_t a1, id a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = a5[5];
  v22[4] = a5[4];
  v22[5] = v8;
  v22[6] = a5[6];
  v9 = a5[1];
  v22[0] = *a5;
  v10 = a5[2];
  v22[3] = a5[3];
  v22[1] = v9;
  v22[2] = v10;
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a5[4];
  v13 = a5[5];
  v14 = a5[2];
  v23[3] = a5[3];
  v23[4] = v12;
  v15 = a5[6];
  v23[5] = v13;
  v23[6] = v15;
  v16 = a5[1];
  v23[0] = *a5;
  v23[1] = v16;
  v23[2] = v14;
  v17 = sub_1D5FB1A58(v11, v23, a3);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = v22;
    v19 = sub_1D632A694(v11, sub_1D5FBB140, v21, a4);

    return v19;
  }

  return v11;
}

id sub_1D5FB90D4(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(void **__return_ptr, void **, unint64_t *))
{
  v16 = *a5;
  v10 = [a2 resolvedColorWithTraitCollection_];
  v11 = a6();
  if (v11)
  {
    MEMORY[0x1EEE9AC00](v11, v12);
    v15[2] = &v16;
    v13 = sub_1D632A694(v10, a7, v15, a4);

    return v13;
  }

  return v10;
}

id sub_1D5FB91BC(uint64_t a1, id a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = a5[3];
  v20[2] = a5[2];
  v20[3] = v8;
  v9 = a5[5];
  v20[4] = a5[4];
  v20[5] = v9;
  v10 = a5[1];
  v20[0] = *a5;
  v20[1] = v10;
  v11 = [a2 resolvedColorWithTraitCollection_];
  v12 = a5[3];
  v21[2] = a5[2];
  v21[3] = v12;
  v13 = a5[5];
  v21[4] = a5[4];
  v21[5] = v13;
  v14 = a5[1];
  v21[0] = *a5;
  v21[1] = v14;
  v15 = sub_1D5FB26CC(v11, v21, a3);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15, v16);
    v19[2] = v20;
    v17 = sub_1D632A694(v11, sub_1D5FBB080, v19, a4);

    return v17;
  }

  return v11;
}

id sub_1D5FB92D8(uint64_t a1, id a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 112);
  v22[6] = *(a5 + 96);
  v22[7] = v8;
  v22[8] = *(a5 + 128);
  v23 = *(a5 + 144);
  v9 = *(a5 + 48);
  v22[2] = *(a5 + 32);
  v22[3] = v9;
  v10 = *(a5 + 80);
  v22[4] = *(a5 + 64);
  v22[5] = v10;
  v11 = *(a5 + 16);
  v22[0] = *a5;
  v22[1] = v11;
  v12 = [a2 resolvedColorWithTraitCollection_];
  v13 = *(a5 + 112);
  v24[6] = *(a5 + 96);
  v24[7] = v13;
  v24[8] = *(a5 + 128);
  v25 = *(a5 + 144);
  v14 = *(a5 + 48);
  v24[2] = *(a5 + 32);
  v24[3] = v14;
  v15 = *(a5 + 80);
  v24[4] = *(a5 + 64);
  v24[5] = v15;
  v16 = *(a5 + 16);
  v24[0] = *a5;
  v24[1] = v16;
  v17 = sub_1D5FB2954(v12, v24, a3);
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v17, v18);
    v21[2] = v22;
    v19 = sub_1D632A694(v12, sub_1D5FBB170, v21, a4);

    return v19;
  }

  return v12;
}

uint64_t _s8NewsFeed21FormatSymbolImageFillV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = static FormatColor.== infix(_:_:)(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = static FormatColor.== infix(_:_:)(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed17FormatSymbolImageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v31 = *(a1 + 56);
  v32 = *(a1 + 64);
  v27 = *(a1 + 80);
  v28 = *(a1 + 72);
  v26 = *(a1 + 88);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v14 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = *(a2 + 64);
  v25 = *(a2 + 72);
  v24 = *(a2 + 80);
  v23 = *(a2 + 88);
  v21 = *(a2 + 96);
  v22 = *(a1 + 96);
  v37 = *a1;
  v38 = v2;
  v39 = v3;
  v40 = v4;
  v33 = v8;
  v34 = v9;
  v35 = v10;
  v36 = v11;
  sub_1D5FB995C(v37, v2, v3, v4);
  sub_1D5FB995C(v8, v9, v10, v11);
  LOBYTE(v8) = _s8NewsFeed16FormatSymbolNameO2eeoiySbAC_ACtFZ_0(&v37, &v33);
  sub_1D5FBA070(v33, v34, v35, v36);
  sub_1D5FBA070(v37, v38, v39, v40);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v7 >> 8 > 0xFE)
  {
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5FB999C(v13, v12, v14);
    if (v14 >> 8 > 0xFE)
    {
      sub_1D5FBACE0(v6, v5, v7);
      goto LABEL_9;
    }

LABEL_7:
    sub_1D5FBACE0(v6, v5, v7);
    sub_1D5FBACE0(v13, v12, v14);
    return 0;
  }

  v37 = v6;
  v38 = v5;
  LOWORD(v39) = v7;
  if (v14 >> 8 > 0xFE)
  {
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5FB999C(v13, v12, v14);
    sub_1D5FB999C(v6, v5, v7);
    sub_1D5F5816C(v6, v5, v7, SBYTE1(v7));
    goto LABEL_7;
  }

  v33 = v13;
  v34 = v12;
  LOWORD(v35) = v14;
  sub_1D5FB999C(v6, v5, v7);
  sub_1D5FB999C(v13, v12, v14);
  sub_1D5FB999C(v6, v5, v7);
  v15 = _s8NewsFeed18FormatSymbolConfigO2eeoiySbAC_ACtFZ_0(&v37, &v33);
  sub_1D5F5816C(v33, v34, v35, SBYTE1(v35));
  sub_1D5F5816C(v37, v38, v39, SBYTE1(v39));
  sub_1D5FBACE0(v6, v5, v7);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  if ((~v31 & 0xF000000000000007) != 0)
  {
    v37 = v31;
    v38 = v32;
    v16 = v29;
    if ((~v29 & 0xF000000000000007) != 0)
    {
      v33 = v29;
      v34 = v30;
      sub_1D5FB99B0(v31);
      sub_1D5FB99B0(v29);
      sub_1D5FB99B0(v31);
      v17 = _s8NewsFeed21FormatSymbolImageFillV2eeoiySbAC_ACtFZ_0(&v37, &v33);

      sub_1D5FBACF4(v31);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    sub_1D5FB99B0(v31);
    sub_1D5FB99B0(v29);
    sub_1D5FB99B0(v31);

LABEL_14:
    sub_1D5FBACF4(v31);
    sub_1D5FBACF4(v16);
    return 0;
  }

  v16 = v29;
  sub_1D5FB99B0(v31);
  sub_1D5FB99B0(v29);
  if ((~v29 & 0xF000000000000007) != 0)
  {
    goto LABEL_14;
  }

  sub_1D5FBACF4(v31);
LABEL_16:
  if (sub_1D5F588CC(v28, v27, v26, v25, v24, v23))
  {
    if ((~v22 & 0xF000000000000007) == 0)
    {
      v18 = v21;
      sub_1D5FB99FC(v22);
      sub_1D5FB99FC(v21);
      if ((~v21 & 0xF000000000000007) == 0)
      {
        sub_1D5FBA158(v22);
        return 1;
      }

      goto LABEL_22;
    }

    v37 = v22;
    v18 = v21;
    if ((~v21 & 0xF000000000000007) == 0)
    {
      sub_1D5FB99FC(v22);
      sub_1D5FB99FC(v21);
      sub_1D5FB99FC(v22);
      sub_1D5F33D8C(v22);
LABEL_22:
      sub_1D5FBA158(v22);
      sub_1D5FBA158(v18);
      return 0;
    }

    v33 = v21;
    sub_1D5FB99FC(v22);
    sub_1D5FB99FC(v21);
    sub_1D5FB99FC(v22);
    v20 = static FormatSymbolImageColor.== infix(_:_:)(&v37, &v33);
    sub_1D5F33D8C(v21);
    sub_1D5F33D8C(v22);
    sub_1D5FBA158(v22);
    if (v20)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D5FB995C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    v4 = vars8;
  }
}

uint64_t sub_1D5FB999C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return sub_1D5F586A4(result, a2, a3, SBYTE1(a3));
  }

  return result;
}

uint64_t sub_1D5FB99B0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1D5FB99FC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5F33D5C(result);
  }

  return result;
}

unint64_t sub_1D5FB9A10(uint64_t a1)
{
  result = sub_1D5FB9A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9A38()
{
  result = qword_1EC881D78;
  if (!qword_1EC881D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D78);
  }

  return result;
}

unint64_t sub_1D5FB9ACC()
{
  result = qword_1EDF10B00;
  if (!qword_1EDF10B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10B00);
  }

  return result;
}

unint64_t sub_1D5FB9B20()
{
  result = qword_1EC881D80;
  if (!qword_1EC881D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D80);
  }

  return result;
}

unint64_t sub_1D5FB9B74(uint64_t a1)
{
  result = sub_1D5FB9B9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9B9C()
{
  result = qword_1EC881D88;
  if (!qword_1EC881D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D88);
  }

  return result;
}

unint64_t sub_1D5FB9C30()
{
  result = qword_1EDF0DEE0;
  if (!qword_1EDF0DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DEE0);
  }

  return result;
}

unint64_t sub_1D5FB9C84()
{
  result = qword_1EC881D90;
  if (!qword_1EC881D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D90);
  }

  return result;
}

unint64_t sub_1D5FB9CD8(uint64_t a1)
{
  result = sub_1D5FB9D00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5FB9D00()
{
  result = qword_1EC881D98;
  if (!qword_1EC881D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881D98);
  }

  return result;
}

uint64_t sub_1D5FB9D94(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5FB9DE8()
{
  result = qword_1EDF0D9D8;
  if (!qword_1EDF0D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D9D8);
  }

  return result;
}

unint64_t sub_1D5FB9E3C()
{
  result = qword_1EC881DA0;
  if (!qword_1EC881DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed22FormatSymbolImageColorO(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void sub_1D5FB9EDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D725891C();
    v7 = sub_1D5FBA0C0(&qword_1EDF45B20, MEMORY[0x1E6969530]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5FB9F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t (*)()))
{
  v6 = a4(0, a3, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5FB9FF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t (*)()))
{
  v4 = a3(0, a2, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5FBA070(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D5FBA0C0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5FBA108()
{
  if (!qword_1EDF199C8)
  {
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF199C8);
    }
  }
}

unint64_t sub_1D5FBA158(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D5F33D8C(result);
  }

  return result;
}

uint64_t sub_1D5FBA16C(uint64_t a1, uint64_t a2)
{
  sub_1D5FBA900(0, &qword_1EC881DA8, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5FBA208()
{
  result = qword_1EC881DB0;
  if (!qword_1EC881DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881DB0);
  }

  return result;
}

uint64_t sub_1D5FBA25C(uint64_t a1)
{
  sub_1D5FBA900(0, &qword_1EC881DA8, sub_1D5FBA208, &type metadata for FormatBoolean, type metadata accessor for FormatSelectorValueSelector);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5FBA424@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = v5[3];
  v12[2] = v5[2];
  v12[3] = v8;
  v9 = v5[5];
  v12[4] = v5[4];
  v12[5] = v9;
  v10 = v5[1];
  v12[0] = *v5;
  v12[1] = v10;
  result = sub_1D5FA54F4(v6, v12, v7);
  *a3 = result;
  return result;
}

unint64_t sub_1D5FBA484@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = v6[3];
  v12[2] = v6[2];
  v12[3] = v8;
  v9 = v6[5];
  v12[4] = v6[4];
  v12[5] = v9;
  v10 = v6[1];
  v12[0] = *v6;
  v12[1] = v10;
  result = sub_1D5FA67A0(v12, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t objectdestroy_93Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_124Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D5FBA714@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (*a3)(void, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(*a1, **(v4 + 16), *a2);
  *a4 = result;
  return result;
}

unint64_t sub_1D5FBA75C@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *)@<X4>, void *a6@<X8>)
{
  result = sub_1D5FA62B4(**(v6 + 16), *a1, a3, a4, a5, a6);
  if (v7)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1D5FBA7EC@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D5FA4EF8(*a1, *(v3 + 16), *a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5FBA8C0@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D5FA48FC(*a1, *(v3 + 16), *a2);
  *a3 = result;
  return result;
}

void sub_1D5FBA900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5FBA968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5FBAA98@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *(*a3)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(uint64_t *__return_ptr, unint64_t *, uint64_t *)@<X4>, void *a6@<X8>)
{
  result = sub_1D5FA6530(*(v6 + 16), *a1, a3, a4, a5, a6);
  if (v7)
  {
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1D5FBAB14@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = v5[5];
  v12[4] = v5[4];
  v12[5] = v8;
  v12[6] = v5[6];
  v9 = v5[1];
  v12[0] = *v5;
  v12[1] = v9;
  v10 = v5[3];
  v12[2] = v5[2];
  v12[3] = v10;
  result = sub_1D5FA3E1C(v6, v12, v7);
  *a3 = result;
  return result;
}

unint64_t sub_1D5FBAB7C@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = v6[5];
  v12[4] = v6[4];
  v12[5] = v8;
  v12[6] = v6[6];
  v9 = v6[1];
  v12[0] = *v6;
  v12[1] = v9;
  v10 = v6[3];
  v12[2] = v6[2];
  v12[3] = v10;
  result = sub_1D5FA6030(v12, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

unint64_t sub_1D5FBABE0(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    else if (v1 != 2 && v1 != 3 && v1 != 4)
    {
      return result;
    }
  }

  if (v1 <= 6)
  {
    if (v1 == 5 || v1 == 6)
    {
    }
  }

  else if (v1 == 7 || v1 == 8 || v1 == 9)
  {
  }

  return result;
}

unint64_t sub_1D5FBAC60(unint64_t result)
{
  v1 = result >> 60;
  if ((result >> 60) <= 4)
  {
    if (v1 <= 1)
    {
      if (v1 >= 2)
      {
        return result;
      }
    }

    else if (v1 != 2 && v1 != 3 && v1 != 4)
    {
      return result;
    }
  }

  if (v1 <= 6)
  {
    if (v1 == 5 || v1 == 6)
    {
    }
  }

  else if (v1 == 7 || v1 == 8 || v1 == 9)
  {
  }

  return result;
}

uint64_t sub_1D5FBACE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return sub_1D5F5816C(result, a2, a3, SBYTE1(a3));
  }

  return result;
}

uint64_t sub_1D5FBACF4(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t objectdestroy_35Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D5FBAE78@<X0>(void **a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = *a2;
  v8 = *(v5 + 112);
  v13[6] = *(v5 + 96);
  v13[7] = v8;
  v13[8] = *(v5 + 128);
  v14 = *(v5 + 144);
  v9 = *(v5 + 48);
  v13[2] = *(v5 + 32);
  v13[3] = v9;
  v10 = *(v5 + 80);
  v13[4] = *(v5 + 64);
  v13[5] = v10;
  v11 = *(v5 + 16);
  v13[0] = *v5;
  v13[1] = v11;
  result = sub_1D5FA5A80(v6, v13, v7);
  *a3 = result;
  return result;
}

unint64_t sub_1D5FBAEF0@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = *(v6 + 112);
  v13[6] = *(v6 + 96);
  v13[7] = v8;
  v13[8] = *(v6 + 128);
  v14 = *(v6 + 144);
  v9 = *(v6 + 48);
  v13[2] = *(v6 + 32);
  v13[3] = v9;
  v10 = *(v6 + 80);
  v13[4] = *(v6 + 64);
  v13[5] = v10;
  v11 = *(v6 + 16);
  v13[0] = *v6;
  v13[1] = v11;
  result = sub_1D5FA6A1C(v13, v7, a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

char *sub_1D5FBB260(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  sub_1D5C1F6F0(0, &qword_1EDF3C478, MEMORY[0x1E6968178]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = sub_1D7257B5C();
  MEMORY[0x1EEE9AC00](v11, v12);
  v34 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v32 = &v29 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (v16 + 48);
  v30 = v16;
  v33 = (v16 + 32);
  v20 = (a3 + 48);
  v37 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v29 = (v16 + 48);
  while (1)
  {
    v21 = *(v20 - 1);
    v22 = *v20;
    v36[0] = *(v20 - 2);
    v36[1] = v21;
    v36[2] = v22;

    a1(v36);
    if (v4)
    {
      break;
    }

    if ((*v19)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EDF3C478, MEMORY[0x1E6968178]);
    }

    else
    {
      v23 = v32;
      v24 = *v33;
      (*v33)(v32, v10, v11);
      v24(v34, v23, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1D698BCB0(0, *(v37 + 2) + 1, 1, v37);
      }

      v26 = *(v37 + 2);
      v25 = *(v37 + 3);
      if (v26 >= v25 >> 1)
      {
        v37 = sub_1D698BCB0(v25 > 1, v26 + 1, 1, v37);
      }

      v27 = v37;
      *(v37 + 2) = v26 + 1;
      v24(&v27[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26], v34, v11);
      a1 = v31;
      v19 = v29;
    }

    v20 += 3;
    if (!--v18)
    {
      return v37;
    }
  }

  return v37;
}

void *sub_1D5FBB5A0(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  sub_1D5EA74B8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v34 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v33 = &v29 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = (a3 + 32);
  v30 = v17;
  v22 = (v17 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v31 = v12;
  v32 = a2;
  while (1)
  {
    v24 = *v21++;
    v35 = v24;
    a1(&v35, v18);
    if (v3)
    {
      break;
    }

    if ((*v22)(v10, 1, v12) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      v25 = v33;
      sub_1D5BE2EB4(v10, v33, sub_1D5EA74B8);
      sub_1D5BE2EB4(v25, v34, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D698C0A8(0, v23[2] + 1, 1, v23);
      }

      v27 = v23[2];
      v26 = v23[3];
      if (v27 >= v26 >> 1)
      {
        v23 = sub_1D698C0A8(v26 > 1, v27 + 1, 1, v23);
      }

      v23[2] = v27 + 1;
      sub_1D5BE2EB4(v34, v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v27, sub_1D5EA74B8);
      v12 = v31;
    }

    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

void *sub_1D5FBB884(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF16148, type metadata accessor for WebEmbedDataVisualizationDataRequest);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for WebEmbedDataVisualizationDataRequest(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(sub_1D72585BC() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF16148, type metadata accessor for WebEmbedDataVisualizationDataRequest);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      sub_1D5BE2EB4(v23, v33, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D698C5F0(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D698C5F0(v24 > 1, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D5BE2EB4(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for WebEmbedDataVisualizationDataRequest);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1D5FBBBBC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v6 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1DA6FB460](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v7;
      a1(&v13, &v14);
      if (v3)
      {

        return v11;
      }

      if (v13)
      {
        MEMORY[0x1DA6F9CE0]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v11 = v15;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1D5FBBD68(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = a1;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = *(v6 - 1);
    v8 = *v6;
    v11 = *(v6 - 3);
    v10 = *(v6 - 2);
    v12 = *(v6 - 4);
    v29[0] = *(v6 - 5);
    v29[1] = v12;
    v29[2] = v11;
    v29[3] = v10;
    v29[4] = v9;
    v29[5] = v8;

    v30(&v25, v29);
    if (v4)
    {
      break;
    }

    if (*(&v25 + 1))
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D698BCE4(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      if (v14 >= v13 >> 1)
      {
        v7 = sub_1D698BCE4((v13 > 1), v14 + 1, 1, v7);
      }

      v19 = v23;
      v20 = v24;
      v15 = v21;
      v18 = v22;
      *(v7 + 2) = v14 + 1;
      v16 = &v7[64 * v14];
      *(v16 + 4) = v19;
      *(v16 + 5) = v20;
      *(v16 + 2) = v15;
      *(v16 + 3) = v18;
    }

    else
    {
      v21 = v25;
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_1D5FC46A0(&v21, &qword_1EC881DF0, &type metadata for FormatContentSlot.Resolved);
    }

    v6 += 6;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1D5FBBF90(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v21[0] = *(v6 - 2);
    v21[1] = v8;
    v21[2] = v9;

    v22(&v18, v21);
    if (v4)
    {
      break;
    }

    v11 = v18;
    v10 = v19;
    v12 = v20;
    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D698C9C4(0, *(v7 + 2) + 1, 1, v7);
      }

      v14 = *(v7 + 2);
      v13 = *(v7 + 3);
      v15 = v7;
      if (v14 >= v13 >> 1)
      {
        v15 = sub_1D698C9C4((v13 > 1), v14 + 1, 1, v7);
      }

      *(v15 + 2) = v14 + 1;
      v7 = v15;
      v16 = &v15[24 * v14];
      *(v16 + 4) = v11;
      *(v16 + 5) = v10;
      *(v16 + 6) = v12;
    }

    else
    {
      sub_1D5EBC358(v18, 0);
    }

    v6 += 3;
    if (!--v5)
    {
      return v7;
    }
  }

  return v7;
}

void *sub_1D5FBC110(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF3A660, type metadata accessor for FormatSourceItemTipSource);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FormatSourceItemTipSource();
  MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = (a3 + 32);
  v28 = v16;
  v20 = (v16 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    v22 = *v19++;
    v33 = v22;

    a1(&v33);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF3A660, type metadata accessor for FormatSourceItemTipSource);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for FormatSourceItemTipSource);
      sub_1D5BE2EB4(v23, v32, type metadata accessor for FormatSourceItemTipSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698F3EC(0, v21[2] + 1, 1, v21);
      }

      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v21 = sub_1D698F3EC(v24 > 1, v25 + 1, 1, v21);
      }

      v21[2] = v25 + 1;
      sub_1D5BE2EB4(v32, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FormatSourceItemTipSource);
      v11 = v29;
    }

    if (!--v18)
    {
      return v21;
    }
  }

  return v21;
}

char *sub_1D5FBC414(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a1;
  v6 = (a3 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v6[1];
    v39[0] = *v6;
    v39[1] = v7;
    v8 = v6[3];
    v10 = *v6;
    v9 = v6[1];
    v39[2] = v6[2];
    v39[3] = v8;
    v35 = v10;
    v36 = v9;
    v11 = v6[3];
    v37 = v6[2];
    v38 = v11;
    sub_1D5CFBAA8(v39, &v25);
    v5(&v29, &v35);
    if (v3)
    {
      break;
    }

    v25 = v35;
    v26 = v36;
    v27 = v37;
    v28 = v38;
    sub_1D5D08954(&v25);
    v13 = v29;
    v12 = v30;
    v14 = v31;
    v15 = v34;
    if (v34 == 1)
    {
      sub_1D5FC4E38(v29, v30, v31, v32, v33, 1);
    }

    else
    {
      v23 = v32;
      v24 = v33;
      v16 = v40;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D698F5F4(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      v19 = v16;
      if (v18 >= v17 >> 1)
      {
        v19 = sub_1D698F5F4((v17 > 1), v18 + 1, 1, v16);
      }

      *(v19 + 2) = v18 + 1;
      v40 = v19;
      v20 = &v19[48 * v18];
      *(v20 + 4) = v13;
      *(v20 + 5) = v12;
      v20[48] = v14 & 1;
      *(v20 + 7) = v23;
      v20[64] = v24 & 1;
      *(v20 + 9) = v15;
      v5 = a1;
    }

    v6 += 4;
    if (!--v4)
    {
      return v40;
    }
  }

  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  sub_1D5D08954(&v25);

  return v40;
}

char *sub_1D5FBC5EC(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6++;
    v16 = v8;

    a1(&v15, &v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D699135C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v14;
      if (v10 >= v9 >> 1)
      {
        v12 = sub_1D699135C((v9 > 1), v10 + 1, 1, v7);
        v11 = v14;
        v7 = v12;
      }

      *(v7 + 2) = v10 + 1;
      *&v7[16 * v10 + 32] = v11;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_1D5FBC744(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v15 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_19:
    v5 = sub_1D7263BFC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1DA6FB460](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            return v11;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v7;
        a1(&v13, &v14);
        if (v3)
        {
          goto LABEL_16;
        }

        if (v13)
        {
          MEMORY[0x1DA6F9CE0](v9);
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          v11 = v15;
        }

        ++v6;
        if (v8 == v5)
        {
          return v11;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D5FBC900(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v34 = a1;
  sub_1D5C1F6F0(0, &qword_1EDF353E0, type metadata accessor for FeedItemSupplementaryAttributes);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - v7;
  v33 = type metadata accessor for FeedItemSupplementaryAttributes();
  v28 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v9);
  v32 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v27 = &v25 - v14;
  if (a3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v16 = 0;
    v30 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = a3 & 0xC000000000000001;
    v17 = (v28 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v26 = a3;
    v29 = i;
    while (v31)
    {
      v19 = MEMORY[0x1DA6FB460](v16, a3, v13);
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v35 = v19;
      v34(&v35);
      if (v3)
      {

        return v18;
      }

      if ((*v17)(v8, 1, v33) == 1)
      {
        sub_1D5FC4FD8(v8, &qword_1EDF353E0, type metadata accessor for FeedItemSupplementaryAttributes);
      }

      else
      {
        v21 = v27;
        sub_1D5BE2EB4(v8, v27, type metadata accessor for FeedItemSupplementaryAttributes);
        sub_1D5BE2EB4(v21, v32, type metadata accessor for FeedItemSupplementaryAttributes);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D699072C(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1D699072C(v22 > 1, v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        sub_1D5BE2EB4(v32, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, type metadata accessor for FeedItemSupplementaryAttributes);
        a3 = v26;
      }

      ++v16;
      if (v20 == v29)
      {
        return v18;
      }
    }

    if (v16 >= *(v30 + 16))
    {
      goto LABEL_21;
    }

    v19 = *(a3 + 8 * v16 + 32);

    v20 = v16 + 1;
    if (!__OFADD__(v16, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D5FBCC78(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v25 - v8;
  sub_1D5EA74B8();
  v29 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v28 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v25 - v17;
  v19 = *(a3 + 16);
  if (!v19)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v26 = v15;
  v20 = (v15 + 48);
  v21 = MEMORY[0x1E69E7CC0];
  v27 = a1;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v20)(v9, 1, v29) == 1)
    {
      sub_1D5FC4FD8(v9, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      sub_1D5BE2EB4(v9, v18, sub_1D5EA74B8);
      sub_1D5BE2EB4(v18, v28, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D698C0A8(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D698C0A8(v22 > 1, v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      sub_1D5BE2EB4(v28, v21 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23, sub_1D5EA74B8);
      a1 = v27;
    }

    if (!--v19)
    {
      return v21;
    }
  }

  return v21;
}

void *sub_1D5FBCF3C(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, &qword_1EC881DE8, sub_1D5EA74B8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v28 - v9;
  sub_1D5EA74B8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v32 = &v28 - v19;
  v20 = *(a3 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = (a3 + 32);
  v29 = v17;
  v22 = (v17 + 48);
  v23 = MEMORY[0x1E69E7CC0];
  v30 = v12;
  v31 = a2;
  while (1)
  {
    v34 = *v21;
    a1(&v34, v18);
    if (v3)
    {
      break;
    }

    if ((*v22)(v10, 1, v12) == 1)
    {
      sub_1D5FC4FD8(v10, &qword_1EC881DE8, sub_1D5EA74B8);
    }

    else
    {
      v24 = v32;
      sub_1D5BE2EB4(v10, v32, sub_1D5EA74B8);
      sub_1D5BE2EB4(v24, v33, sub_1D5EA74B8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D698C0A8(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_1D698C0A8(v25 > 1, v26 + 1, 1, v23);
      }

      v23[2] = v26 + 1;
      sub_1D5BE2EB4(v33, v23 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, sub_1D5EA74B8);
      v12 = v30;
    }

    ++v21;
    if (!--v20)
    {
      return v23;
    }
  }

  return v23;
}

void *sub_1D5FBD224(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  sub_1D5C1F6F0(0, qword_1EDF12AD8, type metadata accessor for FeedItemAuxiliaryItem);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for FeedItemAuxiliaryItem();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v33 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v31 = &v27 - v17;
  v18 = *(a3 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(type metadata accessor for FormatContentSlotItemResolution() - 8);
  v28 = v12;
  v20 = (v12 + 48);
  v21 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v32 = *(v19 + 72);
  v22 = MEMORY[0x1E69E7CC0];
  v29 = v11;
  v30 = a2;
  while (1)
  {
    a1(v21);
    if (v3)
    {
      break;
    }

    if ((*v20)(v10, 1, v11) == 1)
    {
      sub_1D5FC4FD8(v10, qword_1EDF12AD8, type metadata accessor for FeedItemAuxiliaryItem);
    }

    else
    {
      v23 = v31;
      sub_1D5BE2EB4(v10, v31, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BE2EB4(v23, v33, type metadata accessor for FeedItemAuxiliaryItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1D69915D0(0, v22[2] + 1, 1, v22);
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        v22 = sub_1D69915D0(v24 > 1, v25 + 1, 1, v22);
      }

      v22[2] = v25 + 1;
      sub_1D5BE2EB4(v33, v22 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v25, type metadata accessor for FeedItemAuxiliaryItem);
      v11 = v29;
    }

    v21 += v32;
    if (!--v18)
    {
      return v22;
    }
  }

  return v22;
}

uint64_t sub_1D5FBD55C(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1DA6F9CE0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

char *sub_1D5FBD65C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v9 = *(v6 - 1);
    v23 = *(v6 - 2);
    v24 = v9;
    v25 = v8;

    sub_1D5C07390(v9);
    a1(&v20, &v23);
    if (v4)
    {
      break;
    }

    v10 = v24;

    sub_1D5C08648(v10);
    v12 = v20;
    v11 = v21;
    if (v20)
    {
      v13 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D5C073A0(0, *(v7 + 2) + 1, 1, v7);
      }

      v15 = *(v7 + 2);
      v14 = *(v7 + 3);
      if (v15 >= v14 >> 1)
      {
        v7 = sub_1D5C073A0((v14 > 1), v15 + 1, 1, v7);
      }

      *(v7 + 2) = v15 + 1;
      v16 = &v7[24 * v15];
      *(v16 + 4) = v12;
      *(v16 + 5) = v11;
      *(v16 + 6) = v13;
    }

    else
    {
      sub_1D5FC4EA8(0, v21);
    }

    v6 += 3;
    if (!--v5)
    {
      return v7;
    }
  }

  v17 = v24;

  sub_1D5C08648(v17);

  return v7;
}

void *sub_1D5FBD7E0(void (*a1)(__int128 *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *v6++;
    v16 = v10;
    a1(&v15, &v16);
    if (v3)
    {
      break;
    }

    if (v15)
    {
      v14 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D699345C(0, v7[2] + 1, 1, v7);
      }

      v12 = v7[2];
      v11 = v7[3];
      v9 = v14;
      if (v12 >= v11 >> 1)
      {
        v8 = sub_1D699345C((v11 > 1), v12 + 1, 1, v7);
        v9 = v14;
        v7 = v8;
      }

      v7[2] = v12 + 1;
      *&v7[2 * v12 + 4] = v9;
    }

    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1D5FBD90C(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  v7 = a3 + 32;
  a1(__src, a3 + 32);
  while (!v3)
  {
    if (LOBYTE(__src[49]) == 255)
    {
      sub_1D5FC46A0(__src, &qword_1EC881DF8, &type metadata for HGroupLayoutContext);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D6993B58(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1D6993B58((v8 > 1), v9 + 1, 1, v6);
      }

      *(v6 + 2) = v9 + 1;
      memcpy(&v6[400 * v9 + 32], __dst, 0x189uLL);
    }

    v7 += 288;
    if (!--v4)
    {
      return v6;
    }

    a1(__src, v7);
  }

  return v6;
}

char *sub_1D5FBDA68(void (*a1)(void), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v53 = a1;
  v54 = a2;
  sub_1D5C1F6F0(0, &qword_1EC881E00, sub_1D5E2C2C8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v45 = &v43 - v8;
  sub_1D5E2C2C8();
  v10 = v9;
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v43 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v44 = &v43 - v18;
  sub_1D5E2C428(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5FC4F44();
  v26 = v25 - 8;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v5, v20, v28);
  sub_1D5D21194(&qword_1EDF17220, sub_1D5E2C428);
  sub_1D726238C();
  v31 = *(v26 + 44);
  sub_1D5D21194(&qword_1EDF17218, sub_1D5E2C428);
  sub_1D7262C5C();
  if (*&v30[v31] == v55)
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_3:
    sub_1D5C0AD80(v30, sub_1D5FC4F44);
  }

  else
  {
    v32 = v45;
    v50 = (v46 + 16);
    v51 = (v46 + 8);
    v48 = (v46 + 32);
    v49 = (v46 + 48);
    v56 = MEMORY[0x1E69E7CC0];
    v33 = v44;
    while (1)
    {
      v34 = sub_1D7262D0C();
      (*v50)(v33);
      v34(&v55, 0);
      sub_1D7262C6C();
      v53(v33);
      if (v4)
      {
        break;
      }

      (*v51)(v33, v10);
      if ((*v49)(v32, 1, v10) == 1)
      {
        sub_1D5FC4FD8(v32, &qword_1EC881E00, sub_1D5E2C2C8);
      }

      else
      {
        v47 = 0;
        v35 = *v48;
        v36 = v43;
        (*v48)(v43, v32, v10);
        v35(v52, v36, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_1D69950E4(0, *(v56 + 2) + 1, 1, v56);
        }

        v38 = *(v56 + 2);
        v37 = *(v56 + 3);
        v39 = v46;
        if (v38 >= v37 >> 1)
        {
          v41 = sub_1D69950E4(v37 > 1, v38 + 1, 1, v56);
          v39 = v46;
          v56 = v41;
        }

        v40 = v56;
        *(v56 + 2) = v38 + 1;
        v4 = v47;
        v35(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38], v52, v10);
        v33 = v44;
        v32 = v45;
      }

      sub_1D7262C5C();
      if (*&v30[v31] == v55)
      {
        goto LABEL_3;
      }
    }

    (*v51)(v33, v10);
    sub_1D5C0AD80(v30, sub_1D5FC4F44);
  }

  return v56;
}

uint64_t sub_1D5FBDFF4(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v24 = i[2];
      v25[0] = v9;
      *(v25 + 9) = *(i + 57);
      v10 = i[1];
      v23[0] = *i;
      v23[1] = v10;
      v11 = i[3];
      v21 = v24;
      v22[0] = v11;
      *(v22 + 9) = *(i + 57);
      v19 = v23[0];
      v20 = v8;
      sub_1D5FC4D88(v23, &v14);
      a1(&v18, &v19);
      if (v3)
      {
        break;
      }

      v16 = v21;
      v17[0] = v22[0];
      *(v17 + 9) = *(v22 + 9);
      v14 = v19;
      v15 = v20;
      v12 = sub_1D5FC4DE4(&v14);
      if (v18)
      {
        MEMORY[0x1DA6F9CE0](v12);
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v26;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    v16 = v21;
    v17[0] = v22[0];
    *(v17 + 9) = *(v22 + 9);
    v14 = v19;
    v15 = v20;
    sub_1D5FC4DE4(&v14);
  }

  return v4;
}

uint64_t sub_1D5FBE1C8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v17 = MEMORY[0x1E69E7CC0];
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 72);
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v6 - 3);
    v10 = *(v6 - 2);
    v11 = *(v6 - 4);
    v16[0] = *(v6 - 5);
    v16[1] = v11;
    v16[2] = v9;
    v16[3] = v10;
    v16[4] = v7;
    v16[5] = v8;

    a1(&v15, v16);
    if (v3)
    {

      return v14;
    }

    if (v15)
    {
      MEMORY[0x1DA6F9CE0](v12);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v14 = v17;
    }

    v6 += 6;
    --v4;
  }

  while (v4);
  return v14;
}

uint64_t sub_1D5FBE378(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 32); ; i += 5)
    {
      v8 = i[1];
      v9 = i[3];
      v26 = i[2];
      v27 = v9;
      v10 = i[3];
      v28 = i[4];
      v11 = i[1];
      v25[0] = *i;
      v25[1] = v11;
      v22 = v26;
      v23 = v10;
      v24 = i[4];
      v20 = v25[0];
      v21 = v8;
      sub_1D5CE9930(v25, &v14);
      a1(&v19, &v20);
      if (v3)
      {
        break;
      }

      v16 = v22;
      v17 = v23;
      v18 = v24;
      v14 = v20;
      v15 = v21;
      v12 = sub_1D5CEC67C(&v14);
      if (v19)
      {
        MEMORY[0x1DA6F9CE0](v12);
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v4 = v29;
      }

      if (!--v5)
      {
        return v4;
      }
    }

    v16 = v22;
    v17 = v23;
    v18 = v24;
    v14 = v20;
    v15 = v21;
    sub_1D5CEC67C(&v14);
  }

  return v4;
}

void *sub_1D5FBE51C(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  v17 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = 0;
    do
    {
      v14 = result;
      for (i = v9; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v11 = a4(0);
        v13 = *(v11 - 8);
        result = (v11 - 8);
        v12 = v13;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v16, a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * i);
        if (v4)
        {

          return v14;
        }

        if (v16)
        {
          break;
        }

        if (v9 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x1DA6F9CE0](result);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      result = v17;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t sub_1D5FBE6FC(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t), uint64_t (*a6)(void))
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = 0;
  result = MEMORY[0x1E69E7CC0];
  do
  {
    v28 = result;
    for (i = v12; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        return result;
      }

      v15 = a4(0);
      v17 = *(v15 - 8);
      result = v15 - 8;
      v16 = v17;
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_19;
      }

      a1(&v29, a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * i);
      if (v6)
      {

        return v28;
      }

      if ((~v29 & 0xF000000000000007) != 0)
      {
        break;
      }

      result = a6();
      if (v12 == v7)
      {
        return v28;
      }
    }

    v26 = v29;
    v18 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = a5(0, *(v28 + 16) + 1, 1, v28);
    }

    v19 = v18;
    v20 = *(v18 + 16);
    v21 = v19;
    v22 = *(v19 + 24);
    v23 = v20 + 1;
    v24 = v26;
    if (v20 >= v22 >> 1)
    {
      v25 = a5(v22 > 1, v20 + 1, 1, v21);
      v23 = v20 + 1;
      v21 = v25;
      v24 = v26;
    }

    *(v21 + 16) = v23;
    result = v21;
    *(v21 + 8 * v20 + 32) = v24;
  }

  while (v12 != v7);
  return result;
}

uint64_t FeedModelFactory.create<A>(headline:context:namespace:metadata:nativeAdInfo:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a6;
  v47 = a9;
  v48 = a8;
  v45 = a7;
  v46 = a5;
  v42 = a2;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v44, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v41 - v23;
  v25 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7270C10;
  *(v26 + 32) = a3;
  *(v26 + 40) = a4;

  v27 = [a1 identifier];
  v28 = sub_1D726207C();
  v30 = v29;

  *(v26 + 48) = v28;
  *(v26 + 56) = v30;
  v49 = v26;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v25, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v31 = sub_1D7261F3C();
  v33 = v32;

  v34 = v31;
  v35 = v42;
  sub_1D5D1FA14(v34, v33, a1, v42, v43, v24);

  sub_1D5BD81F0(v24, v20, type metadata accessor for FeedHeadline);
  sub_1D5BD81F0(v35, v17, type metadata accessor for FeedContext);
  v36 = v41;
  v37 = v45;
  (*(v12 + 16))(v41, v46, v45);
  v38 = sub_1D5D21194(&unk_1EDF34AD8, type metadata accessor for FeedHeadline);
  v39 = sub_1D5D21194(&qword_1EDF34AE8, type metadata accessor for FeedHeadline);
  FeedModel<>.init(model:context:namespace:metadata:)(v20, v17, 0, 0, v36, v44, v37, v38, v47, v39, v48);
  return sub_1D5C0AD80(v24, type metadata accessor for FeedHeadline);
}

uint64_t FeedModelFactory.create(headline:context:namespace:nativeAdInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a6;
  v35 = a3;
  v37 = a7;
  sub_1D5C1F6F0(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for FeedHeadline(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7270C10;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  *(v21 + 48) = a1;
  *(v21 + 56) = a2;
  v38 = v21;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v20, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();

  v22 = sub_1D7261F3C();
  v24 = v23;

  v25 = v22;
  v26 = v35;
  sub_1D70FFEE8(v25, v24, v35, v36, v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D5FC4FD8(v14, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5D211DC();
    return (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  }

  else
  {
    sub_1D5BE2EB4(v14, v19, type metadata accessor for FeedHeadline);
    v29 = v37;
    sub_1D5BE2EB4(v19, v37, type metadata accessor for FeedHeadline);
    sub_1D5D211DC();
    v31 = v30;
    sub_1D5BD81F0(v26, v29 + *(v30 + 52), type metadata accessor for FeedContext);
    v32 = (v29 + *(v31 + 56));
    *v32 = 0;
    v32[1] = 0;
    v33 = (v29 + *(v31 + 64));
    *v33 = sub_1D5C00104;
    v33[1] = 0;
    return (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
  }
}

__n128 FeedModelFactory.create(issue:context:namespace:traits:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a5;
  v12 = *(a5 + 8);
  v13 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D7270C10;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  v15 = [a1 identifier];
  v16 = sub_1D726207C();
  v18 = v17;

  *(v14 + 48) = v16;
  *(v14 + 56) = v18;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v13, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v19 = sub_1D7261F3C();
  v21 = v20;

  v30 = v11;
  v31 = v12;
  sub_1D71CCC34(v19, v21, a1, a2, &v30, v32);

  sub_1D5FC4A58(0, &qword_1EC881DB8, sub_1D5FC45A4, sub_1D5FC45F8);
  v23 = v22;
  sub_1D5BD81F0(a2, a6 + *(v22 + 52), type metadata accessor for FeedContext);
  v24 = v33[0];
  *(a6 + 96) = v32[6];
  *(a6 + 112) = v24;
  *(a6 + 121) = *(v33 + 9);
  v25 = v32[3];
  *(a6 + 32) = v32[2];
  *(a6 + 48) = v25;
  v26 = v32[5];
  *(a6 + 64) = v32[4];
  *(a6 + 80) = v26;
  result = v32[1];
  *a6 = v32[0];
  *(a6 + 16) = result;
  v28 = (a6 + *(v23 + 56));
  *v28 = 0;
  v28[1] = 0;
  v29 = (a6 + *(v23 + 64));
  *v29 = sub_1D5C00104;
  v29[1] = 0;
  return result;
}

uint64_t (*FeedModelFactory.create<A>(issue:context:namespace:metadata:traits:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>))()
{
  v38 = a2;
  v41 = a9;
  v42 = a8;
  v39 = a7;
  v40 = a5;
  v13 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v35[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = *a6;
  v36 = *(a6 + 8);
  v20 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7270C10;
  *(v21 + 32) = a3;
  *(v21 + 40) = a4;

  v22 = [a1 identifier];
  v23 = sub_1D726207C();
  v25 = v24;

  *(v21 + 48) = v23;
  *(v21 + 56) = v25;
  *&v43[0] = v21;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v20, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v26 = sub_1D7261F3C();
  v28 = v27;

  *&v43[0] = v37;
  BYTE8(v43[0]) = v36;
  v29 = v26;
  v30 = v38;
  sub_1D71CCC34(v29, v28, a1, v38, v43, v45);

  v43[6] = v45[6];
  v44[0] = v46[0];
  *(v44 + 9) = *(v46 + 9);
  v43[2] = v45[2];
  v43[3] = v45[3];
  v43[4] = v45[4];
  v43[5] = v45[5];
  v43[0] = v45[0];
  v43[1] = v45[1];
  sub_1D5BD81F0(v30, v19, type metadata accessor for FeedContext);
  v31 = v39;
  (*(v13 + 16))(v15, v40, v39);
  v32 = sub_1D5FC45A4();
  v33 = sub_1D5FC45F8();
  return FeedModel<>.init(model:context:namespace:metadata:)(v43, v19, 0, 0, v15, &type metadata for FeedIssue, v31, v32, v41, v33, v42);
}

id FeedModelFactory.create(tag:context:namespace:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D7270C10;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  v14 = [a1 identifier];
  v15 = sub_1D726207C();
  v17 = v16;

  *(v13 + 48) = v15;
  *(v13 + 56) = v17;
  v35 = v13;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v12, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v18 = sub_1D7261F3C();
  v20 = v19;

  result = [*(*(v6 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v22 = result;
    v23 = sub_1D726267C();

    v24 = sub_1D5B86020(v23);

    v25 = [a1 identifier];
    v26 = sub_1D726207C();
    v28 = v27;

    LOBYTE(v25) = sub_1D5BE240C(v26, v28, v24);

    *a5 = v18;
    *(a5 + 8) = v20;
    *(a5 + 16) = a1;
    *(a5 + 24) = 0;
    *(a5 + 25) = v35;
    *(a5 + 28) = *(&v35 + 3);
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 41) = *v34;
    *(a5 + 44) = *&v34[3];
    v29 = MEMORY[0x1E69E7CD0];
    *(a5 + 48) = 0;
    *(a5 + 56) = 0xE000000000000000;
    *(a5 + 64) = v25 & 1;
    *(a5 + 72) = v29;
    *(a5 + 80) = xmmword_1D7279980;
    sub_1D5FC4A58(0, &qword_1EDF13000, sub_1D5FC464C, sub_1D5EEF984);
    v31 = v30;
    *(a5 + 96) = 0u;
    *(a5 + 112) = 0u;
    *(a5 + 128) = 0u;
    *(a5 + 144) = 0;
    sub_1D5BD81F0(a2, a5 + *(v30 + 52), type metadata accessor for FeedContext);
    v32 = (a5 + *(v31 + 56));
    *v32 = 0;
    v32[1] = 0;
    v33 = (a5 + *(v31 + 64));
    *v33 = sub_1D5C00104;
    v33[1] = 0;
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FeedModelFactory.create<A>(tag:context:namespace:metadata:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v43 = a8;
  v44 = a7;
  v39 = a2;
  v45 = a6;
  v40 = *(a6 - 8);
  v41 = a5;
  MEMORY[0x1EEE9AC00](a1, a2);
  v42 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FeedContext();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6158];
  sub_1D5B5D3F4(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D7270C10;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;

  v20 = [a1 identifier];
  v21 = sub_1D726207C();
  v23 = v22;

  *(v19 + 48) = v21;
  *(v19 + 56) = v23;
  v47[0] = v19;
  sub_1D5B5D3F4(0, &qword_1EDF43BA0, v18, MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v24 = sub_1D7261F3C();
  v26 = v25;

  result = [*(*(v9 + 32) + 16) subscribedTagIDs];
  if (result)
  {
    v28 = result;
    v29 = sub_1D726267C();

    v30 = sub_1D5B86020(v29);

    v31 = [a1 identifier];
    v32 = sub_1D726207C();
    v34 = v33;

    LOBYTE(v31) = sub_1D5BE240C(v32, v34, v30);

    v55 = xmmword_1D7279980;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0;
    v47[0] = v24;
    v47[1] = v26;
    v47[2] = a1;
    v48 = 0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v49 = 0;
    v50 = 0;
    v53 = v31 & 1;
    v54 = MEMORY[0x1E69E7CD0];
    sub_1D5EE5AF8(v47, v46);
    sub_1D5BD81F0(v39, v17, type metadata accessor for FeedContext);
    v35 = v42;
    v36 = v45;
    (*(v40 + 16))(v42, v41, v45);
    v37 = sub_1D5FC464C();
    v38 = sub_1D5EEF984();
    swift_unknownObjectRetain();
    FeedModel<>.init(model:context:namespace:metadata:)(v46, v17, 0, 0, v35, &type metadata for FeedTag, v36, v37, v43, v38, v44);
    return sub_1D5EE5B54(v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}