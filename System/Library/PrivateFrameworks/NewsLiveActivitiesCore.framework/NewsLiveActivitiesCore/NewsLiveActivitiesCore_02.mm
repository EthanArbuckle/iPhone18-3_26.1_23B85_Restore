uint64_t sub_219F6DA14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v3);
  if (v3)
  {
    v5 = a2 + 100;
    do
    {
      v10 = v3;
      v7 = *(v5 - 68);
      v8 = *(v5 - 12);
      v11 = *(v5 + 8);
      if (v7 == 0.0)
      {
        v7 = 0.0;
      }

      MEMORY[0x21CED24C0](*&v7);
      v9 = v11 >> 6;
      if (v9)
      {
        if (v9 == 1)
        {
          MEMORY[0x21CED2490](1);
          sub_21A0E6DDC();
          sub_21A0E6DDC();
          sub_21A0E6DDC();
          result = sub_21A0E6DDC();
        }

        else
        {
          MEMORY[0x21CED2490](2);
          sub_21A0E626C();
        }

        v6 = v10;
        goto LABEL_5;
      }

      MEMORY[0x21CED2490](0);
      RGBA.hash(into:)();
      RGBA.hash(into:)();
      if (v8)
      {
        sub_21A0E6DCC();
        v6 = v10;
        if ((v11 & 0x3F) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_21A0E6DCC();
        RGBA.hash(into:)();
        v6 = v10;
        if ((v11 & 0x3F) != 0)
        {
LABEL_15:
          result = sub_21A0E6DCC();
          goto LABEL_5;
        }
      }

      sub_21A0E6DCC();
      result = RGBA.hash(into:)();
LABEL_5:
      v5 += 80;
      v3 = v6 - 1;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_219F6DDE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v3);
  if (v3)
  {
    v5 = a2 + 92;
    do
    {
      v6 = *(v5 - 12);
      v9 = *(v5 + 8);
      v7 = v9 >> 6;
      if (v7)
      {
        if (v7 == 1)
        {
          MEMORY[0x21CED2490](1);
          sub_21A0E6DDC();
          sub_21A0E6DDC();
          sub_21A0E6DDC();
          result = sub_21A0E6DDC();
        }

        else
        {
          MEMORY[0x21CED2490](2, *(v5 - 44));
          sub_21A0E626C();
        }
      }

      else
      {
        v8 = ((HIDWORD(*v5) & 0xFFFFFF00FFFFFFFFLL | (v9 << 32)) >> 32) & 0x3F;
        MEMORY[0x21CED2490](0);
        RGBA.hash(into:)();
        RGBA.hash(into:)();
        sub_21A0E6DCC();
        if ((v6 & 1) == 0)
        {
          RGBA.hash(into:)();
        }

        if (v8)
        {
          result = sub_21A0E6DCC();
        }

        else
        {
          sub_21A0E6DCC();
          result = RGBA.hash(into:)();
        }
      }

      v5 += 72;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_219F6E188(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = (a2 + 32);
    v88 = a1;
    while (1)
    {
      v117 = v4;
      v8 = v6[9];
      v148 = v6[8];
      v149 = v8;
      *v150 = v6[10];
      *&v150[11] = *(v6 + 171);
      v9 = v6[5];
      v144 = v6[4];
      v145 = v9;
      v10 = v6[7];
      v146 = v6[6];
      v147 = v10;
      v11 = v6[1];
      v142[0] = *v6;
      v142[1] = v11;
      v12 = v6[3];
      v142[2] = v6[2];
      v143 = v12;
      sub_219F73218(v142, v139);
      sub_21A0E626C();
      sub_21A0E626C();
      sub_21A0E626C();
      v13 = v143;
      v14 = v144;
      v15 = *(&v144 + 1);
      v16 = v145;
      v17 = BYTE8(v145);
      v18 = v146;
      v19 = (BYTE4(v147) >> 4) & 3;
      if (v19)
      {
        break;
      }

      v98 = v144;
      v83 = BYTE8(v145);
      v85 = v145;
      v103 = *(&v144 + 1);
      v111 = v6;
      v92 = BYTE7(v144);
      v113 = BYTE8(v146);
      v89 = *(&v144 + 5);
      v95 = *(&v144 + 1);
      v80 = *(&v145 + 13);
      v81 = HIBYTE(v145);
      v82 = *(&v145 + 9);
      v22 = v147;
      v23 = *(&v146 + 13);
      v24 = *(&v146 + 9);
      v25 = HIBYTE(v146);
      v106 = DWORD1(v143);
      v109 = HIDWORD(*(&v143 + 1));
      v26 = v146 >> 8;
      v27 = BYTE4(v147) & 0xCF;
      MEMORY[0x21CED2490](0);
      v139[6] = HIBYTE(v18);
      *&v139[4] = HIDWORD(v18) >> 8;
      *v139 = v26;
      v139[7] = v113;
      v139[14] = v25;
      *&v139[12] = v23;
      *&v139[8] = v24;
      *&v139[15] = v22;
      v139[19] = v27;
      if (!(v27 >> 6))
      {
        *&v139[15] = v22;
        v139[19] = v27 & 0x3F;
        v32 = *&v139[11];
        v114 = *&v139[3];
        MEMORY[0x21CED2490](0);
        *v136 = v13;
        *&v136[4] = v106;
        *&v136[8] = DWORD2(v13);
        *&v136[12] = v109;
        RGBA.hash(into:)();
        *v136 = v98 | (v95 << 8);
        *&v136[4] = (v95 | ((v89 | (v92 << 16)) << 32)) >> 24;
        *&v136[8] = v103;
        a1 = v88;
        RGBA.hash(into:)();
        if (v18)
        {
          sub_21A0E6DCC();
          v6 = v111;
          if ((v27 & 0x3F) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          *v136 = v85;
          *&v136[8] = v83 | (v82 << 8);
          *&v136[12] = (v82 | ((v80 | (v81 << 16)) << 32)) >> 24;
          sub_21A0E6DCC();
          RGBA.hash(into:)();
          v6 = v111;
          if ((v27 & 0x3F) == 0)
          {
LABEL_48:
            *v136 = v114;
            *&v136[8] = v32;
            sub_21A0E6DCC();
            RGBA.hash(into:)();
            goto LABEL_102;
          }
        }

        goto LABEL_35;
      }

      if (v27 >> 6 == 1)
      {
        a1 = v88;
        MEMORY[0x21CED2490](1);
        *v136 = v13;
        *&v136[4] = v106;
        *&v136[8] = DWORD2(v13);
        *&v136[12] = v109;
        RGBA.hash(into:)();
LABEL_96:
        v6 = v111;
        goto LABEL_102;
      }

      a1 = v88;
      MEMORY[0x21CED2490](2);
      v6 = v111;
      sub_21A0E626C();

LABEL_102:
      v72 = *(&v148 + 1);
      MEMORY[0x21CED2490](*(&v147 + 1));
      sub_21A0E5B8C();
      if (v72 == 0.0)
      {
        v73 = 0.0;
      }

      else
      {
        v73 = v72;
      }

      v74 = *v150;
      v75 = v150[26];
      v76 = *&v150[24];
      MEMORY[0x21CED24C0](*&v73);
      sub_21A0E5B8C();
      if (v74)
      {
        v77 = v76 | (v75 << 16);
        sub_21A0E6DCC();
        sub_21A0E626C();
        MEMORY[0x21CED2490](v77 & 1);
        sub_21A0E626C();
        sub_21A0E6DCC();
        v7 = v117;
        if (BYTE1(v77) != 9)
        {
          sub_21A0E626C();
        }

        sub_21A0E6DCC();
        if (BYTE2(v77) != 3)
        {
          sub_21A0E626C();
        }
      }

      else
      {
        sub_21A0E6DCC();
        v7 = v117;
      }

      result = sub_219F73274(v142);
      v6 += 12;
      v4 = v7 - 1;
      if (!v4)
      {
        return result;
      }
    }

    if (v19 != 1)
    {
      v28 = *(v143 + 40);
      v29 = *(v143 + 72);
      v140 = *(v143 + 56);
      *v141 = v29;
      *&v141[13] = *(v143 + 85);
      *&v139[16] = v28;
      *v139 = *(v143 + 24);
      MEMORY[0x21CED2490](2);
      sub_21A0E626C();

      if ((~(v141[20] << 32) & 0x3E00000000) != 0)
      {
        v33 = *&v141[16] | (v141[20] << 32);
        v111 = v6;
        v115 = *v139;
        v99 = v139[16];
        v86 = v139[23];
        v34 = *&v139[21];
        v35 = *&v139[17];
        v101 = *&v139[24];
        v96 = BYTE8(v140);
        v36 = HIBYTE(v140);
        v37 = *(&v140 + 13);
        v38 = *(&v140 + 9);
        v107 = *v141;
        v110 = *&v139[8];
        v104 = v141[8];
        v39 = v141[15];
        v40 = *&v141[13];
        v90 = v140;
        v93 = *&v141[9];
        sub_21A0E6DCC();
        v41 = (v33 >> 36) & 3;
        if (v41)
        {
          if (v41 == 1)
          {
            MEMORY[0x21CED2490](1);
            if (v99)
            {
              MEMORY[0x21CED2490](1);
              if ((v115 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v42 = v115;
              }

              else
              {
                v42 = 0;
              }

              MEMORY[0x21CED24C0](v42);
              if ((v110 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v43 = v110;
              }

              else
              {
                v43 = 0;
              }

              MEMORY[0x21CED24C0](v43);
              v137 = v140;
              *v138 = *v141;
              *&v138[13] = *&v141[13];
              *v136 = *v139;
              *&v136[16] = *&v139[16];
              sub_219F72F28(v136, v134);
              v6 = v111;
              v44 = v104;
              if ((v96 & 1) == 0)
              {
LABEL_46:
                MEMORY[0x21CED2490](0);
                sub_21A0E626C();

                if (v44)
                {
LABEL_87:
                  MEMORY[0x21CED2490](1);
                  sub_219F6DA14(a1, v107);
                  goto LABEL_101;
                }

LABEL_61:
                MEMORY[0x21CED2490](0);
                sub_219F6DDE8(a1, v107);
                goto LABEL_101;
              }
            }

            else
            {
              MEMORY[0x21CED2490](0);
              v6 = v111;
              v44 = v104;
              v137 = v140;
              *v138 = *v141;
              *&v138[13] = *&v141[13];
              *v136 = *v139;
              *&v136[16] = *&v139[16];
              sub_219F72F28(v136, v134);
              sub_21A0E626C();

              if ((v96 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            MEMORY[0x21CED2490](1);
            if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v48 = v101;
            }

            else
            {
              v48 = 0;
            }

            MEMORY[0x21CED24C0](v48);
            if ((v90 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v49 = v90;
            }

            else
            {
              v49 = 0;
            }

            MEMORY[0x21CED24C0](v49);
            if (v44)
            {
              goto LABEL_87;
            }

            goto LABEL_61;
          }

          v46 = *(v115 + 40);
          v47 = *(v115 + 72);
          v137 = *(v115 + 56);
          *v138 = v47;
          *&v138[13] = *(v115 + 85);
          *&v136[16] = v46;
          *v136 = *(v115 + 24);
          MEMORY[0x21CED2490](2);
          v6 = v111;
          v134[2] = v140;
          v135[0] = *v141;
          *(v135 + 13) = *&v141[13];
          v134[0] = *v139;
          v134[1] = *&v139[16];
          sub_219F72F28(v134, v131);
          sub_21A0E626C();

          if ((~(v138[20] << 32) & 0x3E00000000) == 0)
          {
            goto LABEL_79;
          }

          v51 = *&v138[16] | (v138[20] << 32);
          v116 = *v136;
          v100 = v136[16];
          v87 = v136[23];
          v84 = *&v136[21];
          v91 = *&v136[17];
          v102 = *&v136[24];
          v105 = *&v136[8];
          v94 = v137;
          v97 = BYTE8(v137);
          v52 = HIBYTE(v137);
          v53 = *(&v137 + 13);
          v54 = *(&v137 + 9);
          *v108 = *v138;
          v108[8] = v138[8];
          v55 = v138[15];
          v56 = *&v138[13];
          v57 = *&v138[9];
          sub_21A0E6DCC();
          v58 = (v51 >> 36) & 3;
          if (v58)
          {
            if (v58 == 1)
            {
              MEMORY[0x21CED2490](1);
              if (v100)
              {
                MEMORY[0x21CED2490](1);
                if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v59 = v116;
                }

                else
                {
                  v59 = 0;
                }

                MEMORY[0x21CED24C0](v59);
                if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v60 = v105;
                }

                else
                {
                  v60 = 0;
                }

                MEMORY[0x21CED24C0](v60);
                v132 = v137;
                v133[0] = *v138;
                *(v133 + 13) = *&v138[13];
                *v131 = *v136;
                *&v131[16] = *&v136[16];
                sub_219F72F28(v131, v125);
                v61 = *v108;
                v62 = v108[8];
                v63 = v102;
                if ((v97 & 1) == 0)
                {
LABEL_76:
                  MEMORY[0x21CED2490](0);
                  sub_21A0E626C();

                  if ((v62 & 1) == 0)
                  {
LABEL_111:
                    MEMORY[0x21CED2490](0);
                    sub_219F6DDE8(a1, v61);
                    goto LABEL_121;
                  }

LABEL_120:
                  MEMORY[0x21CED2490](1);
                  sub_219F6DA14(a1, v61);
                  goto LABEL_121;
                }
              }

              else
              {
                MEMORY[0x21CED2490](0);
                v61 = *v108;
                v62 = v108[8];
                v63 = v102;
                v132 = v137;
                v133[0] = *v138;
                *(v133 + 13) = *&v138[13];
                *v131 = *v136;
                *&v131[16] = *&v136[16];
                sub_219F72F28(v131, v125);
                sub_21A0E626C();

                if ((v97 & 1) == 0)
                {
                  goto LABEL_76;
                }
              }

              MEMORY[0x21CED2490](1);
              if ((v63 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v78 = v63;
              }

              else
              {
                v78 = 0;
              }

              MEMORY[0x21CED24C0](v78);
              if ((v94 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v79 = v94;
              }

              else
              {
                v79 = 0;
              }

              MEMORY[0x21CED24C0](v79);
              if ((v62 & 1) == 0)
              {
                goto LABEL_111;
              }

              goto LABEL_120;
            }

            v66 = *(v116 + 40);
            v127 = *(v116 + 24);
            v128 = v66;
            v67 = *(v116 + 72);
            v129 = *(v116 + 56);
            v130 = v67;
            v68 = *(v116 + 92);
            v69 = *(v116 + 88);
            MEMORY[0x21CED2490](2);
            v71 = v69 | (v68 << 32);
            v132 = v137;
            v133[0] = *v138;
            *(v133 + 13) = *&v138[13];
            *v131 = *v136;
            *&v131[16] = *&v136[16];
            sub_219F72F28(v131, v125);
            sub_21A0E626C();

            if ((~v71 & 0x3E00000000) != 0)
            {
              v118 = v127;
              v119 = v128;
              v120 = v129;
              *v121 = v130;
              v121[20] = BYTE4(v71);
              *&v121[16] = v71;
              sub_21A0E6DCC();
              v122[0] = v127;
              v122[1] = v128;
              v122[2] = v129;
              v122[3] = v130;
              v124 = BYTE4(v71);
              a1 = v88;
              v123 = v71;
              sub_219F72F28(v122, v125);
              ActivityFill.hash(into:)(v88);
              v125[2] = v120;
              v126[0] = *v121;
              *(v126 + 13) = *&v121[13];
              v125[0] = v118;
              v125[1] = v119;
              sub_219F72F84(v125);
            }

            else
            {
              sub_21A0E6DCC();
            }
          }

          else
          {
            v64 = HIDWORD(v51) & 0xFFFFFFCF;
            MEMORY[0x21CED2490](0);
            *&v131[6] = *&v108[7];
            *&v131[4] = *&v108[4] >> 8;
            *v131 = *v108 >> 8;
            v131[14] = (v57 | ((v56 | (v55 << 16)) << 32)) >> 48;
            *&v131[12] = (v57 | ((v56 | (v55 << 16)) << 32)) >> 32;
            *&v131[8] = v57;
            *&v131[15] = v51;
            v65 = (v64 << 32) | v51;
            v131[19] = BYTE4(v51) & 0xCF;
            if (!(v64 >> 6))
            {
              *&v131[15] = v51;
              v131[19] = BYTE4(v65) & 0x3F;
              v70 = *&v131[3];
              MEMORY[0x21CED2490](0);
              *&v125[0] = v116;
              *(&v125[0] + 1) = v105;
              RGBA.hash(into:)();
              *&v125[0] = __PAIR64__((v91 | ((v84 | (v87 << 16)) << 32)) >> 24, v100 | (v91 << 8));
              *(&v125[0] + 1) = v102;
              a1 = v88;
              RGBA.hash(into:)();
              if (v108[0])
              {
                sub_21A0E6DCC();
              }

              else
              {
                *&v125[0] = v94;
                DWORD2(v125[0]) = v97 | (v54 << 8);
                HIDWORD(v125[0]) = (v54 | ((v53 | (v52 << 16)) << 32)) >> 24;
                sub_21A0E6DCC();
                RGBA.hash(into:)();
              }

              v6 = v111;
              if ((v51 & 0xF00000000) != 0)
              {
                sub_21A0E6DCC();
              }

              else
              {
                v125[0] = v70;
                sub_21A0E6DCC();
                RGBA.hash(into:)();
              }

LABEL_121:
              sub_219F6409C(v136, &qword_27CCD98B8);
LABEL_101:
              sub_219F6409C(v139, &qword_27CCD98B8);
              goto LABEL_102;
            }

            if (v64 >> 6 == 1)
            {
              a1 = v88;
              MEMORY[0x21CED2490](1);
              *&v125[0] = v116;
              *(&v125[0] + 1) = v105;
              RGBA.hash(into:)();
            }

            else
            {
              *&v131[15] = v51;
              v131[19] = BYTE4(v65) & 0x3F;
              a1 = v88;
              MEMORY[0x21CED2490](2);
              LOBYTE(v125[0]) = v116;
              ActivityColor.System.Name.rawValue.getter();
              sub_21A0E626C();
            }
          }

          sub_219F6409C(v136, &qword_27CCD98B8);
        }

        else
        {
          v45 = v93 | ((v40 | (v39 << 16)) << 32);
          MEMORY[0x21CED2490](0);
          v136[6] = HIBYTE(v107);
          *&v136[4] = HIDWORD(v107) >> 8;
          *v136 = v107 >> 8;
          v136[7] = v104;
          v136[14] = BYTE6(v45);
          *&v136[12] = WORD2(v45);
          *&v136[8] = v45;
          *&v136[15] = v33;
          v136[19] = BYTE4(v33) & 0xCF;
          if (!((HIDWORD(v33) & 0xFFFFFFCF) >> 6))
          {
            *&v136[15] = v33;
            v136[19] = BYTE4(v33) & 0xF;
            v50 = *&v136[3];
            MEMORY[0x21CED2490](0);
            *&v134[0] = v115;
            *(&v134[0] + 1) = v110;
            RGBA.hash(into:)();
            *&v134[0] = __PAIR64__((v35 | ((v34 | (v86 << 16)) << 32)) >> 24, v99 | (v35 << 8));
            *(&v134[0] + 1) = v101;
            a1 = v88;
            RGBA.hash(into:)();
            if (v107)
            {
              sub_21A0E6DCC();
            }

            else
            {
              *&v134[0] = v90;
              DWORD2(v134[0]) = v96 | (v38 << 8);
              HIDWORD(v134[0]) = (v38 | ((v37 | (v36 << 16)) << 32)) >> 24;
              sub_21A0E6DCC();
              RGBA.hash(into:)();
            }

            v6 = v111;
            if ((v33 & 0xF00000000) != 0)
            {
LABEL_79:
              sub_21A0E6DCC();
            }

            else
            {
              v134[0] = v50;
              sub_21A0E6DCC();
              RGBA.hash(into:)();
            }

            goto LABEL_101;
          }

          if ((HIDWORD(v33) & 0xFFFFFFCF) >> 6 != 1)
          {
            a1 = v88;
            MEMORY[0x21CED2490](2);
            v6 = v111;
            sub_21A0E626C();

            goto LABEL_101;
          }

          a1 = v88;
          MEMORY[0x21CED2490](1);
          *&v134[0] = v115;
          *(&v134[0] + 1) = v110;
          RGBA.hash(into:)();
        }

        sub_219F6409C(v139, &qword_27CCD98B8);
        goto LABEL_96;
      }

LABEL_35:
      sub_21A0E6DCC();
      goto LABEL_102;
    }

    v112 = BYTE8(v146);
    MEMORY[0x21CED2490](1);
    if (v14)
    {
      MEMORY[0x21CED2490](1);
      if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v13;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x21CED24C0](v20);
      if ((*(&v13 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = *(&v13 + 1);
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x21CED24C0](v21);
      if ((v17 & 1) == 0)
      {
LABEL_15:
        MEMORY[0x21CED2490](0);
        sub_21A0E626C();

        if (v112)
        {
          goto LABEL_29;
        }

LABEL_16:
        MEMORY[0x21CED2490](0);
        sub_219F6DDE8(a1, v18);
        goto LABEL_102;
      }
    }

    else
    {
      MEMORY[0x21CED2490](0);
      sub_21A0E626C();

      if ((v17 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    MEMORY[0x21CED2490](1);
    if ((v15 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v15;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x21CED24C0](v30);
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v31 = v16;
    }

    else
    {
      v31 = 0;
    }

    MEMORY[0x21CED24C0](v31);
    if (v112)
    {
LABEL_29:
      MEMORY[0x21CED2490](1);
      sub_219F6DA14(a1, v18);
      goto LABEL_102;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t sub_219F6FF34(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (*(v6 - 2))
      {
        sub_21A0E6DCC();

        sub_21A0E626C();
      }

      else
      {
        sub_21A0E6DCC();
      }

      sub_219F91544(a1, v7);
      sub_219F6FF34(a1, v8);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_219F7005C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t, uint64_t))
{
  v10 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v10);
  if (v10)
  {
    v12 = a2 + 32;
    do
    {
      v13 = *(v12 + 64);
      v14 = *(v12 + 32);
      v15 = *(v12 + 16);
      v29 = *(v12 + 48);
      v30 = v13;
      v16 = *(v12 + 16);
      v28[0] = *v12;
      v28[1] = v16;
      v28[2] = v14;
      v23 = v15;
      v24 = v14;
      v17 = *(v12 + 64);
      v25 = v29;
      v26 = v17;
      v31 = *(v12 + 80);
      v18 = v31;
      v19 = *(&v13 + 1);
      v27 = *(v12 + 80);
      v22 = v28[0];
      sub_219F45500(v28, v21, a3);
      a5(a1);
      sub_219F91544(a1, v19);
      a6(a1, v18);
      result = sub_219F6409C(v28, a3);
      v12 += 88;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_219F70178(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = a2 + 32;
    v119 = a1;
    while (1)
    {
      v125 = v4;
      v7 = *(v6 + 16);
      v150[0] = *v6;
      v150[1] = v7;
      v8 = *(v6 + 80);
      v152 = *(v6 + 64);
      v153 = v8;
      *v154 = *(v6 + 96);
      *&v154[13] = *(v6 + 109);
      v9 = *(v6 + 48);
      v150[2] = *(v6 + 32);
      v151 = v9;
      sub_219F72ECC(v150, v147);
      sub_21A0E626C();
      sub_21A0E626C();
      sub_21A0E626C();
      v10 = v151;
      v11 = v152;
      v13 = *(&v152 + 1);
      v12 = v153;
      v14 = BYTE8(v153);
      v15 = *v154;
      v16 = (v154[20] >> 4) & 3;
      if (v16)
      {
        break;
      }

      v92 = BYTE8(v153);
      v94 = v153;
      v111 = *(&v152 + 1);
      v120 = v6;
      v100 = BYTE7(v152);
      v122 = v154[8];
      v97 = *(&v152 + 5);
      v103 = *(&v152 + 1);
      v90 = HIBYTE(v153);
      v95 = *(&v153 + 13);
      v91 = *(&v153 + 9);
      v21 = *&v154[16] | (v154[20] << 32);
      v22 = *&v154[13];
      v23 = *&v154[9];
      v24 = v154[15];
      v114 = DWORD1(v151);
      v117 = HIDWORD(*(&v151 + 1));
      MEMORY[0x21CED2490](0);
      v147[6] = HIBYTE(v15);
      *&v147[4] = HIDWORD(v15) >> 8;
      *v147 = v15 >> 8;
      v147[7] = v122;
      v147[14] = v24;
      *&v147[12] = v22;
      *&v147[8] = v23;
      *&v147[15] = v21;
      v147[19] = BYTE4(v21) & 0xCF;
      v25 = BYTE4(v21) & 0xCF;
      if (v25 >> 6)
      {
        if (v25 >> 6 != 1)
        {
          a1 = v119;
          MEMORY[0x21CED2490](2);
          v6 = v120;
          sub_21A0E626C();

LABEL_83:
          result = sub_219F72FD8(v150);
          v20 = v125;
          goto LABEL_5;
        }

        a1 = v119;
        MEMORY[0x21CED2490](1);
        sub_21A0E6DDC();
        sub_21A0E6DDC();
        sub_21A0E6DDC();
        sub_21A0E6DDC();
        goto LABEL_62;
      }

      v31 = v103 | ((v97 | (v100 << 16)) << 32);
      v32 = (v25 << 32) | v21;
      v33 = v31 >> 24;
      *&v147[15] = v32;
      v147[19] = BYTE4(v32) & 0x3F;
      v104 = *&v147[3];
      v123 = *&v147[11];
      v34 = BYTE4(v32) & 0x3F;
      v35 = v11 | (v31 << 8);
      MEMORY[0x21CED2490](0);
      *v144 = v10;
      *&v144[4] = v114;
      *&v144[8] = DWORD2(v10);
      *&v144[12] = v117;
      RGBA.hash(into:)();
      *v144 = v35;
      *&v144[4] = v33;
      a1 = v119;
      *&v144[8] = v111;
      RGBA.hash(into:)();
      if (v15)
      {
        sub_21A0E6DCC();
      }

      else
      {
        *v144 = v94;
        *&v144[8] = v92 | (v91 << 8);
        *&v144[12] = (v91 | ((v95 | (v90 << 16)) << 32)) >> 24;
        sub_21A0E6DCC();
        RGBA.hash(into:)();
      }

      v20 = v125;
      v6 = v120;
      if (v34)
      {
        sub_21A0E6DCC();
      }

      else
      {
        *v144 = v104;
        *&v144[8] = v123;
        sub_21A0E6DCC();
        RGBA.hash(into:)();
      }

LABEL_4:
      result = sub_219F72FD8(v150);
LABEL_5:
      v6 += 120;
      v4 = v20 - 1;
      if (!v4)
      {
        return result;
      }
    }

    if (v16 != 1)
    {
      v26 = *(v151 + 40);
      v27 = *(v151 + 72);
      v148 = *(v151 + 56);
      *v149 = v27;
      *&v149[13] = *(v151 + 85);
      *&v147[16] = v26;
      *v147 = *(v151 + 24);
      MEMORY[0x21CED2490](2);
      sub_21A0E626C();

      if ((~(v149[20] << 32) & 0x3E00000000) == 0)
      {
        sub_21A0E6DCC();
        goto LABEL_83;
      }

      v36 = *&v149[16] | (v149[20] << 32);
      v120 = v6;
      v37 = *v147;
      v107 = v147[16];
      v98 = v147[23];
      v38 = *&v147[21];
      v39 = *&v147[17];
      v101 = v148;
      v105 = BYTE8(v148);
      v40 = HIBYTE(v148);
      v41 = *(&v148 + 13);
      v42 = *(&v148 + 9);
      v109 = *&v147[24];
      *v112 = *v149;
      v112[8] = v149[8];
      v43 = v149[15];
      v44 = *&v149[13];
      v45 = *&v149[9];
      sub_21A0E6DCC();
      v46 = (v36 >> 36) & 3;
      if (!v46)
      {
        v51 = v44 | (v43 << 16);
        v52 = HIDWORD(v36) & 0xFFFFFFCF;
        v53 = v45 | (v51 << 32);
        MEMORY[0x21CED2490](0);
        *&v144[6] = *&v112[7];
        *&v144[4] = *&v112[4] >> 8;
        *v144 = *v112 >> 8;
        v144[14] = BYTE6(v53);
        *&v144[12] = WORD2(v53);
        *&v144[8] = v53;
        *&v144[15] = v36;
        v144[19] = BYTE4(v36) & 0xCF;
        if (!(v52 >> 6))
        {
          v56 = v39 | ((v38 | (v98 << 16)) << 32);
          v57 = (v52 << 32) | v36;
          v58 = v56 >> 24;
          *&v144[15] = v57;
          v144[19] = BYTE4(v57) & 0x3F;
          v96 = *&v144[3];
          v115 = BYTE4(v57) & 0x3F;
          v59 = v107 | (v56 << 8);
          MEMORY[0x21CED2490](0);
          v142[0] = v37;
          RGBA.hash(into:)();
          *&v142[0] = __PAIR64__(v58, v59);
          *(&v142[0] + 1) = v109;
          a1 = v119;
          RGBA.hash(into:)();
          if (v112[0])
          {
            sub_21A0E6DCC();
          }

          else
          {
            *&v142[0] = v101;
            DWORD2(v142[0]) = v105 | (v42 << 8);
            HIDWORD(v142[0]) = (v42 | ((v41 | (v40 << 16)) << 32)) >> 24;
            sub_21A0E6DCC();
            RGBA.hash(into:)();
          }

          v20 = v125;
          if (v115)
          {
            sub_21A0E6DCC();
          }

          else
          {
            v142[0] = v96;
            sub_21A0E6DCC();
            RGBA.hash(into:)();
          }

          goto LABEL_108;
        }

        if (v52 >> 6 == 1)
        {
          a1 = v119;
          MEMORY[0x21CED2490](1);
          v142[0] = v37;
          RGBA.hash(into:)();
          goto LABEL_61;
        }

        a1 = v119;
        MEMORY[0x21CED2490](2);
        v20 = v125;
        v6 = v120;
        sub_21A0E626C();

        goto LABEL_113;
      }

      if (v46 == 1)
      {
        a1 = v119;
        MEMORY[0x21CED2490](1);
        v20 = v125;
        v6 = v120;
        if (v107)
        {
          MEMORY[0x21CED2490](1);
          if ((v37 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v47 = v37;
          }

          else
          {
            v47 = 0;
          }

          MEMORY[0x21CED24C0](v47);
          if ((*(&v37 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v48 = *(&v37 + 1);
          }

          else
          {
            v48 = 0;
          }

          MEMORY[0x21CED24C0](v48);
          v145 = v148;
          *v146 = *v149;
          *&v146[13] = *&v149[13];
          *v144 = *v147;
          *&v144[16] = *&v147[16];
          sub_219F72F28(v144, v142);
          v49 = *v112;
          v50 = v112[8];
          if ((v105 & 1) == 0)
          {
LABEL_46:
            MEMORY[0x21CED2490](0);
            sub_21A0E626C();

            if ((v50 & 1) == 0)
            {
              goto LABEL_88;
            }

LABEL_97:
            MEMORY[0x21CED2490](1);
            sub_219F6DA14(v119, v49);
            goto LABEL_113;
          }
        }

        else
        {
          MEMORY[0x21CED2490](0);
          v49 = *v112;
          v50 = v112[8];
          v145 = v148;
          *v146 = *v149;
          *&v146[13] = *&v149[13];
          *v144 = *v147;
          *&v144[16] = *&v147[16];
          sub_219F72F28(v144, v142);
          sub_21A0E626C();

          if ((v105 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        MEMORY[0x21CED2490](1);
        if ((v109 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v84 = v109;
        }

        else
        {
          v84 = 0;
        }

        MEMORY[0x21CED24C0](v84);
        if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v85 = v101;
        }

        else
        {
          v85 = 0;
        }

        MEMORY[0x21CED24C0](v85);
        if (v50)
        {
          goto LABEL_97;
        }

LABEL_88:
        MEMORY[0x21CED2490](0);
        sub_219F6DDE8(v119, v49);
LABEL_113:
        sub_219F6409C(v147, &qword_27CCD98B8);
        goto LABEL_4;
      }

      v54 = *(v37 + 40);
      v55 = *(v37 + 72);
      v145 = *(v37 + 56);
      *v146 = v55;
      *&v146[13] = *(v37 + 85);
      *&v144[16] = v54;
      *v144 = *(v37 + 24);
      a1 = v119;
      MEMORY[0x21CED2490](2);
      v142[2] = v148;
      v143[0] = *v149;
      *(v143 + 13) = *&v149[13];
      v142[0] = *v147;
      v142[1] = *&v147[16];
      sub_219F72F28(v142, v139);
      sub_21A0E626C();

      if ((~(v146[20] << 32) & 0x3E00000000) == 0)
      {
        sub_21A0E6DCC();
        goto LABEL_61;
      }

      v60 = *&v146[16] | (v146[20] << 32);
      v61 = *v144;
      v110 = v144[16];
      v99 = v144[23];
      v62 = *&v144[21];
      v63 = *&v144[17];
      v113 = *&v144[24];
      v116 = *&v144[8];
      v108 = BYTE8(v145);
      v64 = HIBYTE(v145);
      v65 = *(&v145 + 13);
      v66 = *(&v145 + 9);
      v118 = *v146;
      v124 = v146[8];
      v67 = v146[15];
      v68 = *&v146[13];
      v102 = v145;
      v106 = *&v146[9];
      sub_21A0E6DCC();
      v69 = (v60 >> 36) & 3;
      if (!v69)
      {
        v93 = v62;
        v75 = v68 | (v67 << 16);
        v76 = HIDWORD(v60) & 0xFFFFFFCF;
        v77 = v106 | (v75 << 32);
        MEMORY[0x21CED2490](0);
        v139[6] = HIBYTE(v118);
        *&v139[4] = HIDWORD(v118) >> 8;
        *v139 = v118 >> 8;
        v139[7] = v124;
        v139[14] = BYTE6(v77);
        *&v139[12] = WORD2(v77);
        *&v139[8] = v77;
        *&v139[15] = v60;
        v78 = (v76 << 32) | v60;
        v139[19] = BYTE4(v60) & 0xCF;
        if (v76 >> 6)
        {
          if (v76 >> 6 == 1)
          {
            MEMORY[0x21CED2490](1);
            *&v133[0] = v61;
            a1 = v119;
            *(&v133[0] + 1) = v116;
            goto LABEL_101;
          }

          *&v139[15] = v60;
          v139[19] = BYTE4(v78) & 0x3F;
          MEMORY[0x21CED2490](2);
          LOBYTE(v133[0]) = v61;
          a1 = v119;
          ActivityColor.System.Name.rawValue.getter();
          sub_21A0E626C();

LABEL_111:
          sub_219F6409C(v144, &qword_27CCD98B8);
LABEL_61:
          sub_219F6409C(v147, &qword_27CCD98B8);
LABEL_62:
          result = sub_219F72FD8(v150);
          v20 = v125;
LABEL_63:
          v6 = v120;
          goto LABEL_5;
        }

        *&v139[15] = v60;
        v139[19] = BYTE4(v78) & 0x3F;
        v86 = *&v139[3];
        MEMORY[0x21CED2490](0);
        *&v133[0] = v61;
        a1 = v119;
        *(&v133[0] + 1) = v116;
        RGBA.hash(into:)();
        LODWORD(v133[0]) = v110 | (v63 << 8);
        DWORD1(v133[0]) = (v63 | ((v93 | (v99 << 16)) << 32)) >> 24;
        *(&v133[0] + 1) = v113;
        RGBA.hash(into:)();
        if (v118)
        {
          sub_21A0E6DCC();
          if ((v60 & 0xF00000000) == 0)
          {
            goto LABEL_100;
          }
        }

        else
        {
          *&v133[0] = v102;
          DWORD2(v133[0]) = v108 | (v66 << 8);
          HIDWORD(v133[0]) = (v66 | ((v65 | (v64 << 16)) << 32)) >> 24;
          sub_21A0E6DCC();
          RGBA.hash(into:)();
          if ((v60 & 0xF00000000) == 0)
          {
LABEL_100:
            v133[0] = v86;
            sub_21A0E6DCC();
LABEL_101:
            RGBA.hash(into:)();
            goto LABEL_111;
          }
        }

        sub_21A0E6DCC();
        goto LABEL_111;
      }

      if (v69 != 1)
      {
        v79 = *(v61 + 40);
        v135 = *(v61 + 24);
        v136 = v79;
        v80 = *(v61 + 72);
        v137 = *(v61 + 56);
        v138 = v80;
        v81 = *(v61 + 92);
        v82 = *(v61 + 88);
        a1 = v119;
        MEMORY[0x21CED2490](2);
        v20 = v125;
        v87 = v82 | (v81 << 32);
        v140 = v145;
        v141[0] = *v146;
        *(v141 + 13) = *&v146[13];
        *v139 = *v144;
        *&v139[16] = *&v144[16];
        sub_219F72F28(v139, v133);
        sub_21A0E626C();

        if ((~v87 & 0x3E00000000) != 0)
        {
          v126 = v135;
          v127 = v136;
          v128 = v137;
          *v129 = v138;
          v129[20] = BYTE4(v87);
          *&v129[16] = v87;
          sub_21A0E6DCC();
          v130[0] = v135;
          v130[1] = v136;
          v130[2] = v137;
          v130[3] = v138;
          v132 = BYTE4(v87);
          v131 = v87;
          sub_219F72F28(v130, v133);
          ActivityFill.hash(into:)(v119);
          v133[2] = v128;
          v134[0] = *v129;
          *(v134 + 13) = *&v129[13];
          v133[0] = v126;
          v133[1] = v127;
          sub_219F72F84(v133);
        }

        else
        {
          sub_21A0E6DCC();
        }

        sub_219F6409C(v144, &qword_27CCD98B8);
LABEL_108:
        sub_219F6409C(v147, &qword_27CCD98B8);
        result = sub_219F72FD8(v150);
        goto LABEL_63;
      }

      MEMORY[0x21CED2490](1);
      if (v110)
      {
        MEMORY[0x21CED2490](1);
        if ((v61 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v70 = v61;
        }

        else
        {
          v70 = 0;
        }

        MEMORY[0x21CED24C0](v70);
        if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v71 = v116;
        }

        else
        {
          v71 = 0;
        }

        MEMORY[0x21CED24C0](v71);
        v140 = v145;
        v141[0] = *v146;
        *(v141 + 13) = *&v146[13];
        *v139 = *v144;
        *&v139[16] = *&v144[16];
        sub_219F72F28(v139, v133);
        a1 = v119;
        v20 = v125;
        v6 = v120;
        v72 = v118;
        v73 = v124;
        v74 = v113;
        if ((v108 & 1) == 0)
        {
LABEL_74:
          MEMORY[0x21CED2490](0);
          sub_21A0E626C();

          if ((v73 & 1) == 0)
          {
            goto LABEL_115;
          }

LABEL_125:
          MEMORY[0x21CED2490](1);
          sub_219F6DA14(a1, v72);
          goto LABEL_126;
        }

LABEL_118:
        MEMORY[0x21CED2490](1);
        if ((v74 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v88 = v74;
        }

        else
        {
          v88 = 0;
        }

        MEMORY[0x21CED24C0](v88);
        if ((v102 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v89 = v102;
        }

        else
        {
          v89 = 0;
        }

        MEMORY[0x21CED24C0](v89);
        if (v73)
        {
          goto LABEL_125;
        }

LABEL_115:
        MEMORY[0x21CED2490](0);
        sub_219F6DDE8(a1, v72);
LABEL_126:
        sub_219F6409C(v144, &qword_27CCD98B8);
        goto LABEL_113;
      }

      MEMORY[0x21CED2490](0);
      v6 = v120;
      if (v61 > 3u)
      {
        v72 = v118;
        a1 = v119;
        v20 = v125;
        v83 = v108;
      }

      else
      {
        if (v61 <= 1u)
        {
          v72 = v118;
          a1 = v119;
          v20 = v125;
          v73 = v124;
          v74 = v113;
          v83 = v108;
          goto LABEL_117;
        }

        v72 = v118;
        a1 = v119;
        v20 = v125;
        v83 = v108;
      }

      v73 = v124;
      v74 = v113;
LABEL_117:
      v140 = v145;
      v141[0] = *v146;
      *(v141 + 13) = *&v146[13];
      *v139 = *v144;
      *&v139[16] = *&v144[16];
      sub_219F72F28(v139, v133);
      sub_21A0E626C();

      if ((v83 & 1) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_118;
    }

    v121 = v154[8];
    MEMORY[0x21CED2490](1);
    if (v11)
    {
      v17 = v14;
      MEMORY[0x21CED2490](1);
      if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v18 = v10;
      }

      else
      {
        v18 = 0;
      }

      MEMORY[0x21CED24C0](v18);
      if ((*(&v10 + 1) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v19 = *(&v10 + 1);
      }

      else
      {
        v19 = 0;
      }

      MEMORY[0x21CED24C0](v19);
      v20 = v125;
      if ((v17 & 1) == 0)
      {
LABEL_16:
        MEMORY[0x21CED2490](0);
        sub_21A0E626C();

        if ((v121 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_3:
        MEMORY[0x21CED2490](1);
        sub_219F6DA14(a1, v15);
        goto LABEL_4;
      }
    }

    else
    {
      v28 = v14;
      MEMORY[0x21CED2490](0);
      sub_21A0E626C();

      v20 = v125;
      if ((v28 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    MEMORY[0x21CED2490](1);
    if ((v13 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v29 = v13;
    }

    else
    {
      v29 = 0;
    }

    MEMORY[0x21CED24C0](v29);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v30 = v12;
    }

    else
    {
      v30 = 0;
    }

    MEMORY[0x21CED24C0](v30);
    if ((v121 & 1) == 0)
    {
LABEL_30:
      MEMORY[0x21CED2490](0);
      sub_219F6DDE8(a1, v15);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  return result;
}

uint64_t sub_219F71D54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_21A0E626C();
      sub_219F91544(a1, v7);
      sub_219F71D54(a1, v8);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_219F71E10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      sub_21A0E626C();

      sub_219F91544(a1, v7);
      sub_219F71E10(a1, v8);

      v6 += 3;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_219F71F6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v8 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v8);
  if (v8)
  {
    v10 = (a2 + 48);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(v10 - 16);

      a3(a1, v13);
      sub_219F91544(a1, v11);
      a4(a1, v12);

      v10 += 3;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_219F72024(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x21CED2490](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 3;
      MEMORY[0x21CED2490](v7);

      sub_219F91544(a1, v8);
      sub_219F72024(a1, v9);

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore19PrimaryElectionDataV9CandidateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v2 != v5 || v3 != v6)
    {
      return 0;
    }

LABEL_16:
    if (v4 == 4)
    {
      if (v7 != 4)
      {
        return 0;
      }
    }

    else if (v7 == 4 || (sub_21A0AA7FC(v4, v7) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  v9 = sub_21A0E6C5C();
  result = 0;
  if ((v9 & 1) != 0 && v2 == v5 && v3 == v6)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore19PrimaryElectionDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E495C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98F8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  sub_219F45500(a1, &v25 - v16, &qword_27CCD97F0);
  sub_219F45500(a2, &v17[v18], &qword_27CCD97F0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_219F6409C(v17, &qword_27CCD97F0);
LABEL_9:
      v23 = type metadata accessor for PrimaryElectionData();
      v20 = sub_219F77120(*(a1 + *(v23 + 20)), *(a2 + *(v23 + 20)));
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_219F45500(v17, v12, &qword_27CCD97F0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_6:
    sub_219F6409C(v17, &qword_27CCD98F8);
    goto LABEL_7;
  }

  (*(v5 + 32))(v8, &v17[v18], v4);
  sub_219F44FD0(&qword_27CCD9900, MEMORY[0x277CC9578]);
  v21 = sub_21A0E61CC();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_219F6409C(v17, &qword_27CCD97F0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

unint64_t sub_219F724B4()
{
  result = qword_27CCD9800;
  if (!qword_27CCD9800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9800);
  }

  return result;
}

unint64_t sub_219F72508()
{
  result = qword_27CCD9820;
  if (!qword_27CCD9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9820);
  }

  return result;
}

uint64_t sub_219F7255C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD9810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_219F725D4()
{
  result = qword_27CCD9848;
  if (!qword_27CCD9848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9848);
  }

  return result;
}

unint64_t sub_219F72628()
{
  result = qword_27CCD9858;
  if (!qword_27CCD9858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9858);
  }

  return result;
}

unint64_t sub_219F7267C()
{
  result = qword_27CCD9860;
  if (!qword_27CCD9860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9860);
  }

  return result;
}

unint64_t sub_219F726D0()
{
  result = qword_27CCD9870;
  if (!qword_27CCD9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9870);
  }

  return result;
}

unint64_t sub_219F7277C()
{
  result = qword_27CCD9880;
  if (!qword_27CCD9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9880);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_219F7280C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_219F72854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Placement.DynamicIsland(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Placement.DynamicIsland(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ColorScheme(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorScheme(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_219F72B58()
{
  result = qword_27CCD9888;
  if (!qword_27CCD9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9888);
  }

  return result;
}

unint64_t sub_219F72BB0()
{
  result = qword_27CCD9890;
  if (!qword_27CCD9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9890);
  }

  return result;
}

unint64_t sub_219F72C08()
{
  result = qword_27CCD9898;
  if (!qword_27CCD9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9898);
  }

  return result;
}

unint64_t sub_219F72C60()
{
  result = qword_27CCD98A0;
  if (!qword_27CCD98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD98A0);
  }

  return result;
}

unint64_t sub_219F72CB8()
{
  result = qword_27CCD98A8;
  if (!qword_27CCD98A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD98A8);
  }

  return result;
}

unint64_t sub_219F72D10()
{
  result = qword_27CCD98B0;
  if (!qword_27CCD98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD98B0);
  }

  return result;
}

uint64_t sub_219F72D64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F4365746F76 && a2 == 0xE900000000000074 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372655065746F76 && a2 == 0xEE00656761746E65 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21A0E6C5C();

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

uint64_t sub_219F7302C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F73094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219F73104()
{
  result = qword_27CCD98E0;
  if (!qword_27CCD98E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCD98C8);
    sub_219F44FD0(qword_280C88B70, type metadata accessor for ActivityAsset);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD98E0);
  }

  return result;
}

uint64_t sub_219F731B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsLiveActivitiesCore::RGBA __swiftcall RGBA.init(red:green:blue:alpha:)(Swift::Float red, Swift::Float green, Swift::Float blue, Swift::Float alpha)
{
  *v4 = red;
  v4[1] = green;
  v4[2] = blue;
  v4[3] = alpha;
  result.alpha = alpha;
  result.blue = blue;
  result.green = green;
  result.red = red;
  return result;
}

double sub_219F73394()
{
  static RGBA.parse(hexadecimalString:)(0x63653761643423, 0xE700000000000000, &v1);
  result = *&v1;
  xmmword_27CCD9908 = v1;
  return result;
}

NewsLiveActivitiesCore::RGBA __swiftcall RGBA.init(stringLiteral:)(Swift::String stringLiteral)
{
  v2 = v1;
  static RGBA.parse(hexadecimalString:)(stringLiteral._countAndFlagsBits, stringLiteral._object, &v7);

  v6 = *&v7;
  *v2 = v7;
  result.alpha = v5;
  result.blue = v4;
  result.green = v3;
  result.red = v6;
  return result;
}

double sub_219F73444()
{
  static RGBA.parse(hexadecimalString:)(0x33346433636423, 0xE700000000000000, &v1);
  result = *&v1;
  xmmword_27CCD9918 = v1;
  return result;
}

__n128 sub_219F734B0@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

void static RGBA.parse(hexadecimalString:)(uint64_t a1@<X0>, unint64_t a2@<X1>, float32x2_t *a3@<X8>)
{
  v6 = sub_21A0E671C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219F7381C())
  {
    v11 = sub_21A0E628C();
  }

  else
  {
    v11 = 15;
  }

  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v12 >= v11 >> 14)
  {
    v13 = sub_21A0E62EC();
    MEMORY[0x21CED1930](v13);

    v14 = objc_allocWithZone(MEMORY[0x277CCAC80]);
    v15 = sub_21A0E61DC();
    v16 = [v14 initWithString_];

    v17 = sub_21A0E627C();

    if (v17 / 2 == 4)
    {
      (*(v7 + 104))(v10, *MEMORY[0x277CC9E88], v6);
      v23 = sub_21A0E673C();
      v25 = v24;

      (*(v7 + 8))(v10, v6);
      if ((v25 & 1) == 0)
      {
        v26.i64[0] = 255;
        v26.i64[1] = 255;
        v21 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v23), xmmword_21A0E9CC0), v26))), vdup_n_s32(0x437F0000u));
        v22 = BYTE1(v23) / 255.0;
        v19 = v23 / 255.0;
LABEL_16:
        *a3 = v21;
        a3[1].f32[0] = v22;
        a3[1].f32[1] = v19;
        return;
      }
    }

    else
    {
      if (v17 / 2 == 3)
      {
        (*(v7 + 104))(v10, *MEMORY[0x277CC9E88], v6);
        v18 = sub_21A0E672C();

        (*(v7 + 8))(v10, v6);
        v19 = 1.0;
        if ((v18 & 0x100000000) != 0)
        {
          v21 = 0;
          v22 = 0.0;
        }

        else
        {
          v20.i64[0] = 255;
          v20.i64[1] = 255;
          v21 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(vandq_s8(vshlq_u64(vdupq_n_s64(v18), xmmword_21A0E9CD0), v20))), vdup_n_s32(0x437F0000u));
          v22 = v18 / 255.0;
        }

        goto LABEL_16;
      }
    }

    v21 = 0;
    v22 = 0.0;
    v19 = 1.0;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_219F7381C()
{

  v0 = sub_21A0E62BC();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_21A0E62BC();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_21A0E6C5C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_21A0E62BC();
      v3 = v5;
    }

    while (v5);
  }

  sub_21A0E62BC();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t RGBA.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D83A90];
  *(v5 + 16) = xmmword_21A0E9CE0;
  v7 = MEMORY[0x277D83B08];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = v1;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 72) = v2;
  *(v5 + 136) = v6;
  *(v5 + 144) = v7;
  *(v5 + 112) = v3;
  *(v5 + 176) = v6;
  *(v5 + 184) = v7;
  *(v5 + 152) = v4;

  return sub_21A0E621C();
}

uint64_t RGBA.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E6C();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v5 = sub_21A0E6C6C();
    static RGBA.parse(hexadecimalString:)(v5, v6, v9);

    v8 = *v9[0].f32;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t RGBA.encode(to:)(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9928);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21A0E9CE0;
  v8 = lroundf(v3 * 255.0);
  v9 = MEMORY[0x277D83B88];
  v10 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v10;
  *(v7 + 32) = v8;
  v11 = lroundf(v4 * 255.0);
  *(v7 + 96) = v9;
  *(v7 + 104) = v10;
  *(v7 + 72) = v11;
  v12 = lroundf(v5 * 255.0);
  *(v7 + 136) = v9;
  *(v7 + 144) = v10;
  *(v7 + 112) = v12;
  v13 = lroundf(v6 * 255.0);
  *(v7 + 176) = v9;
  *(v7 + 184) = v10;
  *(v7 + 152) = v13;
  sub_21A0E621C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0E6E9C();
  __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  sub_21A0E6C9C();

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

double sub_219F73CC8@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  static RGBA.parse(hexadecimalString:)(*a1, *(a1 + 8), &v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t RGBA.hash(into:)()
{
  sub_21A0E6DDC();
  sub_21A0E6DDC();
  sub_21A0E6DDC();
  return sub_21A0E6DDC();
}

uint64_t RGBA.hashValue.getter()
{
  sub_21A0E6DAC();
  RGBA.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219F73DE0()
{
  sub_21A0E6DAC();
  RGBA.hash(into:)();
  return sub_21A0E6DFC();
}

uint64_t sub_219F73E30()
{
  sub_21A0E6DAC();
  RGBA.hash(into:)();
  return sub_21A0E6DFC();
}

unint64_t sub_219F73EB8()
{
  result = qword_27CCD9930;
  if (!qword_27CCD9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9930);
  }

  return result;
}

unint64_t sub_219F73F1C()
{
  result = qword_27CCD9938;
  if (!qword_27CCD9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9938);
  }

  return result;
}

unint64_t sub_219F73F8C()
{
  result = qword_27CCD9940;
  if (!qword_27CCD9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9940);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RGBA(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RGBA(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

double PrimaryElectionStaticAttributes.headerProperties.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for PrimaryElectionStaticAttributes() + 20));
  result = 0.0;
  *a1 = xmmword_21A0E9ED0;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return result;
}

uint64_t PrimaryElectionStaticAttributes.delegatesAvailable.setter(uint64_t a1)
{
  result = type metadata accessor for PrimaryElectionStaticAttributes();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_219F74188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionTheme();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PrimaryElectionStaticAttributes.init(theme:delegatesAvailable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219F74228(a1, a3);
  result = type metadata accessor for PrimaryElectionStaticAttributes();
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_219F74228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimaryElectionTheme();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL static PrimaryElectionStaticAttributes.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  if (!_s22NewsLiveActivitiesCore20PrimaryElectionThemeV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for PrimaryElectionStaticAttributes();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_219F742DC()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x656D656874;
  }
}

uint64_t sub_219F74318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D656874 && a2 == 0xE500000000000000;
  if (v6 || (sub_21A0E6C5C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000021A1099F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A0E6C5C();

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

uint64_t sub_219F743F8(uint64_t a1)
{
  v2 = sub_219F75100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219F74434(uint64_t a1)
{
  v2 = sub_219F75100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionStaticAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9948);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F75100();
  sub_21A0E6EAC();
  v9[15] = 0;
  type metadata accessor for PrimaryElectionTheme();
  sub_219F75204(&qword_27CCD9958, type metadata accessor for PrimaryElectionTheme);
  sub_21A0E6BBC();
  if (!v1)
  {
    type metadata accessor for PrimaryElectionStaticAttributes();
    v9[14] = 1;
    sub_21A0E6BAC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t PrimaryElectionStaticAttributes.hash(into:)(uint64_t a1)
{
  PrimaryElectionTheme.hash(into:)(a1);
  v2 = type metadata accessor for PrimaryElectionStaticAttributes();
  return MEMORY[0x21CED2490](*(v1 + *(v2 + 20)));
}

uint64_t PrimaryElectionStaticAttributes.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v3);
  v1 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x21CED2490](*(v0 + *(v1 + 20)));
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionStaticAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for PrimaryElectionTheme();
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9960);
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PrimaryElectionStaticAttributes();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219F75100();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v13;
  v15 = v20;
  v16 = v21;
  v25 = 0;
  sub_219F75204(&qword_27CCD9968, type metadata accessor for PrimaryElectionTheme);
  sub_21A0E6ADC();
  sub_219F74228(v22, v14);
  v24 = 1;
  v17 = v23;
  v18 = sub_21A0E6ACC();
  (*(v15 + 8))(v9, v17);
  *(v14 + *(v10 + 20)) = v18;
  sub_219F75154(v14, v16, type metadata accessor for PrimaryElectionStaticAttributes);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_219F7538C(v14, type metadata accessor for PrimaryElectionStaticAttributes);
}

uint64_t sub_219F749E4(uint64_t a1)
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v4);
  MEMORY[0x21CED2490](*(v1 + *(a1 + 20)));
  return sub_21A0E6DFC();
}

uint64_t sub_219F74A78(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v5);
  MEMORY[0x21CED2490](*(v2 + *(a2 + 20)));
  return sub_21A0E6DFC();
}

void *sub_219F74B1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v49 = &v41 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8);
  v4 = *(v43 - 8);
  v6 = MEMORY[0x28223BE20](v43, v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v41 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9990);
  v20 = *(v4 + 72);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v42 = swift_allocObject();
  v22 = v42 + v21;
  v23 = type metadata accessor for PrimaryElectionTheme();
  v24 = v46;
  sub_219F45500(v46 + *(v23 + 48), v22, &qword_27CCD98D0);
  v48 = v1;
  v25 = *(v1 + 56);
  v50 = v0;
  v44 = v25;
  v25(v22, 0, 1, v0);
  v45 = v23;
  sub_219F45500(v24 + *(v23 + 52), v19, &qword_27CCD9628);
  v26 = type metadata accessor for ActivityMinimalAppearanceTheme();
  v27 = *(*(v26 - 8) + 48);
  if (v27(v19, 1, v26) == 1)
  {
    sub_219F6409C(v19, &qword_27CCD9628);
    v28 = 1;
  }

  else
  {
    sub_219F45500(v19, v22 + v20, &qword_27CCD98D0);
    sub_219F7538C(v19, type metadata accessor for ActivityMinimalAppearanceTheme);
    v28 = 0;
  }

  v44(v22 + v20, v28, 1, v50);
  v47 = v20;
  v29 = v22 + 2 * v20;
  sub_219F45500(v46 + *(v45 + 44), v16, &qword_27CCD9628);
  v30 = v22;
  if (v27(v16, 1, v26) == 1)
  {
    sub_219F6409C(v16, &qword_27CCD9628);
    v31 = 1;
  }

  else
  {
    sub_219F45500(v16, v29, &qword_27CCD98D0);
    sub_219F7538C(v16, type metadata accessor for ActivityMinimalAppearanceTheme);
    v31 = 0;
  }

  v44(v29, v31, 1, v50);
  v32 = v47;
  v33 = v46 + *(v45 + 28);
  v34 = type metadata accessor for ActivityHeaderData();
  sub_219F45500(v33 + *(v34 + 40), v22 + 3 * v32, &qword_27CCD98D8);
  v35 = (v48 + 48);
  v36 = MEMORY[0x277D84F90];
  v37 = 4;
  v46 = v22;
  do
  {
    sub_219F45500(v30, v11, &qword_27CCD98D8);
    sub_219F4D494(v11, v8, &qword_27CCD98D8);
    if ((*v35)(v8, 1, v50) == 1)
    {
      sub_219F6409C(v8, &qword_27CCD98D8);
    }

    else
    {
      sub_219F4D494(v8, v49, &qword_27CCD98D0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_219FA17F8(0, v36[2] + 1, 1, v36);
      }

      v39 = v36[2];
      v38 = v36[3];
      if (v39 >= v38 >> 1)
      {
        v36 = sub_219FA17F8(v38 > 1, v39 + 1, 1, v36);
      }

      v36[2] = v39 + 1;
      sub_219F4D494(v49, v36 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v39, &qword_27CCD98D0);
      v32 = v47;
    }

    v30 += v32;
    --v37;
  }

  while (v37);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v36;
}

unint64_t sub_219F75100()
{
  result = qword_27CCD9950;
  if (!qword_27CCD9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9950);
  }

  return result;
}

uint64_t sub_219F75154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F75204(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_219F75288()
{
  result = qword_27CCD9978;
  if (!qword_27CCD9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9978);
  }

  return result;
}

unint64_t sub_219F752E0()
{
  result = qword_27CCD9980;
  if (!qword_27CCD9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9980);
  }

  return result;
}

unint64_t sub_219F75338()
{
  result = qword_27CCD9988;
  if (!qword_27CCD9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9988);
  }

  return result;
}

uint64_t sub_219F7538C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219F753EC()
{
  sub_21A0E626C();
}

uint64_t sub_219F75534()
{
  sub_21A0E626C();
}

uint64_t sub_219F75668()
{
  sub_21A0E626C();
}

uint64_t sub_219F757B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v68 = v2;
  v69 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 144);
    v9 = *(v5 + 176);
    v53 = *(v5 + 160);
    v54 = v9;
    v10 = *(v5 + 80);
    v11 = *(v5 + 112);
    v49 = *(v5 + 96);
    v50 = v11;
    v12 = *(v5 + 112);
    v13 = *(v5 + 144);
    v51 = *(v5 + 128);
    v52 = v13;
    v14 = *(v5 + 16);
    v15 = *(v5 + 48);
    v45 = *(v5 + 32);
    v46 = v15;
    v16 = *(v5 + 48);
    v17 = *(v5 + 80);
    v47 = *(v5 + 64);
    v48 = v17;
    v18 = *(v5 + 16);
    v44[0] = *v5;
    v44[1] = v18;
    v19 = *(v6 + 144);
    v20 = *(v6 + 176);
    v65 = *(v6 + 160);
    v66 = v20;
    v21 = *(v6 + 80);
    v22 = *(v6 + 112);
    v61 = *(v6 + 96);
    v62 = v22;
    v23 = *(v6 + 112);
    v24 = *(v6 + 144);
    v63 = *(v6 + 128);
    v64 = v24;
    v25 = *(v6 + 16);
    v26 = *(v6 + 48);
    v57 = *(v6 + 32);
    v58 = v26;
    v27 = *(v6 + 48);
    v28 = *(v6 + 80);
    v59 = *(v6 + 64);
    v60 = v28;
    v29 = *(v6 + 16);
    v56[0] = *v6;
    v56[1] = v29;
    v30 = *(v5 + 176);
    v41[10] = v53;
    v42 = v30;
    v41[6] = v49;
    v41[7] = v12;
    v41[8] = v51;
    v41[9] = v8;
    v41[2] = v45;
    v41[3] = v16;
    v41[4] = v47;
    v41[5] = v10;
    v41[0] = v44[0];
    v41[1] = v14;
    v31 = *(v6 + 176);
    v38[10] = v65;
    v39 = v31;
    v38[6] = v61;
    v38[7] = v23;
    v38[8] = v63;
    v38[9] = v19;
    v38[2] = v57;
    v38[3] = v27;
    v38[4] = v59;
    v38[5] = v21;
    v55 = *(v5 + 192);
    v67 = *(v6 + 192);
    v43 = *(v5 + 192);
    v40 = *(v6 + 192);
    v38[0] = v56[0];
    v38[1] = v25;
    sub_219F45500(v44, v37, &qword_27CCD98F0);
    sub_219F45500(v56, v37, &qword_27CCD98F0);
    if (!_s22NewsLiveActivitiesCore17ActivityTextThemeV2eeoiySbAC_ACtFZ_0(v41, v38) || (v32 = *(&v42 + 1), v33 = *(&v39 + 1), , , v34 = sub_219FAAA00(v32, v33), , , (v34 & 1) == 0))
    {
      sub_219F6409C(v56, &qword_27CCD98F0);
      sub_219F6409C(v44, &qword_27CCD98F0);
      return 0;
    }

    v35 = sub_219F757B0(v55, v67);
    sub_219F6409C(v56, &qword_27CCD98F0);
    sub_219F6409C(v44, &qword_27CCD98F0);
    if ((v35 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 200;
    v5 += 200;
  }

  return 1;
}

uint64_t sub_219F75A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A0E481C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v9, v16, v4);
    sub_219F7A84C();
    v23 = sub_21A0E61CC();
    v24 = *v19;
    (*v19)(v9, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

BOOL sub_219F75C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ElectionEntityTheme() - 8;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_219F7A8A4(v15, v12, type metadata accessor for ElectionEntityTheme);
        sub_219F7A8A4(v16, v8, type metadata accessor for ElectionEntityTheme);
        v18 = _s22NewsLiveActivitiesCore19ElectionEntityThemeV2eeoiySbAC_ACtFZ_0(v12, v8);
        sub_219F7A90C(v8, type metadata accessor for ElectionEntityTheme);
        sub_219F7A90C(v12, type metadata accessor for ElectionEntityTheme);
        if (!v18)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    return 0;
  }

  return v18;
}

uint64_t sub_219F75DC0(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for URLAssetConfiguration.Recipe(0);
  MEMORY[0x28223BE20](v88, v4);
  v102 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21A0E481C();
  v6 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v7);
  v90 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URLAssetConfiguration.Format(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v91 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99A8);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v82 - v18;
  v20 = type metadata accessor for URLAssetConfiguration(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ActivityAsset();
  v25 = MEMORY[0x28223BE20](v98, v24);
  v96 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v94 = &v82 - v28;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99B0);
  MEMORY[0x28223BE20](v97, v29);
  v95 = &v82 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v104 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v103 = &v82 - v38;
  v39 = *(a1 + 16);
  if (v39 != *(a2 + 16))
  {
LABEL_39:
    v79 = 0;
    return v79 & 1;
  }

  if (!v39 || a1 == a2)
  {
    v79 = 1;
    return v79 & 1;
  }

  v92 = v36;
  v86 = v16;
  v84 = v15;
  v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v41 = a1 + v40;
  v82 = (v6 + 32);
  v83 = (v6 + 8);
  v89 = *(v37 + 72);
  v87 = v19;
  v42 = v95;
  v85 = v9;
  v43 = a2 + v40;
  v45 = v103;
  v44 = v104;
  while (1)
  {
    result = sub_219F45500(v41, v45, &qword_27CCD98C8);
    if (!v39)
    {
      break;
    }

    v99 = v43;
    v100 = v41;
    sub_219F45500(v43, v44, &qword_27CCD98C8);
    v47 = v42 + *(v97 + 48);
    sub_219F7A8A4(v45, v42, type metadata accessor for ActivityAsset);
    sub_219F7A8A4(v44, v47, type metadata accessor for ActivityAsset);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v101 = v39;
    if (EnumCaseMultiPayload == 1)
    {
      v49 = v96;
      sub_219F7A8A4(v42, v96, type metadata accessor for ActivityAsset);
      v50 = swift_getEnumCaseMultiPayload();
      v51 = v86;
      if (v50 != 1)
      {
        sub_219F7A90C(v49, type metadata accessor for URLAssetConfiguration);
        goto LABEL_29;
      }

      sub_219F7A7E4(v47, v23, type metadata accessor for URLAssetConfiguration);
      v52 = *(v51 + 48);
      sub_219F7A8A4(v49, v19, type metadata accessor for URLAssetConfiguration.Format);
      sub_219F7A8A4(v23, &v19[v52], type metadata accessor for URLAssetConfiguration.Format);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v53 = v91;
        sub_219F7A8A4(v19, v91, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_219F7A90C(v53, type metadata accessor for URLAssetConfiguration.Recipe);
          goto LABEL_32;
        }

        sub_219F7A7E4(&v19[v52], v102, type metadata accessor for URLAssetConfiguration.Recipe);
        sub_219F7A84C();
        if ((sub_21A0E61CC() & 1) == 0 || (v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0), v55 = *(v54 + 28), v56 = *(v53 + v55), v57 = *(v102 + v55), , , v58 = sub_219FAAA00(v56, v57), , , (v58 & 1) == 0) || (sub_219F76D10(*(v53 + *(v54 + 32)), *(v102 + *(v54 + 32))) & 1) == 0 || (sub_21A0795D4(*(v53 + *(v88 + 20)), *(v102 + *(v88 + 20))) & 1) == 0)
        {
          sub_219F7A90C(v102, type metadata accessor for URLAssetConfiguration.Recipe);
          sub_219F7A90C(v53, type metadata accessor for URLAssetConfiguration.Recipe);
          v80 = v87;
          goto LABEL_34;
        }

        sub_219F7A90C(v102, type metadata accessor for URLAssetConfiguration.Recipe);
        sub_219F7A90C(v53, type metadata accessor for URLAssetConfiguration.Recipe);
        v19 = v87;
      }

      else
      {
        v69 = v84;
        sub_219F7A8A4(v19, v84, type metadata accessor for URLAssetConfiguration.Format);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v83)(v69, v93);
LABEL_32:
          v81 = v96;
          sub_219F6409C(v19, &qword_27CCD99A8);
          goto LABEL_35;
        }

        v70 = v90;
        v71 = v93;
        (*v82)(v90, &v19[v52], v93);
        v72 = sub_21A0E478C();
        v73 = *v83;
        (*v83)(v70, v71);
        v73(v69, v71);
        if ((v72 & 1) == 0)
        {
          v80 = v19;
LABEL_34:
          sub_219F7A90C(v80, type metadata accessor for URLAssetConfiguration.Format);
          v81 = v96;
LABEL_35:
          sub_219F7A90C(v23, type metadata accessor for URLAssetConfiguration);
          sub_219F7A90C(v81, type metadata accessor for URLAssetConfiguration);
LABEL_36:
          sub_219F7A90C(v42, type metadata accessor for ActivityAsset);
LABEL_37:
          v45 = v103;
          v44 = v104;
LABEL_38:
          sub_219F6409C(v44, &qword_27CCD98C8);
          sub_219F6409C(v45, &qword_27CCD98C8);
          goto LABEL_39;
        }
      }

      sub_219F7A90C(v19, type metadata accessor for URLAssetConfiguration.Format);
      sub_219F7A90C(v23, type metadata accessor for URLAssetConfiguration);
      sub_219F7A90C(v96, type metadata accessor for URLAssetConfiguration);
    }

    else
    {
      v59 = v94;
      sub_219F7A8A4(v42, v94, type metadata accessor for ActivityAsset);
      v60 = *v59;
      v61 = *(v59 + 8);
      v62 = *(v59 + 16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_219F79CD8();
        v42 = v95;
LABEL_29:
        sub_219F6409C(v42, &qword_27CCD99B0);
        goto LABEL_37;
      }

      v63 = *(v59 + 17);
      v65 = *v47;
      v64 = *(v47 + 8);
      v66 = *(v47 + 16);
      v67 = *(v47 + 17);
      v108[0] = v60;
      v108[1] = v61;
      v109 = v62;
      v110 = v63;
      v105[0] = v65;
      v105[1] = v64;
      v106 = v66;
      v107 = v67;
      v68 = _s22NewsLiveActivitiesCore21SFSymbolConfigurationV2eeoiySbAC_ACtFZ_0(v108, v105);
      sub_219F79CD8();
      sub_219F79CD8();
      v19 = v87;
      v42 = v95;
      if (!v68)
      {
        goto LABEL_36;
      }
    }

    sub_219F7A90C(v42, type metadata accessor for ActivityAsset);
    v74 = v92;
    v75 = *(v92 + 28);
    v45 = v103;
    v44 = v104;
    v76 = *&v103[v75];
    v77 = *&v104[v75];

    v78 = sub_219FAAA00(v76, v77);

    if ((v78 & 1) == 0)
    {
      goto LABEL_38;
    }

    v79 = sub_219F75DC0(*(v45 + *(v74 + 32)), *(v44 + *(v74 + 32)));
    sub_219F6409C(v44, &qword_27CCD98C8);
    sub_219F6409C(v45, &qword_27CCD98C8);
    if (v79)
    {
      v39 = v101 - 1;
      v43 = v99 + v89;
      v41 = v100 + v89;
      if (v101 != 1)
      {
        continue;
      }
    }

    return v79 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_219F768A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v79 = v2;
  v80 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v62 = v5[8];
    v63 = v8;
    v10 = v5[9];
    v64[0] = v5[10];
    *(v64 + 11) = *(v5 + 171);
    v11 = v5[5];
    v12 = v5[3];
    v58 = v5[4];
    v59 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v60 = v5[6];
    v61 = v14;
    v15 = v5[1];
    v55[0] = *v5;
    v55[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v56 = v5[2];
    v57 = v16;
    v52 = v62;
    v53 = v10;
    v54[0] = v5[10];
    *(v54 + 11) = *(v5 + 171);
    v48 = v58;
    v49 = v13;
    v50 = v60;
    v51 = v9;
    v44 = v18;
    v45 = v17;
    v46 = v56;
    v47 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v72 = v6[8];
    v73 = v19;
    v21 = v6[9];
    v74[0] = v6[10];
    *(v74 + 11) = *(v6 + 171);
    v22 = v6[5];
    v23 = v6[3];
    v68 = v6[4];
    v69 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v70 = v6[6];
    v71 = v25;
    v26 = v6[1];
    v65[0] = *v6;
    v65[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v66 = v6[2];
    v67 = v27;
    v41 = v72;
    v42 = v21;
    v43[0] = v6[10];
    *(v43 + 11) = *(v6 + 171);
    v37 = v68;
    v38 = v24;
    v39 = v70;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v35 = v66;
    v36 = v23;
    sub_219F73218(v55, v32);
    sub_219F73218(v65, v32);
    v30 = _s22NewsLiveActivitiesCore22PrimaryElectionResultsV9CandidateV2eeoiySbAE_AEtFZ_0(&v44, &v33);
    v75[8] = v41;
    v75[9] = v42;
    v76[0] = v43[0];
    *(v76 + 11) = *(v43 + 11);
    v75[5] = v38;
    v75[6] = v39;
    v75[7] = v40;
    v75[0] = v33;
    v75[1] = v34;
    v75[2] = v35;
    v75[3] = v36;
    v75[4] = v37;
    sub_219F73274(v75);
    v77[8] = v52;
    v77[9] = v53;
    v78[0] = v54[0];
    *(v78 + 11) = *(v54 + 11);
    v77[4] = v48;
    v77[5] = v49;
    v77[6] = v50;
    v77[7] = v51;
    v77[0] = v44;
    v77[1] = v45;
    v77[2] = v46;
    v77[3] = v47;
    sub_219F73274(v77);
    if (!v30)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 12;
    v5 += 12;
  }

  return 1;
}

uint64_t sub_219F76AE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_21A0E6C5C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_219F76B74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(i - 3) && v5 == v8;
        if (!v11 && (sub_21A0E6C5C() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRetain_n();

      v12 = sub_219FAAA00(v6, v9);

      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = sub_219F76B74(v7, v10);

      if ((v13 & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_219F76D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99C0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v30 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_13:
    v28 = 0;
    return v28 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = sub_21A0E481C();
  v31 = *(v5 + 72);
  v32 = v17;
  v18 = &qword_27CCD99C0;
  v19 = &unk_21A0EDFD0;
  while (1)
  {
    result = sub_219F45500(v15, v12, v18);
    if (!v13)
    {
      break;
    }

    v33 = v13;
    v21 = v19;
    sub_219F45500(v16, v9, v18);
    sub_219F7A84C();
    if ((sub_21A0E61CC() & 1) == 0 || (v22 = *(v4 + 28), v23 = *&v12[v22], v24 = v18, v25 = v4, v26 = *&v9[v22], , , v27 = sub_219FAAA00(v23, v26), , v4 = v25, v18 = v24, , (v27 & 1) == 0))
    {
      sub_219F6409C(v9, &qword_27CCD99C0);
      sub_219F6409C(v12, &qword_27CCD99C0);
      goto LABEL_13;
    }

    v28 = sub_219F76D10(*&v12[*(v4 + 32)], *&v9[*(v4 + 32)]);
    v29 = v24;
    v19 = v21;
    sub_219F6409C(v9, v29);
    sub_219F6409C(v12, v18);
    if (v28)
    {
      v13 = v33 - 1;
      v16 += v31;
      v15 += v31;
      if (v33 != 1)
      {
        continue;
      }
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_219F76F9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_21A0E6C5C() & 1) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRetain_n();

      v10 = sub_219FAAA00(v5, v7);

      if ((v10 & 1) == 0)
      {

        return 0;
      }

      v11 = sub_219F76F9C(v6, v8);

      if ((v11 & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_219F77120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v5 = 0;
    do
    {
      v6 = *(a1 + v5 + 48);
      v7 = *(a1 + v5 + 56);
      v8 = *(a1 + v5 + 64);
      v9 = *(a2 + v5 + 48);
      v10 = *(a2 + v5 + 56);
      v11 = *(a2 + v5 + 64);
      if (*(a1 + v5 + 32) == *(a2 + v5 + 32) && *(a1 + v5 + 40) == *(a2 + v5 + 40))
      {
        if (v6 != v9 || v7 != v10)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_21A0E6C5C();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }

        if (v6 != v9 || v7 != v10)
        {
          return result;
        }
      }

      if (v8 == 4)
      {
        if (v11 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v11 == 4)
      {
        return 0;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v17 = 0xE600000000000000;
          v18 = 0x66666F6E7572;
          if (v11 <= 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v18 = 0x72676F72705F6E69;
          v17 = 0xEB00000000737365;
          if (v11 <= 1)
          {
LABEL_36:
            if (v11)
            {
              v19 = 0xE800000000000000;
              if (v18 != 0x6465737265766572)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v19 = 0xE600000000000000;
              if (v18 != 0x72656E6E6977)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_42;
          }
        }
      }

      else if (v8)
      {
        v17 = 0xE800000000000000;
        v18 = 0x6465737265766572;
        if (v11 <= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v17 = 0xE600000000000000;
        v18 = 0x72656E6E6977;
        if (v11 <= 1)
        {
          goto LABEL_36;
        }
      }

      if (v11 == 2)
      {
        v19 = 0xE600000000000000;
        if (v18 != 0x66666F6E7572)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v19 = 0xEB00000000737365;
        if (v18 != 0x72676F72705F6E69)
        {
          goto LABEL_44;
        }
      }

LABEL_42:
      if (v17 == v19)
      {

        goto LABEL_6;
      }

LABEL_44:
      v20 = sub_21A0E6C5C();

      if ((v20 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v5 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_219F7737C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + v3 + 48);
      v5 = *(a1 + v3 + 56);
      v6 = *(a1 + v3 + 64);
      v7 = *(a1 + v3 + 65);
      v8 = *(a2 + v3 + 48);
      v9 = *(a2 + v3 + 56);
      v10 = *(a2 + v3 + 64);
      v11 = *(a2 + v3 + 65);
      if (*(a1 + v3 + 32) == *(a2 + v3 + 32) && *(a1 + v3 + 40) == *(a2 + v3 + 40))
      {
        if (v4 != v8)
        {
          return 0;
        }
      }

      else
      {
        v13 = sub_21A0E6C5C();
        result = 0;
        if ((v13 & 1) == 0 || v4 != v8)
        {
          return result;
        }
      }

      if (v6)
      {
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        if (v5 == v9)
        {
          v15 = v10;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          return 0;
        }
      }

      if (v7 == 4)
      {
        if (v11 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v11 == 4)
      {
        return 0;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v16 = 0xE600000000000000;
          v17 = 0x66666F6E7572;
          if (v11 <= 1)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v17 = 0x72676F72705F6E69;
          v16 = 0xEB00000000737365;
          if (v11 <= 1)
          {
LABEL_36:
            if (v11)
            {
              v18 = 0xE800000000000000;
              if (v17 != 0x6465737265766572)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v18 = 0xE600000000000000;
              if (v17 != 0x72656E6E6977)
              {
                goto LABEL_44;
              }
            }

            goto LABEL_42;
          }
        }
      }

      else if (v7)
      {
        v16 = 0xE800000000000000;
        v17 = 0x6465737265766572;
        if (v11 <= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        v17 = 0x72656E6E6977;
        if (v11 <= 1)
        {
          goto LABEL_36;
        }
      }

      if (v11 == 2)
      {
        v18 = 0xE600000000000000;
        if (v17 != 0x66666F6E7572)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v18 = 0xEB00000000737365;
        if (v17 != 0x72676F72705F6E69)
        {
          goto LABEL_44;
        }
      }

LABEL_42:
      if (v16 == v18)
      {

        goto LABEL_6;
      }

LABEL_44:
      v19 = sub_21A0E6C5C();

      if ((v19 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_219F775F8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  if (!v2 || result == a2)
  {
    v18 = 1;
    return v18 & 1;
  }

  v3 = 0x647261646E617473;
  v4 = (result + 48);
  v5 = (a2 + 48);
  while (v2)
  {
    v6 = *(v4 - 16);
    if (*(v4 - 16))
    {
      if (v6 == 1)
      {
        v7 = 0x65736F6F6CLL;
      }

      else
      {
        v7 = 0x647261646E617473;
      }

      if (v6 == 1)
      {
        v8 = 0xE500000000000000;
      }

      else
      {
        v8 = 0xE800000000000000;
      }
    }

    else
    {
      v8 = 0xE500000000000000;
      v7 = 0x7468676974;
    }

    v9 = *(v4 - 1);
    v10 = *v4;
    v11 = *(v5 - 1);
    v12 = *v5;
    if (*(v5 - 16) == 1)
    {
      v3 = 0x65736F6F6CLL;
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE800000000000000;
    }

    if (*(v5 - 16))
    {
      v14 = v3;
    }

    else
    {
      v14 = 0x7468676974;
    }

    if (*(v5 - 16))
    {
      v15 = v13;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    if (v7 == v14 && v8 == v15)
    {
    }

    else
    {
      v16 = sub_21A0E6C5C();

      if ((v16 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v17 = sub_219FAAA00(v9, v11);

    if ((v17 & 1) == 0)
    {
LABEL_33:

      goto LABEL_34;
    }

    v18 = sub_219F775F8(v10, v12);

    if (v18)
    {
      v4 += 3;
      v5 += 3;
      v19 = v2-- == 1;
      v3 = 0x647261646E617473;
      if (!v19)
      {
        continue;
      }
    }

    return v18 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_219F77840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_72:
    v28 = 0;
    return v28 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    while (1)
    {
      v5 = *(v3 - 16);
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          v8 = 0x7976616568;
        }

        else
        {
          v8 = 0x746867696CLL;
        }

        if (*(v3 - 16))
        {
          v9 = 1684828002;
        }

        else
        {
          v9 = 0x6B63616C62;
        }

        if (*(v3 - 16))
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE500000000000000;
        }

        if (*(v3 - 16) <= 1u)
        {
          v7 = v9;
        }

        else
        {
          v7 = v8;
        }

        if (*(v3 - 16) <= 1u)
        {
          v6 = v10;
        }

        else
        {
          v6 = 0xE500000000000000;
        }
      }

      else if (*(v3 - 16) <= 5u)
      {
        if (v5 == 4)
        {
          v7 = 0x6D756964656DLL;
        }

        else
        {
          v7 = 0x72616C75676572;
        }

        if (v5 == 4)
        {
          v6 = 0xE600000000000000;
        }

        else
        {
          v6 = 0xE700000000000000;
        }
      }

      else if (v5 == 6)
      {
        v6 = 0xE800000000000000;
        v7 = 0x646C6F62696D6573;
      }

      else if (v5 == 7)
      {
        v6 = 0xE400000000000000;
        v7 = 1852401780;
      }

      else
      {
        v7 = 0x67694C6172746C75;
        v6 = 0xEA00000000007468;
      }

      v11 = *(v3 - 1);
      v12 = *v3;
      v13 = *(v4 - 16);
      v14 = *(v4 - 1);
      v15 = *v4;
      v16 = 0x67694C6172746C75;
      if (v13 == 7)
      {
        v16 = 1852401780;
      }

      v17 = 0xEA00000000007468;
      if (v13 == 7)
      {
        v17 = 0xE400000000000000;
      }

      if (v13 == 6)
      {
        v16 = 0x646C6F62696D6573;
        v17 = 0xE800000000000000;
      }

      v18 = 0x72616C75676572;
      if (v13 == 4)
      {
        v18 = 0x6D756964656DLL;
      }

      v19 = 0xE600000000000000;
      if (v13 != 4)
      {
        v19 = 0xE700000000000000;
      }

      if (*(v4 - 16) <= 5u)
      {
        v16 = v18;
        v17 = v19;
      }

      if (v13 == 2)
      {
        v20 = 0x7976616568;
      }

      else
      {
        v20 = 0x746867696CLL;
      }

      v21 = 0xE500000000000000;
      if (*(v4 - 16))
      {
        v22 = 1684828002;
      }

      else
      {
        v22 = 0x6B63616C62;
      }

      if (*(v4 - 16))
      {
        v23 = 0xE400000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      if (*(v4 - 16) <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = *(v4 - 16) <= 3u ? v20 : v16;
      v25 = *(v4 - 16) <= 3u ? v21 : v17;
      if (v7 == v24 && v6 == v25)
      {
      }

      else
      {
        v26 = sub_21A0E6C5C();

        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      v27 = sub_219FAAA00(v11, v14);

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_219F77840(v12, v15);

      if (v28)
      {
        v3 += 3;
        v4 += 3;
        if (--v2)
        {
          continue;
        }
      }

      return v28 & 1;
    }

    goto LABEL_72;
  }

  v28 = 1;
  return v28 & 1;
}

uint64_t sub_219F77BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_73:
    v28 = 0;
    return v28 & 1;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    while (1)
    {
      v5 = *(v3 - 16);
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          v8 = 0x6C64616568627573;
        }

        else
        {
          v8 = 2036625250;
        }

        if (v5 == 2)
        {
          v9 = 0xEB00000000656E69;
        }

        else
        {
          v9 = 0xE400000000000000;
        }

        if (*(v3 - 16))
        {
          v10 = 0x656E696C64616568;
        }

        else
        {
          v10 = 0x33656C746974;
        }

        if (*(v3 - 16))
        {
          v11 = 0xE800000000000000;
        }

        else
        {
          v11 = 0xE600000000000000;
        }

        if (*(v3 - 16) <= 1u)
        {
          v7 = v10;
        }

        else
        {
          v7 = v8;
        }

        if (*(v3 - 16) <= 1u)
        {
          v6 = v11;
        }

        else
        {
          v6 = v9;
        }
      }

      else if (*(v3 - 16) <= 5u)
      {
        if (v5 == 4)
        {
          v7 = 0x74756F6C6C6163;
        }

        else
        {
          v7 = 0x6E6F6974706163;
        }

        v6 = 0xE700000000000000;
      }

      else if (v5 == 6)
      {
        v6 = 0xE800000000000000;
        v7 = 0x326E6F6974706163;
      }

      else if (v5 == 7)
      {
        v6 = 0xE800000000000000;
        v7 = 0x65746F6E746F6F66;
      }

      else
      {
        v6 = 0xE700000000000000;
        v7 = 0x30326863746177;
      }

      v12 = *(v3 - 1);
      v13 = *v3;
      v14 = *(v4 - 16);
      v15 = *(v4 - 1);
      v16 = *v4;
      v17 = 0x65746F6E746F6F66;
      if (v14 == 7)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v17 = 0x30326863746177;
        v18 = 0xE700000000000000;
      }

      if (v14 == 6)
      {
        v17 = 0x326E6F6974706163;
        v18 = 0xE800000000000000;
      }

      v19 = 0x74756F6C6C6163;
      if (v14 != 4)
      {
        v19 = 0x6E6F6974706163;
      }

      if (*(v4 - 16) <= 5u)
      {
        v17 = v19;
        v18 = 0xE700000000000000;
      }

      if (v14 == 2)
      {
        v20 = 0x6C64616568627573;
      }

      else
      {
        v20 = 2036625250;
      }

      if (v14 == 2)
      {
        v21 = 0xEB00000000656E69;
      }

      else
      {
        v21 = 0xE400000000000000;
      }

      if (*(v4 - 16))
      {
        v22 = 0x656E696C64616568;
      }

      else
      {
        v22 = 0x33656C746974;
      }

      if (*(v4 - 16))
      {
        v23 = 0xE800000000000000;
      }

      else
      {
        v23 = 0xE600000000000000;
      }

      if (*(v4 - 16) <= 1u)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = *(v4 - 16) <= 3u ? v20 : v17;
      v25 = *(v4 - 16) <= 3u ? v21 : v18;
      if (v7 == v24 && v6 == v25)
      {
      }

      else
      {
        v26 = sub_21A0E6C5C();

        if ((v26 & 1) == 0)
        {
          break;
        }
      }

      v27 = sub_219FAAA00(v12, v15);

      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_219F77BD4(v13, v16);

      if (v28)
      {
        v3 += 3;
        v4 += 3;
        if (--v2)
        {
          continue;
        }
      }

      return v28 & 1;
    }

    goto LABEL_73;
  }

  v28 = 1;
  return v28 & 1;
}

uint64_t sub_219F77F98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 2) == *(i - 2); i += 3)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRetain_n();

      v9 = sub_219FAAA00(v5, v7);

      if ((v9 & 1) == 0)
      {

        return 0;
      }

      v10 = sub_219F77F98(v6, v8);

      if ((v10 & 1) == 0)
      {
        return 0;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_219F780CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v9 = *(v5 + 16);
    v30 = *(v5 + 32);
    v31 = v8;
    v10 = *(v5 + 48);
    v32 = *(v5 + 64);
    v11 = *(v5 + 16);
    v29[0] = *v5;
    v29[1] = v11;
    v12 = *(v6 + 48);
    v13 = *(v6 + 16);
    v35 = *(v6 + 32);
    v36 = v12;
    v14 = *(v6 + 48);
    v37 = *(v6 + 64);
    v15 = *(v6 + 16);
    v34[0] = *v6;
    v34[1] = v15;
    v26[2] = v30;
    v26[3] = v10;
    v27 = *(v5 + 64);
    v26[0] = v29[0];
    v26[1] = v9;
    v23[1] = v13;
    v23[2] = v35;
    v16 = *(v6 + 64);
    v23[3] = v14;
    v24 = v16;
    v33 = *(v5 + 80);
    v38 = *(v6 + 80);
    v28 = *(v5 + 80);
    v25 = *(v6 + 80);
    v23[0] = v34[0];
    sub_219F45500(v29, v22, &qword_27CCD98E8);
    sub_219F45500(v34, v22, &qword_27CCD98E8);
    if (!static ActivityFill.== infix(_:_:)(v26, v23) || (v17 = *(&v27 + 1), v18 = *(&v24 + 1), , , v19 = sub_219FAAA00(v17, v18), , , (v19 & 1) == 0))
    {
      sub_219F6409C(v34, &qword_27CCD98E8);
      sub_219F6409C(v29, &qword_27CCD98E8);
      return 0;
    }

    v20 = sub_219F780CC(v33, v38);
    sub_219F6409C(v34, &qword_27CCD98E8);
    sub_219F6409C(v29, &qword_27CCD98E8);
    if ((v20 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

uint64_t sub_219F782D8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int64x2_t a6)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (v6 && a1 != a2)
  {
    v9 = 0;
    do
    {
      v11 = (a1 + v9);
      v12 = *(a1 + v9 + 40);
      v13 = *(a1 + v9 + 96) | (*(a1 + v9 + 100) << 32);
      v14 = *(a1 + v9 + 36);
      v15 = a2 + v9;
      v16 = *(a2 + v9 + 32);
      v17 = *(a2 + v9 + 40);
      v18 = *(a2 + v9 + 96) | (*(a2 + v9 + 100) << 32);
      v19 = (v13 >> 38) & 3;
      if (v19)
      {
        if (v19 == 1)
        {
          if ((v18 & 0xC000000000) != 0x4000000000)
          {
            return 0;
          }

          v20 = vshrq_n_u64(*(v15 + 32), 0x20uLL);
          v17.i64[1] = v20.i64[1];
          a6.i64[0] = *(a2 + v9 + 32);
          if ((vminv_u16(vmovn_s32(vceqq_f32(*(a1 + v9 + 32), vuzp1q_s32(vzip1q_s64(a6, v20), v17)))) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v18 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          v27 = 0xEB00000000726F6CLL;
          v28 = 0x6F43746E65636361;
          switch(*(a1 + v9 + 32))
          {
            case 1u:
              v27 = 0xE700000000000000;
              v28 = 0x7972616D697270;
              break;
            case 2u:
              v27 = 0xE900000000000079;
              v28 = 0x7261646E6F636573;
              break;
            case 3u:
              v27 = 0xE500000000000000;
              v28 = 0x6B63616C62;
              break;
            case 4u:
              v27 = 0xE500000000000000;
              v28 = 0x6574696877;
              break;
            case 5u:
              v27 = 0xE500000000000000;
              v28 = 0x7261656C63;
              break;
            case 6u:
              v27 = 0xE400000000000000;
              v28 = 1702194274;
              break;
            case 7u:
              v27 = 0xE500000000000000;
              v28 = 0x6E776F7262;
              break;
            case 8u:
              v27 = 0xE400000000000000;
              v28 = 1851881827;
              break;
            case 9u:
              v27 = 0xE400000000000000;
              v28 = 2036429415;
              break;
            case 0xAu:
              v27 = 0xE500000000000000;
              v28 = 0x6E65657267;
              break;
            case 0xBu:
              v27 = 0xE600000000000000;
              v28 = 0x6F6769646E69;
              break;
            case 0xCu:
              v27 = 0xE400000000000000;
              v28 = 1953393005;
              break;
            case 0xDu:
              v27 = 0xE600000000000000;
              v28 = 0x65676E61726FLL;
              break;
            case 0xEu:
              v27 = 0xE400000000000000;
              v28 = 1802398064;
              break;
            case 0xFu:
              v27 = 0xE600000000000000;
              v28 = 0x656C70727570;
              break;
            case 0x10u:
              v27 = 0xE300000000000000;
              v28 = 6579570;
              break;
            case 0x11u:
              v27 = 0xE400000000000000;
              v28 = 1818322292;
              break;
            case 0x12u:
              v27 = 0xE600000000000000;
              v28 = 0x776F6C6C6579;
              break;
            default:
              break;
          }

          v29 = 0x6F43746E65636361;
          v30 = 0xEB00000000726F6CLL;
          switch(*(a2 + v9 + 32))
          {
            case 1u:
              v30 = 0xE700000000000000;
              v29 = 0x7972616D697270;
              break;
            case 2u:
              v30 = 0xE900000000000079;
              v29 = 0x7261646E6F636573;
              break;
            case 3u:
              v30 = 0xE500000000000000;
              v29 = 0x6B63616C62;
              break;
            case 4u:
              v30 = 0xE500000000000000;
              v29 = 0x6574696877;
              break;
            case 5u:
              v30 = 0xE500000000000000;
              v29 = 0x7261656C63;
              break;
            case 6u:
              v30 = 0xE400000000000000;
              v29 = 1702194274;
              break;
            case 7u:
              v30 = 0xE500000000000000;
              v29 = 0x6E776F7262;
              break;
            case 8u:
              v30 = 0xE400000000000000;
              v29 = 1851881827;
              break;
            case 9u:
              v30 = 0xE400000000000000;
              v29 = 2036429415;
              break;
            case 0xAu:
              v30 = 0xE500000000000000;
              v29 = 0x6E65657267;
              break;
            case 0xBu:
              v30 = 0xE600000000000000;
              v29 = 0x6F6769646E69;
              break;
            case 0xCu:
              v30 = 0xE400000000000000;
              v29 = 1953393005;
              break;
            case 0xDu:
              v30 = 0xE600000000000000;
              v29 = 0x65676E61726FLL;
              break;
            case 0xEu:
              v30 = 0xE400000000000000;
              v29 = 1802398064;
              break;
            case 0xFu:
              v30 = 0xE600000000000000;
              v29 = 0x656C70727570;
              break;
            case 0x10u:
              v30 = 0xE300000000000000;
              v29 = 6579570;
              break;
            case 0x11u:
              v30 = 0xE400000000000000;
              v29 = 1818322292;
              break;
            case 0x12u:
              v30 = 0xE600000000000000;
              v29 = 0x776F6C6C6579;
              break;
            default:
              break;
          }

          if (v28 == v29 && v27 == v30)
          {
          }

          else
          {
            v10 = sub_21A0E6C5C();

            if ((v10 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        if (v18 >> 38)
        {
          return 0;
        }

        v21 = v11[3];
        v22 = v11[4];
        v23 = v11[5];
        v24 = *(v15 + 56);
        v25 = *(v15 + 72);
        v26 = *(v15 + 88);
        v39[0] = *(a1 + v9 + 32);
        v39[1] = v14;
        v40 = v12;
        v41 = v21;
        v42 = v22;
        v43 = v23;
        v44 = v13;
        v45 = BYTE4(v13) & 0x3F;
        v32 = v16;
        v33 = v17;
        v34 = v24;
        v35 = v25;
        v36 = v26;
        v38 = BYTE4(v18);
        v37 = v18;
        if ((_s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(v39, &v32) & 1) == 0)
        {
          return 0;
        }
      }

      v9 += 72;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t sub_219F787DC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, int64x2_t a6)
{
  v6 = *(a1 + 16);
  if (v6 != *(a2 + 16))
  {
    return 0;
  }

  if (v6 && a1 != a2)
  {
    for (i = 0; ; i += 80)
    {
      v11 = a1 + i;
      v12 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      v13 = *(v11 + 40);
      v14 = *(v11 + 104) | (*(v11 + 108) << 32);
      v15 = *(v12 + 40);
      v16 = *(v12 + 48);
      v17 = *(v12 + 104) | (*(v12 + 108) << 32);
      v18 = (v14 >> 38) & 3;
      if (v18)
      {
        if (v18 == 1)
        {
          result = 0;
          if ((v17 & 0xC000000000) != 0x4000000000)
          {
            return result;
          }

          v20 = vshrq_n_u64(*(v12 + 40), 0x20uLL);
          a6.i64[0] = *(v12 + 40);
          v16.i64[1] = v20.i64[1];
          if ((~vaddvq_s32(vandq_s8(vceqq_f32(v13, vuzp1q_s32(vzip1q_s64(a6, v20), v16)), xmmword_21A0EA120)) & 0xF) != 0)
          {
            return result;
          }
        }

        else
        {
          if ((v17 & 0xC000000000) != 0x8000000000)
          {
            return 0;
          }

          v27 = 0xEB00000000726F6CLL;
          v28 = 0x6F43746E65636361;
          switch(v13.i8[0])
          {
            case 1:
              v27 = 0xE700000000000000;
              v28 = 0x7972616D697270;
              break;
            case 2:
              v27 = 0xE900000000000079;
              v28 = 0x7261646E6F636573;
              break;
            case 3:
              v27 = 0xE500000000000000;
              v28 = 0x6B63616C62;
              break;
            case 4:
              v27 = 0xE500000000000000;
              v28 = 0x6574696877;
              break;
            case 5:
              v27 = 0xE500000000000000;
              v28 = 0x7261656C63;
              break;
            case 6:
              v27 = 0xE400000000000000;
              v28 = 1702194274;
              break;
            case 7:
              v27 = 0xE500000000000000;
              v28 = 0x6E776F7262;
              break;
            case 8:
              v27 = 0xE400000000000000;
              v28 = 1851881827;
              break;
            case 9:
              v27 = 0xE400000000000000;
              v28 = 2036429415;
              break;
            case 0xA:
              v27 = 0xE500000000000000;
              v28 = 0x6E65657267;
              break;
            case 0xB:
              v27 = 0xE600000000000000;
              v28 = 0x6F6769646E69;
              break;
            case 0xC:
              v27 = 0xE400000000000000;
              v28 = 1953393005;
              break;
            case 0xD:
              v27 = 0xE600000000000000;
              v28 = 0x65676E61726FLL;
              break;
            case 0xE:
              v27 = 0xE400000000000000;
              v28 = 1802398064;
              break;
            case 0xF:
              v27 = 0xE600000000000000;
              v28 = 0x656C70727570;
              break;
            case 0x10:
              v27 = 0xE300000000000000;
              v28 = 6579570;
              break;
            case 0x11:
              v27 = 0xE400000000000000;
              v28 = 1818322292;
              break;
            case 0x12:
              v27 = 0xE600000000000000;
              v28 = 0x776F6C6C6579;
              break;
            default:
              break;
          }

          v29 = 0x6F43746E65636361;
          v30 = 0xEB00000000726F6CLL;
          switch(*(v12 + 40))
          {
            case 1u:
              v30 = 0xE700000000000000;
              v29 = 0x7972616D697270;
              break;
            case 2u:
              v30 = 0xE900000000000079;
              v29 = 0x7261646E6F636573;
              break;
            case 3u:
              v30 = 0xE500000000000000;
              v29 = 0x6B63616C62;
              break;
            case 4u:
              v30 = 0xE500000000000000;
              v29 = 0x6574696877;
              break;
            case 5u:
              v30 = 0xE500000000000000;
              v29 = 0x7261656C63;
              break;
            case 6u:
              v30 = 0xE400000000000000;
              v29 = 1702194274;
              break;
            case 7u:
              v30 = 0xE500000000000000;
              v29 = 0x6E776F7262;
              break;
            case 8u:
              v30 = 0xE400000000000000;
              v29 = 1851881827;
              break;
            case 9u:
              v30 = 0xE400000000000000;
              v29 = 2036429415;
              break;
            case 0xAu:
              v30 = 0xE500000000000000;
              v29 = 0x6E65657267;
              break;
            case 0xBu:
              v30 = 0xE600000000000000;
              v29 = 0x6F6769646E69;
              break;
            case 0xCu:
              v30 = 0xE400000000000000;
              v29 = 1953393005;
              break;
            case 0xDu:
              v30 = 0xE600000000000000;
              v29 = 0x65676E61726FLL;
              break;
            case 0xEu:
              v30 = 0xE400000000000000;
              v29 = 1802398064;
              break;
            case 0xFu:
              v30 = 0xE600000000000000;
              v29 = 0x656C70727570;
              break;
            case 0x10u:
              v30 = 0xE300000000000000;
              v29 = 6579570;
              break;
            case 0x11u:
              v30 = 0xE400000000000000;
              v29 = 1818322292;
              break;
            case 0x12u:
              v30 = 0xE600000000000000;
              v29 = 0x776F6C6C6579;
              break;
            default:
              break;
          }

          if (v28 == v29 && v27 == v30)
          {
          }

          else
          {
            v10 = sub_21A0E6C5C();

            if ((v10 & 1) == 0)
            {
              return 0;
            }
          }
        }
      }

      else
      {
        if (v17 >> 38)
        {
          return 0;
        }

        v21 = *(v11 + 56);
        v22 = *(v11 + 72);
        v23 = *(v11 + 88);
        v24 = *(v12 + 64);
        v25 = *(v12 + 80);
        v26 = *(v12 + 96);
        v38[0] = *(v11 + 40);
        v38[1] = v21;
        v38[2] = v22;
        v38[3] = v23;
        v39 = v14;
        v40 = BYTE4(v14) & 0x3F;
        v31 = v15;
        v32 = v16;
        v33 = v24;
        v34 = v25;
        v35 = v26;
        v37 = BYTE4(v17);
        v36 = v17;
        if ((_s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(v38, &v31) & 1) == 0)
        {
          return 0;
        }
      }

      if (!--v6)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_219F78CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v43 = v2;
  v44 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v33 = v5[4];
    v34 = v8;
    v35[0] = v5[6];
    *(v35 + 13) = *(v5 + 109);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = v5[3];
    v31 = v5[2];
    v32 = v10;
    v11 = v6[3];
    v38 = v6[2];
    v39 = v11;
    v12 = v6[1];
    v36 = *v6;
    v37 = v12;
    *(v42 + 13) = *(v6 + 109);
    v13 = v6[6];
    v41 = v6[5];
    v42[0] = v13;
    v40 = v6[4];
    if (v29 != v36 && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }

    if (v30 != v37 && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }

    if (v31 != v38 && (sub_21A0E6C5C() & 1) == 0)
    {
      return 0;
    }

    v23 = v34;
    v24[0] = v35[0];
    v21 = v32;
    v22 = v33;
    v18 = v40;
    v19 = v41;
    v20[0] = v42[0];
    *(v24 + 13) = *(v35 + 13);
    *(v20 + 13) = *(v42 + 13);
    v17 = v39;
    sub_219F72ECC(&v29, v16);
    sub_219F72ECC(&v36, v16);
    sub_219F72F28(&v32, v16);
    sub_219F72F28(&v39, v16);
    v14 = static ActivityFill.== infix(_:_:)(&v21, &v17);
    v25[2] = v19;
    v26[0] = v20[0];
    *(v26 + 13) = *(v20 + 13);
    v25[0] = v17;
    v25[1] = v18;
    sub_219F72F84(v25);
    v27[1] = v22;
    v27[2] = v23;
    v28[0] = v24[0];
    *(v28 + 13) = *(v24 + 13);
    v27[0] = v21;
    sub_219F72F84(v27);
    sub_219F72FD8(&v36);
    sub_219F72FD8(&v29);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 120);
    v5 = (v5 + 120);
  }

  return 1;
}

uint64_t sub_219F78F2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v31 = v5[2];
    v32 = v8;
    v33 = v5[4];
    v34 = *(v5 + 10);
    v9 = v5[1];
    v29 = *v5;
    v30 = v9;
    v10 = *(v6 + 48);
    v37 = *(v6 + 32);
    v38 = v10;
    v39 = *(v6 + 64);
    v40 = *(v6 + 80);
    v11 = *(v6 + 16);
    v35 = *v6;
    v36 = v11;
    v12 = BYTE4(v33) >> 6;
    if (!v12)
    {
      if (BYTE4(v39) >> 6)
      {
        return 0;
      }

      v26[0] = v29;
      v26[1] = v30;
      v26[2] = v31;
      v26[3] = v32;
      v27 = v33;
      v28 = BYTE4(v33) & 0x3F;
      v23[0] = v35;
      v23[1] = v36;
      v23[2] = v37;
      v23[3] = v38;
      v25 = BYTE4(v39);
      v24 = v39;
      if ((_s22NewsLiveActivitiesCore13ActivityColorO13UserInterfaceV2eeoiySbAE_AEtFZ_0(v26, v23) & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    if (v12 == 1)
    {
      if (((BYTE4(v39) << 32) & 0xC000000000) != 0x4000000000 || v35.f32[0] != *&v29 || v35.f32[1] != *(&v29 + 1) || v35.f32[2] != *(&v29 + 2) || v35.f32[3] != *(&v29 + 3))
      {
        return 0;
      }

LABEL_15:
      sub_219F45500(&v29, v26, &qword_27CCD98C0);
      sub_219F45500(&v35, v26, &qword_27CCD98C0);
      goto LABEL_59;
    }

    if (((BYTE4(v39) << 32) & 0xC000000000) != 0x8000000000)
    {
      return 0;
    }

    v13 = 0xEB00000000726F6CLL;
    v14 = 0x6F43746E65636361;
    switch(v29)
    {
      case 1:
        v13 = 0xE700000000000000;
        v14 = 0x7972616D697270;
        break;
      case 2:
        v13 = 0xE900000000000079;
        v14 = 0x7261646E6F636573;
        break;
      case 3:
        v13 = 0xE500000000000000;
        v14 = 0x6B63616C62;
        break;
      case 4:
        v13 = 0xE500000000000000;
        v14 = 0x6574696877;
        break;
      case 5:
        v13 = 0xE500000000000000;
        v14 = 0x7261656C63;
        break;
      case 6:
        v13 = 0xE400000000000000;
        v14 = 1702194274;
        break;
      case 7:
        v13 = 0xE500000000000000;
        v14 = 0x6E776F7262;
        break;
      case 8:
        v13 = 0xE400000000000000;
        v14 = 1851881827;
        break;
      case 9:
        v13 = 0xE400000000000000;
        v14 = 2036429415;
        break;
      case 10:
        v13 = 0xE500000000000000;
        v14 = 0x6E65657267;
        break;
      case 11:
        v13 = 0xE600000000000000;
        v14 = 0x6F6769646E69;
        break;
      case 12:
        v13 = 0xE400000000000000;
        v14 = 1953393005;
        break;
      case 13:
        v13 = 0xE600000000000000;
        v14 = 0x65676E61726FLL;
        break;
      case 14:
        v13 = 0xE400000000000000;
        v14 = 1802398064;
        break;
      case 15:
        v13 = 0xE600000000000000;
        v14 = 0x656C70727570;
        break;
      case 16:
        v13 = 0xE300000000000000;
        v14 = 6579570;
        break;
      case 17:
        v13 = 0xE400000000000000;
        v14 = 1818322292;
        break;
      case 18:
        v13 = 0xE600000000000000;
        v14 = 0x776F6C6C6579;
        break;
      default:
        break;
    }

    v15 = 0x6F43746E65636361;
    v16 = 0xEB00000000726F6CLL;
    switch(v35.i8[0])
    {
      case 1:
        v16 = 0xE700000000000000;
        v15 = 0x7972616D697270;
        break;
      case 2:
        v16 = 0xE900000000000079;
        v15 = 0x7261646E6F636573;
        break;
      case 3:
        v16 = 0xE500000000000000;
        v15 = 0x6B63616C62;
        break;
      case 4:
        v16 = 0xE500000000000000;
        v15 = 0x6574696877;
        break;
      case 5:
        v16 = 0xE500000000000000;
        v15 = 0x7261656C63;
        break;
      case 6:
        v16 = 0xE400000000000000;
        v15 = 1702194274;
        break;
      case 7:
        v16 = 0xE500000000000000;
        v15 = 0x6E776F7262;
        break;
      case 8:
        v16 = 0xE400000000000000;
        v15 = 1851881827;
        break;
      case 9:
        v16 = 0xE400000000000000;
        v15 = 2036429415;
        break;
      case 0xA:
        v16 = 0xE500000000000000;
        v15 = 0x6E65657267;
        break;
      case 0xB:
        v16 = 0xE600000000000000;
        v15 = 0x6F6769646E69;
        break;
      case 0xC:
        v16 = 0xE400000000000000;
        v15 = 1953393005;
        break;
      case 0xD:
        v16 = 0xE600000000000000;
        v15 = 0x65676E61726FLL;
        break;
      case 0xE:
        v16 = 0xE400000000000000;
        v15 = 1802398064;
        break;
      case 0xF:
        v16 = 0xE600000000000000;
        v15 = 0x656C70727570;
        break;
      case 0x10:
        v16 = 0xE300000000000000;
        v15 = 6579570;
        break;
      case 0x11:
        v16 = 0xE400000000000000;
        v15 = 1818322292;
        break;
      case 0x12:
        v16 = 0xE600000000000000;
        v15 = 0x776F6C6C6579;
        break;
      default:
        break;
    }

    if (v14 == v15 && v13 == v16)
    {
      sub_219F45500(&v29, v26, &qword_27CCD98C0);
      sub_219F45500(&v35, v26, &qword_27CCD98C0);
    }

    else
    {
      v17 = sub_21A0E6C5C();
      sub_219F45500(&v29, v26, &qword_27CCD98C0);
      sub_219F45500(&v35, v26, &qword_27CCD98C0);

      if ((v17 & 1) == 0)
      {
        goto LABEL_65;
      }
    }

LABEL_59:
    v18 = *(&v33 + 1);
    v19 = *(&v39 + 1);

    v20 = sub_219FAAA00(v18, v19);

    if ((v20 & 1) == 0)
    {
LABEL_65:
      sub_219F6409C(&v35, &qword_27CCD98C0);
      sub_219F6409C(&v29, &qword_27CCD98C0);
      return 0;
    }

    v21 = sub_219F78F2C(v34, v40);
    sub_219F6409C(&v35, &qword_27CCD98C0);
    sub_219F6409C(&v29, &qword_27CCD98C0);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 = (v5 + 88);
  }

  return 1;
}

uint64_t sub_219F795A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v5 != v7)
        {
          return 0;
        }
      }

      else
      {
        v10 = sub_21A0E6C5C();
        result = 0;
        if ((v10 & 1) == 0 || v5 != v7)
        {
          return result;
        }
      }

      if (v6 == 4)
      {
        if (v8 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v8 == 4)
      {
        return 0;
      }

      if (v6 > 1)
      {
        if (v6 == 2)
        {
          v12 = 0xE600000000000000;
          v13 = 0x66666F6E7572;
          if (v8 <= 1)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v13 = 0x72676F72705F6E69;
          v12 = 0xEB00000000737365;
          if (v8 <= 1)
          {
LABEL_29:
            if (v8)
            {
              v14 = 0xE800000000000000;
              if (v13 != 0x6465737265766572)
              {
                goto LABEL_37;
              }
            }

            else
            {
              v14 = 0xE600000000000000;
              if (v13 != 0x72656E6E6977)
              {
                goto LABEL_37;
              }
            }

            goto LABEL_35;
          }
        }
      }

      else if (v6)
      {
        v12 = 0xE800000000000000;
        v13 = 0x6465737265766572;
        if (v8 <= 1)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        v13 = 0x72656E6E6977;
        if (v8 <= 1)
        {
          goto LABEL_29;
        }
      }

      if (v8 == 2)
      {
        v14 = 0xE600000000000000;
        if (v13 != 0x66666F6E7572)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v14 = 0xEB00000000737365;
        if (v13 != 0x72676F72705F6E69)
        {
          goto LABEL_37;
        }
      }

LABEL_35:
      if (v12 == v14)
      {

        goto LABEL_6;
      }

LABEL_37:
      v15 = sub_21A0E6C5C();

      if ((v15 & 1) == 0)
      {
        return 0;
      }

LABEL_6:
      v3 += 32;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t PrimaryElectionResults.candidates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PrimaryElectionResults.Candidate.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PrimaryElectionResults.Candidate.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.lastName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PrimaryElectionResults.Candidate.lastName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.nameColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10[0] = v2;
  *(v10 + 13) = *(v1 + 109);
  v3 = *(v10 + 13);
  v4 = *(v1 + 64);
  v8[0] = *(v1 + 48);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 61) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_219F72F28(v8, v7);
}

__n128 PrimaryElectionResults.Candidate.nameColor.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  v7[2] = *(v1 + 80);
  v8[0] = v3;
  *(v8 + 13) = *(v1 + 109);
  v4 = *(v1 + 64);
  v7[0] = *(v1 + 48);
  v7[1] = v4;
  sub_219F72F84(v7);
  v5 = *(a1 + 48);
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = v5;
  *(v1 + 109) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = result;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.countColor.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.percentageColor.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t PrimaryElectionResults.Candidate.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  v6 = *(v1 + 186);
  v7 = *(v1 + 184);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_219F79BC0(v2, v3);
}

uint64_t sub_219F79BC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return sub_219F79C1C();
  }

  return result;
}

__n128 PrimaryElectionResults.Candidate.badge.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v5 = v1 + 184;
  sub_219F79C7C(*(v5 - 32), *(v5 - 24));
  result = *a1;
  v7 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v7;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

uint64_t sub_219F79C7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return sub_219F79CD8();
  }

  return result;
}

uint64_t PrimaryElectionResults.Candidate.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 136);
  v5 = *(v1 + 160);
  v9 = *(v1 + 184);
  v10 = *(v1 + 186);
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  ActivityFill.hash(into:)(a1);
  MEMORY[0x21CED2490](v3);
  sub_21A0E5B8C();
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  MEMORY[0x21CED24C0](*&v6);
  sub_21A0E5B8C();
  if (!v5)
  {
    return sub_21A0E6DCC();
  }

  v7 = v9 | (v10 << 16);
  sub_21A0E6DCC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v9 & 1);
  sub_21A0E626C();
  if (BYTE1(v9) == 9)
  {
    sub_21A0E6DCC();
    if (BYTE2(v7) != 3)
    {
      goto LABEL_6;
    }

    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_219F75534();
  if (BYTE2(v7) == 3)
  {
    return sub_21A0E6DCC();
  }

LABEL_6:
  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t PrimaryElectionResults.Candidate.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionResults.Candidate.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F79F6C()
{
  sub_21A0E6DAC();
  PrimaryElectionResults.Candidate.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F79FB0()
{
  sub_21A0E6DAC();
  PrimaryElectionResults.Candidate.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionResults.hashValue.getter()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F6E188(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F7A04C()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F6E188(v3, v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F7A09C()
{
  v1 = *v0;
  sub_21A0E6DAC();
  sub_219F6E188(v3, v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore22PrimaryElectionResultsV9CandidateV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v58[2] = *(a1 + 5);
  v59[0] = v10;
  *(v59 + 13) = *(a1 + 109);
  v11 = *(a1 + 4);
  v58[0] = *(a1 + 3);
  v58[1] = v11;
  v43 = a1[15];
  v44 = v9;
  v12 = *(a1 + 17);
  v39 = a1[20];
  v40 = a1[19];
  v41 = *(a1 + 21);
  v34 = *(a1 + 92);
  v35 = *(a1 + 186);
  v13 = *a2;
  v14 = a2[1];
  v16 = a2[2];
  v15 = a2[3];
  v18 = a2[4];
  v17 = a2[5];
  v19 = *(a2 + 6);
  v60[2] = *(a2 + 5);
  v61[0] = v19;
  *(v61 + 13) = *(a2 + 109);
  v20 = *(a2 + 4);
  v60[0] = *(a2 + 3);
  v60[1] = v20;
  v42 = a2[15];
  v21 = *(a2 + 17);
  v36 = a2[20];
  v37 = a2[19];
  v38 = *(a2 + 21);
  v32 = *(a2 + 92);
  v33 = *(a2 + 186);
  if ((v4 != v13 || v5 != v14) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  if ((v6 != v16 || v8 != v15) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  if ((v7 != v18 || v44 != v17) && (sub_21A0E6C5C() & 1) == 0)
  {
    return 0;
  }

  v22 = *(a1 + 6);
  v52 = *(a1 + 5);
  v53[0] = v22;
  *(v53 + 13) = *(a1 + 109);
  v23 = *(a1 + 4);
  v50 = *(a1 + 3);
  v51 = v23;
  v24 = *(a2 + 6);
  v48 = *(a2 + 5);
  v49[0] = v24;
  *(v49 + 13) = *(a2 + 109);
  v25 = *(a2 + 4);
  v46 = *(a2 + 3);
  v47 = v25;
  sub_219F72F28(v58, v45);
  sub_219F72F28(v60, v45);
  v26 = static ActivityFill.== infix(_:_:)(&v50, &v46);
  v54[2] = v48;
  v55[0] = v49[0];
  *(v55 + 13) = *(v49 + 13);
  v54[0] = v46;
  v54[1] = v47;
  sub_219F72F84(v54);
  v56[1] = v51;
  v56[2] = v52;
  v57[0] = v53[0];
  *(v57 + 13) = *(v53 + 13);
  v56[0] = v50;
  sub_219F72F84(v56);
  if (!v26 || v43 != v42 || (sub_21A0E5B3C() & 1) == 0 || v12 != v21 || (sub_21A0E5B3C() & 1) == 0)
  {
    return 0;
  }

  if (!v39)
  {
    v27 = v40;
    sub_219F79BC0(v40, 0);
    v29 = v36;
    v28 = v37;
    if (!v36)
    {
      sub_219F79BC0(v37, 0);
      sub_219F79C7C(v40, 0);
      return 1;
    }

    sub_219F79BC0(v37, v36);
LABEL_22:
    sub_219F79C7C(v27, v39);
    sub_219F79C7C(v28, v29);
    return 0;
  }

  v27 = v40;
  *&v50 = v40;
  *(&v50 + 1) = v39;
  v51 = v41;
  LOWORD(v52) = v34;
  BYTE2(v52) = (v34 | (v35 << 16)) >> 16;
  v29 = v36;
  v28 = v37;
  if (!v36)
  {
    sub_219F79BC0(v40, v39);
    sub_219F79BC0(v37, 0);
    sub_219F79BC0(v40, v39);

    sub_219F79CD8();
    goto LABEL_22;
  }

  *&v46 = v37;
  *(&v46 + 1) = v36;
  v47 = v38;
  LOWORD(v48) = v32 & 0xFF01;
  BYTE2(v48) = (v32 | (v33 << 16)) >> 16;
  sub_219F79BC0(v40, v39);
  sub_219F79BC0(v37, v36);
  sub_219F79BC0(v40, v39);
  v30 = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(&v50, &v46);

  sub_219F79CD8();

  sub_219F79CD8();
  sub_219F79C7C(v40, v39);
  return v30;
}

unint64_t sub_219F7A56C()
{
  result = qword_27CCD9998;
  if (!qword_27CCD9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD9998);
  }

  return result;
}

unint64_t sub_219F7A5C4()
{
  result = qword_27CCD99A0;
  if (!qword_27CCD99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD99A0);
  }

  return result;
}

uint64_t sub_219F7A624(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_219F7A66C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ElectionEntityBadgeVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy187_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 171) = *(a2 + 171);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_219F7A718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 187))
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

uint64_t sub_219F7A760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 186) = 0;
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 187) = 1;
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

    *(result + 187) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219F7A7E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219F7A84C()
{
  result = qword_27CCD99B8;
  if (!qword_27CCD99B8)
  {
    sub_21A0E481C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD99B8);
  }

  return result;
}

uint64_t sub_219F7A8A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F7A90C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219F7A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v6;
    v11 = *(a1 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_219F7BF98(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_219F6409C(a1, &qword_27CCD99C8);
    sub_219F7B4CC(a2, a3, v10);

    return sub_219F6409C(v10, &qword_27CCD99C8);
  }

  return result;
}

uint64_t sub_219F7AA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_219F7C2B0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_219F477B4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_21A0D4DBC();
        v14 = v16;
      }

      result = sub_219F7BA58(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_219F7AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_219F7C128(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_219F477B4(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_21A0D4C44();
        v16 = v18;
      }

      result = sub_219F7B8A8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_219F7AC48(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_219F9FDD8(a3);
    if (v7)
    {
      v8 = v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v3;
      v14 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_21A0D4F2C();
        v10 = v14;
      }

      sub_219F7DAF0(*(v10 + 48) + 40 * v8);
      sub_219F7BC08(v8, v10);
      result = sub_219F7DAF0(a3);
      *v4 = v10;
    }

    else
    {

      return sub_219F7DAF0(a3);
    }
  }

  else
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_219F7C42C(a1, a3, v13);
    result = sub_219F7DAF0(a3);
    *v3 = v15;
  }

  return result;
}

uint64_t sub_219F7AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for NewsLiveActivity(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_219F6409C(a1, &qword_27CCD99E0);
    sub_219F7B580(a2, a3, v10);

    return sub_219F6409C(v10, &qword_27CCD99E0);
  }

  else
  {
    sub_219F7DE60(a1, v14, type metadata accessor for NewsLiveActivity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_219F7C584(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t DynamicValueConditionEnvironment.init(capabilities:colorScheme:placement:isLuminanceReduced:displayScale:keyedValues:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *(result + 1);
  v8 = *(result + 8);
  v9 = *a2;
  v10 = *a3;
  v11 = *a5;
  v12 = *a6;
  *a7 = *result;
  *(a7 + 1) = v7;
  *(a7 + 8) = v8;
  *(a7 + 16) = v9;
  *(a7 + 17) = v10;
  *(a7 + 18) = a4;
  *(a7 + 24) = v11;
  *(a7 + 32) = v12;
  return result;
}

void DynamicValueConditionEnvironment.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
}

uint64_t DynamicValueConditionEnvironment.with(capabilities:colorScheme:placement:isLuminanceReduced:displayScale:keyedValueConditions:)@<X0>(unint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = *a2;
  v13 = *a3;
  v14 = *a5;
  v15 = *(a5 + 8);
  v16 = *v7;
  v17 = v7[1];
  v18 = *(v7 + 1);
  v19 = v7[16];
  v20 = v7[17];
  v21 = v7[18];
  v22 = *(v7 + 3);
  if (*a6)
  {
    v23 = *a6;
  }

  else
  {
    v23 = *(v7 + 4);
    v34 = v18;
    v35 = a1[1];
    v32 = v16;
    v33 = v17;
    v31 = v19;
    v30 = *a5;

    v14 = v30;
    v19 = v31;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v10 = v35;
  }

  if (v15)
  {
    v14 = v22;
  }

  if (a4 == 2)
  {
    v24 = v21;
  }

  else
  {
    v24 = a4;
  }

  if (v13 == 7)
  {
    v25 = v20;
  }

  else
  {
    v25 = v13;
  }

  if (v12 != 2)
  {
    v19 = v12;
  }

  if (v11 == 2)
  {
    v26 = v16;
  }

  else
  {
    v26 = v11;
  }

  *a7 = v26 & 1;
  v27 = (v11 >> 8) & 1;
  if (v11 == 2)
  {
    LOBYTE(v27) = v17;
  }

  *(a7 + 1) = v27;
  if (v11 == 2)
  {
    v28 = v18;
  }

  else
  {
    v28 = v10;
  }

  *(a7 + 8) = v28;
  *(a7 + 16) = v19 & 1;
  *(a7 + 17) = v25;
  *(a7 + 18) = v24 & 1;
  *(a7 + 24) = v14;
  *(a7 + 32) = v23;
}

uint64_t DynamicValueConditionEnvironment.inserting(keyValuePair:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[0] = a1;
  v20[1] = a2;
  sub_219F45500(a3, &v21, &qword_27CCD99C8);
  v6 = *(v4 + 16);
  v22[0] = *v4;
  v22[1] = v6;
  v23 = *(v4 + 32);
  v7 = v23;
  *a4 = v22[0];
  *(a4 + 16) = v6;
  *(a4 + 32) = v7;
  sub_219F45500(v20, v18, &qword_27CCD99D0);
  v16[0] = v18[0];
  v16[1] = v18[1];
  sub_219F45500(v19, &v17, &qword_27CCD99C8);
  sub_219F45500(v16, v14, &qword_27CCD99D0);
  v8 = v14[0];
  v9 = v14[1];
  sub_219F45500(v16, v12, &qword_27CCD99D0);

  sub_219F63900(v22, &v11);

  sub_219F7A970(&v13, v8, v9);
  sub_219F6409C(v16, &qword_27CCD99D0);
  sub_219F6409C(v20, &qword_27CCD99D0);
  sub_219F6409C(&v15, &qword_27CCD99C8);
  return sub_219F6409C(v19, &qword_27CCD99C8);
}

uint64_t DynamicValueConditionEnvironment.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 17);
  v7 = *(v2 + 24);
  v6 = *(v2 + 32);
  sub_21A0E6DCC();
  sub_21A0E6DCC();
  MEMORY[0x21CED2490](v4);
  sub_21A0E626C();

  switch(v5)
  {
    case 6:
      v8 = 3;
      goto LABEL_7;
    case 5:
      v8 = 1;
      goto LABEL_7;
    case 4:
      v8 = 0;
LABEL_7:
      MEMORY[0x21CED2490](v8);
      goto LABEL_9;
  }

  MEMORY[0x21CED2490](2);
  sub_21A0E626C();

LABEL_9:
  sub_21A0E6DCC();
  MEMORY[0x21CED2490](v7);

  return sub_219F7C9EC(a1, v6);
}

uint64_t DynamicValueConditionEnvironment.hashValue.getter()
{
  sub_21A0E6DAC();
  DynamicValueConditionEnvironment.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F7B448()
{
  sub_21A0E6DAC();
  DynamicValueConditionEnvironment.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_219F7B48C()
{
  sub_21A0E6DAC();
  DynamicValueConditionEnvironment.hash(into:)(v1);
  return sub_21A0E6DFC();
}

double sub_219F7B4CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_219F477B4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A0D48E8();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_219F7B6EC(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_219F7B580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_219F477B4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21A0D50BC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for NewsLiveActivity(0);
    v19 = *(v12 - 8);
    sub_219F7DE60(v11 + *(v19 + 72) * v8, a3, type metadata accessor for NewsLiveActivity);
    sub_219F7BDAC(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for NewsLiveActivity(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_219F7B6EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A0E67DC() + 1) & ~v5;
    do
    {
      sub_21A0E6DAC();

      sub_21A0E626C();
      v11 = sub_21A0E6DFC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_219F7B8A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A0E67DC() + 1) & ~v5;
    do
    {
      sub_21A0E6DAC();

      sub_21A0E626C();
      v9 = sub_21A0E6DFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_219F7BA58(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A0E67DC() + 1) & ~v5;
    do
    {
      sub_21A0E6DAC();

      sub_21A0E626C();
      v9 = sub_21A0E6DFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_219F7BC08(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A0E67DC() + 1) & ~v5;
    do
    {
      sub_219F7DB44(*(a2 + 48) + 40 * v6, v24);
      v9 = sub_21A0E67EC();
      result = sub_219F7DAF0(v24);
      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 >= v8 && v3 >= v10)
        {
LABEL_15:
          v13 = *(a2 + 48);
          v14 = v13 + 40 * v3;
          v15 = (v13 + 40 * v6);
          if (v3 != v6 || v14 >= v15 + 40)
          {
            v16 = *v15;
            v17 = v15[1];
            *(v14 + 32) = *(v15 + 4);
            *v14 = v16;
            *(v14 + 16) = v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v10 >= v8 || v3 >= v10)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_219F7BDAC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A0E67DC() + 1) & ~v5;
    while (1)
    {
      sub_21A0E6DAC();

      sub_21A0E626C();
      v9 = sub_21A0E6DFC();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for NewsLiveActivity(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_219F7BF98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_219F477B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21A0D1338(v16, a4 & 1);
      v11 = sub_219F477B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21A0E6D0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21A0D48E8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    return sub_219F7DD9C(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * v11;
  v26 = *a1;
  v27 = *(a1 + 16);
  *(v25 + 32) = *(a1 + 32);
  *v25 = v26;
  *(v25 + 16) = v27;
  v28 = v21[2];
  v15 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v29;
}

uint64_t sub_219F7C128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_219F477B4(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_21A0D1980(v18, a5 & 1);
      v13 = sub_219F477B4(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_21A0E6D0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_21A0D4C44();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_219F7C2B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_219F477B4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_21A0D1C40(v16, a4 & 1);
      v11 = sub_219F477B4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_21A0E6D0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_21A0D4DBC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_219F7C42C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_219F9FDD8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 >= result && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = sub_21A0D4F2C();
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + 8 * v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  sub_21A0D1EE8(result, a3 & 1);
  result = sub_219F9FDD8(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_16:
    result = sub_21A0E6D0C();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  result = sub_219F7DB44(a2, v24);
  v16[(v10 >> 6) + 8] |= 1 << v10;
  v18 = v16[6] + 40 * v10;
  v19 = v25;
  v20 = v24[1];
  *v18 = v24[0];
  *(v18 + 16) = v20;
  *(v18 + 32) = v19;
  *(v16[7] + 8 * v10) = a1;
  v21 = v16[2];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16[2] = v23;
  return result;
}

uint64_t sub_219F7C584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_219F477B4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_21A0D50BC();
      goto LABEL_7;
    }

    sub_21A0D2184(v15, a4 & 1);
    v22 = sub_219F477B4(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21A0E6D0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for NewsLiveActivity(0) - 8) + 72) * v12;

    return sub_219F7DBA0(a1, v20);
  }

LABEL_13:
  sub_219F7C88C(v12, a2, a3, a1, v18);
}

uint64_t sub_219F7C6E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for NewsLiveActivityAttributes(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_219F9FEE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21A0D5484();
      goto LABEL_7;
    }

    sub_21A0D2B3C(v17, a3 & 1);
    v22 = sub_219F9FEE8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_219F7DDF8(a2, v11, type metadata accessor for NewsLiveActivityAttributes);
      return sub_219F7C938(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21A0E6D0C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_219F7C88C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NewsLiveActivity(0);
  result = sub_219F7DE60(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for NewsLiveActivity);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_219F7C938(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for NewsLiveActivityAttributes(0);
  result = sub_219F7DE60(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for NewsLiveActivityAttributes);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_219F7C9EC(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = *(*(a2 + 48) + 16 * v13 + 8);
      sub_219F7DB44(*(a2 + 56) + 40 * v13, &v20);
      v18 = v20;
      v19 = v21;
      v15 = v22;

      if (!v14)
      {
        break;
      }

      v7 &= v7 - 1;
      v25[0] = v18;
      v25[1] = v19;
      v26 = v15;
      v16 = a1[3];
      v22 = a1[2];
      v23 = v16;
      v24 = *(a1 + 8);
      v17 = a1[1];
      v20 = *a1;
      v21 = v17;
      sub_21A0E626C();

      sub_21A0E680C();
      sub_219F7DAF0(v25);
      result = sub_21A0E6DFC();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x21CED2490](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219F7CB6C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v26 = v2;
  v27 = v6;
  while (v5)
  {
LABEL_13:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 16 * v11 + 8);
    v13 = *(a2 + 56) + 40 * v11;
    v15 = *v13;
    v14 = *(v13 + 8);
    v17 = *(v13 + 16);
    v16 = *(v13 + 24);
    v18 = *(v13 + 32);

    v32 = v16;
    v33 = v17;
    sub_219F7DCDC(v15, v14, v17, v16, v18);
    v2 = v26;
    v6 = v27;
    if (!v12)
    {
LABEL_25:

      return MEMORY[0x21CED2490](v8);
    }

    v19 = *(a1 + 48);
    v34[2] = *(a1 + 32);
    v34[3] = v19;
    v35 = *(a1 + 64);
    v20 = *(a1 + 16);
    v34[0] = *a1;
    v34[1] = v20;
    sub_21A0E626C();

    v30 = v14;
    v31 = v8;
    if (v18)
    {
      if (v18 == 1)
      {
        MEMORY[0x21CED2490](1);
        MEMORY[0x21CED2490](*(v15 + 16));
        v21 = *(v15 + 16);
        if (v21)
        {
          v22 = v15 + 40;
          do
          {

            sub_21A0E626C();

            v22 += 16;
            --v21;
          }

          while (v21);
        }
      }

      else
      {
        MEMORY[0x21CED2490](2);
        MEMORY[0x21CED2490](*(v15 + 16));
        v23 = *(v15 + 16);
        if (v23)
        {
          v24 = (v15 + 32);
          do
          {
            v25 = *v24++;
            MEMORY[0x21CED2490](v25);
            --v23;
          }

          while (v23);
        }
      }
    }

    else
    {
      MEMORY[0x21CED2490](0);
      sub_21A0E6DCC();
      if (v14)
      {
        sub_21A0E626C();
      }

      sub_219F91544(v34, v33);
      sub_219F6FF34(v34, v32);
    }

    v5 &= v5 - 1;
    sub_219F7DD3C(v15, v30, v33, v32, v18);
    result = sub_21A0E6DFC();
    v8 = result ^ v31;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_25;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_219F7CDE0(__int128 *a1, uint64_t a2)
{
  v53 = a1;
  v51 = type metadata accessor for ActivityAccessToken();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v3);
  v54 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21A0E481C();
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v6);
  v56 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E8);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v52 = &v43 - v14;
  v15 = *(a2 + 64);
  v44 = a2 + 64;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v43 = (v16 + 63) >> 6;
  v45 = v5 + 16;
  v57 = (v5 + 32);
  v47 = v5;
  v49 = a2;
  v50 = (v5 + 8);

  v20 = 0;
  v46 = v12;
  v58 = 0;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v26 = v49;
      v27 = v47;
      v28 = v55;
      v29 = v56;
      (*(v47 + 16))(v56, *(v49 + 48) + *(v47 + 72) * v25, v55);
      v30 = v54;
      sub_219F7DDF8(*(v26 + 56) + *(v48 + 72) * v25, v54, type metadata accessor for ActivityAccessToken);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
      v32 = *(v31 + 48);
      v33 = *(v27 + 32);
      v12 = v46;
      v33(v46, v29, v28);
      sub_219F7DE60(v30, &v12[v32], type metadata accessor for ActivityAccessToken);
      (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
      v23 = v21;
LABEL_13:
      v34 = v52;
      sub_219F7DEC8(v12, v52);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        break;
      }

      v36 = *(v35 + 48);
      v37 = v56;
      v38 = v55;
      (*v57)(v56, v34, v55);
      v39 = v54;
      sub_219F7DE60(v34 + v36, v54, type metadata accessor for ActivityAccessToken);
      v40 = v53[3];
      v61 = v53[2];
      v62 = v40;
      v63 = *(v53 + 8);
      v41 = v53[1];
      v59 = *v53;
      v60 = v41;
      sub_219F7DF38(&qword_27CCD99F8, MEMORY[0x277CC9260]);
      sub_21A0E615C();
      (*v50)(v37, v38);
      sub_21A0E615C();
      sub_21A0E626C();
      sub_21A0E495C();
      sub_219F7DF38(&qword_27CCD9828, MEMORY[0x277CC9578]);
      sub_21A0E615C();
      sub_219F7DF80(v39);
      result = sub_21A0E6DFC();
      v20 = v23;
      v58 ^= result;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x21CED2490](v58);
  }

  else
  {
LABEL_5:
    if (v43 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v43;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v43)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99F0);
        (*(*(v42 - 8) + 56))(v12, 1, 1, v42);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v44 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_219F7D3D0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v10 = 0;
  v37 = 0;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_12:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = v14 | (v11 << 6);
      v16 = (*(a2 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = (*(a2 + 56) + 224 * v15);
      v20 = v19[1];
      v40 = *v19;
      v41 = v20;
      v21 = v19[5];
      v23 = v19[2];
      v22 = v19[3];
      v44 = v19[4];
      v45 = v21;
      v42 = v23;
      v43 = v22;
      v24 = v19[9];
      v26 = v19[6];
      v25 = v19[7];
      v48 = v19[8];
      v49 = v24;
      v46 = v26;
      v47 = v25;
      v28 = v19[11];
      v27 = v19[12];
      v29 = v19[10];
      *(v52 + 9) = *(v19 + 201);
      v51 = v28;
      v52[0] = v27;
      v50 = v29;
      v63 = v19[10];
      v64 = v19[11];
      v65[0] = v19[12];
      *(v65 + 9) = *(v19 + 201);
      v59 = v19[6];
      v60 = v19[7];
      v61 = v19[8];
      v62 = v19[9];
      v55 = v19[2];
      v56 = v19[3];
      v57 = v19[4];
      v58 = v19[5];
      v53 = *v19;
      v54 = v19[1];
      *&v66 = v17;
      *(&v66 + 1) = v18;
      v67 = v53;
      v68 = v54;
      v71 = v57;
      v72 = v58;
      v69 = v55;
      v70 = v56;
      v75 = v61;
      v76 = v62;
      v73 = v59;
      v74 = v60;
      *(v79 + 9) = *(v65 + 9);
      v78 = v64;
      v79[0] = v65[0];
      v77 = v63;
      nullsub_1(&v66, v9);

      sub_219F7DC04(&v40, v38);
      v30 = *(&v66 + 1);
      v31 = v66;
      v90 = v77;
      v91 = v78;
      v92[0] = v79[0];
      *(v92 + 9) = *(v79 + 9);
      v87 = v74;
      v88 = v75;
      v89 = v76;
      v82 = v69;
      v83 = v70;
      v84 = v71;
      v85 = v72;
      v86 = v73;
      v32 = v67;
      v33 = v68;
      v13 = v11;
LABEL_13:
      v80 = v32;
      v81 = v33;
      v77 = v90;
      v78 = v91;
      v79[0] = v92[0];
      *(v79 + 9) = *(v92 + 9);
      v73 = v86;
      v74 = v87;
      v75 = v88;
      v76 = v89;
      v69 = v82;
      v70 = v83;
      v71 = v84;
      v72 = v85;
      v67 = v32;
      v68 = v33;
      *&v66 = v31;
      *(&v66 + 1) = v30;
      if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA17ActivityTextThemeV6TraitsVGSg_0(&v66) == 1)
      {
        break;
      }

      v50 = v90;
      v51 = v91;
      v52[0] = v92[0];
      *(v52 + 9) = *(v92 + 9);
      v46 = v86;
      v47 = v87;
      v48 = v88;
      v49 = v89;
      v42 = v82;
      v43 = v83;
      v44 = v84;
      v45 = v85;
      v40 = v80;
      v41 = v81;
      v34 = *(a1 + 48);
      v38[2] = *(a1 + 32);
      v38[3] = v34;
      v39 = *(a1 + 64);
      v35 = *(a1 + 16);
      v38[0] = *a1;
      v38[1] = v35;
      sub_21A0E626C();

      ActivityTextProperty.hash(into:)(v38);
      v63 = v50;
      v64 = v51;
      v65[0] = v52[0];
      *(v65 + 9) = *(v52 + 9);
      v59 = v46;
      v60 = v47;
      v61 = v48;
      v62 = v49;
      v55 = v42;
      v56 = v43;
      v57 = v44;
      v58 = v45;
      v53 = v40;
      v54 = v41;
      sub_219F7DC60(&v53);
      result = sub_21A0E6DFC();
      v10 = v13;
      v37 ^= result;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x21CED2490](v37);
  }

  else
  {
LABEL_5:
    if (v7 <= v10 + 1)
    {
      v12 = v10 + 1;
    }

    else
    {
      v12 = v7;
    }

    v13 = v12 - 1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        sub_219F7DCB4(&v66);
        v6 = 0;
        v30 = *(&v66 + 1);
        v31 = v66;
        v90 = v77;
        v91 = v78;
        v92[0] = v79[0];
        *(v92 + 9) = *(v79 + 9);
        v87 = v74;
        v88 = v75;
        v89 = v76;
        v82 = v69;
        v83 = v70;
        v84 = v71;
        v85 = v72;
        v86 = v73;
        v32 = v67;
        v33 = v68;
        goto LABEL_13;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s22NewsLiveActivitiesCore32DynamicValueConditionEnvironmentV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[17];
  v3 = a1[18];
  v4 = *(a1 + 4);
  v17 = *(a1 + 3);
  v5 = a2[17];
  v6 = a2[18];
  v8 = *(a2 + 3);
  v7 = *(a2 + 4);
  v9 = a1[16] == 0;
  if (a1[16])
  {
    v10 = 1802658148;
  }

  else
  {
    v10 = 0x746867696CLL;
  }

  if (v9)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (a2[16])
  {
    v12 = 1802658148;
  }

  else
  {
    v12 = 0x746867696CLL;
  }

  if (a2[16])
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  if (v10 == v12 && v11 == v13)
  {
  }

  else
  {
    v14 = sub_21A0E6C5C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  switch(v2)
  {
    case 6:
      if (v5 != 6)
      {
        return 0;
      }

      break;
    case 5:
      if (v5 != 5)
      {
        return 0;
      }

      break;
    case 4:
      if (v5 != 4)
      {
        return 0;
      }

      break;
    default:
      if ((v5 - 4) < 3 || (sub_21A0AA1DC(v2, v5) & 1) == 0)
      {
        return 0;
      }

      break;
  }

  if (v3 == v6 && v17 == v8)
  {

    v15 = sub_21A079438(v4, v7);

    return v15 & 1;
  }

  return 0;
}

unint64_t sub_219F7D9E8()
{
  result = qword_27CCD99D8;
  if (!qword_27CCD99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCD99D8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_219F7DA50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_219F7DA98(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_219F7DBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsLiveActivity(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_219F7DCB4(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 217) = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_219F7DCDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 2)
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_219F7DD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 2)
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t sub_219F7DDF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F7DE60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219F7DEC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD99E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219F7DF38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_219F7DF80(uint64_t a1)
{
  v2 = type metadata accessor for ActivityAccessToken();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ActivityHeaderWatchView()
{
  result = qword_27CCD9B08;
  if (!qword_27CCD9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219F7E050()
{
  sub_219F7E170(319, &qword_27CCD9B18, &type metadata for DynamicValueConditionEnvironment, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActivityHeaderViewModel();
    if (v1 <= 0x3F)
    {
      sub_219F7E170(319, &qword_27CCD9B20, &type metadata for ActivityHeaderTheme, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_219F7E170(319, &qword_280C88968, &type metadata for ActivitySymbolTheme, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_219F7E170(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_219F7E1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = sub_21A0E554C();
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v77 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = type metadata accessor for ActivitySymbolView();
  MEMORY[0x28223BE20](v82, v6);
  v8 = &v75[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B30);
  v10 = MEMORY[0x28223BE20](v83, v9);
  v86 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v75[-v14];
  MEMORY[0x28223BE20](v13, v16);
  v87 = &v75[-v17];
  if (qword_27CCD9208 != -1)
  {
    swift_once();
  }

  v18 = xmmword_27CCDD760;
  v19 = byte_27CCDD770;
  LODWORD(v81) = byte_27CCDD771;
  LODWORD(v80) = byte_27CCDD772;
  v84 = type metadata accessor for ActivityHeaderWatchView();
  v20 = (a1 + *(v84 + 28));
  v21 = v20[6];
  v181 = v20[7];
  v22 = v20[7];
  v182 = v20[8];
  v23 = v20[8];
  v183 = v20[9];
  v24 = v20[9];
  v184 = v20[10];
  v25 = v20[2];
  v177 = v20[3];
  v26 = v20[3];
  v178 = v20[4];
  v27 = v20[4];
  v179 = v20[5];
  v28 = v20[5];
  v180 = v20[6];
  v29 = *v20;
  v175 = v20[1];
  v30 = v20[1];
  v176 = v20[2];
  v174 = *v20;
  v185[7] = v22;
  v185[8] = v23;
  v185[9] = v24;
  v185[10] = v20[10];
  v185[3] = v26;
  v185[4] = v27;
  v185[5] = v28;
  v185[6] = v21;
  v185[0] = v29;
  v185[1] = v30;
  v185[2] = v25;
  if (sub_219F5EBE4(v185) == 1)
  {
    sub_219F79C1C();
    if (qword_27CCD9200 != -1)
    {
      swift_once();
    }

    v155[8] = xmmword_27CCDCFF8;
    v155[9] = xmmword_27CCDD008;
    v155[10] = xmmword_27CCDD018;
    v155[4] = xmmword_27CCDCFB8;
    v155[5] = xmmword_27CCDCFC8;
    v155[6] = xmmword_27CCDCFD8;
    v155[7] = xmmword_27CCDCFE8;
    v155[0] = xmmword_27CCDCF78;
    v155[1] = unk_27CCDCF88;
    v155[2] = xmmword_27CCDCF98;
    v155[3] = xmmword_27CCDCFA8;
    sub_219F7F6D0(v155, &v122);
    v167 = *&v155[5];
    v164 = v155[2];
    v165 = v155[3];
    v166 = v155[4];
    v162 = v155[0];
    v163 = v155[1];
    v168 = *(&v155[5] + 8);
    v169 = *(&v155[6] + 8);
    v173 = *(&v155[10] + 1);
    v171 = *(&v155[8] + 8);
    v172 = *(&v155[9] + 8);
    v170 = *(&v155[7] + 8);
  }

  else
  {
    v155[8] = v182;
    v155[9] = v183;
    v155[10] = v184;
    v155[4] = v178;
    v155[5] = v179;
    v155[6] = v180;
    v155[7] = v181;
    v155[0] = v174;
    v155[1] = v175;
    v155[2] = v176;
    v155[3] = v177;
    sub_219F79C1C();
    v167 = *&v155[5];
    v164 = v155[2];
    v165 = v155[3];
    v166 = v155[4];
    v162 = v155[0];
    v163 = v155[1];
    v170 = *(&v155[7] + 8);
    v171 = *(&v155[8] + 8);
    v172 = *(&v155[9] + 8);
    v173 = *(&v155[10] + 1);
    v168 = *(&v155[5] + 8);
    v169 = *(&v155[6] + 8);
  }

  v137 = v164;
  v138 = v165;
  v139 = v166;
  v135 = v162;
  v136 = v163;
  *(v140 + 8) = v168;
  *(&v140[1] + 8) = v169;
  *&v140[0] = v167;
  *(&v140[5] + 1) = v173;
  *(&v140[4] + 8) = v172;
  *(&v140[3] + 8) = v171;
  *(&v140[2] + 8) = v170;
  v141 = v162;
  v142 = v163;
  v145 = v166;
  v146 = v140[0];
  v143 = v164;
  v144 = v165;
  v150 = v140[4];
  v151 = v140[5];
  v148 = v140[2];
  v149 = v140[3];
  v147 = v140[1];
  nullsub_1(&v141, v31);
  v32 = v147;
  *(v8 + 136) = v148;
  v33 = v150;
  *(v8 + 152) = v149;
  *(v8 + 168) = v33;
  *(v8 + 184) = v151;
  v34 = v143;
  *(v8 + 72) = v144;
  v35 = v146;
  *(v8 + 88) = v145;
  *(v8 + 104) = v35;
  *(v8 + 120) = v32;
  v36 = v142;
  *(v8 + 24) = v141;
  *(v8 + 40) = v36;
  *v8 = v18;
  v8[16] = v19;
  v8[17] = v81;
  v8[18] = v80;
  *(v8 + 56) = v34;
  v37 = *(v82 + 24);
  *&v8[v37] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B38);
  swift_storeEnumTagMultiPayload();
  v38 = &v15[*(v83 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD95C0) + 28);
  v40 = *MEMORY[0x277CE1050];
  v41 = sub_21A0E5CEC();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  sub_219F7F72C(v8, v15);
  sub_219F7F790(v15, v87);
  sub_219F45500(&v174, v155, &qword_27CCD9B40);
  sub_21A0E5E3C();
  sub_21A0E52AC();
  v82 = v158;
  v83 = v156;
  v80 = v161;
  v81 = v160;
  v154 = 1;
  v153 = v157;
  v152 = v159;
  memcpy(v155, (a1 + *(v84 + 24)), sizeof(v155));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v155) == 1)
  {
    sub_219F639B0(&v122);
  }

  else
  {
    sub_219F45500(&v155[25], &v122, &qword_27CCD95B8);
    v132 = v155[35];
    v133 = v155[36];
    v134 = *&v155[37];
    v128 = v155[31];
    v129 = v155[32];
    v130 = v155[33];
    v131 = v155[34];
    v124 = v155[27];
    v125 = v155[28];
    v126 = v155[29];
    v127 = v155[30];
    v122 = v155[25];
    v123 = v155[26];
  }

  v117 = v132;
  v118 = v133;
  v119 = v134;
  v113 = v128;
  v114 = v129;
  v115 = v130;
  v116 = v131;
  v109 = v124;
  v110 = v125;
  v111 = v126;
  v112 = v127;
  v107 = v122;
  v108 = v123;
  if (qword_27CCD9120 != -1)
  {
    swift_once();
  }

  v120[2] = xmmword_27CCD9AD0;
  v120[3] = unk_27CCD9AE0;
  v120[4] = xmmword_27CCD9AF0;
  v121 = dword_27CCD9B00;
  v120[0] = xmmword_27CCD9AB0;
  v120[1] = unk_27CCD9AC0;
  v103 = xmmword_27CCD9AD0;
  v104 = unk_27CCD9AE0;
  v105 = xmmword_27CCD9AF0;
  v106 = dword_27CCD9B00;
  v101 = xmmword_27CCD9AB0;
  v102 = unk_27CCD9AC0;
  v100 = 9;
  v43 = *a1;
  v42 = *(a1 + 8);
  v45 = *(a1 + 16);
  v44 = *(a1 + 24);
  v46 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *&v97 = *a1;
    *(&v97 + 1) = v42;
    *&v98 = v45;
    *(&v98 + 1) = v44;
    v99 = v46;
    sub_219F639D4(v120, v95);
    sub_219F7F800(v43, v42, v45, v44, v46, 1);
  }

  else
  {
    sub_219F639D4(v120, v95);
    sub_219F7F800(v43, v42, v45, v44, v46, 0);
    sub_21A0E66AC();
    v47 = sub_21A0E575C();
    sub_21A0E512C();

    v48 = v77;
    sub_21A0E553C();
    swift_getAtKeyPath();
    sub_219F63A50(v43, v42, v45, v44, v46, 0);
    (*(v78 + 8))(v48, v79);
  }

  v88 = v97;
  v89 = v98;
  v90 = v99;
  v49 = Text.activityTextModifier(_:fallback:font:environment:)(&v107, &v101, &v100, &v88, 2124832, 0xE300000000000000, 0);
  v78 = v50;
  v79 = v49;
  v52 = v51;
  v84 = v53;
  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  sub_219F5ED9C(v91);
  v93[2] = v103;
  v93[3] = v104;
  v93[4] = v105;
  v94 = v106;
  v93[0] = v101;
  v93[1] = v102;
  sub_219F6409C(v93, &qword_27CCD95B0);
  v95[10] = v117;
  v95[11] = v118;
  v96 = v119;
  v95[6] = v113;
  v95[7] = v114;
  v95[8] = v115;
  v95[9] = v116;
  v95[2] = v109;
  v95[3] = v110;
  v95[4] = v111;
  v95[5] = v112;
  v95[0] = v107;
  v95[1] = v108;
  sub_219F6409C(v95, &qword_27CCD95B8);
  v54 = sub_219F7ECBC();
  v56 = v55;
  v76 = v57;
  v77 = v58;
  v59 = v86;
  sub_219F45500(v87, v86, &qword_27CCD9B30);
  v60 = v154;
  v61 = v153;
  v62 = v152;
  v52 &= 1u;
  LOBYTE(v88) = v52;
  v63 = v59;
  v64 = v85;
  sub_219F45500(v63, v85, &qword_27CCD9B30);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9B48);
  v66 = v64 + v65[12];
  *v66 = 0;
  *(v66 + 8) = v60;
  v67 = v82;
  *(v66 + 16) = v83;
  *(v66 + 24) = v61;
  *(v66 + 32) = v67;
  *(v66 + 40) = v62;
  v68 = v80;
  *(v66 + 48) = v81;
  *(v66 + 56) = v68;
  v69 = v64 + v65[16];
  v71 = v78;
  v70 = v79;
  *v69 = v79;
  *(v69 + 8) = v71;
  *(v69 + 16) = v52;
  *(v69 + 24) = v84;
  v72 = v64 + v65[20];
  *v72 = v54;
  *(v72 + 8) = v56;
  v73 = v76 & 1;
  *(v72 + 16) = v76 & 1;
  *(v72 + 24) = v77;
  sub_219F63A40(v70, v71, v52);

  sub_219F63A40(v54, v56, v73);

  sub_219F6409C(v87, &qword_27CCD9B30);
  sub_219F63A30(v54, v56, v73);

  sub_219F63A30(v70, v71, v88);

  return sub_219F6409C(v86, &qword_27CCD9B30);
}

uint64_t sub_219F7ECBC()
{
  v1 = v0;
  v2 = sub_21A0E554C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityHeaderWatchView();
  v8 = (v0 + *(v7 + 20));
  v9 = v8[7];
  if (!v9)
  {
    return 0;
  }

  v10 = v7;
  result = v8[9];
  if (result)
  {
    v52 = v6;
    v12 = v8[6];
    v54 = v8[8];
    v55 = result;
    v122[0] = v12;
    v122[1] = v9;

    MEMORY[0x21CED1980](32, 0xE100000000000000);
    v51 = v122[0];
    v13 = *(v10 + 24);
    v46 = v122[1];
    v47 = v13;
    memcpy(v122, (v1 + v13), 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v122) == 1)
    {
      sub_219F639B0(&v109);
    }

    else
    {
      sub_219F45500(&v122[25], v96, &qword_27CCD95B8);
      v118 = *&v122[43];
      v119 = *&v122[45];
      v120 = *&v122[47];
      v114 = *&v122[35];
      v115 = *&v122[37];
      v116 = *&v122[39];
      v117 = *&v122[41];
      v110 = *&v122[27];
      v111 = *&v122[29];
      v112 = *&v122[31];
      v121 = v122[49];
      v113 = *&v122[33];
      v109 = *&v122[25];
    }

    if (qword_27CCD9110 != -1)
    {
      swift_once();
    }

    v107[2] = xmmword_27CCD9A20;
    v107[3] = unk_27CCD9A30;
    v107[4] = xmmword_27CCD9A40;
    v108 = dword_27CCD9A50;
    v107[0] = xmmword_27CCD9A00;
    v107[1] = *algn_27CCD9A10;
    v103 = xmmword_27CCD9A20;
    v104 = unk_27CCD9A30;
    v105 = xmmword_27CCD9A40;
    v106 = dword_27CCD9A50;
    v101 = xmmword_27CCD9A00;
    v102 = *algn_27CCD9A10;
    v100 = 9;
    v15 = *v1;
    v14 = *(v1 + 8);
    v17 = *(v1 + 16);
    v16 = *(v1 + 24);
    v18 = *(v1 + 32);
    v19 = *(v1 + 40);
    v53 = v3;
    if (v19 == 1)
    {
      *&v97 = v15;
      *(&v97 + 1) = v14;
      *&v98 = v17;
      *(&v98 + 1) = v16;
      v99 = v18;
      sub_219F639D4(v107, v96);
      sub_219F7F800(v15, v14, v17, v16, v18, 1);
    }

    else
    {
      sub_219F639D4(v107, v96);
      sub_219F7F800(v15, v14, v17, v16, v18, 0);
      sub_21A0E66AC();
      v50 = v2;
      v20 = sub_21A0E575C();
      v2 = v50;
      sub_21A0E512C();

      v21 = v52;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v15, v14, v17, v16, v18, 0);
      (*(v53 + 8))(v21, v2);
    }

    v96[0] = v97;
    v96[1] = v98;
    *&v96[2] = v99;
    v22 = Text.activityTextModifier(_:fallback:font:environment:)(&v109, &v101, &v100, v96, v51, v46, 0);
    v49 = v23;
    v50 = v22;
    v48 = v24;
    v51 = v25;

    v90[0] = v96[0];
    v90[1] = v96[1];
    v91 = *&v96[2];
    sub_219F5ED9C(v90);
    v92[2] = v103;
    v92[3] = v104;
    v92[4] = v105;
    v93 = v106;
    v92[0] = v101;
    v92[1] = v102;
    sub_219F6409C(v92, &qword_27CCD95B0);
    v94[9] = v118;
    v94[10] = v119;
    v94[11] = v120;
    v95 = v121;
    v94[6] = v115;
    v94[7] = v116;
    v94[8] = v117;
    v94[2] = v111;
    v94[3] = v112;
    v94[4] = v113;
    v94[5] = v114;
    v94[0] = v109;
    v94[1] = v110;
    sub_219F6409C(v94, &qword_27CCD95B8);
    memcpy(v96, (v1 + v47), sizeof(v96));
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v96) == 1)
    {
      sub_219F639B0(&v77);
    }

    else
    {
      sub_219F45500(&v96[25], v63, &qword_27CCD95B8);
      v87 = v96[35];
      v88 = v96[36];
      v89 = *&v96[37];
      v83 = v96[31];
      v84 = v96[32];
      v85 = v96[33];
      v86 = v96[34];
      v79 = v96[27];
      v80 = v96[28];
      v81 = v96[29];
      v82 = v96[30];
      v77 = v96[25];
      v78 = v96[26];
    }

    if (qword_27CCD9118 != -1)
    {
      swift_once();
    }

    v75[2] = xmmword_27CCD9A78;
    v75[3] = unk_27CCD9A88;
    v75[4] = xmmword_27CCD9A98;
    v76 = dword_27CCD9AA8;
    v75[0] = xmmword_27CCD9A58;
    v75[1] = unk_27CCD9A68;
    v71 = xmmword_27CCD9A78;
    v72 = unk_27CCD9A88;
    v73 = xmmword_27CCD9A98;
    v74 = dword_27CCD9AA8;
    v69 = xmmword_27CCD9A58;
    v70 = unk_27CCD9A68;
    v68 = 9;
    v26 = *v1;
    v27 = *(v1 + 8);
    v29 = *(v1 + 16);
    v28 = *(v1 + 24);
    v30 = *(v1 + 32);
    if (*(v1 + 40) == 1)
    {
      *&v65 = *v1;
      *(&v65 + 1) = v27;
      *&v66 = v29;
      *(&v66 + 1) = v28;
      v67 = v30;
      sub_219F639D4(v75, v63);
      sub_219F7F800(v26, v27, v29, v28, v30, 1);
    }

    else
    {
      sub_219F639D4(v75, v63);
      sub_219F7F800(v26, v27, v29, v28, v30, 0);
      sub_21A0E66AC();
      v31 = v2;
      v32 = sub_21A0E575C();
      sub_21A0E512C();

      v33 = v52;
      sub_21A0E553C();
      swift_getAtKeyPath();
      sub_219F63A50(v26, v27, v29, v28, v30, 0);
      (*(v53 + 8))(v33, v31);
    }

    v56 = v65;
    v57 = v66;
    v58 = v67;
    v34 = Text.activityTextModifier(_:fallback:font:environment:)(&v77, &v69, &v68, &v56, v54, v55, 0);
    v36 = v35;
    v38 = v37;

    v59[0] = v56;
    v59[1] = v57;
    v60 = v58;
    sub_219F5ED9C(v59);
    v61[3] = v72;
    v61[4] = v73;
    v62 = v74;
    v61[0] = v69;
    v61[1] = v70;
    v61[2] = v71;
    sub_219F6409C(v61, &qword_27CCD95B0);
    v63[10] = v87;
    v63[11] = v88;
    v64 = v89;
    v63[6] = v83;
    v63[7] = v84;
    v63[8] = v85;
    v63[9] = v86;
    v63[2] = v79;
    v63[3] = v80;
    v63[4] = v81;
    v63[5] = v82;
    v63[0] = v77;
    v63[1] = v78;
    sub_219F6409C(v63, &qword_27CCD95B8);
    v39 = v48;
    v41 = v49;
    v40 = v50;
    v42 = sub_21A0E598C();
    v54 = v43;
    v55 = v42;
    v53 = v44;
    sub_219F63A30(v34, v36, v38 & 1);

    sub_219F63A30(v40, v41, v39 & 1);

    return v55;
  }

  return result;
}