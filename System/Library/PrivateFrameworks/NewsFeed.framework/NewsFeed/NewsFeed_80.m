uint64_t sub_1D6277824(uint64_t result, uint64_t a2)
{
  v13 = result;
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = &qword_1EC8854D0;
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 8);
      v19 = *v4;
      v8 = v19;
      sub_1D5D03180(v5, v6, v7);
      sub_1D62B7E2C();
      sub_1D5B49474(0, v3);
      v9 = v3;
      v10 = v8;
      if (swift_dynamicCast())
      {
        v14 = v10;
        v11 = *(&v17 + 1);
        v12 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        (*(v12 + 8))(v13, v11, v12);
        sub_1D5D07BA8(v5, v6, v7);

        result = __swift_destroy_boxed_opaque_existential_1(&v16);
        if (v15)
        {
          return result;
        }
      }

      else
      {
        sub_1D5D07BA8(v5, v6, v7);

        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        result = sub_1D5BFB774(&v16, &qword_1EC8854D8, v3);
      }

      v3 = v9;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1D62779BC(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v14 = result;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      if (*(v5 + 24) == 1)
      {
        v6 = *(v5 - 8);
        v7 = *v5;
        v8 = *(v5 + 16);
        v9 = v8[3];
        v15 = *(v5 + 8);
        sub_1D5F26358(v6, *v5, v15);
        sub_1D62B5FC8(v8, 1);

        sub_1D6277824(v14, v9);
        if (v3)
        {
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);
        }

        v19 = v8[4];
        v10 = v19;
        sub_1D62B7E2C();
        sub_1D5B49474(0, &qword_1EC8854D0);
        v11 = v10;
        if (swift_dynamicCast())
        {
          v13 = *(&v17 + 1);
          v12 = v18;
          __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
          (*(v12 + 8))(v14, v13, v12);
          v3 = 0;
          __swift_destroy_boxed_opaque_existential_1(&v16);
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);
        }

        else
        {
          v18 = 0;
          v16 = 0u;
          v17 = 0u;
          sub_1D5BFB774(&v16, &qword_1EC8854D8, &qword_1EC8854D0);
          sub_1D5F26348(v6, v7, v15);
          sub_1D5FC4E9C(v8, 1);

          v3 = 0;
        }
      }

      v5 += 48;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6277BD0(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = (a2 + 56);
  v135 = result;
  while (1)
  {
    v7 = *(v6 - 3);
    v8 = *(v6 - 2);
    v9 = *(v6 - 8);
    v10 = *v6;
    v11 = *v6 >> 62;
    if (v11)
    {
      break;
    }

    v137 = *(v6 - 2);
    v25 = *(v10 + 32);
    v141 = *(v10 + 16);
    v142 = v25;
    v26 = *(v10 + 48);
    v144 = *(v10 + 64);
    v143 = v26;
    v27 = *(&v141 + 1);
    v28 = v141;
    v29 = v25;
    v30 = v144;
    switch((2 * HIBYTE(v144)) | ((v144 & 8) != 0))
    {
      case 2:
        v153 = v6;
        v140 = v4;
        v129 = v3;

        sub_1D5FD78CC(&v141, &v150);
        v132 = v9;
        sub_1D5D03180(v7, v137, v9);

LABEL_76:
        if (v30 >> 4 != 3)
        {
          goto LABEL_77;
        }

        if (HIBYTE(v29) <= 1u)
        {
          if (v29 > 0xFDu)
          {
            goto LABEL_77;
          }

          *&v150 = v28;
          *(&v150 + 1) = v27;
          LOBYTE(v151) = v29;
          sub_1D5E1E0D4(v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
          sub_1D62A1A50();
          v3 = v129;
          sub_1D5D07BA8(v7, v137, v132);

          sub_1D5E1E15C(v28, v27, v29);
          sub_1D5FD7B18(&v141);

          if (v129)
          {
            return result;
          }
        }

        else
        {
          if (HIBYTE(v29) != 2 && HIBYTE(v29) != 3 || v29 > 0xFDu)
          {
LABEL_77:
            sub_1D5D07BA8(v7, v137, v132);

            sub_1D5FD7B18(&v141);
            goto LABEL_4;
          }

          *&v150 = v28;
          *(&v150 + 1) = v27;
          LOBYTE(v151) = v29;
          sub_1D5E1E0D4(v141, *(&v141 + 1), v142, *(&v142 + 1), v143, *(&v143 + 1), v144 & 0xF7, sub_1D5E1DC48, sub_1D5E1DCA8, sub_1D5E1DCD8, sub_1D5E1DCE8);
          sub_1D62A1A50();
          if (v129)
          {
            sub_1D5D07BA8(v7, v137, v132);

            sub_1D5E1E15C(v28, v27, v29);
            sub_1D5FD7B18(&v141);
          }

          sub_1D5D07BA8(v7, v137, v132);

          sub_1D5E1E15C(v28, v27, v29);
          sub_1D5FD7B18(&v141);

          v3 = 0;
        }

        break;
      case 3:
      case 4:
        v153 = v6;
        v140 = v4;
        v146 = v141;
        *&v147 = v25;
        v145 = 5;
        sub_1D5FD78CC(&v141, &v150);

        sub_1D5FD78CC(&v141, &v150);
        v132 = v9;
        sub_1D5D03180(v7, v137, v9);

        v31 = sub_1D703E0C8(&v146, &v145);
        if (!v3)
        {
          v32 = v31;

          v33 = swift_allocObject();
          *(v33 + 16) = v28;
          *(v33 + 24) = v27;
          *(v33 + 32) = v32;
          *(v33 + 40) = 0;
          v34 = v33 | 0x3000000000000000;
          v35 = *v5;
          swift_beginAccess();
          v36 = *(v35 + 2);
          v37 = *(v36 + 16);
          if (v37 && (v38 = *(v36 + 8 * v37 + 24), , v39 = sub_1D60E14A8(v38, v34), , (v39 & 1) != 0))
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v62 = *v5;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
              v119 = swift_allocObject();
              swift_beginAccess();
              v120 = v62[2];
              v150 = v62[1];
              v151 = v120;
              *v152 = v62[3];
              *&v152[14] = *(v62 + 62);
              memmove((v119 + 16), v62 + 1, 0x3EuLL);
              sub_1D5EB9AB0(&v150, &v146);

              *v5 = v119;
              v62 = v119;
            }

            swift_beginAccess();
            v63 = *(v62 + 2);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            *(v62 + 2) = v63;
            if ((v64 & 1) == 0)
            {
              v63 = sub_1D698F848(0, *(v63 + 2) + 1, 1, v63);
              *(v62 + 2) = v63;
            }

            v66 = *(v63 + 2);
            v65 = *(v63 + 3);
            if (v66 >= v65 >> 1)
            {
              v63 = sub_1D698F848((v65 > 1), v66 + 1, 1, v63);
            }

            *(v63 + 2) = v66 + 1;
            *&v63[8 * v66 + 32] = v34;
            *(v62 + 2) = v63;
            swift_endAccess();
            v5 = v135;
          }

          v30 = v144;
          switch((2 * HIBYTE(v144)) | ((v144 & 8) != 0))
          {
            case 1:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
            case 13:
              sub_1D5D07BA8(v7, v137, v9);
LABEL_147:

              goto LABEL_6;
            case 2:
              v129 = 0;
              v27 = *(&v141 + 1);
              v29 = v142;
              v28 = v141;
              goto LABEL_76;
            case 12:
              sub_1D5D07BA8(v7, v137, v9);

              goto LABEL_140;
            default:
              sub_1D5D07BA8(v7, v137, v9);

              sub_1D5FD7B18(&v141);
              goto LABEL_140;
          }
        }

        sub_1D5D07BA8(v7, v137, v9);

        sub_1D5FD7B18(&v141);

      case 12:
        v153 = v6;
        v140 = v4;

        goto LABEL_140;
      default:
        goto LABEL_7;
    }

LABEL_6:
    v4 = v140;
    v6 = v153;
LABEL_7:
    v6 += 4;
    if (!--v4)
    {
      return result;
    }
  }

  v153 = v6;
  v140 = v4;
  if (v11 != 1)
  {
    v129 = v3;
    v41 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v40 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;
    v43 = *v5;
    swift_beginAccess();
    v44 = *(v43 + 2);
    v45 = *(v44 + 16);
    if (v45 && (v46 = *(v44 + 8 * v45 + 24), v46 >> 60 == 4) && ((v47 = v46 & 0xFFFFFFFFFFFFFFFLL, *(v47 + 16) == v41) ? (v48 = *(v47 + 24) == v40) : (v48 = 0), v48 || (sub_1D72646CC() & 1) != 0))
    {

LABEL_4:
    }

    else
    {

      sub_1D5D03180(v7, v8, v9);

      v49 = swift_isUniquelyReferenced_nonNull_native();
      v50 = *v5;
      if ((v49 & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v115 = swift_allocObject();
        swift_beginAccess();
        v116 = v50[2];
        v150 = v50[1];
        v151 = v116;
        *v152 = v50[3];
        *&v152[14] = *(v50 + 62);
        memmove((v115 + 16), v50 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v150, &v146);

        *v5 = v115;
        v50 = v115;
      }

      swift_beginAccess();
      v51 = *(v50 + 2);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 2) = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_1D698F848(0, *(v51 + 2) + 1, 1, v51);
        *(v50 + 2) = v51;
      }

      v54 = *(v51 + 2);
      v53 = *(v51 + 3);
      if (v54 >= v53 >> 1)
      {
        v51 = sub_1D698F848((v53 > 1), v54 + 1, 1, v51);
      }

      *(v51 + 2) = v54 + 1;
      *&v51[8 * v54 + 32] = v42 | 0x4000000000000000;
      *(v50 + 2) = v51;
      swift_endAccess();
      sub_1D5D07BA8(v7, v8, v9);

      v5 = v135;
    }

    v3 = v129;
    goto LABEL_6;
  }

  v136 = v8;
  v12 = v3;
  v13 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v133 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v128 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);
  v16 = *(v13 + 32);
  v17 = *(v13 + 40);
  v18 = *(v13 + 64);
  v19 = *(v13 + 66);
  if (v19)
  {
    v20 = 8;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 & 0xFFFFFFF8 | (v18 >> 11) & 7;
  v131 = v9;
  if (v21 > 4)
  {
    if (v21 <= 6)
    {
      if (v21 != 5)
      {
        v3 = v12;
        v22 = v133;
        if (v17 >> 6)
        {
          if (v17 >> 6 != 1)
          {
            v57 = v17 & 0x3F;
            if (v57 > 1)
            {
              goto LABEL_49;
            }

LABEL_131:
            v5 = v135;
            if (!v57)
            {
              goto LABEL_83;
            }

            v24 = v128;
            if ((~v14 & 0xF000000000000007) != 0)
            {
              *&v150 = *(v13 + 24);

              sub_1D5D03180(v7, v136, v9);

              sub_1D5CFCFAC(v14);
              sub_1D6E5C118(v135);
              if (v3)
              {
                goto LABEL_177;
              }

              v55 = v136;
              goto LABEL_86;
            }

            goto LABEL_80;
          }

LABEL_54:
          v23 = *(v13 + 32);
          v5 = v135;
          if (v23 > 1)
          {
LABEL_55:
            v24 = v128;
            goto LABEL_80;
          }

          goto LABEL_18;
        }

LABEL_70:
        if (*(v13 + 32) > 1u)
        {
          v5 = v135;
          v24 = v128;
          goto LABEL_80;
        }

        v5 = v135;
        v24 = v128;
        if (!*(v13 + 32))
        {
LABEL_80:

          v67 = v7;
          v55 = v136;
          goto LABEL_81;
        }

LABEL_72:
        v55 = v136;
        if ((~v15 & 0xF000000000000007) != 0)
        {
          *&v150 = *(v13 + 16);

          sub_1D5D03180(v7, v136, v9);

          sub_1D5CFCFAC(v15);
          sub_1D6E5C118(v5);
          if (v3)
          {
LABEL_177:
            sub_1D5D07BA8(v7, v136, v9);
          }

          goto LABEL_86;
        }

        v67 = v7;
LABEL_81:
        sub_1D5D03180(v67, v55, v9);
        goto LABEL_84;
      }
    }

    else
    {
      if (v21 != 7)
      {
        v3 = v12;
        v5 = v135;

        v55 = v136;
        sub_1D5D03180(v7, v136, v9);
        v24 = v128;

        v22 = v133;
        goto LABEL_85;
      }

      if (v18 >> 14)
      {
        v125 = v7;
        v126 = *(v13 + 56);
        v127 = *(v13 + 48);
        if (v18 >> 14 == 1)
        {
          *&v150 = *(v13 + 16);
          *(&v150 + 1) = v14;
          *&v151 = v16;
          LOBYTE(v146) = 5;

          sub_1D5D03180(v7, v136, v9);

          sub_1D5E1DCFC(v15, v14, v16, v17, v127, v126, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);
          v58 = sub_1D703E0C8(&v150, &v146);
          v3 = v12;
          if (v12)
          {
            sub_1D5D07BA8(v7, v136, v9);

LABEL_175:
          }

          v59 = v58;
          v60 = swift_allocObject();
          *(v60 + 16) = v15;
          *(v60 + 24) = v14;
          *(v60 + 32) = v59;
          *(v60 + 40) = 0;

          v5 = v135;
          sub_1D6C4D24C(v60 | 0x3000000000000000);

          v22 = v133;
          v24 = v128;
          v55 = v136;
        }

        else
        {
          v121 = v18 & 0x7FF;
          v122 = *(v13 + 24);
          v123 = *(v13 + 16);
          switch((v18 >> 7) & 0xE | (v18 >> 3) & 1)
          {
            case 2u:

              sub_1D5D03180(v7, v136, v9);
              v114 = v18 & 0xF7;

              v22 = v133;

              *&v150 = v15;
              *(&v150 + 1) = v14;
              *&v151 = v16;
              *(&v151 + 1) = v17;
              v103 = v126;
              v104 = v127;
              *v152 = v127;
              *&v152[8] = v126;
              v152[16] = v114;
              sub_1D6292190(v135);
              v3 = v12;
              if (!v12)
              {
                v55 = v136;
                goto LABEL_128;
              }

              sub_1D5D07BA8(v125, v136, v131);

              goto LABEL_175;
            case 3u:
            case 4u:
              *&v150 = *(v13 + 16);
              *(&v150 + 1) = v14;
              *&v151 = v16;
              LOBYTE(v146) = 5;
              v124 = v16;
              v108 = v14;

              sub_1D5D03180(v7, v136, v9);

              sub_1D5E1DCFC(v15, v14, v124, v17, v127, v126, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

              v109 = sub_1D703E0C8(&v150, &v146);
              if (v12)
              {
                sub_1D5D07BA8(v7, v136, v9);
              }

              v110 = v109;

              v111 = swift_allocObject();
              *(v111 + 16) = v123;
              *(v111 + 24) = v14;
              *(v111 + 32) = v110;
              *(v111 + 40) = 0;
              sub_1D6C4D24C(v111 | 0x3000000000000000);

              *&v150 = v123;
              *(&v150 + 1) = v14;
              *&v151 = v124;
              LOBYTE(v146) = 5;
              sub_1D5E1DCFC(v123, v14, v124, v17, v127, v126, v18, v19, sub_1D5E1DA1C, sub_1D5E1DA1C, sub_1D5E1DA6C);

              v3 = 0;
              v112 = sub_1D703E0C8(&v150, &v146);

              v113 = swift_allocObject();
              *(v113 + 16) = v123;
              *(v113 + 24) = v108;
              *(v113 + 32) = v112;
              *(v113 + 40) = 0;
              sub_1D6C4D24C(v113 | 0x3000000000000000);

              v55 = v136;
              v22 = v133;
              v16 = v124;
LABEL_127:
              v103 = v126;
              v104 = v127;
LABEL_128:
              *&v150 = v123;
              *(&v150 + 1) = v122;
              *&v151 = v16;
              *(&v151 + 1) = v17;
              *v152 = v104;
              *&v152[8] = v103;
              *&v152[16] = v121;
              v5 = v135;
              sub_1D62099A8(v135);
              if (v3)
              {
                sub_1D5D07BA8(v125, v55, v131);
              }

              v24 = v128;
              v7 = v125;
              break;
            default:

              v55 = v136;
              sub_1D5D03180(v7, v136, v9);

              v22 = v133;

              v3 = v12;
              goto LABEL_127;
          }
        }

        goto LABEL_86;
      }
    }

    v55 = v136;
    sub_1D5D03180(v7, v136, v9);
    v24 = v128;

    v22 = v133;

    v3 = v12;
    v5 = v135;
    goto LABEL_86;
  }

  v3 = v12;
  if (v21 <= 1)
  {
    v22 = v133;
    if (v21)
    {
      goto LABEL_50;
    }

    v56 = (v17 >> 3) & 7;
    if (v56 <= 1)
    {
      v5 = v135;
      if (v56)
      {
        goto LABEL_83;
      }

LABEL_17:
      v23 = *(v13 + 32);
      if (v23 > 1)
      {
        goto LABEL_55;
      }

LABEL_18:
      v24 = v128;
      if (!v23)
      {
        goto LABEL_80;
      }

      goto LABEL_72;
    }

    if (v56 != 2 && v56 != 3 && v17 >> 6)
    {
      if (v17 >> 6 != 1)
      {
        v57 = v17 & 7;
        if (v57 > 1)
        {
LABEL_49:
          v5 = v135;
          goto LABEL_83;
        }

        goto LABEL_131;
      }

      goto LABEL_54;
    }

    goto LABEL_70;
  }

  v22 = v133;
  if (v21 == 2)
  {
LABEL_50:

    v55 = v136;
    sub_1D5D03180(v7, v136, v9);
    v24 = v128;

    v5 = v135;
    goto LABEL_86;
  }

  v5 = v135;
  if (v21 == 3)
  {
    goto LABEL_17;
  }

LABEL_83:

  v55 = v136;
  sub_1D5D03180(v7, v136, v9);
  v24 = v128;
LABEL_84:

LABEL_85:

LABEL_86:
  sub_1D6277BD0(v5, v22);
  if (!v3)
  {
    if (!(v24 >> 62))
    {
      v81 = *(v24 + 32);
      v150 = *(v24 + 16);
      v151 = v81;
      v82 = *(v24 + 48);
      *&v152[16] = *(v24 + 64);
      *v152 = v82;
      v83 = v152[16];
      switch((2 * v152[17]) | ((v152[16] & 8) != 0))
      {
        case 2:
          v134 = *v152;
          *(&v81 + 1) = *(&v151 + 1);
          v130 = v81;
          v139 = v150;

          v105 = v130;
          v106 = v134;
          v107 = v139;
LABEL_146:
          v146 = v107;
          v147 = v105;
          v148 = v106;
          v149 = v83 & 0xF7;
          sub_1D6292190(v5);
          sub_1D5D07BA8(v7, v55, v131);

          goto LABEL_147;
        case 3:
        case 4:
          v100 = *(&v150 + 1);
          v141 = v150;
          *&v142 = v81;
          v145 = 5;
          v138 = v150;

          sub_1D5FD78CC(&v150, &v146);

          v101 = sub_1D703E0C8(&v141, &v145);

          v102 = swift_allocObject();
          *(v102 + 16) = v138;
          *(v102 + 24) = v100;
          *(v102 + 32) = v101;
          *(v102 + 40) = 0;
          sub_1D6C4D24C(v102 | 0x3000000000000000);

          v83 = v152[16];
          switch((2 * v152[17]) | ((v152[16] & 8) != 0))
          {
            case 2:
              v105 = v151;
              v106 = *v152;
              v107 = v150;
              v5 = v135;
              goto LABEL_146;
            case 12:
              sub_1D5D07BA8(v7, v55, v131);

              v5 = v135;
              goto LABEL_144;
            default:
              sub_1D5D07BA8(v7, v55, v131);

              goto LABEL_123;
          }

        case 12:

          sub_1D5D07BA8(v7, v55, v131);

LABEL_144:

          goto LABEL_147;
        default:
          sub_1D5D07BA8(v7, v55, v131);

          goto LABEL_140;
      }
    }

    if (v24 >> 62 == 1)
    {
      v68 = v24 & 0x3FFFFFFFFFFFFFFFLL;
      v69 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v70 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v71 = *(v68 + 32);
      v73 = *(v69 + 16);
      v72 = *(v69 + 24);
      v74 = *(v69 + 32);
      v75 = *(v69 + 40);
      v76 = *(v69 + 64);
      if (*(v69 + 66))
      {
        v77 = 8;
      }

      else
      {
        v77 = 0;
      }

      v78 = v77 & 0xFFFFFFF8 | (v76 >> 11) & 7;
      if (v78 > 4)
      {
        v79 = v7;
        if (v78 <= 6)
        {
          v80 = v55;
          if (v78 == 5)
          {
            goto LABEL_138;
          }

          *&v150 = *(v69 + 16);
          *(&v150 + 1) = v72;
          *&v151 = v74;
          BYTE8(v151) = v75;

          sub_1D628E970(v135);
          goto LABEL_139;
        }

        if (v78 != 7)
        {
          v80 = v55;
          goto LABEL_138;
        }

        *&v150 = *(v69 + 16);
        *(&v150 + 1) = v72;
        *&v151 = v74;
        *(&v151 + 1) = v75;
        *v152 = *(v69 + 48);
        *&v152[16] = v76 & 0xC7FF;

        sub_1D690A374(v135);
      }

      else
      {
        if (v78 > 1)
        {
          v79 = v7;
          if (v78 != 2)
          {
            v80 = v55;
            if (v78 == 3)
            {
              goto LABEL_96;
            }

LABEL_138:

            goto LABEL_139;
          }

LABEL_137:
          v80 = v55;
          goto LABEL_138;
        }

        if (v78)
        {
          v79 = v7;
          goto LABEL_137;
        }

        v99 = (v75 >> 3) & 7;
        if (v99 <= 1)
        {
          v79 = v7;
          v80 = v55;
          if (v99)
          {
            goto LABEL_138;
          }

LABEL_96:
          *&v150 = v73;
          *(&v150 + 1) = v72;
          LOBYTE(v151) = v74;

          sub_1D628E900(v135);
LABEL_139:
          sub_1D6277BD0(v135, v70);
          *&v150 = v71;

          sub_1D6EFC7A4(v135);
          v5 = v135;
          sub_1D5D07BA8(v79, v80, v131);

LABEL_140:

          goto LABEL_6;
        }

        if (v99 == 2 || v99 == 3)
        {
          *&v150 = v73;
          *(&v150 + 1) = v72;
          LOBYTE(v151) = v74;

          sub_1D628E900(v135);
        }

        else
        {
          *&v150 = v73;
          *(&v150 + 1) = v72;
          *&v151 = v74;
          BYTE8(v151) = v75 & 0xC7;

          sub_1D628E970(v135);
        }

        v79 = v7;
      }

      v80 = v55;
      goto LABEL_139;
    }

    v84 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v85 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    *(v86 + 24) = v85;
    v87 = v86 | 0x4000000000000000;
    v88 = *v135;
    swift_beginAccess();
    v89 = *(v88 + 16);
    v90 = *(v89 + 16);
    if (v90)
    {
      v91 = *(v89 + 8 * v90 + 24);

      v92 = sub_1D60E14A8(v91, v87);
      v3 = 0;

      if (v92)
      {

        sub_1D5D07BA8(v7, v55, v131);

LABEL_123:

        goto LABEL_124;
      }
    }

    else
    {
    }

    v93 = swift_isUniquelyReferenced_nonNull_native();
    v94 = *v135;
    if ((v93 & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v117 = swift_allocObject();
      swift_beginAccess();
      v118 = v94[2];
      v150 = v94[1];
      v151 = v118;
      *v152 = v94[3];
      *&v152[14] = *(v94 + 62);
      memmove((v117 + 16), v94 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v150, &v146);

      *v135 = v117;
      v94 = v117;
    }

    swift_beginAccess();
    v95 = *(v94 + 2);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    *(v94 + 2) = v95;
    if ((v96 & 1) == 0)
    {
      v95 = sub_1D698F848(0, *(v95 + 2) + 1, 1, v95);
      *(v94 + 2) = v95;
    }

    v98 = *(v95 + 2);
    v97 = *(v95 + 3);
    if (v98 >= v97 >> 1)
    {
      v95 = sub_1D698F848((v97 > 1), v98 + 1, 1, v95);
    }

    *(v95 + 2) = v98 + 1;
    *&v95[8 * v98 + 32] = v87;
    *(v94 + 2) = v95;
    swift_endAccess();
    sub_1D5D07BA8(v7, v55, v131);

LABEL_124:
    v5 = v135;
    goto LABEL_6;
  }

  sub_1D5D07BA8(v7, v55, v131);
}

uint64_t sub_1D627981C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 56);
    do
    {
      if ((*v6 & 0x8000000000000000) != 0)
      {
        v7 = *(v6 - 3);
        v8 = *(v6 - 2);
        v9 = *(v6 - 8);
        v10 = *((*v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v10 + 24);
        sub_1D5D03180(v7, v8, v9);

        sub_1D627981C(v5, v11);
        if (v3)
        {

          sub_1D5D07BA8(v7, v8, v9);
        }

        sub_1D628E5E4(v5, *(v10 + 32));
        v3 = 0;

        sub_1D5D07BA8(v7, v8, v9);
      }

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6279934(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 40);
    v89 = result;
    while (1)
    {
      v6 = *v5;
      *&v86 = *(v5 - 1);

      swift_retain_n();
      sub_1D6285C00(v4);
      v7 = v2;
      if (v2)
      {
      }

      if (v6 < 0)
      {
        break;
      }

      v8 = *(v6 + 16);
      v9 = *(v6 + 24);

      sub_1D6279934(v4, v8);
      if (v9 < 0)
      {
        if (!*((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
        {
        }

        else
        {
          v24 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v25 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          *&v86 = *((v9 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v26 = v86;
          *(&v86 + 1) = v24;
          *&v87 = v25;
          v85[0] = 6;

          sub_1D62B6240(v26, v24, v25, 2);
          v27 = sub_1D703E0C8(&v86, v85);
          v28 = swift_allocObject();
          *(v28 + 16) = v26;
          *(v28 + 24) = v24;
          *(v28 + 32) = v27;
          *(v28 + 40) = 0;

          v4 = v89;
          sub_1D6C4D24C(v28 | 0x3000000000000000);
        }

        goto LABEL_7;
      }

      v84 = v3;
      v10 = *(v9 + 16);
      v11 = *(v9 + 24);

      sub_1D6279934(v4, v10);
      if (v11 < 0)
      {
        if (!*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
        {
        }

        else
        {
          v29 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v30 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          *&v86 = *((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          v31 = v86;
          *(&v86 + 1) = v29;
          *&v87 = v30;
          v85[0] = 6;

          sub_1D62B6240(v31, v29, v30, 2);
          v32 = sub_1D703E0C8(&v86, v85);
          v33 = swift_allocObject();
          *(v33 + 16) = v31;
          *(v33 + 24) = v29;
          *(v33 + 32) = v32;
          *(v33 + 40) = 0;

          v4 = v89;
          sub_1D6C4D24C(v33 | 0x3000000000000000);
        }

        goto LABEL_6;
      }

      v12 = v4;
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);

      sub_1D6279934(v12, v13);
      if (v14 < 0)
      {
        v45 = v14 & 0x7FFFFFFFFFFFFFFFLL;
        if (*((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) && *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) != 1)
        {
          v46 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
          v47 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
          v48 = *((v14 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          *&v86 = *(v45 + 16);
          *(&v86 + 1) = v46;
          *&v87 = v47;
          v85[0] = 6;

          sub_1D62B6240(v48, v46, v47, 2);
          v79 = sub_1D703E0C8(&v86, v85);
          v49 = swift_allocObject();
          *(v49 + 16) = v48;
          *(v49 + 24) = v46;
          *(v49 + 32) = v79;
          *(v49 + 40) = 0;

          v4 = v89;
          sub_1D6C4D24C(v49 | 0x3000000000000000);

          goto LABEL_37;
        }
      }

      else
      {
        v15 = *(v14 + 16);
        v16 = *(v14 + 24);

        sub_1D6279934(v89, v15);
        if (v16 < 0)
        {
          v50 = v16 & 0x7FFFFFFFFFFFFFFFLL;
          if (*(v50 + 40) && *(v50 + 40) != 1)
          {
            v51 = *(v50 + 24);
            v81 = *(v50 + 32);
            *&v86 = *(v50 + 16);
            v52 = v86;
            *(&v86 + 1) = v51;
            *&v87 = v81;
            v85[0] = 6;

            sub_1D62B6240(v52, v51, v81, 2);
            v78 = sub_1D703E0C8(&v86, v85);
            v53 = swift_allocObject();
            *(v53 + 16) = v52;
            *(v53 + 24) = v51;
            *(v53 + 32) = v78;
            *(v53 + 40) = 0;

            v54 = v89;
            sub_1D6C4D24C(v53 | 0x3000000000000000);

            v4 = v54;
LABEL_37:

LABEL_38:

            goto LABEL_6;
          }
        }

        else
        {
          v17 = *(v16 + 16);
          v18 = *(v16 + 24);

          sub_1D6279934(v89, v17);
          if ((v18 & 0x8000000000000000) == 0)
          {
            v19 = *(v18 + 16);
            v20 = *(v18 + 24);

            sub_1D6279934(v89, v19);
            if ((v20 & 0x8000000000000000) == 0)
            {
              v21 = *(v20 + 16);
              v22 = *(v20 + 24);

              v23 = v89;
              sub_1D6279934(v89, v21);
              *&v86 = v22;

              sub_1D629D0A0(v23);
              v7 = 0;

              goto LABEL_17;
            }

            v68 = v20 & 0x7FFFFFFFFFFFFFFFLL;
            v7 = 0;
            if (*((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) && *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) != 1)
            {
              v69 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
              v70 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
              v71 = *((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
              *&v86 = *(v68 + 16);
              *(&v86 + 1) = v69;
              *&v87 = v70;
              v85[0] = 6;

              sub_1D62B6240(v71, v69, v70, 2);
              v77 = sub_1D703E0C8(&v86, v85);
              v72 = swift_allocObject();
              v72[2] = v71;
              v72[3] = v69;
              v72[4] = v77;
              v72[5] = 0;
              v73 = v72;

              sub_1D6C4D24C(v73 | 0x3000000000000000);

LABEL_17:
            }

            else
            {
            }

            goto LABEL_5;
          }

          v62 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
          v63 = *((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
          if (*((v18 & 0x7FFFFFFFFFFFFFFFLL) + 0x28))
          {
            v7 = 0;
            if (v63 != 1)
            {
              v64 = v62[3];
              v82 = v62[4];
              *&v86 = v62[2];
              v65 = v86;
              *(&v86 + 1) = v64;
              *&v87 = v82;
              v85[0] = 6;

              sub_1D62B6240(v65, v64, v82, 2);
              v76 = sub_1D703E0C8(&v86, v85);
              v66 = swift_allocObject();
              *(v66 + 16) = v65;
              *(v66 + 24) = v64;
              *(v66 + 32) = v76;
              *(v66 + 40) = 0;

              v67 = v89;
              sub_1D6C4D24C(v66 | 0x3000000000000000);

              v4 = v67;

              goto LABEL_38;
            }
          }

          else
          {
            v7 = 0;
          }
        }
      }

LABEL_5:
      v4 = v89;
LABEL_6:
      v3 = v84;
LABEL_7:
      v5 += 2;

      --v3;
      v2 = v7;
      if (!v3)
      {
        return result;
      }
    }

    if (!*((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) || *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x28) == 1)
    {

      goto LABEL_7;
    }

    v84 = v3;
    v35 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v36 = *((v6 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    *&v86 = v35;
    *(&v86 + 1) = v34;
    *&v87 = v36;
    v85[0] = 6;
    sub_1D62B6240(v35, v34, v36, 2);

    sub_1D62B6240(v35, v34, v36, 2);
    v37 = sub_1D703E0C8(&v86, v85);
    v38 = swift_allocObject();
    *(v38 + 16) = v35;
    *(v38 + 24) = v34;
    *(v38 + 32) = v37;
    *(v38 + 40) = 0;
    v39 = v38 | 0x3000000000000000;
    v40 = *v89;
    swift_beginAccess();
    v41 = *(v40 + 16);
    v42 = *(v41 + 16);
    v83 = v39;
    if (v42)
    {
      v43 = *(v41 + 8 * v42 + 24);

      v44 = sub_1D60E14A8(v43, v39);

      if (v44)
      {

LABEL_49:
        sub_1D62B628C(v35, v34, v36, 2);

        goto LABEL_5;
      }
    }

    else
    {
    }

    v55 = v89;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *v55;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v74 = swift_allocObject();
      swift_beginAccess();
      v75 = v57[2];
      v86 = v57[1];
      v87 = v75;
      v88[0] = v57[3];
      *(v88 + 14) = *(v57 + 62);
      memmove((v74 + 16), v57 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v86, v85);

      *v89 = v74;
      v57 = v74;
    }

    swift_beginAccess();
    v58 = *(v57 + 2);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 2) = v58;
    v80 = v57;
    if ((v59 & 1) == 0)
    {
      v58 = sub_1D698F848(0, *(v58 + 2) + 1, 1, v58);
      *(v57 + 2) = v58;
    }

    v61 = *(v58 + 2);
    v60 = *(v58 + 3);
    if (v61 >= v60 >> 1)
    {
      v58 = sub_1D698F848((v60 > 1), v61 + 1, 1, v58);
    }

    *(v58 + 2) = v61 + 1;
    *&v58[8 * v61 + 32] = v83;
    *(v80 + 2) = v58;
    swift_endAccess();
    goto LABEL_49;
  }

  return result;
}

uint64_t sub_1D627A76C(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = 0;
    v7 = a2 + 32;
    v91 = a2 + 32;
    v59 = v4;
    do
    {
      v8 = (v7 + 136 * v6);
      v9 = v8[5];
      v10 = v8[7];
      v86 = v8[6];
      v87 = v10;
      v11 = v8[1];
      v12 = v8[3];
      v82 = v8[2];
      v83 = v12;
      v13 = v8[3];
      v14 = v8[5];
      v84 = v8[4];
      v85 = v14;
      v15 = v8[1];
      v80 = *v8;
      v81 = v15;
      v16 = v8[7];
      v89[6] = v86;
      v89[7] = v16;
      v89[2] = v82;
      v89[3] = v13;
      v89[4] = v84;
      v89[5] = v9;
      v88 = *(v8 + 128);
      v90 = *(v8 + 128);
      v89[0] = v80;
      v89[1] = v11;
      v17 = sub_1D5F78DC4(v89);
      if (v17)
      {
        if (v17 == 1)
        {
          v18 = sub_1D5DEA32C(v89);
          v71 = *v18;
          v19 = *(v18 + 64);
          v21 = *(v18 + 16);
          v20 = *(v18 + 32);
          v74 = *(v18 + 48);
          v75 = v19;
          v72 = v21;
          v73 = v20;
          v23 = *(v18 + 96);
          v22 = *(v18 + 112);
          v24 = *(v18 + 80);
          v79 = *(v18 + 128);
          v77 = v23;
          v78 = v22;
          v76 = v24;
          if (sub_1D6011234(&v71) == 1)
          {
            *&v60[0] = *sub_1D5D756B8(&v71);
            v64 = v82;
            v65 = v83;
            v62 = v80;
            v63 = v81;
            v70 = v88;
            v68 = v86;
            v69 = v87;
            v66 = v84;
            v67 = v85;
            v25 = sub_1D5DEA32C(&v62);
            sub_1D5ECEF80(&v80, v61);
            sub_1D5F78E88(v25, v61);
            sub_1D62895DC(v5);
            if (v3)
            {
              sub_1D5ECEFDC(&v80);
            }

            sub_1D5ECEFDC(&v80);
          }

          else
          {
            v32 = sub_1D5D756B8(&v71);
            v33 = v32[3];
            v35 = *v32;
            v34 = v32[1];
            v60[2] = v32[2];
            v60[3] = v33;
            v60[0] = v35;
            v60[1] = v34;
            v36 = v32[7];
            v38 = v32[4];
            v37 = v32[5];
            v60[6] = v32[6];
            v60[7] = v36;
            v60[4] = v38;
            v60[5] = v37;
            if (sub_1D6011280(v60) != 1)
            {
              v52 = sub_1D5D756C8(v60);
              v53 = *v52;
              v47 = v52[6];
              v54 = v52[7];
              v55 = *(*v52 + 16);
              v68 = v86;
              v69 = v87;
              v70 = v88;
              v66 = v84;
              v67 = v85;
              v64 = v82;
              v65 = v83;
              v62 = v80;
              v63 = v81;
              v56 = sub_1D5DEA32C(&v62);
              sub_1D5F78E88(v56, v61);
              if (v55)
              {
                v57 = (v53 + 32);
                do
                {
                  v58 = *v57++;
                  *&v61[0] = v58;

                  sub_1D62895DC(v5);
                  if (v3)
                  {
                    goto LABEL_39;
                  }
                }

                while (--v55);
              }

              if (!v47)
              {
                result = sub_1D5ECEFDC(&v80);
                v4 = v59;
                v7 = v91;
                goto LABEL_4;
              }

              sub_1D6273544(v5, v47);
              v4 = v59;
              v7 = v91;
              if (v3)
              {
LABEL_43:
                sub_1D5CDE22C(v47);
                return sub_1D5ECEFDC(&v80);
              }

              sub_1D6273544(v5, v54);
              v3 = 0;
              sub_1D5CDE22C(v47);
              goto LABEL_36;
            }

            v39 = *(sub_1D5D756C8(v60) + 112);
            v40 = *(v39 + 16);
            v70 = v88;
            v62 = v80;
            v63 = v81;
            v64 = v82;
            v65 = v83;
            v66 = v84;
            v67 = v85;
            v68 = v86;
            v69 = v87;
            v41 = sub_1D5DEA32C(&v62);
            sub_1D5F78E88(v41, v61);
            if (v40)
            {
              v42 = (v39 + 32);
              while (1)
              {
                v43 = *v42++;
                *&v61[0] = v43;

                sub_1D62895DC(v5);
                if (v3)
                {
                  break;
                }

                if (!--v40)
                {
                  goto LABEL_21;
                }
              }

LABEL_39:

              return sub_1D5ECEFDC(&v80);
            }

LABEL_21:
            result = sub_1D5ECEFDC(&v80);
            v7 = v91;
          }
        }

        else
        {
          result = sub_1D5DEA32C(v89);
        }
      }

      else
      {
        v26 = sub_1D5DEA32C(v89);
        sub_1D5F78F40(v26, v61);
        v66 = v61[4];
        v67 = v61[5];
        v68 = v61[6];
        v69 = v61[7];
        v62 = v61[0];
        v63 = v61[1];
        v64 = v61[2];
        v65 = v61[3];
        if (sub_1D6011280(&v62) == 1)
        {
          v27 = *(sub_1D5D756C8(&v62) + 112);
          v28 = *(v27 + 16);
          v79 = v88;
          v71 = v80;
          v72 = v81;
          v73 = v82;
          v74 = v83;
          v75 = v84;
          v76 = v85;
          v77 = v86;
          v78 = v87;
          v29 = sub_1D5DEA32C(&v71);
          sub_1D5F78EE4(v29, v60);
          if (v28)
          {
            v30 = (v27 + 32);
            do
            {
              v31 = *v30++;
              *&v60[0] = v31;

              sub_1D62895DC(v5);
              if (v3)
              {
                goto LABEL_39;
              }
            }

            while (--v28);
          }

LABEL_36:
          result = sub_1D5ECEFDC(&v80);
          goto LABEL_4;
        }

        v44 = sub_1D5D756C8(&v62);
        v45 = *v44;
        v47 = v44[6];
        v46 = v44[7];
        v48 = *(*v44 + 16);
        v77 = v86;
        v78 = v87;
        v79 = v88;
        v75 = v84;
        v76 = v85;
        v73 = v82;
        v74 = v83;
        v71 = v80;
        v72 = v81;
        v49 = sub_1D5DEA32C(&v71);
        sub_1D5F78EE4(v49, v60);
        if (v48)
        {
          v50 = (v45 + 32);
          do
          {
            v51 = *v50++;
            *&v60[0] = v51;

            sub_1D62895DC(v5);
            if (v3)
            {
              goto LABEL_39;
            }
          }

          while (--v48);
        }

        v7 = v91;
        if (v47)
        {

          sub_1D6273544(v5, v47);
          v4 = v59;
          if (v3)
          {
            goto LABEL_43;
          }

          sub_1D6273544(v5, v46);
          v3 = 0;
          sub_1D5CDE22C(v47);
          result = sub_1D5ECEFDC(&v80);
        }

        else
        {
          result = sub_1D5ECEFDC(&v80);
          v4 = v59;
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

void sub_1D627AD20(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v66 = a1;
  v5 = type metadata accessor for FormatPropertyDefinition(0);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (!v9)
  {
    return;
  }

  v10 = 0;
  v11 = a2 + 32;
  v44 = v8;
  v46 = v9;
  v45 = a2 + 32;
  while (1)
  {
    v14 = v11 + 88 * v10;
    v15 = *(v14 + 48);
    v62 = *(v14 + 32);
    v63 = v15;
    v64 = *(v14 + 64);
    v65 = *(v14 + 80);
    LOBYTE(v16) = v65;
    v17 = *(v14 + 16);
    v61[0] = *v14;
    v61[1] = v17;
    v18 = v65 >> 6;
    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = v62;
    v20 = v63;
    v21 = *(&v64 + 1);
    v12 = v64;
    if (v18 != 1)
    {
      v51 = v10;
      v50 = v3;
      v31 = v65;
      v16 = *(v62 + 16);
      sub_1D62B7D1C(v61, v60);
      v47 = v20;
      v48 = v12;
      v52 = v21;
      v49 = v31;
      sub_1D618EC0C(v19, *(&v19 + 1), v20, *(&v20 + 1), v12, v21, v31);
      if (v16)
      {
        v22 = 0;
        v3 = v50;
        v32 = v44;
        v12 = *(&v19 + 1);
        v13 = v19;
        v11 = v45;
        while (v22 < *(v19 + 16))
        {
          sub_1D62B50EC(v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v22, v32, type metadata accessor for FormatPropertyDefinition);
          sub_1D629E924(v66);
          if (v3)
          {
            sub_1D62B51D0(v32, type metadata accessor for FormatPropertyDefinition);
            sub_1D62B7D78(v61);
            sub_1D60CF6F4(v19, *(&v19 + 1), v47, *(&v47 + 1), v48, v52, v49);
            return;
          }

          ++v22;
          sub_1D62B51D0(v32, type metadata accessor for FormatPropertyDefinition);
          if (v16 == v22)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_67:

LABEL_68:
        v42 = v52;
        sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
        sub_1D62B7D78(v61);
        goto LABEL_69;
      }

      v3 = v50;
      v12 = *(&v19 + 1);
      v13 = v19;
      v11 = v45;
LABEL_4:
      sub_1D62B7D78(v61);
      sub_1D60CF6F4(v13, v12, v47, *(&v47 + 1), v48, v52, v49);
      goto LABEL_5;
    }

    if (v65)
    {
      goto LABEL_6;
    }

    v13 = *(&v62 + 1);
    v50 = v62;
    v52 = *(&v64 + 1);
    v22 = v63;
    v23 = *(v63 + 16);
    v25 = *(v63 + 24);
    v24 = *(v63 + 32);
    v26 = *(v63 + 40);
    v27 = *(v63 + 64);
    if (*(v63 + 66))
    {
      v28 = 8;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28 & 0xFFFFFFF8 | (v27 >> 11) & 7;
    v51 = v10;
    if (v29 > 4)
    {
      if (v29 > 6)
      {
        if (v29 == 7)
        {
          v54 = v63;
          v55 = v25;
          v56 = v24;
          v57 = v26;
          v58 = *(v63 + 48);
          v59 = v27 & 0xC7FF;
          sub_1D62B7D1C(v61, v60);
          v35 = v52;
          sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
          sub_1D618ECBC(v22, *(&v20 + 1), v12, v35, 0);
          sub_1D690A374(v66);
          if (v3)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_53;
      }

      if (v29 == 5)
      {
        goto LABEL_53;
      }

      if (v26 >> 6 && v26 >> 6 != 1)
      {
        v34 = v26 & 0x3F;
        if (v34 <= 1)
        {
LABEL_57:
          if (v34 && (~v25 & 0xF000000000000007) != 0)
          {
            v54 = v25;
            sub_1D62B7D1C(v61, v60);
            v41 = v52;
            sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
            sub_1D618ECBC(v22, *(&v20 + 1), v12, v41, 0);
            sub_1D5CFCFAC(v25);
            sub_1D6E5C118(v66);
            if (v3)
            {
              goto LABEL_67;
            }

            v30 = v52;
            v11 = v45;
            goto LABEL_55;
          }
        }

LABEL_53:
        sub_1D62B7D1C(v61, v60);
        v36 = v50;
        v37 = v13;
        v38 = v22;
        v39 = *(&v20 + 1);
        v40 = v12;
        v30 = v52;
        goto LABEL_54;
      }

      goto LABEL_41;
    }

    if (v29 > 1)
    {
      if (v29 != 3 || v24 > 1u || !v24)
      {
        goto LABEL_53;
      }

      v30 = v52;
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v54 = v63;
        sub_1D62B7D1C(v61, v60);
        sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
        sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
        sub_1D5CFCFAC(v20);
        sub_1D6E5C118(v66);
        if (v3)
        {
          sub_1D62B7D78(v61);
          v42 = v52;
          sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
          goto LABEL_71;
        }

        goto LABEL_62;
      }

      goto LABEL_52;
    }

    if (v29)
    {
      goto LABEL_53;
    }

    v33 = (v26 >> 3) & 7;
    if (v33 <= 1)
    {
      if (v33)
      {
        goto LABEL_53;
      }
    }

    else if (v33 != 2 && v33 != 3)
    {
      if (v26 >> 6 && v26 >> 6 != 1)
      {
        v34 = v26 & 7;
        if (v34 <= 1)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

LABEL_41:
      if (v24 > 1u || !v24)
      {
        goto LABEL_53;
      }

      v30 = v52;
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v54 = v63;
        sub_1D62B7D1C(v61, v60);
        sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
        sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
        sub_1D5CFCFAC(v20);
        sub_1D6E5C118(v66);
        if (v3)
        {
          goto LABEL_67;
        }

LABEL_62:

LABEL_63:
        v30 = v52;
        goto LABEL_55;
      }

      goto LABEL_52;
    }

    if (v24 > 1u || !v24)
    {
      goto LABEL_53;
    }

    v30 = v52;
    if ((~v23 & 0xF000000000000007) != 0)
    {
      break;
    }

LABEL_52:
    sub_1D62B7D1C(v61, v60);
    v36 = v50;
    v37 = v13;
    v38 = v22;
    v39 = *(&v20 + 1);
    v40 = v12;
LABEL_54:
    sub_1D618EC0C(v36, v37, v38, v39, v40, v30, v16);
    sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
LABEL_55:
    sub_1D60CF6F4(v20, v13, v22, *(&v20 + 1), v12, v30, v16);
    sub_1D62B7D78(v61);
    sub_1D5E32940(v22, *(&v20 + 1), v12, v30, 0);
LABEL_5:
    v9 = v46;
    v10 = v51;
LABEL_6:
    if (++v10 == v9)
    {
      return;
    }
  }

  v54 = v63;
  sub_1D62B7D1C(v61, v60);
  sub_1D618EC0C(v50, v13, v22, *(&v20 + 1), v12, v30, v16);
  sub_1D618ECBC(v22, *(&v20 + 1), v12, v30, 0);
  sub_1D5CFCFAC(v20);
  sub_1D6E5C118(v66);
  if (!v3)
  {
    goto LABEL_62;
  }

  v42 = v52;
  sub_1D60CF6F4(v50, v13, v22, *(&v20 + 1), v12, v52, v16);
  sub_1D62B7D78(v61);
LABEL_71:

LABEL_69:
  sub_1D5E32940(v22, *(&v20 + 1), v12, v42, 0);
}

uint64_t sub_1D627B648(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 64); ; i += 5)
    {
      v6 = *i;

      swift_bridgeObjectRetain_n();
      sub_1D626DB9C(v4, v6);
      if (v2)
      {
        break;
      }

      swift_bridgeObjectRelease_n();

      if (!--v3)
      {
        return result;
      }
    }

    swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_1D627B710(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v5, v6);
  v238 = (&v232 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v237 = (&v232 - v11);
  v12 = *(a2 + 16);
  if (!v12)
  {
    return;
  }

  v236 = v10;
  v13 = (a2 + 56);
  v243 = a1;
  while (1)
  {
    v15 = *(v13 - 3);
    v16 = *(v13 - 2);
    LODWORD(v17) = *(v13 - 8);
    v18 = *v13;
    v19 = *v13 >> 61;
    if (v19 <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      v244 = v13;
      v38 = v16;
      v39 = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v40 = v17;
      v42 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v246 = v15;
      v43 = v38;
      v262 = v40;
      sub_1D5D03180(v15, v38, v40);
      v44 = (v41 & 0x1FFFFFFFFFFFFFFFLL);

      v242 = v39;

      sub_1D627EC58(a1, v42);
      if (v2)
      {

        v224 = v246;
        v225 = v43;
        v226 = v262;
        goto LABEL_257;
      }

      v45 = v41 >> 61;
      if ((v41 >> 61) > 1)
      {
        v46 = v43;
        if (v45 != 2)
        {
          if (v45 != 3)
          {

            v115 = v246;
            v116 = v43;
            v117 = v262;
            goto LABEL_228;
          }

          v48 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v47 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v49 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v50 = *(v48 + 16);
          v51 = *(v48 + 24);
          v52 = *(v48 + 32);
          v53 = *(v48 + 40);
          v54 = *(v48 + 64);
          if (*(v48 + 66))
          {
            v55 = 8;
          }

          else
          {
            v55 = 0;
          }

          v56 = v55 & 0xFFFFFFF8 | (v54 >> 11) & 7;
          v57 = v262;
          if (v56 <= 3)
          {
            if ((v56 - 1) < 2)
            {
              goto LABEL_227;
            }

            v59 = v46;
            if (v56)
            {
              if (*(v48 + 32) != 1 || (v50 & 0xF000000000000007) == 0xF000000000000007)
              {
                v57 = v262;
                goto LABEL_227;
              }

              *(&v240 + 1) = v47;
LABEL_225:
              *&v247 = v50;
              goto LABEL_226;
            }

            *(&v240 + 1) = v44[4];
            v141 = v47;
            *&v247 = v50;
            *(&v247 + 1) = v51;
            *&v248 = v52;
            BYTE8(v248) = v53;
            sub_1D628E820(a1);
          }

          else
          {
            if (((1 << v56) & 0x330) != 0)
            {
              goto LABEL_227;
            }

            if (v56 == 6)
            {
              if (!(v53 >> 6) || v53 >> 6 == 1)
              {
                if (*(v48 + 32) == 1 && (v50 & 0xF000000000000007) != 0xF000000000000007)
                {
                  *(&v240 + 1) = v47;
                  v59 = v46;
                  goto LABEL_225;
                }

LABEL_227:
                sub_1D627B710(a1, v47);
                sub_1D6297730(a1, v49);

                v115 = v246;
                v116 = v46;
                v117 = v57;
LABEL_228:
                sub_1D5D07BA8(v115, v116, v117);

                v13 = v244;
                v2 = 0;
                goto LABEL_6;
              }

              if ((v53 & 0x3F) != 1 || (v51 & 0xF000000000000007) == 0xF000000000000007)
              {
                goto LABEL_227;
              }

              *(&v240 + 1) = v47;
              v59 = v46;
              *&v247 = v51;
LABEL_226:

              sub_1D6E5C118(a1);

              v46 = v59;
              v57 = v262;
              v47 = *(&v240 + 1);
              goto LABEL_227;
            }

            *(&v240 + 1) = v44[4];
            v141 = v47;
            v59 = v46;
            *&v247 = v50;
            *(&v247 + 1) = v51;
            *&v248 = v52;
            *(&v248 + 1) = v53;
            v249[0] = *(v48 + 48);
            LOWORD(v249[1]) = v54 & 0xC7FF;
            sub_1D690A374(a1);
          }

          v46 = v59;
          v57 = v262;
          v47 = v141;
          v49 = *(&v240 + 1);
          goto LABEL_227;
        }

        v114 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_1D627EC58(a1, *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
        sub_1D6297730(a1, v114);

        sub_1D5D07BA8(v246, v43, v262);

LABEL_154:
        v13 = v244;
        v2 = 0;
        goto LABEL_6;
      }

      v245 = v43;
      if (v45)
      {
        v118 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v120 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v119 = v44[6];
        v122 = v44[7];
        v121 = v44[8];
        v123 = v44[10];
        v124 = (~v118 & 0xF000000000000007) == 0 && (v120 & 7) == 7;
        v241 = v42;
        if (!v124)
        {
          v234 = v122;
          v235 = v123;
          *&v240 = v119;
          *(&v240 + 1) = v121;
          v125 = v44[2];
          v126 = v44[4];
          if ((v120 & 4) != 0)
          {
            *&v247 = v44[2];
            v239 = v126;
            sub_1D62B7098(v125, v118, v126, v120);
            sub_1D6E5C118(v243);
            sub_1D62B7110(v125, v118, v239, v120);
          }

          else
          {
            v239 = v12;
            v127 = v126;
            sub_1D62B7098(v125, v118, v126, v120);
            v128 = v243;
            v233 = v125;
            sub_1D6282658(v243, v125);
            sub_1D626CB38(v128, v118, v127);
            sub_1D62B7110(v233, v118, v127, v120);
            v12 = v239;
          }

          v121 = *(&v240 + 1);
          v119 = v240;
          v122 = v234;
          v123 = v235;
        }

        v173 = v262;
        if ((v119 & 0x3000000000000007 & v121) == 0x3000000000000007)
        {
          v174 = v245;
        }

        else
        {
          *&v247 = v119;
          *(&v247 + 1) = v122;
          *&v248 = v121;
          v175 = v119;
          v176 = v121;
          sub_1D62B6FC0(v119, v122, v121);
          sub_1D62975F8(v243);
          sub_1D62B703C(v175, v122, v176);
          v174 = v245;
          v173 = v262;
        }

        sub_1D627DA04(v243, v123);

        sub_1D5D07BA8(v246, v174, v173);
LABEL_153:

        a1 = v243;
        goto LABEL_154;
      }

      v89 = *(v41 + 16);
      v91 = *(v41 + 40);
      v90 = *(v41 + 48);
      v92 = *(v41 + 64);
      *&v240 = *(v41 + 56);
      *(&v240 + 1) = v90;
      v93 = *(v41 + 72);
      if ((v91 & 4) != 0)
      {
        *&v247 = v89;
        sub_1D6E5C118(v243);
        if ((v92 & 0x2000000000000000) == 0)
        {
          goto LABEL_104;
        }

LABEL_62:
        *&v247 = *(&v240 + 1);
        a1 = v243;
        sub_1D6297BE8(v243);
        v100 = v262;
      }

      else
      {
        v239 = v92;
        v241 = v42;
        v94 = v93;
        v95 = v12;
        v98 = (v41 + 24);
        v96 = *(v41 + 24);
        v97 = v98[1];
        v99 = v243;
        sub_1D6282658(v243, v89);
        sub_1D626CB38(v99, v96, v97);
        v12 = v95;
        v93 = v94;
        v92 = v239;
        if ((v239 & 0x2000000000000000) != 0)
        {
          goto LABEL_62;
        }

LABEL_104:
        v139 = v92;
        v140 = *(*(&v240 + 1) + 32);
        v247 = *(*(&v240 + 1) + 16);
        v248 = v140;
        v249[0] = *(*(&v240 + 1) + 48);
        *(v249 + 15) = *(*(&v240 + 1) + 63);
        a1 = v243;
        sub_1D628DEA4(v243);
        sub_1D6281C84(a1, v240);
        v100 = v262;
        *&v247 = v139;

        sub_1D6297BE8(a1);
      }

      v2 = 0;
      sub_1D6297F18(a1, v93);

      sub_1D5D07BA8(v246, v245, v100);

      v13 = v244;
      goto LABEL_6;
    }

    if (v19 == 3)
    {
      v20 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      *&v240 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      *(&v240 + 1) = v18 & 0x1FFFFFFFFFFFFFFFLL;
      v21 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v22 = *(v20 + 32);
      v247 = *(v20 + 16);
      v248 = v22;
      v249[0] = *(v20 + 48);
      v241 = v20;
      *(v249 + 15) = *(v20 + 63);
      v23 = *(&v22 + 1);
      v24 = v249[1];
      if (BYTE2(v249[1]))
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25 & 0xFFFFFFF8 | (LOWORD(v249[1]) >> 11) & 7;
      v246 = v15;
      v244 = v13;
      if (v26 > 4)
      {
        if (v26 > 6)
        {
          if (v26 == 7)
          {
            if (!(LOWORD(v249[1]) >> 14))
            {
              goto LABEL_168;
            }

            v262 = v17;
            if (LOWORD(v249[1]) >> 14 == 1)
            {
              v253 = v247;
              v254 = v22;
              v263 = 5;
              v133 = *(&v247 + 1);
              v134 = v17;
              v17 = v16;
              v135 = v247;
              sub_1D5D03180(v15, v16, v134);

              sub_1D62B5248(&v247, &v259);
              v136 = sub_1D703E0C8(&v253, &v263);
              v242 = v2;
              if (v2)
              {

                sub_1D5D07BA8(v246, v16, v262);
                goto LABEL_255;
              }

              v137 = v136;
              v138 = swift_allocObject();
              *(v138 + 16) = v135;
              *(v138 + 24) = v133;
              *(v138 + 32) = v137;
              *(v138 + 40) = 0;

              sub_1D6C4D24C(v138 | 0x3000000000000000);

              v16 = v17;
              LODWORD(v17) = v262;
              v2 = v242;
              v27 = v240;
              goto LABEL_200;
            }

            v234 = v22;
            v235 = v21;
            v242 = v2;
            v178 = *&v249[0];
            v179 = v249[1] & 0x7FF;
            v239 = v12;
            v245 = v16;
            v233 = *(&v249[0] + 1);
            switch(((v249[1] & 0x700) >> 7) & 0xFFFFFFFE | (LOWORD(v249[1]) >> 3) & 1)
            {
              case 3u:
              case 4u:
                v232 = *&v249[0];
                v253 = v247;
                v254 = v22;
                v263 = 5;
                v217 = v247;
                sub_1D5D03180(v15, v16, v262);

                sub_1D62B5248(&v247, &v259);

                v218 = v242;
                v219 = sub_1D703E0C8(&v253, &v263);
                v242 = v218;
                if (!v218)
                {
                  v220 = v219;

                  v221 = swift_allocObject();
                  v181 = v217;
                  *(v221 + 16) = v217;
                  v180 = *(&v217 + 1);
                  *(v221 + 32) = v220;
                  *(v221 + 40) = 0;
                  sub_1D6C4D24C(v221 | 0x3000000000000000);

                  v178 = v232;
                  goto LABEL_176;
                }

                sub_1D5D07BA8(v246, v245, v262);
                goto LABEL_255;
              default:
                v180 = *(&v247 + 1);
                v181 = v247;
                sub_1D5D03180(v15, v16, v262);

LABEL_176:
                v182 = v179 >> 8;
                *&v259 = v181;
                *(&v259 + 1) = v180;
                v183 = v234;
                *&v260 = v234;
                *(&v260 + 1) = v23;
                LODWORD(v232) = v179;
                v184 = v233;
                *v261 = v178;
                *&v261[8] = v233;
                v261[16] = v24;
                v261[17] = v182;
                v185 = v178;
                v2 = v242;
                v17 = v243;
                sub_1D62099A8(v243);
                if (!v2)
                {
                  *&v253 = v181;
                  *(&v253 + 1) = v180;
                  v254 = v183;
                  v255 = v23;
                  v256 = v185;
                  v257 = v184;
                  v258 = v232;
                  sub_1D5FD697C(v17);
                  a1 = v17;
                  LODWORD(v17) = v262;
                  v16 = v245;
                  v12 = v239;
                  v27 = v240;
                  v21 = v235;
                  goto LABEL_200;
                }

                v228 = v245;
                v227 = v246;
                v229 = v262;
                break;
            }

LABEL_254:
            sub_1D5D07BA8(v227, v228, v229);
            goto LABEL_255;
          }

          v67 = v2;
          sub_1D5D03180(v15, v16, v17);

LABEL_50:

          v27 = v240;
LABEL_173:

          v2 = v67;
LABEL_200:
          sub_1D627B710(a1, v27);
          if (v2)
          {

            v224 = v246;
            v225 = v16;
            v226 = v17;
            goto LABEL_257;
          }

          v187 = v21 >> 61;
          if ((v21 >> 61) > 1)
          {
            if (v187 == 2)
            {
              v203 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
              sub_1D627EC58(a1, *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
              sub_1D6297730(a1, v203);
              v192 = 0;
            }

            else
            {
              if (v187 == 3)
              {
                v262 = v17;
                v188 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
                v189 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
                v190 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
                v191 = *(v188 + 32);
                v259 = *(v188 + 16);
                v260 = v191;
                *v261 = *(v188 + 48);
                *&v261[15] = *(v188 + 63);
                sub_1D628DEA4(a1);
                sub_1D627B710(a1, v189);
                sub_1D6297730(a1, v190);
                v192 = 0;

LABEL_217:

                LOBYTE(v17) = v262;
                goto LABEL_224;
              }

              v192 = 0;
            }

LABEL_224:
            sub_1D5D07BA8(v246, v16, v17);

            v13 = v244;
            v2 = v192;
            goto LABEL_6;
          }

          v262 = v17;
          v245 = v16;
          if (!v187)
          {
            v193 = v21;
            v194 = a1;
            v195 = v193[2];
            v196 = v193[5];
            v197 = v193[6];
            v199 = v193[7];
            v198 = v193[8];
            v242 = v193[9];
            v235 = v193;
            if ((v196 & 4) != 0)
            {
              *&v259 = v195;
              sub_1D6E5C118(v194);
              v192 = 0;
            }

            else
            {
              v200 = v12;
              v201 = v193[3];
              v202 = v193[4];
              sub_1D6282658(v194, v195);
              sub_1D626CB38(v194, v201, v202);
              v192 = 0;
              v194 = v243;
              v12 = v200;
            }

            *&v259 = v197;
            *(&v259 + 1) = v199;
            *&v260 = v198;
            sub_1D62B6FC0(v197, v199, v198);
            sub_1D62975F8(v194);
            sub_1D62B703C(v197, v199, v198);
            sub_1D6297F18(v194, v242);
            v16 = v245;
            a1 = v194;

            goto LABEL_217;
          }

          v239 = v12;
          v204 = (v21 & 0x1FFFFFFFFFFFFFFFLL);
          v17 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v206 = *((v21 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
          v205 = v204[6];
          v208 = v204[7];
          v207 = v204[8];
          v209 = v204[10];
          if ((~v17 & 0xF000000000000007) == 0 && (v206 & 7) == 7)
          {
            LOBYTE(v17) = v262;
          }

          else
          {
            v234 = v204[6];
            v235 = v208;
            v242 = v207;
            v211 = v209;
            v212 = v204[4];
            v213 = v204[2];
            *&v259 = v213;
            *(&v259 + 1) = v17;
            *&v260 = v212;
            *(&v260 + 1) = v206;
            sub_1D62B7098(v213, v17, v212, v206);
            sub_1D629758C(v243);
            sub_1D62B7130(v213, v17, v212, v206);
            LOBYTE(v17) = v262;
            v209 = v211;
            v207 = v242;
            v205 = v234;
            v208 = v235;
          }

          a1 = v243;
          if ((v205 & 0x3000000000000007 & v207) == 0x3000000000000007)
          {
            v16 = v245;
            v12 = v239;
          }

          else
          {
            *&v259 = v205;
            *(&v259 + 1) = v208;
            *&v260 = v207;
            v17 = v208;
            v214 = v207;
            sub_1D62B6FC0(v205, v208, v207);
            sub_1D62975F8(a1);
            v16 = v245;
            v12 = v239;
            v242 = 0;
            sub_1D62B703C(v205, v17, v214);
            v2 = v242;
            LOBYTE(v17) = v262;
          }

          sub_1D627DA04(a1, v209);
          v192 = v2;
          if (!v2)
          {

            goto LABEL_224;
          }

          sub_1D5D07BA8(v246, v16, v17);
LABEL_255:

          return;
        }

        if (v26 == 5)
        {
          goto LABEL_168;
        }

        if (!(BYTE8(v22) >> 6))
        {
          goto LABEL_109;
        }

        if (BYTE8(v22) >> 6 != 1)
        {
          if ((BYTE8(v22) & 0x3Fu) > 1)
          {
            v27 = v240;
            if ((BYTE8(v22) & 0x3F) == 2 || !(*(&v247 + 1) | v22))
            {
              goto LABEL_198;
            }

            v67 = v2;
          }

          else
          {
            v27 = v240;
            if ((BYTE8(v22) & 0x3F) == 0)
            {
              goto LABEL_198;
            }

            v67 = v2;
            if ((~*(&v247 + 1) & 0xF000000000000007) != 0)
            {
              *&v259 = *(&v247 + 1);
              v111 = v16;
              v112 = v16;
              v113 = *(&v247 + 1);
              sub_1D5D03180(v15, v112, v17);

              sub_1D5CFCFAC(v113);
              sub_1D6E5C118(a1);
              if (!v2)
              {

                v16 = v111;
LABEL_180:
                v2 = 0;
                goto LABEL_200;
              }

              v230 = v246;
              v231 = v111;
LABEL_262:
              sub_1D5D07BA8(v230, v231, v17);
              goto LABEL_258;
            }
          }

          goto LABEL_172;
        }
      }

      else
      {
        if (v26 > 1)
        {
          if (v26 != 2)
          {
            v27 = v240;
            if (v26 != 3)
            {
              goto LABEL_198;
            }

            if (v22 <= 1u)
            {
              if (!v22)
              {
                goto LABEL_198;
              }

LABEL_111:
              v67 = v2;
              if ((~v247 & 0xF000000000000007) != 0)
              {
                goto LABEL_178;
              }

              goto LABEL_172;
            }

            if (v22 == 2)
            {
              goto LABEL_198;
            }

LABEL_170:
            if (v247 != 0)
            {
LABEL_171:
              v67 = v2;
LABEL_172:
              sub_1D5D03180(v15, v16, v17);

              goto LABEL_173;
            }

LABEL_198:
            sub_1D5D03180(v15, v16, v17);

            goto LABEL_199;
          }

LABEL_168:
          sub_1D5D03180(v15, v16, v17);

          v27 = v240;
LABEL_199:

          goto LABEL_200;
        }

        if (v26)
        {
          goto LABEL_168;
        }

        v106 = (DWORD2(v22) >> 3) & 7;
        if (v106 > 1)
        {
          if (v106 != 2 && v106 != 3)
          {
            if (BYTE8(v22) >> 6)
            {
              v107 = v2;
              if (BYTE8(v22) >> 6 != 1)
              {
                v242 = *(&v247 + 1);
                v215 = v247;
                v234 = v22;
                sub_1D5D03180(v15, v16, v17);

                sub_1D6287888(a1, v215, v242, v234, v23 & 7);
                if (!v2)
                {
                  v27 = v240;
                  goto LABEL_200;
                }

                v230 = v246;
                v231 = v16;
                goto LABEL_262;
              }

              v259 = v247;
              LOBYTE(v260) = v22;
              v108 = v16;
              v109 = v16;
              v110 = v17;
            }

            else
            {
              v259 = v247;
              LOBYTE(v260) = v22;
              v108 = v16;
              v109 = v16;
              v110 = v17;
              v107 = v2;
            }

            sub_1D5D03180(v15, v109, v110);

            v27 = v240;

            v2 = v107;
            sub_1D628E900(a1);
            if (!v107)
            {
              v16 = v108;
              goto LABEL_200;
            }

            v227 = v246;
            v228 = v108;
            v229 = v17;
            goto LABEL_254;
          }

LABEL_109:
          if (v22 <= 1u)
          {
            v27 = v240;
            if (v22)
            {
              goto LABEL_111;
            }

            goto LABEL_198;
          }

          v27 = v240;
          if (v22 == 2)
          {
            goto LABEL_198;
          }

          goto LABEL_170;
        }

        if (v106)
        {
          goto LABEL_168;
        }
      }

      if (v22 > 1u)
      {
        if (v22 != 2)
        {
          v27 = v240;
          if (v247 != 0)
          {
            goto LABEL_171;
          }

          goto LABEL_198;
        }

        goto LABEL_168;
      }

      if (!v22)
      {
        goto LABEL_168;
      }

      v67 = v2;
      if ((~v247 & 0xF000000000000007) != 0)
      {
LABEL_178:
        *&v259 = v247;
        v245 = v16;
        v242 = v247;
        sub_1D5D03180(v15, v16, v17);

        v27 = v240;

        sub_1D5CFCFAC(v242);
        sub_1D6E5C118(a1);
        if (!v67)
        {

          v16 = v245;
          goto LABEL_180;
        }

        v231 = v245;
        v230 = v246;
        goto LABEL_262;
      }

      sub_1D5D03180(v15, v16, v17);

      goto LABEL_50;
    }

LABEL_6:
    v13 += 4;
    if (!--v12)
    {
      return;
    }
  }

  v245 = *(v13 - 2);
  v246 = v15;
  v244 = v13;
  if (!v19)
  {
    v28 = *(v18 + 32);
    v259 = *(v18 + 16);
    v260 = v28;
    v29 = *(v18 + 64);
    *v261 = *(v18 + 48);
    *&v261[16] = v29;
    v30 = v259;
    v262 = v17;
    if ((BYTE8(v260) & 4) != 0)
    {
      *&v253 = v259;
      sub_1D5D03180(v15, v245, v17);

      sub_1D5CFBAA8(&v259, &v247);
      sub_1D6E5C118(v243);
      if (v2)
      {
        sub_1D5D08954(&v259);
        v228 = v245;
        v227 = v246;
        v229 = v17;
        goto LABEL_254;
      }
    }

    else
    {
      v242 = v2;
      v31 = v18;
      v32 = v12;
      v33 = v17;
      v35 = *(&v259 + 1);
      v34 = v260;
      sub_1D5D03180(v15, v245, v33);

      sub_1D5CFBAA8(&v259, &v247);
      v36 = v242;
      v37 = v243;
      sub_1D6282658(v243, v30);
      if (v36)
      {
        sub_1D5D08954(&v259);
        sub_1D5D07BA8(v246, v245, v262);
        goto LABEL_255;
      }

      sub_1D626CB38(v37, v35, v34);
      v12 = v32;
      v2 = 0;
      v18 = v31;
    }

    v68 = *&v261[16];
    v241 = v18;
    if ((*&v261[16] & 0x2000000000000000) == 0)
    {
      v69 = *&v261[8];
      v70 = *(*v261 + 32);
      v247 = *(*v261 + 16);
      v248 = v70;
      v249[0] = *(*v261 + 48);
      *(v249 + 15) = *(*v261 + 63);
      v71 = v243;
      sub_1D628DEA4(v243);
      sub_1D6281C84(v71, v69);
      *&v247 = v68;

      sub_1D6297BE8(v71);
      v242 = 0;

      v72 = v245;
      v73 = v262;
      goto LABEL_125;
    }

    if (!(*v261 >> 62))
    {
      v129 = *(*v261 + 80);
      v249[1] = *(*v261 + 64);
      v250 = v129;
      v251 = *(*v261 + 96);
      v252 = *(*v261 + 112);
      v130 = *(*v261 + 32);
      v247 = *(*v261 + 16);
      v248 = v130;
      v249[0] = *(*v261 + 48);
      sub_1D6287E20(v243);
      v73 = v262;
      v242 = 0;
      goto LABEL_124;
    }

    if (*v261 >> 62 != 1)
    {
      v131 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      *&v247 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

      v132 = v243;
      sub_1D6297BE8(v243);

      sub_1D62844E8(v132, v131, sub_1D6297BE8);
      v72 = v245;
      v242 = 0;
      v73 = v262;
      goto LABEL_125;
    }

    v242 = v2;
    v75 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v74 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v77 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v76 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    v78 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
    *&v240 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    *(&v240 + 1) = v78;
    v79 = *((*v261 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v80 = swift_allocObject();
    *(v80 + 16) = v75;
    *(v80 + 24) = v74;
    *(v80 + 32) = v77;
    *(v80 + 40) = v76;
    v81 = v80 | 0x9000000000000000;
    v82 = v243;
    v83 = *v243;
    swift_beginAccess();
    v84 = *(v83 + 16);
    v85 = *(v84 + 16);
    v239 = v81;
    if (v85)
    {
      v86 = *(v84 + 8 * v85 + 24);

      v87 = sub_1D60E14A8(v86, v81);
      v82 = v243;

      if (v87)
      {

        v73 = v262;
        v88 = v79;
        goto LABEL_121;
      }
    }

    else
    {
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143 = *v82;
    v88 = v79;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
      v222 = swift_allocObject();
      swift_beginAccess();
      v223 = v143[2];
      v247 = v143[1];
      v248 = v223;
      v249[0] = v143[3];
      *(v249 + 14) = *(v143 + 62);
      memmove((v222 + 16), v143 + 1, 0x3EuLL);
      sub_1D5EB9AB0(&v247, &v253);

      *v82 = v222;
      v143 = v222;
    }

    v144 = v239;
    swift_beginAccess();
    v145 = *(v143 + 2);
    v146 = swift_isUniquelyReferenced_nonNull_native();
    *(v143 + 2) = v145;
    if ((v146 & 1) == 0)
    {
      v145 = sub_1D698F848(0, *(v145 + 2) + 1, 1, v145);
      *(v143 + 2) = v145;
    }

    v148 = *(v145 + 2);
    v147 = *(v145 + 3);
    if (v148 >= v147 >> 1)
    {
      v145 = sub_1D698F848((v147 > 1), v148 + 1, 1, v145);
    }

    *(v145 + 2) = v148 + 1;
    *&v145[8 * v148 + 32] = v144;
    *(v143 + 2) = v145;
    swift_endAccess();
    v73 = v262;
    v82 = v243;
LABEL_121:
    v149 = v242;
    v150 = v240;
    if (v88 != 255)
    {
      v247 = v240;
      LOBYTE(v248) = v88;
      sub_1D5E433E0(v240, *(&v240 + 1), v88);
      sub_1D628BAB8(v82);
      v72 = v245;
      v242 = v149;
      if (v149)
      {
        sub_1D5E43440(v150, *(&v150 + 1), v88);
        sub_1D5D08954(&v259);
        v227 = v246;
        v228 = v72;
        v229 = v73;
        goto LABEL_254;
      }

      sub_1D5E43440(v150, *(&v150 + 1), v88);
LABEL_125:
      v151 = *&v261[24] >> 62;
      if ((*&v261[24] >> 62) > 1)
      {
        if (v151 == 2)
        {
          v162 = *((*&v261[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v163 = v242;
          v164 = v243;
          sub_1D62809AC(v243, *((*&v261[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
          if (v163)
          {
            goto LABEL_249;
          }

          sub_1D62A10B8(v164, v162);
          goto LABEL_133;
        }
      }

      else
      {
        if (!v151)
        {
          v152 = swift_projectBox();
          v153 = v237;
          sub_1D62B50EC(v152, v237, type metadata accessor for FormatCommandOpenURL);
          sub_1D62B50EC(v153, v238, type metadata accessor for FormatCommandOpenURL);
          if (swift_getEnumCaseMultiPayload() < 2)
          {
            sub_1D62B51D0(v237, type metadata accessor for FormatCommandOpenURL);
            v14 = v238;
          }

          else
          {
            v154 = v73;
            v156 = *v238;
            v155 = v238[1];
            v157 = v238[2];
            *&v247 = *v238;
            *(&v247 + 1) = v155;
            *&v248 = v157;
            LOBYTE(v253) = 6;

            v158 = v242;
            v159 = sub_1D703E0C8(&v247, &v253);
            v242 = v158;
            if (v158)
            {
              sub_1D62B51D0(v237, type metadata accessor for FormatCommandOpenURL);

              sub_1D5D08954(&v259);
              v227 = v246;
              v228 = v72;
              v229 = v73;
              goto LABEL_254;
            }

            v160 = v159;

            v161 = swift_allocObject();
            *(v161 + 16) = v156;
            *(v161 + 24) = v155;
            *(v161 + 32) = v160;
            *(v161 + 40) = 0;
            sub_1D6C4D24C(v161 | 0x3000000000000000);

            v14 = v237;
            v73 = v154;
          }

          sub_1D62B51D0(v14, type metadata accessor for FormatCommandOpenURL);
          goto LABEL_5;
        }

        v165 = *((*&v261[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v167 = *(v165 + 16);
        v166 = *(v165 + 24);
        v168 = *(v165 + 32);
        v169 = *(v165 + 40);
        v170 = *(v165 + 64);
        if (*(v165 + 66))
        {
          v171 = 8;
        }

        else
        {
          v171 = 0;
        }

        v172 = v171 & 0xFFFFFFF8 | (v170 >> 11) & 7;
        if (v172 > 4)
        {
          if (v172 <= 6)
          {
            if (v172 != 5)
            {
              *&v247 = *(v165 + 16);
              *(&v247 + 1) = v166;
              *&v248 = v168;
              BYTE8(v248) = v169;
              goto LABEL_162;
            }
          }

          else if (v172 == 7)
          {
            *&v247 = *(v165 + 16);
            *(&v247 + 1) = v166;
            *&v248 = v168;
            *(&v248 + 1) = v169;
            v249[0] = *(v165 + 48);
            LOWORD(v249[1]) = v170 & 0xC7FF;
            v163 = v242;
            sub_1D690A374(v243);
            goto LABEL_133;
          }
        }

        else
        {
          if (v172 > 1)
          {
            if (v172 == 3)
            {
              goto LABEL_141;
            }

            goto LABEL_5;
          }

          if (!v172)
          {
            v177 = (v169 >> 3) & 7;
            if (v177 <= 1)
            {
              if (!v177)
              {
                goto LABEL_141;
              }

              goto LABEL_5;
            }

            if (v177 == 2 || v177 == 3)
            {
LABEL_141:
              *&v247 = v167;
              *(&v247 + 1) = v166;
              LOBYTE(v248) = v168;
              v163 = v242;
              sub_1D628E900(v243);
LABEL_133:
              if (v163)
              {
LABEL_249:
                sub_1D5D08954(&v259);
                sub_1D5D07BA8(v246, v72, v73);
                goto LABEL_255;
              }

              sub_1D5D08954(&v259);
              sub_1D5D07BA8(v246, v72, v73);
              goto LABEL_153;
            }

            *&v247 = v167;
            *(&v247 + 1) = v166;
            *&v248 = v168;
            BYTE8(v248) = v169 & 0xC7;
LABEL_162:
            v163 = v242;
            sub_1D628E970(v243);
            goto LABEL_133;
          }
        }
      }

LABEL_5:
      sub_1D5D08954(&v259);
      sub_1D5D07BA8(v246, v72, v73);

      a1 = v243;
      v13 = v244;
      v2 = v242;
      goto LABEL_6;
    }

LABEL_124:
    v72 = v245;
    goto LABEL_125;
  }

  v239 = v12;
  v60 = v2;
  v61 = v17;
  v62 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
  v247 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v248 = v62;
  v63 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
  v249[0] = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
  v249[1] = v63;
  *&v250 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
  v64 = v247;
  v65 = v248;
  if ((~*(&v247 + 1) & 0xF000000000000007) == 0 && (BYTE8(v248) & 7) == 7)
  {
    sub_1D5D03180(v15, v245, v17);

    sub_1D62B72DC(&v247, &v259);
LABEL_66:
    a1 = v243;
    v101 = *&v249[0];
    v102 = *&v249[1];
    if ((*&v249[0] & 0x3000000000000007 & *&v249[1]) != 0x3000000000000007)
    {
      v103 = v243;
      v104 = *(&v249[0] + 1);
      if ((*&v249[1] & 0x2000000000000000) != 0)
      {
        *&v259 = *&v249[0];
        sub_1D62B6FC0(*&v249[0], *(&v249[0] + 1), *&v249[1]);
        v105 = v60;
        sub_1D6297BE8(v103);
      }

      else
      {
        sub_1D62B6FC0(*&v249[0], *(&v249[0] + 1), *&v249[1]);
        v105 = v60;
        sub_1D626CAA4(v103, v101, v104);
      }

      v60 = v105;
      if (v105)
      {
        sub_1D62B7020(v101, v104, v102);
        goto LABEL_248;
      }

      sub_1D62B7020(v101, v104, v102);
      a1 = v103;
    }

    v2 = v60;
    sub_1D627DA04(a1, v250);
    if (v60)
    {
      goto LABEL_248;
    }

    sub_1D62B7338(&v247);
    sub_1D5D07BA8(v246, v245, v61);

    v12 = v239;
    v13 = v244;
    goto LABEL_6;
  }

  if ((BYTE8(v248) & 4) != 0)
  {
    *&v253 = v247;
    sub_1D5D03180(v15, v245, v17);

    sub_1D62B72DC(&v247, &v259);
    sub_1D62B738C(v64, *(&v64 + 1), v65, SBYTE8(v65));
    sub_1D6E5C118(v243);
  }

  else
  {
    sub_1D5D03180(v15, v245, v17);

    sub_1D62B72DC(&v247, &v259);
    sub_1D62B738C(v64, *(&v64 + 1), v65, SBYTE8(v65));
    v66 = v243;
    sub_1D6282658(v243, v64);
    if (v2)
    {
      goto LABEL_247;
    }

    sub_1D626CB38(v66, *(&v64 + 1), v65);
  }

  v60 = v2;
  if (!v2)
  {
    sub_1D62B7110(v64, *(&v64 + 1), v65, SBYTE8(v65));
    goto LABEL_66;
  }

LABEL_247:
  sub_1D62B7110(v64, *(&v64 + 1), v65, SBYTE8(v65));
LABEL_248:
  sub_1D62B7338(&v247);
  v225 = v245;
  v224 = v246;
  v226 = v61;
LABEL_257:
  sub_1D5D07BA8(v224, v225, v226);
LABEL_258:
}

void sub_1D627DA04(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v121 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v121, v6);
  v125 = (v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v124 = (v119 - v10);
  v11 = *(a2 + 16);
  if (!v11)
  {
    return;
  }

  v12 = (a2 + 32);
  v122 = a1;
  while (1)
  {
    v13 = v12[1];
    v141 = *v12;
    v142 = v13;
    v14 = v12[3];
    v143 = v12[2];
    v144 = v14;
    v15 = v141;
    if ((BYTE8(v142) & 4) != 0)
    {
      *&v129 = v141;
      sub_1D5CFBAA8(&v141, &v136);
      v18 = v3;
      sub_1D6E5C118(a1);
      if (v3)
      {
        goto LABEL_175;
      }
    }

    else
    {
      v17 = *(&v141 + 1);
      v16 = v142;
      sub_1D5CFBAA8(&v141, &v136);
      v18 = v3;
      sub_1D6282658(a1, v15);
      if (v3)
      {
        goto LABEL_175;
      }

      sub_1D626CB38(a1, v17, v16);
    }

    v19 = v144;
    if ((v144 & 0x2000000000000000) != 0)
    {
      v145 = v11;
      v126 = v18;
      if (!(v143 >> 62))
      {
        v41 = *(v143 + 80);
        v138[1] = *(v143 + 64);
        v138[2] = v41;
        v138[3] = *(v143 + 96);
        v139 = *(v143 + 112);
        v42 = *(v143 + 32);
        v136 = *(v143 + 16);
        v137 = v42;
        v43 = *(v143 + 64);
        v138[0] = *(v143 + 48);
        v44 = *(v143 + 80);
        v45 = *(v143 + 96);
        v132 = v43;
        v133 = v44;
        v134 = v45;
        v135 = *(v143 + 112);
        v46 = *(v143 + 32);
        v129 = *(v143 + 16);
        v130 = v46;
        v131 = *(v143 + 48);
        sub_1D5D0322C(&v136, &v127);
        v47 = v126;
        sub_1D6287E20(a1);
        v3 = v47;
        if (v47)
        {
          sub_1D5D07BBC(&v136);
          goto LABEL_175;
        }

        sub_1D5D07BBC(&v136);
        goto LABEL_52;
      }

      if (v143 >> 62 != 1)
      {
        v48 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v136 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        v49 = v126;
        sub_1D6297BE8(a1);
        v3 = v49;
        if (v49)
        {

          goto LABEL_175;
        }

        sub_1D62844E8(a1, v48, sub_1D6297BE8);

        goto LABEL_52;
      }

      v22 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v24 = a1;
      v25 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v26 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v27 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v123 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v120 = *((v143 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v28 = swift_allocObject();
      *(v28 + 16) = v22;
      *(v28 + 24) = v23;
      *(v28 + 32) = v25;
      *(v28 + 40) = v26;
      v29 = *v24;
      swift_beginAccess();
      v30 = *(v29 + 16);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = *(v30 + 8 * v31 + 24);
        if (v32 >> 60 == 9)
        {
          v33 = (v32 & 0xFFFFFFFFFFFFFFFLL);
          v34 = v33[4];
          v35 = v33[5];
          v36 = v33[2] == v22 && v33[3] == v23;
          if (v36 || (v37 = v33[4], v38 = sub_1D72646CC(), v34 = v37, (v38 & 1) != 0))
          {
            if (v35)
            {
              if (v26)
              {
                v39 = v34 == v25 && v35 == v26;
                if (v39 || (sub_1D72646CC() & 1) != 0)
                {

                  v40 = v120;
                  sub_1D5E433CC(v27, v123, v120);

                  goto LABEL_45;
                }
              }
            }

            else if (!v26)
            {

              v40 = v120;
              sub_1D5E433CC(v27, v123, v120);
LABEL_45:

              if (v40 > 1)
              {
LABEL_46:
                if (v40 != 2)
                {

                  sub_1D5E4342C(v27, v123, 0xFFu);
                  v3 = v126;
                  goto LABEL_51;
                }

                sub_1D5E433E0(v27, v123, 2u);
                v67 = v122;
                v68 = v27;
                v69 = v126;
                sub_1D6273544(v122, v27);
                if (v69)
                {

                  v118 = v123;
                  sub_1D5E4342C(v27, v123, 2u);
                  sub_1D5E4342C(v27, v118, 2u);
                  goto LABEL_175;
                }

                sub_1D6273544(v67, v123);
                v3 = 0;

                v70 = v123;
                sub_1D5E4342C(v68, v123, 2u);
                v61 = v68;
                v62 = v70;
                v63 = 2;
LABEL_49:
                sub_1D5E4342C(v61, v62, v63);
LABEL_51:
                a1 = v122;
LABEL_52:
                v11 = v145;
                goto LABEL_53;
              }

LABEL_39:
              if (v40)
              {
                sub_1D5E433E0(v27, v123, 1u);
                v64 = v126;
                sub_1D6273544(v122, v27);
                v65 = v27;
                v3 = v64;
                if (v64)
                {

                  v117 = v123;
                  sub_1D5E4342C(v65, v123, 1u);
                  sub_1D5E4342C(v65, v117, 1u);
                  goto LABEL_175;
                }

                v66 = v123;
                sub_1D5E4342C(v65, v123, 1u);
                v61 = v65;
                v62 = v66;
                v63 = 1;
              }

              else
              {
                sub_1D5E433E0(v27, v123, 0);
                v58 = v126;
                sub_1D6273544(v122, v27);
                v59 = v27;
                v3 = v58;
                if (v58)
                {

                  v116 = v123;
                  sub_1D5E4342C(v59, v123, 0);
                  sub_1D5E4342C(v59, v116, 0);
                  goto LABEL_175;
                }

                v60 = v123;
                sub_1D5E4342C(v59, v123, 0);
                v61 = v59;
                v62 = v60;
                v63 = 0;
              }

              goto LABEL_49;
            }
          }
        }
      }

      sub_1D5E433CC(v27, v123, v120);

      v50 = v122;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *v50;
      v119[1] = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v110 = swift_allocObject();
        swift_beginAccess();
        v111 = v52[2];
        v136 = v52[1];
        v137 = v111;
        v138[0] = v52[3];
        *(v138 + 14) = *(v52 + 62);
        memmove((v110 + 16), v52 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v136, &v129);

        *v122 = v110;
        v52 = v110;
      }

      swift_beginAccess();
      v53 = *(v52 + 2);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      *(v52 + 2) = v53;
      v55 = v27;
      if ((v54 & 1) == 0)
      {
        v53 = sub_1D698F848(0, *(v53 + 2) + 1, 1, v53);
        *(v52 + 2) = v53;
      }

      v57 = *(v53 + 2);
      v56 = *(v53 + 3);
      if (v57 >= v56 >> 1)
      {
        v53 = sub_1D698F848((v56 > 1), v57 + 1, 1, v53);
      }

      *(v53 + 2) = v57 + 1;
      *&v53[8 * v57 + 32] = v28 | 0x9000000000000000;
      *(v52 + 2) = v53;
      swift_endAccess();
      v27 = v55;
      v40 = v120;
      if (v120 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    v20 = *(&v143 + 1);
    v21 = *(v143 + 32);
    v136 = *(v143 + 16);
    v137 = v21;
    v138[0] = *(v143 + 48);
    *(v138 + 15) = *(v143 + 63);
    sub_1D628DEA4(a1);
    if (v18)
    {
      goto LABEL_175;
    }

    sub_1D6281C84(a1, v20);
    *&v136 = v19;

    sub_1D6297BE8(a1);
    v3 = 0;

LABEL_53:
    v71 = *(&v144 + 1) >> 62;
    if ((*(&v144 + 1) >> 62) > 1)
    {
      if (v71 == 2)
      {
        v75 = *((*(&v144 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v76 = *((*(&v144 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        sub_1D62809AC(a1, v75);
        if (v3)
        {

LABEL_178:

          goto LABEL_175;
        }

        sub_1D62A10B8(a1, v76);
      }

      goto LABEL_73;
    }

    if (!v71)
    {
      v72 = swift_projectBox();
      v73 = v124;
      sub_1D62B50EC(v72, v124, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v73, v125, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() > 1)
      {
        v86 = *v125;
        v85 = v125[1];
        v87 = v125[2];
        *&v136 = *v125;
        *(&v136 + 1) = v85;
        *&v137 = v87;
        LOBYTE(v129) = 6;

        v88 = sub_1D703E0C8(&v136, &v129);
        if (v3)
        {
          sub_1D62B51D0(v124, type metadata accessor for FormatCommandOpenURL);

          goto LABEL_178;
        }

        v89 = v88;

        v90 = swift_allocObject();
        *(v90 + 16) = v86;
        *(v90 + 24) = v85;
        *(v90 + 32) = v89;
        *(v90 + 40) = 0;
        sub_1D6C4D24C(v90 | 0x3000000000000000);

        v74 = v124;
      }

      else
      {
        sub_1D62B51D0(v124, type metadata accessor for FormatCommandOpenURL);
        v74 = v125;
      }

      sub_1D62B51D0(v74, type metadata accessor for FormatCommandOpenURL);
      goto LABEL_73;
    }

    v145 = v11;
    v77 = *((*(&v144 + 1) & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v78 = *(v77 + 32);
    v136 = *(v77 + 16);
    v137 = v78;
    v79 = *(v77 + 48);
    *(v138 + 15) = *(v77 + 63);
    v138[0] = v79;
    v81 = *(&v136 + 1);
    v80 = v136;
    v82 = v78;
    v83 = (BYTE2(v138[1]) & 1) != 0 ? 8 : 0;
    v84 = v83 & 0xFFFFFFF8 | (LOWORD(v138[1]) >> 11) & 7;
    if (v84 > 4)
    {
      break;
    }

    if (v84 <= 1)
    {
      if (v84)
      {
        goto LABEL_108;
      }

      v91 = (DWORD2(v78) >> 3) & 7;
      if (v91 <= 1)
      {
        if (v91)
        {
          goto LABEL_100;
        }
      }

      else if (v91 != 2 && v91 != 3 && BYTE8(v78) >> 6 && BYTE8(v78) >> 6 != 1)
      {
        v92 = BYTE8(v78) & 7;
        if (v92 <= 1)
        {
          if ((BYTE8(v78) & 7) == 0)
          {
LABEL_100:
            sub_1D5D085FC(&v136);
            goto LABEL_108;
          }

LABEL_90:
          if ((~*(&v136 + 1) & 0xF000000000000007) == 0)
          {
            goto LABEL_108;
          }

          *&v127 = *(&v136 + 1);

          sub_1D62B5248(&v136, &v129);
          v93 = v81;
LABEL_105:
          sub_1D5CFCFAC(v93);
          sub_1D6E5C118(a1);
          if (v3)
          {

            goto LABEL_187;
          }

LABEL_106:

LABEL_107:
          sub_1D5D085FC(&v136);

          goto LABEL_108;
        }

LABEL_111:
        v11 = v145;
        if (v92 == 2)
        {
          goto LABEL_73;
        }

LABEL_102:
        sub_1D5D085FC(&v136);
        goto LABEL_73;
      }
    }

    else if (v84 != 3)
    {
      goto LABEL_108;
    }

LABEL_98:
    if (v78 <= 1u)
    {
      if (!v78)
      {
        goto LABEL_100;
      }

      if ((~v136 & 0xF000000000000007) != 0)
      {
        *&v127 = v136;

        sub_1D62B5248(&v136, &v129);
        v93 = v80;
        goto LABEL_105;
      }

LABEL_108:
      sub_1D5D08954(&v141);
      v11 = v145;
      goto LABEL_74;
    }

    v11 = v145;
    if (v78 != 2)
    {
      goto LABEL_102;
    }

LABEL_73:
    sub_1D5D08954(&v141);
LABEL_74:
    v12 += 4;
    if (!--v11)
    {
      return;
    }
  }

  if (v84 <= 6)
  {
    if (v84 == 5)
    {
      goto LABEL_108;
    }

    if (BYTE8(v78) >> 6 && BYTE8(v78) >> 6 != 1)
    {
      v92 = BYTE8(v78) & 0x3F;
      if (v92 <= 1)
      {
        if ((BYTE8(v78) & 0x3F) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_90;
      }

      goto LABEL_111;
    }

    goto LABEL_98;
  }

  if (v84 != 7)
  {
    v11 = v145;
    goto LABEL_73;
  }

  if (!(LOWORD(v138[1]) >> 14))
  {
    goto LABEL_108;
  }

  if (LOWORD(v138[1]) >> 14 == 1)
  {
    v127 = v136;
    v128 = v78;
    v140 = 5;
    v94 = v136;
    sub_1D62B5248(&v136, &v129);

    sub_1D62B5248(&v136, &v129);
    v95 = sub_1D703E0C8(&v127, &v140);
    if (v3)
    {
      goto LABEL_187;
    }

    v96 = v95;
    v97 = swift_allocObject();
    *(v97 + 16) = v94;
    *(v97 + 24) = v81;
    *(v97 + 32) = v96;
    *(v97 + 40) = 0;

    v98 = v97 | 0x3000000000000000;
    goto LABEL_96;
  }

  v99 = LOBYTE(v138[1]);
  switch((LOWORD(v138[1]) >> 7) & 0xE | (LOWORD(v138[1]) >> 3) & 1)
  {
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:

      goto LABEL_114;
    case 2:

      sub_1D62B5248(&v136, &v129);
      v106 = v3;
      if ((v99 & 0xF0) != 0x30)
      {
        goto LABEL_172;
      }

      if (BYTE1(v82) <= 1u)
      {
        if (BYTE1(v82))
        {
          if (v82 > 0xFDu)
          {
            goto LABEL_172;
          }

          v113 = v82 >> 6;
          if (v113 > 1)
          {
            if (v113 == 2)
            {
              if ((v82 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v136, &v129);
              sub_1D62B5248(&v136, &v129);
              v108 = &unk_1F5112FC8;
            }

            else
            {
              if ((v82 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v136, &v129);
              sub_1D62B5248(&v136, &v129);
              v108 = &unk_1F5112FF0;
            }
          }

          else if (v113)
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5112FA0;
          }

          else
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5112F78;
          }
        }

        else
        {
          if (v82 > 0xFDu)
          {
            goto LABEL_172;
          }

          v109 = v82 >> 6;
          if (v109 > 1)
          {
            if (v109 == 2)
            {
              if ((v82 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v136, &v129);
              sub_1D62B5248(&v136, &v129);
              v108 = &unk_1F5112F28;
            }

            else
            {
              if ((v82 & 1) == 0)
              {
                goto LABEL_171;
              }

              sub_1D62B5248(&v136, &v129);
              sub_1D62B5248(&v136, &v129);
              v108 = &unk_1F5112F50;
            }
          }

          else
          {
            if (!v109)
            {
              if (v82)
              {
                sub_1D62B5248(&v136, &v129);
                sub_1D62B5248(&v136, &v129);
                v108 = &unk_1F5112ED8;
                goto LABEL_170;
              }

LABEL_171:
              sub_1D5D085FC(&v136);
              v106 = v3;
              goto LABEL_172;
            }

            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5112F00;
          }
        }

LABEL_170:
        v123 = sub_1D5E26E28(v108);
        v114 = swift_allocObject();
        v126 = v80;
        *(v114 + 16) = v80;
        *(v114 + 24) = v81;
        *(v114 + 32) = v123;
        *(v114 + 40) = 0;
        sub_1D6C4D24C(v114 | 0x3000000000000000);
        v80 = v126;

        goto LABEL_171;
      }

      if (BYTE1(v82) == 2)
      {
        if (v82 > 0xFDu)
        {
          goto LABEL_172;
        }

        v112 = v82 >> 6;
        if (v112 > 1)
        {
          if (v112 == 2)
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5113068;
          }

          else
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5113090;
          }
        }

        else if (v112)
        {
          if ((v82 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v136, &v129);
          sub_1D62B5248(&v136, &v129);
          v108 = &unk_1F5113040;
        }

        else
        {
          if ((v82 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v136, &v129);
          sub_1D62B5248(&v136, &v129);
          v108 = &unk_1F5113018;
        }

        goto LABEL_170;
      }

      if (BYTE1(v82) == 3 && v82 <= 0xFDu)
      {
        v107 = v82 >> 6;
        if (v107 > 1)
        {
          if (v107 == 2)
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5113108;
          }

          else
          {
            if ((v82 & 1) == 0)
            {
              goto LABEL_171;
            }

            sub_1D62B5248(&v136, &v129);
            sub_1D62B5248(&v136, &v129);
            v108 = &unk_1F5113130;
          }
        }

        else
        {
          if (!v107)
          {
            if (v82)
            {
              sub_1D62B5248(&v136, &v129);
              sub_1D62B5248(&v136, &v129);
              v108 = &unk_1F51130B8;
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          if ((v82 & 1) == 0)
          {
            goto LABEL_171;
          }

          sub_1D62B5248(&v136, &v129);
          sub_1D62B5248(&v136, &v129);
          v108 = &unk_1F51130E0;
        }

        goto LABEL_170;
      }

LABEL_172:
      v115 = v99 >> 4;
      a1 = v122;
      if (v115 == 3)
      {
        *&v129 = v80;
        *(&v129 + 1) = v81;
        LOWORD(v130) = v82;
        sub_1D62921EC(v122);
        v3 = v106;
        if (v106)
        {
          goto LABEL_187;
        }
      }

      goto LABEL_107;
    case 3:
    case 4:
      v127 = v136;
      v128 = v78;
      v140 = 5;
      sub_1D62B5248(&v136, &v129);

      sub_1D62B5248(&v136, &v129);

      v100 = sub_1D703E0C8(&v127, &v140);
      if (!v3)
      {
        v101 = v80;
        v102 = v100;

        v103 = swift_allocObject();
        *(v103 + 16) = v101;
        *(v103 + 24) = v81;
        *(v103 + 32) = v102;
        *(v103 + 40) = 0;
        v126 = v101;
        a1 = v122;
        sub_1D6C4D24C(v103 | 0x3000000000000000);

        *&v127 = v126;
        *(&v127 + 1) = v81;
        v128 = v82;
        v140 = 5;
        sub_1D62B5248(&v136, &v129);

        v104 = sub_1D703E0C8(&v127, &v140);

        v105 = swift_allocObject();
        *(v105 + 16) = v126;
        *(v105 + 24) = v81;
        *(v105 + 32) = v104;
        *(v105 + 40) = 0;
        v98 = v105 | 0x3000000000000000;
LABEL_96:
        sub_1D6C4D24C(v98);
        goto LABEL_106;
      }

LABEL_187:
      sub_1D5D085FC(&v136);

LABEL_175:
      sub_1D5D08954(&v141);
      return;
    default:

      sub_1D62B5248(&v136, &v129);
LABEL_114:
      sub_1D5D085FC(&v136);

      sub_1D5D08954(&v141);
      a1 = v122;
      v11 = v145;
      goto LABEL_74;
  }
}

void sub_1D627EC58(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v5, v6);
  v199 = (&v192 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v198 = (&v192 - v11);
  v12 = *(a2 + 16);
  if (!v12)
  {
    return;
  }

  v196 = v10;
  v13 = (a2 + 40);
  v206 = a1;
  while (1)
  {
    v16 = *(v13 - 1);
    v15 = *v13;
    *&v208 = v16;
    v17 = v15 & 0x1FFFFFFFFFFFFFFFLL;

    swift_retain_n();
    sub_1D6285C00(a1);
    v207 = v2;
    if (v2)
    {

      return;
    }

    v18 = v15 >> 61;
    if ((v15 >> 61) <= 1)
    {
      if (v18)
      {
        v201 = v13;
        v204 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        v205 = v16;
        v56 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
        v208 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v209 = v56;
        v57 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v210[0] = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v210[1] = v57;
        *&v211 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        v58 = v208;
        v59 = v209;
        if ((~*(&v208 + 1) & 0xF000000000000007) != 0 || (BYTE8(v209) & 7) != 7)
        {
          if ((BYTE8(v209) & 4) != 0)
          {
            *&v214 = v208;
            sub_1D62B72DC(&v208, &v220);
            sub_1D62B738C(v58, *(&v58 + 1), v59, SBYTE8(v59));
            v88 = v207;
            sub_1D6E5C118(v206);
            v207 = v88;
            if (v88)
            {
              sub_1D62B7110(v58, *(&v58 + 1), v59, SBYTE8(v59));
              sub_1D62B7338(&v208);

              goto LABEL_221;
            }
          }

          else
          {
            sub_1D62B72DC(&v208, &v220);
            sub_1D62B738C(v58, *(&v58 + 1), v59, SBYTE8(v59));
            v60 = v206;
            v61 = v207;
            sub_1D6282658(v206, v58);
            if (v61)
            {
              sub_1D62B7110(v58, *(&v58 + 1), v59, SBYTE8(v59));
              sub_1D62B7338(&v208);

              goto LABEL_231;
            }

            sub_1D626CB38(v60, *(&v58 + 1), v59);
            v207 = 0;
          }

          sub_1D62B7110(v58, *(&v58 + 1), v59, SBYTE8(v59));
        }

        else
        {
          sub_1D62B72DC(&v208, &v220);
        }

        a1 = v206;
        v89 = *&v210[0];
        v90 = *&v210[1];
        if ((*&v210[0] & 0x3000000000000007 & *&v210[1]) == 0x3000000000000007)
        {
          v13 = v201;
        }

        else
        {
          v91 = *(&v210[0] + 1);
          v13 = v201;
          if ((*&v210[1] & 0x2000000000000000) != 0)
          {
            *&v220 = *&v210[0];
            sub_1D62B6FC0(*&v210[0], *(&v210[0] + 1), *&v210[1]);
            v92 = v207;
            sub_1D6297BE8(v206);
          }

          else
          {
            sub_1D62B6FC0(*&v210[0], *(&v210[0] + 1), *&v210[1]);
            v92 = v207;
            sub_1D626CAA4(v206, v89, v91);
          }

          v207 = v92;
          if (v92)
          {
            sub_1D62B7020(v89, v91, v90);
LABEL_218:
            sub_1D62B7338(&v208);
LABEL_220:

LABEL_221:

            return;
          }

          sub_1D62B7020(v89, v91, v90);
          a1 = v206;
        }

        v93 = v207;
        sub_1D627DA04(a1, v211);
        v207 = v93;
        if (v93)
        {
          goto LABEL_218;
        }

        sub_1D62B7338(&v208);
        goto LABEL_6;
      }

      v29 = *(v15 + 32);
      v220 = *(v15 + 16);
      v221 = v29;
      v30 = *(v15 + 64);
      *v222 = *(v15 + 48);
      *&v222[16] = v30;
      v31 = v220;
      if ((BYTE8(v221) & 4) != 0)
      {
        *&v214 = v220;
        sub_1D5CFBAA8(&v220, &v208);
        a1 = v206;
        v36 = v207;
        sub_1D6E5C118(v206);
        if (v36)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v204 = v15 & 0x1FFFFFFFFFFFFFFFLL;
        v32 = v13;
        v33 = v12;
        v35 = *(&v220 + 1);
        v34 = v221;
        sub_1D5CFBAA8(&v220, &v208);
        v37 = v206;
        v36 = v207;
        sub_1D6282658(v206, v31);
        if (v36)
        {
          goto LABEL_215;
        }

        sub_1D626CB38(v37, v35, v34);
        a1 = v37;
        v12 = v33;
        v13 = v32;
      }

      v63 = *&v222[16];
      if ((*&v222[16] & 0x2000000000000000) == 0)
      {
        v64 = *&v222[8];
        v65 = *(*v222 + 32);
        v208 = *(*v222 + 16);
        v209 = v65;
        v210[0] = *(*v222 + 48);
        *(v210 + 15) = *(*v222 + 63);
        sub_1D628DEA4(a1);
        sub_1D6281C84(a1, v64);
        *&v208 = v63;

        sub_1D6297BE8(a1);
        v207 = 0;

        goto LABEL_123;
      }

      if (!(*v222 >> 62))
      {
        v111 = *(*v222 + 80);
        v210[1] = *(*v222 + 64);
        v211 = v111;
        v212 = *(*v222 + 96);
        v213 = *(*v222 + 112);
        v112 = *(*v222 + 32);
        v208 = *(*v222 + 16);
        v209 = v112;
        v210[0] = *(*v222 + 48);
        sub_1D6287E20(a1);
        v207 = v36;
        goto LABEL_123;
      }

      if (*v222 >> 62 != 1)
      {
        v113 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *&v208 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D6297BE8(a1);

        sub_1D62844E8(a1, v113, sub_1D6297BE8);
        v207 = 0;
        goto LABEL_123;
      }

      v203 = v12;
      v205 = v16;
      v207 = v36;
      v66 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v67 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v69 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v68 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v70 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v197 = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v200 = v70;
      LODWORD(v202) = *((*v222 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v71 = swift_allocObject();
      *(v71 + 16) = v66;
      *(v71 + 24) = v67;
      *(v71 + 32) = v69;
      *(v71 + 40) = v68;
      v72 = v71 | 0x9000000000000000;
      v73 = *a1;
      swift_beginAccess();
      v74 = *(v73 + 16);
      v75 = *(v74 + 16);
      v201 = v13;
      if (v75)
      {
        v76 = *(v74 + 8 * v75 + 24);

        v77 = sub_1D60E14A8(v76, v72);

        if (v77)
        {

          a1 = v206;
          v78 = v200;
LABEL_119:
          v126 = v202;
          v12 = v203;
          v127 = v197;
          if (v202 != 255)
          {
            *&v208 = v197;
            *(&v208 + 1) = v78;
            LOBYTE(v209) = v202;
            sub_1D5E433E0(v197, v78, v202);
            v128 = v207;
            sub_1D628BAB8(a1);
            v207 = v128;
            if (v128)
            {
              sub_1D5E43440(v127, v78, v126);
              goto LABEL_219;
            }

            sub_1D5E43440(v127, v78, v126);
          }

          v13 = v201;
LABEL_123:
          v129 = *&v222[24] >> 62;
          if ((*&v222[24] >> 62) > 1)
          {
            if (v129 != 2)
            {
              goto LABEL_5;
            }

            v139 = *((*&v222[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v140 = v207;
            sub_1D62809AC(a1, *((*&v222[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10));
            if (v140)
            {
LABEL_215:
              sub_1D5D08954(&v220);
              goto LABEL_230;
            }

            sub_1D62A10B8(a1, v139);
          }

          else
          {
            if (!v129)
            {
              v130 = swift_projectBox();
              v131 = v198;
              sub_1D62B50EC(v130, v198, type metadata accessor for FormatCommandOpenURL);
              sub_1D62B50EC(v131, v199, type metadata accessor for FormatCommandOpenURL);
              if (swift_getEnumCaseMultiPayload() < 2)
              {
                sub_1D62B51D0(v198, type metadata accessor for FormatCommandOpenURL);
                v14 = v199;
LABEL_4:
                sub_1D62B51D0(v14, type metadata accessor for FormatCommandOpenURL);
LABEL_5:
                sub_1D5D08954(&v220);
LABEL_6:

                goto LABEL_7;
              }

              v133 = *v199;
              v132 = v199[1];
              v134 = v199[2];
              *&v208 = *v199;
              *(&v208 + 1) = v132;
              *&v209 = v134;
              LOBYTE(v214) = 6;

              v135 = v207;
              v136 = sub_1D703E0C8(&v208, &v214);
              v207 = v135;
              if (!v135)
              {
                v137 = v136;

                v138 = swift_allocObject();
                *(v138 + 16) = v133;
                *(v138 + 24) = v132;
                *(v138 + 32) = v137;
                *(v138 + 40) = 0;
                a1 = v206;
                sub_1D6C4D24C(v138 | 0x3000000000000000);

                v14 = v198;
                goto LABEL_4;
              }

              sub_1D62B51D0(v198, type metadata accessor for FormatCommandOpenURL);

LABEL_219:
              sub_1D5D08954(&v220);
              goto LABEL_220;
            }

            v141 = *((*&v222[24] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v143 = *(v141 + 16);
            v142 = *(v141 + 24);
            v144 = *(v141 + 32);
            v145 = *(v141 + 40);
            v146 = *(v141 + 64);
            if (*(v141 + 66))
            {
              v147 = 8;
            }

            else
            {
              v147 = 0;
            }

            v148 = v147 & 0xFFFFFFF8 | (v146 >> 11) & 7;
            if (v148 <= 4)
            {
              v140 = v207;
              if (v148 > 1)
              {
                if (v148 != 3)
                {
                  goto LABEL_5;
                }

                goto LABEL_139;
              }

              if (v148)
              {
                goto LABEL_5;
              }

              v151 = (v145 >> 3) & 7;
              if (v151 <= 1)
              {
                if (v151)
                {
                  goto LABEL_5;
                }
              }

              else if (v151 != 2 && v151 != 3)
              {
                *&v208 = v143;
                *(&v208 + 1) = v142;
                *&v209 = v144;
                BYTE8(v209) = v145 & 0xC7;
LABEL_157:
                sub_1D628E970(a1);
                goto LABEL_131;
              }

LABEL_139:
              *&v208 = v143;
              *(&v208 + 1) = v142;
              LOBYTE(v209) = v144;
              sub_1D628E900(a1);
              goto LABEL_131;
            }

            v140 = v207;
            if (v148 <= 6)
            {
              if (v148 == 5)
              {
                goto LABEL_5;
              }

              *&v208 = *(v141 + 16);
              *(&v208 + 1) = v142;
              *&v209 = v144;
              BYTE8(v209) = v145;
              goto LABEL_157;
            }

            if (v148 != 7)
            {
              goto LABEL_5;
            }

            *&v208 = *(v141 + 16);
            *(&v208 + 1) = v142;
            *&v209 = v144;
            *(&v209 + 1) = v145;
            v210[0] = *(v141 + 48);
            LOWORD(v210[1]) = v146 & 0xC7FF;
            sub_1D690A374(a1);
          }

LABEL_131:
          v207 = v140;
          if (v140)
          {
            goto LABEL_219;
          }

          goto LABEL_5;
        }
      }

      else
      {
      }

      v119 = v206;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v121 = *v119;
      v78 = v200;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
        v187 = swift_allocObject();
        swift_beginAccess();
        v188 = v121[2];
        v208 = v121[1];
        v209 = v188;
        v210[0] = v121[3];
        *(v210 + 14) = *(v121 + 62);
        memmove((v187 + 16), v121 + 1, 0x3EuLL);
        sub_1D5EB9AB0(&v208, &v214);

        *v119 = v187;
        v121 = v187;
      }

      swift_beginAccess();
      v122 = *(v121 + 2);
      v123 = swift_isUniquelyReferenced_nonNull_native();
      *(v121 + 2) = v122;
      if ((v123 & 1) == 0)
      {
        v122 = sub_1D698F848(0, *(v122 + 2) + 1, 1, v122);
        *(v121 + 2) = v122;
      }

      v125 = *(v122 + 2);
      v124 = *(v122 + 3);
      if (v125 >= v124 >> 1)
      {
        v122 = sub_1D698F848((v124 > 1), v125 + 1, 1, v122);
      }

      *(v122 + 2) = v125 + 1;
      *&v122[8 * v125 + 32] = v72;
      *(v121 + 2) = v122;
      swift_endAccess();
      a1 = v206;
      goto LABEL_119;
    }

    if (v18 == 2)
    {
      v203 = v12;
      v205 = v16;
      v38 = a1;
      v39 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v41 = (v40 & 0x1FFFFFFFFFFFFFFFLL);

      v42 = v38;
      v43 = v207;
      sub_1D627EC58(v42, v39);
      if (v43)
      {
        goto LABEL_212;
      }

      v44 = v40 >> 61;
      if ((v40 >> 61) > 1)
      {
        if (v44 != 2)
        {
          a1 = v206;
          if (v44 == 3)
          {
            v46 = v41[2];
            v45 = v41[3];
            v47 = v41[4];
            v48 = *(v46 + 24);
            v49 = *(v46 + 32);
            v50 = *(v46 + 40);
            v51 = *(v46 + 64);
            if (*(v46 + 66))
            {
              v52 = 8;
            }

            else
            {
              v52 = 0;
            }

            v53 = v52 & 0xFFFFFFF8 | (v51 >> 11) & 7;
            if (v53 <= 3)
            {
              if ((v53 - 1) >= 2)
              {
                if (!v53)
                {
                  v55 = v41[3];
                  *&v208 = *(v46 + 16);
                  *(&v208 + 1) = v48;
                  *&v209 = v49;
                  BYTE8(v209) = v50;
                  sub_1D628E820(v206);
LABEL_180:
                  v45 = v55;
                  goto LABEL_181;
                }

                goto LABEL_172;
              }
            }

            else if (((1 << v53) & 0x330) == 0)
            {
              if (v53 != 6)
              {
                v55 = v41[3];
                *&v208 = *(v46 + 16);
                *(&v208 + 1) = v48;
                *&v209 = v49;
                *(&v209 + 1) = v50;
                v210[0] = *(v46 + 48);
                LOWORD(v210[1]) = v51 & 0xC7FF;
                sub_1D690A374(v206);
                goto LABEL_180;
              }

              if (v50 >> 6 && v50 >> 6 != 1)
              {
                if ((v50 & 0x3F) != 1 || (v48 & 0xF000000000000007) == 0xF000000000000007)
                {
                  goto LABEL_181;
                }

                v55 = v41[3];
                *&v208 = *(v46 + 24);
                goto LABEL_177;
              }

LABEL_172:
              if (*(v46 + 32) != 1 || (*(v46 + 16) & 0xF000000000000007) == 0xF000000000000007)
              {
                goto LABEL_181;
              }

              v55 = v41[3];
              *&v208 = *(v46 + 16);
LABEL_177:

              sub_1D6E5C118(a1);

              goto LABEL_180;
            }

LABEL_181:
            sub_1D627B710(a1, v45);
            sub_1D6297730(a1, v47);
            v207 = 0;
            goto LABEL_182;
          }

          v207 = 0;
LABEL_182:

          v12 = v203;
          goto LABEL_7;
        }

        v95 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v96 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        a1 = v206;
        sub_1D627EC58(v206, v95);
        sub_1D6297730(a1, v96);
LABEL_107:
        v207 = 0;
        goto LABEL_182;
      }

      if (!v44)
      {
        v79 = *(v40 + 16);
        v80 = *(v40 + 40);
        v81 = *(v40 + 48);
        v82 = *(v40 + 64);
        v200 = *(v40 + 56);
        v207 = v82;
        v83 = *(v40 + 72);
        if ((v80 & 4) != 0)
        {
          *&v208 = v79;
          a1 = v206;
          sub_1D6E5C118(v206);
        }

        else
        {
          v202 = v39;
          v204 = v17;
          v86 = (v40 + 24);
          v85 = *(v40 + 24);
          v84 = v86[1];
          v87 = v206;
          sub_1D6282658(v206, v79);
          sub_1D626CB38(v87, v85, v84);
          a1 = v206;
        }

        if ((v207 & 0x2000000000000000) != 0)
        {
          *&v208 = v81;
          sub_1D6297BE8(a1);
        }

        else
        {
          v118 = *(v81 + 32);
          v208 = *(v81 + 16);
          v209 = v118;
          v210[0] = *(v81 + 48);
          *(v210 + 15) = *(v81 + 63);
          sub_1D628DEA4(a1);
          sub_1D6281C84(a1, v200);
          *&v208 = v207;

          sub_1D6297BE8(a1);
        }

        sub_1D6297F18(a1, v83);
        goto LABEL_107;
      }

      v202 = v39;
      v204 = v15 & 0x1FFFFFFFFFFFFFFFLL;
      v97 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v99 = *((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
      v98 = v41[6];
      v101 = v41[7];
      v100 = v41[8];
      v102 = v41[10];
      if ((~v97 & 0xF000000000000007) == 0 && (v99 & 7) == 7)
      {
        goto LABEL_145;
      }

      v197 = v41[6];
      v194 = v100;
      v195 = v101;
      v200 = v102;
      v207 = 0;
      v104 = v41[2];
      v105 = v41[4];
      if ((v99 & 4) != 0)
      {
        *&v208 = v41[2];
        v106 = v105;
        sub_1D62B7098(v104, v97, v105, v99);
        v149 = v207;
        sub_1D6E5C118(v206);
        v109 = v149;
        v110 = v104;
        if (!v149)
        {
          goto LABEL_144;
        }

        v189 = v97;
        v190 = v106;
        v191 = v99;
      }

      else
      {
        v106 = v41[4];
        sub_1D62B7098(v41[2], v97, v105, v99);
        v107 = v206;
        v108 = v207;
        sub_1D6282658(v206, v104);
        if (!v108)
        {
          sub_1D626CB38(v107, v97, v106);
          v109 = 0;
          v110 = v104;
LABEL_144:
          sub_1D62B7110(v110, v97, v106, v99);
          v43 = v109;
          v102 = v200;
          v100 = v194;
          v101 = v195;
          v98 = v197;
LABEL_145:
          a1 = v206;
          if ((v98 & 0x3000000000000007 & v100) == 0x3000000000000007)
          {
            goto LABEL_148;
          }

          *&v208 = v98;
          *(&v208 + 1) = v101;
          *&v209 = v100;
          v150 = v98;
          v207 = v43;
          sub_1D62B6FC0(v98, v101, v100);
          v43 = v207;
          sub_1D62975F8(a1);
          if (!v43)
          {
            sub_1D62B703C(v150, v101, v100);
LABEL_148:
            sub_1D627DA04(a1, v102);
            v207 = v43;
            if (v43)
            {

              return;
            }

            goto LABEL_182;
          }

          sub_1D62B703C(v150, v101, v100);
LABEL_212:

LABEL_213:

          return;
        }

        v110 = v104;
        v189 = v97;
        v190 = v106;
        v191 = v99;
      }

      sub_1D62B7110(v110, v189, v190, v191);
      goto LABEL_212;
    }

    if (v18 != 3)
    {
      goto LABEL_6;
    }

    v205 = v16;
    v19 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v202 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v203 = v12;
    v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v21 = *(v19 + 32);
    v208 = *(v19 + 16);
    v209 = v21;
    v210[0] = *(v19 + 48);
    *(v210 + 15) = *(v19 + 63);
    v22 = v208;
    v23 = *(&v21 + 1);
    v24 = v21;
    v25 = v210[1];
    if (BYTE2(v210[1]))
    {
      v26 = 8;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26 & 0xFFFFFFF8 | (LOWORD(v210[1]) >> 11) & 7;
    v200 = v20;
    if (v27 <= 4)
    {
      v28 = v207;
      if (v27 <= 1)
      {
        if (v27)
        {
          goto LABEL_164;
        }

        v94 = (DWORD2(v21) >> 3) & 7;
        if (v94 <= 1)
        {
          if (v94)
          {
            goto LABEL_164;
          }

          goto LABEL_159;
        }

        if (v94 != 2 && v94 != 3)
        {
          if (!(BYTE8(v21) >> 6) || BYTE8(v21) >> 6 == 1)
          {
            v220 = v208;
            LOBYTE(v221) = v21;

            v62 = v202;

            a1 = v206;
            sub_1D628E900(v206);
            if (v28)
            {
              goto LABEL_237;
            }

            goto LABEL_185;
          }

          sub_1D6287888(v206, v22, *(&v22 + 1), v24, v23 & 7);
          if (v28)
          {
LABEL_237:

            goto LABEL_231;
          }

          a1 = v206;
          goto LABEL_171;
        }
      }

      else if (v27 != 3)
      {
        goto LABEL_164;
      }

      goto LABEL_159;
    }

    v28 = v207;
    if (v27 > 6)
    {
      if (v27 != 7)
      {
        a1 = v206;

        v62 = v202;
LABEL_49:

        goto LABEL_185;
      }

      if (!(LOWORD(v210[1]) >> 14))
      {
LABEL_164:

        v62 = v202;

        a1 = v206;
        goto LABEL_185;
      }

      if (LOWORD(v210[1]) >> 14 == 1)
      {
        v214 = v208;
        v215 = v21;
        v224 = 5;

        v114 = v19;

        sub_1D62B5248(&v208, &v220);
        v115 = sub_1D703E0C8(&v214, &v224);
        if (v28)
        {

          return;
        }

        v116 = v115;
        v117 = swift_allocObject();
        *(v117 + 16) = v22;
        *(v117 + 32) = v116;
        *(v117 + 40) = 0;

        a1 = v206;
        sub_1D6C4D24C(v117 | 0x3000000000000000);

        v19 = v114;
      }

      else
      {
        v223 = v210[1] & 0x7FF;
        v193 = *(&v210[0] + 1);
        v194 = *&v210[0];
        v197 = v19;
        v195 = *(&v208 + 1);
        switch(((v210[1] & 0x700) >> 7) & 0xFFFFFFFE | (LOWORD(v210[1]) >> 3) & 1)
        {
          case 3u:
          case 4u:
            v214 = v208;
            v215 = v21;
            v224 = 5;

            sub_1D62B5248(&v208, &v220);

            v184 = sub_1D703E0C8(&v214, &v224);
            v207 = v28;
            if (!v28)
            {
              v185 = v184;

              v186 = swift_allocObject();
              v204 = v17;
              *(v186 + 16) = v22;
              *(v186 + 32) = v185;
              *(v186 + 40) = 0;
              sub_1D6C4D24C(v186 | 0x3000000000000000);
              v17 = v204;

              v28 = v207;
              goto LABEL_169;
            }

            goto LABEL_213;
          default:

LABEL_169:
            v152 = v223;
            *&v220 = v22;
            *(&v220 + 1) = v195;
            *&v221 = v24;
            *(&v221 + 1) = v23;
            v207 = v24;
            v192 = v22;
            v154 = v193;
            v153 = v194;
            *v222 = v194;
            *&v222[8] = v193;
            v222[16] = v25;
            v222[17] = BYTE1(v223);
            v155 = v206;
            sub_1D62099A8(v206);
            if (v28)
            {
              goto LABEL_229;
            }

            *&v214 = v192;
            *(&v214 + 1) = v195;
            v215 = v207;
            v216 = v23;
            v217 = v153;
            v218 = v154;
            v219 = v152;
            sub_1D5FD697C(v155);
            a1 = v155;
            v19 = v197;
            break;
        }
      }

LABEL_171:
      v62 = v202;
      goto LABEL_185;
    }

    if (v27 == 5)
    {
      goto LABEL_164;
    }

    if (BYTE8(v21) >> 6 && BYTE8(v21) >> 6 != 1)
    {
      break;
    }

LABEL_159:
    if (v21 > 1u)
    {
      v62 = v202;
    }

    else
    {
      v62 = v202;
      if (v21 && (~v208 & 0xF000000000000007) != 0)
      {
        *&v220 = v208;

        sub_1D5CFCFAC(v22);
        a1 = v206;
        sub_1D6E5C118(v206);
        if (v28)
        {
          goto LABEL_236;
        }

        goto LABEL_185;
      }
    }

    a1 = v206;
LABEL_185:
    sub_1D627B710(a1, v62);
    if (v28)
    {
LABEL_229:

      goto LABEL_230;
    }

    v157 = v200;
    v158 = v200 >> 61;
    if ((v200 >> 61) <= 1)
    {
      v204 = v17;
      v197 = v19;
      if (v158)
      {
        v171 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v173 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
        v172 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
        v175 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
        v174 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
        v176 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x50);
        if ((~v171 & 0xF000000000000007) != 0 || (*((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x28) & 7) != 7)
        {
          v194 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
          v195 = v175;
          v200 = v174;
          v207 = v176;
          v177 = *((v157 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v178 = *((v157 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          *&v220 = v178;
          *(&v220 + 1) = v171;
          *&v221 = v177;
          *(&v221 + 1) = v173;
          sub_1D62B7098(v178, v171, v177, v173);
          sub_1D629758C(v206);
          sub_1D62B7130(v178, v171, v177, v173);
          a1 = v206;
          v176 = v207;
          v174 = v200;
          v172 = v194;
          v175 = v195;
        }

        if ((v172 & 0x3000000000000007 & v174) != 0x3000000000000007)
        {
          v179 = v176;
          *&v220 = v172;
          *(&v220 + 1) = v175;
          *&v221 = v174;
          v180 = v172;
          v181 = v174;
          v207 = 0;
          v182 = v175;
          sub_1D62B6FC0(v172, v175, v174);
          v183 = v207;
          sub_1D62975F8(a1);
          if (v183)
          {
            sub_1D62B703C(v180, v182, v181);

            goto LABEL_231;
          }

          sub_1D62B703C(v180, v182, v181);
          v176 = v179;
        }

        sub_1D627DA04(a1, v176);
        v207 = 0;
      }

      else
      {
        v163 = *(v200 + 16);
        v164 = *(v200 + 48);
        v166 = *(v200 + 56);
        v165 = *(v200 + 64);
        v207 = *(v200 + 72);
        v168 = *(v200 + 24);
        v167 = *(v200 + 32);
        v169 = v206;
        sub_1D6282658(v206, v163);
        sub_1D626CB38(v169, v168, v167);
        *&v220 = v164;
        *(&v220 + 1) = v166;
        *&v221 = v165;
        sub_1D62B6FC0(v164, v166, v165);
        a1 = v206;
        sub_1D62975F8(v206);
        sub_1D62B703C(v164, v166, v165);
        sub_1D6297F18(a1, v207);
        v207 = 0;
      }
    }

    else if (v158 == 2)
    {
      v170 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D627EC58(a1, *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x10));
      sub_1D6297730(a1, v170);
      v207 = 0;
    }

    else if (v158 == 3)
    {
      v197 = v19;
      v159 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v160 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v161 = *((v200 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v162 = *(v159 + 32);
      v220 = *(v159 + 16);
      v221 = v162;
      *v222 = *(v159 + 48);
      *&v222[15] = *(v159 + 63);
      sub_1D628DEA4(a1);
      sub_1D627B710(a1, v160);
      sub_1D6297730(a1, v161);
      v207 = 0;
    }

    else
    {
      v207 = 0;
    }

    v12 = v203;
LABEL_7:
    v13 += 2;
    --v12;
    v2 = v207;
    if (!v12)
    {
      return;
    }
  }

  if ((BYTE8(v21) & 0x3Fu) > 1)
  {
    a1 = v206;
LABEL_184:

    v62 = v202;

    goto LABEL_185;
  }

  a1 = v206;
  if ((BYTE8(v21) & 0x3F) == 0)
  {
    goto LABEL_184;
  }

  v62 = v202;
  if ((~*(&v208 + 1) & 0xF000000000000007) == 0)
  {

    goto LABEL_49;
  }

  *&v220 = *(&v208 + 1);

  v197 = v19;

  sub_1D5CFCFAC(*(&v22 + 1));
  sub_1D6E5C118(v22);
  if (!v28)
  {

    v19 = v197;
    goto LABEL_185;
  }

LABEL_236:

LABEL_230:

LABEL_231:
}

void sub_1D62809AC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v96 = type metadata accessor for FormatCommandOpenURL();
  MEMORY[0x1EEE9AC00](v96, v6);
  v98 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v97 = &v90 - v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 40);
    v95 = a1;
    do
    {
      v13 = *v12;
      *&v101 = *(v12 - 1);

      swift_retain_n();
      sub_1D6285C00(a1);
      if (v3)
      {

        return;
      }

      v14 = v13 >> 62;
      if ((v13 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v28 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v29 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1D62809AC(a1, v28);
          sub_1D62A10B8(a1, v29);
          v3 = 0;

          goto LABEL_5;
        }

        goto LABEL_4;
      }

      if (v14)
      {
        v108 = v11;
        v30 = *((v13 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v31 = *(v30 + 32);
        v105 = *(v30 + 16);
        v106 = v31;
        v32 = *(v30 + 48);
        *&v107[15] = *(v30 + 63);
        *v107 = v32;
        v33 = v105;
        v34 = v31;
        if (v107[18])
        {
          v35 = 8;
        }

        else
        {
          v35 = 0;
        }

        v36 = v35 & 0xFFFFFFF8 | (*&v107[16] >> 11) & 7;
        if (v36 > 4)
        {
          if (v36 <= 6)
          {
            if (v36 == 5)
            {
              goto LABEL_68;
            }

            if (!(BYTE8(v31) >> 6) || BYTE8(v31) >> 6 == 1)
            {
              goto LABEL_45;
            }

            v45 = BYTE8(v31) & 0x3F;
            if (v45 <= 1)
            {
              if ((BYTE8(v31) & 0x3F) == 0)
              {
                goto LABEL_67;
              }

LABEL_81:
              if ((~*(&v105 + 1) & 0xF000000000000007) != 0)
              {
                *&v99 = *(&v105 + 1);
                v33 = *(&v105 + 1);
LABEL_49:

                sub_1D62B5248(&v105, &v101);
                sub_1D5CFCFAC(v33);
                sub_1D6E5C118(a1);
LABEL_50:

                goto LABEL_84;
              }

LABEL_68:

              goto LABEL_69;
            }

LABEL_70:
            v11 = v108;
            if (v45 != 2)
            {
LABEL_62:
              sub_1D5D085FC(&v105);
            }
          }

          else
          {
            if (v36 == 7)
            {
              if (!(*&v107[16] >> 14))
              {
                goto LABEL_68;
              }

              if (*&v107[16] >> 14 != 1)
              {
                switch((*&v107[16] >> 7) & 0xE | (*&v107[16] >> 3) & 1)
                {
                  case 1:
                  case 5:
                  case 6:
                  case 7:
                  case 9:
                  case 0xA:
                  case 0xB:
                  case 0xC:
                  case 0xD:

                    break;
                  case 2:
                    v93 = v30;
                    v94 = *(&v105 + 1);
                    v70 = v107[16];

                    sub_1D62B5248(&v105, &v101);
                    v71 = v70;
                    if ((v70 & 0xF0) != 0x30)
                    {
                      goto LABEL_143;
                    }

                    if (BYTE1(v34) <= 1u)
                    {
                      if (BYTE1(v34))
                      {
                        if (v34 > 0xFDu)
                        {
                          goto LABEL_143;
                        }

                        v76 = v34 >> 6;
                        if (v76 > 1)
                        {
                          if (v76 == 2)
                          {
                            if ((v34 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v73 = &unk_1F5112C08;
                          }

                          else
                          {
                            if ((v34 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v73 = &unk_1F5112C30;
                          }
                        }

                        else if (v76)
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112BE0;
                        }

                        else
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112BB8;
                        }
                      }

                      else
                      {
                        if (v34 > 0xFDu)
                        {
                          goto LABEL_143;
                        }

                        v74 = v34 >> 6;
                        if (v74 > 1)
                        {
                          if (v74 == 2)
                          {
                            if ((v34 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v73 = &unk_1F5112B68;
                          }

                          else
                          {
                            if ((v34 & 1) == 0)
                            {
                              goto LABEL_141;
                            }

                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v73 = &unk_1F5112B90;
                          }
                        }

                        else
                        {
                          if (!v74)
                          {
                            if (v34)
                            {
                              sub_1D62B5248(&v105, &v101);
                              sub_1D62B5248(&v105, &v101);
                              v73 = &unk_1F5112B18;
                              goto LABEL_140;
                            }

LABEL_141:
                            sub_1D5D085FC(&v105);
                            a1 = v95;
LABEL_142:
                            v71 = v70;
                            goto LABEL_143;
                          }

                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112B40;
                        }
                      }

LABEL_140:
                      v91 = sub_1D5E26E28(v73);
                      v80 = swift_allocObject();
                      v92 = v33;
                      v81 = v94;
                      *(v80 + 16) = v33;
                      *(v80 + 24) = v81;
                      *(v80 + 32) = v91;
                      *(v80 + 40) = 0;
                      v82 = v95;
                      sub_1D6C4D24C(v80 | 0x3000000000000000);
                      a1 = v82;
                      v33 = v92;

                      sub_1D5D085FC(&v105);
                      goto LABEL_142;
                    }

                    if (BYTE1(v34) == 2)
                    {
                      if (v34 > 0xFDu)
                      {
                        goto LABEL_143;
                      }

                      v75 = v34 >> 6;
                      if (v75 > 1)
                      {
                        if (v75 == 2)
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112CA8;
                        }

                        else
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112CD0;
                        }
                      }

                      else if (v75)
                      {
                        if ((v34 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v105, &v101);
                        sub_1D62B5248(&v105, &v101);
                        v73 = &unk_1F5112C80;
                      }

                      else
                      {
                        if ((v34 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v105, &v101);
                        sub_1D62B5248(&v105, &v101);
                        v73 = &unk_1F5112C58;
                      }

                      goto LABEL_140;
                    }

                    if (BYTE1(v34) == 3 && v34 <= 0xFDu)
                    {
                      v72 = v34 >> 6;
                      if (v72 > 1)
                      {
                        if (v72 == 2)
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112D48;
                        }

                        else
                        {
                          if ((v34 & 1) == 0)
                          {
                            goto LABEL_141;
                          }

                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v73 = &unk_1F5112D70;
                        }
                      }

                      else
                      {
                        if (!v72)
                        {
                          if (v34)
                          {
                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v73 = &unk_1F5112CF8;
                            goto LABEL_140;
                          }

                          goto LABEL_141;
                        }

                        if ((v34 & 1) == 0)
                        {
                          goto LABEL_141;
                        }

                        sub_1D62B5248(&v105, &v101);
                        sub_1D62B5248(&v105, &v101);
                        v73 = &unk_1F5112D20;
                      }

                      goto LABEL_140;
                    }

LABEL_143:
                    if (v71 >> 4 != 3)
                    {
                      break;
                    }

                    if (BYTE1(v34) <= 1u)
                    {
                      if (BYTE1(v34))
                      {
                        if (v34 > 0xFDu)
                        {
                          goto LABEL_80;
                        }

                        v83 = v33;
                        if ((v34 >> 6) > 1u)
                        {
                          if (v34 >> 6 == 2)
                          {
                            if (v34)
                            {
                              sub_1D62B5248(&v105, &v101);
                              sub_1D62B5248(&v105, &v101);
                              v84 = &unk_1F5112E88;
                              goto LABEL_177;
                            }
                          }

                          else if (v34)
                          {
                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v84 = &unk_1F5112EB0;
                            goto LABEL_177;
                          }
                        }

                        else if (v34 >> 6)
                        {
                          if (v34)
                          {
                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v84 = &unk_1F5112E60;
                            goto LABEL_177;
                          }
                        }

                        else if (v34)
                        {
                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v84 = &unk_1F5112E38;
                          goto LABEL_177;
                        }
                      }

                      else
                      {
                        if (v34 > 0xFDu)
                        {
                          goto LABEL_80;
                        }

                        v83 = v33;
                        if ((v34 >> 6) > 1u)
                        {
                          if (v34 >> 6 == 2)
                          {
                            if (v34)
                            {
                              sub_1D62B5248(&v105, &v101);
                              sub_1D62B5248(&v105, &v101);
                              v84 = &unk_1F5112DE8;
                              goto LABEL_177;
                            }
                          }

                          else if (v34)
                          {
                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v84 = &unk_1F5112E10;
                            goto LABEL_177;
                          }
                        }

                        else if (v34 >> 6)
                        {
                          if (v34)
                          {
                            sub_1D62B5248(&v105, &v101);
                            sub_1D62B5248(&v105, &v101);
                            v84 = &unk_1F5112DC0;
                            goto LABEL_177;
                          }
                        }

                        else if (v34)
                        {
                          sub_1D62B5248(&v105, &v101);
                          sub_1D62B5248(&v105, &v101);
                          v84 = &unk_1F5112D98;
LABEL_177:
                          v87 = sub_1D5E26E28(v84);
                          v88 = swift_allocObject();
                          v89 = v94;
                          *(v88 + 16) = v83;
                          *(v88 + 24) = v89;
                          *(v88 + 32) = v87;
                          *(v88 + 40) = 0;
                          a1 = v95;
                          sub_1D6C4D24C(v88 | 0x3000000000000000);

                          sub_1D5D085FC(&v105);
                          break;
                        }
                      }

                      sub_1D5D085FC(&v105);
                      goto LABEL_80;
                    }

                    if (BYTE1(v34) != 2 && BYTE1(v34) != 3)
                    {
                      goto LABEL_80;
                    }

                    if (v34 <= 0xFDu)
                    {
                      *&v101 = v33;
                      *(&v101 + 1) = v94;
                      LOBYTE(v102) = v34;
                      sub_1D5E1DA6C(v105, *(&v105 + 1), v106, *(&v106 + 1), *v107, *&v107[8], *&v107[16] & 0xC7FF);
                      sub_1D62A1A50();
                      sub_1D5E1E15C(v33, v94, v34);
                    }

                    break;
                  case 3:
                  case 4:
                    v99 = v105;
                    v100 = v31;
                    v104 = 5;
                    v94 = *(&v105 + 1);
                    sub_1D62B5248(&v105, &v101);

                    sub_1D62B5248(&v105, &v101);

                    v64 = sub_1D703E0C8(&v99, &v104);
                    v92 = v33;
                    v91 = v64;

                    v65 = swift_allocObject();
                    v66 = v94;
                    *(v65 + 16) = v92;
                    *(v65 + 24) = v66;
                    *(v65 + 32) = v91;
                    *(v65 + 40) = 0;
                    sub_1D6C4D24C(v65 | 0x3000000000000000);

                    *&v99 = v92;
                    *(&v99 + 1) = v94;
                    v100 = v34;
                    v104 = 5;
                    sub_1D62B5248(&v105, &v101);

                    v67 = sub_1D703E0C8(&v99, &v104);

                    v68 = swift_allocObject();
                    v69 = v94;
                    a1 = v95;
                    *(v68 + 16) = v92;
                    *(v68 + 24) = v69;
                    *(v68 + 32) = v67;
                    *(v68 + 40) = 0;
                    sub_1D6C4D24C(v68 | 0x3000000000000000);
                    goto LABEL_50;
                  default:

                    sub_1D62B5248(&v105, &v101);
                    break;
                }

LABEL_84:
                sub_1D5D085FC(&v105);

LABEL_69:

                v11 = v108;
                goto LABEL_5;
              }

              v99 = v105;
              v100 = v31;
              v104 = 5;
              v47 = v30;
              v48 = *(&v105 + 1);
              sub_1D62B5248(&v105, &v101);
              v93 = v47;

              sub_1D62B5248(&v105, &v101);
              v49 = sub_1D703E0C8(&v99, &v104);
              v50 = swift_allocObject();
              *(v50 + 16) = v33;
              *(v50 + 24) = v48;
              *(v50 + 32) = v49;
              *(v50 + 40) = 0;
              v94 = v50 | 0x3000000000000000;
              v51 = *a1;
              swift_beginAccess();
              v52 = *(v51 + 16);
              v53 = *(v52 + 16);
              if (v53)
              {
                v54 = *(v52 + 8 * v53 + 24);

                v55 = sub_1D60E14A8(v54, v94);

                if (v55)
                {

LABEL_80:
                  sub_1D5D085FC(&v105);

LABEL_32:

                  a1 = v95;
                  v11 = v108;
                  goto LABEL_5;
                }
              }

              else
              {
              }

              v56 = v95;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v58 = *v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
                v85 = swift_allocObject();
                swift_beginAccess();
                v86 = v58[2];
                v101 = v58[1];
                v102 = v86;
                v103[0] = v58[3];
                *(v103 + 14) = *(v58 + 62);
                memmove((v85 + 16), v58 + 1, 0x3EuLL);
                sub_1D5EB9AB0(&v101, &v99);

                *v56 = v85;
                v58 = v85;
              }

              swift_beginAccess();
              v59 = *(v58 + 2);
              v60 = swift_isUniquelyReferenced_nonNull_native();
              *(v58 + 2) = v59;
              if (v60)
              {
                v61 = v58;
              }

              else
              {
                v59 = sub_1D698F848(0, *(v59 + 2) + 1, 1, v59);
                v61 = v58;
                *(v58 + 2) = v59;
              }

              v63 = *(v59 + 2);
              v62 = *(v59 + 3);
              if (v63 >= v62 >> 1)
              {
                v59 = sub_1D698F848((v62 > 1), v63 + 1, 1, v59);
              }

              *(v59 + 2) = v63 + 1;
              *&v59[8 * v63 + 32] = v94;
              *(v61 + 2) = v59;
              swift_endAccess();
              goto LABEL_80;
            }

            v11 = v108;
          }

LABEL_4:

          goto LABEL_5;
        }

        if (v36 > 1)
        {
          if (v36 != 3)
          {
            goto LABEL_68;
          }

          goto LABEL_45;
        }

        if (v36)
        {
          goto LABEL_68;
        }

        v44 = (DWORD2(v31) >> 3) & 7;
        if (v44 > 1)
        {
          if (v44 != 2 && v44 != 3 && BYTE8(v31) >> 6 && BYTE8(v31) >> 6 != 1)
          {
            v45 = BYTE8(v31) & 7;
            if (v45 <= 1)
            {
              if ((BYTE8(v31) & 7) != 0)
              {
                goto LABEL_81;
              }

LABEL_67:
              sub_1D5D085FC(&v105);
              goto LABEL_68;
            }

            goto LABEL_70;
          }

LABEL_45:
          v46 = v31;
          if (v31 <= 1u)
          {
            if (!v31)
            {
              goto LABEL_67;
            }

            if ((~v105 & 0xF000000000000007) != 0)
            {
              *&v99 = v105;
              goto LABEL_49;
            }

            goto LABEL_68;
          }

LABEL_61:
          v11 = v108;
          if (v46 != 2)
          {
            goto LABEL_62;
          }

          goto LABEL_4;
        }

        if (v44)
        {
          goto LABEL_67;
        }

        v46 = v31;
        if (v31 > 1u)
        {
          goto LABEL_61;
        }

        if (!v31)
        {
          goto LABEL_67;
        }

        if ((~v105 & 0xF000000000000007) == 0)
        {
          goto LABEL_68;
        }

        *&v99 = v105;

        sub_1D62B5248(&v105, &v101);
        sub_1D5CFCFAC(v33);
        sub_1D6E5C118(a1);

        sub_1D5D085FC(&v105);

        v11 = v108;
      }

      else
      {
        v15 = swift_projectBox();
        v16 = v97;
        sub_1D62B50EC(v15, v97, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B50EC(v16, v98, type metadata accessor for FormatCommandOpenURL);
        if (swift_getEnumCaseMultiPayload() < 2)
        {
          sub_1D62B51D0(v97, type metadata accessor for FormatCommandOpenURL);
          sub_1D62B51D0(v98, type metadata accessor for FormatCommandOpenURL);
          goto LABEL_4;
        }

        v108 = v11;
        v17 = v98[1];
        v19 = v98[2];
        *&v101 = *v98;
        v18 = v101;
        *(&v101 + 1) = v17;
        *&v102 = v19;
        LOBYTE(v99) = 6;

        v20 = sub_1D703E0C8(&v101, &v99);
        v94 = 0;

        v21 = swift_allocObject();
        *(v21 + 16) = v18;
        *(v21 + 24) = v17;
        *(v21 + 32) = v20;
        *(v21 + 40) = 0;
        v22 = v21 | 0x3000000000000000;
        a1 = v95;
        v23 = *v95;
        swift_beginAccess();
        v24 = *(v23 + 16);
        v25 = *(v24 + 16);
        if (!v25 || (v26 = *(v24 + 8 * v25 + 24), , v27 = sub_1D60E14A8(v26, v22), a1 = v95, , (v27 & 1) == 0))
        {
          v37 = swift_isUniquelyReferenced_nonNull_native();
          v38 = *a1;
          if ((v37 & 1) == 0)
          {
            sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
            v77 = swift_allocObject();
            swift_beginAccess();
            v78 = v38[2];
            v101 = v38[1];
            v102 = v78;
            v103[0] = v38[3];
            *(v103 + 14) = *(v38 + 62);
            memmove((v77 + 16), v38 + 1, 0x3EuLL);
            sub_1D5EB9AB0(&v101, &v99);

            *v95 = v77;
            v38 = v77;
          }

          swift_beginAccess();
          v39 = *(v38 + 2);
          v40 = swift_isUniquelyReferenced_nonNull_native();
          *(v38 + 2) = v39;
          if ((v40 & 1) == 0)
          {
            v39 = sub_1D698F848(0, *(v39 + 2) + 1, 1, v39);
            *(v38 + 2) = v39;
          }

          v42 = *(v39 + 2);
          v41 = *(v39 + 3);
          if (v42 >= v41 >> 1)
          {
            v79 = sub_1D698F848((v41 > 1), v42 + 1, 1, v39);
            v43 = v22;
            v39 = v79;
          }

          else
          {
            v43 = v22;
          }

          v3 = v94;
          *(v39 + 2) = v42 + 1;
          *&v39[8 * v42 + 32] = v43;
          *(v38 + 2) = v39;
          swift_endAccess();
          sub_1D62B51D0(v97, type metadata accessor for FormatCommandOpenURL);

          goto LABEL_32;
        }

        sub_1D62B51D0(v97, type metadata accessor for FormatCommandOpenURL);

        v11 = v108;
        v3 = v94;
      }

LABEL_5:
      v12 += 2;
      --v11;
    }

    while (v11);
  }
}

uint64_t *sub_1D6281C84(uint64_t *result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a2 + 32;
  v94 = result;
  v76 = v4;
  v77 = a2 + 32;
  while (1)
  {
    v11 = v7 + 32 * v6;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    if (v15 >> 62)
    {
      break;
    }

    v84 = v3;
    v36 = v7;
    v37 = *(v15 + 80);
    v92[1] = *(v15 + 64);
    v92[2] = v37;
    v92[3] = *(v15 + 96);
    v93 = *(v15 + 112);
    v38 = *(v15 + 32);
    v90 = *(v15 + 16);
    v91 = v38;
    v39 = *(v15 + 64);
    v92[0] = *(v15 + 48);
    v40 = *(v15 + 80);
    v41 = *(v15 + 96);
    v88[3] = v39;
    v88[4] = v40;
    v88[5] = v41;
    v89 = *(v15 + 112);
    v42 = *(v15 + 32);
    v88[0] = *(v15 + 16);
    v88[1] = v42;
    v88[2] = *(v15 + 48);
    v43 = v5;
    v44 = v12;
    v45 = v13;
    v46 = v14;
    sub_1D5D03180(v12, v13, v14);
    swift_retain_n();
    sub_1D5D0322C(&v90, v87);
    sub_1D6287E20(v43);
    sub_1D5D07BA8(v44, v45, v46);

    sub_1D5D07BBC(&v90);

    if (v84)
    {
      return result;
    }

    v5 = v94;
    v7 = v36;
    v3 = 0;
LABEL_6:
    if (++v6 == v4)
    {
      return result;
    }
  }

  v86 = *(v11 + 16);
  if (v15 >> 62 != 1)
  {
    v85 = v3;
    v47 = v6;
    v48 = v4;
    v49 = v15 & 0x3FFFFFFFFFFFFFFFLL;
    v50 = *(v49 + 24);
    *&v90 = *(v49 + 16);
    v51 = v12;
    v52 = v13;
    sub_1D5D03180(v12, v13, v14);
    swift_retain_n();

    swift_retain_n();
    v53 = v94;
    sub_1D6297BE8(v94);
    if (v85)
    {

      sub_1D5D07BA8(v51, v52, v86);
    }

    sub_1D62844E8(v53, v50, sub_1D6297BE8);
    sub_1D5D07BA8(v51, v52, v86);

    v5 = v94;
    v4 = v48;
    v6 = v47;
    v3 = 0;
    goto LABEL_5;
  }

  v16 = *v11;
  v79 = *(v11 + 8);
  v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  v18 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v21 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  v20 = *(v17 + 40);
  v81 = *(v17 + 48);
  v82 = *(v17 + 56);
  v78 = *(v17 + 64);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  v83 = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = v20;
  v80 = v20;
  v23 = *v94;
  swift_beginAccess();
  v24 = v86;
  v25 = *(v23 + 16);
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = *(v25 + 8 * v26 + 24);
    if (v27 >> 60 == 9)
    {
      v28 = (v27 & 0xFFFFFFFFFFFFFFFLL);
      v29 = v28[4];
      v30 = v28[5];
      v31 = v28[2] == v18 && v28[3] == v83;
      if (v31 || (v32 = sub_1D72646CC(), v24 = v86, (v32 & 1) != 0))
      {
        if (v30)
        {
          if (v80)
          {
            if (v29 == v21 && v30 == v80)
            {
              v35 = v16;
              sub_1D5D03180(v16, v79, v24);
              swift_retain_n();

              goto LABEL_56;
            }

            v34 = sub_1D72646CC();
            v24 = v86;
            if (v34)
            {
              v35 = v16;
              sub_1D5D03180(v16, v79, v86);
              swift_retain_n();

LABEL_56:

              v63 = v81;
              v62 = v82;
              sub_1D5E433CC(v81, v82, v78);
              v61 = v35;

LABEL_58:

              goto LABEL_36;
            }
          }
        }

        else if (!v80)
        {
          v61 = v16;
          sub_1D5D03180(v16, v79, v24);
          swift_retain_n();

          v63 = v81;
          v62 = v82;
          sub_1D5E433CC(v81, v82, v78);
          goto LABEL_58;
        }
      }
    }
  }

  sub_1D5D03180(v16, v79, v24);

  swift_retain_n();

  sub_1D5E433CC(v81, v82, v78);

  v54 = v94;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v54;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
    v70 = swift_allocObject();
    swift_beginAccess();
    v71 = v56[2];
    v90 = v56[1];
    v91 = v71;
    v92[0] = v56[3];
    *(v92 + 14) = *(v56 + 62);
    memmove((v70 + 16), v56 + 1, 0x3EuLL);
    sub_1D5EB9AB0(&v90, v88);

    *v94 = v70;
    v56 = v70;
  }

  swift_beginAccess();
  v57 = *(v56 + 2);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  *(v56 + 2) = v57;
  if ((v58 & 1) == 0)
  {
    v57 = sub_1D698F848(0, *(v57 + 2) + 1, 1, v57);
    *(v56 + 2) = v57;
  }

  v60 = *(v57 + 2);
  v59 = *(v57 + 3);
  if (v60 >= v59 >> 1)
  {
    v57 = sub_1D698F848((v59 > 1), v60 + 1, 1, v57);
  }

  *(v57 + 2) = v60 + 1;
  *&v57[8 * v60 + 32] = v22 | 0x9000000000000000;
  *(v56 + 2) = v57;
  swift_endAccess();
  v61 = v16;
  v63 = v81;
  v62 = v82;
LABEL_36:
  v4 = v76;
  v7 = v77;
  v5 = v94;
  if (v78 <= 1)
  {
    v75 = v61;
    if (v78)
    {
      v67 = *(v63 + 16);
      sub_1D5E433E0(v63, v62, 1u);
      if (v67)
      {
        v68 = (v63 + 40);
        do
        {
          if ((*v68 & 1) == 0)
          {
            *&v90 = *(v68 - 1);
            v69 = v90;
            swift_retain_n();
            sub_1D6012F58();
            if (v3)
            {
              sub_1D62B72BC(v69, 0);

              sub_1D5E4342C(v81, v82, 1u);
              sub_1D5D07BA8(v75, v79, v86);

              v72 = v81;
              v73 = v82;
              v74 = 1;
              goto LABEL_64;
            }

            sub_1D62B72BC(v69, 0);
          }

          v68 += 16;
          --v67;
        }

        while (v67);
      }

      sub_1D5E4342C(v81, v82, 1u);
      sub_1D5D07BA8(v75, v79, v86);

      v8 = v81;
      v9 = v82;
      v10 = 1;
    }

    else
    {
      v64 = *(v63 + 16);
      sub_1D5E433E0(v63, v62, 0);
      if (v64)
      {
        v65 = (v63 + 40);
        do
        {
          if ((*v65 & 1) == 0)
          {
            *&v90 = *(v65 - 1);
            v66 = v90;
            swift_retain_n();
            sub_1D6012F58();
            if (v3)
            {
              sub_1D62B72BC(v66, 0);

              sub_1D5E4342C(v81, v82, 0);
              sub_1D5D07BA8(v75, v79, v86);

              v72 = v81;
              v73 = v82;
              v74 = 0;
              goto LABEL_64;
            }

            sub_1D62B72BC(v66, 0);
          }

          v65 += 16;
          --v64;
        }

        while (v64);
      }

      sub_1D5E4342C(v81, v82, 0);
      sub_1D5D07BA8(v75, v79, v86);

      v8 = v81;
      v9 = v82;
      v10 = 0;
    }

    sub_1D5E4342C(v8, v9, v10);

LABEL_5:
    v7 = v77;
    goto LABEL_6;
  }

  if (v78 != 2)
  {

    sub_1D5E4342C(v63, v62, 0xFFu);
    sub_1D5D07BA8(v61, v79, v86);

    goto LABEL_6;
  }

  sub_1D5E433E0(v63, v62, 2u);
  sub_1D6273544(v5, v63);
  if (!v3)
  {
    sub_1D6273544(v5, v62);
    v3 = 0;

    sub_1D5E4342C(v63, v62, 2u);
    sub_1D5D07BA8(v61, v79, v86);

    sub_1D5E4342C(v63, v62, 2u);

    goto LABEL_6;
  }

  sub_1D5E4342C(v63, v62, 2u);
  sub_1D5D07BA8(v61, v79, v86);

  v72 = v63;
  v73 = v62;
  v74 = 2;
LABEL_64:
  sub_1D5E4342C(v72, v73, v74);
}

uint64_t sub_1D6282658(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 56; ; i += 32)
    {
      v6 = *(i - 8);

      swift_retain_n();

      sub_1D6285C00(v4);
      if (v2)
      {
        break;
      }

      sub_1D628DEA4(v4);
      sub_1D62827E8(v4, v6);

      sub_1D6E5C118(v4);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D62827E8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6E5C118(v4);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }

  return result;
}

uint64_t sub_1D62828D8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 32);
    do
    {
      v8 = *v5++;
      v7 = v8;
      if (v8 < 0)
      {
        v6 = *((v7 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

        sub_1D6282B60(v4, v6);
        if (v2)
        {
        }
      }

      else if (*(v7 + 40))
      {
        v13 = v5;
        v9 = *(v7 + 24);
        v10 = *(v7 + 32);
        v17 = v9;
        sub_1D5F586D0(v9, v10, 1);

        sub_1D5F586D0(v9, v10, 1);
        sub_1D5D0ACAC(0, &qword_1EDF1B018, &type metadata for FormatSourceItemTipTrait, MEMORY[0x1E69E62F8]);
        sub_1D5B49474(0, &qword_1EC8854D0);

        if (swift_dynamicCast())
        {
          v11 = *(&v15 + 1);
          v12 = v16;
          __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
          (*(v12 + 8))(v4, v11, v12);
          if (v2)
          {
            sub_1D5F5870C(v9, v10, 1);
            sub_1D5F5870C(v9, v10, 1);
            __swift_destroy_boxed_opaque_existential_1(&v14);
          }

          __swift_destroy_boxed_opaque_existential_1(&v14);
        }

        else
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
          sub_1D5BFB774(&v14, &qword_1EC8854D8, &qword_1EC8854D0);
        }

        sub_1D62768C8(v4, v10);
        sub_1D5F5870C(v9, v10, 1);
        sub_1D5F5870C(v9, v10, 1);

        if (v2)
        {
          return result;
        }

        v5 = v13;
      }

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D6282B60(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 40; ; i += 16)
    {
      swift_retain_n();

      sub_1D6285C00(v4);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6282C14(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      sub_1D629CE04(v4);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6282D08(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = (a2 + 40);
    v63 = result;
    while (1)
    {
      v6 = *v5;
      *&v49 = *(v5 - 1);

      swift_retain_n();
      sub_1D6285C00(v4);
      if (v2)
      {
      }

      v7 = v6 >> 61;
      if ((v6 >> 61) <= 1)
      {
        if (v7)
        {
          v36 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v35 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

          sub_1D6282D08(v4, v36);
          *&v49 = v35;

          sub_1D629CE04(v4);
        }

        else
        {
          v19 = *(v6 + 208);
          v59 = *(v6 + 192);
          v60 = v19;
          v20 = *(v6 + 240);
          v61 = *(v6 + 224);
          v62 = v20;
          v21 = *(v6 + 144);
          v55 = *(v6 + 128);
          v56 = v21;
          v22 = *(v6 + 176);
          v57 = *(v6 + 160);
          v58 = v22;
          v23 = *(v6 + 80);
          *&v51[16] = *(v6 + 64);
          v52 = v23;
          v24 = *(v6 + 112);
          v53 = *(v6 + 96);
          v54 = v24;
          v25 = *(v6 + 32);
          v49 = *(v6 + 16);
          v50 = v25;
          *v51 = *(v6 + 48);
          v26 = *(v6 + 208);
          v48[11] = *(v6 + 192);
          v48[12] = v26;
          v27 = *(v6 + 240);
          v48[13] = *(v6 + 224);
          v48[14] = v27;
          v28 = *(v6 + 144);
          v48[7] = *(v6 + 128);
          v48[8] = v28;
          v29 = *(v6 + 176);
          v48[9] = *(v6 + 160);
          v48[10] = v29;
          v30 = *(v6 + 80);
          v48[3] = *(v6 + 64);
          v48[4] = v30;
          v31 = *(v6 + 112);
          v48[5] = *(v6 + 96);
          v48[6] = v31;
          v32 = *(v6 + 32);
          v48[0] = *(v6 + 16);
          v48[1] = v32;
          v48[2] = *(v6 + 48);

          sub_1D5EEBE38(&v49, v47);
          sub_1D629F098(v4);

          sub_1D5EEBE94(&v49);
        }

        goto LABEL_3;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 3)
      {
        v34 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        *&v49 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        sub_1D629CE04(v4);

        sub_1D6282C14(v4, v34);

        goto LABEL_3;
      }

      v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v10 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      *&v49 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v9 = v49;
      *(&v49 + 1) = v8;
      *&v50 = v10;
      LOBYTE(v48[0]) = 9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      v11 = sub_1D703E0C8(&v49, v48);
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v8;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;
      v13 = v12 | 0x3000000000000000;
      v14 = *v63;
      swift_beginAccess();
      v15 = *(v14 + 16);
      v16 = *(v15 + 16);
      v46 = v13;
      if (!v16)
      {

LABEL_18:
        v37 = v63;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5B4B554(0, &qword_1EC880338, &type metadata for FormatDerivedData._$CopyOnWriteStorage, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E6B60]);
          v44 = v39;
          v39 = swift_allocObject();
          swift_beginAccess();
          v45 = v44[2];
          v49 = v44[1];
          v50 = v45;
          *v51 = v44[3];
          *&v51[14] = *(v44 + 62);
          memmove((v39 + 16), v44 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&v49, v48);

          *v37 = v39;
        }

        swift_beginAccess();
        v40 = *(v39 + 16);
        v41 = swift_isUniquelyReferenced_nonNull_native();
        *(v39 + 16) = v40;
        if ((v41 & 1) == 0)
        {
          v40 = sub_1D698F848(0, *(v40 + 2) + 1, 1, v40);
          *(v39 + 16) = v40;
        }

        v43 = *(v40 + 2);
        v42 = *(v40 + 3);
        if (v43 >= v42 >> 1)
        {
          v40 = sub_1D698F848((v42 > 1), v43 + 1, 1, v40);
        }

        *(v40 + 2) = v43 + 1;
        *&v40[8 * v43 + 32] = v46;
        *(v39 + 16) = v40;
        swift_endAccess();

        v4 = v63;
        goto LABEL_4;
      }

      v17 = *(v15 + 8 * v16 + 24);

      v18 = sub_1D60E14A8(v17, v13);

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }

      v4 = v63;
LABEL_4:
      v5 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    v33 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    *&v49 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    swift_retain_n();

    sub_1D629CE04(v4);

    *&v49 = v33;

    sub_1D629CE04(v4);

LABEL_3:

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_1D62833C4(uint64_t result, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t (*a4)(__int128 *))
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v8 = result;
    for (i = (a2 + 32); ; i = (i + 168))
    {
      v10 = i[9];
      v25 = i[8];
      v26 = v10;
      v27 = *(i + 160);
      v11 = i[5];
      v22[0] = i[4];
      v22[1] = v11;
      v12 = i[7];
      v23 = i[6];
      v24 = v12;
      v13 = i[1];
      v18 = *i;
      v19 = v13;
      v14 = i[3];
      v20 = i[2];
      v21 = v14;
      v17 = v18;
      a3(&v18, v16);

      sub_1D6EE4610(v8);
      if (v4)
      {
        break;
      }

      v15 = v19;

      if (v15)
      {
        sub_1D6273544(v8, v15);
      }

      if ((~*(&v19 + 1) & 0xF000000000000007) != 0)
      {
        v16[0] = *(&v19 + 1);

        sub_1D62891F0(v8);
      }

      if (v20)
      {
        sub_1D626FA1C(v8, v20);
      }

      if (v26 != 254)
      {
        v16[0] = v23;
        swift_retain_n();
        sub_1D62895DC(v8);

        sub_1D5D0ABCC(v22, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      if ((~*(&v26 + 1) & 0xF000000000000007) != 0)
      {
        v16[0] = *(&v26 + 1);

        sub_1D62895DC(v8);
      }

      result = a4(&v18);
      if (!--v5)
      {
        return result;
      }
    }

    return a4(&v18);
  }

  return result;
}

uint64_t sub_1D6283604(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 13)
    {
      v6 = i[9];
      v7 = i[11];
      v53 = i[10];
      v54 = v7;
      v8 = i[11];
      v55 = i[12];
      v9 = i[5];
      v10 = i[7];
      v49 = i[6];
      v50 = v10;
      v11 = i[7];
      v12 = i[9];
      v51 = i[8];
      v52 = v12;
      v13 = i[1];
      v14 = i[3];
      v45 = i[2];
      v46 = v14;
      v15 = i[3];
      v16 = i[5];
      v47 = i[4];
      v48 = v16;
      v17 = i[1];
      v44[0] = *i;
      v44[1] = v17;
      v41 = v53;
      v42 = v8;
      v43 = i[12];
      v37 = v49;
      v38 = v11;
      v39 = v51;
      v40 = v6;
      v33 = v45;
      v34 = v15;
      v35 = v47;
      v36 = v9;
      v31 = v44[0];
      v32 = v13;
      sub_1D5D0B3B8(v44, &v18);
      sub_1D6296FA4(v4);
      if (v2)
      {
        break;
      }

      v28 = v41;
      v29 = v42;
      v30 = v43;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      v27 = v40;
      v20 = v33;
      v21 = v34;
      v22 = v35;
      v23 = v36;
      v18 = v31;
      v19 = v32;
      result = sub_1D5D0B670(&v18);
      if (!--v3)
      {
        return result;
      }
    }

    v28 = v41;
    v29 = v42;
    v30 = v43;
    v24 = v37;
    v25 = v38;
    v26 = v39;
    v27 = v40;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v23 = v36;
    v18 = v31;
    v19 = v32;
    return sub_1D5D0B670(&v18);
  }

  return result;
}

uint64_t sub_1D6283774(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 32);
    do
    {
      v7 = v6[9];
      v29 = v6[8];
      v30 = v7;
      v31 = v6[10];
      v32 = *(v6 + 176);
      v8 = v6[5];
      v26 = v6[4];
      v27 = v8;
      v9 = v6[7];
      v28[0] = v6[6];
      v28[1] = v9;
      v10 = v6[1];
      v22 = *v6;
      v23 = v10;
      v11 = v6[3];
      v24 = v6[2];
      v25 = v11;
      v21 = v22;
      sub_1D62B7804(&v22, &v16);

      sub_1D6EE4610(v5);
      if (v3)
      {

        return sub_1D62B7860(&v22);
      }

      v12 = v23;
      if (v27 <= 1u)
      {
        if (v27)
        {
          v18 = v25;
          v19 = v26;
          v20 = v27;
          v16 = v23;
          v17 = v24;
          sub_1D619916C(&v16, v15);
          sub_1D6276AB0(v5, v12);
          sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        }

        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      else if (v27 == 2)
      {
        v14 = v26;
        v18 = v25;
        v19 = v26;
        v20 = v27;
        v16 = v23;
        v17 = v24;
        sub_1D619916C(&v16, v15);
        sub_1D627683C(v5, v12);
        if (v14)
        {

          sub_1D6273544(v5, v14);
          sub_1D6273544(v5, *(&v14 + 1));
          v3 = 0;
          sub_1D5CDE22C(v14);
        }

        sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = *(&v27 + 1);
        if (!*(&v27 + 1))
        {
          goto LABEL_13;
        }
      }

      sub_1D626FA1C(v5, v13);
LABEL_13:
      if (v32 != 254)
      {
        *&v16 = v29;
        swift_retain_n();
        sub_1D62895DC(v5);

        sub_1D5D0ABCC(v28, &qword_1EDF33718, &type metadata for FormatShadow);
      }

      result = sub_1D62B7860(&v22);
      v6 = (v6 + 184);
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6283A60(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 32; ; i += 216)
    {
      v6 = *(i + 176);
      v7 = *(i + 144);
      v55 = *(i + 160);
      v56 = v6;
      v8 = *(i + 176);
      v57 = *(i + 192);
      v9 = *(i + 112);
      v10 = *(i + 80);
      v51 = *(i + 96);
      v52 = v9;
      v11 = *(i + 112);
      v12 = *(i + 144);
      v53 = *(i + 128);
      v54 = v12;
      v13 = *(i + 48);
      v14 = *(i + 16);
      v47 = *(i + 32);
      v48 = v13;
      v15 = *(i + 48);
      v16 = *(i + 80);
      v49 = *(i + 64);
      v50 = v16;
      v17 = *(i + 16);
      v46[0] = *i;
      v46[1] = v17;
      v42 = v55;
      v43 = v8;
      v44 = *(i + 192);
      v38 = v51;
      v39 = v11;
      v40 = v53;
      v41 = v7;
      v34 = v47;
      v35 = v15;
      v36 = v49;
      v37 = v10;
      v58 = *(i + 208);
      v45 = *(i + 208);
      v32 = v46[0];
      v33 = v14;
      sub_1D5D0B0E4(v46, &v18);
      sub_1D62947BC(v4);
      if (v2)
      {
        break;
      }

      v28 = v42;
      v29 = v43;
      v30 = v44;
      v31 = v45;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v27 = v41;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v18 = v32;
      v19 = v33;
      result = sub_1D5D0B1AC(&v18);
      if (!--v3)
      {
        return result;
      }
    }

    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v20 = v34;
    v21 = v35;
    v22 = v36;
    v23 = v37;
    v18 = v32;
    v19 = v33;
    return sub_1D5D0B1AC(&v18);
  }

  return result;
}

uint64_t sub_1D6283BF0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 56; ; i += 32)
    {

      swift_retain_n();

      sub_1D6E5C118(v4);
      if (v2)
      {
        break;
      }

      sub_1D62A1FA8(v4);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1D6283CFC(unint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = result;
    v6 = (a2 + 40);
    do
    {
      v9 = *v6;

      sub_1D5D085B4(v9);

      sub_1D6285C00(v5);
      if (v3)
      {

        sub_1D5D05694(v9);
      }

      v10 = v9 >> 61;
      if ((v9 >> 61) <= 2)
      {
        if (!v10)
        {
          v14 = *(v9 + 16);
          sub_1D5D085B4(v9);
          sub_1D5C82CD8(v14);
          sub_1D626D654(v5);

          sub_1D5D05694(v9);
          sub_1D5C92A8C(v14);
          result = sub_1D5D05694(v9);
          goto LABEL_6;
        }

        if (v10 == 1)
        {
          v12 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          sub_1D5D085B4(v9);

          sub_1D5D085B4(v11);
          sub_1D6283CFC(v5, v12);
          v13 = v11 >> 61;
          if ((v11 >> 61) <= 2)
          {
            if (!v13)
            {
              sub_1D5D085B4(v11);
              sub_1D626D654(v5);

              sub_1D5D05694(v9);
              sub_1D5D05694(v11);

              sub_1D5D05694(v11);
              result = sub_1D5D05694(v9);
              goto LABEL_6;
            }

            if (v13 != 1)
            {
LABEL_29:
              v17 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1D5D085B4(v11);
              sub_1D6283BF0(v5, v17);
              goto LABEL_32;
            }

            v15 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
            v19 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1D5D085B4(v11);
            sub_1D6283CFC(v5, v15);
            sub_1D5D085B4(v19);
            sub_1D62A1DA4(v5);

            sub_1D5D05694(v9);
            v16 = v19;
LABEL_33:
            sub_1D5D05694(v16);
            sub_1D5D05694(v11);

            v18 = v11;
          }

          else
          {
            if (v13 <= 4)
            {
              if (v13 == 3)
              {
                goto LABEL_29;
              }

LABEL_31:
              sub_1D5D085B4(v11);
              sub_1D6E5C118(v5);
LABEL_32:
              v3 = 0;

              v16 = v9;
              goto LABEL_33;
            }

            if (v13 == 5)
            {
              goto LABEL_31;
            }

            if (v11 == 0xC000000000000000)
            {

              sub_1D5D05694(v9);
              sub_1D5D05694(0xC000000000000000);

              v18 = 0xC000000000000000;
            }

            else
            {

              sub_1D5D05694(v9);
              if (v11 == 0xC000000000000008)
              {
                sub_1D5D05694(0xC000000000000008);

                v18 = 0xC000000000000008;
              }

              else
              {
                sub_1D5D05694(0xC000000000000010);

                v18 = 0xC000000000000010;
              }
            }
          }

          sub_1D5D05694(v18);
          result = sub_1D5D05694(v9);
          goto LABEL_6;
        }
      }

      else
      {
        if (v10 > 4)
        {
          if (v10 != 5)
          {
            if (v9 == 0xC000000000000000)
            {

              v8 = 0xC000000000000000;
            }

            else
            {

              if (v9 == 0xC000000000000008)
              {
                v8 = 0xC000000000000008;
              }

              else
              {
                v8 = 0xC000000000000010;
              }
            }

            goto LABEL_5;
          }

LABEL_19:
          sub_1D5D085B4(v9);

          sub_1D6E5C118(v5);

          sub_1D5D05694(v9);

          goto LABEL_4;
        }

        if (v10 != 3)
        {
          goto LABEL_19;
        }
      }

      v7 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D5D085B4(v9);

      sub_1D6283BF0(v5, v7);

      sub_1D5D05694(v9);

LABEL_4:
      v8 = v9;
LABEL_5:
      result = sub_1D5D05694(v8);
LABEL_6:
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D6284208(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v22 = *(a2 + 16);
  if (v22)
  {
    v4 = result;
    v5 = 0;
    v6 = a2 + 32;
    p_superclass = (&OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler + 8);
    v21 = a2 + 32;
    while (1)
    {
      v8 = (v6 + 24 * v5);
      v9 = *v8;
      v10 = v8[1];
      v11 = v8[2];

      v26 = v11;
      sub_1D5DEA234(v11);
      v12 = p_superclass[355];

      if (v12 != -1)
      {
        swift_once();
      }

      v23[0] = v9;
      v23[1] = v10;
      result = sub_1D6844380(v23);
      v13 = result;
      v14 = *(result + 16);
      if (v14)
      {
        break;
      }

LABEL_11:

      v20 = v26;
      if (v26 >= 3)
      {
        sub_1D6273544(v4, v26);
        if (v3)
        {

          return sub_1D5CBF568(v20);
        }
      }

      ++v5;

      result = sub_1D5CBF568(v20);
      v6 = v21;
      p_superclass = &OBJC_METACLASS____TtC8NewsFeed20SavingCommandHandler.superclass;
      if (v5 == v22)
      {
        return result;
      }
    }

    v15 = 0;
    v16 = 32;
    while (v15 < *(v13 + 16))
    {
      v17 = *(v13 + v16);
      v18 = *(v13 + v16 + 16);
      v19 = *(v13 + v16 + 32);
      v25 = *(v13 + v16 + 48);
      v24[1] = v18;
      v24[2] = v19;
      v24[0] = v17;
      sub_1D5E3B610(v24, v23);
      sub_1D6844F60(v4);
      if (v3)
      {

        sub_1D5E3B66C(v24);

        sub_1D5CBF568(v26);
      }

      ++v15;
      result = sub_1D5E3B66C(v24);
      v16 += 56;
      if (v14 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D62843FC(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;
    for (i = (a2 + 48); ; i += 3)
    {
      v8 = *i;
      swift_bridgeObjectRetain_n();

      sub_1D6EE4610(v6);
      if (v3)
      {
        break;
      }

      a3(v6, v8);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D62844E8(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(v6);
      if (v3)
      {
        break;
      }

      a3(v6);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_1D62845E4(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 48); ; i += 3)
    {
      v6 = *i;

      sub_1D5F33D5C(v6);

      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      sub_1D5F33D5C(v6);
      sub_1D62A17B0(v4);

      sub_1D5F33D8C(v6);
      result = sub_1D5F33D8C(v6);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5F33D8C(v6);
  }

  return result;
}

uint64_t sub_1D62846E0(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a2 + 40; ; i += 16)
    {

      swift_retain_n();
      sub_1D6285C00(v6);
      if (v3)
      {
        break;
      }

      a3(v6);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D62847D0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6287A8C(v4);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }

  return result;
}

void sub_1D62848B0(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4A48(0, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = (v14 - v8);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D62B7198(v11, v9, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);
      v13 = v9[1];
      v14[0] = *v9;
      v14[1] = v13;

      sub_1D6EE4610(a1);
      sub_1D62B7204(v9, &qword_1EDF3A6E0, type metadata accessor for FormatSelectorValueSelector);

      if (v2)
      {
        break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1D6284A20(uint64_t result, uint64_t a2)
{
  v16 = *(a2 + 16);
  if (v16)
  {
    v3 = result;
    v4 = 0;
    v20 = a2 + 32;
    while (1)
    {
      v5 = (v20 + 24 * v4);
      v6 = *v5;
      v7 = v5[1];
      v8 = qword_1EDF2AB18;
      swift_bridgeObjectRetain_n();
      if (v8 != -1)
      {
        swift_once();
      }

      v17[0] = v6;
      v17[1] = v7;
      result = sub_1D6844380(v17);
      v9 = result;
      v10 = *(result + 16);
      if (v10)
      {
        break;
      }

LABEL_3:
      ++v4;
      swift_bridgeObjectRelease_n();

      if (v4 == v16)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = 32;
    while (v11 < *(v9 + 16))
    {
      v13 = *(v9 + v12);
      v14 = *(v9 + v12 + 16);
      v15 = *(v9 + v12 + 32);
      v19 = *(v9 + v12 + 48);
      v18[1] = v14;
      v18[2] = v15;
      v18[0] = v13;
      sub_1D5E3B610(v18, v17);
      sub_1D6844F60(v3);
      if (v2)
      {

        sub_1D5E3B66C(v18);
        return swift_bridgeObjectRelease_n();
      }

      ++v11;
      result = sub_1D5E3B66C(v18);
      v12 += 56;
      if (v10 == v11)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D6284BAC(uint64_t a1, uint64_t a2)
{
  sub_1D5CF4AE4();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    do
    {
      sub_1D62B50EC(v11, v9, sub_1D5CF4AE4);
      v13 = v9[1];
      v14[0] = *v9;
      v14[1] = v13;

      sub_1D6EE4610(a1);
      sub_1D62B51D0(v9, sub_1D5CF4AE4);

      if (v2)
      {
        break;
      }

      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1D6284CF8(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = a2 + 56;
    while (1)
    {
      v6 = *(v5 - 24);
      v7 = *(v5 - 16);
      v8 = *(v5 - 8);
      sub_1D5D03180(v6, v7, v8);
      swift_retain_n();
      sub_1D6293788(v4);
      if (v2)
      {
        break;
      }

      v5 += 32;
      sub_1D5D07BA8(v6, v7, v8);

      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5D07BA8(v6, v7, v8);
  }

  return result;
}

uint64_t sub_1D6284DD8(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = a2 + 32;
  v19 = a2 + 32;
  v20 = *(a2 + 16);
  while (1)
  {
    v8 = v7 + 24 * v6;
    if (*(v8 + 16) < 0xCu)
    {
      goto LABEL_4;
    }

    v9 = *v8;
    v10 = *(v8 + 8);
    v11 = qword_1EDF2AB18;

    if (v11 != -1)
    {
      swift_once();
    }

    v24 = v9;
    v21[0] = v9;
    v21[1] = v10;
    result = sub_1D6844380(v21);
    v12 = result;
    v13 = *(result + 16);
    if (v13)
    {
      break;
    }

LABEL_3:

    result = sub_1D62B7514(v24, v10, 0xCu);
    v7 = v19;
    v4 = v20;
LABEL_4:
    if (++v6 == v4)
    {
      return result;
    }
  }

  v14 = 0;
  v15 = 32;
  while (v14 < *(v12 + 16))
  {
    v16 = *(v12 + v15);
    v17 = *(v12 + v15 + 16);
    v18 = *(v12 + v15 + 32);
    v23 = *(v12 + v15 + 48);
    v22[1] = v17;
    v22[2] = v18;
    v22[0] = v16;
    sub_1D5E3B610(v22, v21);
    sub_1D6844F60(v5);
    if (v3)
    {

      sub_1D5E3B66C(v22);
      return sub_1D62B7514(v24, v10, 0xCu);
    }

    ++v14;
    result = sub_1D5E3B66C(v22);
    v15 += 56;
    if (v13 == v14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D6284F74(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 32); ; i += 528)
    {
      memcpy(__dst, i, sizeof(__dst));
      memcpy(__src, i, sizeof(__src));
      sub_1D5CFDDA0(__dst, v6);
      sub_1D62A230C(v4);
      if (v2)
      {
        break;
      }

      memcpy(v6, __src, sizeof(v6));
      result = sub_1D5CFF4CC(v6);
      if (!--v3)
      {
        return result;
      }
    }

    memcpy(v6, __src, sizeof(v6));
    return sub_1D5CFF4CC(v6);
  }

  return result;
}

unint64_t sub_1D6285038(unint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 40); ; i += 2)
    {
      v6 = *i;

      sub_1D5C82CD8(v6);

      sub_1D6285C00(v4);

      if (v2)
      {
        break;
      }

      sub_1D5C82CD8(v6);
      sub_1D626D654(v4);

      sub_1D5C92A8C(v6);
      result = sub_1D5C92A8C(v6);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5C92A8C(v6);
  }

  return result;
}

uint64_t sub_1D6285120(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 64; ; i += 40)
    {
      v6 = *(i - 8);

      swift_retain_n();

      sub_1D6E5C118(v4);
      if (v2)
      {
        break;
      }

      if (v6)
      {
        sub_1D6290E24(v4);
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6285260(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(v4);
      if (v2)
      {
        break;
      }

      sub_1D6E5C118(v4);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D628535C(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = a2 + 40; ; i += 16)
    {

      swift_retain_n();
      sub_1D6285C00(v4);
      if (v2)
      {
        break;
      }

      sub_1D6E5C118(v4);

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6285444(uint64_t result, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v6 = result;
    for (i = a2 + 48; ; i += 24)
    {

      swift_bridgeObjectRetain_n();
      sub_1D6EE4610(v6);
      if (v3)
      {
        break;
      }

      a3(v6);

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D6285540(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = result;
    for (i = (a2 + 48); ; i += 5)
    {
      v6 = *i;
      v7 = i[2];
      v17 = i[1];
      v18 = v7;
      v19 = i[3];
      v8 = *i;
      v15 = *(i - 1);
      v16 = v8;
      v12 = v6;
      v13 = v17;
      v14[0] = i[2];
      *(v14 + 15) = *(i + 47);
      sub_1D5CF5D60(&v15, &v9);
      sub_1D5CF5DBC(&v16, &v9);
      sub_1D629D254(v4);
      if (v2)
      {
        break;
      }

      sub_1D5CF5E18(&v15);
      v9 = v12;
      v10 = v13;
      v11[0] = v14[0];
      *(v11 + 15) = *(v14 + 15);
      result = sub_1D5CF603C(&v9);
      if (!--v3)
      {
        return result;
      }
    }

    sub_1D5CF5E18(&v15);
    v9 = v12;
    v10 = v13;
    v11[0] = v14[0];
    *(v11 + 15) = *(v14 + 15);
    return sub_1D5CF603C(&v9);
  }

  return result;
}

uint64_t sub_1D6285678(uint64_t result)
{
  v3 = *v1;
  v4 = result;
  switch((*v1 >> 59) & 0x1E | (*v1 >> 2) & 1)
  {
    case 1uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0x19uLL:
      return result;
    case 2uLL:
      v17 = v3 & 0xFFFFFFFFFFFFFFBLL;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);

      sub_1D6273544(v4, v18);
      if (!v2)
      {
        sub_1D6273544(v4, v19);
      }

      goto LABEL_16;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
      v5 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D6273544(v4, v5);

    case 9uLL:
      return sub_1D6273544(result, *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
    case 0xEuLL:
    case 0xFuLL:
    case 0x16uLL:

      sub_1D6290E24(v4);

    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:

      sub_1D6290E24(v4);

    case 0x14uLL:
    case 0x15uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D62744A4(v4, v6);

    case 0x17uLL:
      v13 = *((v3 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      sub_1D6282B60(v4, v13);
LABEL_16:

    case 0x18uLL:
      v7 = (v3 & 0xFFFFFFFFFFFFFFBLL);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];
      v11 = v7[5];

      v12 = sub_1D71C2CF8(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
      sub_1D6C4D418(v12);
      if (v2)
      {
      }

      else
      {

        sub_1D6273544(v4, v8);
        sub_1D6273544(v4, v9);
        sub_1D6273544(v4, v10);
        sub_1D6273544(v4, v11);
      }

    default:
      v14 = *(v3 + 24);
      v16 = *(v3 + 32);
      v15 = *(v3 + 40);
      result = sub_1D6273544(result, *(v3 + 16));
      if (!v2)
      {
        sub_1D6273544(v4, v14);
        sub_1D6273544(v4, v16);
        return sub_1D6273544(v4, v15);
      }

      return result;
  }
}

uint64_t sub_1D62859BC(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for FormatEquationToken();
  return sub_1D69F81A0(a1, v3, v4, &off_1F513FC88);
}

uint64_t sub_1D6285A18(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for FormatSwitchListValue.CaseValue();
  return sub_1D69F81A0(a1, v3, v4, &off_1F51420F8);
}

uint64_t sub_1D6285A8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v3, v4);
  sub_1D5B49474(0, &qword_1EC8854D0);
  if (swift_dynamicCast())
  {
    v8 = *(&v12 + 1);
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    (*(v9 + 8))(a1, v8, v9);
    return __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    return sub_1D5BFB774(&v11, &qword_1EC8854D8, &qword_1EC8854D0);
  }
}

void sub_1D6285C00(uint64_t *a1)
{
  v3 = *v1 >> 60;
  if (v3 <= 6)
  {
    if (v3 > 3)
    {
      if (v3 == 4)
      {
        sub_1D628AB78(a1);
      }

      else
      {

        sub_1D6EE4610(a1);
      }
    }

    else if ((v3 - 2) >= 2 && v3 != 0)
    {
      sub_1D6055D1C(a1);
    }
  }

  else
  {
    if (v3 > 0xE)
    {
      goto LABEL_19;
    }

    if (((1 << v3) & 0x6C00) != 0)
    {
      return;
    }

    if (v3 == 9)
    {
      v4 = a1;

      sub_1D6285C00(v4);
      if (!v2)
      {
LABEL_23:

        sub_1D6285C00(v4);
        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v3 != 12)
    {
LABEL_19:
      v4 = a1;
      if (v3 != 7)
      {

        sub_1D6285C00(v4);
        if (v2)
        {

          return;
        }

        goto LABEL_23;
      }

      sub_1D6285C00(v4);
LABEL_24:

      return;
    }

    v7 = *v1 & 0xFFFFFFFFFFFFFFFLL;
    v9 = *(v7 + 0x20);
    v8 = *(v7 + 0x28);
    v10 = *(v7 + 0x30);
    v11 = *(v7 + 56);
    if (v11 >> 6 > 1)
    {

      sub_1D6273544(a1, v9);
      if (!v2)
      {
        sub_1D6290E24(a1);
      }
    }

    else
    {

      sub_1D6273544(a1, v9);
    }

    sub_1D6057D74(v9, v8, v10, v11);
  }
}

uint64_t sub_1D6285EA0(uint64_t *a1)
{
  v4 = *v1 >> 62;
  if (!v4)
  {

    sub_1D6286074(a1);
  }

  if (v4 == 1)
  {

    sub_1D694AE44(a1);
  }

  v6 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v7 = *(v6 + 16);

  sub_1D62707E8(a1, v7);
  if (v2)
  {
  }

  v8 = *(v6 + 104);
  v9 = *(v6 + 136);
  v30 = *(v6 + 120);
  v31[0] = v9;
  *(v31 + 9) = *(v6 + 145);
  v10 = *(v6 + 40);
  v11 = *(v6 + 72);
  v26 = *(v6 + 56);
  v27 = v11;
  v28 = *(v6 + 88);
  v29 = v8;
  v24 = *(v6 + 24);
  v25 = v10;
  memmove(__dst, (v6 + 24), 0x89uLL);
  if (sub_1D60486AC(__dst) == 1)
  {
  }

  v20 = __dst[6];
  v21[0] = v33[0];
  *(v21 + 9) = *(v33 + 9);
  v16 = __dst[2];
  v17 = __dst[3];
  v18 = __dst[4];
  v19 = __dst[5];
  v14 = __dst[0];
  v15 = __dst[1];
  v22[6] = v30;
  v23[0] = v31[0];
  *(v23 + 9) = *(v31 + 9);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v22[5] = v29;
  v22[0] = v24;
  v22[1] = v25;
  sub_1D62B4994(v22, v12);
  sub_1D62867D4(a1);

  v12[6] = v20;
  v13[0] = v21[0];
  *(v13 + 9) = *(v21 + 9);
  v12[2] = v16;
  v12[3] = v17;
  v12[4] = v18;
  v12[5] = v19;
  v12[0] = v14;
  v12[1] = v15;
  return sub_1D62B49F0(v12);
}

uint64_t sub_1D6286074(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  if (*(v1 + 64) != 4)
  {
    if (v5)
    {

      sub_1D6273544(a1, v5);
      if (v2)
      {
      }
    }

    if (v4)
    {

      sub_1D6273544(a1, v4);
      if (v2)
      {
      }
    }

    if (!v6)
    {
LABEL_25:
      v11 = v2;
      goto LABEL_26;
    }

    sub_1D6273544(a1, v6);
    v11 = v2;
    if (!v2)
    {

      goto LABEL_26;
    }
  }

  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = *(v1 + 56);
  if (v5)
  {

    sub_1D6273544(a1, v5);
    if (v2)
    {
      v10 = v5;
      return sub_1D5CDE22C(v10);
    }

    sub_1D6273544(a1, v4);
    sub_1D5CDE22C(v5);
  }

  if (v6)
  {

    sub_1D6273544(a1, v6);
    if (v2)
    {
      v10 = v6;
      return sub_1D5CDE22C(v10);
    }

    sub_1D6273544(a1, v8);
    sub_1D5CDE22C(v6);
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  sub_1D6273544(a1, v7);
  if (v2)
  {
    v10 = v7;
    return sub_1D5CDE22C(v10);
  }

  sub_1D6273544(a1, v9);
  v11 = 0;
  sub_1D5CDE22C(v7);
LABEL_26:
  v13 = *(v1 + 88);
  if (v13 != 255 && (v13 & 1) != 0)
  {
    v14 = *(v1 + 72);
    v15 = *(v1 + 80);
    sub_1D6189668(v14, v15, *(v1 + 88));
    sub_1D6189668(v14, v15, v13);
    v16 = sub_1D5E26E28(&unk_1F5112938);
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v15;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    sub_1D6C4D24C(v17 | 0x3000000000000000);
    sub_1D60107F0(v14, v15, v13);
  }

  v18 = *(v1 + 112);
  if (v18 != 255 && (v18 & 1) != 0)
  {
    v19 = *(v1 + 96);
    v20 = *(v1 + 104);
    sub_1D6189668(v19, v20, *(v1 + 112));
    sub_1D6189668(v19, v20, v18);
    v21 = sub_1D5E26E28(&unk_1F5112960);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v20;
    *(v22 + 32) = v21;
    *(v22 + 40) = 0;
    sub_1D6C4D24C(v22 | 0x3000000000000000);
    sub_1D60107F0(v19, v20, v18);
  }

  v23 = *(v1 + 200);
  v24 = *(v1 + 232);
  v55 = *(v1 + 216);
  v56[0] = v24;
  *(v56 + 9) = *(v1 + 241);
  v25 = *(v1 + 136);
  v26 = *(v1 + 168);
  v51 = *(v1 + 152);
  v52 = v26;
  v53 = *(v1 + 184);
  v54 = v23;
  v49 = *(v1 + 120);
  v50 = v25;
  v27 = *(v1 + 200);
  v28 = *(v1 + 232);
  v63 = *(v1 + 216);
  v64[0] = v28;
  *(v64 + 9) = *(v1 + 241);
  v29 = *(v1 + 136);
  v30 = *(v1 + 168);
  v59 = *(v1 + 152);
  v60 = v30;
  v61 = *(v1 + 184);
  v62 = v27;
  v57 = *(v1 + 120);
  v58 = v29;
  result = sub_1D60486AC(&v57);
  if (result != 1)
  {
    v45 = v63;
    v46[0] = v64[0];
    *(v46 + 9) = *(v64 + 9);
    v41 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
    v39 = v57;
    v40 = v58;
    v47[6] = v55;
    v48[0] = v56[0];
    *(v48 + 9) = *(v56 + 9);
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_1D62B4994(v47, &v31);
    sub_1D62867D4(a1);
    if (v11)
    {
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 9) = *(v46 + 9);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v31 = v39;
      v32 = v40;
      return sub_1D62B49F0(&v31);
    }

    else
    {
      v37 = v45;
      v38[0] = v46[0];
      *(v38 + 9) = *(v46 + 9);
      v33 = v41;
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v31 = v39;
      v32 = v40;
      return sub_1D62B49F0(&v31);
    }
  }

  return result;
}

uint64_t sub_1D62865A0(uint64_t result)
{
  v3 = result;
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  if (*(v1 + 48) != 4)
  {
    if (v5)
    {

      sub_1D6273544(v3, v5);
      if (v2)
      {
      }
    }

    if (!v4)
    {
LABEL_11:
      if (!v6)
      {
        return result;
      }

      sub_1D6273544(v3, v6);
    }

    sub_1D6273544(v3, v4);
    if (!v2)
    {

      goto LABEL_11;
    }
  }

  v8 = *(v1 + 24);
  v7 = *(v1 + 32);
  v9 = *(v1 + 40);
  if (v5)
  {

    sub_1D6273544(v3, v5);
    if (v2)
    {
      v10 = v5;
      return sub_1D5CDE22C(v10);
    }

    sub_1D6273544(v3, v4);
    result = sub_1D5CDE22C(v5);
  }

  if (v6)
  {

    sub_1D6273544(v3, v6);
    if (v2)
    {
      v10 = v6;
      return sub_1D5CDE22C(v10);
    }

    sub_1D6273544(v3, v8);
    result = sub_1D5CDE22C(v6);
  }

  if (v7)
  {

    sub_1D6273544(v3, v7);
    if (!v2)
    {
      sub_1D6273544(v3, v9);
    }

    v10 = v7;
    return sub_1D5CDE22C(v10);
  }

  return result;
}

uint64_t sub_1D62867D4(uint64_t result)
{
  v3 = result;
  v4 = *v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 64);
  v11 = *(v1 + 72);
  v25 = *(v1 + 56);
  v26 = *(v1 + 88);
  v27 = *(v1 + 96);
  v28 = *(v1 + 80);
  v29 = *(v1 + 104);
  v30 = *(v1 + 112);
  v23 = *(v1 + 128);
  v24 = *(v1 + 120);
  v12 = *(v1 + 136);
  if (!v4 || (result = sub_1D6273544(result, v4), !v2))
  {
    if (!v5 || (result = sub_1D6273544(v3, v5), !v2))
    {
      if (!v7 || (result = sub_1D6273544(v3, v7), !v2))
      {
        if (!v6 || (result = sub_1D6273544(v3, v6), !v2))
        {
          if (!v9 || (result = sub_1D6273544(v3, v9), !v2))
          {
            if (!v8 || (result = sub_1D6273544(v3, v8), !v2))
            {
              if (v11 != 255)
              {
                v13 = v11;
                if (v11)
                {
                  v14 = v10;
                  v15 = v10;
                  v16 = v13;
                  sub_1D6189668(v25, v15, v13);
                  sub_1D6189668(v25, v14, v16);
                  v17 = v12;
                  v18 = sub_1D5E26E28(&unk_1F50F4730);
                  v19 = swift_allocObject();
                  *(v19 + 16) = v25;
                  *(v19 + 24) = v14;
                  *(v19 + 32) = v18;
                  *(v19 + 40) = 0;
                  sub_1D6C4D24C(v19 | 0x3000000000000000);
                  v12 = v17;
                  sub_1D60107F0(v25, v14, v16);
                }
              }

              if (v30 != 255 && (v30 & 1) != 0)
              {
                sub_1D618903C(v28, v26, v27, v29, 1);
                sub_1D6273544(v3, v28);
                if (v2)
                {
                  return sub_1D62B4B50(v28, v26, v27, v29, v30);
                }

                sub_1D6273544(v3, v26);
                sub_1D6273544(v3, v27);
                sub_1D6273544(v3, v29);
                result = sub_1D62B4B50(v28, v26, v27, v29, v30);
              }

              if (v12 != 255 && (v12 & 1) != 0)
              {
                sub_1D6189668(v24, v23, v12);
                sub_1D6189668(v24, v23, v12);
                v20 = v12;
                v21 = sub_1D5E26E28(&unk_1F50F4758);
                v22 = swift_allocObject();
                *(v22 + 16) = v24;
                *(v22 + 24) = v23;
                *(v22 + 32) = v21;
                *(v22 + 40) = 0;
                sub_1D6C4D24C(v22 | 0x3000000000000000);
                sub_1D60107F0(v24, v23, v20);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1D6286AF0(uint64_t *a1)
{
  v4 = *v1;
  sub_1D62707E8(a1, *(*v1 + 16));
  if (!v2)
  {
    v5 = *(v4 + 104);
    v6 = *(v4 + 136);
    v27 = *(v4 + 120);
    v28[0] = v6;
    *(v28 + 9) = *(v4 + 145);
    v7 = *(v4 + 40);
    v8 = *(v4 + 72);
    v23 = *(v4 + 56);
    v24 = v8;
    v25 = *(v4 + 88);
    v26 = v5;
    v21 = *(v4 + 24);
    v22 = v7;
    memmove(__dst, (v4 + 24), 0x89uLL);
    if (sub_1D60486AC(__dst) != 1)
    {
      v17 = __dst[6];
      v18[0] = v30[0];
      *(v18 + 9) = *(v30 + 9);
      v13 = __dst[2];
      v14 = __dst[3];
      v15 = __dst[4];
      v16 = __dst[5];
      v11 = __dst[0];
      v12 = __dst[1];
      v19[6] = v27;
      v20[0] = v28[0];
      *(v20 + 9) = *(v28 + 9);
      v19[2] = v23;
      v19[3] = v24;
      v19[4] = v25;
      v19[5] = v26;
      v19[0] = v21;
      v19[1] = v22;
      sub_1D62B4994(v19, v9);
      sub_1D62867D4(a1);
      v9[6] = v17;
      v10[0] = v18[0];
      *(v10 + 9) = *(v18 + 9);
      v9[2] = v13;
      v9[3] = v14;
      v9[4] = v15;
      v9[5] = v16;
      v9[0] = v11;
      v9[1] = v12;
      sub_1D62B49F0(v9);
    }
  }
}