void *sub_1CF769068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v62 = a5;
  v63 = a6;
  v66 = a3;
  v67 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v56 - v13;
  v64 = v7;
  v15 = *(*(v7 + 16) + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4830, &unk_1CFA052E0);
  v58 = swift_dynamicCastClassUnconditional();
  if (a1 >> 62)
  {
    v16 = sub_1CF9E7818();
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = a1;
  v60 = v15;
  v61 = v14;
  v65 = a7;
  if (!v16)
  {

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v74[0] = MEMORY[0x1E69E7CC0];

  result = sub_1CEFFA19C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return result;
  }

  v57 = a4;
  v18 = 0;
  v19 = v74[0];
  v69 = a1 & 0xC000000000000001;
  v70 = v16;
  do
  {
    v71 = v19;
    if (v69)
    {
      v20 = MEMORY[0x1D3869C30](v18, a1);
    }

    else
    {
      v20 = *(a1 + 8 * v18 + 32);
    }

    v21 = v20;
    v22 = [v20 itemIdentifier];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = sub_1CF4C4044();

    if (v23)
    {
      v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = sub_1CF025150(0x80007uLL, v24, v25);
      v28 = v27;
      v30 = v29;
      v32 = v31;

      v33 = v28;
      a1 = v68;
      v34 = MEMORY[0x1D3868C10](v26, v33, v30, v32);
      v36 = v35;

      VFSItemID.init(parsing:)(v34, v36, v75);

      v37 = v75[1];
      if (LOBYTE(v75[1]) != 255)
      {
        v38 = v75[0];

        v39 = 0;
        goto LABEL_14;
      }
    }

    else
    {
    }

    v38 = [v21 itemIdentifier];

    v37 = 0;
    v39 = 1;
LABEL_14:
    v19 = v71;
    v74[0] = v71;
    v41 = *(v71 + 16);
    v40 = *(v71 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_1CEFFA19C((v40 > 1), v41 + 1, 1);
      v19 = v74[0];
    }

    *(v19 + 16) = v41 + 1;
    v42 = v19 + 16 * v41;
    *(v42 + 32) = v38;
    ++v18;
    *(v42 + 40) = v37;
    *(v42 + 41) = v39;
  }

  while (v70 != v18);
  a7 = v65;
  a4 = v57;
LABEL_19:
  v43 = v19;
  v44 = v59;
  v45 = sub_1CF203FD4(v19, v67 & 1, v66, a4, a7);
  if (v44)
  {
  }

  else
  {
    v46 = a4;
    v47 = v45;
    v75[111] = v43;
    v75[112] = 0;
    v75[113] = a1;
    v75[114] = 0;
    v76 = 0;

    sub_1CEFFA1DC(v75);
    v48 = v75[2];
    if (v75[2])
    {
      v49 = v75[0];
      v50 = v75[1];
      do
      {
        if (*(v47 + 16))
        {
          v51 = sub_1CEFF4768(v49, v50 & 0x1FF);
          if (v52)
          {
            v53 = (*(v47 + 56) + 888 * v51);
            memcpy(v73, v53, sizeof(v73));
            memmove(v74, v53, 0x378uLL);
            nullsub_1(v74);
            sub_1CEFF4514(v73, &v72);
          }

          else
          {
            sub_1CF77239C(v74);
          }

          memcpy(v75, v74, 0x378uLL);
        }

        else
        {
          sub_1CF77239C(v75);
        }

        memcpy(v74, v75, sizeof(v74));
        v54 = sub_1CF9E5A58();
        v55 = v61;
        (*(*(v54 - 8) + 56))(v61, 1, 1, v54);
        sub_1CF765380(v48, v74, v67, v55, v66, v46, v62, v63, v65);

        sub_1CEFD0994(v49, v50, BYTE1(v50) & 1);
        sub_1CEFCCC44(v55, &unk_1EC4BE310, qword_1CF9FCBE0);
        memcpy(v73, v74, sizeof(v73));
        sub_1CEFCCC44(v73, &unk_1EC4C46E0, &unk_1CFA16860);
        sub_1CEFFA1DC(v75);
        v49 = v75[0];
        v50 = v75[1];
        v48 = v75[2];
      }

      while (v75[2]);
    }

    if ((v67 & 4) != 0)
    {
      sub_1CF764128(v68, v66, v46, v62, v63, v65);
    }
  }
}

uint64_t sub_1CF769644@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1CF680F04(0, v4, 0);
    v5 = v12;
    v6 = (v3 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      v9 = sub_1CF9E6888();

      v11 = *(v12 + 16);
      v10 = *(v12 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1CF680F04((v10 > 1), v11 + 1, 1);
      }

      *(v12 + 16) = v11 + 1;
      *(v12 + 8 * v11 + 32) = v9;
      v6 += 2;
      --v4;
    }

    while (v4);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1CF769738(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = *(a1 + 8);
  v36 = 0;
  if (!v11)
  {
    v15 = a4;
    v37 = v10;
    v38 = 0;
    v34 = a5;
    v16 = a6;
    v17 = a7;
    v18 = a8;
    result = sub_1CF77EB9C(&v37, a5, a6, a7, a8, a9);
    if (v9)
    {
      goto LABEL_8;
    }

    if (result)
    {
      result = 1;
      goto LABEL_8;
    }

    v32 = 0;

    v33 = &v31;
    v20 = *(v15 + 16);
    if (a3)
    {
      v21 = 0;
    }

    else
    {
      v21 = a2;
    }

    v40 = v21;
    v41 = 0;
    v42 = v10;
    v44 = 0;
    v43 = 0;
    v45 = 0;
    v35 = -1;
    v22 = fpfs_openfdbyhandle();
    if (v22 < 0)
    {
      v27 = v35;
      v28 = MEMORY[0x1D38683F0]();
      if (v27 < 0)
      {
        LODWORD(v37) = 0;
        BYTE4(v37) = 1;
      }

      else
      {
        LODWORD(v37) = v35;
        BYTE4(v37) = 0;
      }

      v39 = 0;
      v29 = sub_1CF19BBE4(v28, &v37);
      sub_1CF1969CC(&v37);
      swift_willThrow();

      v30 = v29;
      LODWORD(v37) = sub_1CF9E5308();
      sub_1CF196978();
      sub_1CF9E5658();

      v26 = v29;
    }

    else
    {
      v23 = v22;

      MEMORY[0x1EEE9AC00](v24);
      v25 = v32;
      sub_1CEFE1894(sub_1CF77EC8C);
      if (!v25)
      {
        close(v23);
        v10 = v36;
        a8 = v18;
        a7 = v17;
        a6 = v16;
        a5 = v34;
        a4 = v15;
        goto LABEL_4;
      }

      close(v23);
      v26 = v25;
    }

    result = 2;
    goto LABEL_8;
  }

  if (v11 != 1)
  {
    result = 0;
    goto LABEL_8;
  }

  v36 = v10;
LABEL_4:
  result = sub_1CF76B82C(v10, a4, a5, a6, a7, a8, a9);
LABEL_8:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF7699E0(NSObject *a1, int a2, uint64_t a3, void *a4, unint64_t *a5, void *a6)
{
  sub_1CF774BF8(a1, a2, a3, a4, a5, a6);
}

void sub_1CF769A20(void *a1, int a2, void (*a3)(id), void *a4, uint64_t a5, uint64_t a6)
{
  v180 = a5;
  v181 = a6;
  v185 = a3;
  LODWORD(v182) = a2;
  v8 = sub_1CF9E63A8();
  v176 = *(v8 - 8);
  v177 = v8;
  v9 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v174 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1CF9E6448();
  v173 = *(v175 - 8);
  v11 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v172 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E53C8();
  v178 = *(v13 - 8);
  v14 = *(v178 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CF9E5248();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = (&v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1CF9E5268();
  v183 = *(v21 - 8);
  isa = v183[8].isa;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v203 = v219;
    v204 = v220;
    v199 = v216;
    v200 = v217;
    v201 = *v218;
    v202 = *&v218[16];
    v197 = aBlock;
    v198 = v215;
    v211 = v219;
    v212 = v220;
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    v210[1] = *&v218[16];
    v205 = v221;
    v213 = v221;
    v206 = aBlock;
    v207 = v215;
    if (sub_1CF2B971C(&v206))
    {
      sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v36 = nullsub_1(&v206);
    v37 = *v36;
    v38 = *(v36 + 8);
    v39 = *(v36 + 112);

    v40 = sub_1CEFCCC44(v36 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v38 != 2 || v37)
    {
      v43 = v185;
      if (v38 == 2 && v37 == 1)
      {
        v42 = *MEMORY[0x1E6967280];
        if (v39)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *&v188 = 0x2F73662F70665F5FLL;
        *(&v188 + 1) = 0xE800000000000000;
        v186 = v37;
        v187 = v38;
        v79 = VFSItemID.description.getter(v40, v41);
        MEMORY[0x1D3868CC0](v79);

        v42 = sub_1CF9E6888();

        if (v39)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v42 = *MEMORY[0x1E6967258];
      v43 = v185;
      if (v39)
      {
LABEL_16:
        v44 = v39;
LABEL_52:
        v80 = v39;
        v43(v44);

        goto LABEL_56;
      }
    }

    v44 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    v39 = 0;
    goto LABEL_52;
  }

LABEL_4:
  v184 = a4;

  *&v197 = a1;
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v210 + 9) = *&v218[9];
    v209 = v217;
    v210[0] = *v218;
    v207 = v215;
    v208 = v216;
    v206 = aBlock;
    if (!v218[24])
    {
      v45 = *(&v210[0] + 1);
      v46 = *(&v208 + 1);
      v48 = *(&v207 + 1);
      v47 = v208;
      v49 = *(&v206 + 1);
      v50 = v207;
      v183 = v206;

      sub_1CF1D56D0(v49, v50, v48, v47, v46);
      if (v45)
      {
        v51 = v45;
        v52 = v185;
        v53 = v183;
      }

      else
      {
        v77 = objc_opt_self();
        v53 = v183;
        v51 = [v77 fileProviderErrorForNonExistentItemWithIdentifier_];
        v52 = v185;
      }

      v78 = v45;
      v52(v51);

      v76 = v197;
      goto LABEL_57;
    }

    sub_1CEFCCC44(&v206, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v222 = a1;
  v27 = a1;
  if (swift_dynamicCast())
  {
    v203 = v219;
    v204 = v220;
    v199 = v216;
    v200 = v217;
    v201 = *v218;
    v202 = *&v218[16];
    v197 = aBlock;
    v198 = v215;
    v211 = v219;
    v212 = v220;
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    v210[1] = *&v218[16];
    v205 = v221;
    v213 = v221;
    v206 = aBlock;
    v207 = v215;
    v28 = sub_1CF2B971C(&v206);
    switch(v28)
    {
      case 5:
        nullsub_1(&v206);
        v58 = v222;
LABEL_30:

        v60 = v185;
        goto LABEL_31;
      case 3:
        v54 = nullsub_1(&v206);
        v55 = *v54;
        v56 = *(v54 + 8);
        sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v182)
        {
          LODWORD(v188) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          sub_1CF9E57D8();
          v57 = sub_1CF9E53A8();
          (*(v178 + 8))(v16, v13);
          v185(v57);

          goto LABEL_56;
        }

        v81 = v179;
        v82 = sub_1CF65C624();
        v186 = v55;
        v187 = v56;
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v83 = swift_allocObject();
        v84 = v181;
        v83[2] = v180;
        v83[3] = v84;
        v83[4] = v185;
        v83[5] = v184;
        v83[6] = v81;
        v85 = *(*v82 + 136);

        v86 = sub_1CF77E6E4;
LABEL_55:
        v85(&v186, &v188, 0, 1, v86, v83);

        goto LABEL_56;
      case 1:
        v29 = nullsub_1(&v206);
        v30 = *v29;
        v31 = *(v29 + 8);
        v32 = *(v29 + 24);
        v33 = *(v29 + 48);
        v34 = *(v29 + 56);

        sub_1CF480620(v33, v34);

        if (v182)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          sub_1CF9E57D8();
          v35 = sub_1CF9E50D8();
          (v183[1].isa)(v24, v21);
          v185(v35);

LABEL_56:
          v76 = v222;
          goto LABEL_57;
        }

        v87 = v179;
        v88 = sub_1CF65C624();
        v186 = v30;
        v187 = v31;
        v192 = 0u;
        v193 = 0u;
        v190 = 0u;
        v191 = 0u;
        v188 = 0u;
        v189 = 0u;
        v83 = swift_allocObject();
        v89 = v181;
        v83[2] = v180;
        v83[3] = v89;
        v90 = v184;
        v83[4] = v185;
        v83[5] = v90;
        v83[6] = v87;
        v85 = *(*v88 + 136);

        v86 = sub_1CF77E6FC;
        goto LABEL_55;
    }

    sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v197 = a1;
  v59 = a1;
  if (swift_dynamicCast())
  {
    *(v210 + 9) = *&v218[9];
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    v206 = aBlock;
    v207 = v215;
    if (v218[24] == 5)
    {
      v58 = v197;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v206, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v62 = a1;
  if (swift_dynamicCast())
  {
    v60 = v185;
    if (v206 <= 2u)
    {
      if (v206 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v61 = sub_1CF9E50D8();
      (v183[1].isa)(v24, v21);
      v60(v61);
      goto LABEL_33;
    }

    if (v206 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v73 = sub_1CF9E50D8();
    (v183[1].isa)(v24, v21);
    v60(v73);

LABEL_64:
    v76 = aBlock;
    goto LABEL_57;
  }

  *&v206 = a1;
  v63 = a1;
  if (swift_dynamicCast())
  {
    if ((v215 + 3) <= 1u)
    {

      type metadata accessor for NSFileProviderError(0);
      *&v206 = -2005;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1CF9FA450;
      v65 = *MEMORY[0x1E696A578];
      *(v64 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      *(v64 + 40) = v66;
      v67 = sub_1CF9E6888();
      sub_1CF9E82F8();
      v68 = FPLocv();

      v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v71 = v70;

      *(v64 + 72) = MEMORY[0x1E69E6158];
      *(v64 + 48) = v69;
      *(v64 + 56) = v71;
      sub_1CF4E04E8(v64);
      swift_setDeallocating();
      sub_1CEFCCC44(v64 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
      swift_deallocClassInstance();
      sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
      sub_1CF9E57D8();
      v72 = aBlock;
      v185(aBlock);

      return;
    }

    sub_1CF3386E4(aBlock, *(&aBlock + 1), v215);
    LODWORD(v197) = 16;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v91 = sub_1CF9E53A8();
    (*(v178 + 8))(v16, v13);
    v185(v91);

    v76 = v206;
    goto LABEL_57;
  }

  *&v188 = a1;
  v74 = a1;
  if (swift_dynamicCast())
  {
    v203 = v219;
    v204 = v220;
    v199 = v216;
    v200 = v217;
    v201 = *v218;
    v202 = *&v218[16];
    v197 = aBlock;
    v198 = v215;
    v211 = v219;
    v212 = v220;
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    v210[1] = *&v218[16];
    v205 = v221;
    v213 = v221;
    v206 = aBlock;
    v207 = v215;
    if (sub_1CF2B971C(&v206) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      sub_1CF9E57D8();
      v75 = sub_1CF9E50D8();
      (v183[1].isa)(v24, v21);
      v185(v75);

      v76 = v188;
LABEL_57:

      return;
    }

    sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v92 = a1;
  if (swift_dynamicCast())
  {
    v93 = FPDomainUnavailableError();
    if (!v93)
    {
LABEL_109:
      __break(1u);
LABEL_110:
      MEMORY[0x1EEE9AC00](v93);
      *(&v170 - 2) = v20;
      fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v170 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v94 = v93;
    (v185)();

    goto LABEL_64;
  }

  v186 = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    v203 = v219;
    v204 = v220;
    v199 = v216;
    v200 = v217;
    v201 = *v218;
    v202 = *&v218[16];
    v197 = aBlock;
    v198 = v215;
    v211 = v219;
    v212 = v220;
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    v210[1] = *&v218[16];
    v205 = v221;
    v213 = v221;
    v206 = aBlock;
    v207 = v215;
    if (sub_1CF2B971C(&v206) == 10)
    {
      v96 = *(nullsub_1(&v206) + 16);
      if (!v96)
      {
        LODWORD(v188) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        sub_1CF9E57D8();
        v96 = sub_1CF9E53A8();
        (*(v178 + 8))(v16, v13);
      }

      v97 = v185;
      v194 = v203;
      v195 = v204;
      v196 = v205;
      v190 = v199;
      v191 = v200;
      v192 = v201;
      v193 = v202;
      v188 = v197;
      v189 = v198;
      v98 = *(nullsub_1(&v188) + 16);
      v97(v96);
      sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);

      v76 = v186;
      goto LABEL_57;
    }

    sub_1CEFCCC44(&v197, &unk_1EC4BE320, &unk_1CFA08B50);
    v100 = v186;
    goto LABEL_81;
  }

  *&v197 = a1;
  v99 = a1;
  if (swift_dynamicCast())
  {
    v208 = v216;
    v209 = v217;
    v210[0] = *v218;
    *(v210 + 9) = *&v218[9];
    v206 = aBlock;
    v207 = v215;
    sub_1CEFCCC44(&v206, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_82:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v61 = sub_1CF9E50D8();
    (v183[1].isa)(v24, v21);
    v185(v61);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v101 = a1;
  v102 = swift_dynamicCast();

  v103 = v184;
  if (v102)
  {
    goto LABEL_82;
  }

  *&v206 = a1;
  v104 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v215, *(&v215 + 1), v216);
LABEL_80:
    v100 = v206;
LABEL_81:

    goto LABEL_82;
  }

  *&v206 = a1;
  v105 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v215, SBYTE8(v215));
    goto LABEL_80;
  }

  *&v206 = a1;
  v106 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_80;
  }

  v107 = sub_1CF9E57E8();
  v108 = [v107 userInfo];
  v109 = sub_1CF9E6638();

  v110 = *MEMORY[0x1E696AA08];
  v111 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v113 = v179;
  if (*(v109 + 16))
  {
    v114 = sub_1CEFE4328(v111, v112);
    v116 = v115;

    if (v116)
    {
      sub_1CEFD1104(*(v109 + 56) + 32 * v114, &aBlock);

      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v117 = v206;
        v118 = swift_allocObject();
        v119 = v185;
        v118[2] = v107;
        v118[3] = v119;
        v118[4] = v103;

        v120 = v117;
        v121 = v107;
        sub_1CF769A20(v120, v182 & 1, sub_1CF77E6D8, v118, v180, v181);

        return;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v122 = swift_allocObject();
  v123 = [v107 userInfo];
  v20 = sub_1CF9E6638();

  v124 = *MEMORY[0x1E696A750];
  v125 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!v20[2].isa)
  {

    goto LABEL_105;
  }

  v127 = sub_1CEFE4328(v125, v126);
  v129 = v128;

  if ((v129 & 1) == 0)
  {

    goto LABEL_105;
  }

  v178 = v124;
  sub_1CEFD1104(v20[7].isa + 32 * v127, &aBlock);

  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_105:
    swift_deallocUninitializedObject();
    v185(a1);

    return;
  }

  v170 = v107;
  *(v122 + 16) = v206;
  v183 = dispatch_group_create();
  v130 = *(v122 + 16);
  if (v130 >> 62)
  {
    goto LABEL_107;
  }

  v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v131)
  {
    goto LABEL_113;
  }

  do
  {
    v132 = 0;
    while (1)
    {
      v20 = v183;
      v93 = objc_sync_enter(v20);
      if (v93)
      {
        goto LABEL_110;
      }

      swift_beginAccess();
      v133 = *(v122 + 16);
      if ((v133 & 0xC000000000000001) != 0)
      {
        v134 = MEMORY[0x1D3869C30](v132);
        goto LABEL_99;
      }

      if (v132 >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v134 = *(v133 + 8 * v132 + 32);
LABEL_99:
      v135 = v134;
      swift_endAccess();
      v136 = objc_sync_exit(v20);
      if (v136)
      {
        MEMORY[0x1EEE9AC00](v136);
        *(&v170 - 2) = v20;
        fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, (&v170 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v20);
      v137 = swift_allocObject();
      v137[2] = v20;
      v137[3] = v122;
      v137[4] = v132;
      v138 = v20;
      v139 = v135;

      sub_1CF769A20(v139, v182 & 1, sub_1CF77E678, v137, v180, v181);

      if (v131 == ++v132)
      {
        goto LABEL_113;
      }
    }

    __break(1u);
LABEL_107:
    v93 = sub_1CF9E7818();
    if (v93 < 0)
    {
      __break(1u);
      goto LABEL_109;
    }

    v131 = v93;
  }

  while (v93);
LABEL_113:
  if (v182)
  {
    v140 = v170;
    v141 = [v170 userInfo];
    v142 = sub_1CF9E6638();

    v143 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v145 = v144;
    swift_beginAccess();
    v146 = *(v122 + 16);
    *(&v215 + 1) = v171;
    *&aBlock = v146;
    sub_1CEFE9EB8(&aBlock, &v206);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v188 = v142;
    sub_1CF1D154C(&v206, v143, v145, isUniquelyReferenced_nonNull_native);

    v148 = [v140 domain];
    if (!v148)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v148 = sub_1CF9E6888();
    }

    v61 = v170;
    v149 = [v170 code];
    v150 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v151 = sub_1CF9E6618();

    v152 = [v150 initWithDomain:v148 code:v149 userInfo:v151];

    v185(v152);
  }

  else
  {
    v153 = *(*(v113 + 16) + 64);
    v154 = swift_allocObject();
    v155 = v170;
    v154[2] = v170;
    v154[3] = v122;
    v154[4] = v185;
    v154[5] = v184;

    v185 = v155;

    v156 = v153;
    v157 = fpfs_current_log();
    v184 = fpfs_adopt_log();
    v158 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v159;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v160 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v160);

    sub_1CF9E6978();

    v161 = __fp_log_fork();

    *(v158 + 16) = v161;
    v162 = swift_allocObject();
    *(v162 + 16) = v157;
    *(v162 + 24) = v158;
    v181 = v158;
    *(v162 + 32) = v156;
    *(v162 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v162 + 48) = 48;
    *(v162 + 56) = 2;
    *(v162 + 64) = sub_1CF77E684;
    *(v162 + 72) = v154;
    *&v216 = sub_1CEFD5064;
    *(&v216 + 1) = v162;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v215 = sub_1CEFCA444;
    *(&v215 + 1) = &block_descriptor_40;
    v163 = _Block_copy(&aBlock);
    v164 = v156;
    v182 = v157;

    v165 = v172;
    sub_1CF9E63F8();
    *&v206 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v166 = v174;
    v167 = v177;
    sub_1CF9E77B8();
    v168 = v183;
    sub_1CF9E7308();
    _Block_release(v163);
    (*(v176 + 8))(v166, v167);
    (*(v173 + 8))(v165, v175);

    v169 = v184;
    v61 = fpfs_adopt_log();
  }

LABEL_33:
}

uint64_t sub_1CF76B82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a5;
  v14 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 32);
  v16 = *(v15 + 16);
  v17 = (v15 + 32);
  while (v16)
  {
    v18 = *v17++;
    --v16;
    if (v18 == a1)
    {
      goto LABEL_4;
    }
  }

  v32 = (v15 + 32);
  v33 = *(a2 + 32);
  if (*(a2 + 48))
  {
    goto LABEL_7;
  }

LABEL_6:
  if (v14 == *(a2 + 40))
  {
LABEL_4:
    result = 0;
    goto LABEL_16;
  }

LABEL_7:
  while (1)
  {
    v35 = v14;
    v36 = 1;
    result = sub_1CF77EB9C(&v35, a3, a4, v10, a6, a7);
    if (v7)
    {
      break;
    }

    if (result)
    {
      result = 1;
      break;
    }

    v20 = *(a2 + 16);
    v38 = v14;
    v39 = 0u;
    v40 = 0u;
    v21 = fpfs_openfdbyhandle();
    if ((v21 & 0x80000000) != 0)
    {
      v28 = MEMORY[0x1D38683F0](v21);
      LODWORD(v35) = 0;
      BYTE4(v35) = 1;
      v37 = 0;
      v29 = sub_1CF19BBE4(v28, &v35);
      sub_1CF1969CC(&v35);
      swift_willThrow();

      v30 = v29;
      LODWORD(v35) = sub_1CF9E5308();
      sub_1CF196978();
      sub_1CF9E5658();

      result = 2;
      break;
    }

    v22 = v21;

    MEMORY[0x1EEE9AC00](v23);
    sub_1CEFE1894(sub_1CF7969E4);
    close(v22);
    v14 = a1;
    v24 = v32;
    v25 = *(v33 + 16);
    while (v25)
    {
      v26 = *v24++;
      --v25;
      if (v26 == a1)
      {
        result = 0;
        goto LABEL_16;
      }
    }

    v10 = a5;
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_16:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1CF76BB00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v145 = a8;
  v148 = a5;
  v149 = a7;
  v142 = a4;
  v141 = a3;
  v129 = a2;
  v146 = a1;
  v14 = *v11;
  v143 = v14;
  v122 = sub_1CF9E6118();
  v121 = *(v122 - 8);
  v15 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v130 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1CF255088();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v152 = &type metadata for VFSVersion;
  v153 = AssociatedTypeWitness;
  v154 = v18;
  v155 = AssociatedConformanceWitness;
  v20 = type metadata accessor for FileItemVersion();
  v140 = *(v20 - 8);
  v21 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v121 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v127 = &v121 - v25;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v124 = *(v125 - 8);
  v26 = *(v124 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v121 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v121 - v31;
  v147 = a6;
  v136 = *(a6 - 8);
  v33 = *(v136 + 64);
  v34 = MEMORY[0x1EEE9AC00](v30);
  v36 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v14[10];
  v137 = *(v138 - 8);
  v37 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v126 = &v121 - v38;
  v39 = sub_1CF9E64A8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = (&v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(a11 + 8);
  v144 = a11;
  if (v44(v149, a11) != 2 || (v45 = *(v12[2] + 64), *v43 = v45, (*(v40 + 104))(v43, *MEMORY[0x1E69E8020], v39), v46 = v45, LOBYTE(v45) = sub_1CF9E64D8(), result = (*(v40 + 8))(v43, v39), (v45 & 1) != 0))
  {
    v131 = v20;
    v48 = v143;
    v49 = v143[11];
    v152 = sub_1CF65C654();
    v50 = v48[13];
    v51 = (*(a9 + 8))(v50, a9);
    v151 = sub_1CF65C654();
    v52 = *(a9 + 16);
    v134 = v50;
    v133 = a9 + 16;
    v143 = v52;
    v53 = (v52)(v50, a9);
    MEMORY[0x1EEE9AC00](v53);
    v54 = v147;
    v55 = v149;
    *(&v121 - 10) = v147;
    *(&v121 - 9) = v55;
    *(&v121 - 8) = v145;
    *(&v121 - 7) = a9;
    v135 = a9;
    v56 = v144;
    *(&v121 - 6) = a10;
    *(&v121 - 5) = v56;
    *(&v121 - 4) = v142;
    *(&v121 - 3) = v57;
    v142 = v57;
    *(&v121 - 2) = v148;
    v58 = v146;
    v132 = a10;
    v59 = sub_1CF2CE4A4(v146, v51, v53, 1, sub_1CF77E74C, (&v121 - 12), v54, a10);
    v123 = 0;

    (*(v136 + 16))(v36, v58, v54);
    v60 = v138;
    v61 = swift_dynamicCast();
    v62 = *(v137 + 56);
    if (v61)
    {
      v62(v32, 0, 1, v60);
      v63 = v126;
      sub_1CEFE4E00(v32, v126, type metadata accessor for VFSItem);
      v64 = v127;
      sub_1CEFCCBDC(v63 + *(v60 + 48), v127, &unk_1EC4BED30, &unk_1CFA00710);
      v65 = *(v124 + 48);
      v66 = v125;
      if (v65(v64, 1, v125) == 1)
      {
        v67 = sub_1CF9E5A58();
        v68 = v128;
        (*(*(v67 - 8) + 56))(v128, 1, 1, v67);
        v69 = v65(v64, 1, v66);
        v70 = v135;
        v71 = v134;
        if (v69 != 1)
        {
          sub_1CEFCCC44(v64, &unk_1EC4BED30, &unk_1CFA00710);
        }
      }

      else
      {
        v68 = v128;
        sub_1CEFE55D0(v64, v128, &unk_1EC4BE310, qword_1CF9FCBE0);
        v70 = v135;
        v71 = v134;
      }

      v72 = sub_1CF9E5A58();
      v73 = *(v72 - 8);
      v74 = 0;
      if ((*(v73 + 48))(v68, 1, v72) != 1)
      {
        v74 = sub_1CF9E5928();
        (*(v73 + 8))(v68, v72);
      }

      [v59 setFileURL_];

      sub_1CF007CB8(v63, type metadata accessor for VFSItem);
    }

    else
    {
      v62(v32, 1, 1, v60);
      sub_1CEFCCC44(v32, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v70 = v135;
      v71 = v134;
    }

    v75 = v132;
    v76 = v139;
    v77 = v147;
    (*(v132 + 112))(v147, v132);
    v78 = *v76;
    (*(v140 + 8))(v76, v131);
    [v59 setFileID_];
    (*(v75 + 80))(&v152, v77, v75);
    v79 = sub_1CEFE7394(v152, v153);
    v81 = v80;

    if (v81)
    {
      if (v79 == 46 && v81 == 0xE100000000000000)
      {

LABEL_18:
        [v59 setFileSystemFlags_];
        goto LABEL_19;
      }

      v82 = sub_1CF9E8048();

      if (v82)
      {
        goto LABEL_18;
      }
    }

LABEL_19:
    v83 = v71;
    v84 = v70;
    if ((v141 & 1) == 0)
    {
      v85 = v123;
      sub_1CF763B18(v59, v129 | 1, v148, v149, v145, v70, v144);
      if (v85)
      {
        v86 = fpfs_current_or_default_log();
        sub_1CF9E6128();
        v87 = v85;
        v88 = sub_1CF9E6108();
        v89 = sub_1CF9E72B8();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          swift_getErrorValue();
          v92 = Error.prettyDescription.getter(v150);
          *(v90 + 4) = v92;
          *v91 = v92;
          _os_log_impl(&dword_1CEFC7000, v88, v89, "cannot decorate item: %@", v90, 0xCu);
          sub_1CEFCCC44(v91, &qword_1EC4BE350, &unk_1CF9FC3B0);
          MEMORY[0x1D386CDC0](v91, -1, -1);
          MEMORY[0x1D386CDC0](v90, -1, -1);
        }

        else
        {
        }

        (*(v121 + 8))(v130, v122);
      }
    }

    v93 = [v59 itemID];
    v94 = [v93 identifier];

    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v95 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v97 = v96;
    if (v95 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v97 == v98)
    {
    }

    else
    {
      v99 = sub_1CF9E8048();

      if ((v99 & 1) == 0)
      {
        return v59;
      }
    }

    v152 = sub_1CF65C654();
    v100 = (v143)(v83, v84);
    if (v100)
    {
      v101 = v100;
      v102 = [v100 nsDomain];

      v103 = [v102 displayName];
      v104 = v103;
      v105 = v103;
      if (!v103)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v105 = sub_1CF9E6888();

        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v104 = sub_1CF9E6888();
      }

      v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v108 = v107;
      v109 = v103;

      v110 = HIBYTE(v108) & 0xF;
      if ((v108 & 0x2000000000000000) == 0)
      {
        v110 = v106 & 0xFFFFFFFFFFFFLL;
      }

      if (v110)
      {
        goto LABEL_45;
      }
    }

    v152 = sub_1CF65C654();
    v111 = (v143)(v83, v84);
    if (!v111)
    {
      return v59;
    }

    v112 = v111;
    v113 = [v111 provider];

    if (!v113)
    {
      return v59;
    }

    v114 = [v113 descriptor];

    v115 = [v114 localizedName];
    v104 = v115;
    v105 = v115;
    if (!v115)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v105 = sub_1CF9E6888();

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v104 = sub_1CF9E6888();
    }

    v116 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v118 = v117;
    v119 = v115;

    v120 = HIBYTE(v118) & 0xF;
    if ((v118 & 0x2000000000000000) == 0)
    {
      v120 = v116 & 0xFFFFFFFFFFFFLL;
    }

    if (!v120)
    {

      goto LABEL_46;
    }

LABEL_45:
    [v59 setFp:v105 displayName:?];

    [v59 setFilename_];
LABEL_46:

    return v59;
  }

  __break(1u);
  return result;
}

void *sub_1CF76CA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  if (v12 == 2 && v11 == 0)
  {
    v22 = MEMORY[0x1E6967258];
LABEL_14:
    v21 = *v22;
    goto LABEL_15;
  }

  if (v12 == 2 && v11 == 1)
  {
    v22 = MEMORY[0x1E6967280];
    goto LABEL_14;
  }

  if (*(a2 + 16))
  {
    v18 = a3;
    v19 = sub_1CF7BF2C0(*a1, v12);
    a3 = v18;
    if (v20)
    {
      v21 = *(*(a2 + 56) + 8 * v19);
LABEL_15:
      v23 = v21;
      return v21;
    }
  }

  v25 = *(*(a3 + 16) + 16);
  v27 = v11;
  v28 = v12;
  v26 = *(*v25 + 160);

  v26(&v29, &v27, a4, a6, a10);
  if (v10)
  {

    return 0;
  }

  else
  {

    return v29;
  }
}

unint64_t sub_1CF76CB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = *v11;
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v21[7] = a10;
  v21[8] = a11;
  v22 = v11;
  v23 = a3;
  v24 = a4;
  v19 = sub_1CF4FDC40(sub_1CF7960A8, v21, a5, *(v18 + 88), MEMORY[0x1E69E73E0], a9, MEMORY[0x1E69E7410], a8);
  sub_1CF769068(v19, a2 | 1, a4, a6, a7, a8, a10);
  if (v12)
  {
  }

  return v19;
}

void sub_1CF76CC84(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(a2 + 16) + 40);
  v13 = a3;
  v11 = *(*v10 + 280);

  v12 = v11(&v13, v9, v7, v8);

  if (!v4)
  {
  }
}

uint64_t sub_1CF76CD54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = *(*(a2 + 16) + 16);
  v13 = *a3;
  v14 = *(a3 + 8);
  v22 = *a3;
  v23 = v14;
  v15 = *(v10 + 8);

  sub_1CF68DDB0(&v22, v11, v9, v15, __src);
  if (v5)
  {
  }

  memcpy(v20, __src, sizeof(v20));
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_1CEFF755C(__dst) == 1)
  {
    v17 = 1;
  }

  else
  {
    sub_1CEFCCC44(v20, &unk_1EC4BFC20, &unk_1CFA0A290);
    if (v13)
    {
      v18 = 0;
    }

    else
    {
      v18 = v14 == 2;
    }

    if (v18 || (v17 = 1, __dst[137] <= 6u) && ((1 << __dst[137]) & 0x5C) != 0)
    {
      sub_1CEFE505C(a3, a4, type metadata accessor for VFSItem);
      v17 = 0;
    }
  }

  v19 = type metadata accessor for VFSItem(0);
  return (*(*(v19 - 8) + 56))(a4, v17, 1, v19);
}

