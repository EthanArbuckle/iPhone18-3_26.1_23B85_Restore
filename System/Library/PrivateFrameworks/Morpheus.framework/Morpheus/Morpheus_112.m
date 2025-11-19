void sub_25A8C57B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C57BCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C58A0(char a1, unsigned __int8 a2)
{
  v148 = *MEMORY[0x277D85DE8];
  if (a2 == 5)
  {
    LOBYTE(v145[0]) = a1;
    v3 = mlx_array_new_data(v145, (MEMORY[0x277D84F90] + 32), 0, 5);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_148:
    v133 = *MEMORY[0x277D85DE8];
    return result;
  }

  LOBYTE(v142) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84900];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v144 = 0;
    memset(v143, 0, sizeof(v143));
    sub_25A878194(v143, &qword_27FA04950, &qword_25A9F9598);
    v146 = v6;
    v12 = sub_25A8DF9FC();
    v147 = v12;
    LOBYTE(v145[0]) = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v145, v6);
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    v18 = a2;
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_16;
            }

            v19 = *(*(v12 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v141 = &v141;
            v21 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            v22 = sub_25A998A78();
            MEMORY[0x28223BE20](v22);
            sub_25A9989C8();
            v23 = *(*(v12 + 32) + 8);
            v24 = sub_25A997D98();
            (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if (v24)
            {
LABEL_16:
              if (sub_25A9984D8())
              {
                v25 = *(*(v12 + 24) + 16);
                v26 = swift_getAssociatedTypeWitness();
                v141 = &v141;
                v27 = (*(*(v26 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                MEMORY[0x28223BE20](v26);
                swift_getAssociatedConformanceWitness();
                v28 = sub_25A998A78();
                MEMORY[0x28223BE20](v28);
                sub_25A9989C8();
                v29 = *(*(v12 + 32) + 8);
                v30 = sub_25A997D78();
                v31 = *(v14 + 8);
                v31(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
                if (v30)
                {
                  sub_25A9984B8();
                }
              }

              else
              {
                v31 = *(v14 + 8);
              }

              v91 = *v16;
              v31(v16, MEMORY[0x277D84900]);
              LOBYTE(v143[0]) = v91;
              v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_146;
            }

            __break(1u);
            goto LABEL_151;
          }

          if (v17)
          {
            v69 = *(*(v12 + 24) + 16);
            v70 = swift_getAssociatedTypeWitness();
            v141 = &v141;
            v71 = (*(*(v70 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v70);
            swift_getAssociatedConformanceWitness();
            v72 = sub_25A998A78();
            MEMORY[0x28223BE20](v72);
            sub_25A9989C8();
            v73 = *(*(v12 + 32) + 8);
            v74 = sub_25A997D98();
            v76 = *(v14 + 8);
            v14 += 8;
            v75 = v76;
            v17 = (v76)(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if ((v74 & 1) == 0)
            {
              __break(1u);
              goto LABEL_79;
            }
          }

          else
          {
            v75 = *(v14 + 8);
          }

          v90 = *v16;
          v75(v16, MEMORY[0x277D84900]);
          LOWORD(v143[0]) = v90;
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 2);
          goto LABEL_146;
        }

        if ((v17 & 1) == 0 || sub_25A9984C8() < 65)
        {
LABEL_136:
          v110 = *v16;
          (*(v14 + 8))(v16, MEMORY[0x277D84900]);
          mlx_array_new_BOOL();
        }

        *&v143[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v58 = sub_25A9984C8();
          if (v58 < 64)
          {
            goto LABEL_135;
          }
        }

        else
        {
          v92 = sub_25A9984D8();
          v58 = sub_25A9984C8();
          if ((v92 & 1) == 0)
          {
            if (v58 >= 64)
            {
              goto LABEL_136;
            }

            goto LABEL_135;
          }

          if (v58 <= 64)
          {
            v104 = *(*(v12 + 24) + 16);
            v105 = swift_getAssociatedTypeWitness();
            v141 = &v141;
            v106 = (*(*(v105 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v105);
            swift_getAssociatedConformanceWitness();
            v107 = sub_25A998A78();
            MEMORY[0x28223BE20](v107);
            sub_25A9989C8();
            v108 = *(*(v12 + 32) + 8);
            v109 = sub_25A997D88();
            (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if ((v109 & 1) == 0)
            {
LABEL_135:
              sub_25A9984B8();
              goto LABEL_136;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }
        }

        MEMORY[0x28223BE20](v58);
        sub_25A895280();
        sub_25A9984A8();
        v96 = *(*(v12 + 32) + 8);
        v97 = sub_25A997D88();
        (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
        if ((v97 & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_151;
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v60 = *(*(v12 + 24) + 16);
          v61 = swift_getAssociatedTypeWitness();
          v141 = &v141;
          v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v61);
          swift_getAssociatedConformanceWitness();
          v63 = sub_25A998A78();
          MEMORY[0x28223BE20](v63);
          sub_25A9989C8();
          v64 = *(*(v12 + 32) + 8);
          v65 = sub_25A997D98();
          v67 = *(v14 + 8);
          v14 += 8;
          v66 = v67;
          v17 = (v67)(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if ((v65 & 1) == 0)
          {
            __break(1u);
            goto LABEL_74;
          }
        }

        else
        {
          v66 = *(v14 + 8);
        }

        v80 = *v16;
        v66(v16, MEMORY[0x277D84900]);
        LODWORD(v143[0]) = v80;
        v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        if (v17)
        {
          v37 = *(*(v12 + 24) + 16);
          v38 = swift_getAssociatedTypeWitness();
          v141 = &v141;
          v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v38);
          swift_getAssociatedConformanceWitness();
          v40 = sub_25A998A78();
          MEMORY[0x28223BE20](v40);
          sub_25A9989C8();
          v41 = *(*(v12 + 32) + 8);
          v42 = sub_25A997D98();
          v44 = *(v14 + 8);
          v14 += 8;
          v43 = v44;
          v17 = (v44)(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          v18 = v141;
          if ((v42 & 1) == 0)
          {
            __break(1u);
LABEL_45:
            if (v18 != 10)
            {
              if (v18 == 11)
              {
                if (v17)
                {
                  v36 = sub_25A9984B8();
                }

                else
                {
                  v36 = *v16;
                }

                (*(v14 + 8))(v16, MEMORY[0x277D84900]);
                if (qword_27FA043D8 == -1)
                {
                  goto LABEL_96;
                }

LABEL_149:
                swift_once();
LABEL_96:
                v84 = sub_25A998C58();
                v85 = *&v143[0];
                v86.n128_f32[0] = v36;
                v87 = mlx_array_new_float(v84, v86);
                *&v143[0] = mlx_array_new();
                mlx_astype(v143, v87, 12, *(v85 + 16));
                v88 = *&v143[0];
                type metadata accessor for MLXArray();
                v89 = swift_allocObject();
                *(v89 + 16) = v88;
                mlx_array_free(v87);

LABEL_147:
                __swift_destroy_boxed_opaque_existential_0Tm(v145);
                result = v89;
                goto LABEL_148;
              }

              if (v17)
              {
                v79 = sub_25A9984B8();
              }

              else
              {
                v79 = *v16;
              }

              (*(v14 + 8))(v16, MEMORY[0x277D84900]);
              v57 = sub_25A8BA558(v79);
LABEL_103:
              v89 = v57;
              goto LABEL_147;
            }

LABEL_74:
            if (v17)
            {
              v68 = sub_25A9984B8();
            }

            else
            {
              v68 = *v16;
            }

            v81 = (*(v14 + 8))(v16, MEMORY[0x277D84900]);
            v82.n128_f32[0] = v68;
            v11 = mlx_array_new_float(v81, v82);
            goto LABEL_146;
          }
        }

        else
        {
          v43 = *(v14 + 8);
        }

        v83 = *v16;
        v43(v16, MEMORY[0x277D84900]);
        *&v143[0] = v83;
        v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 17)
      {
        LOWORD(v143[0]) = 0x8000;
        if (sub_25A9984D8())
        {
          v78 = sub_25A9984C8();
          if (v78 < 16)
          {
LABEL_144:
            sub_25A9984B8();
            goto LABEL_145;
          }

          goto LABEL_124;
        }

        v95 = sub_25A9984D8();
        v78 = sub_25A9984C8();
        if (v95)
        {
          if (v78 <= 16)
          {
            v125 = *(*(v12 + 24) + 16);
            v126 = swift_getAssociatedTypeWitness();
            v141 = &v141;
            v127 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v126);
            swift_getAssociatedConformanceWitness();
            v128 = sub_25A998A78();
            MEMORY[0x28223BE20](v128);
            sub_25A9989C8();
            v129 = *(*(v12 + 32) + 8);
            v130 = sub_25A997D88();
            (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if (v130)
            {
              goto LABEL_154;
            }

            goto LABEL_144;
          }

LABEL_124:
          MEMORY[0x28223BE20](v78);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v102 = *(*(v12 + 32) + 8);
          v103 = sub_25A997D88();
          (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v103)
          {
LABEL_154:
            __break(1u);
          }

          goto LABEL_145;
        }

        if (v78 < 16)
        {
          goto LABEL_144;
        }
      }

LABEL_145:
      v131 = *v16;
      (*(v14 + 8))(v16, MEMORY[0x277D84900]);
      LOWORD(v143[0]) = v131;
      v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_146;
    }

    if (a2 > 9u)
    {
      goto LABEL_45;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_79:
        if (v17)
        {
          v77 = sub_25A9984B8();
        }

        else
        {
          v77 = *v16;
        }

        (*(v14 + 8))(v16, MEMORY[0x277D84900]);
        *v143 = v77;
        v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v143[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v32 = sub_25A9984C8();
          if (v32 < 64)
          {
LABEL_141:
            sub_25A9984B8();
            goto LABEL_142;
          }

          goto LABEL_122;
        }

        v94 = sub_25A9984D8();
        v32 = sub_25A9984C8();
        if (v94)
        {
          if (v32 <= 64)
          {
            v118 = *(*(v12 + 24) + 16);
            v119 = swift_getAssociatedTypeWitness();
            v141 = &v141;
            v120 = (*(*(v119 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v119);
            swift_getAssociatedConformanceWitness();
            v121 = sub_25A998A78();
            MEMORY[0x28223BE20](v121);
            sub_25A9989C8();
            v122 = *(*(v12 + 32) + 8);
            v123 = sub_25A997D88();
            (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
            if (v123)
            {
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }

            goto LABEL_141;
          }

LABEL_122:
          MEMORY[0x28223BE20](v32);
          sub_25A8DF900();
          sub_25A9984A8();
          v100 = *(*(v12 + 32) + 8);
          v101 = sub_25A997D88();
          (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v101)
          {
            goto LABEL_153;
          }

          goto LABEL_142;
        }

        if (v32 < 64)
        {
          goto LABEL_141;
        }
      }

LABEL_142:
      v124 = *v16;
      (*(v14 + 8))(v16, MEMORY[0x277D84900]);
      *&v143[0] = v124;
      v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_146;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v143[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v59 = sub_25A9984C8();
        if (v59 < 32)
        {
LABEL_138:
          sub_25A9984B8();
          goto LABEL_139;
        }
      }

      else
      {
        v93 = sub_25A9984D8();
        v59 = sub_25A9984C8();
        if ((v93 & 1) == 0)
        {
          if (v59 >= 32)
          {
            goto LABEL_139;
          }

          goto LABEL_138;
        }

        if (v59 <= 32)
        {
          v111 = *(*(v12 + 24) + 16);
          v112 = swift_getAssociatedTypeWitness();
          v141 = &v141;
          v113 = (*(*(v112 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v112);
          swift_getAssociatedConformanceWitness();
          v114 = sub_25A998A78();
          MEMORY[0x28223BE20](v114);
          sub_25A9989C8();
          v115 = *(*(v12 + 32) + 8);
          v116 = sub_25A997D88();
          (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
          if (v116)
          {
LABEL_152:
            __break(1u);
            goto LABEL_153;
          }

          goto LABEL_138;
        }
      }

      MEMORY[0x28223BE20](v59);
      sub_25A8DF954();
      sub_25A9984A8();
      v98 = *(*(v12 + 32) + 8);
      v99 = sub_25A997D88();
      (*(v14 + 8))(&v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84900]);
      if (v99)
      {
        goto LABEL_152;
      }
    }

LABEL_139:
    v117 = *v16;
    (*(v14 + 8))(v16, MEMORY[0x277D84900]);
    mlx_array_new_int();
  }

  sub_25A87817C(v143, v145);
  v7 = v146;
  v8 = v147;
  v9 = __swift_project_boxed_opaque_existential_1(v145, v146);
  v10 = v9;
  if (a2 <= 6u)
  {
    if (a2 > 2u)
    {
      if (a2 == 3)
      {
        sub_25A8DFD98();
        sub_25A9987F8();
        if ((BYTE4(v143[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_146;
        }

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v135 = sub_25A998C68();
        MEMORY[0x25F850290](v135);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v143[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_146;
        }

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v138 = sub_25A998C68();
        MEMORY[0x25F850290](v138);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v143[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_146;
        }

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v140 = sub_25A998C68();
        MEMORY[0x25F850290](v140);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    else
    {
      if (!a2)
      {
        v45 = *(v8 + 16);
        sub_25A997D38();
        mlx_array_new_BOOL();
      }

      if (a2 == 1)
      {
        sub_25A8DFE40();
        sub_25A9987F8();
        if ((BYTE1(v143[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
          v132 = v11;
          type metadata accessor for MLXArray();
          v89 = swift_allocObject();
          *(v89 + 16) = v132;
          goto LABEL_147;
        }

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v136 = sub_25A998C68();
        MEMORY[0x25F850290](v136);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFDEC();
        sub_25A9987F8();
        if ((BYTE2(v143[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 2);
          goto LABEL_146;
        }

        *&v143[0] = 0;
        *(&v143[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v139 = sub_25A998C68();
        MEMORY[0x25F850290](v139);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }
    }

    goto LABEL_162;
  }

  if (a2 > 9u)
  {
    if (a2 == 10)
    {
      v46 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v48 + 16))(&v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v49 = sub_25A997C38();
      v50.n128_u32[0] = v143[0];
      v11 = mlx_array_new_float(v49, v50);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      v33 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v35 + 16))(&v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v36 = v142;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_149;
    }

    v54 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v56 + 16))(&v141 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v57 = sub_25A8BA558(*v143);
    goto LABEL_103;
  }

  if (a2 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v143[0]) & 1) == 0)
    {
      mlx_array_new_int();
    }

    *&v143[0] = 0;
    *(&v143[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v134 = sub_25A998C68();
    MEMORY[0x25F850290](v134);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

  else
  {
    if (a2 != 8)
    {
      v51 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v53 + 16))(&v141 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v142) = v143[0];
      v11 = mlx_array_new_data(&v142, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_146;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v143[0]) & 1) == 0)
    {
      v11 = mlx_array_new_data(v143, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_146;
    }

    *&v143[0] = 0;
    *(&v143[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v137 = sub_25A998C68();
    MEMORY[0x25F850290](v137);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    result = sub_25A998818();
  }

LABEL_162:
  __break(1u);
  return result;
}

void sub_25A8C7F98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8C7FA0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8C8084(__int16 a1, unsigned __int8 a2)
{
  v154 = *MEMORY[0x277D85DE8];
  if (a2 == 6)
  {
    LOWORD(v151[0]) = a1;
    v3 = mlx_array_new_data(v151, (MEMORY[0x277D84F90] + 32), 0, 6);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_148:
    v139 = *MEMORY[0x277D85DE8];
    return result;
  }

  LOWORD(v148) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84958];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v150 = 0;
    memset(v149, 0, sizeof(v149));
    sub_25A878194(v149, &qword_27FA04950, &qword_25A9F9598);
    v152 = v6;
    v12 = sub_25A8DF9A8();
    v153 = v12;
    LOWORD(v151[0]) = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v151, v6);
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    v18 = a2;
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if ((v17 & 1) == 0)
            {
              goto LABEL_77;
            }

            v67 = *(*(v12 + 24) + 16);
            AssociatedTypeWitness = swift_getAssociatedTypeWitness();
            v147 = &v147;
            v69 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](AssociatedTypeWitness);
            swift_getAssociatedConformanceWitness();
            v70 = sub_25A998A78();
            MEMORY[0x28223BE20](v70);
            sub_25A9989C8();
            v71 = *(*(v12 + 32) + 8);
            v72 = sub_25A997D98();
            (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
            if (v72)
            {
LABEL_77:
              if (sub_25A9984D8())
              {
                v73 = *(*(v12 + 24) + 16);
                v74 = swift_getAssociatedTypeWitness();
                v147 = &v147;
                v75 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                MEMORY[0x28223BE20](v74);
                swift_getAssociatedConformanceWitness();
                v76 = sub_25A998A78();
                MEMORY[0x28223BE20](v76);
                sub_25A9989C8();
                v77 = *(*(v12 + 32) + 8);
                v78 = sub_25A997D78();
                v79 = *(v14 + 8);
                v79(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
                if (v78)
                {
                  sub_25A9984B8();
                }
              }

              else
              {
                v79 = *(v14 + 8);
              }

              v93 = *v16;
              v79(v16, MEMORY[0x277D84958]);
              LOWORD(v149[0]) = v93;
              v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_146;
            }

            goto LABEL_153;
          }

          if (v17)
          {
            v19 = *(*(v12 + 24) + 16);
            v20 = swift_getAssociatedTypeWitness();
            v147 = &v147;
            v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v20);
            swift_getAssociatedConformanceWitness();
            v22 = sub_25A998A78();
            MEMORY[0x28223BE20](v22);
            sub_25A9989C8();
            v23 = *(*(v12 + 32) + 8);
            v24 = sub_25A997D98();
            (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
            if ((v24 & 1) == 0)
            {
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }
          }

          LOBYTE(v149[0]) = -1;
          v25 = sub_25A9984D8();
          MEMORY[0x28223BE20](v25);
          sub_25A89522C();
          sub_25A9984A8();
          v26 = *(*(v12 + 32) + 8);
          v27 = sub_25A997D88();
          v28 = *(v14 + 8);
          v28(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if ((v27 & 1) == 0)
          {
            v29 = *v16;
            v28(v16, MEMORY[0x277D84958]);
            LOBYTE(v149[0]) = v29;
            v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_146;
          }

LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v149[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v56 = sub_25A9984C8();
            if (v56 < 64)
            {
LABEL_134:
              sub_25A9984B8();
              goto LABEL_135;
            }
          }

          else
          {
            v94 = sub_25A9984D8();
            v56 = sub_25A9984C8();
            if ((v94 & 1) == 0)
            {
              if (v56 >= 64)
              {
                goto LABEL_135;
              }

              goto LABEL_134;
            }

            if (v56 <= 64)
            {
              v106 = *(*(v12 + 24) + 16);
              v107 = swift_getAssociatedTypeWitness();
              v147 = &v147;
              v108 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v107);
              swift_getAssociatedConformanceWitness();
              v109 = sub_25A998A78();
              MEMORY[0x28223BE20](v109);
              sub_25A9989C8();
              v110 = *(*(v12 + 32) + 8);
              v111 = sub_25A997D88();
              (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
              if (v111)
              {
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

              goto LABEL_134;
            }
          }

          MEMORY[0x28223BE20](v56);
          sub_25A895280();
          sub_25A9984A8();
          v98 = *(*(v12 + 32) + 8);
          v99 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v99)
          {
            goto LABEL_154;
          }
        }

LABEL_135:
        v112 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84958]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v58 = *(*(v12 + 24) + 16);
          v59 = swift_getAssociatedTypeWitness();
          v147 = &v147;
          v60 = (*(*(v59 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v59);
          swift_getAssociatedConformanceWitness();
          v61 = sub_25A998A78();
          MEMORY[0x28223BE20](v61);
          sub_25A9989C8();
          v62 = *(*(v12 + 32) + 8);
          v63 = sub_25A997D98();
          v65 = *(v14 + 8);
          v14 += 8;
          v64 = v65;
          v17 = (v65)(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if ((v63 & 1) == 0)
          {
            __break(1u);
            goto LABEL_73;
          }
        }

        else
        {
          v64 = *(v14 + 8);
        }

        v83 = *v16;
        v64(v16, MEMORY[0x277D84958]);
        LODWORD(v149[0]) = v83;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      if (a2 == 4)
      {
        if (v17)
        {
          v35 = *(*(v12 + 24) + 16);
          v36 = swift_getAssociatedTypeWitness();
          v147 = &v147;
          v37 = (*(*(v36 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v36);
          swift_getAssociatedConformanceWitness();
          v38 = sub_25A998A78();
          MEMORY[0x28223BE20](v38);
          sub_25A9989C8();
          v39 = *(*(v12 + 32) + 8);
          v40 = sub_25A997D98();
          v42 = *(v14 + 8);
          v14 += 8;
          v41 = v42;
          v17 = (v42)(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          v18 = v147;
          if ((v40 & 1) == 0)
          {
            __break(1u);
LABEL_44:
            if (v18 != 10)
            {
              if (v18 == 11)
              {
                if (v17)
                {
                  v34 = sub_25A9984B8();
                }

                else
                {
                  v34 = *v16;
                }

                (*(v14 + 8))(v16, MEMORY[0x277D84958]);
                if (qword_27FA043D8 == -1)
                {
                  goto LABEL_97;
                }

LABEL_149:
                swift_once();
LABEL_97:
                v87 = sub_25A998C58();
                v88 = *&v149[0];
                v89.n128_f32[0] = v34;
                v90 = mlx_array_new_float(v87, v89);
                *&v149[0] = mlx_array_new();
                mlx_astype(v149, v90, 12, *(v88 + 16));
                v91 = *&v149[0];
                type metadata accessor for MLXArray();
                v92 = swift_allocObject();
                *(v92 + 16) = v91;
                mlx_array_free(v90);

LABEL_147:
                __swift_destroy_boxed_opaque_existential_0Tm(v151);
                result = v92;
                goto LABEL_148;
              }

              if (v17)
              {
                v82 = sub_25A9984B8();
              }

              else
              {
                v82 = *v16;
              }

              (*(v14 + 8))(v16, MEMORY[0x277D84958]);
              v55 = sub_25A8BA558(v82);
LABEL_102:
              v92 = v55;
              goto LABEL_147;
            }

LABEL_73:
            if (v17)
            {
              v66 = sub_25A9984B8();
            }

            else
            {
              v66 = *v16;
            }

            v84 = (*(v14 + 8))(v16, MEMORY[0x277D84958]);
            v85.n128_f32[0] = v66;
            v11 = mlx_array_new_float(v84, v85);
            goto LABEL_146;
          }
        }

        else
        {
          v41 = *(v14 + 8);
        }

        v86 = *v16;
        v41(v16, MEMORY[0x277D84958]);
        *&v149[0] = v86;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 9)
      {
        LOBYTE(v149[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v81 = sub_25A9984C8();
          if (v81 < 8)
          {
LABEL_143:
            sub_25A9984B8();
            goto LABEL_144;
          }

LABEL_123:
          MEMORY[0x28223BE20](v81);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v104 = *(*(v12 + 32) + 8);
          v105 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v105)
          {
LABEL_157:
            __break(1u);
          }

          goto LABEL_144;
        }

        v97 = sub_25A9984D8();
        v81 = sub_25A9984C8();
        if (v97)
        {
          if (v81 <= 8)
          {
            v127 = *(*(v12 + 24) + 16);
            v128 = swift_getAssociatedTypeWitness();
            v147 = &v147;
            v129 = (*(*(v128 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v128);
            swift_getAssociatedConformanceWitness();
            v130 = sub_25A998A78();
            MEMORY[0x28223BE20](v130);
            sub_25A9989C8();
            v131 = *(*(v12 + 32) + 8);
            v132 = sub_25A997D88();
            (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
            if (v132)
            {
              goto LABEL_157;
            }

            goto LABEL_143;
          }

          goto LABEL_123;
        }

        if (v81 < 8)
        {
          goto LABEL_143;
        }
      }

LABEL_144:
      LOBYTE(v149[0]) = 127;
      v133 = sub_25A9984D8();
      MEMORY[0x28223BE20](v133);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v134 = *(*(v12 + 32) + 8);
      v135 = sub_25A997D88();
      v136 = *(v14 + 8);
      v136(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if ((v135 & 1) == 0)
      {
        v137 = *v16;
        v136(v16, MEMORY[0x277D84958]);
        LOBYTE(v149[0]) = v137;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      __break(1u);
      goto LABEL_151;
    }

    if (a2 > 9u)
    {
      goto LABEL_44;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v17)
        {
          v80 = sub_25A9984B8();
        }

        else
        {
          v80 = *v16;
        }

        (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
        *v149 = v80;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_141;
      }

      *&v149[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v30 = sub_25A9984C8();
        if (v30 < 64)
        {
LABEL_140:
          sub_25A9984B8();
          goto LABEL_141;
        }
      }

      else
      {
        v96 = sub_25A9984D8();
        v30 = sub_25A9984C8();
        if ((v96 & 1) == 0)
        {
          if (v30 < 64)
          {
            goto LABEL_140;
          }

LABEL_141:
          v126 = *v16;
          (*(v14 + 8))(v16, MEMORY[0x277D84958]);
          *&v149[0] = v126;
          v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        if (v30 <= 64)
        {
          v120 = *(*(v12 + 24) + 16);
          v121 = swift_getAssociatedTypeWitness();
          v147 = &v147;
          v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v121);
          swift_getAssociatedConformanceWitness();
          v123 = sub_25A998A78();
          MEMORY[0x28223BE20](v123);
          sub_25A9989C8();
          v124 = *(*(v12 + 32) + 8);
          v125 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v125)
          {
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          goto LABEL_140;
        }
      }

      MEMORY[0x28223BE20](v30);
      sub_25A8DF900();
      sub_25A9984A8();
      v102 = *(*(v12 + 32) + 8);
      v103 = sub_25A997D88();
      (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if (v103)
      {
        goto LABEL_156;
      }

      goto LABEL_141;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v149[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v57 = sub_25A9984C8();
        if (v57 < 32)
        {
LABEL_137:
          sub_25A9984B8();
          goto LABEL_138;
        }
      }

      else
      {
        v95 = sub_25A9984D8();
        v57 = sub_25A9984C8();
        if ((v95 & 1) == 0)
        {
          if (v57 >= 32)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        if (v57 <= 32)
        {
          v113 = *(*(v12 + 24) + 16);
          v114 = swift_getAssociatedTypeWitness();
          v147 = &v147;
          v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v114);
          swift_getAssociatedConformanceWitness();
          v116 = sub_25A998A78();
          MEMORY[0x28223BE20](v116);
          sub_25A9989C8();
          v117 = *(*(v12 + 32) + 8);
          v118 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
          if (v118)
          {
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          goto LABEL_137;
        }
      }

      MEMORY[0x28223BE20](v57);
      sub_25A8DF954();
      sub_25A9984A8();
      v100 = *(*(v12 + 32) + 8);
      v101 = sub_25A997D88();
      (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84958]);
      if (v101)
      {
        goto LABEL_155;
      }
    }

LABEL_138:
    v119 = *v16;
    (*(v14 + 8))(v16, MEMORY[0x277D84958]);
    mlx_array_new_int();
  }

  sub_25A87817C(v149, v151);
  v7 = v152;
  v8 = v153;
  v9 = __swift_project_boxed_opaque_existential_1(v151, v152);
  v10 = v9;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v149[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v149[0] = 0;
        *(&v149[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v140 = sub_25A998C68();
        MEMORY[0x25F850290](v140);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v49 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v51 + 16))(&v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v148) = v149[0];
          v11 = mlx_array_new_data(&v148, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_146;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v149[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        *&v149[0] = 0;
        *(&v149[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v143 = sub_25A998C68();
        MEMORY[0x25F850290](v143);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_165;
    }

    if (a2 == 10)
    {
      v44 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v46 + 16))(&v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v47 = sub_25A997C38();
      v48.n128_u32[0] = v149[0];
      v11 = mlx_array_new_float(v47, v48);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      v31 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v33 + 16))(&v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v34 = v148;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_97;
      }

      goto LABEL_149;
    }

    v52 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v54 + 16))(&v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v55 = sub_25A8BA558(*v149);
    goto LABEL_102;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v141 = sub_25A998C68();
      MEMORY[0x25F850290](v141);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v144 = sub_25A998C68();
      MEMORY[0x25F850290](v144);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v146 = sub_25A998C68();
      MEMORY[0x25F850290](v146);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v43 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
        v138 = v11;
        type metadata accessor for MLXArray();
        v92 = swift_allocObject();
        *(v92 + 16) = v138;
        goto LABEL_147;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v142 = sub_25A998C68();
      MEMORY[0x25F850290](v142);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_146;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v145 = sub_25A998C68();
      MEMORY[0x25F850290](v145);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_165:
  __break(1u);
  return result;
}

void sub_25A8CA8F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8CA900);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8CA9E4(int a1, unsigned __int8 a2)
{
  v159 = *MEMORY[0x277D85DE8];
  if (a2 == 7)
  {
    mlx_array_new_int();
  }

  v153 = *&a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v4 = MEMORY[0x277D849A8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v155 = 0;
    memset(v154, 0, sizeof(v154));
    sub_25A878194(v154, &qword_27FA04950, &qword_25A9F9598);
    v157 = v4;
    v10 = sub_25A8DF954();
    v158 = v10;
    LODWORD(v156[0]) = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v156, v4);
    v12 = *(v4 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    v16 = a2;
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              v70 = *(*(v10 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v152 = &v152;
              v72 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v73 = sub_25A998A78();
              MEMORY[0x28223BE20](v73);
              sub_25A9989C8();
              v74 = *(*(v10 + 32) + 8);
              v75 = sub_25A997D98();
              (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
              if ((v75 & 1) == 0)
              {
                goto LABEL_155;
              }
            }

            LOWORD(v154[0]) = -1;
            v76 = sub_25A9984D8();
            MEMORY[0x28223BE20](v76);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v77 = *(*(v10 + 32) + 8);
            v78 = sub_25A997D88();
            v79 = *(v12 + 8);
            v79(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if ((v78 & 1) == 0)
            {
              v80 = *v14;
              v79(v14, MEMORY[0x277D849A8]);
              LOWORD(v154[0]) = v80;
              v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_146;
            }

            goto LABEL_152;
          }

          if (v15)
          {
            v17 = *(*(v10 + 24) + 16);
            v18 = swift_getAssociatedTypeWitness();
            v152 = &v152;
            v19 = (*(*(v18 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v18);
            swift_getAssociatedConformanceWitness();
            v20 = sub_25A998A78();
            MEMORY[0x28223BE20](v20);
            sub_25A9989C8();
            v21 = *(*(v10 + 32) + 8);
            v22 = sub_25A997D98();
            (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if ((v22 & 1) == 0)
            {
              goto LABEL_154;
            }
          }

          LOBYTE(v154[0]) = -1;
          v23 = sub_25A9984D8();
          MEMORY[0x28223BE20](v23);
          sub_25A89522C();
          sub_25A9984A8();
          v24 = *(*(v10 + 32) + 8);
          v25 = sub_25A997D88();
          v26 = *(v12 + 8);
          v26(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if ((v25 & 1) == 0)
          {
            v27 = *v14;
            v26(v14, MEMORY[0x277D849A8]);
            LOBYTE(v154[0]) = v27;
            v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_146;
          }

LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v154[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v54 = sub_25A9984C8();
            if (v54 < 64)
            {
LABEL_133:
              sub_25A9984B8();
              goto LABEL_134;
            }
          }

          else
          {
            v94 = sub_25A9984D8();
            v54 = sub_25A9984C8();
            if ((v94 & 1) == 0)
            {
              if (v54 >= 64)
              {
                goto LABEL_134;
              }

              goto LABEL_133;
            }

            if (v54 <= 64)
            {
              v106 = *(*(v10 + 24) + 16);
              v107 = swift_getAssociatedTypeWitness();
              v152 = &v152;
              v108 = (*(*(v107 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v107);
              swift_getAssociatedConformanceWitness();
              v109 = sub_25A998A78();
              MEMORY[0x28223BE20](v109);
              sub_25A9989C8();
              v110 = *(*(v10 + 32) + 8);
              v111 = sub_25A997D88();
              (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
              if (v111)
              {
LABEL_156:
                __break(1u);
                goto LABEL_157;
              }

              goto LABEL_133;
            }
          }

          MEMORY[0x28223BE20](v54);
          sub_25A895280();
          sub_25A9984A8();
          v98 = *(*(v10 + 32) + 8);
          v99 = sub_25A997D88();
          (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v99)
          {
            goto LABEL_156;
          }
        }

LABEL_134:
        v112 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D849A8]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_72;
        }

        v56 = *(*(v10 + 24) + 16);
        v57 = swift_getAssociatedTypeWitness();
        v152 = &v152;
        v58 = (*(*(v57 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v57);
        swift_getAssociatedConformanceWitness();
        v59 = sub_25A998A78();
        MEMORY[0x28223BE20](v59);
        sub_25A9989C8();
        v60 = *(*(v10 + 32) + 8);
        v61 = sub_25A997D98();
        (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
        if (v61)
        {
LABEL_72:
          if (sub_25A9984D8())
          {
            v62 = *(*(v10 + 24) + 16);
            v63 = swift_getAssociatedTypeWitness();
            v152 = &v152;
            v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v63);
            swift_getAssociatedConformanceWitness();
            v65 = sub_25A998A78();
            MEMORY[0x28223BE20](v65);
            sub_25A9989C8();
            v66 = *(*(v10 + 32) + 8);
            v67 = sub_25A997D78();
            v68 = *(v12 + 8);
            v68(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
            if (v67)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v68 = *(v12 + 8);
          }

          v93 = *v14;
          v68(v14, MEMORY[0x277D849A8]);
          LODWORD(v154[0]) = v93;
          v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_146;
        }

        goto LABEL_153;
      }

      if (a2 == 4)
      {
        if (v15)
        {
          v33 = *(*(v10 + 24) + 16);
          v34 = swift_getAssociatedTypeWitness();
          v152 = &v152;
          v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v34);
          swift_getAssociatedConformanceWitness();
          v36 = sub_25A998A78();
          MEMORY[0x28223BE20](v36);
          sub_25A9989C8();
          v37 = *(*(v10 + 32) + 8);
          v38 = sub_25A997D98();
          v40 = *(v12 + 8);
          v12 += 8;
          v39 = v40;
          v15 = (v40)(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          v16 = v152;
          if ((v38 & 1) == 0)
          {
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v39 = *(v12 + 8);
        }

        v86 = *v14;
        v39(v14, MEMORY[0x277D849A8]);
        *&v154[0] = v86;
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_144;
      }

      LOBYTE(v154[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v82 = sub_25A9984C8();
        if (v82 < 8)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LOBYTE(v154[0]) = 127;
          v137 = sub_25A9984D8();
          MEMORY[0x28223BE20](v137);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v138 = *(*(v10 + 32) + 8);
          v139 = sub_25A997D88();
          v140 = *(v12 + 8);
          v140(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if ((v139 & 1) == 0)
          {
            v141 = *v14;
            v140(v14, MEMORY[0x277D849A8]);
            LOBYTE(v154[0]) = v141;
            v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_146;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }
      }

      else
      {
        v97 = sub_25A9984D8();
        v82 = sub_25A9984C8();
        if ((v97 & 1) == 0)
        {
          if (v82 >= 8)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v82 <= 8)
        {
          v131 = *(*(v10 + 24) + 16);
          v132 = swift_getAssociatedTypeWitness();
          v152 = &v152;
          v133 = (*(*(v132 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v132);
          swift_getAssociatedConformanceWitness();
          v134 = sub_25A998A78();
          MEMORY[0x28223BE20](v134);
          sub_25A9989C8();
          v135 = *(*(v10 + 32) + 8);
          v136 = sub_25A997D88();
          (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v136)
          {
            goto LABEL_159;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v82);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v104 = *(*(v10 + 32) + 8);
      v105 = sub_25A997D88();
      (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
      if (v105)
      {
LABEL_159:
        __break(1u);
      }

      goto LABEL_144;
    }

    if (a2 > 9u)
    {
LABEL_44:
      if (v16 == 10)
      {
        if (v15)
        {
          v69 = sub_25A9984B8();
        }

        else
        {
          v69 = *v14;
        }

        v84 = (*(v12 + 8))(v14, MEMORY[0x277D849A8]);
        v85.n128_f32[0] = v69;
        v9 = mlx_array_new_float(v84, v85);
        goto LABEL_146;
      }

      if (v16 == 11)
      {
        if (v15)
        {
          v32 = sub_25A9984B8();
        }

        else
        {
          v32 = *v14;
        }

        (*(v12 + 8))(v14, MEMORY[0x277D849A8]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_96;
        }

LABEL_148:
        swift_once();
LABEL_96:
        v87 = sub_25A998C58();
        v88 = *&v154[0];
        v89.n128_f32[0] = v32;
        v90 = mlx_array_new_float(v87, v89);
        *&v154[0] = mlx_array_new();
        mlx_astype(v154, v90, 12, *(v88 + 16));
        v91 = *&v154[0];
        type metadata accessor for MLXArray();
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        mlx_array_free(v90);

LABEL_147:
        __swift_destroy_boxed_opaque_existential_0Tm(v156);
        result = v92;
        v144 = *MEMORY[0x277D85DE8];
        return result;
      }

      if (v15)
      {
        v83 = sub_25A9984B8();
      }

      else
      {
        v83 = *v14;
      }

      (*(v12 + 8))(v14, MEMORY[0x277D849A8]);
      v53 = sub_25A8BA558(v83);
LABEL_101:
      v92 = v53;
      goto LABEL_147;
    }

    if (a2 != 6)
    {
      if (a2 != 8)
      {
        if (v15)
        {
          v81 = sub_25A9984B8();
        }

        else
        {
          v81 = *v14;
        }

        (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
        *v154 = v81;
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_146;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_141;
      }

      *&v154[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v28 = sub_25A9984C8();
        if (v28 < 64)
        {
LABEL_140:
          sub_25A9984B8();
          goto LABEL_141;
        }
      }

      else
      {
        v96 = sub_25A9984D8();
        v28 = sub_25A9984C8();
        if ((v96 & 1) == 0)
        {
          if (v28 < 64)
          {
            goto LABEL_140;
          }

LABEL_141:
          v130 = *v14;
          (*(v12 + 8))(v14, MEMORY[0x277D849A8]);
          *&v154[0] = v130;
          v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        if (v28 <= 64)
        {
          v124 = *(*(v10 + 24) + 16);
          v125 = swift_getAssociatedTypeWitness();
          v152 = &v152;
          v126 = (*(*(v125 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v125);
          swift_getAssociatedConformanceWitness();
          v127 = sub_25A998A78();
          MEMORY[0x28223BE20](v127);
          sub_25A9989C8();
          v128 = *(*(v10 + 32) + 8);
          v129 = sub_25A997D88();
          (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v129)
          {
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          goto LABEL_140;
        }
      }

      MEMORY[0x28223BE20](v28);
      sub_25A8DF900();
      sub_25A9984A8();
      v102 = *(*(v10 + 32) + 8);
      v103 = sub_25A997D88();
      (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
      if (v103)
      {
        goto LABEL_158;
      }

      goto LABEL_141;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v154[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v55 = sub_25A9984C8();
        if (v55 < 16)
        {
LABEL_136:
          sub_25A9984B8();
          goto LABEL_137;
        }

LABEL_118:
        MEMORY[0x28223BE20](v55);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v100 = *(*(v10 + 32) + 8);
        v101 = sub_25A997D88();
        (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
        if (v101)
        {
          goto LABEL_157;
        }

        goto LABEL_137;
      }

      v95 = sub_25A9984D8();
      v55 = sub_25A9984C8();
      if (v95)
      {
        if (v55 <= 16)
        {
          v113 = *(*(v10 + 24) + 16);
          v114 = swift_getAssociatedTypeWitness();
          v152 = &v152;
          v115 = (*(*(v114 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v114);
          swift_getAssociatedConformanceWitness();
          v116 = sub_25A998A78();
          MEMORY[0x28223BE20](v116);
          sub_25A9989C8();
          v117 = *(*(v10 + 32) + 8);
          v118 = sub_25A997D88();
          (*(v12 + 8))(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
          if (v118)
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          goto LABEL_136;
        }

        goto LABEL_118;
      }

      if (v55 < 16)
      {
        goto LABEL_136;
      }
    }

LABEL_137:
    LOWORD(v154[0]) = 0x7FFF;
    v119 = sub_25A9984D8();
    MEMORY[0x28223BE20](v119);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v120 = *(*(v10 + 32) + 8);
    v121 = sub_25A997D88();
    v122 = *(v12 + 8);
    v122(&v152 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D849A8]);
    if ((v121 & 1) == 0)
    {
      v123 = *v14;
      v122(v14, MEMORY[0x277D849A8]);
      LOWORD(v154[0]) = v123;
      v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_146;
    }

    __break(1u);
    goto LABEL_150;
  }

  sub_25A87817C(v154, v156);
  v5 = v157;
  v6 = v158;
  v7 = __swift_project_boxed_opaque_existential_1(v156, v157);
  v8 = v7;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v154[0]) & 1) == 0)
        {
          v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_146;
        }

        *&v154[0] = 0;
        *(&v154[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v145 = sub_25A998C68();
        MEMORY[0x25F850290](v145);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v47 = *(*(v5 - 8) + 64);
          MEMORY[0x28223BE20](v7);
          (*(v49 + 16))(&v152 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v5);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v153) = v154[0];
          v9 = mlx_array_new_data(&v153, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_146;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v154[0]) & 1) == 0)
        {
          v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_146;
        }

        *&v154[0] = 0;
        *(&v154[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v148 = sub_25A998C68();
        MEMORY[0x25F850290](v148);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_167;
    }

    if (a2 == 10)
    {
      v42 = *(*(v5 - 8) + 64);
      MEMORY[0x28223BE20](v7);
      (*(v44 + 16))(&v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v5);
      sub_25A8DFB4C();
      v45 = sub_25A997C38();
      v46.n128_u32[0] = v154[0];
      v9 = mlx_array_new_float(v45, v46);
      goto LABEL_146;
    }

    if (a2 == 11)
    {
      v29 = *(*(v5 - 8) + 64);
      MEMORY[0x28223BE20](v7);
      (*(v31 + 16))(&v152 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v5);
      sub_25A8DFB4C();
      sub_25A997C38();
      v32 = v153;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_148;
    }

    v50 = *(*(v5 - 8) + 64);
    MEMORY[0x28223BE20](v7);
    (*(v52 + 16))(&v152 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v5);
    sub_25A8DFAF8();
    sub_25A997C38();
    v53 = sub_25A8BA558(*v154);
    goto LABEL_101;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v154[0]) & 1) == 0)
      {
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_146;
      }

      *&v154[0] = 0;
      *(&v154[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v146 = sub_25A998C68();
      MEMORY[0x25F850290](v146);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v154[0]) & 1) == 0)
      {
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_146;
      }

      *&v154[0] = 0;
      *(&v154[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v149 = sub_25A998C68();
      MEMORY[0x25F850290](v149);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v154[0]) & 1) == 0)
      {
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_146;
      }

      *&v154[0] = 0;
      *(&v154[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v151 = sub_25A998C68();
      MEMORY[0x25F850290](v151);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v41 = *(v6 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v154[0]) & 1) == 0)
      {
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_146:
        v142 = v9;
        type metadata accessor for MLXArray();
        v92 = swift_allocObject();
        *(v92 + 16) = v142;
        goto LABEL_147;
      }

      *&v154[0] = 0;
      *(&v154[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v147 = sub_25A998C68();
      MEMORY[0x25F850290](v147);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v154[0]) & 1) == 0)
      {
        v9 = mlx_array_new_data(v154, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_146;
      }

      *&v154[0] = 0;
      *(&v154[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v150 = sub_25A998C68();
      MEMORY[0x25F850290](v150);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_167:
  __break(1u);
  return result;
}

void sub_25A8CD3F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8CD3F8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8CD4DC(uint64_t a1, unsigned __int8 a2)
{
  v168 = *MEMORY[0x277D85DE8];
  if (a2 == 8)
  {
    v165[0] = a1;
    v3 = mlx_array_new_data(v165, (MEMORY[0x277D84F90] + 32), 0, 8);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_152:
    v153 = *MEMORY[0x277D85DE8];
    return result;
  }

  v162 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84A28];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    memset(v163, 0, sizeof(v163));
    sub_25A878194(v163, &qword_27FA04950, &qword_25A9F9598);
    v166 = v6;
    v12 = sub_25A8DF900();
    v167 = v12;
    v165[0] = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v165, v6);
    v161 = &v161;
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 5u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v17)
            {
              v74 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v76 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v77 = sub_25A998A78();
              MEMORY[0x28223BE20](v77);
              sub_25A9989C8();
              v78 = *(*(v12 + 32) + 8);
              v79 = sub_25A997D98();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
              if ((v79 & 1) == 0)
              {
                goto LABEL_163;
              }
            }

            LOWORD(v163[0]) = -1;
            v80 = sub_25A9984D8();
            MEMORY[0x28223BE20](v80);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v81 = *(*(v12 + 32) + 8);
            v82 = sub_25A997D88();
            v83 = *(v14 + 8);
            v83(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if ((v82 & 1) == 0)
            {
              v84 = *v16;
              v83(v16, MEMORY[0x277D84A28]);
              LOWORD(v163[0]) = v84;
              v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_150;
            }

            goto LABEL_159;
          }

          if (v17)
          {
            v18 = *(*(v12 + 24) + 16);
            v19 = swift_getAssociatedTypeWitness();
            v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v19);
            swift_getAssociatedConformanceWitness();
            v21 = sub_25A998A78();
            MEMORY[0x28223BE20](v21);
            sub_25A9989C8();
            v22 = *(*(v12 + 32) + 8);
            v23 = sub_25A997D98();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if ((v23 & 1) == 0)
            {
              goto LABEL_161;
            }
          }

          LOBYTE(v163[0]) = -1;
          v24 = sub_25A9984D8();
          MEMORY[0x28223BE20](v24);
          sub_25A89522C();
          sub_25A9984A8();
          v25 = *(*(v12 + 32) + 8);
          v26 = sub_25A997D88();
          v27 = *(v14 + 8);
          v27(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v26 & 1) == 0)
          {
            v28 = *v16;
            v27(v16, MEMORY[0x277D84A28]);
            LOBYTE(v163[0]) = v28;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_150;
          }

LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v163[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v60 = sub_25A9984C8();
            if (v60 < 64)
            {
LABEL_132:
              sub_25A9984B8();
              goto LABEL_133;
            }
          }

          else
          {
            v97 = sub_25A9984D8();
            v60 = sub_25A9984C8();
            if ((v97 & 1) == 0)
            {
              if (v60 >= 64)
              {
                goto LABEL_133;
              }

              goto LABEL_132;
            }

            if (v60 <= 64)
            {
              v109 = *(*(v12 + 24) + 16);
              v110 = swift_getAssociatedTypeWitness();
              v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v110);
              swift_getAssociatedConformanceWitness();
              v112 = sub_25A998A78();
              MEMORY[0x28223BE20](v112);
              sub_25A9989C8();
              v113 = *(*(v12 + 32) + 8);
              v114 = sub_25A997D88();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
              if (v114)
              {
LABEL_165:
                __break(1u);
                goto LABEL_166;
              }

              goto LABEL_132;
            }
          }

          MEMORY[0x28223BE20](v60);
          sub_25A895280();
          sub_25A9984A8();
          v101 = *(*(v12 + 32) + 8);
          v102 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v102)
          {
            goto LABEL_165;
          }
        }

LABEL_133:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
          v115 = sub_25A9984D8();
          if (v115)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v115);
            sub_25A895280();
            sub_25A9984A8();
            v116 = *(*(v12 + 32) + 8);
            v117 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if (v117)
            {
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }
          }
        }

        v118 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84A28]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v62 = *(*(v12 + 24) + 16);
          v63 = swift_getAssociatedTypeWitness();
          v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v63);
          swift_getAssociatedConformanceWitness();
          v65 = sub_25A998A78();
          MEMORY[0x28223BE20](v65);
          sub_25A9989C8();
          v66 = *(*(v12 + 32) + 8);
          v67 = sub_25A997D98();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v67 & 1) == 0)
          {
            goto LABEL_160;
          }
        }

        LODWORD(v163[0]) = -1;
        v68 = sub_25A9984D8();
        MEMORY[0x28223BE20](v68);
        sub_25A8DFA50();
        sub_25A9984A8();
        v69 = *(*(v12 + 32) + 8);
        v70 = sub_25A997D88();
        v71 = *(v14 + 8);
        v71(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if ((v70 & 1) == 0)
        {
          v72 = *v16;
          v71(v16, MEMORY[0x277D84A28]);
          LODWORD(v163[0]) = v72;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_150;
        }

        goto LABEL_157;
      }

      if (a2 == 4)
      {
        if ((v17 & 1) == 0)
        {
          goto LABEL_43;
        }

        v34 = *(*(v12 + 24) + 16);
        v35 = swift_getAssociatedTypeWitness();
        v36 = (*(*(v35 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v35);
        swift_getAssociatedConformanceWitness();
        v37 = sub_25A998A78();
        MEMORY[0x28223BE20](v37);
        sub_25A9989C8();
        v38 = *(*(v12 + 32) + 8);
        v39 = sub_25A997D98();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if (v39)
        {
LABEL_43:
          if (sub_25A9984D8())
          {
            v40 = *(*(v12 + 24) + 16);
            v41 = swift_getAssociatedTypeWitness();
            v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v41);
            swift_getAssociatedConformanceWitness();
            v43 = sub_25A998A78();
            MEMORY[0x28223BE20](v43);
            sub_25A9989C8();
            v44 = *(*(v12 + 32) + 8);
            v45 = sub_25A997D78();
            v46 = *(v14 + 8);
            v46(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
            if (v45)
            {
              sub_25A9984B8();
            }
          }

          else
          {
            v46 = *(v14 + 8);
          }

          v96 = *v16;
          v46(v16, MEMORY[0x277D84A28]);
          *&v163[0] = v96;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_150;
        }

        goto LABEL_162;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
      {
        goto LABEL_148;
      }

      LOBYTE(v163[0]) = 0x80;
      if (sub_25A9984D8())
      {
        v86 = sub_25A9984C8();
        if (v86 < 8)
        {
LABEL_147:
          sub_25A9984B8();
LABEL_148:
          LOBYTE(v163[0]) = 127;
          v147 = sub_25A9984D8();
          MEMORY[0x28223BE20](v147);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v148 = *(*(v12 + 32) + 8);
          v149 = sub_25A997D88();
          v150 = *(v14 + 8);
          v150(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v149 & 1) == 0)
          {
            v151 = *v16;
            v150(v16, MEMORY[0x277D84A28]);
            LOBYTE(v163[0]) = v151;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_150;
          }

          goto LABEL_156;
        }
      }

      else
      {
        v100 = sub_25A9984D8();
        v86 = sub_25A9984C8();
        if ((v100 & 1) == 0)
        {
          if (v86 >= 8)
          {
            goto LABEL_148;
          }

          goto LABEL_147;
        }

        if (v86 <= 8)
        {
          v141 = *(*(v12 + 24) + 16);
          v142 = swift_getAssociatedTypeWitness();
          v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v142);
          swift_getAssociatedConformanceWitness();
          v144 = sub_25A998A78();
          MEMORY[0x28223BE20](v144);
          sub_25A9989C8();
          v145 = *(*(v12 + 32) + 8);
          v146 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v146)
          {
            goto LABEL_168;
          }

          goto LABEL_147;
        }
      }

      MEMORY[0x28223BE20](v86);
      sub_25A8DF9FC();
      sub_25A9984A8();
      v107 = *(*(v12 + 32) + 8);
      v108 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      if (v108)
      {
LABEL_168:
        __break(1u);
      }

      goto LABEL_148;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v17)
        {
          v73 = sub_25A9984B8();
        }

        else
        {
          v73 = *v16;
        }

        v88 = (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        v89.n128_f32[0] = v73;
        v11 = mlx_array_new_float(v88, v89);
        goto LABEL_150;
      }

      if (a2 == 11)
      {
        if (v17)
        {
          v33 = sub_25A9984B8();
        }

        else
        {
          v33 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_153:
        swift_once();
LABEL_95:
        v90 = sub_25A998C58();
        v91 = *&v163[0];
        v92.n128_f32[0] = v33;
        v93 = mlx_array_new_float(v90, v92);
        *&v163[0] = mlx_array_new();
        mlx_astype(v163, v93, 12, *(v91 + 16));
        v94 = *&v163[0];
        type metadata accessor for MLXArray();
        v95 = swift_allocObject();
        *(v95 + 16) = v94;
        mlx_array_free(v93);

LABEL_151:
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        result = v95;
        goto LABEL_152;
      }

      if (v17)
      {
        v87 = sub_25A9984B8();
      }

      else
      {
        v87 = *v16;
      }

      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      v59 = sub_25A8BA558(v87);
LABEL_100:
      v95 = v59;
      goto LABEL_151;
    }

    if (a2 != 6)
    {
      if (a2 != 7)
      {
        if (v17)
        {
          v85 = sub_25A9984B8();
        }

        else
        {
          v85 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        *v163 = v85;
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_150;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 33)
      {
        goto LABEL_144;
      }

      LODWORD(v163[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v29 = sub_25A9984C8();
        if (v29 < 32)
        {
LABEL_143:
          sub_25A9984B8();
LABEL_144:
          LODWORD(v163[0]) = 0x7FFFFFFF;
          v136 = sub_25A9984D8();
          MEMORY[0x28223BE20](v136);
          sub_25A8DF954();
          sub_25A9984A8();
          v137 = *(*(v12 + 32) + 8);
          v138 = sub_25A997D88();
          v139 = *(v14 + 8);
          v139(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if ((v138 & 1) == 0)
          {
            v140 = *v16;
            v139(v16, MEMORY[0x277D84A28]);
            mlx_array_new_int();
          }

LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
          goto LABEL_158;
        }
      }

      else
      {
        v99 = sub_25A9984D8();
        v29 = sub_25A9984C8();
        if ((v99 & 1) == 0)
        {
          if (v29 >= 32)
          {
            goto LABEL_144;
          }

          goto LABEL_143;
        }

        if (v29 <= 32)
        {
          v130 = *(*(v12 + 24) + 16);
          v131 = swift_getAssociatedTypeWitness();
          v132 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v131);
          swift_getAssociatedConformanceWitness();
          v133 = sub_25A998A78();
          MEMORY[0x28223BE20](v133);
          sub_25A9989C8();
          v134 = *(*(v12 + 32) + 8);
          v135 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v135)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          goto LABEL_143;
        }
      }

      MEMORY[0x28223BE20](v29);
      sub_25A8DF954();
      sub_25A9984A8();
      v105 = *(*(v12 + 32) + 8);
      v106 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
      if (v106)
      {
        goto LABEL_167;
      }

      goto LABEL_144;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 17)
    {
      LOWORD(v163[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v61 = sub_25A9984C8();
        if (v61 < 16)
        {
LABEL_139:
          sub_25A9984B8();
          goto LABEL_140;
        }

LABEL_117:
        MEMORY[0x28223BE20](v61);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v103 = *(*(v12 + 32) + 8);
        v104 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
        if (v104)
        {
          goto LABEL_166;
        }

        goto LABEL_140;
      }

      v98 = sub_25A9984D8();
      v61 = sub_25A9984C8();
      if (v98)
      {
        if (v61 <= 16)
        {
          v119 = *(*(v12 + 24) + 16);
          v120 = swift_getAssociatedTypeWitness();
          v121 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v120);
          swift_getAssociatedConformanceWitness();
          v122 = sub_25A998A78();
          MEMORY[0x28223BE20](v122);
          sub_25A9989C8();
          v123 = *(*(v12 + 32) + 8);
          v124 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
          if (v124)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_139;
        }

        goto LABEL_117;
      }

      if (v61 < 16)
      {
        goto LABEL_139;
      }
    }

LABEL_140:
    LOWORD(v163[0]) = 0x7FFF;
    v125 = sub_25A9984D8();
    MEMORY[0x28223BE20](v125);
    sub_25A8DF9A8();
    sub_25A9984A8();
    v126 = *(*(v12 + 32) + 8);
    v127 = sub_25A997D88();
    v128 = *(v14 + 8);
    v128(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84A28]);
    if ((v127 & 1) == 0)
    {
      v129 = *v16;
      v128(v16, MEMORY[0x277D84A28]);
      LOWORD(v163[0]) = v129;
      v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
      goto LABEL_150;
    }

    __break(1u);
    goto LABEL_155;
  }

  sub_25A87817C(v163, v165);
  v7 = v166;
  v8 = v167;
  v9 = __swift_project_boxed_opaque_existential_1(v165, v166);
  v10 = v9;
  if (a2 > 5u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 6)
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v163[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_150;
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v154 = sub_25A998C68();
        MEMORY[0x25F850290](v154);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 7)
        {
          v53 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v55 + 16))(&v161 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v162) = v163[0];
          v11 = mlx_array_new_data(&v162, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_150;
        }

        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v163[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v157 = sub_25A998C68();
        MEMORY[0x25F850290](v157);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_176;
    }

    if (a2 == 10)
    {
      v48 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v50 + 16))(&v161 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v51 = sub_25A997C38();
      v52.n128_u32[0] = v163[0];
      v11 = mlx_array_new_float(v51, v52);
      goto LABEL_150;
    }

    if (a2 == 11)
    {
      v30 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v32 + 16))(&v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v33 = *&v162;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_153;
    }

    v56 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v58 + 16))(&v161 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v59 = sub_25A8BA558(*v163);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v155 = sub_25A998C68();
      MEMORY[0x25F850290](v155);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v158 = sub_25A998C68();
      MEMORY[0x25F850290](v158);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v160 = sub_25A998C68();
      MEMORY[0x25F850290](v160);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v47 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_150:
        v152 = v11;
        type metadata accessor for MLXArray();
        v95 = swift_allocObject();
        *(v95 + 16) = v152;
        goto LABEL_151;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v156 = sub_25A998C68();
      MEMORY[0x25F850290](v156);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_150;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v159 = sub_25A998C68();
      MEMORY[0x25F850290](v159);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_176:
  __break(1u);
  return result;
}

void sub_25A8D0134(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D013CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D0220(char a1, unsigned __int8 a2)
{
  v153 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    LOBYTE(v150[0]) = a1;
    v3 = mlx_array_new_data(v150, (MEMORY[0x277D84F90] + 32), 0, 1);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_163:
    v137 = *MEMORY[0x277D85DE8];
    return result;
  }

  LOBYTE(v147) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84B78];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v149 = 0;
    memset(v148, 0, sizeof(v148));
    sub_25A878194(v148, &qword_27FA04950, &qword_25A9F9598);
    v151 = v6;
    v13 = sub_25A89522C();
    v152 = v13;
    LOBYTE(v150[0]) = a1;
    v14 = __swift_project_boxed_opaque_existential_1(v150, v6);
    v15 = *(v6 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x28223BE20](v14);
    v7 = &v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v7);
    v17 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 == 2)
          {
            if (v17)
            {
              v19 = *(*(v13 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v146 = &v146;
              v21 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v22 = sub_25A998A78();
              MEMORY[0x28223BE20](v22);
              sub_25A9989C8();
              v23 = *(*(v13 + 32) + 8);
              v24 = sub_25A997D98();
              v10 = *(v15 + 8);
              v9 = v10(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              v11 = v146;
              if ((v24 & 1) == 0)
              {
                __break(1u);
                goto LABEL_17;
              }
            }

            else
            {
              v10 = *(v15 + 8);
            }

            v76 = *v7;
            v10(v7, MEMORY[0x277D84B78]);
            LOWORD(v148[0]) = v76;
            v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 2);
            goto LABEL_161;
          }

          if (v17)
          {
            v62 = *(*(v13 + 24) + 16);
            v63 = swift_getAssociatedTypeWitness();
            v146 = &v146;
            v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v63);
            swift_getAssociatedConformanceWitness();
            v65 = sub_25A998A78();
            MEMORY[0x28223BE20](v65);
            sub_25A9989C8();
            v66 = *(*(v13 + 32) + 8);
            v67 = sub_25A997D98();
            v69 = *(v15 + 8);
            v15 += 8;
            v68 = v69;
            v17 = (v69)(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if ((v67 & 1) == 0)
            {
              __break(1u);
              goto LABEL_80;
            }
          }

          else
          {
            v68 = *(v15 + 8);
          }

          v82 = *v7;
          v68(v7, MEMORY[0x277D84B78]);
          LODWORD(v148[0]) = v82;
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_161;
        }

        if ((v17 & 1) == 0 || sub_25A9984C8() < 65)
        {
LABEL_144:
          v104 = *v7;
          (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
          mlx_array_new_BOOL();
        }

        *&v148[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v51 = sub_25A9984C8();
          if (v51 < 64)
          {
            goto LABEL_143;
          }
        }

        else
        {
          v83 = sub_25A9984D8();
          v51 = sub_25A9984C8();
          if ((v83 & 1) == 0)
          {
            if (v51 >= 64)
            {
              goto LABEL_144;
            }

            goto LABEL_143;
          }

          if (v51 <= 64)
          {
            v98 = *(*(v13 + 24) + 16);
            v99 = swift_getAssociatedTypeWitness();
            v146 = &v146;
            v100 = (*(*(v99 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v99);
            swift_getAssociatedConformanceWitness();
            v101 = sub_25A998A78();
            MEMORY[0x28223BE20](v101);
            sub_25A9989C8();
            v102 = *(*(v13 + 32) + 8);
            v103 = sub_25A997D88();
            (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if ((v103 & 1) == 0)
            {
LABEL_143:
              sub_25A9984B8();
              goto LABEL_144;
            }

            goto LABEL_165;
          }
        }

        MEMORY[0x28223BE20](v51);
        sub_25A895280();
        sub_25A9984A8();
        v88 = *(*(v13 + 32) + 8);
        v89 = sub_25A997D88();
        (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        if ((v89 & 1) == 0)
        {
          goto LABEL_144;
        }

LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v17 & 1) != 0 && sub_25A9984C8() >= 9)
          {
            LOBYTE(v148[0]) = 0x80;
            if (sub_25A9984D8())
            {
              v36 = sub_25A9984C8();
              if (v36 < 8)
              {
LABEL_152:
                sub_25A9984B8();
                goto LABEL_153;
              }
            }

            else
            {
              v86 = sub_25A9984D8();
              v36 = sub_25A9984C8();
              if ((v86 & 1) == 0)
              {
                if (v36 >= 8)
                {
                  goto LABEL_153;
                }

                goto LABEL_152;
              }

              if (v36 <= 8)
              {
                v119 = *(*(v13 + 24) + 16);
                v120 = swift_getAssociatedTypeWitness();
                v146 = &v146;
                v121 = (*(*(v120 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                MEMORY[0x28223BE20](v120);
                swift_getAssociatedConformanceWitness();
                v122 = sub_25A998A78();
                MEMORY[0x28223BE20](v122);
                sub_25A9989C8();
                v123 = *(*(v13 + 32) + 8);
                v124 = sub_25A997D88();
                (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
                if (v124)
                {
LABEL_168:
                  __break(1u);
                  goto LABEL_169;
                }

                goto LABEL_152;
              }
            }

            MEMORY[0x28223BE20](v36);
            sub_25A8DF9FC();
            sub_25A9984A8();
            v94 = *(*(v13 + 32) + 8);
            v95 = sub_25A997D88();
            (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if (v95)
            {
              goto LABEL_168;
            }
          }

LABEL_153:
          if ((sub_25A9984D8() & 1) == 0)
          {
            LOBYTE(v148[0]) = 127;
            v125 = sub_25A9984D8();
            if (v125)
            {
              sub_25A9984B8();
            }

            else
            {
              MEMORY[0x28223BE20](v125);
              sub_25A8DF9FC();
              sub_25A9984A8();
              v126 = *(*(v13 + 32) + 8);
              v127 = sub_25A997D88();
              (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              if (v127)
              {
                __break(1u);
                goto LABEL_165;
              }
            }
          }

          v128 = *v7;
          (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
          LOBYTE(v148[0]) = v128;
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_161;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 17)
        {
          LOWORD(v148[0]) = 0x8000;
          if (sub_25A9984D8())
          {
            v71 = sub_25A9984C8();
            if (v71 < 16)
            {
LABEL_159:
              sub_25A9984B8();
              goto LABEL_160;
            }

            goto LABEL_130;
          }

          v87 = sub_25A9984D8();
          v71 = sub_25A9984C8();
          if (v87)
          {
            if (v71 <= 16)
            {
              v129 = *(*(v13 + 24) + 16);
              v130 = swift_getAssociatedTypeWitness();
              v146 = &v146;
              v131 = (*(*(v130 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v130);
              swift_getAssociatedConformanceWitness();
              v132 = sub_25A998A78();
              MEMORY[0x28223BE20](v132);
              sub_25A9989C8();
              v133 = *(*(v13 + 32) + 8);
              v134 = sub_25A997D88();
              (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
              if (v134)
              {
                goto LABEL_169;
              }

              goto LABEL_159;
            }

LABEL_130:
            MEMORY[0x28223BE20](v71);
            sub_25A8DF9A8();
            sub_25A9984A8();
            v96 = *(*(v13 + 32) + 8);
            v97 = sub_25A997D88();
            (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
            if (v97)
            {
LABEL_169:
              __break(1u);
            }

            goto LABEL_160;
          }

          if (v71 < 16)
          {
            goto LABEL_159;
          }
        }

LABEL_160:
        v135 = *v7;
        (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
        LOWORD(v148[0]) = v135;
        v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_161;
      }

      if (v17)
      {
        v53 = *(*(v13 + 24) + 16);
        v54 = swift_getAssociatedTypeWitness();
        v146 = &v146;
        v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v54);
        swift_getAssociatedConformanceWitness();
        v56 = sub_25A998A78();
        MEMORY[0x28223BE20](v56);
        sub_25A9989C8();
        v57 = *(*(v13 + 32) + 8);
        v58 = sub_25A997D98();
        v60 = *(v15 + 8);
        v15 += 8;
        v59 = v60;
        v17 = (v60)(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        if ((v58 & 1) == 0)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v59 = *(v15 + 8);
      }

      v73 = *v7;
      v59(v7, MEMORY[0x277D84B78]);
      *&v148[0] = v73;
      v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_161;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v17)
          {
            v37 = sub_25A9984B8();
          }

          else
          {
            LOBYTE(v18) = *v7;
            v37 = v18;
          }

          (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          v77 = sub_25A998C58();
          v78 = *&v148[0];
          v79.n128_f32[0] = v37;
          v80 = mlx_array_new_float(v77, v79);
          *&v148[0] = mlx_array_new();
          mlx_astype(v148, v80, 12, *(v78 + 16));
          v81 = *&v148[0];
          type metadata accessor for MLXArray();
          v35 = swift_allocObject();
          *(v35 + 16) = v81;
          mlx_array_free(v80);
          goto LABEL_99;
        }

        if (v17)
        {
          v72 = sub_25A9984B8();
        }

        else
        {
          LOBYTE(v18) = *v7;
          v72 = v18;
        }

        (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
        v50 = sub_25A8BA558(v72);
LABEL_106:
        v35 = v50;
        goto LABEL_162;
      }

LABEL_75:
      if (v17)
      {
        v61 = sub_25A9984B8();
      }

      else
      {
        LOBYTE(v18) = *v7;
        v61 = v18;
      }

      v74 = (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
      v75.n128_f32[0] = v61;
      v12 = mlx_array_new_float(v74, v75);
      goto LABEL_161;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_80:
        if (v17)
        {
          v70 = sub_25A9984B8();
        }

        else
        {
          LOBYTE(v18) = *v7;
          v70 = v18;
        }

        (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
        *v148 = v70;
        v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_161;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_150;
      }

      *&v148[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v25 = sub_25A9984C8();
        if (v25 < 64)
        {
LABEL_149:
          sub_25A9984B8();
          goto LABEL_150;
        }
      }

      else
      {
        v85 = sub_25A9984D8();
        v25 = sub_25A9984C8();
        if ((v85 & 1) == 0)
        {
          if (v25 < 64)
          {
            goto LABEL_149;
          }

LABEL_150:
          v118 = *v7;
          (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
          *&v148[0] = v118;
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_161;
        }

        if (v25 <= 64)
        {
          v112 = *(*(v13 + 24) + 16);
          v113 = swift_getAssociatedTypeWitness();
          v146 = &v146;
          v114 = (*(*(v113 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v113);
          swift_getAssociatedConformanceWitness();
          v115 = sub_25A998A78();
          MEMORY[0x28223BE20](v115);
          sub_25A9989C8();
          v116 = *(*(v13 + 32) + 8);
          v117 = sub_25A997D88();
          (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (v117)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          goto LABEL_149;
        }
      }

      MEMORY[0x28223BE20](v25);
      sub_25A8DF900();
      sub_25A9984A8();
      v92 = *(*(v13 + 32) + 8);
      v93 = sub_25A997D88();
      (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
      if (v93)
      {
        goto LABEL_167;
      }

      goto LABEL_150;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v148[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v52 = sub_25A9984C8();
        if (v52 < 32)
        {
LABEL_146:
          sub_25A9984B8();
          goto LABEL_147;
        }
      }

      else
      {
        v84 = sub_25A9984D8();
        v52 = sub_25A9984C8();
        if ((v84 & 1) == 0)
        {
          if (v52 >= 32)
          {
            goto LABEL_147;
          }

          goto LABEL_146;
        }

        if (v52 <= 32)
        {
          v105 = *(*(v13 + 24) + 16);
          v106 = swift_getAssociatedTypeWitness();
          v146 = &v146;
          v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v106);
          swift_getAssociatedConformanceWitness();
          v108 = sub_25A998A78();
          MEMORY[0x28223BE20](v108);
          sub_25A9989C8();
          v109 = *(*(v13 + 32) + 8);
          v110 = sub_25A997D88();
          (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
          if (v110)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }

          goto LABEL_146;
        }
      }

      MEMORY[0x28223BE20](v52);
      sub_25A8DF954();
      sub_25A9984A8();
      v90 = *(*(v13 + 32) + 8);
      v91 = sub_25A997D88();
      (*(v15 + 8))(&v146 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84B78]);
      if (v91)
      {
        goto LABEL_166;
      }
    }

LABEL_147:
    v111 = *v7;
    (*(v15 + 8))(v7, MEMORY[0x277D84B78]);
    mlx_array_new_int();
  }

  sub_25A87817C(v148, v150);
  v7 = v151;
  v8 = v152;
  v9 = __swift_project_boxed_opaque_existential_1(v150, v151);
  v10 = v9;
  v11 = a2;
  if (a2 <= 6u)
  {
    if (a2 > 3u)
    {
      if (a2 == 4)
      {
        sub_25A8DFD44();
        sub_25A9987F8();
        if ((BYTE8(v148[0]) & 1) == 0)
        {
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 4);
          goto LABEL_161;
        }

        *&v148[0] = 0;
        *(&v148[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v139 = sub_25A998C68();
        MEMORY[0x25F850290](v139);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        v145 = 0;
        result = sub_25A998818();
      }

      else if (a2 == 5)
      {
        sub_25A8DFCF0();
        sub_25A9987F8();
        if ((BYTE1(v148[0]) & 1) == 0)
        {
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 5);
          goto LABEL_161;
        }

        *&v148[0] = 0;
        *(&v148[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v142 = sub_25A998C68();
        MEMORY[0x25F850290](v142);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](947154505, 0xE400000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        v145 = 0;
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFC9C();
        sub_25A9987F8();
        if ((BYTE2(v148[0]) & 1) == 0)
        {
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_161;
        }

        *&v148[0] = 0;
        *(&v148[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v144 = sub_25A998C68();
        MEMORY[0x25F850290](v144);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        v145 = 0;
        result = sub_25A998818();
      }
    }

    else
    {
      if (!a2)
      {
        v38 = *(v8 + 16);
        sub_25A997D38();
        mlx_array_new_BOOL();
      }

      if (a2 == 2)
      {
        sub_25A8DFDEC();
        sub_25A9987F8();
        if ((BYTE2(v148[0]) & 1) == 0)
        {
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 2);
LABEL_161:
          v136 = v12;
          type metadata accessor for MLXArray();
          v35 = swift_allocObject();
          *(v35 + 16) = v136;
          goto LABEL_162;
        }

        *&v148[0] = 0;
        *(&v148[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v140 = sub_25A998C68();
        MEMORY[0x25F850290](v140);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        v145 = 0;
        result = sub_25A998818();
      }

      else
      {
        sub_25A8DFD98();
        sub_25A9987F8();
        if ((BYTE4(v148[0]) & 1) == 0)
        {
          v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_161;
        }

        *&v148[0] = 0;
        *(&v148[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v143 = sub_25A998C68();
        MEMORY[0x25F850290](v143);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        v145 = 0;
        result = sub_25A998818();
      }
    }

    goto LABEL_177;
  }

LABEL_17:
  if (v11 > 9)
  {
    if (v11 == 10)
    {
      v39 = *(*(v7 - 1) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v41 + 16))(&v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v42 = sub_25A997C38();
      v43.n128_u32[0] = v148[0];
      v12 = mlx_array_new_float(v42, v43);
      goto LABEL_161;
    }

    if (v11 == 11)
    {
      v26 = *(*(v7 - 1) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v28 + 16))(&v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v29 = v147;
      if (qword_27FA043D8 != -1)
      {
        swift_once();
      }

      v30 = sub_25A998C58();
      v31 = *&v148[0];
      v32.n128_u32[0] = v29;
      v33 = mlx_array_new_float(v30, v32);
      *&v148[0] = mlx_array_new();
      mlx_astype(v148, v33, 12, *(v31 + 16));
      v34 = *&v148[0];
      type metadata accessor for MLXArray();
      v35 = swift_allocObject();
      *(v35 + 16) = v34;
      mlx_array_free(v33);
LABEL_99:

LABEL_162:
      __swift_destroy_boxed_opaque_existential_0Tm(v150);
      result = v35;
      goto LABEL_163;
    }

    v47 = *(*(v7 - 1) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v49 + 16))(&v146 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v50 = sub_25A8BA558(*v148);
    goto LABEL_106;
  }

  if (v11 == 7)
  {
    sub_25A8DFC48();
    sub_25A9987F8();
    if ((BYTE4(v148[0]) & 1) == 0)
    {
      mlx_array_new_int();
    }

    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v138 = sub_25A998C68();
    MEMORY[0x25F850290](v138);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    v145 = 0;
    result = sub_25A998818();
  }

  else
  {
    if (v11 != 8)
    {
      v44 = *(*(v7 - 1) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v46 + 16))(&v146 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFBA0();
      sub_25A997C38();
      LOWORD(v147) = v148[0];
      v12 = mlx_array_new_data(&v147, (MEMORY[0x277D84F90] + 32), 0, 9);
      goto LABEL_161;
    }

    sub_25A8DFBF4();
    sub_25A9987F8();
    if ((BYTE8(v148[0]) & 1) == 0)
    {
      v12 = mlx_array_new_data(v148, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_161;
    }

    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_25A9985F8();
    v141 = sub_25A998C68();
    MEMORY[0x25F850290](v141);

    MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
    MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
    MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
    v145 = 0;
    result = sub_25A998818();
  }

LABEL_177:
  __break(1u);
  return result;
}

void sub_25A8D2A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D2A90);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D2B74(__int16 a1, unsigned __int8 a2)
{
  v154 = *MEMORY[0x277D85DE8];
  if (a2 == 2)
  {
    LOWORD(v151[0]) = a1;
    v3 = mlx_array_new_data(v151, (MEMORY[0x277D84F90] + 32), 0, 2);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_160:
    v139 = *MEMORY[0x277D85DE8];
    return result;
  }

  LOWORD(v148) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84C58];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v150 = 0;
    memset(v149, 0, sizeof(v149));
    sub_25A878194(v149, &qword_27FA04950, &qword_25A9F9598);
    v152 = v6;
    v12 = sub_25A8DFAA4();
    v153 = v12;
    LOWORD(v151[0]) = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v151, v6);
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            if (v17)
            {
              v19 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v147 = &v147;
              v21 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v22 = sub_25A998A78();
              MEMORY[0x28223BE20](v22);
              sub_25A9989C8();
              v23 = *(*(v12 + 32) + 8);
              v24 = sub_25A997D98();
              (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if ((v24 & 1) == 0)
              {
                goto LABEL_164;
              }
            }

            LOBYTE(v149[0]) = -1;
            v25 = sub_25A9984D8();
            MEMORY[0x28223BE20](v25);
            sub_25A89522C();
            sub_25A9984A8();
            v26 = *(*(v12 + 32) + 8);
            v27 = sub_25A997D88();
            v28 = *(v14 + 8);
            v28(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if ((v27 & 1) == 0)
            {
              v29 = *v16;
              v28(v16, MEMORY[0x277D84C58]);
              LOBYTE(v149[0]) = v29;
              v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 1);
              goto LABEL_158;
            }

LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          if (v17)
          {
            v60 = *(*(v12 + 24) + 16);
            v61 = swift_getAssociatedTypeWitness();
            v147 = &v147;
            v62 = (*(*(v61 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v61);
            swift_getAssociatedConformanceWitness();
            v63 = sub_25A998A78();
            MEMORY[0x28223BE20](v63);
            sub_25A9989C8();
            v64 = *(*(v12 + 32) + 8);
            v65 = sub_25A997D98();
            v67 = *(v14 + 8);
            v14 += 8;
            v66 = v67;
            v17 = (v67)(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if ((v65 & 1) == 0)
            {
              __break(1u);
              goto LABEL_80;
            }
          }

          else
          {
            v66 = *(v14 + 8);
          }

          v80 = *v16;
          v66(v16, MEMORY[0x277D84C58]);
          LODWORD(v149[0]) = v80;
          v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_158;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v149[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v49 = sub_25A9984C8();
            if (v49 < 64)
            {
LABEL_139:
              sub_25A9984B8();
              goto LABEL_140;
            }
          }

          else
          {
            v81 = sub_25A9984D8();
            v49 = sub_25A9984C8();
            if ((v81 & 1) == 0)
            {
              if (v49 >= 64)
              {
                goto LABEL_140;
              }

              goto LABEL_139;
            }

            if (v49 <= 64)
            {
              v96 = *(*(v12 + 24) + 16);
              v97 = swift_getAssociatedTypeWitness();
              v147 = &v147;
              v98 = (*(*(v97 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v97);
              swift_getAssociatedConformanceWitness();
              v99 = sub_25A998A78();
              MEMORY[0x28223BE20](v99);
              sub_25A9989C8();
              v100 = *(*(v12 + 32) + 8);
              v101 = sub_25A997D88();
              (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v101)
              {
LABEL_166:
                __break(1u);
                goto LABEL_167;
              }

              goto LABEL_139;
            }
          }

          MEMORY[0x28223BE20](v49);
          sub_25A895280();
          sub_25A9984A8();
          v86 = *(*(v12 + 32) + 8);
          v87 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v87)
          {
            goto LABEL_166;
          }
        }

LABEL_140:
        v102 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
        mlx_array_new_BOOL();
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
          {
            goto LABEL_149;
          }

          LOBYTE(v149[0]) = 0x80;
          if (sub_25A9984D8())
          {
            v35 = sub_25A9984C8();
            if (v35 < 8)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v84 = sub_25A9984D8();
            v35 = sub_25A9984C8();
            if ((v84 & 1) == 0)
            {
              if (v35 >= 8)
              {
LABEL_149:
                LOBYTE(v149[0]) = 127;
                v123 = sub_25A9984D8();
                MEMORY[0x28223BE20](v123);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v124 = *(*(v12 + 32) + 8);
                v125 = sub_25A997D88();
                v126 = *(v14 + 8);
                v126(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
                if ((v125 & 1) == 0)
                {
                  v127 = *v16;
                  v126(v16, MEMORY[0x277D84C58]);
                  LOBYTE(v149[0]) = v127;
                  v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 5);
                  goto LABEL_158;
                }

                __break(1u);
                goto LABEL_163;
              }

LABEL_148:
              sub_25A9984B8();
              goto LABEL_149;
            }

            if (v35 <= 8)
            {
              v117 = *(*(v12 + 24) + 16);
              v118 = swift_getAssociatedTypeWitness();
              v147 = &v147;
              v119 = (*(*(v118 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v118);
              swift_getAssociatedConformanceWitness();
              v120 = sub_25A998A78();
              MEMORY[0x28223BE20](v120);
              sub_25A9989C8();
              v121 = *(*(v12 + 32) + 8);
              v122 = sub_25A997D88();
              (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v122)
              {
LABEL_169:
                __break(1u);
                goto LABEL_170;
              }

              goto LABEL_148;
            }
          }

          MEMORY[0x28223BE20](v35);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v92 = *(*(v12 + 32) + 8);
          v93 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v93)
          {
            goto LABEL_169;
          }

          goto LABEL_149;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 17)
        {
          LOWORD(v149[0]) = 0x8000;
          if (sub_25A9984D8())
          {
            v69 = sub_25A9984C8();
            if (v69 < 16)
            {
LABEL_152:
              sub_25A9984B8();
              goto LABEL_153;
            }
          }

          else
          {
            v85 = sub_25A9984D8();
            v69 = sub_25A9984C8();
            if ((v85 & 1) == 0)
            {
              if (v69 >= 16)
              {
                goto LABEL_153;
              }

              goto LABEL_152;
            }

            if (v69 <= 16)
            {
              v128 = *(*(v12 + 24) + 16);
              v129 = swift_getAssociatedTypeWitness();
              v147 = &v147;
              v130 = (*(*(v129 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v129);
              swift_getAssociatedConformanceWitness();
              v131 = sub_25A998A78();
              MEMORY[0x28223BE20](v131);
              sub_25A9989C8();
              v132 = *(*(v12 + 32) + 8);
              v133 = sub_25A997D88();
              (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
              if (v133)
              {
                goto LABEL_170;
              }

              goto LABEL_152;
            }
          }

          MEMORY[0x28223BE20](v69);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v94 = *(*(v12 + 32) + 8);
          v95 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v95)
          {
LABEL_170:
            __break(1u);
          }
        }

LABEL_153:
        if ((sub_25A9984D8() & 1) == 0)
        {
          LOWORD(v149[0]) = 0x7FFF;
          v134 = sub_25A9984D8();
          if (v134)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v134);
            sub_25A8DF9A8();
            sub_25A9984A8();
            v135 = *(*(v12 + 32) + 8);
            v136 = sub_25A997D88();
            (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if (v136)
            {
LABEL_165:
              __break(1u);
              goto LABEL_166;
            }
          }
        }

        v137 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
        LOWORD(v149[0]) = v137;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      if (v17)
      {
        v51 = *(*(v12 + 24) + 16);
        v52 = swift_getAssociatedTypeWitness();
        v147 = &v147;
        v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v52);
        swift_getAssociatedConformanceWitness();
        v54 = sub_25A998A78();
        MEMORY[0x28223BE20](v54);
        sub_25A9989C8();
        v55 = *(*(v12 + 32) + 8);
        v56 = sub_25A997D98();
        v58 = *(v14 + 8);
        v14 += 8;
        v57 = v58;
        v17 = (v58)(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
        if ((v56 & 1) == 0)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v57 = *(v14 + 8);
      }

      v71 = *v16;
      v57(v16, MEMORY[0x277D84C58]);
      *&v149[0] = v71;
      v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_158;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v17)
          {
            v34 = sub_25A9984B8();
          }

          else
          {
            LOWORD(v18) = *v16;
            v34 = v18;
          }

          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (qword_27FA043D8 == -1)
          {
            goto LABEL_95;
          }

LABEL_161:
          swift_once();
LABEL_95:
          v74 = sub_25A998C58();
          v75 = *&v149[0];
          v76.n128_f32[0] = v34;
          v77 = mlx_array_new_float(v74, v76);
          *&v149[0] = mlx_array_new();
          mlx_astype(v149, v77, 12, *(v75 + 16));
          v78 = *&v149[0];
          type metadata accessor for MLXArray();
          v79 = swift_allocObject();
          *(v79 + 16) = v78;
          mlx_array_free(v77);

LABEL_159:
          __swift_destroy_boxed_opaque_existential_0Tm(v151);
          result = v79;
          goto LABEL_160;
        }

        if (v17)
        {
          v70 = sub_25A9984B8();
        }

        else
        {
          LOWORD(v18) = *v16;
          v70 = v18;
        }

        (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
        v48 = sub_25A8BA558(v70);
LABEL_102:
        v79 = v48;
        goto LABEL_159;
      }

LABEL_75:
      if (v17)
      {
        v59 = sub_25A9984B8();
      }

      else
      {
        LOWORD(v18) = *v16;
        v59 = v18;
      }

      v72 = (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
      v73.n128_f32[0] = v59;
      v11 = mlx_array_new_float(v72, v73);
      goto LABEL_158;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
LABEL_80:
        if (v17)
        {
          v68 = sub_25A9984B8();
        }

        else
        {
          v68 = *v16;
        }

        (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
        *v149 = v68;
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_158;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v149[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v30 = sub_25A9984C8();
          if (v30 < 64)
          {
LABEL_145:
            sub_25A9984B8();
            goto LABEL_146;
          }

          goto LABEL_122;
        }

        v83 = sub_25A9984D8();
        v30 = sub_25A9984C8();
        if (v83)
        {
          if (v30 <= 64)
          {
            v110 = *(*(v12 + 24) + 16);
            v111 = swift_getAssociatedTypeWitness();
            v147 = &v147;
            v112 = (*(*(v111 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v111);
            swift_getAssociatedConformanceWitness();
            v113 = sub_25A998A78();
            MEMORY[0x28223BE20](v113);
            sub_25A9989C8();
            v114 = *(*(v12 + 32) + 8);
            v115 = sub_25A997D88();
            (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
            if (v115)
            {
LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            goto LABEL_145;
          }

LABEL_122:
          MEMORY[0x28223BE20](v30);
          sub_25A8DF900();
          sub_25A9984A8();
          v90 = *(*(v12 + 32) + 8);
          v91 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v91)
          {
            goto LABEL_168;
          }

          goto LABEL_146;
        }

        if (v30 < 64)
        {
          goto LABEL_145;
        }
      }

LABEL_146:
      v116 = *v16;
      (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
      *&v149[0] = v116;
      v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_158;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v149[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v50 = sub_25A9984C8();
        if (v50 < 32)
        {
LABEL_142:
          sub_25A9984B8();
          goto LABEL_143;
        }
      }

      else
      {
        v82 = sub_25A9984D8();
        v50 = sub_25A9984C8();
        if ((v82 & 1) == 0)
        {
          if (v50 >= 32)
          {
            goto LABEL_143;
          }

          goto LABEL_142;
        }

        if (v50 <= 32)
        {
          v103 = *(*(v12 + 24) + 16);
          v104 = swift_getAssociatedTypeWitness();
          v147 = &v147;
          v105 = (*(*(v104 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v104);
          swift_getAssociatedConformanceWitness();
          v106 = sub_25A998A78();
          MEMORY[0x28223BE20](v106);
          sub_25A9989C8();
          v107 = *(*(v12 + 32) + 8);
          v108 = sub_25A997D88();
          (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
          if (v108)
          {
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          goto LABEL_142;
        }
      }

      MEMORY[0x28223BE20](v50);
      sub_25A8DF954();
      sub_25A9984A8();
      v88 = *(*(v12 + 32) + 8);
      v89 = sub_25A997D88();
      (*(v14 + 8))(&v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84C58]);
      if (v89)
      {
        goto LABEL_167;
      }
    }

LABEL_143:
    v109 = *v16;
    (*(v14 + 8))(v16, MEMORY[0x277D84C58]);
    mlx_array_new_int();
  }

  sub_25A87817C(v149, v151);
  v7 = v152;
  v8 = v153;
  v9 = __swift_project_boxed_opaque_existential_1(v151, v152);
  v10 = v9;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v149[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v149[0] = 0;
        *(&v149[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v140 = sub_25A998C68();
        MEMORY[0x25F850290](v140);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v42 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v44 + 16))(&v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v148) = v149[0];
          v11 = mlx_array_new_data(&v148, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_158;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v149[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        *&v149[0] = 0;
        *(&v149[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v143 = sub_25A998C68();
        MEMORY[0x25F850290](v143);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_178;
    }

    if (a2 == 10)
    {
      v37 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v39 + 16))(&v147 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v40 = sub_25A997C38();
      v41.n128_u32[0] = v149[0];
      v11 = mlx_array_new_float(v40, v41);
      goto LABEL_158;
    }

    if (a2 == 11)
    {
      v31 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v33 + 16))(&v147 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v34 = v148;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_161;
    }

    v45 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v47 + 16))(&v147 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v48 = sub_25A8BA558(*v149);
    goto LABEL_102;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_158;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v141 = sub_25A998C68();
      MEMORY[0x25F850290](v141);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_158;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v144 = sub_25A998C68();
      MEMORY[0x25F850290](v144);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v146 = sub_25A998C68();
      MEMORY[0x25F850290](v146);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v36 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_158:
        v138 = v11;
        type metadata accessor for MLXArray();
        v79 = swift_allocObject();
        *(v79 + 16) = v138;
        goto LABEL_159;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v142 = sub_25A998C68();
      MEMORY[0x25F850290](v142);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v149[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v149, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_158;
      }

      *&v149[0] = 0;
      *(&v149[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v145 = sub_25A998C68();
      MEMORY[0x25F850290](v145);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_178:
  __break(1u);
  return result;
}

void sub_25A8D555C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D5564);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D5648(int a1, unsigned __int8 a2)
{
  v160 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    LODWORD(v157[0]) = a1;
    v3 = mlx_array_new_data(v157, (MEMORY[0x277D84F90] + 32), 0, 3);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_160:
    v145 = *MEMORY[0x277D85DE8];
    return result;
  }

  v154 = *&a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84CC0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v156 = 0;
    memset(v155, 0, sizeof(v155));
    sub_25A878194(v155, &qword_27FA04950, &qword_25A9F9598);
    v158 = v6;
    v12 = sub_25A8DFA50();
    v159 = v12;
    LODWORD(v157[0]) = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v157, v6);
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v17)
            {
              v60 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v153 = &v153;
              v62 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v63 = sub_25A998A78();
              MEMORY[0x28223BE20](v63);
              sub_25A9989C8();
              v64 = *(*(v12 + 32) + 8);
              v65 = sub_25A997D98();
              (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if ((v65 & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            LOWORD(v155[0]) = -1;
            v66 = sub_25A9984D8();
            MEMORY[0x28223BE20](v66);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v67 = *(*(v12 + 32) + 8);
            v68 = sub_25A997D88();
            v69 = *(v14 + 8);
            v69(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if ((v68 & 1) == 0)
            {
              v70 = *v16;
              v69(v16, MEMORY[0x277D84CC0]);
              LOWORD(v155[0]) = v70;
              v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_158;
            }

            goto LABEL_165;
          }

          if (v17)
          {
            v19 = *(*(v12 + 24) + 16);
            v20 = swift_getAssociatedTypeWitness();
            v153 = &v153;
            v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v20);
            swift_getAssociatedConformanceWitness();
            v22 = sub_25A998A78();
            MEMORY[0x28223BE20](v22);
            sub_25A9989C8();
            v23 = *(*(v12 + 32) + 8);
            v24 = sub_25A997D98();
            (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if ((v24 & 1) == 0)
            {
              goto LABEL_166;
            }
          }

          LOBYTE(v155[0]) = -1;
          v25 = sub_25A9984D8();
          MEMORY[0x28223BE20](v25);
          sub_25A89522C();
          sub_25A9984A8();
          v26 = *(*(v12 + 32) + 8);
          v27 = sub_25A997D88();
          v28 = *(v14 + 8);
          v28(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if ((v27 & 1) == 0)
          {
            v29 = *v16;
            v28(v16, MEMORY[0x277D84CC0]);
            LOBYTE(v155[0]) = v29;
            v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_158;
          }

LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v155[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v49 = sub_25A9984C8();
            if (v49 < 64)
            {
LABEL_138:
              sub_25A9984B8();
              goto LABEL_139;
            }
          }

          else
          {
            v83 = sub_25A9984D8();
            v49 = sub_25A9984C8();
            if ((v83 & 1) == 0)
            {
              if (v49 >= 64)
              {
                goto LABEL_139;
              }

              goto LABEL_138;
            }

            if (v49 <= 64)
            {
              v98 = *(*(v12 + 24) + 16);
              v99 = swift_getAssociatedTypeWitness();
              v153 = &v153;
              v100 = (*(*(v99 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v99);
              swift_getAssociatedConformanceWitness();
              v101 = sub_25A998A78();
              MEMORY[0x28223BE20](v101);
              sub_25A9989C8();
              v102 = *(*(v12 + 32) + 8);
              v103 = sub_25A997D88();
              (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if (v103)
              {
LABEL_169:
                __break(1u);
                goto LABEL_170;
              }

              goto LABEL_138;
            }
          }

          MEMORY[0x28223BE20](v49);
          sub_25A895280();
          sub_25A9984A8();
          v88 = *(*(v12 + 32) + 8);
          v89 = sub_25A997D88();
          (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v89)
          {
            goto LABEL_169;
          }
        }

LABEL_139:
        v104 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84CC0]);
        mlx_array_new_BOOL();
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
          {
            goto LABEL_152;
          }

          LOBYTE(v155[0]) = 0x80;
          if (sub_25A9984D8())
          {
            v35 = sub_25A9984C8();
            if (v35 < 8)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v86 = sub_25A9984D8();
            v35 = sub_25A9984C8();
            if ((v86 & 1) == 0)
            {
              if (v35 >= 8)
              {
LABEL_152:
                LOBYTE(v155[0]) = 127;
                v128 = sub_25A9984D8();
                MEMORY[0x28223BE20](v128);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v129 = *(*(v12 + 32) + 8);
                v130 = sub_25A997D88();
                v131 = *(v14 + 8);
                v131(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
                if ((v130 & 1) == 0)
                {
                  v132 = *v16;
                  v131(v16, MEMORY[0x277D84CC0]);
                  LOBYTE(v155[0]) = v132;
                  v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 5);
                  goto LABEL_158;
                }

                __break(1u);
                goto LABEL_163;
              }

LABEL_151:
              sub_25A9984B8();
              goto LABEL_152;
            }

            if (v35 <= 8)
            {
              v122 = *(*(v12 + 24) + 16);
              v123 = swift_getAssociatedTypeWitness();
              v153 = &v153;
              v124 = (*(*(v123 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v123);
              swift_getAssociatedConformanceWitness();
              v125 = sub_25A998A78();
              MEMORY[0x28223BE20](v125);
              sub_25A9989C8();
              v126 = *(*(v12 + 32) + 8);
              v127 = sub_25A997D88();
              (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if (v127)
              {
LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

              goto LABEL_151;
            }
          }

          MEMORY[0x28223BE20](v35);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v94 = *(*(v12 + 32) + 8);
          v95 = sub_25A997D88();
          (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v95)
          {
            goto LABEL_172;
          }

          goto LABEL_152;
        }

        if ((v17 & 1) == 0 || sub_25A9984C8() < 17)
        {
LABEL_156:
          LOWORD(v155[0]) = 0x7FFF;
          v139 = sub_25A9984D8();
          MEMORY[0x28223BE20](v139);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v140 = *(*(v12 + 32) + 8);
          v141 = sub_25A997D88();
          v142 = *(v14 + 8);
          v142(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if ((v141 & 1) == 0)
          {
            v143 = *v16;
            v142(v16, MEMORY[0x277D84CC0]);
            LOWORD(v155[0]) = v143;
            v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 6);
            goto LABEL_158;
          }

LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        LOWORD(v155[0]) = 0x8000;
        if (sub_25A9984D8())
        {
          v72 = sub_25A9984C8();
          if (v72 < 16)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v87 = sub_25A9984D8();
          v72 = sub_25A9984C8();
          if ((v87 & 1) == 0)
          {
            if (v72 >= 16)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v72 <= 16)
          {
            v133 = *(*(v12 + 24) + 16);
            v134 = swift_getAssociatedTypeWitness();
            v153 = &v153;
            v135 = (*(*(v134 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v134);
            swift_getAssociatedConformanceWitness();
            v136 = sub_25A998A78();
            MEMORY[0x28223BE20](v136);
            sub_25A9989C8();
            v137 = *(*(v12 + 32) + 8);
            v138 = sub_25A997D88();
            (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if (v138)
            {
              goto LABEL_173;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v72);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v96 = *(*(v12 + 32) + 8);
        v97 = sub_25A997D88();
        (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if (v97)
        {
LABEL_173:
          __break(1u);
        }

        goto LABEL_156;
      }

      if (v17)
      {
        v51 = *(*(v12 + 24) + 16);
        v52 = swift_getAssociatedTypeWitness();
        v153 = &v153;
        v53 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
        MEMORY[0x28223BE20](v52);
        swift_getAssociatedConformanceWitness();
        v54 = sub_25A998A78();
        MEMORY[0x28223BE20](v54);
        sub_25A9989C8();
        v55 = *(*(v12 + 32) + 8);
        v56 = sub_25A997D98();
        v58 = *(v14 + 8);
        v14 += 8;
        v57 = v58;
        v17 = (v58)(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if ((v56 & 1) == 0)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v57 = *(v14 + 8);
      }

      v74 = *v16;
      v57(v16, MEMORY[0x277D84CC0]);
      *&v155[0] = v74;
      v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_158;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v17)
          {
            v34 = sub_25A9984B8();
          }

          else
          {
            v34 = *v16;
          }

          (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (qword_27FA043D8 == -1)
          {
            goto LABEL_96;
          }

LABEL_161:
          swift_once();
LABEL_96:
          v77 = sub_25A998C58();
          v78 = *&v155[0];
          v79.n128_f32[0] = v34;
          v80 = mlx_array_new_float(v77, v79);
          *&v155[0] = mlx_array_new();
          mlx_astype(v155, v80, 12, *(v78 + 16));
          v81 = *&v155[0];
          type metadata accessor for MLXArray();
          v82 = swift_allocObject();
          *(v82 + 16) = v81;
          mlx_array_free(v80);

LABEL_159:
          __swift_destroy_boxed_opaque_existential_0Tm(v157);
          result = v82;
          goto LABEL_160;
        }

        if (v17)
        {
          v73 = sub_25A9984B8();
        }

        else
        {
          LODWORD(v18) = *v16;
          v73 = v18;
        }

        (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        v48 = sub_25A8BA558(v73);
LABEL_101:
        v82 = v48;
        goto LABEL_159;
      }

LABEL_75:
      if (v17)
      {
        v59 = sub_25A9984B8();
      }

      else
      {
        v59 = *v16;
      }

      v75 = (*(v14 + 8))(v16, MEMORY[0x277D84CC0]);
      v76.n128_f32[0] = v59;
      v11 = mlx_array_new_float(v75, v76);
      goto LABEL_158;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v17)
        {
          v71 = sub_25A9984B8();
        }

        else
        {
          v71 = *v16;
        }

        (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        *v155 = v71;
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_158;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_149;
      }

      *&v155[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v30 = sub_25A9984C8();
        if (v30 < 64)
        {
LABEL_148:
          sub_25A9984B8();
          goto LABEL_149;
        }
      }

      else
      {
        v85 = sub_25A9984D8();
        v30 = sub_25A9984C8();
        if ((v85 & 1) == 0)
        {
          if (v30 < 64)
          {
            goto LABEL_148;
          }

LABEL_149:
          v121 = *v16;
          (*(v14 + 8))(v16, MEMORY[0x277D84CC0]);
          *&v155[0] = v121;
          v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        if (v30 <= 64)
        {
          v115 = *(*(v12 + 24) + 16);
          v116 = swift_getAssociatedTypeWitness();
          v153 = &v153;
          v117 = (*(*(v116 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v116);
          swift_getAssociatedConformanceWitness();
          v118 = sub_25A998A78();
          MEMORY[0x28223BE20](v118);
          sub_25A9989C8();
          v119 = *(*(v12 + 32) + 8);
          v120 = sub_25A997D88();
          (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v120)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          goto LABEL_148;
        }
      }

      MEMORY[0x28223BE20](v30);
      sub_25A8DF900();
      sub_25A9984A8();
      v92 = *(*(v12 + 32) + 8);
      v93 = sub_25A997D88();
      (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
      if (v93)
      {
        goto LABEL_171;
      }

      goto LABEL_149;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v155[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v50 = sub_25A9984C8();
        if (v50 < 32)
        {
LABEL_141:
          sub_25A9984B8();
          goto LABEL_142;
        }
      }

      else
      {
        v84 = sub_25A9984D8();
        v50 = sub_25A9984C8();
        if ((v84 & 1) == 0)
        {
          if (v50 >= 32)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }

        if (v50 <= 32)
        {
          v105 = *(*(v12 + 24) + 16);
          v106 = swift_getAssociatedTypeWitness();
          v153 = &v153;
          v107 = (*(*(v106 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v106);
          swift_getAssociatedConformanceWitness();
          v108 = sub_25A998A78();
          MEMORY[0x28223BE20](v108);
          sub_25A9989C8();
          v109 = *(*(v12 + 32) + 8);
          v110 = sub_25A997D88();
          (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v110)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          goto LABEL_141;
        }
      }

      MEMORY[0x28223BE20](v50);
      sub_25A8DF954();
      sub_25A9984A8();
      v90 = *(*(v12 + 32) + 8);
      v91 = sub_25A997D88();
      (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
      if (v91)
      {
        goto LABEL_170;
      }
    }

LABEL_142:
    if ((sub_25A9984D8() & 1) == 0)
    {
      LODWORD(v155[0]) = 0x7FFFFFFF;
      v111 = sub_25A9984D8();
      if (v111)
      {
        sub_25A9984B8();
      }

      else
      {
        MEMORY[0x28223BE20](v111);
        sub_25A8DF954();
        sub_25A9984A8();
        v112 = *(*(v12 + 32) + 8);
        v113 = sub_25A997D88();
        (*(v14 + 8))(&v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if (v113)
        {
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }
      }
    }

    v114 = *v16;
    (*(v14 + 8))(v16, MEMORY[0x277D84CC0]);
    mlx_array_new_int();
  }

  sub_25A87817C(v155, v157);
  v7 = v158;
  v8 = v159;
  v9 = __swift_project_boxed_opaque_existential_1(v157, v158);
  v10 = v9;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v155[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v155[0] = 0;
        *(&v155[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v146 = sub_25A998C68();
        MEMORY[0x25F850290](v146);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v42 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v44 + 16))(&v153 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v154) = v155[0];
          v11 = mlx_array_new_data(&v154, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_158;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v155[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        *&v155[0] = 0;
        *(&v155[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v149 = sub_25A998C68();
        MEMORY[0x25F850290](v149);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_181;
    }

    if (a2 == 10)
    {
      v37 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v39 + 16))(&v153 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v40 = sub_25A997C38();
      v41.n128_u32[0] = v155[0];
      v11 = mlx_array_new_float(v40, v41);
      goto LABEL_158;
    }

    if (a2 == 11)
    {
      v31 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v33 + 16))(&v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v34 = v154;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_161;
    }

    v45 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v47 + 16))(&v153 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v48 = sub_25A8BA558(*v155);
    goto LABEL_101;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v155[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_158;
      }

      *&v155[0] = 0;
      *(&v155[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v147 = sub_25A998C68();
      MEMORY[0x25F850290](v147);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v155[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_158;
      }

      *&v155[0] = 0;
      *(&v155[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v150 = sub_25A998C68();
      MEMORY[0x25F850290](v150);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v155[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      *&v155[0] = 0;
      *(&v155[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v152 = sub_25A998C68();
      MEMORY[0x25F850290](v152);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v36 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v155[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_158:
        v144 = v11;
        type metadata accessor for MLXArray();
        v82 = swift_allocObject();
        *(v82 + 16) = v144;
        goto LABEL_159;
      }

      *&v155[0] = 0;
      *(&v155[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v148 = sub_25A998C68();
      MEMORY[0x25F850290](v148);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v155[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v155, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_158;
      }

      *&v155[0] = 0;
      *(&v155[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v151 = sub_25A998C68();
      MEMORY[0x25F850290](v151);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_181:
  __break(1u);
  return result;
}

void sub_25A8D81B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D81B8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D829C(uint64_t a1, unsigned __int8 a2)
{
  v168 = *MEMORY[0x277D85DE8];
  if (a2 == 4)
  {
    v165[0] = a1;
    v3 = mlx_array_new_data(v165, (MEMORY[0x277D84F90] + 32), 0, 4);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
LABEL_164:
    v153 = *MEMORY[0x277D85DE8];
    return result;
  }

  v162 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84D38];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v164 = 0;
    memset(v163, 0, sizeof(v163));
    sub_25A878194(v163, &qword_27FA04950, &qword_25A9F9598);
    v166 = v6;
    v12 = sub_25A8DFF20();
    v167 = v12;
    v165[0] = a1;
    v13 = __swift_project_boxed_opaque_existential_1(v165, v6);
    v161 = &v161;
    v14 = *(v6 - 8);
    v15 = *(v14 + 64);
    MEMORY[0x28223BE20](v13);
    v16 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v16);
    v17 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v17)
            {
              v62 = *(*(v12 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v64 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v65 = sub_25A998A78();
              MEMORY[0x28223BE20](v65);
              sub_25A9989C8();
              v66 = *(*(v12 + 32) + 8);
              v67 = sub_25A997D98();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
              if ((v67 & 1) == 0)
              {
                goto LABEL_174;
              }
            }

            LOWORD(v163[0]) = -1;
            v68 = sub_25A9984D8();
            MEMORY[0x28223BE20](v68);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v69 = *(*(v12 + 32) + 8);
            v70 = sub_25A997D88();
            v71 = *(v14 + 8);
            v71(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if ((v70 & 1) == 0)
            {
              v72 = *v16;
              v71(v16, MEMORY[0x277D84D38]);
              LOWORD(v163[0]) = v72;
              v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_162;
            }

            goto LABEL_171;
          }

          if (v17)
          {
            v18 = *(*(v12 + 24) + 16);
            v19 = swift_getAssociatedTypeWitness();
            v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v19);
            swift_getAssociatedConformanceWitness();
            v21 = sub_25A998A78();
            MEMORY[0x28223BE20](v21);
            sub_25A9989C8();
            v22 = *(*(v12 + 32) + 8);
            v23 = sub_25A997D98();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if ((v23 & 1) == 0)
            {
              goto LABEL_173;
            }
          }

          LOBYTE(v163[0]) = -1;
          v24 = sub_25A9984D8();
          MEMORY[0x28223BE20](v24);
          sub_25A89522C();
          sub_25A9984A8();
          v25 = *(*(v12 + 32) + 8);
          v26 = sub_25A997D88();
          v27 = *(v14 + 8);
          v27(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v26 & 1) == 0)
          {
            v28 = *v16;
            v27(v16, MEMORY[0x277D84D38]);
            LOBYTE(v163[0]) = v28;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_162;
          }

LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
          goto LABEL_175;
        }

        if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v163[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v48 = sub_25A9984C8();
            if (v48 < 64)
            {
LABEL_137:
              sub_25A9984B8();
              goto LABEL_138;
            }
          }

          else
          {
            v84 = sub_25A9984D8();
            v48 = sub_25A9984C8();
            if ((v84 & 1) == 0)
            {
              if (v48 >= 64)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            if (v48 <= 64)
            {
              v99 = *(*(v12 + 24) + 16);
              v100 = swift_getAssociatedTypeWitness();
              v101 = (*(*(v100 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](v100);
              swift_getAssociatedConformanceWitness();
              v102 = sub_25A998A78();
              MEMORY[0x28223BE20](v102);
              sub_25A9989C8();
              v103 = *(*(v12 + 32) + 8);
              v104 = sub_25A997D88();
              (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
              if (v104)
              {
LABEL_177:
                __break(1u);
                goto LABEL_178;
              }

              goto LABEL_137;
            }
          }

          MEMORY[0x28223BE20](v48);
          sub_25A895280();
          sub_25A9984A8();
          v89 = *(*(v12 + 32) + 8);
          v90 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v90)
          {
            goto LABEL_177;
          }
        }

LABEL_138:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
          v105 = sub_25A9984D8();
          if (v105)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v105);
            sub_25A895280();
            sub_25A9984A8();
            v106 = *(*(v12 + 32) + 8);
            v107 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v107)
            {
LABEL_175:
              __break(1u);
              goto LABEL_176;
            }
          }
        }

        v108 = *v16;
        (*(v14 + 8))(v16, MEMORY[0x277D84D38]);
        mlx_array_new_BOOL();
      }

      if (a2 == 3)
      {
        if (v17)
        {
          v50 = *(*(v12 + 24) + 16);
          v51 = swift_getAssociatedTypeWitness();
          v52 = (*(*(v51 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v51);
          swift_getAssociatedConformanceWitness();
          v53 = sub_25A998A78();
          MEMORY[0x28223BE20](v53);
          sub_25A9989C8();
          v54 = *(*(v12 + 32) + 8);
          v55 = sub_25A997D98();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v55 & 1) == 0)
          {
            goto LABEL_172;
          }
        }

        LODWORD(v163[0]) = -1;
        v56 = sub_25A9984D8();
        MEMORY[0x28223BE20](v56);
        sub_25A8DFA50();
        sub_25A9984A8();
        v57 = *(*(v12 + 32) + 8);
        v58 = sub_25A997D88();
        v59 = *(v14 + 8);
        v59(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if ((v58 & 1) == 0)
        {
          v60 = *v16;
          v59(v16, MEMORY[0x277D84D38]);
          LODWORD(v163[0]) = v60;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_162;
        }

        goto LABEL_169;
      }

      if (a2 == 5)
      {
        if ((v17 & 1) == 0 || sub_25A9984C8() < 9)
        {
LABEL_156:
          LOBYTE(v163[0]) = 127;
          v136 = sub_25A9984D8();
          MEMORY[0x28223BE20](v136);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v137 = *(*(v12 + 32) + 8);
          v138 = sub_25A997D88();
          v139 = *(v14 + 8);
          v139(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v138 & 1) == 0)
          {
            v140 = *v16;
            v139(v16, MEMORY[0x277D84D38]);
            LOBYTE(v163[0]) = v140;
            v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_162;
          }

          goto LABEL_167;
        }

        LOBYTE(v163[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v34 = sub_25A9984C8();
          if (v34 < 8)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v87 = sub_25A9984D8();
          v34 = sub_25A9984C8();
          if ((v87 & 1) == 0)
          {
            if (v34 >= 8)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v34 <= 8)
          {
            v130 = *(*(v12 + 24) + 16);
            v131 = swift_getAssociatedTypeWitness();
            v132 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v131);
            swift_getAssociatedConformanceWitness();
            v133 = sub_25A998A78();
            MEMORY[0x28223BE20](v133);
            sub_25A9989C8();
            v134 = *(*(v12 + 32) + 8);
            v135 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v135)
            {
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v34);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v95 = *(*(v12 + 32) + 8);
        v96 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v96)
        {
          goto LABEL_180;
        }

        goto LABEL_156;
      }

      if ((v17 & 1) == 0 || sub_25A9984C8() < 17)
      {
LABEL_160:
        LOWORD(v163[0]) = 0x7FFF;
        v147 = sub_25A9984D8();
        MEMORY[0x28223BE20](v147);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v148 = *(*(v12 + 32) + 8);
        v149 = sub_25A997D88();
        v150 = *(v14 + 8);
        v150(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if ((v149 & 1) == 0)
        {
          v151 = *v16;
          v150(v16, MEMORY[0x277D84D38]);
          LOWORD(v163[0]) = v151;
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_162;
        }

        goto LABEL_168;
      }

      LOWORD(v163[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v74 = sub_25A9984C8();
        if (v74 < 16)
        {
LABEL_159:
          sub_25A9984B8();
          goto LABEL_160;
        }
      }

      else
      {
        v88 = sub_25A9984D8();
        v74 = sub_25A9984C8();
        if ((v88 & 1) == 0)
        {
          if (v74 >= 16)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }

        if (v74 <= 16)
        {
          v141 = *(*(v12 + 24) + 16);
          v142 = swift_getAssociatedTypeWitness();
          v143 = (*(*(v142 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v142);
          swift_getAssociatedConformanceWitness();
          v144 = sub_25A998A78();
          MEMORY[0x28223BE20](v144);
          sub_25A9989C8();
          v145 = *(*(v12 + 32) + 8);
          v146 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v146)
          {
            goto LABEL_181;
          }

          goto LABEL_159;
        }
      }

      MEMORY[0x28223BE20](v74);
      sub_25A8DF9A8();
      sub_25A9984A8();
      v97 = *(*(v12 + 32) + 8);
      v98 = sub_25A997D88();
      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
      if (v98)
      {
LABEL_181:
        __break(1u);
      }

      goto LABEL_160;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v17)
        {
          v61 = sub_25A9984B8();
        }

        else
        {
          v61 = *v16;
        }

        v76 = (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        v77.n128_f32[0] = v61;
        v11 = mlx_array_new_float(v76, v77);
        goto LABEL_162;
      }

      if (a2 == 11)
      {
        if (v17)
        {
          v33 = sub_25A9984B8();
        }

        else
        {
          v33 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_165:
        swift_once();
LABEL_95:
        v78 = sub_25A998C58();
        v79 = *&v163[0];
        v80.n128_f32[0] = v33;
        v81 = mlx_array_new_float(v78, v80);
        *&v163[0] = mlx_array_new();
        mlx_astype(v163, v81, 12, *(v79 + 16));
        v82 = *&v163[0];
        type metadata accessor for MLXArray();
        v83 = swift_allocObject();
        *(v83 + 16) = v82;
        mlx_array_free(v81);

LABEL_163:
        __swift_destroy_boxed_opaque_existential_0Tm(v165);
        result = v83;
        goto LABEL_164;
      }

      if (v17)
      {
        v75 = sub_25A9984B8();
      }

      else
      {
        v75 = *v16;
      }

      (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
      v47 = sub_25A8BA558(v75);
LABEL_100:
      v83 = v47;
      goto LABEL_163;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v17)
        {
          v73 = sub_25A9984B8();
        }

        else
        {
          v73 = *v16;
        }

        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        *v163 = v73;
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_162;
      }

      if ((v17 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v163[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v29 = sub_25A9984C8();
          if (v29 < 64)
          {
LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }
        }

        else
        {
          v86 = sub_25A9984D8();
          v29 = sub_25A9984C8();
          if ((v86 & 1) == 0)
          {
            if (v29 >= 64)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }

          if (v29 <= 64)
          {
            v120 = *(*(v12 + 24) + 16);
            v121 = swift_getAssociatedTypeWitness();
            v122 = (*(*(v121 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            MEMORY[0x28223BE20](v121);
            swift_getAssociatedConformanceWitness();
            v123 = sub_25A998A78();
            MEMORY[0x28223BE20](v123);
            sub_25A9989C8();
            v124 = *(*(v12 + 32) + 8);
            v125 = sub_25A997D88();
            (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v125)
            {
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

            goto LABEL_148;
          }
        }

        MEMORY[0x28223BE20](v29);
        sub_25A8DF900();
        sub_25A9984A8();
        v93 = *(*(v12 + 32) + 8);
        v94 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v94)
        {
          goto LABEL_179;
        }
      }

LABEL_149:
      if ((sub_25A9984D8() & 1) == 0)
      {
        *&v163[0] = 0x7FFFFFFFFFFFFFFFLL;
        v126 = sub_25A9984D8();
        if (v126)
        {
          sub_25A9984B8();
        }

        else
        {
          MEMORY[0x28223BE20](v126);
          sub_25A8DF900();
          sub_25A9984A8();
          v127 = *(*(v12 + 32) + 8);
          v128 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v128)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }
        }
      }

      v129 = *v16;
      (*(v14 + 8))(v16, MEMORY[0x277D84D38]);
      *&v163[0] = v129;
      v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_162;
    }

    if ((v17 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v163[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v49 = sub_25A9984C8();
        if (v49 < 32)
        {
LABEL_144:
          sub_25A9984B8();
          goto LABEL_145;
        }

LABEL_118:
        MEMORY[0x28223BE20](v49);
        sub_25A8DF954();
        sub_25A9984A8();
        v91 = *(*(v12 + 32) + 8);
        v92 = sub_25A997D88();
        (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v92)
        {
          goto LABEL_178;
        }

        goto LABEL_145;
      }

      v85 = sub_25A9984D8();
      v49 = sub_25A9984C8();
      if (v85)
      {
        if (v49 <= 32)
        {
          v109 = *(*(v12 + 24) + 16);
          v110 = swift_getAssociatedTypeWitness();
          v111 = (*(*(v110 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          MEMORY[0x28223BE20](v110);
          swift_getAssociatedConformanceWitness();
          v112 = sub_25A998A78();
          MEMORY[0x28223BE20](v112);
          sub_25A9989C8();
          v113 = *(*(v12 + 32) + 8);
          v114 = sub_25A997D88();
          (*(v14 + 8))(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v114)
          {
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          goto LABEL_144;
        }

        goto LABEL_118;
      }

      if (v49 < 32)
      {
        goto LABEL_144;
      }
    }

LABEL_145:
    LODWORD(v163[0]) = 0x7FFFFFFF;
    v115 = sub_25A9984D8();
    MEMORY[0x28223BE20](v115);
    sub_25A8DF954();
    sub_25A9984A8();
    v116 = *(*(v12 + 32) + 8);
    v117 = sub_25A997D88();
    v118 = *(v14 + 8);
    v118(&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
    if ((v117 & 1) == 0)
    {
      v119 = *v16;
      v118(v16, MEMORY[0x277D84D38]);
      mlx_array_new_int();
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  sub_25A87817C(v163, v165);
  v7 = v166;
  v8 = v167;
  v9 = __swift_project_boxed_opaque_existential_1(v165, v166);
  v10 = v9;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v163[0]) & 1) == 0)
        {
          mlx_array_new_int();
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v154 = sub_25A998C68();
        MEMORY[0x25F850290](v154);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          v41 = *(*(v7 - 8) + 64);
          MEMORY[0x28223BE20](v9);
          (*(v43 + 16))(&v161 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v162) = v163[0];
          v11 = mlx_array_new_data(&v162, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_162;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v163[0]) & 1) == 0)
        {
          v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_162;
        }

        *&v163[0] = 0;
        *(&v163[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v157 = sub_25A998C68();
        MEMORY[0x25F850290](v157);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_189;
    }

    if (a2 == 10)
    {
      v36 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v38 + 16))(&v161 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      v39 = sub_25A997C38();
      v40.n128_u32[0] = v163[0];
      v11 = mlx_array_new_float(v39, v40);
      goto LABEL_162;
    }

    if (a2 == 11)
    {
      v30 = *(*(v7 - 8) + 64);
      MEMORY[0x28223BE20](v9);
      (*(v32 + 16))(&v161 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v33 = *&v162;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_165;
    }

    v44 = *(*(v7 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v46 + 16))(&v161 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v47 = sub_25A8BA558(*v163);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v155 = sub_25A998C68();
      MEMORY[0x25F850290](v155);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v158 = sub_25A998C68();
      MEMORY[0x25F850290](v158);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v160 = sub_25A998C68();
      MEMORY[0x25F850290](v160);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v35 = *(v8 + 16);
      sub_25A997D38();
      mlx_array_new_BOOL();
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_162:
        v152 = v11;
        type metadata accessor for MLXArray();
        v83 = swift_allocObject();
        *(v83 + 16) = v152;
        goto LABEL_163;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v156 = sub_25A998C68();
      MEMORY[0x25F850290](v156);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v163[0]) & 1) == 0)
      {
        v11 = mlx_array_new_data(v163, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_162;
      }

      *&v163[0] = 0;
      *(&v163[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v159 = sub_25A998C68();
      MEMORY[0x25F850290](v159);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_189:
  __break(1u);
  return result;
}

void sub_25A8DB070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DB078);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DB15C(unsigned __int8 a1, __n128 a2)
{
  v2 = a2.n128_u16[0];
  v3 = a1;
  v36[5] = *MEMORY[0x277D85DE8];
  if (a1 == 9)
  {
    LOWORD(v36[0]) = a2.n128_u16[0];
    v4 = mlx_array_new_data(v36, (MEMORY[0x277D84F90] + 32), 0, 9);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v4;
LABEL_37:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = MEMORY[0x277D84DC8];
  v36[3] = MEMORY[0x277D84DC8];
  v36[4] = sub_25A8DFBA0();
  LOWORD(v36[0]) = v2;
  v7 = __swift_project_boxed_opaque_existential_1(v36, v6);
  if (v3 > 5)
  {
    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 == 11)
        {
          _H8 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          v11 = sub_25A998C58();
          __asm { FCVT            S0, H8 }

          v17 = v34;
          v18 = mlx_array_new_float(v11, _Q0);
          v34 = mlx_array_new();
          mlx_astype(&v34, v18, 12, *(v17 + 16));
          v19 = v34;
          type metadata accessor for MLXArray();
          v20 = swift_allocObject();
          *(v20 + 16) = v19;
          mlx_array_free(v18);
        }

        else
        {
          _H0 = *v7;
          __asm { FCVT            D0, H0 }

          v20 = sub_25A8BA558(_D0);
        }

        goto LABEL_36;
      }

      _Q0.n128_u16[0] = *v7;
      __asm { FCVT            S0, H0 }

      v9 = mlx_array_new_float(v7, _Q0);
LABEL_35:
      v22 = v9;
      type metadata accessor for MLXArray();
      v20 = swift_allocObject();
      *(v20 + 16) = v22;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      result = v20;
      goto LABEL_37;
    }

    if (v3 == 6)
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DEBDC(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 7)
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DED68(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x100000000) == 0)
      {
        mlx_array_new_int();
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v29 = sub_25A998C68();
      MEMORY[0x25F850290](v29);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DEF24(&v34, _Q0.n128_f32[0]);
      if ((v35 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v32 = sub_25A998C68();
      MEMORY[0x25F850290](v32);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DE768(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x100000000) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 4)
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DE8CC(&v34, _Q0.n128_f32[0]);
      if ((v35 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v30 = sub_25A998C68();
      MEMORY[0x25F850290](v30);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DEA2C(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v33 = sub_25A998C68();
      MEMORY[0x25F850290](v33);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v3)
    {
      v21 = *v7;
      mlx_array_new_BOOL();
    }

    if (v3 == 1)
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DE4D8(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v28 = sub_25A998C68();
      MEMORY[0x25F850290](v28);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      _Q0.n128_u16[0] = *v7;
      sub_25A8DE634(&v34, _Q0.n128_f32[0]);
      if ((v34 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v34, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_35;
      }

      v34 = 0;
      v35 = 0xE000000000000000;
      sub_25A9985F8();
      v31 = sub_25A998C68();
      MEMORY[0x25F850290](v31);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8DBC48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DBC50);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DCB60(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

BOOL sub_25A8DCBB8(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v6 < -8 || v6 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOBYTE(v13) = 0;
LABEL_24:
          v7 = 0;
          LOBYTE(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DCD2C(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v6 < -16 || v6 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOWORD(v13) = 0;
LABEL_24:
          v7 = 0;
          LOWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DCEA0(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_25A8DD010(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = sub_25A9981F8();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = sub_25A9981E8();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_25A8DD150(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25A9981F8(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DD304(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25A9981F8(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DD4B8(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_39;
  }

  v8 = sub_25A9981F8();
  if (v8 > 31)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_39:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
      v14 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_25A8DD66C(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_25A9981F8();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_25A9981E8();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_25A8DD85C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A998218();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_25A998208();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v13 < -8 || v13 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -8)
            {
              goto LABEL_9;
            }

            v6 = LOBYTE(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 8)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOBYTE(v14) = 0;
LABEL_23:
          v7 = 0;
          LOBYTE(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DD9D0(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A998218();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_25A998208();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -16)
            {
              goto LABEL_9;
            }

            v6 = LOWORD(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 16)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOWORD(v14) = 0;
LABEL_23:
          v7 = 0;
          LOWORD(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOWORD(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DDB44(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = v3 | LODWORD(a2) & 0x7FFFFF;
  if (v5)
  {
    v5 = 0;
    v6 = 1;
    if (v3 == 255)
    {
      result = 0;
    }

    else
    {
      result = 0;
      if (a2 > -1.0)
      {
        v8 = sub_25A998218();
        if (v8 <= 31)
        {
          v9 = v8;
          v10 = sub_25A998208();
          v11 = v10 + __clz(__rbit32(v4));
          v12 = v9 - v11;
          if (__OFSUB__(v9, v11))
          {
            __break(1u);
          }

          else
          {
            if (v11 > 31)
            {
              if (v12 < -32 || v12 > 32)
              {
                goto LABEL_13;
              }
            }

            else if (v12 < -32 || v12 > 32)
            {
              goto LABEL_13;
            }

            if ((v12 & 0x8000000000000000) == 0)
            {
              if (v12 != 32)
              {
                v13 = v4 << v12;
                if (v9 < 0)
                {
LABEL_18:
                  v14 = 0;
                  goto LABEL_25;
                }

LABEL_24:
                v14 = 1 << v9;
                goto LABEL_25;
              }

              goto LABEL_13;
            }
          }

          if (v12 != -32)
          {
            v13 = v4 >> (v11 - v9);
            if (v9 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

LABEL_13:
          v13 = 0;
          v14 = 0;
          if (v9 < 0)
          {
LABEL_25:
            v6 = 0;
            v5 = v13 | v14;
            result = v9 >= v10;
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v5 = 0;
        result = 0;
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
    result = 1;
  }

LABEL_26:
  *a1 = v5;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25A8DDC8C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  if (!(v3 | v4))
  {
    v6 = 0;
    v7 = 0;
    result = 1;
    goto LABEL_21;
  }

  result = 0;
  v6 = 0;
  v7 = 1;
  if (v3 != 255 && a2 > -1.0)
  {
    v8 = sub_25A998218();
    if (v8 > 63)
    {
      v6 = 0;
      result = 0;
      v7 = 1;
      goto LABEL_21;
    }

    v9 = v8;
    v10 = sub_25A998208();
    v11 = v10 + __clz(__rbit32(v4));
    v12 = v9 - v11;
    if (__OFSUB__(v9, v11))
    {
      __break(1u);
    }

    else
    {
      if (v11 <= 63)
      {
        if (v12 < -64 || v12 > 64)
        {
LABEL_9:
          v12 = 0;
          v13 = 0;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        if (v12 < 0)
        {
          if (v12 == -64)
          {
            goto LABEL_9;
          }

          v12 = v4 >> (v11 - v9);
        }

        else
        {
          if (v12 == 64)
          {
            goto LABEL_9;
          }

          v12 = v4 << v12;
        }

LABEL_17:
        if ((v9 & 0x8000000000000000) == 0)
        {
LABEL_19:
          v13 = 1 << v9;
          goto LABEL_20;
        }

        v13 = 0;
LABEL_20:
        v7 = 0;
        result = v9 >= v10;
        v6 = v12 | v13;
        goto LABEL_21;
      }

      if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
      {
        goto LABEL_12;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 < 0x20)
        {
          LODWORD(v12) = v4 << v12;
          goto LABEL_16;
        }

LABEL_12:
        LODWORD(v12) = 0;
LABEL_16:
        v12 = v12;
        goto LABEL_17;
      }
    }

    if (v12 > 0xFFFFFFFFFFFFFFE0)
    {
      LODWORD(v12) = v4 >> (v11 - v9);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_21:
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_25A8DDDFC(_BYTE *a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25A998218(), v8 > 7))
  {
LABEL_37:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25A998208();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 7)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOBYTE(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DDFB0(uint64_t a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25A998218(), v8 > 15))
  {
LABEL_37:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25A998208();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 15)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOWORD(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DE164(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    LODWORD(v12) = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v4 == 255)
  {
    goto LABEL_37;
  }

  v7 = sub_25A998218();
  if (v7 > 31)
  {
    goto LABEL_37;
  }

  v8 = v7;
  v9 = sub_25A998208();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
LABEL_27:
    if (a2 < 0.0)
    {
      LOBYTE(v6) = 0;
      LODWORD(v12) = 0x80000000;
      goto LABEL_25;
    }

LABEL_37:
    LODWORD(v12) = 0;
    result = 0;
    LOBYTE(v6) = 1;
    goto LABEL_25;
  }

  if (v11 > 31)
  {
    if (v12 < -32 || v12 > 32)
    {
      goto LABEL_11;
    }
  }

  else if (v12 < -32 || v12 > 32)
  {
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_32;
  }

  if (v12 != 32)
  {
    v6 = v5 << v12;
    if (v8 != 31)
    {
      goto LABEL_17;
    }

LABEL_34:
    if (a2 < 0.0 && !v6)
    {
      LODWORD(v12) = 0x80000000;
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_11:
  if (v8 == 31)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v6 = 0;
  if (v8 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v13 = 1 << v8;
LABEL_20:
  while (1)
  {
    v12 = v6 | v13;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v6 & 0x80000000) == 0)
    {
      LOBYTE(v6) = 0;
      LODWORD(v12) = -v12;
      goto LABEL_25;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (v12 == -32)
    {
      goto LABEL_11;
    }

    v6 = v5 >> -v12;
    if (v8 == 31)
    {
      goto LABEL_34;
    }

LABEL_17:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v13 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_31;
  }

  LOBYTE(v6) = 0;
LABEL_25:
  *a1 = v12;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25A8DE2F4(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LOBYTE(a2);
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_25A998218(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_25A998208();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (a2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (a2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (a2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}