uint64_t sub_1CF76CEF8(uint64_t a1, int a2, unint64_t a3, void (*a4)(void), void *a5)
{
  v111 = a4;
  v112 = a5;
  v104 = a2;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v7 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v103[-v8];
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v103[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103[-v14];
  v16 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  sub_1CEFD09A0(a3);
  v17 = sub_1CF9E6108();
  v18 = sub_1CF9E7298();

  sub_1CEFD0A98(a3);
  v19 = os_log_type_enabled(v17, v18);
  v113 = a3;
  if (v19)
  {
    v108 = v10;
    v109 = v9;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v114 = v21;
    *v20 = 136446466;
    v22 = swift_beginAccess();
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    if (*(a1 + 41))
    {
      v26 = v24;
      v27 = NSFileProviderItemIdentifier.description.getter();
      v29 = v28;
      sub_1CEFD0994(v24, v25, 1);
    }

    else
    {
      v116[1] = *(a1 + 32);
      v117 = v25;
      v27 = VFSItemID.description.getter(v22, v23);
      v29 = v30;
    }

    v31 = sub_1CEFD0DF0(v27, v29, &v114);

    *(v20 + 4) = v31;
    *(v20 + 12) = 2082;
    a3 = v113;
    v32 = sub_1CEFD11AC(v113);
    v34 = sub_1CEFD0DF0(v32, v33, &v114);

    *(v20 + 14) = v34;
    _os_log_impl(&dword_1CEFC7000, v17, v18, "resolving URL for %{public}s for %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v21, -1, -1);
    MEMORY[0x1D386CDC0](v20, -1, -1);

    v10 = v108;
    v9 = v109;
  }

  else
  {
  }

  v35 = *(v10 + 8);
  (v35)(v15, v9);
  swift_beginAccess();
  v36 = *(a1 + 32);
  v37 = *(a1 + 40);
  if (*(a1 + 41) != 1)
  {
    if (!v36 && v37 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  v38 = v35;
  v39 = qword_1EDEA34B0;
  v40 = v36;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;
  if (v41 != _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() || v43 != v44)
  {
    v55 = sub_1CF9E8048();

    sub_1CEFD0994(v36, v37, 1);
    v35 = v38;
    if (v55)
    {
      goto LABEL_15;
    }

LABEL_19:
    v108 = v10;
    v109 = v9;
    v56 = v110;
    v57 = v110[2];
    v58 = swift_allocObject();
    v59 = v112;
    v58[2] = v111;
    v58[3] = v59;
    v58[4] = v56;
    v58[5] = a1;
    v60 = objc_allocWithZone(MEMORY[0x1E696AE38]);

    v112 = [v60 init];
    v61 = swift_allocObject();
    v61[2] = sub_1CF7969DC;
    v61[3] = v58;
    v61[4] = a3;
    sub_1CEFD09A0(a3);

    sub_1CEFD09A0(a3);

    v62 = fpfs_current_or_default_log();
    v63 = v105;
    sub_1CF9E6128();
    sub_1CEFD09A0(a3);

    sub_1CEFD09A0(a3);
    v64 = a3;
    v65 = sub_1CF9E6108();
    v66 = sub_1CF9E7298();
    if (os_log_type_enabled(v65, v66))
    {
      v107 = v35;
      v110 = v61;
      v111 = v57;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = v68;
      v116[0] = v68;
      *v67 = 136315906;
      v71 = *(a1 + 32);
      v72 = *(a1 + 40);
      if (*(a1 + 41))
      {
        v73 = v71;
        v74 = NSFileProviderItemIdentifier.description.getter();
        v76 = v75;
        sub_1CEFD0994(v71, v72, 1);
      }

      else
      {
        v114 = *(a1 + 32);
        v115 = v72;
        v74 = VFSItemID.description.getter(v68, v69);
        v76 = v77;
      }

      v78 = sub_1CEFD0DF0(v74, v76, v116);

      *(v67 + 4) = v78;
      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_1CEFD0DF0(0x74616761706F7270, 0xED000053466F5465, v116);
      *(v67 + 22) = 2080;
      v79 = v113;
      v80 = sub_1CEFD11AC(v113);
      v82 = v81;
      sub_1CEFD0A98(v79);
      sub_1CEFD0A98(v79);
      v83 = sub_1CEFD0DF0(v80, v82, v116);

      *(v67 + 24) = v83;
      *(v67 + 32) = 2048;
      *(v67 + 34) = 0;
      _os_log_impl(&dword_1CEFC7000, v65, v66, "Lookup itemID %s with behavior %s request %s iteration %ld", v67, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v70, -1, -1);
      MEMORY[0x1D386CDC0](v67, -1, -1);

      (v107)(v105, v109);
      v61 = v110;
      v57 = v111;
    }

    else
    {
      sub_1CEFD0A98(v64);
      sub_1CEFD0A98(v64);

      (v35)(v63, v109);
    }

    v84 = *(a1 + 32);
    v85 = *(a1 + 40);
    v86 = v112;
    if (*(a1 + 41))
    {
      v87 = qword_1EDEA34B0;
      v88 = v84;
      if (v87 != -1)
      {
        swift_once();
      }

      v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v91 = v90;
      if (v89 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v91 == v92)
      {

        sub_1CEFD0994(v84, v85, 1);
        v93 = v113;
LABEL_33:
        sub_1CF90CAC8(v93, sub_1CF796A0C, v61);
LABEL_39:

        sub_1CEFD0A98(v93);
      }

      v94 = sub_1CF9E8048();

      sub_1CEFD0994(v84, v85, 1);
      v93 = v113;
      if (v94)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v93 = v113;
      if (!v84 && v85 == 2)
      {
        goto LABEL_33;
      }
    }

    if (((v93 >> 58) & 0x3C | (v93 >> 1) & 3) == 0x1E)
    {
      v95 = *((v93 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v96 = v95;
    }

    else
    {
      v97 = swift_allocObject();
      *(v97 + 16) = v93;
      v96 = v97 | 0x7000000000000004;
      v95 = v93;
    }

    sub_1CEFD09A0(v95);
    v98 = swift_allocObject();
    *(v98 + 16) = sub_1CF796A0C;
    *(v98 + 24) = v61;
    *(v98 + 32) = v57;
    *(v98 + 40) = 1;
    *(v98 + 48) = v93;
    *(v98 + 56) = a1;
    v99 = v104 & 1;
    *(v98 + 64) = v104 & 1;
    *(v98 + 72) = v86;
    *(v98 + 80) = 0;
    v100 = swift_allocObject();
    *(v100 + 16) = a1;
    *(v100 + 24) = v57;
    *(v100 + 32) = v99;
    *(v100 + 33) = 0;
    *(v100 + 40) = sub_1CF796A90;
    *(v100 + 48) = v98;
    *(v100 + 56) = v96;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_1CF796A90;
    *(v101 + 24) = v98;
    swift_retain_n();

    sub_1CEFD09A0(v113);

    v102 = v86;
    sub_1CEFD09A0(v96);
    sub_1CF7AAF88("findExistingVFSItemFor(itemID:parentIsImported:bypassIsHidden:request:completionHandler:)", 89, 2, 2, sub_1CF554464, v101, sub_1CF796A9C, v100);

    v93 = v113;

    sub_1CEFD0A98(v96);
    goto LABEL_39;
  }

  sub_1CEFD0994(v36, v37, 1);
LABEL_15:
  v45 = *(*(v110[2] + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v46 = swift_dynamicCastClassUnconditional();

  v47 = objc_sync_enter(v46);
  if (v47)
  {
    MEMORY[0x1EEE9AC00](v47);
    *&v103[-16] = v46;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v103[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v48 = v46[20];

  v49 = objc_sync_exit(v46);
  if (v49)
  {
    MEMORY[0x1EEE9AC00](v49);
    *&v103[-16] = v46;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v103[-32], "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v50 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v51 = sub_1CF9E5A58();
  v52 = v48 + v50;
  v53 = v107;
  (*(*(v51 - 8) + 16))(v107, v52, v51);

  swift_storeEnumTagMultiPayload();
  v111(v53);
  return sub_1CEFCCC44(v53, &unk_1EC4C5270, &unk_1CFA01BC0);
}

uint64_t sub_1CF76DAB8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a4;
  v20[1] = a5;
  v7 = type metadata accessor for VFSItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF300, &unk_1CFA006B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v20 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v20 - v17;
  sub_1CEFCCBDC(a1, v14, &unk_1EC4BF300, &unk_1CFA006B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v18 = *v14;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1CEFE4E00(v14, v10, type metadata accessor for VFSItem);
    sub_1CF76DCB4(v10, v20[0], v18);
    sub_1CF007CB8(v10, type metadata accessor for VFSItem);
  }

  a2(v18);
  return sub_1CEFCCC44(v18, &unk_1EC4C5270, &unk_1CFA01BC0);
}

uint64_t sub_1CF76DCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_1CF9E5A58();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VFSItem(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFE505C(a1, v18, type metadata accessor for VFSItem);
  v19 = *(*(*(a2 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v20 = swift_dynamicCastClassUnconditional();

  v21 = objc_sync_enter(v20);
  if (v21)
  {
LABEL_9:
    MEMORY[0x1EEE9AC00](v21);
    *(&v29 - 2) = v20;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v22 = objc_sync_exit(v20);
  if (v22)
  {
    MEMORY[0x1EEE9AC00](v22);
    *(&v29 - 2) = v20;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v29 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  sub_1CF25116C(v9);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    sub_1CF007CB8(v18, type metadata accessor for VFSItem);
    v27 = *(v11 + 32);
    v27(v14, v9, v10);
    v27(a3, v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
    return swift_storeEnumTagMultiPayload();
  }

  v23 = sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  v25 = sub_1CF75D884(v23, v24);
  v26 = FPItemNotFoundError();

  if (!v26)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1CF007CB8(v18, type metadata accessor for VFSItem);
  *a3 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C5270, &unk_1CFA01BC0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF76E058(uint64_t a1, void *a2, unint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v107 = a5;
  v108 = a4;
  v100 = a2;
  v94 = sub_1CF9E53C8();
  v93 = *(v94 - 8);
  v7 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v95 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v105 = (&v87 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v110 = &v87 - v16;
  v17 = type metadata accessor for VFSItem(0);
  v111 = *(v17 - 8);
  v112 = v17;
  v18 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v104 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CF9E5A58();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v99 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v106 = &v87 - v25;
  v98 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v87 - v28;
  v30 = sub_1CF9E6118();
  v109 = *(v30 - 8);
  v31 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v96 = v21[2];
  v97 = v21 + 2;
  v96(v29, a1, v20);
  sub_1CEFD09A0(a3);
  v35 = sub_1CF9E6108();
  v36 = sub_1CF9E7298();
  sub_1CEFD0A98(a3);
  v103 = v36;
  v37 = os_log_type_enabled(v35, v36);
  v101 = v21;
  v102 = v20;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v114 = v90;
    *v38 = 136446466;
    v88 = v35;
    v39 = sub_1CF9E5928();
    v40 = [v39 fp_shortDescription];
    v91 = v9;
    v41 = v40;

    v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v89 = v30;
    v43 = a1;
    v45 = v44;

    v46 = v21[1];
    v46(v29, v20);
    v47 = sub_1CEFD0DF0(v42, v45, &v114);
    a1 = v43;

    *(v38 + 4) = v47;
    *(v38 + 12) = 2082;
    v48 = sub_1CEFD11AC(a3);
    v50 = sub_1CEFD0DF0(v48, v49, &v114);

    *(v38 + 14) = v50;
    v51 = v88;
    _os_log_impl(&dword_1CEFC7000, v88, v103, "create fault at %{public}s for %{public}s", v38, 0x16u);
    v52 = v90;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v52, -1, -1);
    MEMORY[0x1D386CDC0](v38, -1, -1);

    (*(v109 + 8))(v33, v89);
  }

  else
  {

    v46 = v21[1];
    v46(v29, v20);
    (*(v109 + 8))(v33, v30);
  }

  v53 = v110;
  v54 = v113;
  sub_1CF010CE0(a1, 0, 1, 0, v110);
  v56 = v111;
  v55 = v112;
  if ((*(v111 + 48))(v53, 1, v112) != 1)
  {
    v64 = v104;
    sub_1CEFE4E00(v53, v104, type metadata accessor for VFSItem);
    v65 = v105;
    sub_1CEFE505C(v64, v105, type metadata accessor for VFSItem);
    (*(v56 + 56))(v65, 0, 1, v55);
    swift_storeEnumTagMultiPayload();
    v108(v65);
    sub_1CEFCCC44(v65, &unk_1EC4BF310, &unk_1CF9FDB30);
    return sub_1CF007CB8(v64, type metadata accessor for VFSItem);
  }

  sub_1CEFCCC44(v53, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v111 = a3;
  v57 = sub_1CF90C94C(a3);
  if (v57)
  {
    v58 = v57;
    if ([v57 shouldFailCoordinationIfDownloadRequired])
    {
      v115 = 1;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v59 = v92;
      v60 = v94;
      sub_1CF9E57D8();
      v61 = sub_1CF9E53A8();
      (*(v93 + 8))(v59, v60);
      v62 = v105;
      *v105 = v61;
      swift_storeEnumTagMultiPayload();
      v108(v62);

      return sub_1CEFCCC44(v62, &unk_1EC4BF310, &unk_1CF9FDB30);
    }
  }

  v112 = v46;
  sub_1CF9E5988();
  v66 = *(*(*(v54 + 16) + 32) + 16);
  type metadata accessor for VFSFileTree(0);
  v67 = swift_dynamicCastClassUnconditional();

  v68 = objc_sync_enter(v67);
  if (v68)
  {
    goto LABEL_19;
  }

  v69 = v67[20];

  v70 = objc_sync_exit(v67);
  if (v70)
  {
    MEMORY[0x1EEE9AC00](v70);
    *(&v87 - 2) = v67;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v87 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v71 = *(v69 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs);

  v72 = v106;
  v73 = sub_1CF517830(v71);

  if ((v73 & 1) == 0)
  {
    v67 = sub_1CF9E5928();
    v85 = FPItemNotFoundErrorAtURL();

    if (v85)
    {
      v86 = v95;
      *v95 = v85;
      swift_storeEnumTagMultiPayload();
      v108(v86);
      sub_1CEFCCC44(v86, &unk_1EC4BF310, &unk_1CF9FDB30);
      v84 = v102;
      v83 = v72;
      return v112(v83, v84);
    }

    __break(1u);
LABEL_19:
    MEMORY[0x1EEE9AC00](v68);
    *(&v87 - 2) = v67;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v87 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  v74 = v99;
  v75 = v102;
  v96(v99, a1, v102);
  v76 = v101;
  v77 = (*(v101 + 80) + 48) & ~*(v101 + 80);
  v78 = (v98 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v107;
  *(v79 + 2) = v108;
  *(v79 + 3) = v80;
  v81 = v111;
  *(v79 + 4) = v111;
  *(v79 + 5) = v54;
  (v76[4])(&v79[v77], v74, v75);
  v82 = v100;
  *&v79[v78] = v100;
  sub_1CEFD09A0(v81);

  sub_1CF76E058(v72, v82, v81, sub_1CF7965E8, v79);

  v83 = v72;
  v84 = v75;
  return v112(v83, v84);
}

char *sub_1CF76EB10(uint64_t a1, void (*a2)(void **), uint64_t a3, unint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v162 = a7;
  v149 = a6;
  v165 = a4;
  v173 = a2;
  v174 = a3;
  v172 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE370, qword_1CFA01B30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v161 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v171 = &v141 - v12;
  v159 = sub_1CF9E6068();
  v158 = *(v159 - 8);
  v13 = *(v158 + 8);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v152 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v166 = &v141 - v19;
  v153 = type metadata accessor for Signpost(0);
  v154 = *(v153 - 8);
  v20 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v160 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v141 - v23;
  v155 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v141 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v148 = &v141 - v29;
  v30 = sub_1CF9E63D8();
  v163 = *(v30 - 8);
  v164 = v30;
  v31 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v141 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v147 = &v141 - v34;
  v175 = sub_1CF9E6448();
  v168 = *(v175 - 8);
  v35 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v151 = &v141 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = v36;
  MEMORY[0x1EEE9AC00](v37);
  v167 = &v141 - v38;
  v146 = sub_1CF9E5A58();
  v145 = *(v146 - 8);
  v39 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v146);
  v40 = type metadata accessor for VFSItem(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v170 = (&v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = (&v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v141 - v49);
  sub_1CEFCCBDC(v172, &v141 - v49, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = *v50;
    *v47 = *v50;
    swift_storeEnumTagMultiPayload();
    v52 = v51;
    v173(v47);

    return sub_1CEFCCC44(v47, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  v143 = a5;
  v54 = v173;
  v53 = v174;
  if ((*(v41 + 48))(v50, 1, v40) == 1)
  {
    (*(v41 + 56))(v47, 1, 1, v40);
    swift_storeEnumTagMultiPayload();
    v54(v47);
    return sub_1CEFCCC44(v47, &unk_1EC4BF310, &unk_1CF9FDB30);
  }

  sub_1CEFE4E00(v50, v170, type metadata accessor for VFSItem);
  if (((v165 >> 58) & 0x3C | (v165 >> 1) & 3) == 2)
  {
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F40, qword_1CFA0F4C0);
    v142 = (*(swift_projectBox() + *(v56 + 80)) >> 21) & 1;
  }

  else
  {
    v142 = 0;
  }

  v57 = v164;
  v58 = v53;
  v59 = v143;
  v174 = *(v143 + 16);
  v60 = *v170;
  LODWORD(v173) = *(v170 + 8);
  v61 = v145;
  v62 = v146;
  (*(v145 + 16))(&v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v149, v146);
  v63 = (*(v61 + 80) + 40) & ~*(v61 + 80);
  v64 = swift_allocObject();
  v64[2] = v54;
  v64[3] = v58;
  v64[4] = v59;
  v65 = *(v61 + 32);
  v172 = v64;
  v65(v64 + v63, &v141 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v62);

  qos_class_self();
  v66 = v148;
  sub_1CF9E63B8();
  v67 = v163;
  v68 = *(v163 + 48);
  if (v68(v66, 1, v57) == 1)
  {
    (*(v67 + 104))(v147, *MEMORY[0x1E69E7FA0], v57);
    if (v68(v66, 1, v57) != 1)
    {
      sub_1CEFCCC44(v66, &unk_1EC4BE380, &qword_1CFA01BA0);
    }
  }

  else
  {
    (*(v67 + 32))(v147, v66, v57);
  }

  v69 = v167;
  sub_1CF9E6428();
  v70 = [objc_opt_self() discreteProgressWithTotalUnitCount_];
  [v70 setCancellable_];
  v71 = swift_allocObject();
  v72 = v174;
  swift_weakInit();
  v73 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v74 = swift_allocObject();
  *(v74 + 16) = v71;
  *(v74 + 24) = v73;
  *(v74 + 32) = v60;
  *(v74 + 40) = v173;
  v179 = sub_1CF481424;
  v180 = v74;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v177 = sub_1CEFCA444;
  v178 = &block_descriptor_836;
  v75 = _Block_copy(&aBlock);

  sub_1CF03C63C(sub_1CF481424);

  [v70 setCancellationHandler_];
  _Block_release(v75);

  v76 = v168;
  v77 = v151;
  v78 = v69;
  v79 = v175;
  (*(v168 + 16))(v151, v78, v175);
  v80 = (*(v76 + 80) + 80) & ~*(v76 + 80);
  v81 = swift_allocObject();
  v82 = v172;
  *(v81 + 16) = sub_1CF79668C;
  *(v81 + 24) = v82;
  *(v81 + 32) = v72;
  *(v81 + 40) = v60;
  *(v81 + 48) = v173;
  v83 = v165;
  v84 = v142;
  *(v81 + 56) = v165;
  *(v81 + 64) = v84;
  *(v81 + 72) = v70;
  v85 = *(v76 + 32);
  v150 = v81;
  v85(v81 + v80, v77, v79);
  v86 = swift_allocObject();
  *(v86 + 16) = sub_1CF79668C;
  *(v86 + 24) = v82;
  v173 = v86;
  v87 = *(v72 + qword_1EDEBBC38);
  swift_retain_n();

  sub_1CEFD09A0(v83);
  v149 = v70;
  v165 = fpfs_adopt_log();
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v88 = qword_1EDEBBE40;
  v89 = v158;
  v90 = v166;
  v91 = v159;
  (*(v158 + 7))(v166, 1, 1, v159);
  strcpy(&aBlock, "async batch ");
  BYTE13(aBlock) = 0;
  HIWORD(aBlock) = -5120;
  v92 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v92);

  v93 = *(&aBlock + 1);
  v151 = aBlock;
  v94 = v90;
  v95 = v152;
  sub_1CEFCCBDC(v94, v152, &unk_1EC4BED20, &unk_1CFA00700);
  v96 = *(v89 + 6);
  v97 = v96(v95, 1, v91);
  v98 = v157;
  if (v97 == 1)
  {
    v99 = v88;
    sub_1CF9E6048();
    if (v96(v95, 1, v91) != 1)
    {
      sub_1CEFCCC44(v95, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v89 + 4))(v157, v95, v91);
  }

  v100 = v169;
  (*(v89 + 2))(v169, v98, v91);
  v101 = v153;
  *(v100 + *(v153 + 20)) = v88;
  v102 = v100 + *(v101 + 24);
  *v102 = "DB queue wait";
  *(v102 + 8) = 13;
  *(v102 + 16) = 2;
  v103 = v88;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1CF9FA450;
  *(v104 + 56) = MEMORY[0x1E69E6158];
  *(v104 + 64) = sub_1CEFD51C4();
  *(v104 + 32) = v151;
  *(v104 + 40) = v93;
  sub_1CF9E6028();

  (*(v89 + 1))(v98, v91);
  sub_1CEFCCC44(v166, &unk_1EC4BED20, &unk_1CFA00700);
  v159 = *(v174 + 168);
  v166 = *(v174 + 64);
  (*(v76 + 56))(v171, 1, 1, v175);
  v105 = v156;
  sub_1CEFE505C(v100, v156, type metadata accessor for Signpost);
  v106 = (*(v154 + 80) + 16) & ~*(v154 + 80);
  v107 = (v155 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  sub_1CEFE4E00(v105, v108 + v106, type metadata accessor for Signpost);
  v109 = (v108 + v107);
  v158 = sub_1CF4814BC;
  v110 = v173;
  *v109 = sub_1CF4814BC;
  v109[1] = v110;
  v111 = v160;
  sub_1CEFE505C(v100, v160, type metadata accessor for Signpost);
  v112 = (v107 + 23) & 0xFFFFFFFFFFFFFFF8;
  v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
  v114 = (v113 + 25) & 0xFFFFFFFFFFFFFFF8;
  v115 = (v114 + 23) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  sub_1CEFE4E00(v111, v116 + v106, type metadata accessor for Signpost);
  v117 = (v116 + v107);
  *v117 = sub_1CF045408;
  v117[1] = 0;
  v118 = v173;
  *(v116 + v112) = v174;
  v119 = v116 + v113;
  v120 = v175;
  *v119 = "materialize(_:request:options:qos:completion:)";
  *(v119 + 8) = 46;
  *(v119 + 16) = 2;
  v121 = (v116 + v114);
  v122 = v168;
  *v121 = v158;
  v121[1] = v118;
  v123 = (v116 + v115);
  v124 = v150;
  *v123 = sub_1CF481430;
  v123[1] = v124;
  v125 = swift_allocObject();
  v125[2] = sub_1CF75C120;
  v125[3] = v108;
  v126 = v159;
  v125[4] = v159;
  swift_retain_n();

  v174 = v108;

  v127 = fpfs_current_log();
  v128 = *(v126 + 16);
  v129 = v161;
  sub_1CEFCCBDC(v171, v161, &unk_1EC4BE370, qword_1CFA01B30);
  if ((*(v122 + 48))(v129, 1, v120) == 1)
  {
    sub_1CEFCCC44(v129, &unk_1EC4BE370, qword_1CFA01B30);
    v130 = QOS_CLASS_UNSPECIFIED;
  }

  else
  {
    v131 = v144;
    sub_1CF9E6438();
    (*(v122 + 8))(v129, v120);
    v130 = sub_1CF9E63C8();
    (*(v163 + 8))(v131, v164);
  }

  v132 = swift_allocObject();
  v132[2] = v127;
  v132[3] = sub_1CF4858EC;
  v132[4] = v116;
  v179 = sub_1CF2BA17C;
  v180 = v132;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v177 = sub_1CEFCA444;
  v178 = &block_descriptor_830;
  v133 = _Block_copy(&aBlock);
  v134 = v127;

  v179 = sub_1CF2BA180;
  v180 = v125;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v177 = sub_1CEFCA444;
  v178 = &block_descriptor_833;
  v135 = _Block_copy(&aBlock);

  fp_task_tracker_async_and_qos(v128, v166, DISPATCH_BLOCK_INHERIT_QOS_CLASS, v130, v133, v135);
  _Block_release(v135);
  _Block_release(v133);

  sub_1CEFCCC44(v171, &unk_1EC4BE370, qword_1CFA01B30);
  sub_1CF007CB8(v169, type metadata accessor for Signpost);
  v136 = v165;
  v137 = fpfs_adopt_log();

  (*(v122 + 8))(v167, v175);
  v138 = v162;
  result = [v162 totalUnitCount];
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    [v138 setTotalUnitCount_];
    v139 = v138;
    v140 = v149;
    [v139 addChild:v149 withPendingUnitCount:1];

    return sub_1CF007CB8(v170, type metadata accessor for VFSItem);
  }

  return result;
}

uint64_t sub_1CF76FE98(void *a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v26 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v26 - v17;
  if (a1)
  {
    *v11 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    a2(v11);
    v20 = &unk_1EC4BF310;
    v21 = &unk_1CF9FDB30;
    v22 = v11;
  }

  else
  {
    v26[1] = a3;
    v27 = a2;
    v23 = type metadata accessor for VFSItem(0);
    (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
    v24 = *(*(*(a4 + 16) + 32) + 16);
    type metadata accessor for VFSFileTree(0);
    swift_dynamicCastClassUnconditional();

    sub_1CF264F9C(1, 0, 0x208000u, v15);
    sub_1CEFCCC44(v18, &unk_1EC4BEC00, &unk_1CF9FCB60);

    sub_1CEFE55D0(v15, v18, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CEFCCBDC(v18, v11, &unk_1EC4BEC00, &unk_1CF9FCB60);
    swift_storeEnumTagMultiPayload();
    v27(v11);
    sub_1CEFCCC44(v11, &unk_1EC4BF310, &unk_1CF9FDB30);
    v22 = v18;
    v20 = &unk_1EC4BEC00;
    v21 = &unk_1CF9FCB60;
  }

  return sub_1CEFCCC44(v22, v20, v21);
}

uint64_t sub_1CF770194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 56);
  v9 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;

  swift_unknownObjectRetain();

  sub_1CF01001C(0, "registerNewProxy(_:completionHandler:)", 38, 2, sub_1CF796AD0, v10);
}

uint64_t sub_1CF77025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 + 64);
  v9 = *(v8 + OBJC_IVAR____TtC18FileProviderDaemon18FPFSGlobalProgress_dispatchQueue);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;

  swift_unknownObjectRetain();

  sub_1CF01001C(0, "registerNewProxy(_:completionHandler:)", 38, 2, sub_1CF796594, v10);
}

void sub_1CF770324(uint64_t a1, void (*a2)(void *), unint64_t a3, uint64_t a4)
{
  v32 = a4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v4 = type metadata accessor for VFSItem(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v30 - v7;
  v8 = sub_1CF9E5248();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  sub_1CEFCCBDC(v35, &v30 - v17, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v18, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v20 = sub_1CF9E50D8();
    (*(v11 + 8))(v14, v10);
    v36(v20);

    return;
  }

  v19 = v34;
  if ((*(v34 + 48))(v18, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  v21 = v33;
  sub_1CEFE4E00(v18, v33, type metadata accessor for VFSItem);
  v23 = v31;
  v22 = v32;
  v24 = *(v32 + 16);
  sub_1CEFE505C(v21, v31, type metadata accessor for VFSItem);
  v25 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  sub_1CEFE4E00(v23, v26 + v25, type metadata accessor for VFSItem);
  v27 = (v26 + ((v5 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v36;
  v28 = v37;
  *v27 = v36;
  v27[1] = v28;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v29, v28, sub_1CF77ED00, v26);

  sub_1CF007CB8(v21, type metadata accessor for VFSItem);
}

void sub_1CF77074C(uint64_t a1, void (*a2)(void *), unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v37 = a5;
  v38 = a6;
  v43 = a2;
  v44 = a3;
  v42 = a1;
  v36 = *a4;
  v40 = *(v36 + 80);
  v41 = *(v40 - 8);
  v7 = *(v41 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v35 - v9;
  v10 = sub_1CF9E5248();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1CF9E5268();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v35 - v19;
  sub_1CEFCCBDC(v42, &v35 - v19, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v20, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    sub_1CF9E5128();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    sub_1CF9E57D8();
    v22 = sub_1CF9E50D8();
    (*(v13 + 8))(v16, v12);
    v43(v22);

    return;
  }

  v21 = v41;
  if ((*(v41 + 48))(v20, 1, v40) == 1)
  {
    goto LABEL_4;
  }

  v23 = v39;
  sub_1CEFE4E00(v20, v39, type metadata accessor for VFSItem);
  v24 = a4[2];
  v25 = v35;
  sub_1CEFE505C(v23, v35, type metadata accessor for VFSItem);
  v26 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v27 = swift_allocObject();
  v28 = v36;
  v27[2] = *(v36 + 96);
  v29 = *(v28 + 104);
  v31 = v37;
  v30 = v38;
  v27[3] = v29;
  v27[4] = v31;
  v27[5] = v30;
  v27[6] = a4;
  sub_1CEFE4E00(v25, v27 + v26, type metadata accessor for VFSItem);
  v32 = (v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v34 = v43;
  v33 = v44;
  *v32 = v43;
  v32[1] = v33;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v34, v33, sub_1CF77E72C, v27);

  sub_1CF007CB8(v23, type metadata accessor for VFSItem);
}

void sub_1CF770BC0(uint64_t a1, void (*a2)(void *), unint64_t a3, uint64_t a4)
{
  v31 = a4;
  v34 = a2;
  v35 = a3;
  v5 = type metadata accessor for VFSItem(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - v8;
  v9 = sub_1CF9E53C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  sub_1CEFCCBDC(a1, &v29 - v16, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v17, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    v36 = 66;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v19 = sub_1CF9E53A8();
    (*(v10 + 8))(v13, v9);
    v34(v19);

    return;
  }

  v18 = v33;
  if ((*(v33 + 48))(v17, 1, v5) == 1)
  {
    goto LABEL_4;
  }

  v20 = v32;
  sub_1CEFE4E00(v17, v32, type metadata accessor for VFSItem);
  v22 = v30;
  v21 = v31;
  v23 = *(v31 + 16);
  sub_1CEFE505C(v20, v30, type metadata accessor for VFSItem);
  v24 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  sub_1CEFE4E00(v22, v25 + v24, type metadata accessor for VFSItem);
  v26 = (v25 + ((v6 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v34;
  v27 = v35;
  *v26 = v34;
  v26[1] = v27;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v28, v27, sub_1CF77F090, v25);

  sub_1CF007CB8(v20, type metadata accessor for VFSItem);
}

void sub_1CF770FA4(uint64_t a1, void (*a2)(void *), unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v35 = *a4;
  v7 = *(v35 + 80);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v34 - v10;
  v11 = sub_1CF9E53C8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF310, &unk_1CF9FDB30);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  sub_1CEFCCBDC(v40, &v34 - v18, &unk_1EC4BF310, &unk_1CF9FDB30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CEFCCC44(v19, &unk_1EC4BF310, &unk_1CF9FDB30);
LABEL_4:
    v43 = 66;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
    sub_1CF9E57D8();
    v21 = sub_1CF9E53A8();
    (*(v12 + 8))(v15, v11);
    v41(v21);

    return;
  }

  v20 = v39;
  if ((*(v39 + 48))(v19, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  v22 = v38;
  sub_1CEFE4E00(v19, v38, type metadata accessor for VFSItem);
  v23 = a4[2];
  v24 = v34;
  sub_1CEFE505C(v22, v34, type metadata accessor for VFSItem);
  v25 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v26 = swift_allocObject();
  v27 = v35;
  v26[2] = *(v35 + 96);
  v28 = *(v27 + 104);
  v30 = v36;
  v29 = v37;
  v26[3] = v28;
  v26[4] = v30;
  v26[5] = v29;
  v26[6] = a4;
  sub_1CEFE4E00(v24, v26 + v25, type metadata accessor for VFSItem);
  v31 = (v26 + ((v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  v33 = v41;
  v32 = v42;
  *v31 = v41;
  v31[1] = v32;

  sub_1CF7AAF88("normalizeError(_:synchronous:completionHandler:)", 48, 2, 2, v33, v32, sub_1CF77EAF0, v26);

  sub_1CF007CB8(v22, type metadata accessor for VFSItem);
}

void sub_1CF7713D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, SEL *a6)
{
  v9 = a1[3];
  v8 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v12 = type metadata accessor for VFSItem(0);
  v13 = sub_1CF77E690(qword_1EDEA8860, type metadata accessor for VFSFileTree);
  v14 = sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem);
  v15 = sub_1CF76BB00(a3, 0, 1, v11, v10, v12, v9, v13, &off_1F4BF8588, v14, v8);

  v16 = [objc_opt_self() *a6];
  a4();
}

void sub_1CF77153C(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v11 = *a2;
  v12 = a1[3];
  v13 = a1[4];
  v14 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = sub_1CEFE58F0(MEMORY[0x1E69E7CC0]);
  v16 = *(v11 + 80);
  v17 = sub_1CF77E690(qword_1EDEABC30, type metadata accessor for VFSItem);
  v18 = sub_1CF76BB00(a3, 0, 1, v15, v14, v16, v12, a6, a7, v17, v13);

  v19 = [objc_opt_self() *a8];
  a4();
}

void sub_1CF77167C(int a1, id a2, void (*a3)(id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1CEFE9EB8(v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v17, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  a3(v16);
}

void sub_1CF771878(void *a1, NSObject *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1;
  if (objc_sync_enter(a2))
  {
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a2);
  }

  sub_1CF771964((a3 + 16), a4);
  if (objc_sync_exit(a2))
  {
    swift_unknownObjectRetain();

    sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a2);
  }

  dispatch_group_leave(a2);
}

void sub_1CF771964(unint64_t *a1, unint64_t a2)
{
  v4 = sub_1CF9E57E8();
  swift_beginAccess();
  v5 = *a1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *a1 = v5;
  if (!isUniquelyReferenced_nonNull_bridgeObject || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    v5 = sub_1CF7722E8(v5);
    *a1 = v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v7 = (v5 & 0xFFFFFFFFFFFFFF8) + 8 * a2;
    v8 = *(v7 + 0x20);
    *(v7 + 32) = v4;
    swift_endAccess();

    return;
  }

  __break(1u);
}

void sub_1CF771A28(void *a1, uint64_t a2, void (*a3)(id))
{
  v6 = [a1 userInfo];
  v7 = sub_1CF9E6638();

  v8 = *MEMORY[0x1E696A750];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  swift_beginAccess();
  v12 = *(a2 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  *&v20 = v12;
  sub_1CEFE9EB8(&v20, v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v19, v9, v11, isUniquelyReferenced_nonNull_native);

  v14 = [a1 domain];
  if (!v14)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = sub_1CF9E6888();
  }

  v15 = [a1 code];
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1CF9E6618();

  v18 = [v16 initWithDomain:v14 code:v15 userInfo:v17];

  a3(v18);
}

uint64_t sub_1CF771C04(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *))
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  a3(v4);
  return sub_1CEFCCC44(v4, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF771C5C(uint64_t a1, void (*a2)(_OWORD *, uint64_t))
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  a2(v3, a1);
  return sub_1CEFCCC44(v3, &qword_1EC4C0700, &qword_1CFA05B10);
}

uint64_t sub_1CF771CBC(uint64_t a1, void (*a2)(_BYTE *, void))
{
  sub_1CF1A91AC(a1, v4);
  a2(v4, 0);
  return sub_1CEFCCC44(v4, &qword_1EC4C0700, &qword_1CFA05B10);
}

unint64_t sub_1CF771D28(unint64_t a1, int64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 != 1)
      {
        v30[0] = 0;
        v30[1] = 0xE000000000000000;
        v23 = a3;
        sub_1CF796430(a1, a2, a3, 2u);
        sub_1CF9E7948();
        if (a1)
        {
          v24 = 0x6465727265666564;
        }

        else
        {
          v24 = 0;
        }

        if (a1)
        {
          v25 = 0xE900000000000020;
        }

        else
        {
          v25 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v24, v25);

        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v26 = sub_1CF953A9C(a2, v23 & 1);
        MEMORY[0x1D3868CC0](v26);
        goto LABEL_32;
      }

      sub_1CF796430(a1, a2, a3, 1u);
      sub_1CF9E7948();

      v30[0] = 0xD000000000000012;
      v30[1] = 0x80000001CFA5A480;
    }

    else
    {
      if (!a3)
      {
        sub_1CF796430(a1, a2, 0, 0);
        sub_1CF9E7948();

        v29 = NSFileProviderItemIdentifier.description.getter();
        MEMORY[0x1D3868CC0](v29);

        return 0xD00000000000001ALL;
      }

      sub_1CF796430(a1, a2, a3, 0);

      if (a2)
      {
        strcpy(v30, "item changed ");
        HIWORD(v30[1]) = -4864;
        v16 = a2;
        v17 = [a2 description];
        v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v20 = v19;

        MEMORY[0x1D3868CC0](v18, v20);

        return v30[0];
      }

      strcpy(v30, "item changed ");
      HIWORD(v30[1]) = -4864;
    }

    goto LABEL_20;
  }

  if (a4 <= 4u)
  {
    if (a4 != 3)
    {
      sub_1CF796430(a1, a2, a3, 4u);
      sub_1CF9E7948();

      v30[0] = 0xD000000000000013;
      v30[1] = 0x80000001CFA5A3C0;
      v27 = sub_1CF9E7F98();
      MEMORY[0x1D3868CC0](v27);

      MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
      return v30[0];
    }

    v6 = a3;
    sub_1CF796430(a1, a2, a3, 3u);
    sub_1CF9E7948();

    strcpy(v30, "rescan below ");
    HIWORD(v30[1]) = -4864;
    v7 = NSFileProviderItemIdentifier.description.getter();
    MEMORY[0x1D3868CC0](v7);

    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v8 = sub_1CF953A9C(a2, v6 & 1);
    goto LABEL_21;
  }

  if (a4 == 5)
  {
    v9 = a2;
    sub_1CF796430(a1, a2, a3, 5u);
    sub_1CF9E7948();

    v30[0] = 0xD000000000000012;
    v30[1] = 0x80000001CFA5A3A0;
    v10 = 6516580;
    v11 = 0xE700000000000000;
    v12 = 0x6B6E696C6D7973;
    if (v9 != 2)
    {
      v12 = 0x7361696C61;
      v11 = 0xE500000000000000;
    }

    if (v9)
    {
      v10 = 7498084;
    }

    if (v9 <= 1u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (v9 <= 1u)
    {
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = v11;
    }

    MEMORY[0x1D3868CC0](v13, v14);

    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
LABEL_20:
    v8 = NSFileProviderItemIdentifier.description.getter();
LABEL_21:
    MEMORY[0x1D3868CC0](v8);

LABEL_32:

    return v30[0];
  }

  if (a3 | a2 | a1)
  {
    if (a1 != 1 || a3 | a2)
    {
      sub_1CF796430(2, 0, a3, 6u);
      return 0xD000000000000013;
    }

    else
    {
      sub_1CF796430(1, 0, a3, 6u);
      return 0xD000000000000030;
    }
  }

  else
  {
    sub_1CF796430(a1, 0, a3, 6u);
    return 0xD000000000000035;
  }
}

uint64_t sub_1CF7722E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CF9E7818();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_1CF9E79B8();
}

double sub_1CF77239C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  return result;
}

uint64_t sub_1CF772420(void *a1, uint64_t a2, void **a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA450;
  *(v11 + 32) = v7;
  *(v11 + 40) = 256;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5 & 1;
  *(v11 + 147) = 11;
  v12 = v7;
  sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v11, v10, v8, v9);
}

uint64_t sub_1CF772508(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4750, &unk_1CFA05360);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1CF9FA450;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 41) = 0;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5 & 1;
  *(v12 + 147) = 11;
  sub_1CF92E0C4(MEMORY[0x1E69E7CC0], v12, v11, v9, v10);
}

void sub_1CF7725F0(void *a1, int a2, uint64_t a3, void *a4, void (*a5)(id), void *a6)
{
  v262 = a3;
  v263 = a2;
  v10 = sub_1CF9E63A8();
  v242 = *(v10 - 8);
  v243 = v10;
  v11 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v241 = &v240 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E53C8();
  v260 = *(v13 - 8);
  v261 = v13;
  v14 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v259 = &v240 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6388();
  v255 = *(v16 - 8);
  v256 = v16;
  v17 = *(v255 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v251 = (&v240 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v252 = &v240 - v20;
  v21 = sub_1CF9E6498();
  v253 = *(v21 - 8);
  v254 = v21;
  v22 = *(v253 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v250 = &v240 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v240 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v240 - v29;
  v31 = sub_1CF9E63D8();
  v248 = *(v31 - 8);
  v249 = v31;
  v32 = *(v248 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v240 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v244 = &v240 - v36;
  v37 = sub_1CF9E6448();
  v257 = *(v37 - 8);
  v258 = v37;
  v38 = *(v257 + 64);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v240 = &v240 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v245 = &v240 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v246 = &v240 - v43;
  v44 = sub_1CF9E73D8();
  isa = v44[-1].isa;
  v45 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v240 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1CF9E5248();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v264 = &v240 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CF9E5268();
  v52 = *(v51 - 8);
  v266 = v51;
  v267 = v52;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v265 = &v240 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = swift_allocObject();
  v55[2] = a4;
  v55[3] = a5;
  v269 = a5;
  v271 = v55;
  v55[4] = a6;
  v301 = a1;
  v268 = a4;
  v270 = a6;

  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v282 = v298;
    v283 = v299;
    v278 = v295;
    v279 = v296;
    v280 = *v297;
    v281 = *&v297[16];
    v276 = aBlock;
    v277 = v294;
    v290 = v298;
    v291 = v299;
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    v289[1] = *&v297[16];
    v284 = v300;
    v292 = v300;
    v285 = aBlock;
    v286 = v294;
    if (sub_1CF2B971C(&v285))
    {
      sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v66 = nullsub_1(&v285);
    v67 = *v66;
    v68 = *(v66 + 8);
    v69 = *(v66 + 112);

    v70 = sub_1CEFCCC44(v66 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v68 != 2 || v67)
    {
      if (v68 != 2 || v67 != 1)
      {
        *&v274[0] = 0x2F73662F70665F5FLL;
        *(&v274[0] + 1) = 0xE800000000000000;
        v272 = v67;
        v273 = v68;
        v122 = VFSItemID.description.getter(v70, v71);
        MEMORY[0x1D3868CC0](v122);

        v82 = sub_1CF9E6888();

        v83 = v268;
        if (v69)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v72 = MEMORY[0x1E6967280];
    }

    else
    {
      v72 = MEMORY[0x1E6967258];
    }

    v82 = *v72;
    v83 = v268;
    if (v69)
    {
LABEL_22:
      v84 = v69;
LABEL_54:
      v123 = v69;
      sub_1CF77167C(v84, v83, v269);

      v119 = v301;
      goto LABEL_73;
    }

LABEL_53:
    v84 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:

  *&v276 = a1;
  v57 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v289 + 9) = *&v297[9];
    v288 = v296;
    v289[0] = *v297;
    v286 = v294;
    v287 = v295;
    v285 = aBlock;
    if (!v297[24])
    {
      v73 = *(&v289[0] + 1);
      v74 = *(&v287 + 1);
      v75 = v287;
      v76 = *(&v286 + 1);
      v77 = v286;
      v78 = *(&v285 + 1);
      v267 = v285;

      sub_1CF1D56D0(v78, v77, v76, v75, v74);
      if (v73)
      {
        v79 = v73;
        v81 = v267;
        v80 = v268;
      }

      else
      {
        v120 = objc_opt_self();
        v81 = v267;
        v79 = [v120 fileProviderErrorForNonExistentItemWithIdentifier_];
        v80 = v268;
      }

      v121 = v73;
      sub_1CF77167C(v79, v80, v269);

      v119 = v276;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v285, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v274[0] = a1;
  v58 = a1;
  if (swift_dynamicCast())
  {
    v282 = v298;
    v283 = v299;
    v278 = v295;
    v279 = v296;
    v280 = *v297;
    v281 = *&v297[16];
    v276 = aBlock;
    v277 = v294;
    v290 = v298;
    v291 = v299;
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    v289[1] = *&v297[16];
    v284 = v300;
    v292 = v300;
    v285 = aBlock;
    v286 = v294;
    v59 = sub_1CF2B971C(&v285);
    switch(v59)
    {
      case 5:
        nullsub_1(&v285);
        v92 = *&v274[0];
LABEL_30:

        v94 = v269;
        v95 = v268;
        goto LABEL_31;
      case 3:
        v85 = nullsub_1(&v285);
        v86 = *v85;
        v87 = *(v85 + 8);
        sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v263)
        {
          LODWORD(v272) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v88 = v259;
          v89 = v261;
          sub_1CF9E57D8();
          v90 = sub_1CF9E53A8();
          v91 = v260;
LABEL_48:
          (*(v91 + 8))(v88, v89);
          sub_1CF77167C(v90, v268, v269);

          v119 = *&v274[0];
LABEL_73:

          return;
        }

        LODWORD(v267) = v87;
        v268 = v86;
        v124 = v262;
        v125 = *(*(*(v262 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v126 = swift_dynamicCastClassUnconditional();
        v127 = swift_allocObject();
        v128 = v271;
        *(v127 + 16) = sub_1CF7969FC;
        *(v127 + 24) = v128;
        v269 = v127;
        *(v127 + 32) = v124;
        v265 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v266 = v126;
        v129 = *(v126 + 216);
        v272 = MEMORY[0x1E69E7CC0];
        v264 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v270 = v125;

        v130 = v129;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v131 = sub_1CF9E73E8();

        (*(isa + 1))(v47, v44);
        qos_class_self();
        sub_1CF9E63B8();
        v133 = v248;
        v132 = v249;
        v134 = *(v248 + 48);
        if (v134(v28, 1, v249) == 1)
        {
          (*(v133 + 104))(v35, *MEMORY[0x1E69E7FA0], v132);
          if (v134(v28, 1, v132) != 1)
          {
            sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v133 + 32))(v35, v28, v132);
        }

        ObjectType = swift_getObjectType();
        v150 = v245;
        sub_1CF9E6428();
        v151 = swift_allocObject();
        v152 = v268;
        v153 = v269;
        *(v151 + 16) = v266;
        *(v151 + 24) = v152;
        *(v151 + 32) = v267;
        *(v151 + 40) = 0u;
        *(v151 + 56) = 0u;
        *(v151 + 72) = 0u;
        *(v151 + 88) = 0u;
        *(v151 + 104) = 0u;
        *(v151 + 120) = 0u;
        *(v151 + 136) = 0;
        *(v151 + 144) = 1;
        *(v151 + 152) = v131;
        *(v151 + 160) = sub_1CF796A00;
        *(v151 + 168) = v153;

        swift_unknownObjectRetain();

        goto LABEL_67;
      case 1:
        v60 = nullsub_1(&v285);
        v61 = *v60;
        v62 = *(v60 + 8);
        v63 = *(v60 + 24);
        v64 = *(v60 + 48);
        v65 = *(v60 + 56);

        sub_1CF480620(v64, v65);

        if (v263)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v88 = v265;
          v89 = v266;
          sub_1CF9E57D8();
          v90 = sub_1CF9E50D8();
          v91 = v267;
          goto LABEL_48;
        }

        LODWORD(v267) = v62;
        v268 = v61;
        v135 = v262;
        v136 = *(*(*(v262 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v137 = swift_dynamicCastClassUnconditional();
        v138 = swift_allocObject();
        v139 = v271;
        *(v138 + 16) = sub_1CF7969FC;
        *(v138 + 24) = v139;
        v269 = v138;
        *(v138 + 32) = v135;
        v265 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v266 = v137;
        v140 = *(v137 + 216);
        v272 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v270 = v136;

        v141 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v142 = sub_1CF9E73E8();

        (*(isa + 1))(v47, v44);
        qos_class_self();
        sub_1CF9E63B8();
        v144 = v248;
        v143 = v249;
        v145 = *(v248 + 48);
        if (v145(v30, 1, v249) == 1)
        {
          (*(v144 + 104))(v244, *MEMORY[0x1E69E7FA0], v143);
          if (v145(v30, 1, v143) != 1)
          {
            sub_1CEFCCC44(v30, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v144 + 32))(v244, v30, v143);
        }

        ObjectType = swift_getObjectType();
        v150 = v246;
        sub_1CF9E6428();
        v151 = swift_allocObject();
        v154 = v268;
        v155 = v269;
        *(v151 + 16) = v266;
        *(v151 + 24) = v154;
        *(v151 + 32) = v267;
        *(v151 + 40) = 0u;
        *(v151 + 56) = 0u;
        *(v151 + 72) = 0u;
        *(v151 + 88) = 0u;
        *(v151 + 104) = 0u;
        *(v151 + 120) = 0u;
        *(v151 + 136) = 0;
        *(v151 + 144) = 1;
        *(v151 + 152) = v142;
        *(v151 + 160) = sub_1CF796A04;
        *(v151 + 168) = v155;

        swift_unknownObjectRetain();

LABEL_67:
        sub_1CEFD5828(0, v150, sub_1CF72A328, v151);

        (*(v257 + 8))(v150, v258);
        v156 = v250;
        sub_1CF9E6478();
        v157 = v252;
        sub_1CEFD5B64(v252);
        v158 = v251;
        sub_1CEFD5BD8(v251);
        MEMORY[0x1D3869770](v156, v157, v158, ObjectType);
        v159 = *(v255 + 8);
        v160 = v158;
        v161 = v256;
        v159(v160, v256);
        v159(v157, v161);
        (*(v253 + 8))(v156, v254);
        sub_1CF9E7448();

        swift_unknownObjectRelease();
        v119 = *&v274[0];
        goto LABEL_73;
    }

    sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v276 = a1;
  v93 = a1;
  if (swift_dynamicCast())
  {
    *(v289 + 9) = *&v297[9];
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    v285 = aBlock;
    v286 = v294;
    if (v297[24] == 5)
    {
      v92 = v276;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v285, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v102 = a1;
  if (swift_dynamicCast())
  {
    if (v285 <= 2u)
    {
      v94 = v269;
      v95 = v268;
      if (v285 - 1 < 2)
      {

        sub_1CF9E5118();
        goto LABEL_32;
      }

LABEL_31:
      sub_1CF9E50E8();
LABEL_32:
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v96 = v265;
      v97 = v266;
      sub_1CF9E57D8();
      v98 = sub_1CF9E50D8();
      (*(v267 + 8))(v96, v97);
      v99 = v98;
      v100 = v95;
      v101 = v94;
LABEL_33:
      sub_1CF77167C(v99, v100, v101);

      return;
    }

    v94 = v269;
    v95 = v268;
    if (v285 != 4)
    {

      sub_1CF9E5198();
      goto LABEL_32;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v112 = v265;
    v113 = v266;
    sub_1CF9E57D8();
    v114 = sub_1CF9E50D8();
    (*(v267 + 8))(v112, v113);
    LODWORD(v115) = v114;
    v116 = v95;
    v117 = v94;
LABEL_72:
    sub_1CF77167C(v115, v116, v117);

    v119 = aBlock;
    goto LABEL_73;
  }

  *&v285 = a1;
  v103 = a1;
  if (swift_dynamicCast())
  {
    if ((v294 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v294);
      LODWORD(v276) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v146 = v259;
      v147 = v261;
      sub_1CF9E57D8();
      v148 = sub_1CF9E53A8();
      (*(v260 + 8))(v146, v147);
      sub_1CF77167C(v148, v268, v269);

      v119 = v285;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v285 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_1CF9FA450;
    v105 = *MEMORY[0x1E696A578];
    *(v104 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v104 + 40) = v106;
    v107 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v108 = FPLocv();

    v109 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v111 = v110;

    *(v104 + 72) = MEMORY[0x1E69E6158];
    *(v104 + 48) = v109;
    *(v104 + 56) = v111;
    sub_1CF4E04E8(v104);
    swift_setDeallocating();
    sub_1CEFCCC44(v104 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v98 = aBlock;
    goto LABEL_84;
  }

  *&v274[0] = a1;
  v118 = a1;
  if (swift_dynamicCast())
  {
    v282 = v298;
    v283 = v299;
    v278 = v295;
    v279 = v296;
    v280 = *v297;
    v281 = *&v297[16];
    v276 = aBlock;
    v277 = v294;
    v290 = v298;
    v291 = v299;
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    v289[1] = *&v297[16];
    v284 = v300;
    v292 = v300;
    v285 = aBlock;
    v286 = v294;
    if (sub_1CF2B971C(&v285) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v162 = a1;
  if (swift_dynamicCast())
  {
    v115 = FPDomainUnavailableError();
    if (!v115)
    {
LABEL_118:

      __break(1u);
LABEL_119:
      MEMORY[0x1EEE9AC00](v203);
      *(&v240 - 2) = v44;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v240 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v114 = v115;
    v116 = v268;
    v117 = v269;
    goto LABEL_72;
  }

  v272 = a1;
  v163 = a1;
  if (swift_dynamicCast())
  {
    v282 = v298;
    v283 = v299;
    v278 = v295;
    v279 = v296;
    v280 = *v297;
    v281 = *&v297[16];
    v276 = aBlock;
    v277 = v294;
    v290 = v298;
    v291 = v299;
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    v289[1] = *&v297[16];
    v284 = v300;
    v292 = v300;
    v285 = aBlock;
    v286 = v294;
    if (sub_1CF2B971C(&v285) == 10)
    {
      v164 = *(nullsub_1(&v285) + 16);
      if (!v164)
      {
        LODWORD(v274[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v165 = v259;
        v166 = v261;
        sub_1CF9E57D8();
        v164 = sub_1CF9E53A8();
        (*(v260 + 8))(v165, v166);
      }

      v167 = v269;
      v168 = v268;
      v274[6] = v282;
      v274[7] = v283;
      v275 = v284;
      v274[2] = v278;
      v274[3] = v279;
      v274[4] = v280;
      v274[5] = v281;
      v274[0] = v276;
      v274[1] = v277;
      v169 = *(nullsub_1(v274) + 16);
      sub_1CF77167C(v164, v168, v167);
      sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);

      v119 = v272;
      goto LABEL_73;
    }

    sub_1CEFCCC44(&v276, &unk_1EC4BE320, &unk_1CFA08B50);
    v171 = v272;
    goto LABEL_82;
  }

  *&v276 = a1;
  v170 = a1;
  if (swift_dynamicCast())
  {
    v287 = v295;
    v288 = v296;
    v289[0] = *v297;
    *(v289 + 9) = *&v297[9];
    v285 = aBlock;
    v286 = v294;
    sub_1CEFCCC44(&v285, &qword_1EC4BF270, &qword_1CFA01B70);
    v171 = v276;
LABEL_82:

LABEL_83:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v172 = v265;
    v173 = v266;
    sub_1CF9E57D8();
    v98 = sub_1CF9E50D8();
    (*(v267 + 8))(v172, v173);
LABEL_84:
    v99 = v98;
    v100 = v268;
    v101 = v269;
    goto LABEL_33;
  }

  *&aBlock = a1;
  v174 = a1;
  v175 = swift_dynamicCast();

  if (v175)
  {
    goto LABEL_83;
  }

  *&v285 = a1;
  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v294, *(&v294 + 1), v295);
    v171 = v285;
    goto LABEL_82;
  }

  *&v285 = a1;
  v177 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v294, SBYTE8(v294));
    v171 = v285;
    goto LABEL_82;
  }

  *&v285 = a1;
  v178 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v171 = v285;
    goto LABEL_82;
  }

  v179 = sub_1CF9E57E8();
  v180 = [v179 userInfo];
  v181 = sub_1CF9E6638();

  v182 = *MEMORY[0x1E696AA08];
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v181 + 16))
  {

    goto LABEL_97;
  }

  v185 = sub_1CEFE4328(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  sub_1CEFD1104(*(v181 + 56) + 32 * v185, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v188 = v285;

    v189 = v179;
    v190 = v188;
    sub_1CF7725F0();

    return;
  }

LABEL_98:
  v191 = swift_allocObject();
  v192 = [v179 userInfo];
  v193 = sub_1CF9E6638();

  v194 = *MEMORY[0x1E696A750];
  v195 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v193 + 16))
  {

    goto LABEL_113;
  }

  v197 = sub_1CEFE4328(v195, v196);
  v44 = v198;

  if ((v44 & 1) == 0)
  {
LABEL_113:

    goto LABEL_114;
  }

  sub_1CEFD1104(*(v193 + 56) + 32 * v197, &aBlock);

  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_114:
    swift_deallocUninitializedObject();
    sub_1CF77167C(a1, v268, v269);

    return;
  }

  v191[2] = v285;
  v199 = dispatch_group_create();
  v200 = v191[2];
  if (v200 >> 62)
  {
    goto LABEL_116;
  }

  v201 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v201)
  {
    goto LABEL_122;
  }

  do
  {
    v202 = 0;
    while (1)
    {
      v44 = v199;
      v203 = objc_sync_enter(v44);
      if (v203)
      {
        goto LABEL_119;
      }

      swift_beginAccess();
      v204 = v191[2];
      if ((v204 & 0xC000000000000001) != 0)
      {
        v205 = MEMORY[0x1D3869C30](v202);
        goto LABEL_108;
      }

      if (v202 >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v205 = *(v204 + 8 * v202 + 32);
LABEL_108:
      v206 = v205;
      swift_endAccess();
      v207 = objc_sync_exit(v44);
      if (v207)
      {
        MEMORY[0x1EEE9AC00](v207);
        *(&v240 - 2) = v44;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v240 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v44);
      v208 = v44;
      swift_retain_n();
      v209 = v208;
      v210 = v206;
      sub_1CF7699E0(v210, v263 & 1, v262, v209, v191, v202);

      if (v201 == ++v202)
      {
        goto LABEL_122;
      }
    }

    __break(1u);
LABEL_116:
    v211 = sub_1CF9E7818();
    if (v211 < 0)
    {
      __break(1u);
      goto LABEL_118;
    }

    v201 = v211;
  }

  while (v211);
LABEL_122:
  if (v263)
  {
    v212 = [v179 userInfo];
    v213 = sub_1CF9E6638();

    v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v216 = v215;
    swift_beginAccess();
    v217 = v191[2];
    *(&v294 + 1) = v267;
    *&aBlock = v217;
    sub_1CEFE9EB8(&aBlock, &v285);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v274[0] = v213;
    sub_1CF1D154C(&v285, v214, v216, isUniquelyReferenced_nonNull_native);

    v219 = [v179 domain];
    if (!v219)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v219 = sub_1CF9E6888();
    }

    v220 = [v179 code];
    v221 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v222 = sub_1CF9E6618();

    v223 = [v221 initWithDomain:v219 code:v220 userInfo:v222];

    sub_1CF77167C(v223, v268, v269);
  }

  else
  {
    v224 = *(*(v262 + 16) + 64);
    v225 = swift_allocObject();
    v225[2] = v179;
    v225[3] = v191;
    v225[4] = sub_1CF7969FC;
    v225[5] = v271;

    v226 = v224;
    v270 = v179;

    v227 = fpfs_current_log();
    v269 = fpfs_adopt_log();
    v228 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v229;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v230 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v230);

    sub_1CF9E6978();

    v231 = __fp_log_fork();

    *(v228 + 16) = v231;
    v232 = swift_allocObject();
    *(v232 + 16) = v227;
    *(v232 + 24) = v228;
    v267 = v228;
    *(v232 + 32) = v226;
    *(v232 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v232 + 48) = 48;
    *(v232 + 56) = 2;
    *(v232 + 64) = sub_1CF796ACC;
    *(v232 + 72) = v225;
    *&v295 = sub_1CF2B9F54;
    *(&v295 + 1) = v232;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v294 = sub_1CEFCA444;
    *(&v294 + 1) = &block_descriptor_239_0;
    v233 = _Block_copy(&aBlock);
    v266 = v226;
    v268 = v227;

    v234 = v240;
    sub_1CF9E63F8();
    *&v285 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v235 = v241;
    v236 = v243;
    sub_1CF9E77B8();
    v237 = v266;
    sub_1CF9E7308();
    _Block_release(v233);
    (*(v242 + 8))(v235, v236);
    (*(v257 + 8))(v234, v258);

    v238 = v269;
    v239 = fpfs_adopt_log();
  }
}

void sub_1CF774BF8(dispatch_group_t a1, int a2, uint64_t a3, void *a4, unint64_t *a5, id a6)
{
  v298 = a3;
  v299 = a2;
  v10 = sub_1CF9E63A8();
  v267 = *(v10 - 8);
  v268 = v10;
  v11 = *(v267 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v266 = &v264 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E53C8();
  v296 = *(v13 - 8);
  v297 = v13;
  v14 = *(v296 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v269 = &v264 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v273 = &v264 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v274 = &v264 - v19;
  v20 = sub_1CF9E6388();
  v292 = *(v20 - 8);
  v293 = v20;
  v21 = *(v292 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v288 = (&v264 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v289 = &v264 - v24;
  v25 = sub_1CF9E6498();
  v290 = *(v25 - 8);
  v291 = v25;
  v26 = *(v290 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v287 = &v264 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v277 = &v264 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v278 = &v264 - v32;
  v33 = sub_1CF9E63D8();
  v285 = *(v33 - 8);
  v286 = v33;
  v34 = *(v285 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v275 = &v264 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v276 = &v264 - v37;
  v38 = sub_1CF9E6448();
  v294 = *(v38 - 8);
  v295 = v38;
  v39 = *(v294 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v265 = &v264 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v279 = &v264 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v280 = &v264 - v44;
  v45 = sub_1CF9E73D8();
  v283 = *(v45 - 8);
  v284 = v45;
  v46 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v282 = &v264 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1CF9E5248();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v300 = &v264 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1CF9E5268();
  v52 = *(v51 - 8);
  v301 = v51;
  v302 = v52;
  v53 = *(v52 + 64);
  v54 = MEMORY[0x1EEE9AC00](v51);
  v271 = &v264 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v270 = &v264 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v281 = &v264 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v264 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60);
  v272 = &v264 - v64;
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = &v264 - v66;
  MEMORY[0x1EEE9AC00](v65);
  v69 = &v264 - v68;
  v70 = swift_allocObject();
  v70[2] = a4;
  v70[3] = a5;
  v305 = a6;
  v70[4] = a6;
  v335 = a1;
  v71 = a4;
  v306 = a5;

  v72 = a1;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319))
    {
      sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v85 = nullsub_1(&v319);
    v86 = *v85;
    v87 = *(v85 + 8);
    v88 = *(v85 + 112);

    v89 = sub_1CEFCCC44(v85 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v87 != 2 || v86)
    {
      if (v87 != 2 || v86 != 1)
      {
        v309[0] = 0x2F73662F70665F5FLL;
        v309[1] = 0xE800000000000000;
        v307 = v86;
        v308 = v87;
        v136 = VFSItemID.description.getter(v89, v90);
        MEMORY[0x1D3868CC0](v136);

        v101 = sub_1CF9E6888();

        if (v88)
        {
          goto LABEL_22;
        }

        goto LABEL_62;
      }

      v91 = MEMORY[0x1E6967280];
    }

    else
    {
      v91 = MEMORY[0x1E6967258];
    }

    v101 = *v91;
    if (v88)
    {
LABEL_22:
      v102 = v88;
LABEL_63:
      v137 = v88;
      v138 = v102;
      if (objc_sync_enter(v71))
      {
        swift_unknownObjectRetain();

        sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v71);
      }

      sub_1CF771964(v306 + 2, v305);
      if (objc_sync_exit(v71))
      {
        swift_unknownObjectRetain();

        sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v71);
      }

      dispatch_group_leave(v71);
      goto LABEL_88;
    }

LABEL_62:
    v102 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_63;
  }

LABEL_4:
  v303 = v71;
  v304 = v70;

  *&v310 = a1;
  v74 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v323 + 9) = *(v331 + 9);
    v322 = v330;
    v323[0] = v331[0];
    v320 = v328;
    v321 = v329;
    v319 = aBlock;
    if (!BYTE8(v331[1]))
    {
      v92 = *(&v323[0] + 1);
      v93 = *(&v321 + 1);
      v94 = v321;
      v95 = *(&v320 + 1);
      v96 = v320;
      v97 = *(&v319 + 1);
      v302 = v319;

      sub_1CF1D56D0(v97, v96, v95, v94, v93);
      if (v92)
      {
        v98 = v92;
        v99 = v303;
        v100 = v302;
      }

      else
      {
        v131 = objc_opt_self();
        v100 = v302;
        v98 = [v131 fileProviderErrorForNonExistentItemWithIdentifier_];
        v99 = v303;
      }

      v132 = v92;
      v133 = v98;
      if (objc_sync_enter(v99))
      {
        swift_unknownObjectRetain();

        sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v99);
      }

      sub_1CF771964(v306 + 2, v305);
      if (objc_sync_exit(v99))
      {
        swift_unknownObjectRetain();

        sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v99);
      }

      dispatch_group_leave(v99);
      goto LABEL_88;
    }

    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v309[0] = a1;
  v75 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    v76 = sub_1CF2B971C(&v319);
    switch(v76)
    {
      case 5:
        nullsub_1(&v319);
        v108 = v309[0];
LABEL_33:

        a1 = v303;
LABEL_34:
        sub_1CF9E50E8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v110 = v301;
        sub_1CF9E57D8();
        v73 = sub_1CF9E50D8();
        (*(v302 + 8))(v67, v110);
        goto LABEL_35;
      case 3:
        v103 = nullsub_1(&v319);
        v104 = *v103;
        v105 = *(v103 + 8);
        sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v299)
        {
          LODWORD(v307) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v69 = v274;
          v83 = v297;
          sub_1CF9E57D8();
          v73 = sub_1CF9E53A8();
          v84 = v296;
LABEL_25:
          (*(v84 + 8))(v69, v83);
          v106 = v73;
          a1 = v303;
          if (!objc_sync_enter(v303))
          {
LABEL_26:
            sub_1CF771964(v306 + 2, v305);
            if (objc_sync_exit(a1))
            {
              goto LABEL_139;
            }

            dispatch_group_leave(a1);
            v107 = v309[0];
            goto LABEL_87;
          }

LABEL_140:
          swift_unknownObjectRetain();

          sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, a1);
        }

        LODWORD(v305) = v105;
        v306 = v104;
        v139 = v298;
        v140 = *(*(*(v298 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v141 = swift_dynamicCastClassUnconditional();
        v142 = swift_allocObject();
        v143 = v304;
        v142[2] = sub_1CF796A08;
        v142[3] = v143;
        v142[4] = v139;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v303 = v141;
        isa = v141[27].isa;
        v307 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v145 = isa;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v146 = v282;
        v147 = v284;
        sub_1CF9E77B8();
        v148 = sub_1CF9E73E8();

        (*(v283 + 8))(v146, v147);
        qos_class_self();
        v149 = v277;
        sub_1CF9E63B8();
        v151 = v285;
        v150 = v286;
        v152 = *(v285 + 48);
        if (v152(v149, 1, v286) == 1)
        {
          (*(v151 + 104))(v275, *MEMORY[0x1E69E7FA0], v150);
          if (v152(v149, 1, v150) != 1)
          {
            sub_1CEFCCC44(v149, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v151 + 32))(v275, v149, v150);
        }

        ObjectType = swift_getObjectType();
        v171 = v279;
        sub_1CF9E6428();
        v172 = swift_allocObject();
        v173 = v306;
        *(v172 + 16) = v303;
        *(v172 + 24) = v173;
        *(v172 + 32) = v305;
        *(v172 + 40) = 0u;
        *(v172 + 56) = 0u;
        *(v172 + 72) = 0u;
        *(v172 + 88) = 0u;
        *(v172 + 104) = 0u;
        *(v172 + 120) = 0u;
        *(v172 + 136) = 0;
        *(v172 + 144) = 1;
        *(v172 + 152) = v148;
        *(v172 + 160) = sub_1CF796A00;
        *(v172 + 168) = v142;

        swift_unknownObjectRetain();

        goto LABEL_80;
      case 1:
        v77 = nullsub_1(&v319);
        v78 = *v77;
        v79 = *(v77 + 8);
        v80 = *(v77 + 24);
        v81 = *(v77 + 48);
        v82 = *(v77 + 56);

        sub_1CF480620(v81, v82);

        if (v299)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v83 = v301;
          sub_1CF9E57D8();
          v73 = sub_1CF9E50D8();
          v84 = v302;
          goto LABEL_25;
        }

        LODWORD(v305) = v79;
        v306 = v78;
        v153 = v298;
        v154 = *(*(*(v298 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v155 = swift_dynamicCastClassUnconditional();
        v156 = swift_allocObject();
        v157 = v304;
        v156[2] = sub_1CF796A08;
        v156[3] = v157;
        v156[4] = v153;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v303 = v155;
        v158 = v155[27].isa;
        v307 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v159 = v158;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v160 = v282;
        v161 = v284;
        sub_1CF9E77B8();
        v162 = sub_1CF9E73E8();

        (*(v283 + 8))(v160, v161);
        qos_class_self();
        v163 = v278;
        sub_1CF9E63B8();
        v165 = v285;
        v164 = v286;
        v166 = *(v285 + 48);
        if (v166(v163, 1, v286) == 1)
        {
          (*(v165 + 104))(v276, *MEMORY[0x1E69E7FA0], v164);
          if (v166(v163, 1, v164) != 1)
          {
            sub_1CEFCCC44(v163, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v165 + 32))(v276, v163, v164);
        }

        ObjectType = swift_getObjectType();
        v171 = v280;
        sub_1CF9E6428();
        v172 = swift_allocObject();
        v174 = v306;
        *(v172 + 16) = v303;
        *(v172 + 24) = v174;
        *(v172 + 32) = v305;
        *(v172 + 40) = 0u;
        *(v172 + 56) = 0u;
        *(v172 + 72) = 0u;
        *(v172 + 88) = 0u;
        *(v172 + 104) = 0u;
        *(v172 + 120) = 0u;
        *(v172 + 136) = 0;
        *(v172 + 144) = 1;
        *(v172 + 152) = v162;
        *(v172 + 160) = sub_1CF796A04;
        *(v172 + 168) = v156;

        swift_unknownObjectRetain();

LABEL_80:
        sub_1CEFD5828(0, v171, sub_1CF72A328, v172);

        (*(v294 + 8))(v171, v295);
        v175 = v287;
        sub_1CF9E6478();
        v176 = v289;
        sub_1CEFD5B64(v289);
        v177 = v288;
        sub_1CEFD5BD8(v288);
        MEMORY[0x1D3869770](v175, v176, v177, ObjectType);
        v178 = *(v292 + 8);
        v179 = v177;
        v180 = v293;
        v178(v179, v293);
        v178(v176, v180);
        (*(v290 + 8))(v175, v291);
        sub_1CF9E7448();

        swift_unknownObjectRelease();

        goto LABEL_88;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v310 = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    *(v323 + 9) = *(v331 + 9);
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v319 = aBlock;
    v320 = v328;
    if (BYTE8(v331[1]) == 5)
    {
      v108 = v310;
      goto LABEL_33;
    }

    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v112 = a1;
  if (swift_dynamicCast())
  {
    a1 = v303;
    if (v319 <= 2u)
    {
      if (v319 - 1 >= 2)
      {

        goto LABEL_34;
      }

      sub_1CF9E5118();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v113 = v301;
      sub_1CF9E57D8();
      v73 = sub_1CF9E50D8();
      (*(v302 + 8))(v62, v113);
LABEL_35:
      v111 = v73;
      if (objc_sync_enter(a1))
      {
        goto LABEL_140;
      }

LABEL_36:
      sub_1CF771964(v306 + 2, v305);
      if (objc_sync_exit(a1))
      {
        goto LABEL_139;
      }

      dispatch_group_leave(a1);
      goto LABEL_38;
    }

    if (v319 != 4)
    {

      sub_1CF9E5198();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v134 = v281;
      v135 = v301;
      sub_1CF9E57D8();
      v73 = sub_1CF9E50D8();
      (*(v302 + 8))(v134, v135);
      goto LABEL_35;
    }

    sub_1CF9E51A8();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v124 = v272;
    v125 = v301;
    sub_1CF9E57D8();
    v73 = sub_1CF9E50D8();
    (*(v302 + 8))(v124, v125);
    v126 = v73;
    if (objc_sync_enter(a1))
    {
      goto LABEL_140;
    }

    sub_1CF771964(v306 + 2, v305);
    if (objc_sync_exit(a1))
    {
      goto LABEL_139;
    }

LABEL_86:

    dispatch_group_leave(a1);
    v107 = aBlock;
LABEL_87:

    goto LABEL_88;
  }

  *&v319 = a1;
  v114 = a1;
  if (swift_dynamicCast())
  {
    if ((v328 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v328);
      LODWORD(v310) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v167 = v273;
      v168 = v297;
      sub_1CF9E57D8();
      v73 = sub_1CF9E53A8();
      (*(v296 + 8))(v167, v168);
      v169 = v73;
      a1 = v303;
      if (!objc_sync_enter(v303))
      {
        sub_1CF771964(v306 + 2, v305);
        if (objc_sync_exit(a1))
        {
          goto LABEL_139;
        }

        dispatch_group_leave(a1);
        v107 = v319;
        goto LABEL_87;
      }

      goto LABEL_140;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v319 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1CF9FA450;
    v116 = *MEMORY[0x1E696A578];
    *(v115 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v115 + 40) = v117;
    v118 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v119 = FPLocv();

    v120 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v122 = v121;

    *(v115 + 72) = MEMORY[0x1E69E6158];
    *(v115 + 48) = v120;
    *(v115 + 56) = v122;
    sub_1CF4E04E8(v115);
    swift_setDeallocating();
    sub_1CEFCCC44(v115 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v73 = aBlock;
    v123 = aBlock;
    a1 = v303;
    if (objc_sync_enter(v303))
    {
      goto LABEL_140;
    }

    goto LABEL_36;
  }

  v309[0] = a1;
  v127 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v128 = v270;
      v129 = v301;
      sub_1CF9E57D8();
      v73 = sub_1CF9E50D8();
      (*(v302 + 8))(v128, v129);
      v130 = v73;
      a1 = v303;
      if (!objc_sync_enter(v303))
      {
        goto LABEL_26;
      }

      goto LABEL_140;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v181 = a1;
  if (swift_dynamicCast())
  {
    v182 = FPDomainUnavailableError();
    if (!v182)
    {
      goto LABEL_138;
    }

    v73 = v182;
    v183 = v182;
    a1 = v303;
    if (objc_sync_enter(v303))
    {
      v234 = a1;
      goto LABEL_147;
    }

    sub_1CF771964(v306 + 2, v305);
    if (objc_sync_exit(a1))
    {
      v233 = a1;
      goto LABEL_164;
    }

    goto LABEL_86;
  }

  v307 = a1;
  v184 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319) == 10)
    {
      v73 = *(nullsub_1(&v319) + 16);
      if (!v73)
      {
        LODWORD(v309[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v185 = v269;
        v186 = v297;
        sub_1CF9E57D8();
        v73 = sub_1CF9E53A8();
        (*(v296 + 8))(v185, v186);
      }

      sub_1CEFCCBDC(&v310, v309, &unk_1EC4BE320, &unk_1CFA08B50);
      v187 = v73;
      v188 = v303;
      if (!objc_sync_enter(v303))
      {
        sub_1CF771964(v306 + 2, v305);
        if (objc_sync_exit(v188))
        {
          v233 = v303;
          swift_unknownObjectRetain();

          goto LABEL_165;
        }

        dispatch_group_leave(v303);
        sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);

LABEL_88:

        return;
      }

      goto LABEL_150;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
    v190 = v307;
    goto LABEL_99;
  }

  *&v310 = a1;
  v189 = a1;
  if (swift_dynamicCast())
  {
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    *(v323 + 9) = *(v331 + 9);
    v319 = aBlock;
    v320 = v328;
    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);

    goto LABEL_101;
  }

  *&aBlock = a1;
  v191 = a1;
  v192 = swift_dynamicCast();

  if (v192)
  {
LABEL_101:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v193 = v271;
    v194 = v301;
    sub_1CF9E57D8();
    v73 = sub_1CF9E50D8();
    (*(v302 + 8))(v193, v194);
    v195 = v73;
    v188 = v303;
    if (!objc_sync_enter(v303))
    {
      sub_1CF771964(v306 + 2, v305);
      if (objc_sync_exit(v188))
      {
        goto LABEL_163;
      }

      dispatch_group_leave(v303);
LABEL_38:

      return;
    }

LABEL_150:
    swift_unknownObjectRetain();

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v188);
  }

  *&v319 = a1;
  v196 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v328, *(&v328 + 1), v329);
    v190 = v319;
LABEL_99:

    goto LABEL_101;
  }

  *&v319 = a1;
  v197 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v328, SBYTE8(v328));
    v190 = v319;
    goto LABEL_99;
  }

  *&v319 = a1;
  v198 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    v190 = v319;
    goto LABEL_99;
  }

  v199 = sub_1CF9E57E8();
  v200 = [v199 userInfo];
  v201 = sub_1CF9E6638();

  v202 = *MEMORY[0x1E696AA08];
  v203 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v201 + 16))
  {

    goto LABEL_115;
  }

  v205 = sub_1CEFE4328(v203, v204);
  v207 = v206;

  if ((v207 & 1) == 0)
  {
LABEL_115:

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v201 + 56) + 32 * v205, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v208 = v319;

    v209 = v199;
    v210 = v208;
    sub_1CF7725F0();

    return;
  }

LABEL_116:
  v211 = swift_allocObject();
  v212 = [v199 userInfo];
  v73 = sub_1CF9E6638();

  v213 = *MEMORY[0x1E696A750];
  v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!v73[2])
  {

    goto LABEL_132;
  }

  v216 = sub_1CEFE4328(v214, v215);
  v218 = v217;

  if ((v218 & 1) == 0)
  {

    goto LABEL_132;
  }

  sub_1CEFD1104(v73[7] + 32 * v216, &aBlock);

  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_132:
    swift_deallocUninitializedObject();
    v230 = a1;
    v231 = v303;
    if (objc_sync_enter(v303))
    {
      swift_unknownObjectRetain();

      sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v231);
    }

    sub_1CF771964(v306 + 2, v305);
    if (objc_sync_exit(v231))
    {
      v235 = v303;
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v235);
    }

    dispatch_group_leave(v303);

    return;
  }

  *(v211 + 16) = v319;
  a1 = dispatch_group_create();
  v219 = *(v211 + 16);
  if (v219 >> 62)
  {
    goto LABEL_136;
  }

  v220 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v220)
  {
    goto LABEL_156;
  }

  do
  {
    v221 = 0;
    while (1)
    {
      v222 = a1;
      v223 = objc_sync_enter(v222);
      if (v223)
      {
        MEMORY[0x1EEE9AC00](v223);
        *(&v264 - 2) = v222;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v264 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
      }

      swift_beginAccess();
      v224 = *(v211 + 16);
      if ((v224 & 0xC000000000000001) != 0)
      {
        v225 = MEMORY[0x1D3869C30](v221);
        goto LABEL_126;
      }

      if (v221 >= *((v224 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v225 = *(v224 + 8 * v221 + 32);
LABEL_126:
      v226 = v225;
      swift_endAccess();
      v227 = objc_sync_exit(v222);
      if (v227)
      {
        MEMORY[0x1EEE9AC00](v227);
        *(&v264 - 2) = v222;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v264 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v222);
      v228 = v222;

      v229 = v226;
      sub_1CF774BF8();

      v73 = ++v221;
      if (v220 == v221)
      {
        goto LABEL_156;
      }
    }

    __break(1u);
LABEL_136:
    v232 = sub_1CF9E7818();
    if (v232 < 0)
    {
      __break(1u);
LABEL_138:

      __break(1u);
LABEL_139:
      swift_unknownObjectRetain();

      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, a1);
    }

    v220 = v232;
  }

  while (v232);
LABEL_156:
  if (v299)
  {
    v236 = [v199 userInfo];
    v237 = sub_1CF9E6638();

    v238 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v240 = v239;
    swift_beginAccess();
    v241 = *(v211 + 16);
    *(&v328 + 1) = v302;
    *&aBlock = v241;
    sub_1CEFE9EB8(&aBlock, &v319);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v309[0] = v237;
    sub_1CF1D154C(&v319, v238, v240, isUniquelyReferenced_nonNull_native);

    v243 = [v199 domain];
    if (!v243)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v243 = sub_1CF9E6888();
    }

    v244 = [v199 code];
    v245 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v246 = sub_1CF9E6618();

    v73 = [v245 initWithDomain:v243 code:v244 userInfo:v246];

    v247 = v73;
    if (!objc_sync_enter(v303))
    {
      sub_1CF771964(v306 + 2, v305);
      if (!objc_sync_exit(v303))
      {

        dispatch_group_leave(v303);

        return;
      }

LABEL_163:
      v233 = v303;
      swift_unknownObjectRetain();
LABEL_164:

LABEL_165:
      sub_1CF50F7B0("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347, v233);
    }

    v234 = v303;
    swift_unknownObjectRetain();
LABEL_147:

    sub_1CF50F4AC("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343, v234);
  }

  v248 = *(*(v298 + 16) + 64);
  v249 = swift_allocObject();
  v249[2] = v199;
  v249[3] = v211;
  v249[4] = sub_1CF796A08;
  v249[5] = v304;

  v250 = v248;
  v306 = v199;

  v251 = fpfs_current_log();
  v305 = fpfs_adopt_log();
  v252 = swift_allocObject();
  *&aBlock = sub_1CF9E73C8();
  *(&aBlock + 1) = v253;
  MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
  v254 = sub_1CF9E7988();
  MEMORY[0x1D3868CC0](v254);

  sub_1CF9E6978();

  v255 = __fp_log_fork();

  *(v252 + 16) = v255;
  v256 = swift_allocObject();
  *(v256 + 16) = v251;
  *(v256 + 24) = v252;
  v302 = v252;
  *(v256 + 32) = v250;
  *(v256 + 40) = "normalizeError(_:synchronous:completionHandler:)";
  *(v256 + 48) = 48;
  *(v256 + 56) = 2;
  *(v256 + 64) = sub_1CF796ACC;
  *(v256 + 72) = v249;
  *&v329 = sub_1CF2B9F54;
  *(&v329 + 1) = v256;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v328 = sub_1CEFCA444;
  *(&v328 + 1) = &block_descriptor_204;
  v257 = _Block_copy(&aBlock);
  v301 = v250;
  v303 = v251;

  v258 = v265;
  sub_1CF9E63F8();
  *&v319 = MEMORY[0x1E69E7CC0];
  sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
  sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
  v259 = v266;
  v260 = v268;
  sub_1CF9E77B8();
  v261 = v301;
  sub_1CF9E7308();
  _Block_release(v257);
  (*(v267 + 8))(v259, v260);
  (*(v294 + 8))(v258, v295);

  v262 = v305;
  v263 = fpfs_adopt_log();
}

void sub_1CF7779C8(int a1, id a2, void (*a3)(id))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v21 = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  (*(*(v19 - 8) + 16))(boxed_opaque_existential_0, v18, v19);
  sub_1CEFE9EB8(v20, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v17, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  a3(v16);
}

void sub_1CF777BC4(int a1, id a2, void *a3, void (*a4)(id))
{
  v7 = [a2 userInfo];
  sub_1CF9E6638();

  v8 = *MEMORY[0x1E696AA08];
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  swift_getErrorValue();
  v23 = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
  sub_1CEFE9EB8(v22, v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v19, v9, v11, isUniquelyReferenced_nonNull_native);

  v14 = [a2 domain];
  if (!v14)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = sub_1CF9E6888();
  }

  v15 = [a2 code];
  v16 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v17 = sub_1CF9E6618();

  v18 = [v16 initWithDomain:v14 code:v15 userInfo:v17];

  sub_1CF77167C(v18, a3, a4);
}

void sub_1CF777DC8(NSObject *a1, int a2, uint64_t a3, void *a4, void *a5, void (*a6)(id), uint64_t a7)
{
  v295 = a3;
  LODWORD(v296) = a2;
  v12 = sub_1CF9E63A8();
  v272 = *(v12 - 8);
  v273 = v12;
  v13 = *(v272 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v271 = &v270 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF9E53C8();
  v293 = *(v15 - 8);
  v294 = v15;
  v16 = *(v293 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v292 = &v270 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6388();
  v288 = *(v18 - 8);
  v289 = v18;
  v19 = *(v288 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v284 = (&v270 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v285 = &v270 - v22;
  v23 = sub_1CF9E6498();
  v286 = *(v23 - 8);
  v287 = v23;
  v24 = *(v286 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v283 = &v270 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v276 = &v270 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v277 = &v270 - v30;
  v31 = sub_1CF9E63D8();
  v281 = *(v31 - 8);
  v282 = v31;
  v32 = *(v281 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v274 = &v270 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v275 = &v270 - v35;
  v36 = sub_1CF9E6448();
  v290 = *(v36 - 8);
  v291 = v36;
  v37 = *(v290 + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v270 = &v270 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v278 = &v270 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v279 = &v270 - v42;
  v43 = sub_1CF9E73D8();
  v280 = *(v43 - 8);
  v44 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v270 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1CF9E5248();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v297 = &v270 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CF9E5268();
  v51 = *(v50 - 8);
  v299 = v50;
  v300 = v51;
  isa = v51[8].isa;
  MEMORY[0x1EEE9AC00](v50);
  v298 = &v270 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  v54[2] = a5;
  v54[3] = a6;
  v302 = a6;
  v54[4] = a7;
  v55 = swift_allocObject();
  *(v55 + 2) = a4;
  *(v55 + 3) = sub_1CF7969FC;
  v306 = v55;
  *(v55 + 4) = v54;
  v56 = a5;
  swift_retain_n();
  v57 = v56;
  v335 = a1;
  v58 = v57;
  swift_retain_n();
  v59 = v58;
  v60 = a4;
  v303 = v54;
  swift_retain_n();
  v305 = v59;
  v304 = v60;
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319))
    {
      sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v71 = nullsub_1(&v319);
    v72 = *v71;
    v73 = *(v71 + 8);
    v74 = *(v71 + 112);

    v75 = sub_1CEFCCC44(v71 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v73 != 2 || v72)
    {
      v78 = v304;
      v79 = v305;
      if (v73 == 2 && v72 == 1)
      {
        v77 = *MEMORY[0x1E6967280];
        if (v74)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v309[0] = 0x2F73662F70665F5FLL;
        v309[1] = 0xE800000000000000;
        v307 = v72;
        v308 = v73;
        v125 = VFSItemID.description.getter(v75, v76);
        MEMORY[0x1D3868CC0](v125);

        v77 = sub_1CF9E6888();

        if (v74)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v77 = *MEMORY[0x1E6967258];
      v78 = v304;
      v79 = v305;
      if (v74)
      {
LABEL_16:
        v80 = v74;
LABEL_54:
        v126 = v79;

        v127 = v74;
        sub_1CF777BC4(v80, v78, v126, v302);

        goto LABEL_75;
      }
    }

    v80 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v301 = a7;

  *&v310 = a1;
  v62 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v323 + 9) = *(v331 + 9);
    v322 = v330;
    v323[0] = v331[0];
    v320 = v328;
    v321 = v329;
    v319 = aBlock;
    if (!BYTE8(v331[1]))
    {
      v81 = *(&v323[0] + 1);
      v82 = *(&v321 + 1);
      v83 = v321;
      v84 = *(&v320 + 1);
      v85 = v320;
      v86 = *(&v319 + 1);
      v300 = v319;

      sub_1CF1D56D0(v86, v85, v84, v83, v82);
      if (v81)
      {
        v87 = v81;
        v88 = v302;
        v89 = v304;
        v79 = v305;
        v90 = v300;
      }

      else
      {
        v122 = objc_opt_self();
        v90 = v300;
        v87 = [v122 fileProviderErrorForNonExistentItemWithIdentifier_];
        v88 = v302;
        v89 = v304;
        v79 = v305;
      }

      v123 = v79;

      v124 = v81;
      sub_1CF777BC4(v87, v89, v123, v88);

      goto LABEL_74;
    }

    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v309[0] = a1;
  v63 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    v64 = sub_1CF2B971C(&v319);
    switch(v64)
    {
      case 5:
        nullsub_1(&v319);
        v98 = v309[0];
LABEL_30:

        v100 = v302;
        v89 = v304;
        v79 = v305;
        goto LABEL_31;
      case 3:
        v91 = nullsub_1(&v319);
        v92 = *v91;
        v93 = *(v91 + 8);
        sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v296)
        {
          LODWORD(v307) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v94 = v292;
          v95 = v294;
          sub_1CF9E57D8();
          v96 = sub_1CF9E53A8();
          v97 = v293;
LABEL_48:
          (v97[1].isa)(v94, v95);
          v79 = v305;
          v120 = v305;

          v89 = v304;
          sub_1CF777BC4(v96, v304, v120, v302);

          v121 = v309[0];
LABEL_73:

          goto LABEL_74;
        }

        LODWORD(v298) = v93;
        v299 = v92;
        v128 = v295;
        v129 = *(*(*(v295 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v130 = swift_dynamicCastClassUnconditional();
        v131 = swift_allocObject();
        v132 = v306;
        v131[2].isa = sub_1CF7969FC;
        v131[3].isa = v132;
        v300 = v131;
        v131[4].isa = v128;
        v296 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v297 = v130;
        v133 = *(v130 + 216);
        v307 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v302 = v129;

        v134 = v133;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v135 = sub_1CF9E73E8();

        (*(v280 + 8))(v46, v43);
        qos_class_self();
        v136 = v276;
        sub_1CF9E63B8();
        v138 = v281;
        v137 = v282;
        v139 = *(v281 + 48);
        if (v139(v136, 1, v282) == 1)
        {
          (*(v138 + 104))(v274, *MEMORY[0x1E69E7FA0], v137);
          if (v139(v136, 1, v137) != 1)
          {
            sub_1CEFCCC44(v136, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v138 + 32))(v274, v136, v137);
        }

        ObjectType = swift_getObjectType();
        v157 = v278;
        sub_1CF9E6428();
        v158 = swift_allocObject();
        v159 = v299;
        v160 = v300;
        *(v158 + 16) = v297;
        *(v158 + 24) = v159;
        *(v158 + 32) = v298;
        *(v158 + 40) = 0u;
        *(v158 + 56) = 0u;
        *(v158 + 72) = 0u;
        *(v158 + 88) = 0u;
        *(v158 + 104) = 0u;
        *(v158 + 120) = 0u;
        *(v158 + 136) = 0;
        *(v158 + 144) = 1;
        *(v158 + 152) = v135;
        *(v158 + 160) = sub_1CF796A00;
        *(v158 + 168) = v160;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v157, sub_1CF72A328, v158);

        (*(v290 + 8))(v157, v291);
        v161 = v283;
        sub_1CF9E6478();
        v162 = v285;
        sub_1CEFD5B64(v285);
        v163 = v284;
        sub_1CEFD5BD8(v284);
        MEMORY[0x1D3869770](v161, v162, v163, ObjectType);
        v164 = *(v288 + 8);
        v165 = v163;
        v166 = v289;
        v164(v165, v289);
        v164(v162, v166);
        (*(v286 + 8))(v161, v287);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v176 = v304;

LABEL_68:
        v79 = v305;
        goto LABEL_76;
      case 1:
        v65 = nullsub_1(&v319);
        v66 = *v65;
        v67 = *(v65 + 8);
        v68 = *(v65 + 24);
        v69 = *(v65 + 48);
        v70 = *(v65 + 56);

        sub_1CF480620(v69, v70);

        if (v296)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v94 = v298;
          v95 = v299;
          sub_1CF9E57D8();
          v96 = sub_1CF9E50D8();
          v97 = v300;
          goto LABEL_48;
        }

        LODWORD(v299) = v67;
        v140 = v295;
        v141 = *(*(*(v295 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v142 = swift_dynamicCastClassUnconditional();
        v143 = swift_allocObject();
        v144 = v306;
        v143[2].isa = sub_1CF7969FC;
        v143[3].isa = v144;
        v300 = v143;
        v143[4].isa = v140;
        v297 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v298 = v142;
        v145 = *(v142 + 27);
        v307 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v302 = v141;

        v146 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v147 = sub_1CF9E73E8();

        (*(v280 + 8))(v46, v43);
        qos_class_self();
        v148 = v277;
        sub_1CF9E63B8();
        v150 = v281;
        v149 = v282;
        v151 = *(v281 + 48);
        if (v151(v148, 1, v282) == 1)
        {
          (*(v150 + 104))(v275, *MEMORY[0x1E69E7FA0], v149);
          if (v151(v148, 1, v149) != 1)
          {
            sub_1CEFCCC44(v148, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v150 + 32))(v275, v148, v149);
        }

        v167 = swift_getObjectType();
        v168 = v279;
        sub_1CF9E6428();
        v169 = swift_allocObject();
        *(v169 + 16) = v298;
        *(v169 + 24) = v66;
        *(v169 + 32) = v299;
        *(v169 + 40) = 0u;
        *(v169 + 56) = 0u;
        *(v169 + 72) = 0u;
        *(v169 + 88) = 0u;
        *(v169 + 104) = 0u;
        *(v169 + 120) = 0u;
        *(v169 + 136) = 0;
        *(v169 + 144) = 1;
        *(v169 + 152) = v147;
        *(v169 + 160) = sub_1CF796A04;
        *(v169 + 168) = v300;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v168, sub_1CF72A328, v169);

        (*(v290 + 8))(v168, v291);
        v170 = v283;
        sub_1CF9E6478();
        v171 = v285;
        sub_1CEFD5B64(v285);
        v172 = v284;
        sub_1CEFD5BD8(v284);
        MEMORY[0x1D3869770](v170, v171, v172, v167);
        v173 = *(v288 + 8);
        v174 = v172;
        v175 = v289;
        v173(v174, v289);
        v173(v171, v175);
        (*(v286 + 8))(v170, v287);
        sub_1CF9E7448();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v310 = a1;
  v99 = a1;
  if (swift_dynamicCast())
  {
    *(v323 + 9) = *(v331 + 9);
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v319 = aBlock;
    v320 = v328;
    if (BYTE8(v331[1]) == 5)
    {
      v98 = v310;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v105 = a1;
  if (swift_dynamicCast())
  {
    v100 = v302;
    v89 = v304;
    v79 = v305;
    if (v319 > 2u)
    {
      if (v319 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v115 = v298;
        v116 = v299;
        sub_1CF9E57D8();
        v117 = sub_1CF9E50D8();
        (v300[1].isa)(v115, v116);
        v118 = v79;

        sub_1CF777BC4(v117, v89, v118, v100);

LABEL_74:

        goto LABEL_75;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    if (v319 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v101 = v298;
    v102 = v299;
    sub_1CF9E57D8();
    v103 = sub_1CF9E50D8();
    (v300[1].isa)(v101, v102);
    v104 = v79;

    sub_1CF777BC4(v103, v89, v104, v100);
LABEL_33:

    goto LABEL_75;
  }

  *&v319 = a1;
  v106 = a1;
  if (swift_dynamicCast())
  {
    if ((v328 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v328);
      LODWORD(v310) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v152 = v292;
      v153 = v294;
      sub_1CF9E57D8();
      v154 = sub_1CF9E53A8();
      (*(v293 + 8))(v152, v153);
      v79 = v305;
      v155 = v305;

      v89 = v304;
      sub_1CF777BC4(v154, v304, v155, v302);

      v121 = v319;
      goto LABEL_73;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v319 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_1CF9FA450;
    v108 = *MEMORY[0x1E696A578];
    *(v107 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v107 + 40) = v109;
    v110 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v111 = FPLocv();

    v112 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v114 = v113;

    *(v107 + 72) = MEMORY[0x1E69E6158];
    *(v107 + 48) = v112;
    *(v107 + 56) = v114;
    sub_1CF4E04E8(v107);
    swift_setDeallocating();
    sub_1CEFCCC44(v107 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v103 = aBlock;
    v79 = v305;
    v104 = v305;
    goto LABEL_87;
  }

  v309[0] = a1;
  v119 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v177 = a1;
  if (swift_dynamicCast())
  {
    v178 = FPDomainUnavailableError();
    if (!v178)
    {
LABEL_123:

      v232 = v305;

      v233 = v304;

      __break(1u);
LABEL_124:
      MEMORY[0x1EEE9AC00](v222);
      *(&v270 - 2) = a1;

      v234 = v305;

      v235 = v304;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v270 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v179 = v178;
    v79 = v305;
    v180 = v305;

    v89 = v304;
    sub_1CF777BC4(v179, v304, v180, v302);

    v121 = aBlock;
    goto LABEL_73;
  }

  v307 = a1;
  v181 = a1;
  if (swift_dynamicCast())
  {
    v316 = v332;
    v317 = v333;
    v312 = v329;
    v313 = v330;
    v314 = v331[0];
    v315 = v331[1];
    v310 = aBlock;
    v311 = v328;
    v324 = v332;
    v325 = v333;
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    v323[1] = v331[1];
    v318 = v334;
    v326 = v334;
    v319 = aBlock;
    v320 = v328;
    if (sub_1CF2B971C(&v319) == 10)
    {
      v182 = *(nullsub_1(&v319) + 16);
      v79 = v305;
      if (!v182)
      {
        LODWORD(v309[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v183 = v292;
        v184 = v294;
        sub_1CF9E57D8();
        v182 = sub_1CF9E53A8();
        (*(v293 + 8))(v183, v184);
      }

      v185 = v304;
      v186 = v302;
      v187 = v79;

      sub_1CEFCCBDC(&v310, v309, &unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CF777BC4(v182, v185, v187, v186);

      sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_75;
    }

    sub_1CEFCCC44(&v310, &unk_1EC4BE320, &unk_1CFA08B50);
    v189 = v307;
    goto LABEL_85;
  }

  *&v310 = a1;
  v188 = a1;
  if (swift_dynamicCast())
  {
    v321 = v329;
    v322 = v330;
    v323[0] = v331[0];
    *(v323 + 9) = *(v331 + 9);
    v319 = aBlock;
    v320 = v328;
    sub_1CEFCCC44(&v319, &qword_1EC4BF270, &qword_1CFA01B70);
    v189 = v310;
LABEL_85:

    v79 = v305;
LABEL_86:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v190 = v298;
    v191 = v299;
    sub_1CF9E57D8();
    v103 = sub_1CF9E50D8();
    (v300[1].isa)(v190, v191);
    v104 = v79;
LABEL_87:

    v89 = v304;
    sub_1CF777BC4(v103, v304, v104, v302);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v192 = a1;
  v193 = swift_dynamicCast();

  v79 = v305;
  if (v193)
  {
    goto LABEL_86;
  }

  *&v319 = a1;
  v194 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v328, *(&v328 + 1), v329);
LABEL_95:

    goto LABEL_86;
  }

  *&v319 = a1;
  v195 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v328, SBYTE8(v328));
    goto LABEL_95;
  }

  *&v319 = a1;
  v196 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_95;
  }

  v197 = sub_1CF9E57E8();
  v198 = [v197 userInfo];
  v199 = sub_1CF9E6638();

  v200 = *MEMORY[0x1E696AA08];
  v201 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v199 + 16))
  {

    goto LABEL_101;
  }

  v203 = sub_1CEFE4328(v201, v202);
  v205 = v204;

  if ((v205 & 1) == 0)
  {
LABEL_101:

    goto LABEL_102;
  }

  sub_1CEFD1104(*(v199 + 56) + 32 * v203, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v206 = v319;
    v207 = v304;

    v208 = v197;
    v209 = v206;
    sub_1CF777DC8();

    goto LABEL_76;
  }

LABEL_102:
  v210 = swift_allocObject();
  v211 = [v197 userInfo];
  v212 = sub_1CF9E6638();

  v213 = *MEMORY[0x1E696A750];
  v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v212 + 16))
  {

LABEL_119:
    swift_deallocUninitializedObject();
    v229 = v79;

    v230 = v304;
    sub_1CF777BC4(a1, v304, v229, v302);

    goto LABEL_75;
  }

  v216 = sub_1CEFE4328(v214, v215);
  v218 = v217;

  if ((v218 & 1) == 0)
  {

    goto LABEL_118;
  }

  sub_1CEFD1104(*(v212 + 56) + 32 * v216, &aBlock);

  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_118:
    v79 = v305;
    goto LABEL_119;
  }

  v210[2] = v319;
  v300 = dispatch_group_create();
  v219 = v210[2];
  if (v219 >> 62)
  {
    goto LABEL_121;
  }

  v220 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v220)
  {
    goto LABEL_127;
  }

  do
  {
    v221 = 0;
    while (1)
    {
      a1 = v300;
      v222 = objc_sync_enter(a1);
      if (v222)
      {
        goto LABEL_124;
      }

      swift_beginAccess();
      v223 = v210[2];
      if ((v223 & 0xC000000000000001) != 0)
      {
        v224 = MEMORY[0x1D3869C30](v221);
        goto LABEL_112;
      }

      if (v221 >= *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v224 = *(v223 + 8 * v221 + 32);
LABEL_112:
      v225 = v224;
      swift_endAccess();
      v226 = objc_sync_exit(a1);
      if (v226)
      {
        MEMORY[0x1EEE9AC00](v226);
        *(&v270 - 2) = a1;

        v236 = v305;

        v237 = v304;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v270 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(a1);
      v227 = a1;

      v228 = v225;
      sub_1CF774BF8(v228, v296 & 1, v295, v227, v210, v221);

      if (v220 == ++v221)
      {
        goto LABEL_127;
      }
    }

    __break(1u);
LABEL_121:
    v231 = sub_1CF9E7818();
    if (v231 < 0)
    {
      __break(1u);
      goto LABEL_123;
    }

    v220 = v231;
  }

  while (v231);
LABEL_127:
  if ((v296 & 1) == 0)
  {
    v252 = *(*(v295 + 16) + 64);
    v253 = swift_allocObject();
    v253[2] = v197;
    v253[3] = v210;
    v253[4] = sub_1CF7969FC;
    v253[5] = v306;

    v254 = v252;
    v302 = v197;

    v255 = fpfs_current_log();
    v299 = fpfs_adopt_log();
    v256 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v257;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v258 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v258);

    sub_1CF9E6978();

    v259 = __fp_log_fork();

    *(v256 + 16) = v259;
    v260 = swift_allocObject();
    *(v260 + 16) = v255;
    *(v260 + 24) = v256;
    v297 = v256;
    *(v260 + 32) = v254;
    *(v260 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v260 + 48) = 48;
    *(v260 + 56) = 2;
    *(v260 + 64) = sub_1CF796ACC;
    *(v260 + 72) = v253;
    *&v329 = sub_1CF2B9F54;
    *(&v329 + 1) = v260;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v328 = sub_1CEFCA444;
    *(&v328 + 1) = &block_descriptor_169;
    v261 = _Block_copy(&aBlock);
    v296 = v254;
    v298 = v255;

    v262 = v270;
    sub_1CF9E63F8();
    *&v319 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v263 = v271;
    v264 = v273;
    sub_1CF9E77B8();
    v265 = v296;
    v266 = v300;
    sub_1CF9E7308();
    _Block_release(v261);
    (*(v272 + 8))(v263, v264);
    (*(v290 + 8))(v262, v291);

    v267 = v299;
    v268 = fpfs_adopt_log();

    v269 = v304;

    goto LABEL_68;
  }

  v238 = [v197 userInfo];
  v239 = sub_1CF9E6638();

  v240 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v242 = v241;
  swift_beginAccess();
  v243 = v210[2];
  *(&v328 + 1) = v299;
  *&aBlock = v243;
  sub_1CEFE9EB8(&aBlock, &v319);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v309[0] = v239;
  sub_1CF1D154C(&v319, v240, v242, isUniquelyReferenced_nonNull_native);

  v245 = [v197 domain];
  if (!v245)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v245 = sub_1CF9E6888();
  }

  v246 = [v197 code];
  v247 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v248 = sub_1CF9E6618();

  v249 = [v247 initWithDomain:v245 code:v246 userInfo:v248];

  v79 = v305;
  v250 = v305;

  v251 = v304;
  sub_1CF777BC4(v249, v304, v250, v302);

LABEL_75:

LABEL_76:
}

void sub_1CF77A9C8(void *a1, int a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v265 = a3;
  LODWORD(v266) = a2;
  v8 = sub_1CF9E63A8();
  v245 = *(v8 - 8);
  v246 = v8;
  v9 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v244 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E53C8();
  v263 = *(v11 - 8);
  v264 = v11;
  v12 = *(v263 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v262 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1CF9E6388();
  v258 = *(v14 - 8);
  v259 = v14;
  v15 = *(v258 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v254 = (&v242 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v255 = &v242 - v18;
  v19 = sub_1CF9E6498();
  v256 = *(v19 - 8);
  v257 = v19;
  v20 = *(v256 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v253 = &v242 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v242 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v242 - v27;
  v29 = sub_1CF9E63D8();
  v251 = *(v29 - 8);
  v252 = v29;
  v30 = *(v251 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v242 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v247 = &v242 - v34;
  v35 = sub_1CF9E6448();
  v260 = *(v35 - 8);
  v261 = v35;
  v36 = *(v260 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v243 = &v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v248 = &v242 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v249 = &v242 - v41;
  v42 = sub_1CF9E73D8();
  v250 = *(v42 - 8);
  v43 = *(v250 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v242 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1CF9E5248();
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v267 = &v242 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1CF9E5268();
  v50 = *(v49 - 1);
  v269 = v49;
  v270 = v50;
  v51 = v50[8];
  MEMORY[0x1EEE9AC00](v49);
  v268 = &v242 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = swift_allocObject();
  v272 = a4;
  v273 = v53;
  *(v53 + 16) = a4;
  *(v53 + 24) = a5;
  v303 = a1;
  swift_retain_n();
  v54 = a1;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v284 = v300;
    v285 = v301;
    v280 = v297;
    v281 = v298;
    v282 = *v299;
    v283 = *&v299[16];
    v278 = aBlock;
    v279 = v296;
    v292 = v300;
    v293 = v301;
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    v291[1] = *&v299[16];
    v286 = v302;
    v294 = v302;
    v287 = aBlock;
    v288 = v296;
    if (sub_1CF2B971C(&v287))
    {
      sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v65 = nullsub_1(&v287);
    v66 = *v65;
    v67 = *(v65 + 8);
    v68 = *(v65 + 112);

    v69 = sub_1CEFCCC44(v65 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v67 != 2 || v66)
    {
      if (v67 != 2 || v66 != 1)
      {
        *&v276[0] = 0x2F73662F70665F5FLL;
        *(&v276[0] + 1) = 0xE800000000000000;
        v274 = v66;
        v275 = v67;
        v112 = VFSItemID.description.getter(v69, v70);
        MEMORY[0x1D3868CC0](v112);

        v80 = sub_1CF9E6888();

        if (v68)
        {
          goto LABEL_22;
        }

        goto LABEL_53;
      }

      v71 = MEMORY[0x1E6967280];
    }

    else
    {
      v71 = MEMORY[0x1E6967258];
    }

    v80 = *v71;
    if (v68)
    {
LABEL_22:
      v81 = v68;
LABEL_54:
      v113 = v68;
      v272(v81);

LABEL_73:

      return;
    }

LABEL_53:
    v81 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v271 = a5;

  *&v278 = a1;
  v56 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v291 + 9) = *&v299[9];
    v290 = v298;
    v291[0] = *v299;
    v288 = v296;
    v289 = v297;
    v287 = aBlock;
    if (!v299[24])
    {
      v72 = *(&v291[0] + 1);
      v73 = *(&v289 + 1);
      v74 = v289;
      v75 = *(&v288 + 1);
      v76 = v288;
      v77 = *(&v287 + 1);
      v270 = v287;

      sub_1CF1D56D0(v77, v76, v75, v74, v73);
      if (v72)
      {
        v78 = v72;
        v79 = v270;
      }

      else
      {
        v110 = objc_opt_self();
        v79 = v270;
        v78 = [v110 fileProviderErrorForNonExistentItemWithIdentifier_];
      }

      v111 = v72;
      v272(v78);

      v108 = v278;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v287, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&v276[0] = a1;
  v57 = a1;
  if (swift_dynamicCast())
  {
    v284 = v300;
    v285 = v301;
    v280 = v297;
    v281 = v298;
    v282 = *v299;
    v283 = *&v299[16];
    v278 = aBlock;
    v279 = v296;
    v292 = v300;
    v293 = v301;
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    v291[1] = *&v299[16];
    v286 = v302;
    v294 = v302;
    v287 = aBlock;
    v288 = v296;
    v58 = sub_1CF2B971C(&v287);
    switch(v58)
    {
      case 5:
        nullsub_1(&v287);
        v89 = *&v276[0];
LABEL_30:

        v91 = v272;
        goto LABEL_31;
      case 3:
        v82 = nullsub_1(&v287);
        v83 = *v82;
        v84 = *(v82 + 8);
        sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v266)
        {
          LODWORD(v274) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v85 = v262;
          v86 = v264;
          sub_1CF9E57D8();
          v87 = sub_1CF9E53A8();
          v88 = v263;
LABEL_48:
          v88[1](v85, v86);
          v272(v87);

          v108 = *&v276[0];
          goto LABEL_72;
        }

        LODWORD(v268) = v84;
        v269 = v83;
        v114 = v265;
        v115 = *(*(*(v265 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v116 = swift_dynamicCastClassUnconditional();
        v117 = swift_allocObject();
        v118 = v273;
        v117[2] = sub_1CF2AF9D0;
        v117[3] = v118;
        v270 = v117;
        v117[4] = v114;
        v266 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v267 = v116;
        v119 = *(v116 + 216);
        v274 = MEMORY[0x1E69E7CC0];
        v264 = sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v272 = v115;

        v120 = v119;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v121 = sub_1CF9E73E8();

        (*(v250 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v123 = v251;
        v122 = v252;
        v124 = *(v251 + 48);
        if (v124(v25, 1, v252) == 1)
        {
          (*(v123 + 104))(v32, *MEMORY[0x1E69E7FA0], v122);
          if (v124(v25, 1, v122) != 1)
          {
            sub_1CEFCCC44(v25, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v123 + 32))(v32, v25, v122);
        }

        ObjectType = swift_getObjectType();
        v140 = v248;
        sub_1CF9E6428();
        v141 = swift_allocObject();
        v142 = v269;
        v143 = v270;
        *(v141 + 16) = v267;
        *(v141 + 24) = v142;
        *(v141 + 32) = v268;
        *(v141 + 40) = 0u;
        *(v141 + 56) = 0u;
        *(v141 + 72) = 0u;
        *(v141 + 88) = 0u;
        *(v141 + 104) = 0u;
        *(v141 + 120) = 0u;
        *(v141 + 136) = 0;
        *(v141 + 144) = 1;
        *(v141 + 152) = v121;
        *(v141 + 160) = sub_1CF77ECE8;
        *(v141 + 168) = v143;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v140, sub_1CEFD5D08, v141);

        (*(v260 + 8))(v140, v261);
        v144 = v253;
        sub_1CF9E6478();
        v145 = v255;
        sub_1CEFD5B64(v255);
        v146 = v254;
        sub_1CEFD5BD8(v254);
        MEMORY[0x1D3869770](v144, v145, v146, ObjectType);
        v147 = *(v258 + 8);
        v148 = v146;
        v149 = v259;
        v147(v148, v259);
        v147(v145, v149);
        (*(v256 + 8))(v144, v257);
        sub_1CF9E7448();
LABEL_67:

        swift_unknownObjectRelease();

        goto LABEL_73;
      case 1:
        v59 = nullsub_1(&v287);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 24);
        v63 = *(v59 + 48);
        v64 = *(v59 + 56);

        sub_1CF480620(v63, v64);

        if (v266)
        {
          sub_1CF9E5128();
LABEL_47:
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v85 = v268;
          v86 = v269;
          sub_1CF9E57D8();
          v87 = sub_1CF9E50D8();
          v88 = v270;
          goto LABEL_48;
        }

        LODWORD(v268) = v61;
        v269 = v60;
        v125 = v265;
        v126 = *(*(*(v265 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v127 = swift_dynamicCastClassUnconditional();
        v128 = swift_allocObject();
        v129 = v273;
        v128[2] = sub_1CF2AF9D0;
        v128[3] = v129;
        v270 = v128;
        v128[4] = v125;
        v266 = sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v267 = v127;
        v130 = *(v127 + 216);
        v274 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);
        v272 = v126;

        v131 = v130;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF9E77B8();
        v132 = sub_1CF9E73E8();

        (*(v250 + 8))(v45, v42);
        qos_class_self();
        sub_1CF9E63B8();
        v134 = v251;
        v133 = v252;
        v135 = *(v251 + 48);
        if (v135(v28, 1, v252) == 1)
        {
          (*(v134 + 104))(v247, *MEMORY[0x1E69E7FA0], v133);
          if (v135(v28, 1, v133) != 1)
          {
            sub_1CEFCCC44(v28, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v134 + 32))(v247, v28, v133);
        }

        v150 = swift_getObjectType();
        v151 = v249;
        sub_1CF9E6428();
        v152 = swift_allocObject();
        v153 = v269;
        v154 = v270;
        *(v152 + 16) = v267;
        *(v152 + 24) = v153;
        *(v152 + 32) = v268;
        *(v152 + 40) = 0u;
        *(v152 + 56) = 0u;
        *(v152 + 72) = 0u;
        *(v152 + 88) = 0u;
        *(v152 + 104) = 0u;
        *(v152 + 120) = 0u;
        *(v152 + 136) = 0;
        *(v152 + 144) = 1;
        *(v152 + 152) = v132;
        *(v152 + 160) = sub_1CF77ECF4;
        *(v152 + 168) = v154;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v151, sub_1CF72A328, v152);

        (*(v260 + 8))(v151, v261);
        v155 = v253;
        sub_1CF9E6478();
        v156 = v255;
        sub_1CEFD5B64(v255);
        v157 = v254;
        sub_1CEFD5BD8(v254);
        MEMORY[0x1D3869770](v155, v156, v157, v150);
        v158 = *(v258 + 8);
        v159 = v157;
        v160 = v259;
        v158(v159, v259);
        v158(v156, v160);
        (*(v256 + 8))(v155, v257);
        sub_1CF9E7448();
        goto LABEL_67;
    }

    sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v278 = a1;
  v90 = a1;
  if (swift_dynamicCast())
  {
    *(v291 + 9) = *&v299[9];
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    v287 = aBlock;
    v288 = v296;
    if (v299[24] == 5)
    {
      v89 = v278;
      goto LABEL_30;
    }

    sub_1CEFCCC44(&v287, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v95 = a1;
  if (swift_dynamicCast())
  {
    if (v287 > 2u)
    {
      v91 = v272;
      if (v287 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v106 = v268;
        v105 = v269;
        sub_1CF9E57D8();
        v107 = sub_1CF9E50D8();
        (*(v270 + 1))(v106, v105);
        v91(v107);

        v108 = aBlock;
LABEL_72:

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_32;
    }

    v91 = v272;
    if (v287 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_32;
    }

LABEL_31:
    sub_1CF9E50E8();
LABEL_32:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v93 = v268;
    v92 = v269;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v270 + 1))(v93, v92);
    v91(v94);
    goto LABEL_33;
  }

  *&v287 = a1;
  v96 = a1;
  if (swift_dynamicCast())
  {
    if ((v296 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v296);
      LODWORD(v278) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v136 = v262;
      v137 = v264;
      sub_1CF9E57D8();
      v138 = sub_1CF9E53A8();
      (*(v263 + 8))(v136, v137);
      v272(v138);

      v108 = v287;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v287 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1CF9FA450;
    v98 = *MEMORY[0x1E696A578];
    *(v97 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v97 + 40) = v99;
    v100 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v101 = FPLocv();

    v102 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v104 = v103;

    *(v97 + 72) = MEMORY[0x1E69E6158];
    *(v97 + 48) = v102;
    *(v97 + 56) = v104;
    sub_1CF4E04E8(v97);
    swift_setDeallocating();
    sub_1CEFCCC44(v97 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v94 = aBlock;
    v272(aBlock);
LABEL_33:

    return;
  }

  *&v276[0] = a1;
  v109 = a1;
  if (swift_dynamicCast())
  {
    v284 = v300;
    v285 = v301;
    v280 = v297;
    v281 = v298;
    v282 = *v299;
    v283 = *&v299[16];
    v278 = aBlock;
    v279 = v296;
    v292 = v300;
    v293 = v301;
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    v291[1] = *&v299[16];
    v286 = v302;
    v294 = v302;
    v287 = aBlock;
    v288 = v296;
    if (sub_1CF2B971C(&v287) == 16)
    {
      sub_1CF9E5168();
      goto LABEL_47;
    }

    sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v161 = a1;
  if (swift_dynamicCast())
  {
    v162 = FPDomainUnavailableError();
    if (!v162)
    {
LABEL_118:

      __break(1u);
LABEL_119:
      MEMORY[0x1EEE9AC00](v204);
      v241 = v55;

      fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, &v240, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v163 = v162;
    (v272)();

    v108 = aBlock;
    goto LABEL_72;
  }

  v274 = a1;
  v164 = a1;
  if (swift_dynamicCast())
  {
    v284 = v300;
    v285 = v301;
    v280 = v297;
    v281 = v298;
    v282 = *v299;
    v283 = *&v299[16];
    v278 = aBlock;
    v279 = v296;
    v292 = v300;
    v293 = v301;
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    v291[1] = *&v299[16];
    v286 = v302;
    v294 = v302;
    v287 = aBlock;
    v288 = v296;
    if (sub_1CF2B971C(&v287) == 10)
    {
      v165 = *(nullsub_1(&v287) + 16);
      if (!v165)
      {
        LODWORD(v276[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v166 = v262;
        v167 = v264;
        sub_1CF9E57D8();
        v165 = sub_1CF9E53A8();
        (*(v263 + 8))(v166, v167);
      }

      v168 = v272;
      v276[6] = v284;
      v276[7] = v285;
      v277 = v286;
      v276[2] = v280;
      v276[3] = v281;
      v276[4] = v282;
      v276[5] = v283;
      v276[0] = v278;
      v276[1] = v279;
      v169 = *(nullsub_1(v276) + 16);
      v168(v165);
      sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);

      v108 = v274;
      goto LABEL_72;
    }

    sub_1CEFCCC44(&v278, &unk_1EC4BE320, &unk_1CFA08B50);
    v171 = v274;
    goto LABEL_90;
  }

  *&v278 = a1;
  v170 = a1;
  if (swift_dynamicCast())
  {
    v289 = v297;
    v290 = v298;
    v291[0] = *v299;
    *(v291 + 9) = *&v299[9];
    v287 = aBlock;
    v288 = v296;
    sub_1CEFCCC44(&v287, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_91:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v178 = v268;
    v177 = v269;
    sub_1CF9E57D8();
    v94 = sub_1CF9E50D8();
    (*(v270 + 1))(v178, v177);
    v272(v94);
    goto LABEL_33;
  }

  *&aBlock = a1;
  v172 = a1;
  v173 = swift_dynamicCast();

  if (v173)
  {
    goto LABEL_91;
  }

  *&v287 = a1;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v296, *(&v296 + 1), v297);
LABEL_89:
    v171 = v287;
LABEL_90:

    goto LABEL_91;
  }

  *&v287 = a1;
  v175 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v296, SBYTE8(v296));
    goto LABEL_89;
  }

  *&v287 = a1;
  v176 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_89;
  }

  v179 = sub_1CF9E57E8();
  v180 = [v179 userInfo];
  v181 = sub_1CF9E6638();

  v182 = *MEMORY[0x1E696AA08];
  v183 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v181 + 16))
  {

    goto LABEL_97;
  }

  v185 = sub_1CEFE4328(v183, v184);
  v187 = v186;

  if ((v187 & 1) == 0)
  {
LABEL_97:

    goto LABEL_98;
  }

  sub_1CEFD1104(*(v181 + 56) + 32 * v185, &aBlock);

  sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
  if (swift_dynamicCast())
  {
    v188 = v287;
    v189 = v271;

    v190 = v179;
    v191 = v188;
    sub_1CF782688(v191, v266 & 1, v265, v190, v272, v189, &unk_1F4C14610, &unk_1F4C14638, sub_1CF2BA174, sub_1CF7779C8, &unk_1F4C14728, sub_1CF7969FC, &unk_1F4C14750, sub_1CF796A04, sub_1CF72A328, &unk_1F4C146D8, &unk_1F4C14700, sub_1CF796A00, sub_1CF72A328, &unk_1F4C14660, &unk_1F4C14688, sub_1CF796ACC, sub_1CF2B9F54, &block_descriptor_130_0, sub_1CF1C546C, sub_1CF1C5468);

    return;
  }

LABEL_98:
  v192 = swift_allocObject();
  v193 = [v179 userInfo];
  v194 = sub_1CF9E6638();

  v195 = *MEMORY[0x1E696A750];
  v196 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v194 + 16))
  {

    goto LABEL_113;
  }

  v198 = sub_1CEFE4328(v196, v197);
  v55 = v199;

  if ((v55 & 1) == 0)
  {
LABEL_113:

    goto LABEL_114;
  }

  sub_1CEFD1104(*(v194 + 56) + 32 * v198, &aBlock);

  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_114:
    swift_deallocUninitializedObject();
    v272(a1);

    return;
  }

  v192[2] = v287;
  v200 = dispatch_group_create();
  v201 = v192[2];
  if (v201 >> 62)
  {
    goto LABEL_116;
  }

  v202 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v202)
  {
    goto LABEL_122;
  }

  do
  {
    v203 = 0;
    while (1)
    {
      v55 = v200;
      v204 = objc_sync_enter(v55);
      if (v204)
      {
        goto LABEL_119;
      }

      swift_beginAccess();
      v205 = v192[2];
      if ((v205 & 0xC000000000000001) != 0)
      {
        v206 = MEMORY[0x1D3869C30](v203);
        goto LABEL_108;
      }

      if (v203 >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v206 = *(v205 + 8 * v203 + 32);
LABEL_108:
      v207 = v206;
      swift_endAccess();
      v208 = objc_sync_exit(v55);
      if (v208)
      {
        MEMORY[0x1EEE9AC00](v208);
        v241 = v55;

        fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, &v240, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v55);
      v209 = v55;

      v210 = v207;
      sub_1CF774BF8(v210, v266 & 1, v265, v209, v192, v203);

      if (v202 == ++v203)
      {
        goto LABEL_122;
      }
    }

    __break(1u);
LABEL_116:
    v211 = sub_1CF9E7818();
    if (v211 < 0)
    {
      __break(1u);
      goto LABEL_118;
    }

    v202 = v211;
  }

  while (v211);
LABEL_122:
  if (v266)
  {
    v212 = [v179 userInfo];
    v213 = sub_1CF9E6638();

    v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v216 = v215;
    swift_beginAccess();
    v217 = v192[2];
    *(&v296 + 1) = v270;
    *&aBlock = v217;
    sub_1CEFE9EB8(&aBlock, &v287);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v276[0] = v213;
    sub_1CF1D154C(&v287, v214, v216, isUniquelyReferenced_nonNull_native);

    v219 = [v179 domain];
    if (!v219)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v219 = sub_1CF9E6888();
    }

    v220 = [v179 code];
    v221 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v222 = sub_1CF9E6618();

    v223 = [v221 initWithDomain:v219 code:v220 userInfo:v222];

    v272(v223);
  }

  else
  {
    v224 = *(*(v265 + 16) + 64);
    v225 = swift_allocObject();
    v225[2] = v179;
    v225[3] = v192;
    v225[4] = sub_1CF2AF9D0;
    v225[5] = v273;

    v226 = v224;
    v272 = v179;

    v227 = fpfs_current_log();
    v270 = fpfs_adopt_log();
    v228 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v229;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v230 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v230);

    sub_1CF9E6978();

    v231 = __fp_log_fork();

    *(v228 + 16) = v231;
    v232 = swift_allocObject();
    *(v232 + 16) = v227;
    *(v232 + 24) = v228;
    v268 = v228;
    *(v232 + 32) = v226;
    *(v232 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v232 + 48) = 48;
    *(v232 + 56) = 2;
    *(v232 + 64) = sub_1CF796ACC;
    *(v232 + 72) = v225;
    *&v297 = sub_1CF2B9F54;
    *(&v297 + 1) = v232;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v296 = sub_1CEFCA444;
    *(&v296 + 1) = &block_descriptor_88_1;
    v233 = _Block_copy(&aBlock);
    v267 = v226;
    v269 = v227;

    v234 = v243;
    sub_1CF9E63F8();
    *&v287 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v235 = v244;
    v236 = v246;
    sub_1CF9E77B8();
    v237 = v267;
    sub_1CF9E7308();
    _Block_release(v233);
    (*(v245 + 8))(v235, v236);
    (*(v260 + 8))(v234, v261);

    v238 = v270;
    v239 = fpfs_adopt_log();
  }
}

uint64_t sub_1CF77D1EC(uint64_t a1)
{
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  v3 = objc_allocWithZone(MEMORY[0x1E6967308]);
  sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
  sub_1CEFD57E0(0, &unk_1EDEA35A0, 0x1E6967408);
  sub_1CF2B1654(&qword_1EDEA3420, &unk_1EDEA3430, 0x1E69673A0);
  v4 = sub_1CF9E6618();
  v5 = [v3 initWithAlternateContentsDictionary_];

  *(v1 + 48) = v5;
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4740, qword_1CFA16890);
  v6 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v7 = *(a1 + qword_1EDEADB50);
  swift_beginAccess();
  swift_retain_n();

  os_unfair_lock_lock((v7 + 24));
  swift_endAccess();
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  swift_beginAccess();
  os_unfair_lock_unlock((v7 + 24));
  swift_endAccess();

  return v1;
}

void *sub_1CF77D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for FPFSSyncEngine();
  v11 = swift_allocObject();
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  v12 = *(*(a1 + 40) + 16);
  type metadata accessor for FPFileTree();
  v13 = *(swift_dynamicCastClassUnconditional() + 280);

  v14 = v13;
  v15 = [v14 pathComponents];
  v16 = sub_1CF9E6D48();

  v17 = *(v16 + 16);

  if (v17 >= 2)
  {
    v18 = [v14 stringByDeletingLastPathComponent];
    if (!v18)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = sub_1CF9E6888();
    }

    v14 = v18;
  }

  v19 = [v14 fp_isiCloudDriveIdentifier];

  *(v11 + 72) = v19;

  v21 = sub_1CF77D1EC(v20);

  v22 = v21[6];
  if (a4)
  {
    sub_1CEFD57E0(0, &unk_1EDEA3430, 0x1E69673A0);
    sub_1CF9E5A58();
    sub_1CF2B1654(&qword_1EDEA3420, &unk_1EDEA3430, 0x1E69673A0);
    swift_retain_n();
    v23 = v22;
    v24 = sub_1CF9E6618();
  }

  else
  {
    swift_retain_n();
    v25 = v22;
    v24 = 0;
  }

  [v22 updateWithManagerAlternateContentsDictionary_];

  if (a5)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = a5;
    *(v26 + 24) = v32;
    v27 = sub_1CF79600C;
  }

  else
  {
    v27 = 0;
    v26 = 0;
  }

  v29 = v21[4];
  v28 = v21[5];
  v21[4] = v27;
  v21[5] = v26;
  sub_1CEFF7124(v29);

  return v21;
}

id sub_1CF77D6A0(void *a1, uint64_t *a2, uint64_t a3, char a4, int a5, uint64_t a6)
{
  v7 = v6;
  v132 = a6;
  v133 = a5;
  v125 = a3;
  v131 = *v7;
  v11 = sub_1CF9E5648();
  v116 = *(v11 - 8);
  v12 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v123 = v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1CF9E6068();
  v121 = *(v122 - 8);
  v14 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v134 = v115 - v20;
  v119 = type metadata accessor for Signpost(0);
  v21 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v135 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_1CF9E5A58();
  v23 = *(v143 - 8);
  v24 = v23[8];
  v25 = MEMORY[0x1EEE9AC00](v143);
  v137 = v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v118 = v115 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v139 = v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v130 = v115 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  *&v138 = v115 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v117 = v115 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = v115 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = v115 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = v115 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = v115 - v47;
  v49 = a2[1];
  v129 = *a2;
  v126 = v49;
  v50 = a2[3];
  v128 = a2[2];
  v127 = v50;
  v136 = a2[4];
  if ((a4 & 1) == 0)
  {
    v51 = v7[6];
    v52 = [a1 itemID];
    v53 = [v51 getAlternateContentsURLWrapperForItemID_];

    if (v53)
    {

      return [a1 setFileURL_];
    }
  }

  v115[1] = v7;
  v55 = [a1 fileURL];
  v141 = a1;
  v115[0] = v11;
  if (v55)
  {
    v56 = v55;
    sub_1CF9E59D8();

    v57 = v23[7];
    v58 = v46;
    v59 = 0;
  }

  else
  {
    v57 = v23[7];
    v58 = v46;
    v59 = 1;
  }

  v60 = v143;
  v124 = v57;
  v57(v58, v59, 1, v143);
  v61 = v48;
  sub_1CEFE55D0(v46, v48, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCBDC(v48, v43, &unk_1EC4BE310, qword_1CF9FCBE0);
  v142 = v23;
  v62 = v23[6];
  v63 = v62(v43, 1, v60);
  sub_1CEFCCC44(v43, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v63 == 1)
  {
    sub_1CEFCCBDC(v125, v40, &unk_1EC4BE310, qword_1CF9FCBE0);
    if (v62(v40, 1, v60) == 1)
    {
      sub_1CEFCCC44(v40, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v64 = v118;
      (v142[4])(v118, v40, v60);
      v65 = [v141 filename];
      v66 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v68 = v67;

      v148 = v66;
      v149 = v68;
      v146 = 58;
      v147 = 0xE100000000000000;
      v144 = 47;
      v145 = 0xE100000000000000;
      sub_1CEFE4E68();
      v69 = sub_1CF9E7668();
      v71 = v70;
      v60 = v143;

      v148 = v69;
      v149 = v71;
      v146 = 47;
      v147 = 0xE100000000000000;
      v144 = 58;
      v145 = 0xE100000000000000;
      sub_1CF9E7668();

      [v141 isFolder];
      v72 = v117;
      sub_1CF9E5958();

      (v142[1])(v64, v60);
      sub_1CEFCCC44(v61, &unk_1EC4BE310, qword_1CF9FCBE0);
      v124(v72, 0, 1, v60);
      sub_1CEFE55D0(v72, v61, &unk_1EC4BE310, qword_1CF9FCBE0);
    }
  }

  v73 = v138;
  sub_1CEFCCBDC(v61, v138, &unk_1EC4BE310, qword_1CF9FCBE0);
  v74 = v62(v73, 1, v60);
  sub_1CEFCCC44(v73, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v74 == 1)
  {
    v76 = v139;
    v75 = v140;
    v77 = v136;
    if (v136)
    {
      v144 = sub_1CF65C624();
      v146 = v126;
      LOBYTE(v147) = v128;
      v148 = v127;
      v149 = v77;

      v78 = [v141 isFolder];
      v79 = v130;
      (*(v132 + 32))(v129, &v146, &v148, v78, *(v131 + 96));

      sub_1CEFCCC44(v61, &unk_1EC4BE310, qword_1CF9FCBE0);
      v80 = v142;
      v124(v79, 0, 1, v60);
      sub_1CEFE55D0(v79, v61, &unk_1EC4BE310, qword_1CF9FCBE0);
    }

    else
    {
      v80 = v142;
    }
  }

  else
  {
    v80 = v142;
    v76 = v139;
    v75 = v140;
  }

  sub_1CEFCCBDC(v61, v76, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (v62(v76, 1, v60) == 1)
  {
    sub_1CEFCCC44(v61, &unk_1EC4BE310, qword_1CF9FCBE0);
    v81 = v76;
    return sub_1CEFCCC44(v81, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  v82 = v137;
  (v80[4])(v137, v76, v60);
  v83 = v80;
  v84 = sub_1CF9E5928();
  v85 = v141;
  [v141 setFileURL_];

  if ((v133 & 1) == 0)
  {
    (v83[1])(v82, v60);
    v81 = v61;
    return sub_1CEFCCC44(v81, &unk_1EC4BE310, qword_1CF9FCBE0);
  }

  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v86 = qword_1EDEBBE40;
  v87 = v121;
  v88 = v134;
  v89 = v122;
  (*(v121 + 56))(v134, 1, 1, v122);
  v90 = v85;
  v91 = v87;
  v92 = [v90 itemIdentifier];
  v93 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v139 = v94;
  v140 = v93;

  sub_1CEFCCBDC(v88, v75, &unk_1EC4BED20, &unk_1CFA00700);
  v95 = *(v91 + 48);
  v96 = v95(v75, 1, v89);
  v97 = v120;
  if (v96 == 1)
  {
    v98 = v86;
    sub_1CF9E6048();
    if (v95(v75, 1, v89) != 1)
    {
      sub_1CEFCCC44(v75, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v91 + 32))(v120, v75, v89);
  }

  v99 = v135;
  (*(v91 + 16))(v135, v97, v89);
  v100 = v119;
  *&v99[*(v119 + 20)] = v86;
  v101 = &v99[*(v100 + 24)];
  *v101 = "Type identifier resolution";
  *(v101 + 1) = 26;
  v101[16] = 2;
  v102 = v86;
  sub_1CF9E7468();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v103 = swift_allocObject();
  v138 = xmmword_1CF9FA450;
  *(v103 + 16) = xmmword_1CF9FA450;
  *(v103 + 56) = MEMORY[0x1E69E6158];
  *(v103 + 64) = sub_1CEFD51C4();
  v104 = v139;
  *(v103 + 32) = v140;
  *(v103 + 40) = v104;
  sub_1CF9E6028();

  (*(v91 + 8))(v97, v89);
  sub_1CEFCCC44(v134, &unk_1EC4BED20, &unk_1CFA00700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = v138;
  v106 = *MEMORY[0x1E695DC68];
  *(inited + 32) = *MEMORY[0x1E695DC68];
  v107 = v106;
  sub_1CEFF8A84(inited);
  swift_setDeallocating();
  sub_1CF007CB8(inited + 32, type metadata accessor for URLResourceKey);
  v108 = v123;
  v109 = v137;
  sub_1CF9E58A8();

  sub_1CF9E55B8();
  v111 = v110;
  (*(v116 + 8))(v108, v115[0]);
  v112 = v143;
  if (v111)
  {
    v113 = sub_1CF9E6888();

    [v141 setTypeIdentifier_];
  }

  sub_1CF9E7458();
  v114 = v135;
  sub_1CF9E6038();
  (v142[1])(v109, v112);
  sub_1CEFCCC44(v61, &unk_1EC4BE310, qword_1CF9FCBE0);
  return sub_1CF007CB8(v114, type metadata accessor for Signpost);
}

void sub_1CF77E620(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1CF9E57E8();
  [v4 *a2];
}

uint64_t sub_1CF77E690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_43Tm()
{
  v1 = *(*(v0 + 16) + 192);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 48);

  v38 = (v39 + 56) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF77EB10(void *a1, SEL *a2)
{
  v3 = *(*(*(v2 + 16) + 192) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1CF77153C(a1, *(v2 + 48), v2 + v4, *v5, *(v5 + 8), *(v2 + 32), *(v2 + 40), a2);
}

uint64_t sub_1CF77EB9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 8);
  v12 = *(*(v6 + 16) + 16);
  v17 = *a1;
  v18 = v11;

  sub_1CF68DDB0(&v17, a2, a3, a6, __src);
  if (v7)
  {
  }

  else
  {

    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v16, __src, sizeof(v16));
    if (sub_1CEFF755C(v16) == 1)
    {
      LOBYTE(v13) = 0;
    }

    else
    {
      sub_1CEFCCC44(__dst, &unk_1EC4BFC20, &unk_1CFA0A290);
      v13 = (v16[16] >> 4) & 1;
    }
  }

  return v13 & 1;
}

uint64_t sub_1CF77EC8C@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = fpfs_fget_parent_id();
  *a1 = result;
  return result;
}

void sub_1CF77ECC4(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1CF76CC84(a1, v1[6], v1[7]);
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for VFSItem(0);
  v39 = *(*(v1 - 1) + 80);
  v37 = *(*(v1 - 1) + 64);
  v2 = *(v0 + 16);

  v38 = (v39 + 24) & ~v39;
  v3 = v0 + v38;
  v4 = *(v0 + v38 + 40);

  v5 = v0 + v38 + v1[7];
  v6 = type metadata accessor for ItemMetadata();
  v7 = v6[7];
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[8], v8);
  v11 = *(v5 + v6[14] + 8);

  v12 = v6[30];
  if (!(*(v9 + 48))(v5 + v12, 1, v8))
  {
    v10(v5 + v12, v8);
  }

  v13 = *(v5 + v6[31]);

  v14 = *(v5 + v6[33]);

  v15 = (v5 + v6[34]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1CEFE4714(*v15, v16);
  }

  v17 = *(v5 + v6[38] + 8);

  v18 = v3 + v1[8];
  v19 = *(v18 + 16);
  if (v19 != 1)
  {

    v20 = *(v18 + 48);

    v21 = *(v18 + 64);

    v22 = *(v18 + 88);

    v23 = *(v18 + 120);

    v24 = *(v18 + 136);

    v25 = *(v18 + 152);

    v26 = *(v18 + 168);

    v27 = *(v18 + 184);

    if (*(v18 + 192))
    {

      v28 = *(v18 + 200);
    }

    v29 = *(v18 + 224);

    v30 = *(v18 + 240);
  }

  v31 = v1[12];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  if (!(*(*(v32 - 8) + 48))(v3 + v31, 1, v32))
  {
    v33 = sub_1CF9E5A58();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v3 + v31, 1, v33))
    {
      (*(v34 + 8))(v3 + v31, v33);
    }
  }

  v35 = *(v0 + ((v37 + v38 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

void sub_1CF77F0B0(void *a1, SEL *a2)
{
  v5 = *(type metadata accessor for VFSItem(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1CF7713D8(a1, *(v2 + 16), v2 + v6, *v7, *(v7 + 8), a2);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_1CF77F1A0(int a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  sub_1CF9E6638();

  v6 = *MEMORY[0x1E696AA08];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;
  swift_getErrorValue();
  v23 = v20;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_0, v19, v20);
  sub_1CEFE9EB8(&v21, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1CF1D154C(v18, v7, v9, isUniquelyReferenced_nonNull_native);

  v12 = [a2 domain];
  if (!v12)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v12 = sub_1CF9E6888();
  }

  v13 = [a2 code];
  v14 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v15 = sub_1CF9E6618();

  v16 = [v14 initWithDomain:v12 code:v13 userInfo:v15];

  v22 = 0;
  v21 = v16;
  LOBYTE(v23) = 1;
  v17 = v16;
  a3(&v21);
}

void sub_1CF77F3B8(int a1, id a2, void (*a3)(__int128 *))
{
  v5 = [a2 userInfo];
  v6 = sub_1CF9E6638();

  v7 = *MEMORY[0x1E696AA08];
  v8 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v10 = v9;
  swift_getErrorValue();
  v11 = v27;
  v12 = v28;
  v23 = v28;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v21);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v11, v12);
  sub_1CEFE9EB8(&v21, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v6;
  sub_1CF1D154C(v26, v8, v10, isUniquelyReferenced_nonNull_native);

  v15 = [a2 domain];
  if (!v15)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v15 = sub_1CF9E6888();
  }

  v16 = [a2 code];
  v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v18 = sub_1CF9E6618();

  v19 = [v17 initWithDomain:v15 code:v16 userInfo:v18];

  v21 = v19;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  v20 = v19;
  a3(&v21);
}

uint64_t sub_1CF77F5D0(void *a1, int a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(id), uint64_t a10, id a11, uint64_t a12, uint64_t (*a13)(uint64_t), id a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(uint64_t), id a18, uint64_t a19, void *a20, uint64_t a21, uint64_t (*a22)(uint64_t), void *a23, uint64_t (*a24)(uint64_t), uint64_t (*a25)(uint64_t))
{
  v315 = a3;
  LODWORD(v316) = a2;
  v29 = sub_1CF9E63A8();
  v289 = *(v29 - 8);
  v290 = v29;
  v30 = *(v289 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v288 = &v287 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E53C8();
  v313 = *(v32 - 8);
  v314 = v32;
  v33 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v312 = &v287 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CF9E6388();
  v308 = *(v35 - 8);
  v309 = v35;
  v36 = *(v308 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v304 = (&v287 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v305 = &v287 - v39;
  v40 = sub_1CF9E6498();
  v306 = *(v40 - 8);
  v307 = v40;
  v41 = *(v306 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v303 = &v287 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE380, &qword_1CFA01BA0);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v43 - 8);
  v294 = &v287 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v295 = &v287 - v47;
  v48 = sub_1CF9E63D8();
  v301 = *(v48 - 8);
  v302 = v48;
  v49 = *(v301 + 64);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v292 = &v287 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v293 = &v287 - v52;
  v53 = sub_1CF9E6448();
  v310 = *(v53 - 8);
  v311 = v53;
  v54 = *(v310 + 64);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v287 = &v287 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v296 = &v287 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v297 = &v287 - v59;
  v60 = sub_1CF9E73D8();
  v299 = *(v60 - 8);
  v300 = v60;
  v61 = *(v299 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v298 = &v287 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1CF9E5248();
  v64 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63 - 8);
  v317 = (&v287 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_1CF9E5268();
  v67 = *(v66 - 1);
  v319 = v66;
  v320 = v67;
  v68 = *(v67 + 8);
  MEMORY[0x1EEE9AC00](v66);
  v318 = &v287 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = swift_allocObject();
  v322 = a5;
  *(v70 + 16) = a5;
  *(v70 + 24) = a6;
  v71 = swift_allocObject();
  v71[2] = a4;
  v71[3] = a9;
  v291 = a9;
  v71[4] = v70;
  swift_retain_n();
  v354 = a1;
  v325 = a6;
  swift_retain_n();
  v72 = a4;
  v323 = v70;
  swift_retain_n();
  v324 = v72;
  v73 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE320, &unk_1CFA08B50);
  if (swift_dynamicCast())
  {
    v335 = v351;
    v336 = v352;
    v331 = v348;
    v332 = v349;
    v333 = v350[0];
    v334 = v350[1];
    v329 = aBlock;
    v330 = v347;
    v343 = v351;
    v344 = v352;
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    v342[1] = v350[1];
    v337 = v353;
    v345 = v353;
    v338 = aBlock;
    v339 = v347;
    if (sub_1CF2B971C(&v338))
    {
      sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);
      goto LABEL_4;
    }

    v88 = nullsub_1(&v338);
    v89 = *v88;
    v90 = *(v88 + 8);
    v91 = *(v88 + 112);

    v92 = sub_1CEFCCC44(v88 + 16, &unk_1EC4BECD0, &unk_1CF9FEF80);
    if (v90 != 2 || v89)
    {
      v95 = v324;
      v96 = v322;
      if (v90 == 2 && v89 == 1)
      {
        v94 = *MEMORY[0x1E6967280];
        if (v91)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v328[0] = 0x2F73662F70665F5FLL;
        v328[1] = 0xE800000000000000;
        v326 = v89;
        v327 = v90;
        v138 = VFSItemID.description.getter(v92, v93);
        MEMORY[0x1D3868CC0](v138);

        v94 = sub_1CF9E6888();

        if (v91)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v94 = *MEMORY[0x1E6967258];
      v95 = v324;
      v96 = v322;
      if (v91)
      {
LABEL_16:
        v97 = v91;
LABEL_54:

        v139 = v91;
        sub_1CF782070(v97, v95, v96);

        goto LABEL_73;
      }
    }

    v97 = [objc_opt_self() fileProviderErrorForNonExistentItemWithIdentifier_];
    goto LABEL_54;
  }

LABEL_4:
  v321 = v71;

  *&v329 = a1;
  v74 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF270, &qword_1CFA01B70);
  if (swift_dynamicCast())
  {
    *(v342 + 9) = *(v350 + 9);
    v341 = v349;
    v342[0] = v350[0];
    v339 = v347;
    v340 = v348;
    v338 = aBlock;
    if (!BYTE8(v350[1]))
    {
      v98 = *(&v342[0] + 1);
      v99 = *(&v340 + 1);
      v100 = v340;
      v101 = *(&v339 + 1);
      v102 = v339;
      v103 = *(&v338 + 1);
      v320 = v338;

      sub_1CF1D56D0(v103, v102, v101, v100, v99);
      if (v98)
      {
        v104 = v98;
        v105 = v324;
        v106 = v322;
        v107 = v320;
      }

      else
      {
        v136 = objc_opt_self();
        v107 = v320;
        v104 = [v136 fileProviderErrorForNonExistentItemWithIdentifier_];
        v105 = v324;
        v106 = v322;
      }

      v137 = v98;
      sub_1CF782070(v104, v105, v106);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v338, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  v328[0] = a1;
  v76 = a1;
  if (swift_dynamicCast())
  {
    v335 = v351;
    v336 = v352;
    v331 = v348;
    v332 = v349;
    v333 = v350[0];
    v334 = v350[1];
    v329 = aBlock;
    v330 = v347;
    v343 = v351;
    v344 = v352;
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    v342[1] = v350[1];
    v337 = v353;
    v345 = v353;
    v338 = aBlock;
    v339 = v347;
    v77 = sub_1CF2B971C(&v338);
    switch(v77)
    {
      case 5:
        nullsub_1(&v338);

LABEL_32:
        v114 = v322;
        v115 = v324;
        goto LABEL_33;
      case 3:
        v108 = nullsub_1(&v338);
        v109 = *v108;
        v110 = *(v108 + 8);
        sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);
        if (v316)
        {
          LODWORD(v326) = 66;
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
          v84 = v312;
          v85 = v314;
          sub_1CF9E57D8();
          v86 = sub_1CF9E53A8();
          v87 = v313;
          goto LABEL_25;
        }

        LODWORD(v318) = v110;
        v319 = v109;
        v320 = a18;
        v317 = a17;
        v316 = a16;
        v140 = v315;
        v141 = *(*(*(v315 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v142 = swift_dynamicCastClassUnconditional();
        v143 = swift_allocObject();
        v144 = v321;
        *(v143 + 16) = a11;
        *(v143 + 24) = v144;
        v322 = v143;
        *(v143 + 32) = v140;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v314 = v142;
        v145 = *(v142 + 216);
        v326 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v146 = v145;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v147 = v298;
        v148 = v300;
        sub_1CF9E77B8();
        v149 = sub_1CF9E73E8();

        (*(v299 + 8))(v147, v148);
        qos_class_self();
        v150 = v294;
        sub_1CF9E63B8();
        v152 = v301;
        v151 = v302;
        v153 = *(v301 + 48);
        if (v153(v150, 1, v302) == 1)
        {
          (*(v152 + 104))(v292, *MEMORY[0x1E69E7FA0], v151);
          if (v153(v150, 1, v151) != 1)
          {
            sub_1CEFCCC44(v150, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v152 + 32))(v292, v150, v151);
        }

        ObjectType = swift_getObjectType();
        v172 = v296;
        sub_1CF9E6428();
        v173 = swift_allocObject();
        v174 = v319;
        *(v173 + 16) = v314;
        *(v173 + 24) = v174;
        *(v173 + 32) = v318;
        *(v173 + 40) = 0u;
        *(v173 + 56) = 0u;
        *(v173 + 72) = 0u;
        *(v173 + 88) = 0u;
        *(v173 + 104) = 0u;
        *(v173 + 120) = 0u;
        *(v173 + 136) = 0;
        *(v173 + 144) = 1;
        v175 = v317;
        *(v173 + 152) = v149;
        *(v173 + 160) = v175;
        *(v173 + 168) = v322;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v172, v320, v173);

        (*(v310 + 8))(v172, v311);
        v176 = v303;
        sub_1CF9E6478();
        v177 = v305;
        sub_1CEFD5B64(v305);
        v178 = v304;
        sub_1CEFD5BD8(v304);
        MEMORY[0x1D3869770](v176, v177, v178, ObjectType);
        v179 = *(v308 + 8);
        v180 = v178;
        v181 = v309;
        v179(v180, v309);
        v179(v177, v181);
        (*(v306 + 8))(v176, v307);
        sub_1CF9E7448();

LABEL_67:

        swift_unknownObjectRelease();

        v193 = v324;

      case 1:
        v78 = nullsub_1(&v338);
        v79 = *v78;
        v80 = *(v78 + 8);
        v81 = *(v78 + 24);
        v82 = *(v78 + 48);
        v83 = *(v78 + 56);

        sub_1CF480620(v82, v83);

        if (v316)
        {
          sub_1CF9E5128();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v84 = v318;
          v85 = v319;
          sub_1CF9E57D8();
          v86 = sub_1CF9E50D8();
          v87 = v320;
LABEL_25:
          v87[1](v84, v85);
LABEL_26:

          v111 = v324;
          sub_1CF782070(v86, v324, v322);

          v112 = v328[0];
LABEL_72:

          goto LABEL_73;
        }

        LODWORD(v318) = v80;
        v319 = v79;
        v320 = a14;
        v317 = a13;
        v316 = a12;
        v154 = v315;
        v155 = *(*(*(v315 + 16) + 32) + 16);
        type metadata accessor for VFSFileTree(0);
        v156 = swift_dynamicCastClassUnconditional();
        v157 = swift_allocObject();
        v158 = v321;
        *(v157 + 16) = a11;
        *(v157 + 24) = v158;
        v322 = v157;
        *(v157 + 32) = v154;
        sub_1CEFD57E0(0, &qword_1EDEAED60, 0x1E69E9630);
        v314 = v156;
        v159 = *(v156 + 216);
        v326 = MEMORY[0x1E69E7CC0];
        sub_1CF77E690(&qword_1EDEAB5E0, MEMORY[0x1E69E80B0]);

        v160 = v159;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE3A0, &qword_1CFA006D0);
        sub_1CF00FED0(&qword_1EDEAB650, &qword_1EC4BE3A0, &qword_1CFA006D0);
        v161 = v298;
        v162 = v300;
        sub_1CF9E77B8();
        v163 = sub_1CF9E73E8();

        (*(v299 + 8))(v161, v162);
        qos_class_self();
        v164 = v295;
        sub_1CF9E63B8();
        v166 = v301;
        v165 = v302;
        v167 = *(v301 + 48);
        if (v167(v164, 1, v302) == 1)
        {
          (*(v166 + 104))(v293, *MEMORY[0x1E69E7FA0], v165);
          if (v167(v164, 1, v165) != 1)
          {
            sub_1CEFCCC44(v164, &unk_1EC4BE380, &qword_1CFA01BA0);
          }
        }

        else
        {
          (*(v166 + 32))(v293, v164, v165);
        }

        v182 = swift_getObjectType();
        v183 = v297;
        sub_1CF9E6428();
        v184 = swift_allocObject();
        v185 = v319;
        *(v184 + 16) = v314;
        *(v184 + 24) = v185;
        *(v184 + 32) = v318;
        *(v184 + 40) = 0u;
        *(v184 + 56) = 0u;
        *(v184 + 72) = 0u;
        *(v184 + 88) = 0u;
        *(v184 + 104) = 0u;
        *(v184 + 120) = 0u;
        *(v184 + 136) = 0;
        *(v184 + 144) = 1;
        v186 = v317;
        *(v184 + 152) = v163;
        *(v184 + 160) = v186;
        *(v184 + 168) = v322;

        swift_unknownObjectRetain();

        sub_1CEFD5828(0, v183, v320, v184);

        (*(v310 + 8))(v183, v311);
        v187 = v303;
        sub_1CF9E6478();
        v188 = v305;
        sub_1CEFD5B64(v305);
        v189 = v304;
        sub_1CEFD5BD8(v304);
        MEMORY[0x1D3869770](v187, v188, v189, v182);
        v190 = *(v308 + 8);
        v191 = v189;
        v192 = v309;
        v190(v191, v309);
        v190(v188, v192);
        (*(v306 + 8))(v187, v307);
        sub_1CF9E7448();

        goto LABEL_67;
    }

    sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&v329 = a1;
  v113 = a1;
  if (swift_dynamicCast())
  {
    *(v342 + 9) = *(v350 + 9);
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    v338 = aBlock;
    v339 = v347;
    if (BYTE8(v350[1]) == 5)
    {

      goto LABEL_32;
    }

    sub_1CEFCCC44(&v338, &qword_1EC4BF270, &qword_1CFA01B70);
  }

  *&aBlock = a1;
  v119 = a1;
  if (swift_dynamicCast())
  {
    v115 = v324;
    v114 = v322;
    if (v338 > 2u)
    {
      if (v338 == 4)
      {
        sub_1CF9E51A8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
        v130 = v318;
        v131 = v319;
        sub_1CF9E57D8();
        v132 = sub_1CF9E50D8();
        (*(v320 + 1))(v130, v131);

        sub_1CF782070(v132, v115, v114);

        goto LABEL_73;
      }

      sub_1CF9E5198();
      goto LABEL_34;
    }

    if (v338 - 1 < 2)
    {

      sub_1CF9E5118();
      goto LABEL_34;
    }

LABEL_33:
    sub_1CF9E50E8();
LABEL_34:
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v116 = v318;
    v117 = v319;
    sub_1CF9E57D8();
    v118 = sub_1CF9E50D8();
    (*(v320 + 1))(v116, v117);

    sub_1CF782070(v118, v115, v114);

    goto LABEL_35;
  }

  *&v338 = a1;
  v120 = a1;
  if (swift_dynamicCast())
  {
    if ((v347 + 3) >= 2u)
    {
      sub_1CF3386E4(aBlock, *(&aBlock + 1), v347);
      LODWORD(v329) = 16;
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
      v168 = v312;
      v169 = v314;
      sub_1CF9E57D8();
      v170 = sub_1CF9E53A8();
      (*(v313 + 8))(v168, v169);

      v111 = v324;
      sub_1CF782070(v170, v324, v322);

      v112 = v338;
      goto LABEL_72;
    }

    type metadata accessor for NSFileProviderError(0);
    *&v338 = -2005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1CF9FA450;
    v122 = *MEMORY[0x1E696A578];
    *(v121 + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(v121 + 40) = v123;
    v124 = sub_1CF9E6888();
    sub_1CF9E82F8();
    v125 = FPLocv();

    v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v128 = v127;

    *(v121 + 72) = MEMORY[0x1E69E6158];
    *(v121 + 48) = v126;
    *(v121 + 56) = v128;
    sub_1CF4E04E8(v121);
    swift_setDeallocating();
    sub_1CEFCCC44(v121 + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
    swift_deallocClassInstance();
    sub_1CF77E690(&qword_1EDEAB6C0, type metadata accessor for NSFileProviderError);
    sub_1CF9E57D8();
    v118 = aBlock;

    v129 = v324;
    sub_1CF782070(v118, v324, v322);

LABEL_35:

    goto LABEL_73;
  }

  v328[0] = a1;
  v133 = a1;
  if (swift_dynamicCast())
  {
    v335 = v351;
    v336 = v352;
    v331 = v348;
    v332 = v349;
    v333 = v350[0];
    v334 = v350[1];
    v329 = aBlock;
    v330 = v347;
    v343 = v351;
    v344 = v352;
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    v342[1] = v350[1];
    v337 = v353;
    v345 = v353;
    v338 = aBlock;
    v339 = v347;
    if (sub_1CF2B971C(&v338) == 16)
    {
      sub_1CF9E5168();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
      v134 = v318;
      v135 = v319;
      sub_1CF9E57D8();
      v86 = sub_1CF9E50D8();
      (*(v320 + 1))(v134, v135);
      goto LABEL_26;
    }

    sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);
  }

  *&aBlock = a1;
  v194 = a1;
  if (swift_dynamicCast())
  {
    v195 = FPDomainUnavailableError();
    if (!v195)
    {
LABEL_121:

      v249 = v324;

      __break(1u);
LABEL_122:
      MEMORY[0x1EEE9AC00](v240);
      *(&v287 - 2) = v75;

      v250 = v324;

      fp_preconditionFailure(_:file:line:)(v317, (&v287 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
    }

    v196 = v195;

    v111 = v324;
    sub_1CF782070(v196, v324, v322);

    v112 = aBlock;
    goto LABEL_72;
  }

  v326 = a1;
  v198 = a1;
  if (swift_dynamicCast())
  {
    v335 = v351;
    v336 = v352;
    v331 = v348;
    v332 = v349;
    v333 = v350[0];
    v334 = v350[1];
    v329 = aBlock;
    v330 = v347;
    v343 = v351;
    v344 = v352;
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    v342[1] = v350[1];
    v337 = v353;
    v345 = v353;
    v338 = aBlock;
    v339 = v347;
    if (sub_1CF2B971C(&v338) == 10)
    {
      v199 = *(nullsub_1(&v338) + 16);
      if (!v199)
      {
        LODWORD(v328[0]) = 16;
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF77E690(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
        v200 = v312;
        v201 = v314;
        sub_1CF9E57D8();
        v199 = sub_1CF9E53A8();
        (*(v313 + 8))(v200, v201);
      }

      v202 = v324;
      v203 = v322;

      sub_1CEFCCBDC(&v329, v328, &unk_1EC4BE320, &unk_1CFA08B50);
      sub_1CF782070(v199, v202, v203);

      sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);

      goto LABEL_73;
    }

    sub_1CEFCCC44(&v329, &unk_1EC4BE320, &unk_1CFA08B50);
    v205 = v326;
    goto LABEL_91;
  }

  *&v329 = a1;
  v204 = a1;
  if (swift_dynamicCast())
  {
    v340 = v348;
    v341 = v349;
    v342[0] = v350[0];
    *(v342 + 9) = *(v350 + 9);
    v338 = aBlock;
    v339 = v347;
    sub_1CEFCCC44(&v338, &qword_1EC4BF270, &qword_1CFA01B70);

LABEL_92:
    sub_1CF9E5198();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF77E690(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
    v211 = v318;
    v212 = v319;
    sub_1CF9E57D8();
    v118 = sub_1CF9E50D8();
    (*(v320 + 1))(v211, v212);

    v213 = v324;
    sub_1CF782070(v118, v324, v322);

    goto LABEL_35;
  }

  *&aBlock = a1;
  v206 = a1;
  v207 = swift_dynamicCast();

  if (v207)
  {
    goto LABEL_92;
  }

  *&v338 = a1;
  v208 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4710, &unk_1CFA058C0);
  if (swift_dynamicCast())
  {
    sub_1CF48183C(aBlock, SDWORD2(aBlock), v347, *(&v347 + 1), v348);
LABEL_90:
    v205 = v338;
LABEL_91:

    goto LABEL_92;
  }

  *&v338 = a1;
  v209 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1B70, &qword_1CFA058D0);
  if (swift_dynamicCast())
  {
    sub_1CF481874(aBlock, *(&aBlock + 1), v347, SBYTE8(v347));
    goto LABEL_90;
  }

  *&v338 = a1;
  v210 = a1;
  if (swift_dynamicCast())
  {
    sub_1CF47FB38(&aBlock);
    goto LABEL_90;
  }

  v214 = sub_1CF9E57E8();
  v215 = [v214 userInfo];
  v216 = sub_1CF9E6638();

  v217 = *MEMORY[0x1E696AA08];
  v218 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (*(v216 + 16))
  {
    v220 = sub_1CEFE4328(v218, v219);
    v222 = v221;

    if (v222)
    {
      sub_1CEFD1104(*(v216 + 56) + 32 * v220, &aBlock);

      sub_1CEFD57E0(0, &qword_1EDEA3440, 0x1E696ABC0);
      if (swift_dynamicCast())
      {
        v223 = v338;
        v224 = v324;
        v225 = v323;

        v226 = v214;
        v227 = v223;
        sub_1CF777DC8(v227, v316 & 1, v315, v226, v224, v291, v225);
      }

      v320 = a11;
    }

    else
    {
      v320 = a11;
    }
  }

  else
  {
    v320 = a11;
  }

  v228 = swift_allocObject();
  v229 = [v214 userInfo];
  v230 = sub_1CF9E6638();

  v231 = *MEMORY[0x1E696A750];
  v232 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  if (!*(v230 + 16))
  {

    goto LABEL_116;
  }

  v75 = sub_1CEFE4328(v232, v233);
  v235 = v234;

  if ((v235 & 1) == 0)
  {

    goto LABEL_116;
  }

  sub_1CEFD1104(*(v230 + 56) + 32 * v75, &aBlock);

  v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4720, &qword_1CFA16878);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_116:
    swift_deallocUninitializedObject();

    v247 = v324;
    sub_1CF782070(a1, v324, v322);

    goto LABEL_117;
  }

  v318 = v214;
  v228[2] = v338;
  v236 = dispatch_group_create();
  v237 = v228[2];
  if (v237 >> 62)
  {
    goto LABEL_119;
  }

  v238 = *((v237 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v238)
  {
    goto LABEL_125;
  }

  do
  {
    v239 = 0;
    v317 = a24;
    while (1)
    {
      v75 = v236;
      v240 = objc_sync_enter(v75);
      if (v240)
      {
        goto LABEL_122;
      }

      swift_beginAccess();
      v241 = v228[2];
      if ((v241 & 0xC000000000000001) != 0)
      {
        v242 = MEMORY[0x1D3869C30](v239);
        goto LABEL_110;
      }

      if (v239 >= *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v242 = *(v241 + 8 * v239 + 32);
LABEL_110:
      v243 = v242;
      swift_endAccess();
      v244 = objc_sync_exit(v75);
      if (v244)
      {
        MEMORY[0x1EEE9AC00](v244);
        *(&v287 - 2) = v75;

        v251 = v324;

        fp_preconditionFailure(_:file:line:)(a25, (&v287 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
      }

      dispatch_group_enter(v75);
      v245 = v75;

      v246 = v243;
      sub_1CF774BF8(v246, v316 & 1, v315, v245, v228, v239);

      if (v238 == ++v239)
      {
        goto LABEL_125;
      }
    }

    __break(1u);
LABEL_119:
    v248 = sub_1CF9E7818();
    if (v248 < 0)
    {
      __break(1u);
      goto LABEL_121;
    }

    v238 = v248;
  }

  while (v248);
LABEL_125:
  if (v316)
  {
    v252 = v318;
    v253 = [v318 userInfo];
    v254 = sub_1CF9E6638();

    v255 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v257 = v256;
    swift_beginAccess();
    v258 = v228[2];
    *(&v347 + 1) = v319;
    *&aBlock = v258;
    sub_1CEFE9EB8(&aBlock, &v338);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v328[0] = v254;
    sub_1CF1D154C(&v338, v255, v257, isUniquelyReferenced_nonNull_native);

    v260 = [v252 domain];
    if (!v260)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v260 = sub_1CF9E6888();
    }

    v214 = v318;
    v261 = [v318 code];
    v262 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v263 = sub_1CF9E6618();

    v264 = [v262 initWithDomain:v260 code:v261 userInfo:v263];

    v265 = v324;
    sub_1CF782070(v264, v324, v322);

LABEL_117:
LABEL_73:
  }

  else
  {
    v319 = a23;
    v317 = a22;
    v316 = a21;
    v314 = a20;
    v266 = *(*(v315 + 16) + 64);
    v267 = swift_allocObject();
    v268 = v318;
    v267[2] = v318;
    v267[3] = v228;
    v269 = v321;
    v267[4] = v320;
    v267[5] = v269;
    v270 = v267;

    v271 = v266;
    v322 = v268;

    v272 = fpfs_current_log();
    v320 = fpfs_adopt_log();
    v273 = swift_allocObject();
    *&aBlock = sub_1CF9E73C8();
    *(&aBlock + 1) = v274;
    MEMORY[0x1D3868CC0](16416, 0xE200000000000000);
    v275 = sub_1CF9E7988();
    MEMORY[0x1D3868CC0](v275);

    sub_1CF9E6978();

    v276 = __fp_log_fork();

    *(v273 + 2) = v276;
    v277 = swift_allocObject();
    *(v277 + 16) = v272;
    *(v277 + 24) = v273;
    v318 = v273;
    *(v277 + 32) = v271;
    *(v277 + 40) = "normalizeError(_:synchronous:completionHandler:)";
    *(v277 + 48) = 48;
    *(v277 + 56) = 2;
    v278 = v317;
    *(v277 + 64) = v316;
    *(v277 + 72) = v270;
    v315 = v270;
    *&v348 = v278;
    *(&v348 + 1) = v277;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v347 = sub_1CEFCA444;
    *(&v347 + 1) = v319;
    v279 = _Block_copy(&aBlock);
    v317 = v271;
    v319 = v272;

    v280 = v287;
    sub_1CF9E63F8();
    *&v338 = MEMORY[0x1E69E7CC0];
    sub_1CF77E690(&qword_1EDEAEDF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE0E0, &unk_1CF9FC5C0);
    sub_1CF00FED0(&qword_1EDEAEDB0, &unk_1EC4BE0E0, &unk_1CF9FC5C0);
    v281 = v288;
    v282 = v290;
    sub_1CF9E77B8();
    v283 = v317;
    sub_1CF9E7308();
    _Block_release(v279);
    (*(v289 + 8))(v281, v282);
    (*(v310 + 8))(v280, v311);

    v284 = v320;
    v285 = fpfs_adopt_log();

    v286 = v324;
  }
}