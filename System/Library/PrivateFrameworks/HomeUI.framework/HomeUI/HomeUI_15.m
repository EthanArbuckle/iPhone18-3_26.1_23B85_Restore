uint64_t sub_20D01A210(double a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x277D84F90];
  v135 = MEMORY[0x277D84F90];
  v7 = *&v2[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView];
  v8 = [v7 leadingAnchor];
  v9 = &selRef_isUserScrubbing;
  v10 = [v3 layoutMarginsGuide];
  v11 = [v10 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor_];
  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_77;
  }

  while (1)
  {
    sub_20D567B08();
    v13 = [v7 trailingAnchor];
    v14 = [v3 v9[180]];
    v15 = [v14 trailingAnchor];

    v16 = [v13 constraintLessThanOrEqualToAnchor_];
    MEMORY[0x20F31CEE0]();
    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20D567AB8();
    }

    sub_20D567B08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5C27F0;
    v18 = *&v3[OBJC_IVAR____TtC6HomeUI19TileCellContentView_statusGlyph];
    v19 = [v18 trailingAnchor];
    v20 = [v7 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:4.0];

    *(inited + 32) = v21;
    v22 = [v18 bottomAnchor];
    v23 = [v7 bottomAnchor];
    v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23 constant:1.0];

    *(inited + 40) = v24;
    sub_20CF6BECC(inited);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_20D5BECD0;
    v26 = *&v3[OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel];
    *(v25 + 32) = v26;
    v27 = *&v3[OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel];
    *(v25 + 40) = v27;
    v28 = *&v3[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
    *(v25 + 48) = v28;
    v134 = v6;
    v9 = (v25 & 0xC000000000000001);
    v29 = v26;
    v30 = v27;
    v132 = v28;
    if ((v25 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x20F31DD20](0, v25);
    }

    else
    {
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_76;
      }

      v31 = v29;
    }

    v32 = v31;
    if ([v31 isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      v6 = *(v6 + 16);
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v9)
    {
      v33 = MEMORY[0x20F31DD20](1, v25);
    }

    else
    {
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_76;
      }

      v33 = *(v25 + 40);
    }

    v34 = v33;
    if ([v33 isHidden])
    {
    }

    else
    {
      sub_20D5688C8();
      v6 = *(v134 + 16);
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    if (v9)
    {
      break;
    }

    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v35 = *(v25 + 48);
      goto LABEL_19;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_20D567AB8();
  }

  v35 = MEMORY[0x20F31DD20](2, v25);
LABEL_19:
  v36 = v35;
  if ([v35 isHidden])
  {
  }

  else
  {
    sub_20D5688C8();
    sub_20D568908();
    sub_20D568918();
    sub_20D5688D8();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = v134 < 0 || (v134 & 0x4000000000000000) != 0;
  if (!v37)
  {
    if (*(v134 + 16))
    {
      goto LABEL_27;
    }

LABEL_82:

    v121 = [v7 centerYAnchor];
    v122 = [v3 layoutMarginsGuide];
    v123 = [v122 centerYAnchor];

    v124 = [v121 constraintEqualToAnchor_];
    MEMORY[0x20F31CEE0]();
    if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_83:
      sub_20D567B08();
      return v135;
    }

LABEL_87:
    sub_20D567AB8();
    goto LABEL_83;
  }

  if (!sub_20D568768())
  {
    goto LABEL_82;
  }

LABEL_27:
  if ((v134 & 0xC000000000000001) != 0)
  {

    v126 = MEMORY[0x20F31DD20](0, v134);

    v38 = v126;
  }

  else
  {
    if (!*(v134 + 16))
    {
      __break(1u);
      goto LABEL_87;
    }

    v38 = *(v134 + 32);
  }

  v39 = v38;
  v40 = [v39 leadingAnchor];
  v41 = [v7 trailingAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:a2];

  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v43 = [v39 centerYAnchor];
  v44 = [v7 centerYAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  if (!v37)
  {
    if (*(v134 + 16) >= 2)
    {
      goto LABEL_42;
    }

LABEL_36:
    v46 = v39;
    v47 = swift_initStackObject();
    *(v47 + 16) = xmmword_20D5BF1C0;
    v48 = [v46 centerYAnchor];
    v49 = [v3 layoutMarginsGuide];
    v50 = [v49 centerYAnchor];

    v51 = [v48 constraintEqualToAnchor_];
    *(v47 + 32) = v51;
    v52 = [v46 topAnchor];
    v53 = [v3 layoutMarginsGuide];
    v54 = [v53 topAnchor];

    v55 = [v52 constraintGreaterThanOrEqualToAnchor_];
    *(v47 + 40) = v55;
    v56 = [v46 bottomAnchor];
    v57 = [v3 layoutMarginsGuide];
    v58 = [v57 bottomAnchor];

    v59 = [v56 constraintLessThanOrEqualToAnchor_];
    *(v47 + 48) = v59;
    v60 = [v46 topAnchor];
    v61 = [v3 topAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToAnchor_];

    *(v47 + 56) = v62;
    v63 = [v46 bottomAnchor];
    v64 = [v3 bottomAnchor];
    v65 = [v63 constraintLessThanOrEqualToAnchor_];

    *(v47 + 64) = v65;
    sub_20CF6BECC(v47);
    sub_20CECF940(0, &unk_28111FB30);
    v66 = v132;
    v67 = v46;
    LOBYTE(v63) = sub_20D5683F8();

    if (v63)
    {
      v68 = sub_20D014F00();
      if (v68 >> 62)
      {
        goto LABEL_90;
      }

      v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_39:

      if (!v69)
      {
        v70 = [(SEL *)v67 trailingAnchor];

        v71 = [v3 layoutMarginsGuide];
        v72 = [v71 trailingAnchor];

        v73 = [v70 constraintLessThanOrEqualToAnchor_];
LABEL_56:
        v95 = v73;

        MEMORY[0x20F31CEE0]();
        if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();

        return v135;
      }
    }

    else
    {
    }

    v70 = [(SEL *)v67 trailingAnchor];

    v94 = [v3 layoutMarginsGuide];
    v72 = [v94 trailingAnchor];

    v73 = [v70 constraintEqualToAnchor_];
    goto LABEL_56;
  }

  if (sub_20D568768() < 2)
  {
    goto LABEL_36;
  }

LABEL_42:
  v74 = swift_initStackObject();
  *(v74 + 16) = xmmword_20D5C27F0;
  v75 = [v39 topAnchor];
  v76 = [v3 layoutMarginsGuide];
  v77 = [v76 topAnchor];

  v78 = [v75 constraintEqualToAnchor_];
  *(v74 + 32) = v78;
  v79 = [v39 topAnchor];
  v80 = [v3 topAnchor];
  v81 = [v79 constraintGreaterThanOrEqualToAnchor_];

  *(v74 + 40) = v81;
  sub_20CF6BECC(v74);
  sub_20CECF940(0, &unk_28111FB30);
  v82 = v132;
  LOBYTE(v79) = sub_20D5683F8();

  if ((v79 & 1) == 0)
  {
LABEL_45:
    v85 = [v39 trailingAnchor];
    v86 = [v3 layoutMarginsGuide];
    v87 = [v86 trailingAnchor];

    v88 = [v85 constraintEqualToAnchor_];
    goto LABEL_46;
  }

  v83 = sub_20D014F00();
  if (v83 >> 62)
  {
    v127 = sub_20D568768();

    if (!v127)
    {
      goto LABEL_92;
    }

    goto LABEL_45;
  }

  v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v84)
  {
    goto LABEL_45;
  }

LABEL_92:
  v85 = [v39 trailingAnchor];
  v128 = [v3 layoutMarginsGuide];
  v87 = [v128 trailingAnchor];

  v88 = [v85 constraintLessThanOrEqualToAnchor_];
LABEL_46:
  v89 = v88;

  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();
  v67 = &selRef_allActionGridEditorSectionIdentifiers;

  sub_20D5663C8();
  v90 = [v39 bottomAnchor];

  if (v134 >> 62)
  {
    v91 = sub_20D568768();
  }

  else
  {
    v91 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v92 = MEMORY[0x277D84F90];
  v131 = v39;
  if (v91)
  {
    v133 = MEMORY[0x277D84F90];
    if (v91 >= 1)
    {
      v129 = v90;
      if ((v134 & 0xC000000000000001) != 0)
      {
        v93 = MEMORY[0x20F31DD20](0, v134);
      }

      else
      {
        v93 = *(v134 + 32);
      }

      v96 = v93;
      v97 = [v93 topAnchor];
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_20D5BA040;
      *(v98 + 32) = [v97 constraintEqualToAnchor:v130 constant:a1];
      sub_20CF6BECC(v98);
      v99 = [v96 bottomAnchor];

      v100 = v91 - 1;
      if (v91 == 1)
      {
        v90 = v99;
      }

      else
      {
        v116 = 5;
        do
        {
          if ((v134 & 0xC000000000000001) != 0)
          {
            v117 = MEMORY[0x20F31DD20](v116 - 4, v134);
          }

          else
          {
            v117 = *(v134 + 8 * v116);
          }

          v118 = v117;
          v119 = [v117 topAnchor];
          v120 = swift_initStackObject();
          *(v120 + 16) = xmmword_20D5BA040;
          *(v120 + 32) = [v119 constraintEqualToAnchor:v99 constant:0.0];
          sub_20CF6BECC(v120);
          v90 = [v118 bottomAnchor];

          ++v116;
          v99 = v90;
          --v100;
        }

        while (v100);
      }

      v92 = v133;
      v67 = &selRef_allActionGridEditorSectionIdentifiers;
      goto LABEL_63;
    }

    __break(1u);
LABEL_90:
    v69 = sub_20D568768();
    goto LABEL_39;
  }

LABEL_63:
  sub_20D5663C8();
  v101 = v90;
  sub_20CF6BECC(v92);
  v102 = [v3 layoutMarginsGuide];
  v103 = [v102 bottomAnchor];

  v104 = [v101 constraintEqualToAnchor_];
  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
    v67 = &selRef_allActionGridEditorSectionIdentifiers;
  }

  sub_20D567B08();
  v105 = [v3 v67[424]];
  v106 = [v101 constraintLessThanOrEqualToAnchor_];

  MEMORY[0x20F31CEE0]();
  if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20D567AB8();
  }

  sub_20D567B08();

  if (v134 >> 62)
  {
    sub_20CECF940(0, &qword_28111FB70);
    sub_20D5663C8();
    v107 = sub_20D568A78();
  }

  else
  {
    sub_20D5663C8();
    sub_20D568C08();
    sub_20CECF940(0, &qword_28111FB70);
    v107 = v134;
  }

  v108 = [v3 layoutMarginsGuide];
  v109 = [v108 leadingAnchor];

  v110 = [v3 layoutMarginsGuide];
  v111 = [v110 trailingAnchor];

  v112 = v3;
  v113 = v109;
  v114 = v111;
  v115 = sub_20D01CCA0(v107, v112, v113, v114, 0.0, 0.0);

  sub_20CF6BECC(v115);

  return v135;
}

uint64_t sub_20D01B558(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v9 = sub_20D014F00();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_70;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v61 = v11 - 1;
  if (v11 >= 1)
  {
    v65 = MEMORY[0x277D84F90];
    sub_20CECF940(0, &qword_28111FB10);
    sub_20CECF940(0, &qword_28111FB70);
    v12 = 0;
    v13 = *&v6[OBJC_IVAR____TtC6HomeUI19TileCellContentView_activityIndicator];
    v63 = *&v6[OBJC_IVAR____TtC6HomeUI19TileCellContentView_descriptionLabel];
    v62 = v10 & 0xC000000000000001;
    v55 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_titleLabel;
    v56 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_prefixLabel;
    v58 = v10 & 0xFFFFFFFFFFFFFF8;
    v14 = (v10 + 32);
    v57 = v10;
    v59 = v13;
    v60 = v11;
    v53 = a1;
    v54 = v6;
    while (1)
    {
      if (v62)
      {
        v16 = MEMORY[0x20F31DD20](v12, v10);
      }

      else
      {
        if (v12 >= *(v58 + 16))
        {
          goto LABEL_68;
        }

        v16 = *v14;
      }

      v17 = v16;
      v18 = 8.0;
      if ((sub_20D5683F8() & 1) == 0)
      {
        if (sub_20D5683F8())
        {
          v18 = 4.0;
        }

        else
        {
          v18 = 0.0;
        }
      }

      v19 = v13;
      v20 = sub_20D5683F8();

      if ((v20 & 1) == 0)
      {
        v21 = [v17 heightAnchor];
        v22 = [v63 heightAnchor];
        v23 = [v21 constraintEqualToAnchor_];

        MEMORY[0x20F31CEE0]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
          v10 = v57;
        }

        sub_20D567B08();
      }

      v24 = [v17 centerYAnchor];
      v25 = [v63 centerYAnchor];
      v26 = [v24 constraintEqualToAnchor_];

      MEMORY[0x20F31CEE0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
        v10 = v57;
      }

      sub_20D567B08();
      if (v12)
      {
        if (v62)
        {
          v27 = MEMORY[0x20F31DD20](v12 - 1, v10);
          goto LABEL_28;
        }

        if (v12 > *(v58 + 16))
        {
          goto LABEL_69;
        }

        v28 = *(v14 - 1);
      }

      else
      {
        v28 = v63;
      }

      v27 = v28;
LABEL_28:
      v29 = v27;
      v30 = [v17 leadingAnchor];
      v31 = [v29 trailingAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:v18];

      MEMORY[0x20F31CEE0]();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20D567AB8();
        v10 = v57;
      }

      sub_20D567B08();
      if (v61 == v12)
      {
        v33 = a5;
        if (!a1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_20D5BECD0;
          v35 = *&v6[v56];
          *(inited + 32) = v35;
          v10 = *&v6[v55];
          v6 = v63;
          *(inited + 40) = v10;
          *(inited + 48) = v63;
          v64 = MEMORY[0x277D84F90];
          v36 = inited & 0xC000000000000001;
          a1 = inited & 0xFFFFFFFFFFFFFF8;
          v37 = v35;
          v38 = v10;
          v39 = v63;
          if ((inited & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x20F31DD20](0, inited);
          }

          else
          {
            if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_67;
            }

            v40 = v37;
          }

          v6 = v40;
          if ([v40 isHidden])
          {
          }

          else
          {
            sub_20D5688C8();
            v10 = *(v64 + 16);
            sub_20D568908();
            sub_20D568918();
            sub_20D5688D8();
          }

          if (v36)
          {
            v41 = MEMORY[0x20F31DD20](1, inited);
          }

          else
          {
            if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
            {
              goto LABEL_67;
            }

            v41 = *(inited + 40);
          }

          v6 = v41;
          if ([v41 isHidden])
          {
          }

          else
          {
            sub_20D5688C8();
            v10 = *(v64 + 16);
            sub_20D568908();
            sub_20D568918();
            sub_20D5688D8();
          }

          if (v36)
          {
            v42 = MEMORY[0x20F31DD20](2, inited);
          }

          else
          {
            if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
            {
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              v11 = sub_20D568768();
              goto LABEL_3;
            }

            v42 = *(inited + 48);
          }

          v43 = v42;
          a1 = v53;
          if ([v42 isHidden])
          {
          }

          else
          {
            sub_20D5688C8();
            sub_20D568908();
            sub_20D568918();
            sub_20D5688D8();
          }

          swift_setDeallocating();
          swift_arrayDestroy();
          v6 = v54;
          if (v64 < 0 || (v64 & 0x4000000000000000) != 0)
          {
            v44 = sub_20D568768();
          }

          else
          {
            v44 = *(v64 + 16);
          }

          v33 = a5;
          if (v44 > 2)
          {
            v45 = [v54 layer];
            [v45 cornerRadius];

            v46 = [v54 layer];
            [v46 cornerRadius];

            [v54 directionalLayoutMargins];
            UIRoundToViewScale();
            if (v47 <= 0.0)
            {
              v33 = v47;
            }

            else
            {
              v33 = 0.0;
            }
          }
        }

        v48 = [v17 trailingAnchor];
        v49 = [v6 layoutMarginsGuide];
        v50 = [v49 trailingAnchor];

        v51 = [v48 constraintLessThanOrEqualToAnchor:v50 constant:v33];
        MEMORY[0x20F31CEE0]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_20D567AB8();
        }

        sub_20D567B08();

        v15 = v65;
        v10 = v57;
      }

      else
      {
        v15 = v65;
      }

      ++v12;
      ++v14;
      v13 = v59;
      if (v60 == v12)
      {

        return v15;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_20D01BD84(unint64_t result)
{
  if (result >> 62)
  {
    v22 = result;
    v2 = sub_20D568768();
    result = v22;
    if (v2 != 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 != 3)
    {
LABEL_3:
      if (v2 != 2)
      {
        if (v2 != 1)
        {
          return MEMORY[0x277D84F90];
        }

        if ((result & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F31DD20](0, result);
          goto LABEL_8;
        }

        if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v3 = *(result + 32);
LABEL_8:
          v4 = v3;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_20D5BA040;
          v6 = [v4 centerYAnchor];
          v7 = [v1 layoutMarginsGuide];
          v8 = [v7 centerYAnchor];

          v9 = [v6 constraintEqualToAnchor_];
          *(v5 + 32) = v9;
LABEL_22:

          return v5;
        }

        goto LABEL_29;
      }

      if ((result & 0xC000000000000001) != 0)
      {
        v39 = result;
        v12 = MEMORY[0x20F31DD20](0, result);
        v13 = MEMORY[0x20F31DD20](1, v39);
        goto LABEL_13;
      }

      v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        if (v10 == 1)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v11 = *(result + 40);
        v12 = *(result + 32);
        v13 = v11;
LABEL_13:
        v4 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_20D5C27F0;
        v14 = [v12 bottomAnchor];
        v15 = [v1 layoutMarginsGuide];
        v16 = [v15 centerYAnchor];

        v17 = [v14 constraintEqualToAnchor_];
        *(v5 + 32) = v17;
        v18 = [v4 topAnchor];
        v19 = [v1 layoutMarginsGuide];
        v20 = [v19 centerYAnchor];

        v21 = [v18 constraintEqualToAnchor_];
        *(v5 + 40) = v21;

        goto LABEL_22;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v40 = result;
    v26 = MEMORY[0x20F31DD20](0, result);
    v27 = MEMORY[0x20F31DD20](1, v40);
    v28 = MEMORY[0x20F31DD20](2, v40);
    goto LABEL_21;
  }

  v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_28;
  }

  if (v23 == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v23 >= 3)
  {
    v24 = *(result + 40);
    v25 = *(result + 48);
    v26 = *(result + 32);
    v27 = v24;
    v28 = v25;
LABEL_21:
    v4 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_20D5BECD0;
    v29 = [v26 bottomAnchor];
    v30 = [v27 topAnchor];
    v31 = [v29 constraintEqualToAnchor_];

    *(v5 + 32) = v31;
    v32 = [v27 centerYAnchor];
    v33 = [v1 layoutMarginsGuide];
    v34 = [v33 centerYAnchor];

    v35 = [v32 constraintEqualToAnchor_];
    *(v5 + 40) = v35;
    v36 = [v4 topAnchor];
    v37 = [v27 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor_];

    *(v5 + 48) = v38;
    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_20D01C284(void **a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>, double a5@<D1>, double a6@<D3>)
{
  v9 = *a1;
  if (a2 >> 62)
  {
    v28 = a2;
    if (sub_20D568768() < 3 || (v10 = sub_20D568768(), a2 = v28, !v10))
    {
LABEL_18:
      sub_20CECF940(0, &qword_28111FB10);
      if (sub_20D5683F8())
      {
        v25 = sub_20D014F00();
        if (v25 >> 62)
        {
          v31 = sub_20D568768();

          if (v31)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v26)
          {
LABEL_21:
            v27 = &selRef_constraintLessThanOrEqualToAnchor_constant_;
LABEL_28:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
            v32 = swift_allocObject();
            *(v32 + 16) = xmmword_20D5C27F0;
            v33 = [v9 leadingAnchor];
            v34 = [*&a3[OBJC_IVAR____TtC6HomeUI19TileCellContentView_iconView] trailingAnchor];
            v35 = [v33 constraintEqualToAnchor:v34 constant:a5];

            *(v32 + 32) = v35;
            v36 = [v9 trailingAnchor];
            v37 = [a3 layoutMarginsGuide];
            v38 = [v37 trailingAnchor];

            v39 = [v36 *v27];
            *(v32 + 40) = v39;
            *a4 = v32;
            return;
          }
        }
      }

      v27 = &selRef_constraintEqualToAnchor_constant_;
      goto LABEL_28;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 <= 2)
    {
      goto LABEL_18;
    }
  }

  v40 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v29 = a2;
    v30 = v9;
    v11 = v29;
    v14 = MEMORY[0x20F31DD20](0, v29);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = a2;
    v12 = *(a2 + 32);
    v13 = v9;
    v14 = v12;
  }

  v15 = v14;
  sub_20CECF940(0, &unk_28111FB30);
  v16 = v9;
  v17 = sub_20D5683F8();

  if (v17)
  {

LABEL_15:
    v22 = [a3 layer];
    [v22 cornerRadius];

    v23 = [a3 layer];
    [v23 cornerRadius];

    [a3 directionalLayoutMargins];
    UIRoundToViewScale();
    if (v24 <= 0.0)
    {
      a6 = v24;
    }

    else
    {
      a6 = 0.0;
    }

    goto LABEL_18;
  }

  v18 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_30;
  }

  if (v40)
  {
    v19 = MEMORY[0x20F31DD20](v18, v11);
    goto LABEL_14;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  if (v18 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v11 + 8 * v18 + 32);
LABEL_14:
    v20 = v19;
    v21 = sub_20D5683F8();

    if ((v21 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_32:
  __break(1u);
}

unint64_t sub_20D01C690(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_20D568768();
    if (v19)
    {
      v20 = v19;
      v1 = sub_20CF51348(v19, 0);
      sub_20CF86418(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = MEMORY[0x277D84F90];
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_20D568768();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x20F31DD20]();
          v11 = MEMORY[0x20F31DD20](v2 - (v6 - 3), v1);
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_20CF3B84C(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_20CF3B84C(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_20D01C8A0(unint64_t isUniquelyReferenced_nonNull_bridgeObject, unint64_t a2, char *a3, double a4, double a5, double a6, double a7)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v10 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v10)
  {
    v11 = 0;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v38 = v10;
    v39 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v41)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F31DD20](v11, v36);
      }

      else
      {
        if (v11 >= *(v40 + 16))
        {
          goto LABEL_43;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v39 + 8 * v11);
      }

      v13 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = __OFADD__(v11++, 1);
      if (v14)
      {
        break;
      }

      v48 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_20D01C284(&v48, a2, a3, &v47, a5, a7);
      if (v7)
      {
        goto LABEL_41;
      }

      v15 = v47;
      v13 = (v47 >> 62);
      if (v47 >> 62)
      {
        v16 = sub_20D568768();
      }

      else
      {
        v16 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = v12 >> 62;
      if (v12 >> 62)
      {
        v33 = sub_20D568768();
        v19 = v33 + v16;
        if (__OFADD__(v33, v16))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v12;
        }
      }

      else
      {
        v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v19 = v18 + v16;
        if (__OFADD__(v18, v16))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v17)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_20D568768();
        goto LABEL_22;
      }

      if (v17)
      {
        goto LABEL_21;
      }

      v20 = v12 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v21 = v16;
        goto LABEL_23;
      }

LABEL_22:
      v21 = v16;
      isUniquelyReferenced_nonNull_bridgeObject = sub_20D568888();
      v12 = isUniquelyReferenced_nonNull_bridgeObject;
      v20 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v22 = *(v20 + 16);
      v23 = *(v20 + 24);
      if (v13)
      {
        v25 = v20;
        isUniquelyReferenced_nonNull_bridgeObject = sub_20D568768();
        v20 = v25;
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v21 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v24 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v24)
        {
          goto LABEL_4;
        }
      }

      if (((v23 >> 1) - v22) < v21)
      {
        goto LABEL_45;
      }

      v45 = v21;
      v44 = v12;
      v26 = v20 + 8 * v22 + 32;
      v37 = v20;
      if (v13)
      {
        if (v24 < 1)
        {
          goto LABEL_47;
        }

        sub_20D01CC3C();
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DB28);
          v28 = sub_20CEFDF58(v46, i, v15);
          v30 = *v29;
          (v28)(v46, 0);
          *(v26 + 8 * i) = v30;
        }
      }

      else
      {
        sub_20CECF940(0, &qword_28111FEC0);
        swift_arrayInitWithCopy();
      }

      v12 = v44;
      if (v45 >= 1)
      {
        v31 = *(v37 + 16);
        v14 = __OFADD__(v31, v45);
        v32 = v31 + v45;
        if (v14)
        {
          goto LABEL_46;
        }

        *(v37 + 16) = v32;
      }

LABEL_5:
      if (v11 == v38)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v10 = sub_20D568768();
    isUniquelyReferenced_nonNull_bridgeObject = v34;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_20D01CC3C()
{
  result = qword_27C81DB30;
  if (!qword_27C81DB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81DB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81DB30);
  }

  return result;
}

unint64_t sub_20D01CCA0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v42 = a4;
  v9 = a1;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v37 = OBJC_IVAR____TtC6HomeUI19TileCellContentView_configuration;
  swift_beginAccess();
  if (v10)
  {
    v11 = 0;
    v35 = v9 & 0xFFFFFFFFFFFFFF8;
    v36 = v9 & 0xC000000000000001;
    v12 = MEMORY[0x277D84F90];
    v33 = v10;
    v34 = v9;
    while (1)
    {
      if (v36)
      {
        v13 = MEMORY[0x20F31DD20](v11, v9);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_44;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v9 = v13;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v10 = sub_20D568768();
        goto LABEL_3;
      }

      sub_20CECF7A0(a2 + v37, v41);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C7B0);
      if (swift_dynamicCast())
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_20CECF940(0, &qword_28111FB10);
        if (sub_20D5683F8())
        {
          sub_20CEFFA00(__dst);
          if (__dst[49])
          {
            goto LABEL_20;
          }
        }

        else if (sub_20D5683F8())
        {
          sub_20CEFFA00(__dst);
          if (__dst[193])
          {
            goto LABEL_20;
          }
        }

        else
        {
          v15 = sub_20D5683F8();
          sub_20CEFFA00(__dst);
          if (v15 & 1) != 0 && (__dst[121])
          {
LABEL_20:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
            v16 = swift_allocObject();
            *(v16 + 16) = xmmword_20D5C27F0;
            v17 = [v9 leadingAnchor];
            v18 = [v17 constraintEqualToAnchor:a3 constant:a5];

            *(v16 + 32) = v18;
            v19 = [v9 trailingAnchor];
            v20 = [v19 constraintEqualToAnchor:v42 constant:a6];
            goto LABEL_22;
          }
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_20D5C27F0;
      v21 = [v9 leadingAnchor];
      v22 = [v21 constraintEqualToAnchor:a3 constant:a5];

      *(v16 + 32) = v22;
      v19 = [v9 trailingAnchor];
      v20 = [v19 constraintLessThanOrEqualToAnchor:v42 constant:a6];
LABEL_22:
      v23 = v20;

      *(v16 + 40) = v23;
      v9 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v24 = v12 >> 62;
      if (v12 >> 62)
      {
        v31 = sub_20D568768();
        v26 = v31 + v9;
        if (__OFADD__(v31, v9))
        {
LABEL_40:
          __break(1u);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v25 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v26 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v24)
        {
          goto LABEL_31;
        }

        v27 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v26 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          if (!v9)
          {
            goto LABEL_5;
          }

          goto LABEL_33;
        }
      }

      else if (v24)
      {
LABEL_31:
        sub_20D568768();
      }

      v12 = sub_20D568888();
      v27 = v12 & 0xFFFFFFFFFFFFFF8;
      if (!v9)
      {
LABEL_5:

        goto LABEL_6;
      }

LABEL_33:
      if ((*(v27 + 24) >> 1) - *(v27 + 16) < v9)
      {
        goto LABEL_45;
      }

      sub_20CECF940(0, &qword_28111FEC0);
      swift_arrayInitWithCopy();

      if (v9 >= 1)
      {
        v28 = *(v27 + 16);
        v29 = __OFADD__(v28, v9);
        v30 = v28 + v9;
        if (v29)
        {
          goto LABEL_46;
        }

        *(v27 + 16) = v30;
      }

LABEL_6:
      ++v11;
      v9 = v34;
      if (v14 == v33)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20D01D180(uint64_t a1, void *a2, void *a3)
{
  v148 = a3;
  v145 = a1;
  v4 = sub_20D564098();
  v143 = *(v4 - 8);
  v144 = v4;
  MEMORY[0x28223BE20](v4);
  v142 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_20D564F18();
  v127 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v123 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v117 - v8;
  v126 = sub_20D5656C8();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v133 = &v117 - v11;
  v129 = sub_20D565988();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v135 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F520);
  MEMORY[0x28223BE20](v13 - 8);
  v131 = &v117 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F528);
  MEMORY[0x28223BE20](v15 - 8);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v136 = (&v117 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F530);
  MEMORY[0x28223BE20](v19 - 8);
  v137 = &v117 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F538);
  MEMORY[0x28223BE20](v21 - 8);
  v121 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v139 = (&v117 - v24);
  v25 = sub_20D565688();
  v26 = *(v25 - 8);
  v146 = v25;
  v147 = v26;
  MEMORY[0x28223BE20](v25);
  v124 = &v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v132 = &v117 - v29;
  MEMORY[0x28223BE20](v30);
  v140 = &v117 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F7B0);
  MEMORY[0x28223BE20](v32 - 8);
  v138 = (&v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = &v117 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F540);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v117 - v38;
  v40 = sub_20D5646E8();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v117 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20D564838();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = &v117 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a2;
  sub_20D564EE8();
  sub_20D5646D8();
  (*(v41 + 8))(v43, v40);
  v49 = v44;
  v50 = v45;
  if ((*(v45 + 48))(v39, 1, v49) == 1)
  {
    return sub_20CEF928C(v39, &qword_27C81F540);
  }

  v52 = (*(v45 + 32))(v47, v39, v49);
  MEMORY[0x20F31A3A0](v52);
  v53 = sub_20D564508();
  v54 = *(v53 - 8);
  v55 = 1;
  v56 = (*(v54 + 48))(v36, 1, v53);
  v119 = v47;
  v57 = v48;
  if (v56 == 1)
  {
    v118 = 0;
    v138 = 0;
    v58 = v147;
  }

  else
  {
    v59 = v138;
    sub_20CEF9178(v36, v138, &qword_27C81F7B0);
    v60 = (*(v54 + 88))(v59, v53);
    v58 = v147;
    if (v60 == *MEMORY[0x277D15EE0])
    {
      v55 = 0;
      v138 = &off_2823D5450;
      v118 = &_s19RVCActionDeviceTypeVN;
    }

    else
    {
      (*(v54 + 8))(v59, v53);
      v118 = 0;
      v138 = 0;
    }
  }

  sub_20CEF928C(v36, &qword_27C81F7B0);
  v61 = v140;
  sub_20D565698();
  v62 = *(v58 + 88);
  v63 = v146;
  v64 = v62(v61, v146);
  v65 = *MEMORY[0x277D14FD0];
  if (v64 == *MEMORY[0x277D14FD0])
  {
    (*(v58 + 96))(v61, v63);
    v66 = v139;
    sub_20CF15584(v61, v139, &qword_27C81F538);
    if ((v55 & 1) == 0)
    {
      (v138[1])(v66, v57, v148);
    }

    sub_20CEF928C(v66, &qword_27C81F538);
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F550) + 48);
    v70 = sub_20D565138();
  }

  else
  {
    v67 = v148;
    if (v64 == *MEMORY[0x277D14FB8])
    {
      (*(v147 + 96))(v61, v146);
      v68 = v137;
      sub_20CF15584(v61, v137, &qword_27C81F530);
      if ((v55 & 1) == 0)
      {
        (v138[2])(v68, v57, v67);
      }

      sub_20CEF928C(v68, &qword_27C81F530);
      v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F560) + 48);
      v70 = sub_20D5651E8();
    }

    else
    {
      v139 = v57;
      v71 = *MEMORY[0x277D14FD8];
      if (v64 == *MEMORY[0x277D14FD8])
      {
        (*(v147 + 96))(v61, v146);
        v72 = v136;
        sub_20CF15584(v61, v136, &qword_27C81F528);
        if ((v55 & 1) == 0)
        {
          (v138[3])(v72, v139, v67);
        }

        sub_20CEF928C(v72, &qword_27C81F528);
        v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F548) + 48);
        v70 = sub_20D565168();
      }

      else
      {
        if (v64 != *MEMORY[0x277D14FC0])
        {
          v137 = v49;
          if (v64 != *MEMORY[0x277D14FA8])
          {
            sub_20D565928();
            v90 = v125;
            v91 = *(v125 + 16);
            v92 = v126;
            v91(v133, v145, v126);
            v93 = v127;
            v94 = v139;
            v95 = v130;
            v139 = *(v127 + 16);
            (v139)(v134, v94, v130);
            v96 = sub_20D565968();
            LODWORD(v145) = sub_20D567EA8();
            if (os_log_type_enabled(v96, v145))
            {
              v97 = swift_slowAlloc();
              v136 = v96;
              v98 = v97;
              v132 = v97;
              v138 = swift_slowAlloc();
              v149 = v138;
              *v98 = 136446466;
              v99 = v133;
              v91(v122, v133, v92);
              v100 = sub_20D567868();
              v102 = v101;
              (*(v90 + 8))(v99, v92);
              v103 = sub_20CEE913C(v100, v102, &v149);

              v104 = v132;
              *(v132 + 4) = v103;
              *(v104 + 6) = 2082;
              v105 = v134;
              v106 = v130;
              (v139)(v123, v134, v130);
              v107 = sub_20D567868();
              v109 = v108;
              (*(v93 + 8))(v105, v106);
              v110 = sub_20CEE913C(v107, v109, &v149);

              *(v104 + 14) = v110;
              v111 = v136;
              _os_log_impl(&dword_20CEB6000, v136, v145, "Unknown control kind when trying to set new value. control: %{public}s source: %{public}s", v104, 0x16u);
              v112 = v138;
              swift_arrayDestroy();
              MEMORY[0x20F31FC70](v112, -1, -1);
              MEMORY[0x20F31FC70](v104, -1, -1);
            }

            else
            {

              (*(v93 + 8))(v134, v95);
              (*(v90 + 8))(v133, v92);
            }

            (*(v128 + 8))(v135, v129);
            v49 = v137;
            (*(v147 + 8))(v61, v146);
            goto LABEL_33;
          }

          v145 = v50;
          v74 = v146;
          v75 = v147;
          v135 = *(v147 + 96);
          v136 = (v147 + 96);
          (v135)(v61, v146);
          v140 = *v61;
          v76 = swift_projectBox();
          v77 = *(v75 + 16);
          v78 = v132;
          v77(v132, v76, v74);
          v79 = v124;
          v77(v124, v78, v74);
          v80 = v74;
          v81 = v79;
          v82 = v62(v79, v80);
          if (v82 == v65)
          {
            (v135)(v79, v80);
            v83 = v121;
            sub_20CF15584(v79, v121, &qword_27C81F538);
            v50 = v145;
            if ((v55 & 1) == 0)
            {
              (v138[1])(v83, v139, v148);
            }

            sub_20CEF928C(v83, &qword_27C81F538);
            (*(v147 + 8))(v132, v80);
            v49 = v137;
            v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F550) + 48);
            v115 = sub_20D565138();
          }

          else
          {
            v50 = v145;
            if (v82 != v71)
            {
              v116 = *(v147 + 8);
              v116(v132, v80);
              v116(v79, v80);

              v49 = v137;
              goto LABEL_33;
            }

            (v135)(v79, v80);
            v113 = v120;
            sub_20CF15584(v79, v120, &qword_27C81F528);
            if ((v55 & 1) == 0)
            {
              (v138[3])(v113, v139, v148);
            }

            sub_20CEF928C(v113, &qword_27C81F528);
            (*(v147 + 8))(v132, v80);
            v49 = v137;
            v114 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F548) + 48);
            v115 = sub_20D565168();
          }

          (*(*(v115 - 8) + 8))(v81 + v114, v115);

          goto LABEL_33;
        }

        (*(v147 + 96))(v61, v146);
        v73 = v131;
        sub_20CF15584(v61, v131, &qword_27C81F520);
        if ((v55 & 1) == 0)
        {
          (v138[4])(v73, v139, v67);
        }

        sub_20CEF928C(v73, &qword_27C81F520);
        v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F558) + 48);
        v70 = sub_20D5652F8();
      }
    }
  }

  (*(*(v70 - 8) + 8))(&v61[v69], v70);
LABEL_33:
  v84 = v141[5];
  v85 = v141[6];
  __swift_project_boxed_opaque_existential_1(v141 + 2, v84);
  v86 = sub_20D567A98();

  v87 = v142;
  v88 = v119;
  sub_20D564798();
  v89 = sub_20D564068();
  (*(v143 + 8))(v87, v144);
  sub_20D01E4F4(v86, v148, v89, v84, v85);

  return (*(v50 + 8))(v88, v49);
}

void sub_20D01E4F4(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v23[3] = a5;
  v23[1] = a4;
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F510);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v23 - v7;
  v27 = sub_20D563FC8();
  MEMORY[0x28223BE20](v27);
  v26 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + 32;
    v25 = (v9 + 8);
    v24 = MEMORY[0x277D84F90];
    do
    {
      sub_20CECF7A0(v12, v30);
      __swift_project_boxed_opaque_existential_1(v30, v31);
      if ((sub_20D5640F8() & 0x100000000) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v30, v31);
        v13 = v26;
        sub_20D5640D8();
        sub_20D563FB8();
        (*v25)(v13, v27);
        __swift_project_boxed_opaque_existential_1(v30, v31);
        sub_20D5640E8();
        v14 = sub_20D564688();
        v15 = *(v14 - 8);
        if ((*(v15 + 48))(v8, 1, v14) == 1)
        {
          sub_20CEF928C(v8, &qword_27C81F510);
        }

        else
        {
          sub_20D564678();
          (*(v15 + 8))(v8, v14);
        }

        sub_20CECF940(0, &qword_27C81F518);
        __swift_project_boxed_opaque_existential_1(v30, v31);
        sub_20D564108();
        v16 = v29;
        v17 = sub_20D567F08();
        if (v17)
        {
          v18 = v17;
          MEMORY[0x20F31CEE0]();
          if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_20D567AB8();
          }

          sub_20D567B08();

          v24 = v32;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v30);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v19 = sub_20D565B78();
  v20 = objc_allocWithZone(MEMORY[0x277D147C8]);
  sub_20CECF940(0, &qword_27C81F518);
  v21 = sub_20D567A58();
  v22 = [v20 initWithHome:v19 commands:v21 accessory:v29 enforceExecutionOrder:1];

  sub_20D565B68();
}

uint64_t sub_20D01E914@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v5 = sub_20D565988();
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_20D564838();
  v7 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v58 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - v10;
  v12 = sub_20D5647E8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F568);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  v19 = sub_20D564808();
  v63 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_20D564778())
  {
    a3[3] = v19;
    a3[4] = sub_20D023CC8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    v23 = *MEMORY[0x277D168B0];
    v24 = *(v63 + 104);

    return v24(boxed_opaque_existential_1, v23, v19);
  }

  else
  {
    v56 = a3;
    v26 = *MEMORY[0x277D168E8];
    v27 = sub_20D5647D8();
    (*(*(v27 - 8) + 104))(v15, v26, v27);
    (*(v13 + 104))(v15, *MEMORY[0x277D16940], v12);
    v28 = *(v7 + 16);
    v28(v11, a1, v62);
    sub_20D5647C8();
    if ((*(v63 + 48))(v18, 1, v19) == 1)
    {
      sub_20CEF928C(v18, &qword_27C81F568);
      v29 = v61;
      sub_20D565928();
      v30 = v58;
      v28(v58, a1, v62);
      v31 = v57;
      v32 = sub_20D565968();
      v33 = sub_20D567EA8();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v55 = v33;
        v35 = v34;
        v57 = swift_slowAlloc();
        v64 = v31;
        v65 = v57;
        *v35 = 136315394;
        sub_20CECF940(0, &qword_28111FFF0);
        v36 = v31;
        v37 = sub_20D567868();
        v39 = sub_20CEE913C(v37, v38, &v65);

        *(v35 + 4) = v39;
        *(v35 + 12) = 2080;
        v40 = v30;
        v54 = v32;
        v41 = v30;
        v42 = v62;
        v28(v11, v40, v62);
        v43 = sub_20D567868();
        v45 = v44;
        (*(v7 + 8))(v41, v42);
        v46 = sub_20CEE913C(v43, v45, &v65);

        *(v35 + 14) = v46;
        v47 = v54;
        _os_log_impl(&dword_20CEB6000, v54, v55, "Failed to determine running mode for: %s %s", v35, 0x16u);
        v48 = v57;
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v48, -1, -1);
        MEMORY[0x20F31FC70](v35, -1, -1);

        (*(v59 + 8))(v61, v60);
      }

      else
      {

        (*(v7 + 8))(v30, v62);
        (*(v59 + 8))(v29, v60);
      }

      v52 = v56;
      v56[3] = v19;
      v52[4] = sub_20D023CC8();
      v53 = __swift_allocate_boxed_opaque_existential_1(v52);
      return (*(v63 + 104))(v53, *MEMORY[0x277D168D8], v19);
    }

    else
    {
      v49 = *(v63 + 32);
      v63 += 32;
      v49(v21, v18, v19);
      v50 = v56;
      v56[3] = v19;
      v50[4] = sub_20D023CC8();
      v51 = __swift_allocate_boxed_opaque_existential_1(v50);
      return (v49)(v51, v21, v19);
    }
  }
}

uint64_t sub_20D01EFC4(uint64_t a1, void *a2, uint64_t a3)
{
  v83 = a2;
  v84 = a3;
  v4 = sub_20D565988();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v70 - v8;
  v81 = sub_20D564838();
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_20D5647E8();
  v75 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F568);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v70 - v15;
  v82 = sub_20D564808();
  v79 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v72 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v77 = &v70 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F538);
  MEMORY[0x28223BE20](v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v70 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - v27;
  sub_20CEF9178(a1, &v70 - v27, &qword_27C81F538);
  v29 = sub_20D5650B8();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_20CEF928C(v28, &qword_27C81F538);
    sub_20D565928();
    sub_20CEF9178(a1, v25, &qword_27C81F538);
    v31 = sub_20D565968();
    v32 = sub_20D567EA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v88[0] = v34;
      *v33 = 136446210;
      sub_20CEF9178(v25, v22, &qword_27C81F538);
      v35 = sub_20D567868();
      v37 = v36;
      sub_20CEF928C(v25, &qword_27C81F538);
      v38 = sub_20CEE913C(v35, v37, v88);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_20CEB6000, v31, v32, "While trying to set Binary state, couldn't unwrap: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x20F31FC70](v34, -1, -1);
      MEMORY[0x20F31FC70](v33, -1, -1);
    }

    else
    {

      sub_20CEF928C(v25, &qword_27C81F538);
    }

    (*(v85 + 8))(v6, v86);
    return 0;
  }

  v39 = sub_20D5650A8();
  (*(v30 + 8))(v28, v29);
  if (v39)
  {
    v40 = *MEMORY[0x277D168F8];
    v41 = sub_20D5647D8();
    (*(*(v41 - 8) + 104))(v11, v40, v41);
    v42 = *MEMORY[0x277D16940];
    v75 = *(v75 + 104);
    (v75)(v11, v42, v80);
    v43 = v76;
    v44 = v84;
    v78 = *(v78 + 16);
    (v78)(v76, v84, v81);
    sub_20D5647C8();
    v45 = v79;
    v46 = v82;
    v71 = *(v79 + 48);
    if (v71(v16, 1, v82) == 1)
    {
LABEL_8:
      sub_20CEF928C(v16, &qword_27C81F568);
      v51 = v74;
      sub_20D565928();
      v52 = v83;
      v53 = sub_20D565968();
      v54 = sub_20D567EA8();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v87 = v52;
        *&v88[0] = v56;
        *v55 = 136315138;
        sub_20CECF940(0, &qword_28111FFF0);
        v57 = v52;
        v58 = sub_20D567868();
        v60 = sub_20CEE913C(v58, v59, v88);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_20CEB6000, v53, v54, "Failed to determine running mode for: %s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x20F31FC70](v56, -1, -1);
        MEMORY[0x20F31FC70](v55, -1, -1);
      }

      (*(v85 + 8))(v51, v86);
      return 0;
    }

    v70 = *(v45 + 32);
    v70(v77, v16, v46);
    v47 = *MEMORY[0x277D169C0];
    v48 = sub_20D5647F8();
    v49 = v47;
    v50 = v82;
    (*(*(v48 - 8) + 104))(v11, v49, v48);
    (v75)(v11, *MEMORY[0x277D16950], v80);
    (v78)(v43, v44, v81);
    v16 = v73;
    sub_20D5647C8();
    if (v71(v16, 1, v50) == 1)
    {
      (*(v45 + 8))(v77, v50);
      goto LABEL_8;
    }

    v63 = v72;
    v64 = v70;
    v70(v72, v16, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C050);
    v65 = v50;
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_20D5BC4B0;
    *(v62 + 56) = v65;
    v66 = sub_20D023CC8();
    *(v62 + 64) = v66;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v62 + 32));
    v68 = v77;
    (*(v45 + 16))(boxed_opaque_existential_1, v77, v65);
    *(v62 + 96) = v65;
    *(v62 + 104) = v66;
    v69 = __swift_allocate_boxed_opaque_existential_1((v62 + 72));
    v64(v69, v63, v65);
    (*(v45 + 8))(v68, v65);
  }

  else
  {
    sub_20D01E914(v84, v83, v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C050);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_20D5BC410;
    sub_20CF02B6C(v88, v62 + 32);
  }

  return v62;
}

uint64_t sub_20D01F9A8(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = a1;
  v48 = a3;
  v4 = sub_20D564F18();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v49 = &v42[-v7];
  v8 = sub_20D565988();
  v52 = *(v8 - 8);
  v53 = v8;
  MEMORY[0x28223BE20](v8);
  v54 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20D564EB8();
  v11 = *(v10 - 8);
  v55 = v10;
  v56 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F540);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42[-v15];
  v17 = sub_20D5646E8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v42[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_20D564838();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v42[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20D564EE8();
  sub_20D5646D8();
  (*(v18 + 8))(v20, v17);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_20CEF928C(v16, &qword_27C81F540);
  }

  else
  {
    (*(v22 + 32))(v24, v16, v21);
    sub_20D564F08();
    v25 = v55;
    if ((*(v56 + 88))(v13, v55) == *MEMORY[0x277D14E50])
    {
      v26 = sub_20D01EFC4(v47, v48, v24);
      (*(v22 + 8))(v24, v21);
      return v26;
    }

    v44 = v22;
    v45 = v21;
    v47 = v24;
    v48 = v13;
    v28 = v54;
    sub_20D565928();
    v30 = v49;
    v29 = v50;
    v31 = *(v50 + 16);
    v32 = v51;
    v31(v49, a2, v51);
    v33 = sub_20D565968();
    v34 = sub_20D567EA8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v43 = v34;
      v36 = v35;
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136446210;
      v31(v46, v30, v32);
      v38 = sub_20D567868();
      v40 = v39;
      (*(v29 + 8))(v30, v32);
      v41 = sub_20CEE913C(v38, v40, &v57);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_20CEB6000, v33, v43, "Trying to set Binary state got an unexpected control type: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F31FC70](v37, -1, -1);
      MEMORY[0x20F31FC70](v36, -1, -1);

      (*(v52 + 8))(v54, v53);
    }

    else
    {

      (*(v29 + 8))(v30, v32);
      (*(v52 + 8))(v28, v53);
    }

    (*(v44 + 8))(v47, v45);
    (*(v56 + 8))(v48, v25);
  }

  return 0;
}

uint64_t sub_20D01FF90(unint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v157 = a2;
  v159 = a1;
  v2 = sub_20D565988();
  v155 = *(v2 - 8);
  v156 = v2;
  MEMORY[0x28223BE20](v2);
  v153 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v143 = &v121 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F568);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v121 - v9;
  v10 = sub_20D564808();
  v139 = *(v10 - 8);
  v140 = v10;
  MEMORY[0x28223BE20](v10);
  v129 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v121 - v13;
  v14 = sub_20D5647E8();
  v151 = *(v14 - 8);
  v152 = v14;
  MEMORY[0x28223BE20](v14);
  v146 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v149 = &v121 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5A8);
  MEMORY[0x28223BE20](v18 - 8);
  v128 = &v121 - v19;
  v127 = sub_20D564828();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_20D563FC8();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v130 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5B0);
  MEMORY[0x28223BE20](v22 - 8);
  v132 = &v121 - v23;
  v136 = sub_20D564858();
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5B8);
  MEMORY[0x28223BE20](v25 - 8);
  v138 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v142 = &v121 - v28;
  v148 = sub_20D564EB8();
  v150 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F570);
  MEMORY[0x28223BE20](v31 - 8);
  v144 = &v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v124 = (&v121 - v34);
  MEMORY[0x28223BE20](v35);
  v158 = &v121 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F540);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = &v121 - v38;
  v40 = sub_20D5646E8();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v121 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20D564838();
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v145 = &v121 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v154 = &v121 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F528);
  MEMORY[0x28223BE20](v49 - 8);
  v51 = &v121 - v50;
  sub_20CEF9178(v159, &v121 - v50, &qword_27C81F528);
  v52 = sub_20D5650D8();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_20CEF928C(v51, &qword_27C81F528);
    v54 = v153;
    sub_20D565928();
    v55 = sub_20D565968();
    v56 = sub_20D567EA8();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_20CEB6000, v55, v56, "No option selected for picker", v57, 2u);
      MEMORY[0x20F31FC70](v57, -1, -1);
    }

    (*(v155 + 8))(v54, v156);
    return 0;
  }

  v159 = sub_20D5650C8();
  (*(v53 + 8))(v51, v52);
  sub_20D564EE8();
  sub_20D5646D8();
  (*(v41 + 8))(v43, v40);
  if ((*(v45 + 48))(v39, 1, v44) != 1)
  {
    (*(v45 + 32))(v154, v39, v44);
    v59 = v151;
    v58 = v152;
    v60 = *(v151 + 56);
    v60(v158, 1, 1, v152);
    sub_20D564F08();
    v61 = v148;
    result = (*(v150 + 88))(v30, v148);
    v63 = result == *MEMORY[0x277D14E58];
    v122 = v45;
    v123 = v44;
    if (!v63)
    {
      if (result == *MEMORY[0x277D14E60])
      {
        if ((v159 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v157 = v60;
          v74 = v136;
          v75 = v135;
          if (!(v159 >> 16))
          {
            (*(v131 + 104))(v130, *MEMORY[0x277D15538], v133);
            v76 = v132;
            sub_20D564848();
            v77 = v134;
            v78 = v74;
            if ((*(v134 + 48))(v76, 1, v74) == 1)
            {
              sub_20CEF928C(v76, &qword_27C81F5B0);
            }

            else
            {
              (*(v77 + 32))(v75, v76, v74);
              v79 = v128;
              v80 = v75;
              sub_20D5647A8();
              v81 = v126;
              v82 = v127;
              if ((*(v126 + 48))(v79, 1, v127) == 1)
              {
                (*(v77 + 8))(v80, v78);
                sub_20CEF928C(v79, &qword_27C81F5A8);
              }

              else
              {
                v113 = v78;
                v114 = v125;
                (*(v81 + 32))(v125, v79, v82);
                v115 = v81;
                v116 = sub_20D564818();
                (*(v115 + 8))(v114, v82);
                (*(v77 + 8))(v80, v113);
                v117 = v158;
                sub_20CEF928C(v158, &qword_27C81F570);
                v118 = v124;
                *v124 = v116;
                *(v118 + 8) = 0;
                v119 = *MEMORY[0x277D16990];
                v120 = sub_20D5647F8();
                (*(*(v120 - 8) + 104))(v118, v119, v120);
                (*(v59 + 104))(v118, *MEMORY[0x277D16950], v58);
                v157(v118, 0, 1, v58);
                sub_20CF15584(v118, v117, &qword_27C81F570);
              }
            }

            goto LABEL_18;
          }
        }

        __break(1u);
        return result;
      }

      (*(v150 + 8))(v30, v61);
LABEL_18:
      v68 = v146;
LABEL_28:
      v85 = v144;
      v86 = v145;
      sub_20CEF9178(v158, v144, &qword_27C81F570);
      v87 = (*(v59 + 48))(v85, 1, v58);
      v88 = v149;
      v89 = v147;
      if (v87 == 1)
      {
        sub_20CEF928C(v85, &qword_27C81F570);
        v90 = v143;
        v91 = v122;
        v92 = v154;
        v93 = v123;
      }

      else
      {
        (*(v59 + 32))(v149, v85, v58);
        (*(v59 + 16))(v68, v88, v58);
        v94 = *(v122 + 16);
        v94(v86, v154, v123);
        sub_20D5647C8();
        v96 = v139;
        v95 = v140;
        v97 = *(v139 + 48);
        if (v97(v89, 1, v140) == 1)
        {
          (*(v151 + 8))(v88, v152);
          v98 = v89;
        }

        else
        {
          v159 = *(v96 + 32);
          (v159)(v141, v89, v95);
          v99 = v95;
          v100 = *MEMORY[0x277D168F8];
          v101 = sub_20D5647D8();
          (*(*(v101 - 8) + 104))(v68, v100, v101);
          (*(v151 + 104))(v68, *MEMORY[0x277D16940], v152);
          v94(v86, v154, v123);
          v102 = v137;
          sub_20D5647C8();
          if (v97(v102, 1, v99) != 1)
          {
            v106 = v129;
            v107 = v159;
            (v159)(v129, v102, v99);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C050);
            v108 = swift_allocObject();
            *(v108 + 16) = xmmword_20D5BC4B0;
            *(v108 + 56) = v99;
            v109 = sub_20D023CC8();
            *(v108 + 64) = v109;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v108 + 32));
            v111 = v141;
            (*(v96 + 16))(boxed_opaque_existential_1, v141, v99);
            *(v108 + 96) = v99;
            *(v108 + 104) = v109;
            v112 = __swift_allocate_boxed_opaque_existential_1((v108 + 72));
            v107(v112, v106, v99);
            (*(v96 + 8))(v111, v99);
            (*(v151 + 8))(v149, v152);
            sub_20CEF928C(v158, &qword_27C81F570);
            (*(v122 + 8))(v154, v123);
            return v108;
          }

          (*(v96 + 8))(v141, v99);
          (*(v151 + 8))(v149, v152);
          v98 = v102;
        }

        sub_20CEF928C(v98, &qword_27C81F568);
        v90 = v143;
        v93 = v123;
        v91 = v122;
        v92 = v154;
      }

      sub_20D565928();
      v103 = sub_20D565968();
      v104 = sub_20D567EA8();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&dword_20CEB6000, v103, v104, "Selected option did not match any cleaning mode", v105, 2u);
        MEMORY[0x20F31FC70](v105, -1, -1);
      }

      (*(v155 + 8))(v90, v156);
      sub_20CEF928C(v158, &qword_27C81F570);
      (*(v91 + 8))(v92, v93);
      return 0;
    }

    v64 = v142;
    sub_20D565448();
    v65 = sub_20D565458();
    v66 = *(v65 - 8);
    v67 = (*(v66 + 48))(v64, 1, v65);
    v68 = v146;
    if (v67 == 1)
    {
LABEL_27:
      sub_20CEF928C(v64, &qword_27C81F5B8);
      goto LABEL_28;
    }

    v69 = v64;
    v70 = v138;
    sub_20CEF9178(v69, v138, &qword_27C81F5B8);
    v71 = (*(v66 + 88))(v70, v65);
    if (v71 == *MEMORY[0x277D14F30])
    {
      v72 = v158;
      sub_20CEF928C(v158, &qword_27C81F570);
      v73 = MEMORY[0x277D169C0];
    }

    else if (v71 == *MEMORY[0x277D14F38])
    {
      v72 = v158;
      sub_20CEF928C(v158, &qword_27C81F570);
      v73 = MEMORY[0x277D169A0];
    }

    else
    {
      if (v71 != *MEMORY[0x277D14F40])
      {
        (*(v66 + 8))(v70, v65);
        goto LABEL_26;
      }

      v72 = v158;
      sub_20CEF928C(v158, &qword_27C81F570);
      v73 = MEMORY[0x277D169B8];
    }

    v83 = *v73;
    v84 = sub_20D5647F8();
    (*(*(v84 - 8) + 104))(v72, v83, v84);
    (*(v59 + 104))(v72, *MEMORY[0x277D16950], v58);
    v60(v72, 0, 1, v58);
LABEL_26:
    v64 = v142;
    goto LABEL_27;
  }

  sub_20CEF928C(v39, &qword_27C81F540);
  return 0;
}

uint64_t sub_20D0213B8(uint64_t a1, NSObject *a2)
{
  v341 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F568);
  MEMORY[0x28223BE20](v3 - 8);
  v295 = &v260 - v4;
  v294 = sub_20D564808();
  v289 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v285 = &v260 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_20D5647E8();
  v300 = *(v299 - 8);
  MEMORY[0x28223BE20](v299);
  v288 = &v260 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v301 = &v260 - v8;
  v304 = sub_20D563FE8();
  v283 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v303 = &v260 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F570);
  MEMORY[0x28223BE20](v10 - 8);
  v297 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v298 = (&v260 - v13);
  v315 = sub_20D565988();
  v314 = *(v315 - 8);
  MEMORY[0x28223BE20](v315);
  v340 = &v260 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v284 = &v260 - v16;
  MEMORY[0x28223BE20](v17);
  v279 = &v260 - v18;
  v313 = sub_20D5652E8();
  v316 = *(v313 - 8);
  MEMORY[0x28223BE20](v313);
  v292 = &v260 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v291 = &v260 - v21;
  MEMORY[0x28223BE20](v22);
  v311 = &v260 - v23;
  MEMORY[0x28223BE20](v24);
  v310 = &v260 - v25;
  v343 = sub_20D5652D8();
  v321 = *(v343 - 8);
  MEMORY[0x28223BE20](v343);
  v280 = &v260 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v342 = (&v260 - v28);
  v345 = sub_20D5651F8();
  v331 = *(v345 - 1);
  MEMORY[0x28223BE20](v345);
  v282 = &v260 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v293 = &v260 - v31;
  MEMORY[0x28223BE20](v32);
  v333 = &v260 - v33;
  MEMORY[0x28223BE20](v34);
  v290 = &v260 - v35;
  MEMORY[0x28223BE20](v36);
  v336 = &v260 - v37;
  MEMORY[0x28223BE20](v38);
  v329 = &v260 - v39;
  v337 = sub_20D5652C8();
  v330 = *(v337 - 8);
  MEMORY[0x28223BE20](v337);
  v281 = &v260 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v334 = &v260 - v42;
  MEMORY[0x28223BE20](v43);
  v344 = &v260 - v44;
  MEMORY[0x28223BE20](v45);
  v328 = &v260 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F578);
  MEMORY[0x28223BE20](v47 - 8);
  v332 = &v260 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v335 = &v260 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F580);
  MEMORY[0x28223BE20](v51 - 8);
  v286 = &v260 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v296 = &v260 - v54;
  MEMORY[0x28223BE20](v55);
  v302 = &v260 - v56;
  MEMORY[0x28223BE20](v57);
  v312 = &v260 - v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F588);
  MEMORY[0x28223BE20](v59 - 8);
  v338 = (&v260 - v60);
  v307 = sub_20D564008();
  v308 = *(v307 - 8);
  MEMORY[0x28223BE20](v307);
  v305 = &v260 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F540);
  MEMORY[0x28223BE20](v62 - 8);
  v64 = &v260 - v63;
  v339 = sub_20D5646E8();
  v65 = *(v339 - 1);
  MEMORY[0x28223BE20](v339);
  v67 = &v260 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_20D564838();
  v317 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v287 = &v260 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v306 = &v260 - v71;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F520);
  MEMORY[0x28223BE20](v327);
  v73 = &v260 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v76 = &v260 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = &v260 - v78;
  sub_20CEF9178(a1, &v260 - v78, &qword_27C81F520);
  v80 = sub_20D565228();
  v81 = *(v80 - 8);
  if ((*(v81 + 48))(v79, 1, v80) == 1)
  {
    sub_20CEF928C(v79, &qword_27C81F520);
    v82 = v340;
    sub_20D565928();
    sub_20CEF9178(a1, v76, &qword_27C81F520);
    v83 = sub_20D565968();
    v84 = sub_20D567EA8();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v346 = v86;
      *v85 = 136446210;
      sub_20CEF9178(v76, v73, &qword_27C81F520);
      v87 = sub_20D567868();
      v89 = v88;
      sub_20CEF928C(v76, &qword_27C81F520);
      v90 = sub_20CEE913C(v87, v89, &v346);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_20CEB6000, v83, v84, "While trying to get button state, failed to get selection state: %{public}s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x20F31FC70](v86, -1, -1);
      MEMORY[0x20F31FC70](v85, -1, -1);
    }

    else
    {

      sub_20CEF928C(v76, &qword_27C81F520);
    }

    (*(v314 + 8))(v82, v315);
    return 0;
  }

  v91 = sub_20D565208();
  (*(v81 + 8))(v79, v80);
  sub_20D564EE8();
  sub_20D5646D8();
  (*(v65 + 8))(v67, v339);
  v92 = v317;
  if ((*(v317 + 48))(v64, 1, v68) == 1)
  {

    sub_20CEF928C(v64, &qword_27C81F540);
    return 0;
  }

  v323 = v91;
  v94 = v306;
  (*(v92 + 32))(v306, v64, v68);
  v95 = v338;
  sub_20D564788();
  v96 = v308;
  v97 = v307;
  if ((*(v308 + 48))(v95, 1, v307) == 1)
  {
    (*(v92 + 8))(v94, v68);

    sub_20CEF928C(v95, &qword_27C81F588);
    return 0;
  }

  v269 = v68;
  (*(v96 + 32))(v305, v95, v97);
  v98 = sub_20D565218();
  v264 = *(v98 - 8);
  v99 = *(v264 + 56);
  v265 = v98;
  v99(v312, 1, 1);
  v267 = 0;
  v272 = 0;
  v100 = 0;
  v101 = *(v323 + 64);
  v309 = v323 + 64;
  v102 = 1 << *(v323 + 32);
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  else
  {
    v103 = -1;
  }

  v104 = v103 & v101;
  v105 = (v102 + 63) >> 6;
  v319 = (v330 + 16);
  v320 = (v331 + 16);
  v338 = (v331 + 32);
  v339 = (v330 + 32);
  v326 = (v321 + 11);
  v325 = *MEMORY[0x277D14F10];
  v322 = *MEMORY[0x277D14F08];
  v106 = (v331 + 8);
  v327 = (v330 + 8);
  ++v321;
  v271 = (v331 + 88);
  v262 = *MEMORY[0x277D14EE8];
  v270 = (v331 + 96);
  v275 = v316 + 16;
  v278 = (v316 + 32);
  v277 = (v316 + 88);
  v276 = *MEMORY[0x277D14F18];
  v274 = (v316 + 8);
  v263 = *MEMORY[0x277D14EF0];
  v266 = (v316 + 96);
  v268 = 1;
  v107 = v337;
  v324 = (v331 + 8);
  v108 = v332;
  v318 = v105;
LABEL_15:
  v109 = v334;
LABEL_16:
  v110 = v100;
  if (!v104)
  {
LABEL_18:
    if (v105 <= &v110->isa + 1)
    {
      v112 = &v110->isa + 1;
    }

    else
    {
      v112 = v105;
    }

    while (1)
    {
      v111 = (&v110->isa + 1);
      if (__OFADD__(v110, 1))
      {
        break;
      }

      if (v111 >= v105)
      {
        v341 = (v112 - 1);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F590);
        (*(*(v131 - 8) + 56))(v108, 1, 1, v131);
        v340 = 0;
        goto LABEL_25;
      }

      v104 = *(v309 + 8 * v111);
      v110 = (v110 + 1);
      if (v104)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  while (1)
  {
    v111 = v110;
LABEL_24:
    v340 = ((v104 - 1) & v104);
    v113 = __clz(__rbit64(v104)) | (v111 << 6);
    v114 = v323;
    v115 = v330;
    (*(v330 + 16))(v328, *(v323 + 48) + *(v330 + 72) * v113, v107);
    v116 = v331;
    v117 = v329;
    v118 = v345;
    (*(v331 + 16))(v329, *(v114 + 56) + *(v331 + 72) * v113, v345);
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F590);
    v120 = *(v119 + 48);
    v108 = v332;
    (*(v115 + 32))();
    (*(v116 + 32))(v108 + v120, v117, v118);
    (*(*(v119 - 8) + 56))(v108, 0, 1, v119);
    v341 = v111;
    v109 = v334;
    v106 = v324;
    v105 = v318;
LABEL_25:
    v121 = v335;
    sub_20CF15584(v108, v335, &qword_27C81F578);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F590);
    if ((*(*(v122 - 8) + 48))(v121, 1, v122) == 1)
    {

      v170 = v300;
      v172 = (v300 + 56);
      v171 = *(v300 + 56);
      v173 = v298;
      v174 = v299;
      v171(v298, 1, 1, v299);
      v175 = v296;
      sub_20CEF9178(v312, v296, &qword_27C81F580);
      v176 = v264;
      v177 = v265;
      if ((*(v264 + 48))(v175, 1, v265) == 1)
      {

        v178 = v301;
        v179 = v297;
        goto LABEL_77;
      }

      v345 = v171;
      v180 = v286;
      sub_20CEF9178(v175, v286, &qword_27C81F580);
      v181 = (*(v176 + 88))(v180, v177);
      v182 = v301;
      v179 = v297;
      if (v181 != *MEMORY[0x277D14EF8])
      {
        if (v181 == *MEMORY[0x277D14F00])
        {
          sub_20CEF928C(v173, &qword_27C81F570);
          if (v272)
          {
            *v173 = v272;
            v185 = MEMORY[0x277D168C8];
          }

          else
          {
            v185 = MEMORY[0x277D168B8];
          }

          v178 = v182;
          v198 = *v185;
          v199 = sub_20D5647B8();
          (*(*(v199 - 8) + 104))(v173, v198, v199);
          (*(v170 + 104))(v173, *MEMORY[0x277D16918], v174);
          (v345)(v173, 0, 1, v174);
        }

        else
        {

          (*(v176 + 8))(v180, v177);
          v178 = v182;
        }

        goto LABEL_77;
      }

      if (v268)
      {
        sub_20CEF928C(v173, &qword_27C81F570);
        v183 = MEMORY[0x277D168B8];
        v178 = v182;
        v184 = v345;
        goto LABEL_76;
      }

      v186 = sub_20D563FF8();
      v187 = *(v186 + 16);
      if (!v187)
      {

        v106 = MEMORY[0x277D84F90];
        goto LABEL_75;
      }

      v344 = v172;
      v188 = *(v283 + 16);
      v189 = *(v283 + 80);
      v343 = v186;
      v190 = v186 + ((v189 + 32) & ~v189);
      v191 = *(v283 + 72);
      v192 = (v283 + 8);
      v106 = MEMORY[0x277D84F90];
      do
      {
        v193 = v303;
        v194 = v304;
        v188(v303, v190, v304);
        v195 = sub_20D563FD8();
        (*v192)(v193, v194);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_20CEE87C0(0, *(v106 + 2) + 1, 1, v106);
        }

        v197 = *(v106 + 2);
        v196 = *(v106 + 3);
        if (v197 >= v196 >> 1)
        {
          v106 = sub_20CEE87C0((v196 > 1), v197 + 1, 1, v106);
        }

        *(v106 + 2) = v197 + 1;
        *&v106[4 * v197 + 32] = v195;
        v190 += v191;
        --v187;
      }

      while (v187);
LABEL_71:

      v174 = v299;
      v173 = v298;
      v179 = v297;
      v175 = v296;
LABEL_75:
      v184 = v345;
      sub_20CEF928C(v173, &qword_27C81F570);
      *v173 = v106;
      v183 = MEMORY[0x277D168C8];
      v170 = v300;
      v178 = v301;
LABEL_76:
      v200 = *v183;
      v201 = sub_20D5647B8();
      (*(*(v201 - 8) + 104))(v173, v200, v201);
      (*(v170 + 104))(v173, *MEMORY[0x277D16918], v174);
      (v184)(v173, 0, 1, v174);
LABEL_77:
      sub_20CEF928C(v175, &qword_27C81F580);
      sub_20CEF9178(v173, v179, &qword_27C81F570);
      v202 = (*(v170 + 48))(v179, 1, v174);
      v203 = v317;
      v204 = v269;
      v205 = v306;
      v206 = v295;
      v207 = v294;
      if (v202 == 1)
      {
        sub_20CEF928C(v173, &qword_27C81F570);
        sub_20CEF928C(v312, &qword_27C81F580);
        (*(v308 + 8))(v305, v307);
        (*(v203 + 8))(v205, v204);
        sub_20CEF928C(v179, &qword_27C81F570);
      }

      else
      {
        v208 = v179;
        v209 = v173;
        (*(v170 + 32))(v178, v208, v174);
        (*(v170 + 16))(v288, v178, v174);
        (*(v203 + 16))(v287, v205, v204);
        sub_20D5647C8();
        v210 = v289;
        if ((*(v289 + 48))(v206, 1, v207) != 1)
        {
          v211 = *(v210 + 32);
          v212 = v285;
          v211(v285, v206, v207);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C050);
          v213 = swift_allocObject();
          *(v213 + 16) = xmmword_20D5BC410;
          *(v213 + 56) = v207;
          *(v213 + 64) = sub_20D023CC8();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v213 + 32));
          v211(boxed_opaque_existential_1, v212, v207);
          (*(v170 + 8))(v301, v174);
          sub_20CEF928C(v209, &qword_27C81F570);
          sub_20CEF928C(v312, &qword_27C81F580);
          (*(v308 + 8))(v305, v307);
          (*(v203 + 8))(v205, v269);
          return v213;
        }

        (*(v170 + 8))(v178, v174);
        sub_20CEF928C(v209, &qword_27C81F570);
        sub_20CEF928C(v312, &qword_27C81F580);
        (*(v308 + 8))(v305, v307);
        (*(v203 + 8))(v205, v269);
        sub_20CEF928C(v206, &qword_27C81F568);
      }

      return 0;
    }

    v123 = *(v122 + 48);
    v124 = v121;
    v125 = v121;
    v107 = v337;
    (*v339)(v344, v124, v337);
    v126 = v125 + v123;
    v127 = v336;
    (*v338)(v336, v126, v345);
    v128 = v342;
    sub_20D5652B8();
    v129 = (*v326)(v128, v343);
    if (v129 == v325)
    {
      v158 = *v320;
      v159 = v293;
      v160 = v127;
      v161 = v345;
      (*v320)(v293, v160, v345);
      v162 = (*v271)(v159, v161);
      if (v162 == v263)
      {
        v273 = v158;
        v163 = v161;
        (*v270)(v159, v161);
        v164 = *v278;
        v165 = v291;
        v166 = v159;
        v167 = v313;
        (*v278)(v291, v166, v313);
        v168 = v292;
        v164(v292, v165, v167);
        v169 = (*v277)(v168, v167);
        if (v169 == v276)
        {
          v106 = v324;
          (*v324)(v336, v163);
          (*v327)(v344, v107);
          (*v266)(v168, v167);
          v268 = 0;
          v267 = *v168;
          v104 = v340;
          v100 = v341;
          goto LABEL_15;
        }

        v215 = v273;

        (*v274)(v168, v167);
        v216 = v163;
      }

      else
      {
        v215 = v158;

        (*v106)(v159, v161);
        v216 = v161;
      }

      v217 = v284;
      sub_20D565928();
      v218 = v281;
      (*v319)(v281, v344, v107);
      v219 = v282;
      v215(v282, v336, v216);
      v220 = sub_20D565968();
      v221 = v107;
      v222 = sub_20D567EA8();
      if (os_log_type_enabled(v220, v222))
      {
        v223 = swift_slowAlloc();
        v342 = swift_slowAlloc();
        v346 = v342;
        *v223 = 136446466;
        v341 = v220;
        v224 = v218;
        v225 = v219;
        sub_20D5652B8();
        v226 = sub_20D567868();
        v228 = v227;
        v345 = *v327;
        v345(v224, v221);
        v229 = sub_20CEE913C(v226, v228, &v346);

        *(v223 + 4) = v229;
        *(v223 + 12) = 2082;
        v215(v329, v225, v216);
        v230 = sub_20D567868();
        v232 = v231;
        v233 = *v324;
        (*v324)(v225, v216);
        v234 = sub_20CEE913C(v230, v232, &v346);

        *(v223 + 14) = v234;
        v235 = v341;
        _os_log_impl(&dword_20CEB6000, v341, v222, "Incorrect value found for selection state of type: %{public}s and selection state: %{public}s", v223, 0x16u);
        v236 = v342;
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v236, -1, -1);
        MEMORY[0x20F31FC70](v223, -1, -1);

        (*(v314 + 8))(v284, v315);
        v233(v336, v216);
        v345(v344, v337);
      }

      else
      {

        v237 = v221;
        v238 = *v324;
        (*v324)(v219, v216);
        v239 = *v327;
        (*v327)(v218, v237);
        (*(v314 + 8))(v217, v315);
        v238(v336, v216);
        v239(v344, v237);
      }

      goto LABEL_90;
    }

    v130 = v333;
    if (v129 == v322)
    {
      break;
    }

    (*v106)(v127, v345);
    (*v327)(v344, v107);
    (*v321)(v342, v343);
    v104 = v340;
    v110 = v341;
    if (!v340)
    {
      goto LABEL_18;
    }
  }

  v132 = v345;
  v133 = *v320;
  v134 = v290;
  (*v320)(v290, v127, v345);
  v135 = (*v271)(v134, v132);
  if (v135 != v262)
  {
    v342 = *v106;
    (v342)(v134, v132);
    v240 = v279;
    sub_20D565928();
    v241 = v344;
    (*v319)(v109, v344, v337);
    v133(v130, v127, v132);
    v242 = sub_20D565968();
    v243 = sub_20D567EA8();
    if (os_log_type_enabled(v242, v243))
    {
      v244 = swift_slowAlloc();
      v341 = swift_slowAlloc();
      v346 = v341;
      *v244 = 136446466;
      sub_20D5652B8();
      v245 = sub_20D567868();
      v247 = v246;
      v248 = *v327;
      (*v327)(v109, v337);
      v249 = sub_20CEE913C(v245, v247, &v346);

      *(v244 + 4) = v249;
      *(v244 + 12) = 2082;
      v250 = v333;
      v133(v329, v333, v132);
      v251 = sub_20D567868();
      v253 = v252;
      v254 = v342;
      (v342)(v250, v132);
      v255 = sub_20CEE913C(v251, v253, &v346);

      *(v244 + 14) = v255;
      _os_log_impl(&dword_20CEB6000, v242, v243, "Incorrect value found for selection state of type: %{public}s and selection state: %{public}s", v244, 0x16u);
      v256 = v341;
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v256, -1, -1);
      MEMORY[0x20F31FC70](v244, -1, -1);

      (*(v314 + 8))(v279, v315);
      (v254)(v336, v132);
      v248(v344, v337);
    }

    else
    {

      v257 = v342;
      (v342)(v333, v132);
      v258 = *v327;
      v259 = v337;
      (*v327)(v109, v337);
      (*(v314 + 8))(v240, v315);
      (v257)(v336, v132);
      v258(v241, v259);
    }

LABEL_90:
    sub_20CEF928C(v312, &qword_27C81F580);
    (*(v308 + 8))(v305, v307);
    (*(v317 + 8))(v306, v269);
    return 0;
  }

  (*v270)(v134, v132);
  v136 = *v134;
  v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5A0) + 48);

  sub_20CF15584(&v134[v137], v302, &qword_27C81F580);
  v138 = (v136 + 56);
  v139 = 1 << *(v136 + 32);
  if (v139 < 64)
  {
    v140 = ~(-1 << v139);
  }

  else
  {
    v140 = -1;
  }

  v141 = v140 & *(v136 + 56);
  v142 = (v139 + 63) >> 6;
  result = sub_20D5663C8();
  v143 = 0;
  v272 = MEMORY[0x277D84F90];
  v273 = (v136 + 56);
LABEL_36:
  v144 = v143;
  if (!v141)
  {
    goto LABEL_38;
  }

  do
  {
    v143 = v144;
LABEL_41:
    v145 = __clz(__rbit64(v141));
    v141 &= v141 - 1;
    v146 = v316;
    v147 = v310;
    v148 = v313;
    (*(v316 + 16))(v310, *(v136 + 48) + *(v316 + 72) * (v145 | (v143 << 6)), v313);
    v149 = v311;
    (*(v146 + 32))(v311, v147, v148);
    v150 = (*(v146 + 88))(v149, v148);
    if (v150 == v276)
    {
      (*v266)(v149, v148);
      v151 = *v149;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_20CEE87C0(0, *(v272 + 2) + 1, 1, v272);
        v272 = result;
      }

      v109 = v334;
      v106 = v324;
      v138 = v273;
      v153 = *(v272 + 2);
      v152 = *(v272 + 3);
      v154 = v153 + 1;
      if (v153 >= v152 >> 1)
      {
        v156 = v153 + 1;
        v261 = v151;
        v260 = v153;
        result = sub_20CEE87C0((v152 > 1), v153 + 1, 1, v272);
        v154 = v156;
        v153 = v260;
        v151 = v261;
        v138 = v273;
        v272 = result;
      }

      v155 = v272;
      *(v272 + 2) = v154;
      *&v155[4 * v153 + 32] = v151;
      goto LABEL_36;
    }

    result = (*v274)(v149, v148);
    v144 = v143;
    v109 = v334;
    v106 = v324;
    v138 = v273;
  }

  while (v141);
LABEL_38:
  while (1)
  {
    v143 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      break;
    }

    if (v143 >= v142)
    {

      (*v106)(v336, v345);
      v107 = v337;
      (*v327)(v344, v337);
      v157 = v312;
      sub_20CEF928C(v312, &qword_27C81F580);

      sub_20CF15584(v302, v157, &qword_27C81F580);
      v108 = v332;
      v104 = v340;
      v100 = v341;
      goto LABEL_16;
    }

    v141 = v138[v143];
    ++v144;
    if (v141)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20D023CC8()
{
  result = qword_27C81F598;
  if (!qword_27C81F598)
  {
    sub_20D564808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F598);
  }

  return result;
}

char *DashboardTipModule.init(context:itemUpdater:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider] = 0;
  *&v2[OBJC_IVAR___HUDashboardTipModule_tipObservationTask] = 0;
  v5 = OBJC_IVAR___HUDashboardTipModule_eligibleTip;
  v6 = sub_20D5662A8();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v20.receiver = v2;
  v20.super_class = type metadata accessor for DashboardTipModule();
  v7 = objc_msgSendSuper2(&v20, sel_initWithItemUpdater_, a2);
  if (qword_281120058 != -1)
  {
    swift_once();
  }

  if (sub_20CFEB090(qword_281120C20, *algn_281120C28))
  {

    swift_unknownObjectRelease();
  }

  else
  {
    [v7 setupTipsObserver];
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = objc_allocWithZone(MEMORY[0x277D14B38]);
    aBlock[4] = sub_20D025ED0;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CF351D8;
    aBlock[3] = &block_descriptor_28;
    v10 = _Block_copy(aBlock);

    v11 = [v9 initWithResultsBlock_];
    _Block_release(v10);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BA040;
    *(inited + 32) = v11;
    v13 = v11;
    sub_20CEF302C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v14 = objc_allocWithZone(MEMORY[0x277D14B40]);
    sub_20CECF940(0, &qword_281120AC0);
    sub_20CEF99B4();
    v15 = sub_20D567CD8();

    v16 = [v14 initWithItems_];

    swift_unknownObjectRelease();
    v17 = *&v7[OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider];
    *&v7[OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider] = v16;
  }

  return v7;
}

uint64_t type metadata accessor for DashboardTipModule()
{
  result = qword_2811207F8;
  if (!qword_2811207F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_20D0240A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v30 = MEMORY[0x277D84F98];
    if (qword_28111FF90 != -1)
    {
      swift_once();
    }

    v8 = qword_28111FF98;
    v9 = OBJC_IVAR___HUDashboardTipModule_eligibleTip;
    swift_beginAccess();
    sub_20D0260E0(v7 + v9, v5);
    v10 = sub_20D5662A8();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    if (v12(v5, 1, v10) == 1)
    {
      v13 = v8;
      sub_20CEF928C(v5, &qword_27C81F5D0);
      sub_20D0895BC(v28);

      sub_20CEF928C(v28, &qword_27C81BF00);
      v14 = v30;
    }

    else
    {
      v29 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v11 + 32))(boxed_opaque_existential_1, v5, v10);
      sub_20CEC80B0(v28, v27);
      v18 = v8;
      v19 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v19;
      sub_20CEEF89C(v27, v18, isUniquelyReferenced_nonNull_native);

      v14 = v26;
      v30 = v26;
    }

    v21 = *MEMORY[0x277D13FB8];
    sub_20D0260E0(v7 + v9, v2);
    v22 = v12(v2, 1, v10) == 1;
    sub_20CEF928C(v2, &qword_27C81F5D0);
    v29 = MEMORY[0x277D839B0];
    LOBYTE(v28[0]) = v22;
    sub_20CEC80B0(v28, v27);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v14;
    sub_20CEEF89C(v27, v21, v23);
    type metadata accessor for HFItemResultKey(0);
    sub_20CF89418();
    v24 = sub_20D567738();

    v16 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    sub_20CECF940(0, &qword_27C81F5D8);
    v15 = sub_20D567E58();
    v16 = [objc_opt_self() futureWithResult_];
  }

  return v16;
}

void DashboardTipModule.init(itemUpdater:descriptionText:)()
{
  *(v0 + OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider) = 0;
  *(v0 + OBJC_IVAR___HUDashboardTipModule_tipObservationTask) = 0;
  v1 = OBJC_IVAR___HUDashboardTipModule_eligibleTip;
  v2 = sub_20D5662A8();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_20D568A58();
  __break(1u);
}

void sub_20D024734()
{
  v1 = *(v0 + OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20D5BA040;
    *(inited + 32) = v1;
    v3 = v1;
    sub_20CEF7FC4(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_20D568768())
  {
    v4 = MEMORY[0x277D84F90];

    sub_20CEF7FC4(v4);
  }
}

uint64_t sub_20D024830()
{
  v1 = *(v0 + OBJC_IVAR___HUDashboardTipModule_dashboardTipItemProvider);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = qword_281120058;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = objc_allocWithZone(MEMORY[0x277D14850]);
  v5 = sub_20D5677F8();
  v6 = [v4 initWithIdentifier_];

  v7 = [v3 items];
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v8 = sub_20D567D08();

  sub_20CF81C08(v8);

  v9 = sub_20D567A58();

  [v6 setItems_];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20D5BA040;
  *(v11 + 32) = v6;
  sub_20CECF940(0, &unk_28111FFD0);
  v12 = v6;
  v13 = sub_20D567A58();

  v14 = sub_20D567CD8();
  v15 = [v10 filterSections:v13 toDisplayedItems:v14];

  v16 = sub_20D567A78();
  return v16;
}

id DashboardTipModule.__allocating_init(itemUpdater:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithItemUpdater_];
  swift_unknownObjectRelease();
  return v2;
}

id DashboardTipModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DashboardTipModule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20D024C8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR___HUDashboardTipModule_tipObservationTask;
  v5 = *(v0 + OBJC_IVAR___HUDashboardTipModule_tipObservationTask);
  if (!v5)
  {
    v6 = sub_20D567C58();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v5 = sub_20CF18960(0, 0, v3, &unk_20D5C4FE0, v8);
  }

  *(v0 + v4) = v5;
}

uint64_t sub_20D024DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D770);
  v4[12] = swift_task_alloc();
  v5 = sub_20D566588();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D778);
  v4[17] = swift_task_alloc();
  v4[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D780);
  v4[19] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D788);
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D790);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D02501C, 0, 0);
}

uint64_t sub_20D02501C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (!Strong)
  {
LABEL_5:

    v4 = v0[1];

    return v4();
  }

  v2 = Strong;
  if (*(Strong + OBJC_IVAR___HUDashboardTipModule_tipObservationTask))
  {

    isCancelled = swift_task_isCancelled();

    if (isCancelled)
    {

      goto LABEL_5;
    }
  }

  if (qword_281120898 != -1)
  {
    swift_once();
  }

  v6 = v0[21];
  v7 = v0[22];
  v8 = v0[20];
  v9 = qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip;
  v10 = *(qword_2811208A0 + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip);
  v0[27] = v10;
  v11 = *(v9 + 8);
  v0[28] = v11;
  v0[9] = v10;
  v0[10] = v11;
  sub_20CF7B774();
  sub_20D5663C8();
  sub_20D5662D8();
  MEMORY[0x20F31DE70](v8);
  sub_20CF156D0(&qword_281120018, &qword_27C81D778);
  sub_20D567CA8();
  sub_20D5689E8();
  (*(v6 + 8))(v7, v8);
  sub_20D5689F8();

  return MEMORY[0x2822009F8](sub_20D0252C0, 0, 0);
}

uint64_t sub_20D0252C0()
{
  v0[29] = sub_20D5689D8();
  sub_20CF156D0(&unk_281120020, &qword_27C81D780);
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_20D0253B4;
  v2 = v0[12];

  return MEMORY[0x282200310](v2, 0, 0);
}

uint64_t sub_20D0253B4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = sub_20CF62AD4;
  }

  else
  {
    (*(v2 + 232))();
    v3 = sub_20D0254DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20D0254DC()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_20CEF928C(v3, &qword_27C81D770);

    return MEMORY[0x2822009F8](sub_20D025960, 0, 0);
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v4 = sub_20D5689E8();
    v0[31] = v5;
    v9 = (v4 + *v4);
    v6 = swift_task_alloc();
    v0[32] = v6;
    *v6 = v0;
    v6[1] = sub_20D0256A0;
    v7 = v0[15];

    return (v9)(v0 + 34, v7);
  }
}

uint64_t sub_20D0256A0()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);

  (*(v3 + 8))(v2, v4);
  *(v1 + 273) = *(v1 + 272);

  return MEMORY[0x2822009F8](sub_20D025824, 0, 0);
}

uint64_t sub_20D025840()
{
  sub_20D567C18();
  *(v0 + 264) = sub_20D567C08();
  v2 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D0258D4, v2, v1);
}

uint64_t sub_20D0258D4()
{
  v1 = *(v0 + 273);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);

  sub_20D025A30(v1, v3, v2);

  return MEMORY[0x2822009F8](sub_20D0252C0, 0, 0);
}

uint64_t sub_20D025960()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20D025A30(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = OBJC_IVAR___HUDashboardTipModule_eligibleTip;
  swift_beginAccess();
  sub_20D0260E0(v3 + v16, v15);
  if (a1)
  {
    v30[0] = a2;
    v30[1] = a3;
    sub_20CF7B774();
    sub_20D5663C8();
    sub_20D5662B8();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_20D5662A8();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v12, v17, 1, v18);
  swift_beginAccess();
  sub_20D026150(v12, v3 + v16);
  swift_endAccess();
  sub_20D0260E0(v3 + v16, v9);
  v20 = *(v19 + 48);
  v21 = v20(v9, 1, v18);
  sub_20CEF928C(v9, &qword_27C81F5D0);
  if (v21 != 1 || v20(v15, 1, v18) != 1)
  {
    v22 = [v3 itemUpdater];
    if (v22)
    {
      v23 = v22;
      v24 = [v3 itemProviders];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
      sub_20CF156D0(&qword_28111FFB0, &qword_27C81AF70);
      sub_20D567D08();

      v25 = sub_20D5638E8();
      v26 = sub_20D567CD8();

      v27 = [objc_opt_self() requestToReloadItemProviders:v26 senderSelector:v25];

      v28 = [v23 performItemUpdateRequest_];
      swift_unknownObjectRelease();
    }
  }

  return sub_20CEF928C(v15, &qword_27C81F5D0);
}

uint64_t sub_20D025E0C()
{
  result = sub_20D5677F8();
  qword_28111FF98 = result;
  return result;
}

id static HFItemResultKey.resultDashboardTipKey.getter()
{
  if (qword_28111FF90 != -1)
  {
    swift_once();
  }

  v1 = qword_28111FF98;

  return v1;
}

uint64_t sub_20D025EA0()
{
  result = sub_20D567838();
  qword_281120C20 = result;
  *algn_281120C28 = v1;
  return result;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20D025EF8()
{
  sub_20D025FD4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20D025FD4()
{
  if (!qword_2811200B0[0])
  {
    sub_20D5662A8();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, qword_2811200B0);
    }
  }
}

uint64_t sub_20D02602C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20CEF5FFC;

  return sub_20D024DDC(a1, v4, v5, v6);
}

uint64_t sub_20D0260E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D026150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F5D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_20D0261C0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_20D026248()
{
  v12 = [objc_allocWithZone(MEMORY[0x277D148D0]) init];
  v13 = type metadata accessor for AccessoryRepresentableItemModule.Context();
  v0 = objc_allocWithZone(v13);
  v1 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel;
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_objectLevel] = 0;
  v2 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer;
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_accessoryContainer] = 0;
  v3 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  *&v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType] = 1;
  v4 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions;
  v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_hideSourceItemDescriptions] = 0;
  v5 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter;
  v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_showFooter] = 0;
  v6 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_valueSource;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D148D0]) &selRef_indexesOfObjectsPassingTest_];
  v7 = &v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_filter];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_itemFilter];
  *v8 = 0;
  v8[1] = 0;
  swift_beginAccess();
  *&v0[v1] = 2;
  swift_beginAccess();
  *&v0[v2] = 0;
  swift_unknownObjectRelease();
  swift_beginAccess();
  *&v0[v3] = 1;
  swift_beginAccess();
  v0[v4] = 1;
  swift_beginAccess();
  v0[v5] = 0;
  swift_beginAccess();
  *&v0[v6] = v12;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v9 = *v7;
  *v7 = sub_20D026474;
  v7[1] = 0;
  sub_20CEC8164(v9);
  swift_beginAccess();
  v10 = *v8;
  *v8 = 0;
  v8[1] = 0;
  sub_20CEC8164(v10);
  v14.receiver = v0;
  v14.super_class = v13;
  result = objc_msgSendSuper2(&v14, sel_init);
  qword_27C8381B8 = result;
  return result;
}

uint64_t sub_20D026474()
{
  v0 = sub_20D565DE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v17 = &unk_2825BCA78;
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v15 = v1;
      v8 = objc_opt_self();
      swift_unknownObjectRetain();
      v9 = [v8 hiddenFromScenesAndAutomationsAccessoryTypeGroup];
      swift_getObjectType();
      v10 = sub_20D568198();
      v11 = [v9 containsType_];

      if ((v11 & 1) == 0)
      {
        v16 = v7;
        sub_20D565EC8();
        sub_20D565DA8();
        sub_20D027E94();
        LOBYTE(v7) = sub_20D568678();
        swift_unknownObjectRelease();
        v12 = *(v15 + 8);
        v12(v3, v0);
        v12(v6, v0);
        return v7 & 1;
      }

      swift_unknownObjectRelease();
    }

    LOBYTE(v7) = 0;
  }

  return v7 & 1;
}

id ActionSetAccessoryPickerViewController.init(actionSetBuilder:delegate:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___HUActionSetAccessoryPickerViewController_accessoryElementModule] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HUActionSetAccessoryPickerViewController_actionSetBuilder] = a1;
  swift_unknownObjectWeakAssign();
  v4 = a1;
  [v4 copy];
  sub_20D568628();
  swift_unknownObjectRelease();
  sub_20D026ADC();
  swift_dynamicCast();
  v5 = [v4 name];
  if (!v5)
  {
    sub_20D567838();
    v5 = sub_20D5677F8();
  }

  [v35 setName_];

  v6 = [v4 home];
  v7 = v35;
  v8 = v6;
  v9 = [v8 hf_characteristicValueManager];
  if (qword_27C81A280 != -1)
  {
    swift_once();
  }

  v10 = byte_27C838208;
  v11 = qword_27C838210;
  v12 = unk_27C838218;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F600);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  *(v13 + 16) = 0;
  *(v13 + 24) = v14;
  *(v13 + 80) = 0;
  *(v13 + 48) = v10;
  *(v13 + 56) = v11;
  *(v13 + 64) = v12;
  *(v13 + 32) = v7;
  *(v13 + 40) = v8;
  *(v13 + 72) = v9;
  *&v2[OBJC_IVAR___HUActionSetAccessoryPickerViewController_selectionController] = v13;
  v15 = objc_allocWithZone(MEMORY[0x277D14B08]);
  v16 = v12;
  v17 = v11;
  v18 = [v15 initWithDelegate_];
  v34.receiver = v2;
  v34.super_class = type metadata accessor for ActionSetAccessoryPickerViewController();
  v19 = objc_msgSendSuper2(&v34, sel_initUsingCompositionalLayoutWithItemManager_, v18);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = sub_20D027B18;
  v33 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_20CF351D8;
  v31 = &block_descriptor_29;
  v21 = _Block_copy(&aBlock);
  v22 = v19;

  [v18 setHomeCreator_];
  _Block_release(v21);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = ObjectType;
  v32 = sub_20D027B38;
  v33 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_20CF35658;
  v31 = &block_descriptor_7_0;
  v25 = _Block_copy(&aBlock);

  [v18 setItemModuleCreator_];
  _Block_release(v25);

  swift_unknownObjectRelease();
  return v22;
}

unint64_t sub_20D026ADC()
{
  result = qword_27C81EF68;
  if (!qword_27C81EF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81EF68);
  }

  return result;
}

id sub_20D026B28()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = *(Strong + OBJC_IVAR___HUActionSetAccessoryPickerViewController_actionSetBuilder), v1, v3 = [v2 home], v2, v3))
  {
    v4 = [objc_opt_self() futureWithResult_];
  }

  else
  {
    v5 = [objc_opt_self() hf:59 errorWithCode:?];
    v3 = sub_20D5635C8();
    v4 = [objc_opt_self() futureWithError_];
  }

  return v4;
}

double sub_20D026C48(void *a1, uint64_t a2)
{
  if (qword_27C81A250 != -1)
  {
    swift_once();
  }

  v4 = qword_27C8381B8;
  v5 = objc_allocWithZone(type metadata accessor for AccessoryRepresentableItemModule());
  v6 = &v5[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v5[OBJC_IVAR___HUAccessoryRepresentableItemModule_accessoryItemProvider] = 0;
  *&v5[OBJC_IVAR___HUAccessoryRepresentableItemModule_context] = v4;
  swift_getObjectType();
  v7 = v4;
  v8 = a1;
  swift_unknownObjectRetain();
  v9 = sub_20CF86924(v8, a2, 0, 0, v5);

  swift_unknownObjectRelease();
  v10 = OBJC_IVAR___HUAccessoryRepresentableItemModuleContext_sectionGroupingType;
  swift_beginAccess();
  v11 = *&v7[v10];
  v12 = OBJC_IVAR____TtC6HomeUI19AccessoryItemModule_sectionGroupingType;
  swift_beginAccess();
  *&v9[v12] = v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + OBJC_IVAR___HUActionSetAccessoryPickerViewController_selectionController);
    v15 = Strong;

    v16 = sub_20D027E30();
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = &v9[OBJC_IVAR___HUAccessoryRepresentableItemModule_selectionController];
  swift_beginAccess();
  *v17 = v14;
  *(v17 + 1) = v16;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR___HUActionSetAccessoryPickerViewController_accessoryElementModule);
    *(v18 + OBJC_IVAR___HUActionSetAccessoryPickerViewController_accessoryElementModule) = v9;
    v20 = v18;
    v21 = v9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
  v22 = swift_allocObject();
  *&result = 1;
  *(v22 + 16) = xmmword_20D5BA040;
  *(v22 + 32) = v9;
  return result;
}

void sub_20D026ED0()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ActionSetAccessoryPickerViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = sub_20D5677F8();
  v2 = HULocalizedString(v1);

  if (!v2)
  {
    sub_20D567838();
    v2 = sub_20D5677F8();
  }

  [v0 setTitle_];

  v3 = [v0 navigationItem];
  v4 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v5 = v0;
  v6 = [v4 initWithBarButtonSystemItem:1 target:v5 action:sel_cancelWithSender_];
  [v3 setLeftBarButtonItem_];

  v7 = [v5 navigationItem];
  v8 = [v7 leftBarButtonItem];

  if (v8)
  {
    v9 = sub_20D5677F8();
    [v8 setAccessibilityIdentifier_];
  }

  v10 = [v5 navigationItem];
  v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v5 action:sel_doneWithSender_];

  [v10 setRightBarButtonItem_];
  v12 = [v5 navigationItem];
  v13 = [v12 rightBarButtonItem];

  if (v13)
  {
    v14 = sub_20D5677F8();
    [v13 setAccessibilityIdentifier_];
  }
}

void sub_20D027290()
{
  v1 = [v0 navigationItem];
  v2 = [v1 rightBarButtonItem];

  v3 = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v4 = [v0 navigationItem];
  v5 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
  [v4 setRightBarButtonItem_];

  [v3 startAnimating];

  v6 = sub_20D027D34();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v18 = sub_20D027E28;
  v19 = v8;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20D0478B8;
  v17 = &block_descriptor_24_1;
  v9 = _Block_copy(&v14);
  v10 = v2;

  v11 = [v6 addSuccessBlock_];
  _Block_release(v9);

  v18 = sub_20CF36F00;
  v19 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 1107296256;
  v16 = sub_20D0261C0;
  v17 = &block_descriptor_27;
  v12 = _Block_copy(&v14);
  v13 = [v11 addFailureBlock_];
  _Block_release(v12);
}

void sub_20D027530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR___HUActionSetAccessoryPickerViewController_actionSetBuilder;
    v7 = [*(Strong + OBJC_IVAR___HUActionSetAccessoryPickerViewController_actionSetBuilder) name];
    if (!v7)
    {
      sub_20D567838();
      v7 = sub_20D5677F8();
    }

    [*&v5[v6] updateFromActionSetBuilder_];
    v8 = *&v5[v6];
    [v8 setName_];

    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      [v9 actionSetAccessoryPickerDidFinish_];
      swift_unknownObjectRelease();
    }

    v10 = [v5 navigationItem];
    [v10 setRightBarButtonItem_];
  }
}

id ActionSetAccessoryPickerViewController.__allocating_init(itemManager:collectionViewLayout:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithItemManager:a1 collectionViewLayout:a2];

  return v5;
}

id ActionSetAccessoryPickerViewController.__allocating_init(usingCompositionalLayoutWith:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initUsingCompositionalLayoutWithItemManager_];

  return v3;
}

id ActionSetAccessoryPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActionSetAccessoryPickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D027B44(void *a1)
{
  type metadata accessor for AccessoryRepresentableItemModule();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for AccessoryListModuleController();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_cellVerticalContentInset] = 0x4028000000000000;
    *&v5[OBJC_IVAR___HUAccessoryListModuleController_collectionLayoutManager] = [objc_allocWithZone(type metadata accessor for CollectionLayoutManager()) init];
    v13.receiver = v5;
    v13.super_class = v4;
    v6 = objc_msgSendSuper2(&v13, sel_initWithModule_, v3);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v7 = [v6 asGeneric];

    return v7;
  }

  else
  {
    sub_20D568858();

    v9 = [a1 description];
    v10 = sub_20D567838();
    v12 = v11;

    MEMORY[0x20F31CDB0](v10, v12);

    result = sub_20D568A58();
    __break(1u);
  }

  return result;
}

uint64_t sub_20D027D34()
{
  result = *(v0 + 16);
  if (!result)
  {
    v2 = objc_opt_self();
    sub_20D5663C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C820760);
    v3 = sub_20D567A58();

    [v2 combineAllFutures_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F610);
    swift_dynamicCast();
    v4 = *(v0 + 16);
    *(v0 + 16) = v5;

    result = *(v0 + 16);
    if (!result)
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_20D027E30()
{
  result = qword_27C81F618;
  if (!qword_27C81F618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C81F600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F618);
  }

  return result;
}

unint64_t sub_20D027E94()
{
  result = qword_27C81F060;
  if (!qword_27C81F060)
  {
    sub_20D565DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81F060);
  }

  return result;
}

uint64_t sub_20D028010(uint64_t a1)
{
  v3 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20D028068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

char *EmbeddedSceneActionGridViewController.init(actionSetBuilder:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate] = 0;
  v2 = sub_20CFE797C(a1, 0, v1);
  v3 = &v2[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_delegate];
  swift_beginAccess();
  *(v3 + 1) = &protocol witness table for EmbeddedSceneActionGridViewController;
  swift_unknownObjectWeakAssign();
  v4 = &v2[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridConfig];
  swift_beginAccess();
  *(v4 + 3) = 0;
  v5 = *&v2[OBJC_IVAR____TtC6HomeUI24ActionGridViewController_actionGridModule];
  if (v5)
  {
    v6 = *v4;
    v7 = *(v4 + 1);
    v8 = *(v4 + 2);
    v22 = *(v4 + 24);
    v20 = v7;
    v21 = v8;
    v19 = v6;
    v9 = &v5[OBJC_IVAR____TtC6HomeUI20ActionGridItemModule_config];
    swift_beginAccess();
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = *(v9 + 2);
    v24 = *(v9 + 24);
    v23[1] = v11;
    v23[2] = v12;
    v23[0] = v10;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    *(v9 + 24) = v22;
    *(v9 + 1) = v14;
    *(v9 + 2) = v15;
    *v9 = v13;
    v16 = v5;
    sub_20CFE769C(&v19, &v18);
    sub_20CFE76F8(v23);
  }

  return v2;
}

uint64_t sub_20D0282D8()
{
  v1 = OBJC_IVAR___HUEmbeddedSceneActionGridViewController_sceneActionGridDelegate;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3)
  {
    sub_20D02840C();
    sub_20D028458();
    swift_unknownObjectRetain();
    v4 = sub_20D567CD8();
    [v3 sceneActionGridViewController:v0 didUpdate:v4];

    return swift_unknownObjectRelease();
  }

  return result;
}

id EmbeddedSceneActionGridViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmbeddedSceneActionGridViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_20D02840C()
{
  result = qword_27C81AE50;
  if (!qword_27C81AE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81AE50);
  }

  return result;
}

unint64_t sub_20D028458()
{
  result = qword_27C8217F0;
  if (!qword_27C8217F0)
  {
    sub_20D02840C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8217F0);
  }

  return result;
}

Swift::Bool __swiftcall HUAvailableRelatedTriggerItemModule.containsMatterAccessory()()
{
  v1 = [v0 relatedItems];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F630);
  v2 = sub_20D567A78();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_20D568768();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F31DD20](v4, v2);
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            swift_unknownObjectRelease();
            return 1;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v5 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        sub_20D565D18();
        if (swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v4;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

void *sub_20D0287CC()
{
  v1 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_20D028878(uint64_t a1)
{
  v3 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_20D0288D0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t sub_20D028990()
{
  v1 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20D0289D4(uint64_t a1)
{
  v3 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_20D028AAC(uint64_t *a1, Class *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [objc_allocWithZone(*a2) init];
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_20D028B18@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconAccessory;
  swift_beginAccess();
  sub_20D029EA0(v1 + v9, v8);
  v10 = sub_20D566058();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_20D029E38(v8);
  sub_20D028CE8(v1, a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_20D029F10(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_20D028CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81E350);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_20D566048();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20D566028();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D028A98();
  v15 = sub_20D028A84();
  [v14 addSubview_];

  [*(a1 + OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconView) setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = *(a1 + OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconContainerView);
  v17 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6C0) + 48)];
  v18 = *MEMORY[0x277D74A98];
  v19 = sub_20D565FD8();
  (*(*(v19 - 8) + 104))(v9, v18, v19);
  *v17 = sub_20D029B58;
  v17[1] = 0;
  (*(v7 + 104))(v9, *MEMORY[0x277D74AD0], v6);
  v20 = sub_20D566008();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = v16;
  sub_20D566018();
  sub_20D565FC8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t type metadata accessor for EditableTextIconCell()
{
  result = qword_27C81F698;
  if (!qword_27C81F698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20D0290D8(char a1)
{
  v2 = v1;
  v4 = [v1 textField];
  v5 = OBJC_IVAR___HUEditableTextIconCell_item;
  swift_beginAccess();
  v6 = *&v1[v5];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = [v6 latestResults];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = sub_20D567758();

  v10 = sub_20D567838();
  if (!*(v9 + 16))
  {

    goto LABEL_8;
  }

  v12 = sub_20CEED668(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_20CED43FC(*(v9 + 56) + 32 * v12, v33);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v15 = sub_20D5677F8();

LABEL_10:
  [v4 setPlaceholder_];

  v16 = sub_20D028A84();
  v17 = *&v2[v5];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = [v17 latestResults];
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = sub_20D567758();

  v21 = sub_20D567838();
  if (!*(v20 + 16))
  {

    goto LABEL_18;
  }

  v23 = sub_20CEED668(v21, v22);
  v25 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_18:

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  sub_20CED43FC(*(v20 + 56) + 32 * v23, v33);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
  if (swift_dynamicCast())
  {
    v26 = v32;
  }

  else
  {
    v26 = 0;
  }

LABEL_20:
  v27 = OBJC_IVAR___HUEditableTextIconCell_displayStyle;
  swift_beginAccess();
  [v16 updateWithIconDescriptor:v26 displayStyle:*&v2[v27] animated:a1 & 1];

  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F650);
  v28 = *(sub_20D566058() - 8);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20D5BC410;
  sub_20D028B18(v30 + v29);
  return sub_20D568268();
}

uint64_t sub_20D0294A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F650);
  v0 = *(sub_20D566058() - 8);
  v1 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20D5BC410;
  sub_20D028B18(v2 + v1);
  return v2;
}

id sub_20D02955C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for EditableTextIconCell();
  result = objc_msgSendSuper2(&v18, sel_updateConstraints);
  v2 = OBJC_IVAR___HUEditableTextIconCell_iconConstraints;
  if (!*&v0[OBJC_IVAR___HUEditableTextIconCell_iconConstraints])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20D5BECD0;
    v4 = sub_20D028A84();
    v5 = [v4 heightAnchor];

    v6 = OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconView;
    v7 = [*&v0[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconView] widthAnchor];
    v8 = [v5 constraintEqualToAnchor_];

    *(v3 + 32) = v8;
    v9 = sub_20D028A98();
    v10 = [v9 centerXAnchor];

    v11 = [*&v0[v6] centerXAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v3 + 40) = v12;
    v13 = [*&v0[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconContainerView] centerYAnchor];
    v14 = [*&v0[v6] centerYAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v3 + 48) = v15;
    v16 = objc_opt_self();
    sub_20CF0AC18();
    v17 = sub_20D567A58();
    [v16 activateConstraints_];

    *&v0[v2] = v3;
  }

  return result;
}

id EditableTextIconCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EditableTextIconCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR___HUEditableTextIconCell_item] = 0;
  *&v4[OBJC_IVAR___HUEditableTextIconCell_displayStyle] = 1;
  *&v4[OBJC_IVAR___HUEditableTextIconCell_iconConstraints] = 0;
  *&v4[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconView] = 0;
  *&v4[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconContainerView] = 0;
  v9 = OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconAccessory;
  v10 = sub_20D566058();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for EditableTextIconCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id EditableTextIconCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id EditableTextIconCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___HUEditableTextIconCell_item] = 0;
  *&v1[OBJC_IVAR___HUEditableTextIconCell_displayStyle] = 1;
  *&v1[OBJC_IVAR___HUEditableTextIconCell_iconConstraints] = 0;
  *&v1[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconView] = 0;
  *&v1[OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconContainerView] = 0;
  v3 = OBJC_IVAR___HUEditableTextIconCell____lazy_storage___iconAccessory;
  v4 = sub_20D566058();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EditableTextIconCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id EditableTextIconCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditableTextIconCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20D029B68()
{
  sub_20D029DE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20D029DE0()
{
  if (!qword_27C81F6A8)
  {
    sub_20D566058();
    v0 = sub_20D568538();
    if (!v1)
    {
      atomic_store(v0, &qword_27C81F6A8);
    }
  }
}

uint64_t sub_20D029E38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D029EA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20D029F10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id HUDashboardViewController.homeKitObject(with:)()
{
  v1 = [v0 itemManager];
  v2 = [v1 home];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_20D5637C8();
  v4 = [v2 hf:v3 serviceWithIdentifier:?];

  if (!v4)
  {
    v5 = sub_20D5637C8();
    v4 = [v2 hf:v5 serviceGroupWithIdentifier:?];

    if (!v4)
    {
      v6 = sub_20D5637C8();
      v4 = [v2 hf:v6 accessoryWithIdentifier:?];

      if (!v4)
      {
        v7 = sub_20D5637C8();
        v4 = [v2 hf:v7 mediaSystemWithIdentifier:?];

        if (!v4)
        {
          v8 = sub_20D5637C8();
          v4 = [v2 hf:v8 cameraProfileWithIdentifier:?];
        }
      }
    }
  }

  return v4;
}

uint64_t HUDashboardViewController.shouldShowAccessoryControl(for:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = 1;
  if (!swift_dynamicCastObjCProtocolConditional())
  {
    return 0;
  }

  return v1;
}

uint64_t HUDashboardViewController.accessoryControlViewController(for:tileItem:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v5 = swift_task_alloc();
  v3[8] = v5;
  v6 = sub_20D563E88();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_20D567C18();
  v3[14] = sub_20D567C08();
  type metadata accessor for DataModelAccessoryControlViewController(0);
  v7 = swift_task_alloc();
  v3[15] = v7;
  *v7 = v3;
  v7[1] = sub_20D02A488;

  return static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v5, a1);
}

uint64_t sub_20D02A488()
{

  v1 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D02A5C4, v1, v0);
}

uint64_t sub_20D02A5C4()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D02A86C(v0[8]);
    v4 = 0;
  }

  else
  {
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[6];
    v24 = v0[5];
    (*(v8 + 32))(v6, v0[8], v7);
    type metadata accessor for ItemCollectionViewControlsTransitionHelper();
    v10 = swift_allocObject();
    v11 = v10 + qword_27C81D6C0;
    *(v10 + qword_27C81D6C0 + 8) = 0;
    swift_unknownObjectWeakInit();
    v12 = v10 + qword_27C81D6D0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 1;
    v13 = qword_27C81D6D8;
    v14 = sub_20D5655D8();
    (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
    swift_beginAccess();
    *(v11 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
    swift_unknownObjectWeakAssign();
    *(v10 + qword_27C81D6C8) = v9;
    v15 = v9;
    v16 = sub_20D565658();
    (*(v8 + 16))(v5, v6, v7);
    v17 = objc_allocWithZone(type metadata accessor for DashboardAccessoryControlViewController(0));

    v18 = sub_20CFABB5C(v5, v24, v16);
    v4 = v18;
    v19 = v0[12];
    v20 = v0[9];
    v21 = v0[10];
    if (v18)
    {
      [v18 setTransitioningDelegate_];

      (*(v21 + 8))(v19, v20);
    }

    else
    {
      (*(v21 + 8))(v0[12], v0[9]);
    }
  }

  v22 = v0[1];

  return v22(v4);
}

uint64_t sub_20D02A86C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20D02AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D02AB00, v6, v5);
}

uint64_t sub_20D02AB00()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v10 = v0[2];
  v9 = v0[3];

  return HUDashboardViewController.accessoryControlViewController(for:tileItem:)(v10, v9);
}

uint64_t sub_20D02ABCC(void *a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v7 = *(v9 + 8);

  return v7();
}

void HUDashboardViewController.configure(accessoryControlViewController:)(void *a1)
{
  v7.super_class = HUDashboardViewController;
  objc_msgSendSuper2(&v7, sel_configureWithAccessoryControlViewController_, a1);
  swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (v2)
  {
    if (a1)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 120);
      v6 = a1;
      v5(0, ObjectType, v3);
    }
  }
}

void sub_20D02AF54(SEL *a1, SEL *a2)
{
  v10.super_class = HUDashboardViewController;
  objc_msgSendSuper2(&v10, *a1);
  v4 = [v2 navigationController];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 filterBarController];
      v8 = [v7 itemManager];

      v9 = sub_20D5677F8();
      [v8 *a2];

      v5 = v9;
    }
  }
}

Swift::Void __swiftcall HUDashboardViewController.refreshTileHelper()()
{
  v1 = v0;
  v2 = [v0 presentedViewController];
  if (v2)
  {
    v23 = v2;
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      v22 = sub_20CFA8294(ObjectType, v4);
      v6 = v22 + qword_27C81D6C0;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_20D02B5F0();
          v7 = v0;
          v8 = sub_20D5683F8();
          swift_unknownObjectRelease();

          if (v8)
          {
            goto LABEL_17;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v6 + 8);
        v10 = swift_getObjectType();
        v11 = qword_27C81D6C8;
        swift_beginAccess();
        v12 = *(v9 + 24);
        v13 = *(v22 + v11);
        v12(0, v13, v10, v9);

        swift_unknownObjectRelease();
      }

      *(v6 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
      swift_unknownObjectWeakAssign();
      v14 = sub_20D02FA84(v23, v5, v1);
      if (v14)
      {
        v15 = *(v5 + 16);
        v16 = v14;
        v15();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v6 + 8);
        v18 = swift_getObjectType();
        v19 = qword_27C81D6C8;
        swift_beginAccess();
        v20 = *(v17 + 24);
        v21 = *(v22 + v19);
        v20(1, v21, v18, v17);

        swift_unknownObjectRelease();
LABEL_18:

        return;
      }

LABEL_17:

      goto LABEL_18;
    }
  }
}

id HUDashboardViewController.animationController(forDismissed:)()
{
  v1 = [v0 accessoryControlAnimator];
  v1[OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType] = 1;

  v2 = [v0 accessoryControlAnimator];

  return v2;
}

id HUDashboardViewController.interactionControllerForPresentation(using:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75828]) init];
  [v0 setWantsInteractiveStart_];
  return v0;
}

unint64_t sub_20D02B5F0()
{
  result = qword_27C81F6D8;
  if (!qword_27C81F6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C81F6D8);
  }

  return result;
}

id sub_20D02B63C()
{
  v1 = [v0 accessoryControlAnimator];
  v1[OBJC_IVAR___HUAccessoryControlAnimator_currentTransitionType] = 0;

  v2 = [v0 accessoryControlAnimator];
  swift_unknownObjectWeakAssign();

  v3 = [v0 accessoryControlAnimator];

  return v3;
}

uint64_t sub_20D02B6E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF934C;

  return sub_20D02AA64(v2, v3, v5, v4);
}

Swift::String_optional __swiftcall HUGridServiceCell.prefixString()()
{
  v1 = [v0 serviceTextView];
  v2 = [v1 shouldShowRoomName];

  if (v2 && (v3 = [v0 serviceTextView], v4 = objc_msgSend(v3, sel_serviceNameComponents), v3, v4) && (v5 = objc_msgSend(v4, sel_roomName), v4, v5))
  {
    v6 = sub_20D567838();
    v8 = v7;

    v9 = v8;
    v10 = v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall HUGridServiceCell.primaryString()()
{
  v1 = [v0 serviceTextView];
  v2 = [v1 serviceNameComponents];

  if (v2)
  {
    v3 = [v2 serviceName];

    v2 = sub_20D567838();
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2;
  v7 = v5;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String_optional __swiftcall HUGridServiceCell.secondaryString()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

NSAttributedString_optional __swiftcall HUGridServiceCell.secondaryAttributedString()()
{
  v0 = 0;
  result.value.super.isa = v0;
  return result;
}

__C::CGRect __swiftcall HUGridServiceCell.iconViewTileFrame()()
{
  v1 = [v0 iconView];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

__C::CGRect __swiftcall HUGridServiceCell.prefixLabelTileFrame()()
{
  v1 = [v0 serviceTextView];
  v2 = [v1 shouldShowRoomName];

  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  if (v2)
  {
    v7 = [v0 serviceTextView];
    [v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [v0 serviceTextView];
    [v14 topToFirstBaselineDistance];
    v6 = v15;

    v5 = v13;
    v4 = v11;
    v3 = v9;
  }

  v16 = v6;
  result.size.height = v16;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__C::CGRect __swiftcall HUGridServiceCell.primaryLabelTileFrame()()
{
  v1 = [v0 serviceTextView];
  v2 = [v1 shouldShowRoomName];

  v3 = [v0 serviceTextView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [v0 serviceTextView];
  v11 = v10;
  if (v2)
  {
    [v10 lineHeight];
    v13 = v12;

    v7 = v7 + v13;
    v11 = [v0 serviceTextView];
    v14 = &selRef_lastBaselineToBottomDistance;
  }

  else
  {
    v14 = &selRef_topToFirstBaselineDistance;
  }

  [v11 *v14];
  v16 = v15;

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

__C::CGRect __swiftcall HUGridServiceCell.secondaryLabelTileFrame()()
{
  v0 = 0.0;
  v1 = 0.0;
  v2 = 0.0;
  v3 = 0.0;
  result.size.height = v3;
  result.size.width = v2;
  result.origin.y = v1;
  result.origin.x = v0;
  return result;
}

UIFont_optional __swiftcall HUGridServiceCell.prefixLabelFont()()
{
  v0 = sub_20D02BF50(&selRef_font);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall HUGridServiceCell.prefixLabelTextColor()()
{
  v0 = sub_20D02BF50(&selRef_textColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_20D02BF50(SEL *a1)
{
  v3 = [v1 serviceTextView];
  v4 = [v3 *a1];

  return v4;
}

id sub_20D02BFA8(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 serviceTextView];
  v6 = [v5 *a3];

  return v6;
}

__C::CGRect __swiftcall HUGridServiceCell.tileFrame()()
{
  [v0 frame];
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

void HUGridServiceCell.backgroundCornerRadius()()
{
  v1 = [v0 layoutOptions];
  if (v1)
  {
    v2 = v1;
    [v1 cellCornerRadius];
  }
}

id HUGridServiceCell.baseIconViewConfiguration()@<X0>(uint64_t a1@<X8>)
{
  result = [v1 item];
  if (!result)
  {
    goto LABEL_10;
  }

  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v4 = *MEMORY[0x277D13E88];
  v5 = result;
  MEMORY[0x20F31D7A0](v59, v4);
  if (!v59[3])
  {

    sub_20CEF928C(v60, &unk_27C81EB60);
    v9 = &qword_27C81BF00;
    v10 = v59;
LABEL_9:
    result = sub_20CEF928C(v10, v9);
LABEL_10:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81EB70);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v9 = &unk_27C81EB60;
    v10 = v60;
    goto LABEL_9;
  }

  v6 = v58;
  sub_20CFDAF28(v60, &v40);
  v7 = v5;
  sub_20CFD8D74(v7, 3, &v40, &v56);
  MEMORY[0x20F31D7A0](v55, v4);
  if (!v55[3])
  {
    sub_20CEF928C(v55, &qword_27C81BF00);
    goto LABEL_13;
  }

  sub_20CFF74CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = 1;
LABEL_14:
  v33 = v56;
  *v34 = v57[0];
  *&v34[10] = *(v57 + 10);
  sub_20CFD7ED4(&v56, &v40);
  v30 = v6;
  sub_20CFD910C(v8, v6, &v33, &v40);
  sub_20CFDAF98(&v56);
  v31 = v7;

  sub_20CEF928C(v60, &unk_27C81EB60);
  v11 = v40;
  v12 = v41;
  v14 = *(&v42 + 1);
  v13 = v42;
  v15 = *v43;
  v16 = *&v43[8];
  v17 = *&v43[16];
  v64 = v56;
  v65[0] = v57[0];
  *(v65 + 10) = *(v57 + 10);
  if ((*&v43[8] & 0x8000000000000000) != 0)
  {
    *&v43[8] &= ~0x8000000000000000;
    sub_20CFFCA34(&v40, &v33);
    sub_20CFD9DD8(v11, v12, v13, v14, v15, v16);
    v16 &= 0x8000000000000100;
    v13 &= 1u;
  }

  v28 = v15;
  v29 = v17;
  v33 = v8;
  *v34 = v64;
  *&v34[16] = v65[0];
  *&v34[26] = *(v65 + 10);
  *&v34[42] = v62;
  *&v34[46] = v63;
  *&v35 = v30;
  *(&v35 + 1) = 0x4045000000000000;
  *&v36 = v11;
  *(&v36 + 1) = v12;
  *&v37 = v13;
  *(&v37 + 1) = v14;
  *&v38 = v15;
  *(&v38 + 1) = v16;
  v39 = v17;
  v18 = type metadata accessor for BaseIconView.__Configuration();
  v19 = objc_allocWithZone(v18);
  v20 = &v19[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
  *v20 = v33;
  v21 = v36;
  v22 = v37;
  v23 = v38;
  *(v20 + 16) = v39;
  *(v20 + 6) = v22;
  *(v20 + 7) = v23;
  *(v20 + 5) = v21;
  v24 = *v34;
  v25 = *&v34[16];
  v26 = v35;
  *(v20 + 3) = *&v34[32];
  *(v20 + 4) = v26;
  *(v20 + 1) = v24;
  *(v20 + 2) = v25;
  sub_20CFDAFC8(&v33, &v40);
  v32.receiver = v19;
  v32.super_class = v18;
  v27 = objc_msgSendSuper2(&v32, sel_init);
  *(a1 + 24) = v18;

  *a1 = v27;
  v40 = v8;
  v41 = 0;
  v42 = v64;
  *v43 = v65[0];
  *&v43[10] = *(v65 + 10);
  v44 = v62;
  v45 = v63;
  v46 = v30;
  v47 = 0x4045000000000000;
  v48 = v11;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = v28;
  v53 = v16;
  v54 = v29;
  return sub_20CFF7478(&v40);
}

UIColor_optional __swiftcall HUGridServiceCell.prefixLabelOnTextColor()()
{
  v0 = sub_20D02C670(&selRef_blackColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall HUGridServiceCell.prefixLabelOffTextColor()()
{
  v0 = sub_20D02C670(&selRef_whiteColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id sub_20D02C670(SEL *a1)
{
  v1 = [objc_opt_self() *a1];

  return v1;
}

id sub_20D02C6B8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

id sub_20D02C760(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();

  return v3;
}

id HUControllableItemCollectionViewController.presentAccessorySettings(for:)(uint64_t a1)
{
  v2 = [v1 presentAccessorySettingsForItem:a1 secondaryDestination:0];

  return v2;
}

id HUControllableItemCollectionViewController.presentAccessorySettings(for:secondaryDestination:)(void *a1, uint64_t a2)
{
  if (([objc_opt_self() isSpringBoard] & 1) == 0)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6 = _s6HomeUI22AccessoryDetailsRouterC11detailsView3for20navigationController7dismissSo33HUDetailsPresentationDelegateHost_So06UIViewJ0CXcSgSo6HFItemC_So012UINavigationJ0CSgyycSgtFZ_0(a1, 0, sub_20CFAE608, v5);

    if (v6)
    {
      v7 = sub_20D567EA8();
      if (qword_27C81A320 != -1)
      {
        swift_once();
      }

      v8 = qword_27C8382B8;
      if (os_log_type_enabled(qword_27C8382B8, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *&aBlock = v11;
        *v9 = 136315906;
        *(v9 + 4) = sub_20CEE913C(0xD000000000000049, 0x800000020D5D57D0, &aBlock);
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D5820, &aBlock);
        *(v9 + 22) = 2112;
        *(v9 + 24) = v6;
        *(v9 + 32) = 2112;
        *(v9 + 34) = a1;
        *v10 = v6;
        v10[1] = a1;
        v12 = v6;
        v13 = a1;
        _os_log_impl(&dword_20CEB6000, v8, v7, "%s - %s Using accessory details view controller %@ for item %@", v9, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE60);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v10, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F31FC70](v11, -1, -1);
        MEMORY[0x20F31FC70](v9, -1, -1);
      }

      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
        v49 = swift_allocObject();
        *(v49 + 16) = v2;
        *(v49 + 24) = v6;
        v77 = sub_20D03466C;
        v78 = v49;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v75 = sub_20CF13714;
        v76 = &block_descriptor_30;
        v50 = _Block_copy(&aBlock);
        v51 = objc_opt_self();
        v52 = v2;
        v48 = [v51 futureWithBlock_];
        _Block_release(v50);

        return v48;
      }

      v15 = v14;
      v16 = v6;
      v17 = [v2 unwrappedItemForAccessoryControls_];
      if (v17)
      {
        v18 = v17;
        v72 = &unk_28251AC90;
        v73 = &unk_28251B0C8;
        if (swift_dynamicCastObjCProtocolConditional())
        {
          [v15 setRequiresPresentingViewControllerDismissal_];
          [v15 setPresentationDelegate_];
          result = [v15 tableView];
          if (result)
          {
            v20 = result;
            [result setBounces_];

            v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
            v22 = swift_allocObject();
            *(v22 + 16) = v2;
            *(v22 + 24) = v21;
            v77 = sub_20D0346C4;
            v78 = v22;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v75 = sub_20CF13714;
            v76 = &block_descriptor_9;
            v23 = _Block_copy(&aBlock);
            v24 = objc_opt_self();
            v25 = v2;
            v26 = v21;
            v27 = [v24 futureWithBlock_];
            _Block_release(v23);

            if (a2 == 3)
            {
              v28 = swift_allocObject();
              *(v28 + 16) = 3;
              *(v28 + 24) = v15;
              v77 = sub_20D034704;
              v78 = v28;
              *&aBlock = MEMORY[0x277D85DD0];
              *(&aBlock + 1) = 1107296256;
              v75 = sub_20D02C760;
              v76 = &block_descriptor_15;
              v29 = _Block_copy(&aBlock);
              v30 = v16;

              v31 = [v27 flatMap_];
              _Block_release(v29);

              return v31;
            }

            else
            {

              return v27;
            }
          }

          else
          {
            __break(1u);
          }

          return result;
        }
      }

      v40 = [objc_opt_self() futureWithNoResult];
      v48 = [v40 asGeneric];

LABEL_35:
      return v48;
    }

    v34 = sub_20D567EA8();
    if (qword_27C81A320 != -1)
    {
      swift_once();
    }

    v35 = qword_27C8382B8;
    if (os_log_type_enabled(qword_27C8382B8, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&aBlock = v38;
      *v36 = 136315650;
      *(v36 + 4) = sub_20CEE913C(0xD000000000000049, 0x800000020D5D57D0, &aBlock);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D5820, &aBlock);
      *(v36 + 22) = 2112;
      *(v36 + 24) = a1;
      *v37 = a1;
      v39 = a1;
      _os_log_impl(&dword_20CEB6000, v35, v34, "%s - %s Failed to get accessory details view controller for item (%@)", v36, 0x20u);
      sub_20CEF928C(v37, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v37, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v38, -1, -1);
      MEMORY[0x20F31FC70](v36, -1, -1);
    }

    v40 = [objc_opt_self() futureWithNoResult];
    v41 = [v40 asGeneric];
LABEL_34:
    v48 = v41;
    goto LABEL_35;
  }

  MEMORY[0x20F31D790](&v70, *MEMORY[0x277D13E78]);
  if (v71)
  {
    sub_20CEC80B0(&v70, &aBlock);
  }

  else
  {
    MEMORY[0x20F31D790](&aBlock, *MEMORY[0x277D13E68]);
    if (v71)
    {
      sub_20CEF928C(&v70, &qword_27C81BF00);
    }
  }

  if (!v76)
  {
    sub_20CEF928C(&aBlock, &qword_27C81BF00);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v42 = sub_20D567EA8();
    if (qword_27C81A320 != -1)
    {
      swift_once();
    }

    v43 = qword_27C8382B8;
    if (os_log_type_enabled(qword_27C8382B8, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&aBlock = v46;
      *v44 = 136315650;
      *(v44 + 4) = sub_20CEE913C(0xD000000000000049, 0x800000020D5D57D0, &aBlock);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D5820, &aBlock);
      *(v44 + 22) = 2112;
      *(v44 + 24) = a1;
      *v45 = a1;
      v47 = a1;
      _os_log_impl(&dword_20CEB6000, v43, v42, "%s - %s Not presenting alert in Control Center for item %@ with missing error", v44, 0x20u);
      sub_20CEF928C(v45, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v45, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F31FC70](v46, -1, -1);
      MEMORY[0x20F31FC70](v44, -1, -1);
    }

    v40 = [objc_opt_self() futureWithNoResult];
    v41 = [v40 asGeneric];
    goto LABEL_34;
  }

  v32 = v70;
  MEMORY[0x20F31D790](&aBlock, *MEMORY[0x277D13E40]);
  if (v76)
  {
    if (swift_dynamicCast())
    {
      v33 = *(&v70 + 1);
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    sub_20CEF928C(&aBlock, &qword_27C81BF00);
    v33 = 0;
  }

  v53 = v2;
  v54 = sub_20D567EC8();
  if (qword_27C81A320 != -1)
  {
    swift_once();
  }

  v55 = qword_27C8382B8;
  if (os_log_type_enabled(qword_27C8382B8, v54))
  {
    v69 = v33;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *&aBlock = v58;
    *v56 = 136315906;
    *(v56 + 4) = sub_20CEE913C(0xD000000000000049, 0x800000020D5D57D0, &aBlock);
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_20CEE913C(0xD000000000000033, 0x800000020D5D5820, &aBlock);
    *(v56 + 22) = 2112;
    *(v56 + 24) = a1;
    *v57 = a1;
    *(v56 + 32) = 2080;
    v59 = a1;
    *(v56 + 34) = sub_20CEE913C(v32, *(&v32 + 1), &aBlock);
    _os_log_impl(&dword_20CEB6000, v55, v54, "%s - %s Presenting alert in Control Center for item %@ with error %s", v56, 0x2Au);
    sub_20CEF928C(v57, &unk_27C81BE60);
    MEMORY[0x20F31FC70](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F31FC70](v58, -1, -1);
    v60 = v56;
    v33 = v69;
    MEMORY[0x20F31FC70](v60, -1, -1);
  }

  v61 = sub_20D5677F8();

  if (v33)
  {
    v62 = sub_20D5677F8();
  }

  else
  {
    v62 = 0;
  }

  v63 = [objc_opt_self() alertControllerWithTitle:v61 message:v62 preferredStyle:1];

  v64 = sub_20D5677F8();
  v65 = HULocalizedString(v64);

  if (!v65)
  {
    sub_20D567838();
    v65 = sub_20D5677F8();
  }

  v66 = [objc_opt_self() actionWithTitle:v65 style:0 handler:0];

  [v63 addAction_];
  [v53 presentViewController:v63 animated:1 completion:0];
  v67 = [objc_opt_self() futureWithNoResult];
  v68 = [v67 asGeneric];

  return v68;
}

id sub_20D02D620(int a1, uint64_t a2, id a3)
{
  if (a2 == 3)
  {
  }

  v3 = [objc_opt_self() futureWithNoResult];
  v4 = [v3 asGeneric];

  return v4;
}

void sub_20D02D6A4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v14[4] = a5;
  v14[5] = v11;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_20CFFFE8C;
  v14[3] = a6;
  v12 = _Block_copy(v14);
  v13 = a1;

  [a2 presentViewController:a3 animated:1 completion:v12];
  _Block_release(v12);
}

id HUControllableItemCollectionViewController.presentAccessoryControls(for:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = aBlock - v7;
  v9 = [v2 unwrappedItemForAccessoryControls_];
  if (v9)
  {
    v10 = v9;
    v11 = sub_20D567C58();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v2;
    v12[5] = v10;
    v12[6] = a1;
    v12[7] = ObjectType;
    v13 = v2;
    v14 = v10;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F740);
    v16 = sub_20D5659E8();

    sub_20CEF928C(v8, &qword_27C81C610);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = ObjectType;
    aBlock[4] = sub_20D0347CC;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CFF02FC;
    aBlock[3] = &block_descriptor_25;
    v18 = _Block_copy(aBlock);
    v19 = v13;

    v20 = [v16 flatMap_];
    _Block_release(v18);

    return v20;
  }

  else
  {
    v22 = sub_20D567EC8();
    if (qword_27C81A308 != -1)
    {
      swift_once();
    }

    v23 = qword_27C8382A8;
    if (os_log_type_enabled(qword_27C8382A8, v22))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v24 = 136315394;
      v27 = sub_20D568E18();
      v29 = sub_20CEE913C(v27, v28, aBlock);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      *(v24 + 14) = a1;
      *v25 = a1;
      v30 = a1;
      _os_log_impl(&dword_20CEB6000, v23, v22, "%s+Controls: Failed to unwrap item %@", v24, 0x16u);
      sub_20CEF928C(v25, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F31FC70](v26, -1, -1);
      MEMORY[0x20F31FC70](v24, -1, -1);
    }

    v31 = [objc_opt_self() futureWithNoResult];
    v32 = [v31 asGeneric];

    return v32;
  }
}

uint64_t sub_20D02DBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  return MEMORY[0x2822009F8](sub_20D02DBF0, 0, 0);
}

uint64_t sub_20D02DBF0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_20D02DD20;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F830);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20D0373C8;
  v0[13] = &block_descriptor_57;
  v0[14] = v4;
  [v3 accessoryControlViewControllerFor:v2 tileItem:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20D02DD20()
{

  return MEMORY[0x2822009F8](sub_20D02DE00, 0, 0);
}

uint64_t sub_20D02DE00()
{
  v17 = v0;
  if (v0[18])
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = sub_20D567EC8();
    if (qword_27C81A308 != -1)
    {
      swift_once();
    }

    v4 = qword_27C8382A8;
    if (os_log_type_enabled(qword_27C8382A8, v3))
    {
      v5 = v0[20];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v6 = 136315394;
      v9 = sub_20D568E18();
      v11 = sub_20CEE913C(v9, v10, &v16);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2112;
      *(v6 + 14) = v5;
      *v7 = v5;
      v12 = v5;
      _os_log_impl(&dword_20CEB6000, v4, v3, "%s+Controls: Device not found for item %@", v6, 0x16u);
      sub_20CEF928C(v7, &unk_27C81BE60);
      MEMORY[0x20F31FC70](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x20F31FC70](v8, -1, -1);
      MEMORY[0x20F31FC70](v6, -1, -1);
    }

    v13 = sub_20D565478();
    sub_20D034FDC();
    swift_allocError();
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D14F48], v13);
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

id sub_20D02E080(void *a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D2C900]) init];
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_20D567C18();
  v11 = a2;
  v12 = a1;
  v13 = v9;
  v14 = sub_20D567C08();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v11;
  v15[5] = v12;
  v15[6] = v13;
  v15[7] = a3;
  sub_20CF18960(0, 0, v8, &unk_20D5C5268, v15);

  return v13;
}

uint64_t sub_20D02E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_20D567C18();
  v7[12] = sub_20D567C08();
  v9 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D02E290, v9, v8);
}

id sub_20D02E290()
{
  v19 = v0;
  v1 = sub_20D567EC8();
  if (qword_27C81A308 != -1)
  {
    swift_once();
  }

  v2 = qword_27C8382A8;
  if (os_log_type_enabled(qword_27C8382A8, v1))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v18 = v4;
    *v3 = 136315138;
    v5 = sub_20D568E18();
    v7 = sub_20CEE913C(v5, v6, &v18);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_20CEB6000, v2, v1, "%s+Controls: Configuring and presenting control view controller", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x20F31FC70](v4, -1, -1);
    MEMORY[0x20F31FC70](v3, -1, -1);
  }

  v8 = v0[8];
  v9 = v0[9];
  [v8 configureWithAccessoryControlViewController_];
  result = [v8 hu:v9 presentPreloadableViewController:objc_msgSend(v8 animated:sel_controlsWantSystemPresentationAnimations)];
  if (result)
  {
    v11 = result;
    v12 = v0[10];

    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v0[6] = sub_20D034FA0;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_20D0EB4F0;
    v0[5] = &block_descriptor_54;
    v14 = _Block_copy(v0 + 2);
    v15 = v12;

    v16 = [v11 addCompletionBlock_];
    _Block_release(v14);

    v17 = v0[1];

    return v17();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void HUControllableItemCollectionViewController.configure(accessoryControlViewController:)(void *a1)
{
  [a1 setPresentationDelegate_];
  [a1 setModalPresentationStyle_];
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];

    swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6 && a1)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = a1;
      (*(v7 + 96))([v1 controlsWantSystemPresentationAnimations], ObjectType, v7);
      (*(v7 + 120))(1, ObjectType, v7);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t HUControllableItemCollectionViewController.accessoryControlViewController(for:tileItem:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F6D0);
  v5 = swift_task_alloc();
  v3[8] = v5;
  v6 = sub_20D563E88();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = sub_20D567C18();
  v3[14] = sub_20D567C08();
  v3[15] = type metadata accessor for DataModelAccessoryControlViewController(0);
  v7 = swift_task_alloc();
  v3[16] = v7;
  *v7 = v3;
  v7[1] = sub_20D02E8CC;

  return static DataModelAccessoryControlViewController.findDataModelObjectIdentifier(with:)(v5, a1);
}

uint64_t sub_20D02E8CC()
{

  v1 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D02EA08, v1, v0);
}

uint64_t sub_20D02EA08()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20CEF928C(v0[8], &qword_27C81F6D0);
    v4 = 0;
  }

  else
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[6];
    v19 = v0[5];
    v20 = v0[15];
    (*(v8 + 32))(v5, v0[8], v7);
    type metadata accessor for ItemCollectionViewControlsTransitionHelper();
    v10 = swift_allocObject();
    v11 = v10 + qword_27C81D6C0;
    *(v10 + qword_27C81D6C0 + 8) = 0;
    swift_unknownObjectWeakInit();
    v12 = v10 + qword_27C81D6D0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 1;
    v13 = qword_27C81D6D8;
    v14 = sub_20D5655D8();
    (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
    swift_beginAccess();
    *(v11 + 8) = &protocol witness table for HUControllableItemCollectionViewController;
    swift_unknownObjectWeakAssign();
    *(v10 + qword_27C81D6C8) = v9;
    v15 = v9;
    v16 = sub_20D565658();
    (*(v8 + 16))(v6, v5, v7);
    objc_allocWithZone(v20);
    v4 = DataModelAccessoryControlViewController.init(identifier:item:tileHelper:)(v6, v19, v16);
    (*(v8 + 8))(v5, v7);
  }

  v17 = v0[1];

  return v17(v4);
}

uint64_t sub_20D02EE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_20D567C18();
  v4[6] = sub_20D567C08();
  v6 = sub_20D567BA8();

  return MEMORY[0x2822009F8](sub_20D02EEA0, v6, v5);
}

uint64_t sub_20D02EEA0()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_20D02ABCC;
  v10 = v0[2];
  v9 = v0[3];

  return HUControllableItemCollectionViewController.accessoryControlViewController(for:tileItem:)(v10, v9);
}

uint64_t HUControllableItemCollectionViewController.unwrappedForAccessoryControls(item:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 sourceItem];
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  result = swift_dynamicCastObjCProtocolConditional();
  if (!result)
  {

    return 0;
  }

  return result;
}

Swift::Void __swiftcall HUControllableItemCollectionViewController.refreshTileHelper()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v8 = v1;
    swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      v4 = sub_20D02FA84(v8, v2, v0);
      if (v4)
      {
        v5 = v4;
        swift_getObjectType();
        v6 = *(v3 + 16);
        v7 = v5;
        v6();
      }
    }
  }
}

uint64_t HUControllableItemCollectionViewController.controlsWantSystemPresentationAnimations.getter()
{
  result = [v0 hasCustomControlPresentationAnimations];
  if (result)
  {
    if ([objc_opt_self() isAnIPhone])
    {
      return 1;
    }

    else
    {
      return [objc_opt_self() isHomeControlService];
    }
  }

  return result;
}

uint64_t sub_20D02F344(uint64_t a1)
{
  *(v1 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81E180);
  *(v1 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20D02F3E0, 0, 0);
}

uint64_t sub_20D02F3E0()
{
  sub_20D565E08();
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_20D02F564;
    v4 = v0[8];

    return MEMORY[0x28216F8D8](v4, v1, v2);
  }

  else
  {
    v5 = v0[8];
    sub_20CEF928C((v0 + 2), &qword_27C81F828);
    v6 = sub_20D5641B8();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_20CEF928C(v5, &qword_27C81E180);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_20D02F564()
{
  v1 = *(*v0 + 64);

  sub_20CEF928C(v1, &qword_27C81E180);

  return MEMORY[0x2822009F8](sub_20D02F68C, 0, 0);
}

uint64_t sub_20D02F68C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HUControllableItemCollectionViewController.itemForAccessoryControls(with:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 sourceItem];
  }

  else
  {
    v3 = a1;
  }

  v4 = v3;
  result = swift_dynamicCastObjCProtocolConditional();
  if (!result)
  {

    return 0;
  }

  return result;
}

Swift::Bool __swiftcall HUControllableItemCollectionViewController.shouldShowAccessoryControl(for:)(HFItem *a1)
{
  if ([objc_opt_self() isHomeNotification])
  {
    goto LABEL_2;
  }

  sub_20D565D18();
  if (swift_dynamicCastClass())
  {
LABEL_4:
    LOBYTE(v3) = 1;
    return v3;
  }

  v3 = [v1 itemForAccessoryControlsWithItem_];
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && [v5 isContainedWithinItemGroup] || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
  }

  else
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {

      goto LABEL_4;
    }

    v7 = [v6 accessory];
    v8 = [v7 hf_isSensorAccessory];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_2:
  LOBYTE(v3) = 0;
  return v3;
}

void *sub_20D02FA84(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_20CFA8294(ObjectType, a2);
  v7 = qword_27C81D6C8;
  swift_beginAccess();
  v8 = *(v6 + v7);

  v9 = swift_dynamicCastObjCProtocolConditional();
  if (!v9 || (v10 = v9, v11 = v8, v12 = [a3 itemManager], v13 = objc_msgSend(v12, sel_allItems), v12, sub_20CECF940(0, &qword_281120AC0), sub_20CEF99B4(), v14 = sub_20D567D08(), v13, v15 = v11, LOBYTE(v13) = sub_20D04898C(v10, v14), v15, v15, , (v13 & 1) == 0))
  {
    v16 = (*(a2 + 8))(ObjectType, a2);
    v17 = [a3 itemManager];
    v18 = [v17 matchingItemForHomeKitObject_];

    swift_unknownObjectRelease();
    if (v18)
    {
      v10 = swift_dynamicCastObjCProtocolConditional();
      if (!v10)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

id HUControllableItemCollectionViewController.finishPresentation(_:animated:)(void *a1, char a2)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v5 = [a1 hu:objc_msgSend(v2 dismissViewControllerAnimated:sel_controlsWantSystemPresentationAnimations)];
  }

  else
  {
    v5 = [a1 hu:a2 & 1 dismissViewControllerAnimated:?];
  }

  return v5;
}

uint64_t HUControllableItemCollectionViewController.controlsPresentationStyle(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  if ([v2 isHomeApp] && (v3 = objc_msgSend(v2, sel_sharedInstance), v4 = objc_msgSend(v3, sel_isActive), v3, v4))
  {
    if (sub_20D02FF08())
    {
      sub_20D564F88();
    }

    else
    {
      sub_20D564F58();
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_20D564F98();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_20D02FF08()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3 && (v4 = [v3 rootViewController], v3, v4))
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5)
      {
        v6 = [v5 wantsAccessoryControlsCard];
      }

      else
      {
        v6 = 0;
      }

      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__C::CGRect __swiftcall HUControllableItemCollectionViewController.tileFrame(for:)(HFItem *a1)
{
  v2 = v1;
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v58 - v10;
  v12 = [v2 itemManager];
  v13 = [v12 indexPathForItem_];

  v14 = 0.0;
  if (!v13)
  {
    goto LABEL_13;
  }

  sub_20D563878();

  (*(v5 + 32))(v11, v7, v4);
  v15 = [v2 collectionView];
  if (!v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = sub_20D563868();
  v22 = [v20 cellForItemAtIndexPath_];

  if (!v22)
  {
    (*(v5 + 8))(v11, v4);
LABEL_13:
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v23 window];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 rootViewController];

    if (v26)
    {
      v27 = [v26 view];

      if (v27)
      {
        v28 = [v2 collectionView];
        if (v28)
        {
          v29 = v28;
          [v23 frame];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          [v29 convertRect:v27 toCoordinateSpace:{v31, v33, v35, v37}];
          v14 = v38;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          [v27 frame];
          Width = CGRectGetWidth(v59);
          v46 = [v2 collectionView];
          if (v46)
          {
            v47 = v46;
            v48 = [v46 traitCollection];

            v49 = [v48 layoutDirection];
            if (v49 == 1)
            {
              v60.origin.x = v14;
              v60.origin.y = v40;
              v60.size.width = v42;
              v60.size.height = v44;
              MaxX = CGRectGetMaxX(v60);

              (*(v5 + 8))(v11, v4);
              v19 = v44;
              v18 = v42;
              v17 = v40;
              v14 = Width - MaxX;
            }

            else
            {

              (*(v5 + 8))(v11, v4);
              v17 = v40;
              v18 = v42;
              v19 = v44;
            }

            goto LABEL_14;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }
  }

  [v23 frame];
  v14 = v51;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  (*(v5 + 8))(v11, v4);
  v19 = v57;
  v18 = v55;
  v17 = v53;
LABEL_14:
  v16 = v14;
LABEL_19:
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

id HUControllableItemCollectionViewController.backgroundCornerRadius(for:)(uint64_t a1)
{
  result = sub_20D03043C(a1);
  if (result)
  {
    [result backgroundCornerRadius];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_20D03043C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20D5638C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v18 - v10;
  v12 = [v2 itemManager];
  v13 = [v12 indexPathForItem_];

  if (v13)
  {
    sub_20D563878();

    (*(v5 + 32))(v11, v7, v4);
    result = [v2 collectionView];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = sub_20D563868();
    v17 = [v15 cellForItemAtIndexPath_];

    (*(v5 + 8))(v11, v4);
    if (v17)
    {
      v18[1] = &unk_2824C4B08;
      result = swift_dynamicCastObjCProtocolConditional();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall HUControllableItemCollectionViewController.set(hidden:for:)(Swift::Bool hidden, HFItem *a2)
{
  v3 = v2;
  v6 = sub_20D5638C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v20 - v12;
  v14 = [v3 itemManager];
  v15 = [v14 indexPathForItem_];

  if (v15)
  {
    sub_20D563878();

    (*(v7 + 32))(v13, v9, v6);
    v16 = [v3 collectionView];
    if (v16)
    {
      v17 = v16;
      v18 = sub_20D563868();
      v19 = [v17 cellForItemAtIndexPath_];

      if (v19)
      {
        [v19 setHidden_];
      }

      (*(v7 + 8))(v13, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void HUControllableItemCollectionViewController.containerSafeAreaInset()()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 window];

  if (v3)
  {
    v4 = [v3 rootViewController];

    if (v4)
    {
      v5 = [v4 view];

      if (v5)
      {
        [v5 safeAreaInsets];

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

Swift::Void __swiftcall HUControllableItemCollectionViewController.refreshCell(for:)(HFItem *a1)
{
  v3 = [v1 itemManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81D4B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20D5BC410;
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  v5 = a1;
  sub_20D5687F8();
  sub_20CEF83DC(inited);
  swift_setDeallocating();
  sub_20CEF90C0(inited + 32);
  v6 = sub_20D567CD8();
}

void sub_20D030A38(SEL *a1)
{
  v3 = [v1 itemManager];
  v4 = sub_20D5677F8();
  [v3 *a1];
}

void sub_20D030AD0(void *a1, uint64_t a2, SEL *a3)
{
  v6 = a1;
  v4 = [v6 itemManager];
  v5 = sub_20D5677F8();
  [v4 *a3];
}

id HUControllableItemCollectionViewController.controlsTransitionTileConfig(for:previousTileConfig:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F748);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F750);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v73 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16);
  v81 = &v73 - v17;
  v18 = sub_20D5654A8();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v83 = &v73 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81D6E0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v73 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F760);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v86 = &v73 - v29;
  v30 = sub_20D565528();
  v87 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v82 = &v73 - v34;
  v80 = v3;
  v35 = sub_20D03043C(a1);
  if (v35)
  {
    v36 = v35;
    v75 = a3;
    sub_20CEF9178(a2, v24, &qword_27C81D6E0);
    v37 = sub_20D5655D8();
    v38 = *(v37 - 8);
    v39 = (*(v38 + 48))(v24, 1, v37);
    v73 = v38;
    v74 = v37;
    if (v39 == 1)
    {
      sub_20CEF928C(v24, &qword_27C81D6E0);
      v40 = 1;
    }

    else
    {
      sub_20D565598();
      (*(v38 + 8))(v24, v37);
      v40 = 0;
    }

    v45 = v86;
    v44 = v87;
    (*(v87 + 56))(v27, v40, 1, v30);
    ObjectType = swift_getObjectType();
    sub_20D031454(a1, v27, ObjectType, v45);
    sub_20CEF928C(v27, &qword_27C81F760);
    if ((*(v44 + 48))(v45, 1, v30) == 1)
    {
      swift_unknownObjectRelease();
      sub_20CEF928C(v45, &qword_27C81F760);
      return (*(v73 + 56))(v75, 1, 1, v74);
    }

    v47 = v82;
    (*(v44 + 32))(v82, v45, v30);
    v48 = [v36 backgroundDisplayStyle];
    if (v48 > 2)
    {
      v49 = MEMORY[0x277D14F68];
    }

    else
    {
      v49 = qword_277DB6A58[v48];
    }

    v50 = v80;
    (*(v84 + 104))(v83, *v49, v85);
    [v36 backgroundCornerRadius];
    [v36 tileFrame];
    CGRectGetWidth(v89);
    sub_20D565508();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    result = [v50 collectionView];
    if (result)
    {
      v59 = result;
      v60 = [result traitCollection];

      v61 = [v60 layoutDirection];
      if (v61 == 1)
      {
        v62 = v30;
        v90.origin.x = v52;
        v90.origin.y = v54;
        v90.size.width = v56;
        v90.size.height = v58;
        CGRectGetMaxX(v90);
      }

      else
      {
        v62 = v30;
      }

      v63 = v81;
      v64 = v87;
      v65 = *(v87 + 16);
      v86 = v62;
      v65(v32, v47, v62);
      v80 = v32;
      sub_20D565518();
      sub_20D031CF8(v15);
      sub_20D032238(v15, v63);
      sub_20CEF928C(v15, &unk_27C81F750);
      sub_20D0324F0(v15);
      v66 = v79;
      sub_20D032238(v15, v79);
      sub_20CEF928C(v15, &unk_27C81F750);
      v67 = sub_20D565588();
      result = (*(*(v67 - 8) + 48))(v66, 1, v67);
      if (result != 1)
      {
        v68 = v77;
        sub_20D0329B4(v77);
        sub_20D032238(v68, v15);
        sub_20CEF928C(v68, &unk_27C81F750);
        sub_20D032EFC(v78);
        v70 = v83;
        v69 = v84;
        v71 = v85;
        (*(v84 + 16))(v76, v83, v85);
        v72 = v75;
        sub_20D565498();
        swift_unknownObjectRelease();
        (*(v69 + 8))(v70, v71);
        (*(v64 + 8))(v82, v86);
        return (*(v73 + 56))(v72, 0, 1, v74);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v41 = sub_20D5655D8();
    v42 = *(*(v41 - 8) + 56);

    return v42(a3, 1, 1, v41);
  }

  return result;
}

uint64_t sub_20D031454@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a2;
  v65 = a1;
  v66 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F778);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v48[-v7];
  v8 = sub_20D5654D8();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v59 = &v48[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F768);
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v48[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F780);
  MEMORY[0x28223BE20](v18);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v23 = &v48[-v22];
  v64 = a3;
  v62 = v4;
  sub_20D0331D4(v71);
  v79 = v71[6];
  v80 = v71[7];
  v81 = v72;
  v75 = v71[2];
  v76 = v71[3];
  v77 = v71[4];
  v78 = v71[5];
  v73 = v71[0];
  v74 = v71[1];
  if (sub_20CFF743C(&v73) == 1)
  {
    v24 = 1;
  }

  else
  {
    v53 = v14;
    v69[6] = v79;
    v69[7] = v80;
    v70 = v81;
    v69[2] = v75;
    v69[3] = v76;
    v69[4] = v77;
    v69[5] = v78;
    v69[0] = v73;
    v69[1] = v74;
    v25 = *(v18 + 48);
    *&v23[v25] = sub_20D03334C(v23, v69, v65);
    sub_20CEF9178(v23, v20, &unk_27C81F780);

    v26 = v60;
    (*(v60 + 32))(v17, v20, v12);
    sub_20CEF9178(v23, v20, &unk_27C81F780);
    v27 = *&v20[*(v18 + 48)];
    v28 = *(v26 + 8);
    v54 = v12;
    v52 = v26 + 8;
    v50 = v27;
    v51 = v28;
    v28(v20, v12);
    v63 = v17;
    if (v73)
    {
      v49 = 0;
    }

    else
    {
      v49 = BYTE2(v74) == 1 && *(&v74 + 1) != 3;
    }

    v29 = v62;
    v30 = sub_20D033DCC(v65, v61);
    v65 = v23;
    v31 = v53;
    if (v30)
    {
      LODWORD(v64) = DWORD2(v80) ^ 1;
      [v29 iconViewTileFrame];
      [v29 iconViewTileFrame];
      CGRectGetWidth(v82);
      sub_20D034354(v59);
      v32 = v54;
      (*(v26 + 16))(v31, v63, v54);
      sub_20D5654E8();
    }

    else
    {
      v33 = v53;
      v34 = v26;
      v35 = sub_20D03445C();
      if (v36)
      {
        v37 = v35;
        v38 = v36;
        [v29 iconViewTileFrame];
        [v29 iconViewTileFrame];
        CGRectGetWidth(v83);
        sub_20D034354(v59);
        v32 = v54;
        (*(v26 + 16))(v33, v63, v54);
        v67 = v37;
        v68 = v38;
        v39 = v58;
        sub_20D565618();

        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F790);
        (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      }

      else
      {
        v41 = v77;
        sub_20CECF940(0, &qword_28111FE00);
        LODWORD(v41) = [v41 isKindOfClass_];
        [v29 iconViewTileFrame];
        [v29 iconViewTileFrame];
        CGRectGetWidth(v84);
        v42 = v58;
        if (v41)
        {
          v43 = MEMORY[0x277D14F70];
          if (*(&v74 + 1) != 2)
          {
            v43 = MEMORY[0x277D14F80];
          }

          (*(v55 + 104))(v57, *v43, v56);
          v32 = v54;
          (*(v34 + 16))(v33, v63, v54);
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F790);
          (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
        }

        else
        {
          sub_20D034354(v59);
          v32 = v54;
          (*(v34 + 16))(v33, v63, v54);
          v67 = 0x69662E6573756F68;
          v68 = 0xEA00000000006C6CLL;
          sub_20D565618();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F790);
          (*(*(v45 - 8) + 56))(v42, 0, 1, v45);
        }
      }

      sub_20D5654F8();
    }

    sub_20CEF928C(v71, &qword_27C81F350);
    v51(v63, v32);
    sub_20CEF928C(v65, &unk_27C81F780);
    v24 = 0;
  }

  v46 = sub_20D565528();
  return (*(*(v46 - 8) + 56))(v66, v24, 1, v46);
}

uint64_t sub_20D031CF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F770);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F768);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v27 - v14;
  v16 = [v2 prefixString];
  if (v16 && (v16, (v17 = [v2 prefixLabelFont]) != 0))
  {
    v31 = v17;
    v32 = a1;
    sub_20CECF940(0, &unk_28111FB30);
    v34 = sub_20D568358();
    v33 = sub_20D568368();
    v29 = sub_20CECF940(0, &qword_28111FB60);
    sub_20D5655E8();
    sub_20D5655F8();
    v34 = sub_20D5672E8();
    sub_20D565608();
    v33 = sub_20D5672E8();
    sub_20D5655E8();
    v30 = *(v5 + 8);
    v30(v7, v4);
    if ([v2 respondsToSelector_])
    {
      v18 = [v2 prefixLabelOnTextColor];
      if (v18)
      {
        v19 = v18;
        if (([v2 respondsToSelector_] & 1) != 0 && (v20 = objc_msgSend(v2, sel_prefixLabelOffTextColor)) != 0)
        {
          v33 = v20;
          v34 = v19;
          v21 = v20;
          v27 = v19;
          v28 = v21;
          sub_20D5655E8();
          sub_20D5655F8();
          v34 = sub_20D5672E8();
          sub_20D565608();
          v33 = sub_20D5672E8();
          sub_20D5655E8();

          v30(v7, v4);
          (*(v9 + 8))(v15, v8);
          (*(v9 + 32))(v15, v11, v8);
        }

        else
        {
        }
      }
    }

    [v2 prefixLabelTileFrame];
    [v2 tileFrame];
    CGRectGetWidth(v36);
    (*(v9 + 16))(v11, v15, v8);
    [v2 prefixLabelShouldFeather];
    v25 = v32;
    sub_20D565548();
    (*(v9 + 8))(v15, v8);
    v26 = sub_20D565588();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v22 = sub_20D565588();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

id sub_20D032238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F750);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_20D565588();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CEF9178(a1, v8, &unk_27C81F750);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20CEF928C(v8, &unk_27C81F750);
    v13 = 1;
    return (*(v10 + 56))(a2, v13, 1, v9);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_20D565558();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_20D565578();
  result = [v3 collectionView];
  if (result)
  {
    v23 = result;
    v24 = [result traitCollection];

    v25 = [v24 layoutDirection];
    if (v25 == 1)
    {
      v28.origin.x = v15;
      v28.origin.y = v17;
      v28.size.width = v19;
      v28.size.height = v21;
      v26.n128_f64[0] = CGRectGetMaxX(v28);
    }

    (*(v10 + 16))(a2, v12, v9, v26);
    sub_20D565568();
    (*(v10 + 8))(v12, v9);
    v13 = 0;
    return (*(v10 + 56))(a2, v13, 1, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_20D0324F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F770);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F768);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v27 - v14;
  v16 = [v2 primaryString];
  if (v16 && (v16, [v2 primaryLabelFont]))
  {
    v29 = v5;
    v30 = a1;
    v32 = sub_20D567318();
    v31 = sub_20D567348();
    sub_20D5655E8();
    if ([v2 respondsToSelector_])
    {
      v17 = [v2 primaryLabelOnTextColor];
      if (v17)
      {
        v18 = v17;
        if (([v2 respondsToSelector_] & 1) != 0 && (v19 = objc_msgSend(v2, sel_primaryLabelOffTextColor)) != 0)
        {
          v31 = v19;
          v32 = v18;
          v20 = v19;
          v27 = sub_20CECF940(0, &qword_28111FB60);
          v28 = v18;
          v21 = v20;
          sub_20D5655E8();
          sub_20D5655F8();
          v32 = sub_20D5672E8();
          sub_20D565608();
          v31 = sub_20D5672E8();
          sub_20D5655E8();

          (*(v29 + 8))(v7, v4);
          (*(v9 + 8))(v15, v8);
          (*(v9 + 32))(v15, v11, v8);
        }

        else
        {
        }
      }
    }

    [v2 primaryLabelTileFrame];
    [v2 tileFrame];
    CGRectGetWidth(v34);
    (*(v9 + 16))(v11, v15, v8);
    [v2 primaryLabelShouldFeather];
    v25 = v30;
    sub_20D565548();
    (*(v9 + 8))(v15, v8);
    v26 = sub_20D565588();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v22 = sub_20D565588();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_20D0329B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F770);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F768);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v27 - v14;
  v16 = [v2 secondaryString];
  if (v16 && (v16, (v17 = [v2 secondaryLabelFont]) != 0))
  {
    v31 = v17;
    v32 = a1;
    sub_20CECF940(0, &unk_28111FB30);
    v34 = sub_20D568378();
    v33 = sub_20D568388();
    v29 = sub_20CECF940(0, &qword_28111FB60);
    sub_20D5655E8();
    sub_20D5655F8();
    v34 = sub_20D5672E8();
    sub_20D565608();
    v33 = sub_20D5672E8();
    sub_20D5655E8();
    v30 = *(v5 + 8);
    v30(v7, v4);
    if ([v2 respondsToSelector_])
    {
      v18 = [v2 secondaryLabelOnTextColor];
      if (v18)
      {
        v19 = v18;
        if (([v2 respondsToSelector_] & 1) != 0 && (v20 = objc_msgSend(v2, sel_secondaryLabelOffTextColor)) != 0)
        {
          v33 = v20;
          v34 = v19;
          v21 = v20;
          v27 = v19;
          v28 = v21;
          sub_20D5655E8();
          sub_20D5655F8();
          v34 = sub_20D5672E8();
          sub_20D565608();
          v33 = sub_20D5672E8();
          sub_20D5655E8();

          v30(v7, v4);
          (*(v9 + 8))(v15, v8);
          (*(v9 + 32))(v15, v11, v8);
        }

        else
        {
        }
      }
    }

    [v2 secondaryLabelTileFrame];
    [v2 tileFrame];
    CGRectGetWidth(v36);
    (*(v9 + 16))(v11, v15, v8);
    [v2 secondaryLabelShouldFeather];
    sub_20D565488();
    v25 = v32;
    sub_20D565548();
    (*(v9 + 8))(v15, v8);
    v26 = sub_20D565588();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v22 = sub_20D565588();
    v23 = *(*(v22 - 8) + 56);

    return v23(a1, 1, 1, v22);
  }
}

uint64_t sub_20D032EFC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F768);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F750);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_20D565588();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D0329B4(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20CEF928C(v5, &unk_27C81F750);
    v10 = 1;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_20D565538();
    sub_20D5655A8();
    (*(v7 + 8))(v9, v6);
    v10 = 0;
  }

  v11 = sub_20D5655B8();
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

id sub_20D033138(uint64_t a1)
{
  result = sub_20D03043C(a1);
  if (result)
  {
    [result backgroundCornerRadius];
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_20D0331D4@<Q0>(uint64_t a1@<X8>)
{
  if ([v1 baseIconViewConfiguration])
  {
    sub_20D568628();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35[0] = v33;
  v35[1] = v34;
  if (!*(&v34 + 1))
  {
    sub_20CEF928C(v35, &qword_27C81BF00);
    goto LABEL_8;
  }

  type metadata accessor for BaseIconView.__Configuration();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_20CFDAF0C(&v24);
    goto LABEL_9;
  }

  v3 = v23;
  v14 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration];
  v4 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 64];
  v6 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 16];
  v5 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 32];
  v17 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 48];
  v18 = v4;
  v15 = v6;
  v16 = v5;
  v8 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 96];
  v7 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 112];
  v9 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 80];
  v22 = *&v23[OBJC_IVAR___HUBaseIconViewConfiguration_configuration + 128];
  v20 = v8;
  v21 = v7;
  v19 = v9;
  sub_20CFDAFC8(&v14, &v24);

  v30 = v20;
  v31 = v21;
  v32 = v22;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v29 = v19;
  v24 = v14;
  v25 = v15;
  CGSizeMake(&v24);
LABEL_9:
  v10 = v31;
  *(a1 + 96) = v30;
  *(a1 + 112) = v10;
  *(a1 + 128) = v32;
  v11 = v27;
  *(a1 + 32) = v26;
  *(a1 + 48) = v11;
  v12 = v29;
  *(a1 + 64) = v28;
  *(a1 + 80) = v12;
  result = v25;
  *a1 = v24;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20D03334C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F770);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v70 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F7B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v70 - v11;
  v13 = *(a2 + 120);
  if (v13 < 0)
  {
    v71 = v9;
    v72 = v7;
    v73 = v6;
    v74 = a1;
    v15 = *(a2 + 88);
    v75 = *(a2 + 80);
    v16 = *(a2 + 104);
    v77 = *(a2 + 96);
    v17 = *(a2 + 112);
    v18 = *(a2 + 128);
    sub_20CECF940(0, &unk_27C820BA0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v79 = v17;
    v20 = v17;
    swift_unknownObjectRetain();
    v76 = v15;
    v21 = v15;
    v22 = v13;
    v78 = v16;
    v23 = v16;
    v80 = v18;
    if ([v18 isKindOfClass_])
    {
      v81 = &unk_28251B6B8;
      v24 = swift_dynamicCastObjCProtocolConditional();
      if (v24)
      {
        v25 = v24;
        v26 = a3;
        v27 = [v25 hu_tintColor];
        if (v27)
        {
          v28 = v27;
          v29 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
          v30 = [v28 resolvedColorWithTraitCollection_];

          *v94 = sub_20D5672E8();
          sub_20D567318();
          v31 = sub_20D567368();

          *v93 = v31;
          sub_20D5655E8();
          v14 = sub_20D567348();

LABEL_19:
          sub_20CFD9DD8(v75, v76, v77, v78, v79, v22);
          return v14;
        }
      }
    }

    sub_20D565D18();
    if (!swift_dynamicCastClass())
    {
LABEL_11:
      v35 = *(a2 + 32);
      *v94 = *(a2 + 16);
      *&v94[16] = v35;
      *&v94[26] = *(a2 + 42);
      v36 = *(a2 + 32);
      *v92 = *(a2 + 16);
      *&v92[16] = v36;
      *&v92[26] = *(a2 + 42);
      sub_20CFD7ED4(v94, v91);
      sub_20CFD7ED4(v94, v91);
      v37 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V9tintColor7contextSo7UIColorCSgAC7ContextV_tFZ_0(v92);
      *v93 = *v92;
      *&v93[16] = *&v92[16];
      *&v93[26] = *&v92[26];
      sub_20CFDAF98(v93);
      if (!v37)
      {
        sub_20CFDAF98(v94);
        v47 = objc_opt_self();
        v48 = [v47 systemGrayColor];
        *v92 = v48;
        sub_20CECF940(0, &qword_28111FB60);
        v49 = v71;
        sub_20D565618();

        v50 = v73;
        sub_20D5655F8();
        *v92 = sub_20D5672E8();
        sub_20D565608();
        *v91 = sub_20D5672E8();
        sub_20D5655E8();
        (*(v72 + 8))(v49, v50);
        v51 = [v47 systemGrayColor];
        v14 = sub_20D5672E8();
        goto LABEL_19;
      }

      v38 = v94[0];
      *v87 = *&v94[2];
      *&v87[16] = *&v94[18];
      *&v87[32] = *&v94[34];
      v92[0] = v94[0];
      v92[1] = 1;
      *&v92[2] = *&v94[2];
      *&v92[18] = *&v94[18];
      *&v92[34] = *&v94[34];
      if ((*&v94[2] >> 48) - 3 >= 2)
      {
        if (v94[0])
        {
          v55 = *&v92[24];
          v56 = *&v92[24];
LABEL_27:
          *v91 = v37;
          sub_20CECF940(0, &qword_28111FB60);
          v58 = v71;
          sub_20D565618();
          v59 = v73;
          sub_20D5655F8();
          *v91 = sub_20D5672E8();
          sub_20D565608();
          *v84 = sub_20D5672E8();
          sub_20D5655E8();
          (*(v72 + 8))(v58, v59);
          if (v55)
          {
            v60 = v55;
            v14 = sub_20D5672E8();
            sub_20CFD9DD8(v75, v76, v77, v78, v79, v22);
          }

          else
          {
            sub_20D567348();
            v14 = sub_20D567368();

            sub_20CFD9DD8(v75, v76, v77, v78, v79, v22);
          }

          v91[0] = v38;
          v91[1] = 1;
          *&v91[2] = *v87;
          *&v91[18] = *&v87[16];
          *&v91[34] = *&v87[32];
          v61 = v91;
LABEL_43:
          sub_20CFDAF98(v61);
          return v14;
        }

        v57 = objc_opt_self();
        sub_20CFD7ED4(v92, v91);
        v40 = [v57 whiteColor];
        v41 = [v40 colorWithAlphaComponent_];
      }

      else
      {
        v39 = objc_opt_self();
        sub_20CFD7ED4(v92, v91);
        v40 = [v39 secondaryLabelColor];
        v41 = [v40 colorWithAlphaComponent_];
      }

      v55 = v41;

      sub_20CFDAF98(v92);
      goto LABEL_27;
    }

    v70 = v13;
    v32 = a3;
    sub_20D565CE8();
    v33 = sub_20D564508();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v12, 1, v33) == 1)
    {

      sub_20CEF928C(v12, &qword_27C81F7B0);
      v22 = v70;
      goto LABEL_11;
    }

    v73 = sub_20D5644E8();
    (*(v34 + 8))(v12, v33);
    v42 = *(a2 + 32);
    *v94 = *(a2 + 16);
    *&v94[16] = v42;
    *&v94[26] = *(a2 + 42);
    v43 = v94[1];
    v88 = *(a2 + 18);
    v89 = *(a2 + 34);
    v90 = *(a2 + 50);
    v93[0] = 1;
    v93[1] = v94[1];
    *&v93[34] = v90;
    *&v93[18] = v89;
    *&v93[2] = v88;
    if (v88 >> 48) - 3 <= 1 && (v94[1])
    {
      v44 = objc_opt_self();
      sub_20CFD7ED4(v94, v92);
      sub_20CFD7ED4(v93, v92);
      v45 = [v44 secondaryLabelColor];
      v46 = [v45 colorWithAlphaComponent_];

      sub_20CFDAF98(v93);
      if (!v46)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v52 = *&v93[24];
      if (!*&v93[24])
      {
        sub_20CFD7ED4(v94, v92);
LABEL_32:
        v54 = v73;

        goto LABEL_33;
      }

      sub_20CFD7ED4(v94, v92);
      v53 = v52;
    }

    v54 = sub_20D5672E8();
LABEL_33:
    v91[0] = 0;
    v91[1] = v43;
    *&v91[34] = *(a2 + 50);
    *&v91[18] = *(a2 + 34);
    *&v91[2] = *(a2 + 18);
    *v87 = *v91;
    *&v87[16] = *&v91[16];
    *&v87[26] = *&v91[26];
    sub_20CFD7ED4(v91, v92);
    v62 = _s6HomeUI12BaseIconViewC13ConfigurationV0eF0O0D0V9tintColor7contextSo7UIColorCSgAC7ContextV_tFZ_0(v87);
    *v92 = *v87;
    *&v92[16] = *&v87[16];
    *&v92[26] = *&v87[26];
    sub_20CFDAF98(v92);
    if (v62)
    {
      v63 = sub_20D5672E8();
    }

    else
    {
      v63 = v73;
    }

    *v87 = 256;
    *&v87[2] = *(a2 + 18);
    *&v87[18] = *(a2 + 34);
    *&v87[34] = *(a2 + 50);
    v64 = *&v87[8] - 3;
    v65 = objc_opt_self();
    sub_20CFD7ED4(v87, v84);
    if (v64 > 1)
    {
      v66 = [v65 whiteColor];
    }

    else
    {
      v66 = [v65 secondaryLabelColor];
    }

    v67 = [v66 colorWithAlphaComponent_];

    sub_20CFDAF98(v87);
    v68 = v70;
    if (v67)
    {
      v14 = sub_20D5672E8();
    }

    else
    {
      v14 = v73;
    }

    v82 = v63;
    v83 = v54;

    sub_20D5655E8();

    sub_20CFD9DD8(v75, v76, v77, v78, v79, v68);

    *v84 = 256;
    *&v84[2] = v88;
    v85 = v89;
    v86 = v90;
    v61 = v84;
    goto LABEL_43;
  }

  *v94 = sub_20D567328();
  sub_20D565618();

  return sub_20D567328();
}

id sub_20D033DCC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81F760);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  MEMORY[0x20F31D7A0](v47, *MEMORY[0x277D13E88], v7);
  if (v47[3])
  {
    sub_20CECF940(0, &unk_27C820BA0);
    if (swift_dynamicCast())
    {
      v10 = *&v45[0];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_20CEF928C(v47, &qword_27C81BF00);
    v10 = 0;
  }

  sub_20D0331D4(v43);
  v45[6] = v43[6];
  v45[7] = v43[7];
  v46 = v44;
  v45[2] = v43[2];
  v45[3] = v43[3];
  v45[4] = v43[4];
  v45[5] = v43[5];
  v45[0] = v43[0];
  v45[1] = v43[1];
  if (sub_20CFF743C(v45) != 1)
  {
    v12 = v10;
    if (!v10)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
        sub_20CEF928C(v43, &qword_27C81F350);
        return 0;
      }

      v12 = v13;
      swift_unknownObjectRetain();
    }

    v42 = v12;
    v40 = a2;
    sub_20CEF9178(a2, v9, &qword_27C81F760);
    v14 = sub_20D565528();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v16(v9, 1, v14);
    v41 = v10;
    if (v17 == 1)
    {
      v18 = v9;
    }

    else
    {
      v11 = sub_20D5654C8();
      v19 = *(v15 + 8);
      v19(v9, v14);
      if (!v11)
      {
        goto LABEL_18;
      }

      sub_20CEF9178(v40, v5, &qword_27C81F760);
      if (v16(v5, 1, v14) != 1)
      {
        v24 = sub_20D5654B8();
        v26 = v25;
        v19(v5, v14);
        if (v26)
        {
          v21 = v42;
          v27 = [v42 identifier];
          v28 = sub_20D567838();
          v30 = v29;

          if (v24 == v28 && v26 == v30)
          {

            goto LABEL_19;
          }

          v31 = sub_20D568BF8();

          if (v31)
          {

            goto LABEL_19;
          }

          v32 = sub_20D5677F8();

          v33 = [objc_allocWithZone(MEMORY[0x277D14440]) initWithPackageIdentifier_];
          v34 = objc_opt_self();
          v35 = [v34 sharedInstance];
          [v35 returnPackageToCache:v11 forIconDescriptor:v33];

          v36 = [v34 sharedInstance];
          v37 = [v36 packageForIconDescriptor_];

          v38 = v11;
          v11 = v37;

          if (v37)
          {
            goto LABEL_19;
          }

LABEL_29:

          sub_20CEF928C(v43, &qword_27C81F350);
          return v11;
        }

LABEL_18:
        v20 = [objc_opt_self() sharedInstance];
        v21 = v42;
        v11 = [v20 packageForIconDescriptor_];

        if (v11)
        {
LABEL_19:
          v22 = v11;
          v23 = [v21 packageIdentifier];
          sub_20D567838();

          sub_20CEF928C(v43, &qword_27C81F350);
          return v11;
        }

        goto LABEL_29;
      }

      v18 = v5;
    }

    sub_20CEF928C(v18, &qword_27C81F760);
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_20D034354@<X0>(uint64_t a1@<X8>)
{
  sub_20D0331D4(v8);
  v16 = v8[6];
  v17 = v8[7];
  v18 = v9;
  v12 = v8[2];
  v13 = v8[3];
  v14 = v8[4];
  v15 = v8[5];
  v10 = v8[0];
  v11 = v8[1];
  v2 = sub_20CFF743C(&v10);
  v3 = MEMORY[0x277D14F80];
  if (v2 != 1)
  {
    sub_20CEF928C(v8, &qword_27C81F350);
    v4 = MEMORY[0x277D14F70];
    if (*(&v11 + 1) != 2)
    {
      v4 = v3;
    }

    if (*(&v11 + 1))
    {
      v3 = v4;
    }

    else
    {
      v3 = MEMORY[0x277D14F78];
    }
  }

  v5 = *v3;
  v6 = sub_20D5654D8();
  return (*(*(v6 - 8) + 104))(a1, v5, v6);
}

uint64_t sub_20D03445C()
{
  MEMORY[0x20F31D7A0](v11, *MEMORY[0x277D13E88]);
  if (v11[3])
  {
    sub_20CECF940(0, &unk_27C81F7A0);
    if (swift_dynamicCast())
    {
      v0 = *&v9[0];
    }

    else
    {
      v0 = 0;
    }
  }

  else
  {
    sub_20CEF928C(v11, &qword_27C81BF00);
    v0 = 0;
  }

  sub_20D0331D4(v7);
  v9[6] = v7[6];
  v9[7] = v7[7];
  v10 = v8;
  v9[2] = v7[2];
  v9[3] = v7[3];
  v9[4] = v7[4];
  v9[5] = v7[5];
  v9[0] = v7[0];
  v9[1] = v7[1];
  if (sub_20CFF743C(v9) == 1)
  {
  }

  else
  {
    v1 = v0;
    if (!v0)
    {
      objc_opt_self();
      v2 = swift_dynamicCastObjCClass();
      if (!v2)
      {
        sub_20CEF928C(v7, &qword_27C81F350);
        return 0;
      }

      v1 = v2;
      swift_unknownObjectRetain();
    }

    v3 = v0;
    if ([v1 isSystemImage])
    {
      v4 = [v1 imageIdentifier];
      v5 = sub_20D567838();

      sub_20CEF928C(v7, &qword_27C81F350);
      return v5;
    }

    sub_20CEF928C(v7, &qword_27C81F350);
  }

  return 0;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20D03470C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_20CEF7788;

  return sub_20D02DBCC(v2, v3, v4, v5, v7, v6);
}

uint64_t _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB14SupportsToggle4itemSbSo6HFItemC_tF_0(void *a1)
{
  sub_20D565D18();
  v2 = swift_dynamicCastClass();
  v3 = v2;
  if (v2)
  {
    v4 = a1;
    v5 = sub_20D565CC8();
    sub_20D565E08();

    sub_20CEF9178(v9, v7, &qword_27C81F828);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v3 = sub_20D5643C8();

      sub_20CEF928C(v9, &qword_27C81F828);
      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {
      sub_20CEF928C(v9, &qword_27C81F828);

      sub_20CEF928C(v7, &qword_27C81F828);
      v3 = 0;
    }
  }

  return v3 & 1;
}

id _sSo42HUControllableItemCollectionViewControllerC6HomeUIE012toggleMatterB0ySo8NAFutureCyyXlGSo6HFItemCF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_20D565D18();
  if (swift_dynamicCastClass())
  {
    v5 = a1;
    v6 = sub_20D565CC8();
    v7 = sub_20D567C58();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    *(swift_allocObject() + 16) = v6;
    v8 = v6;
    v9 = sub_20D5659D8();

    sub_20CEF928C(v4, &qword_27C81C610);
    v10 = [v9 asGeneric];

    return v10;
  }

  else
  {
    v12 = [objc_opt_self() futureWithNoResult];
    v13 = [v12 asGeneric];

    return v13;
  }
}

BOOL _sSo42HUControllableItemCollectionViewControllerC6HomeUIE06matterB17HasControlModules4itemSbSo6HFItemC_tF_0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81F818);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_20D564628();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20D565D18();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = a1;
    goto LABEL_3;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14 || (v15 = [v14 containingItem]) == 0)
  {
LABEL_9:
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_10;
  }

  v16 = v15;
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_9;
  }

LABEL_3:
  v12 = v10;
  v13 = sub_20D565CC8();

  sub_20D565DF8();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

LABEL_10:
    sub_20CEF928C(v4, &unk_27C81F818);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_20D564F28();
  v18 = MEMORY[0x20F31A370](v8);

  (*(v6 + 8))(v8, v5);
  v19 = *(v18 + 16);

  return v19 != 0;
}

uint64_t sub_20D034D28()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_20CEF934C;

  return sub_20D02EE04(v2, v3, v5, v4);
}

uint64_t sub_20D034DE8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20CEF5FFC;

  return sub_20D02F344(v2);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20D034ECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_20CEF934C;

  return sub_20D02E1F4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  return sub_20CED43FC(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20D034FDC()
{
  result = qword_27C81FB50;
  if (!qword_27C81FB50)
  {
    sub_20D565478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C81FB50);
  }

  return result;
}

uint64_t UtilityConfigurationHelper.name.getter()
{
  result = sub_20D564C08();
  if (!v1)
  {
    return sub_20D564BE8();
  }

  return result;
}

unint64_t AddressMatchTypeHelper.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

void *UtilityConfigurationHelper.sections.getter()
{
  v0 = sub_20D564BA8();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  if (v0 >> 62)
  {
    goto LABEL_28;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_29:

    return v1;
  }

  while (1)
  {
    v57 = v1;
    result = sub_20CEF0AE8(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v1 = v57;
    v48 = v2;
    if ((v2 & 0xC000000000000001) != 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE40);
      v5 = 0;
      v2 = &v54;
      while (1)
      {
        MEMORY[0x20F31DD20](v5, v48);
        v55[0] = 0x726564616568;
        v55[1] = 0xE600000000000000;
        v55[2] = sub_20D564DB8();
        v55[3] = v6;
        v55[5] = MEMORY[0x277D837D0];
        v56[0] = 0x73646C656966;
        v56[1] = 0xE600000000000000;
        v7 = sub_20D564DA8();
        v56[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
        v56[2] = v7;
        v8 = sub_20D568AD8();

        sub_20D036C04(v55, &v51);
        v9 = v51;
        v10 = v52;
        v11 = sub_20CEED668(v51, v52);
        if (v12)
        {
          break;
        }

        *(v8 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
        v13 = (v8[6] + 16 * v11);
        *v13 = v9;
        v13[1] = v10;
        sub_20CEC80B0(v53, (v8[7] + 32 * v11));
        v14 = v8[2];
        v15 = __OFADD__(v14, 1);
        v16 = v14 + 1;
        if (v15)
        {
          goto LABEL_25;
        }

        v8[2] = v16;
        sub_20D036C04(v56, &v51);
        v17 = v51;
        v18 = v52;
        v19 = sub_20CEED668(v51, v52);
        if (v20)
        {
          break;
        }

        *(v8 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
        v21 = (v8[6] + 16 * v19);
        *v21 = v17;
        v21[1] = v18;
        sub_20CEC80B0(v53, (v8[7] + 32 * v19));
        v22 = v8[2];
        v15 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v15)
        {
          goto LABEL_25;
        }

        v8[2] = v23;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE70);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        v57 = v1;
        v25 = *(v1 + 16);
        v24 = *(v1 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_20CEF0AE8((v24 > 1), v25 + 1, 1);
          v1 = v57;
        }

        ++v5;
        *(v1 + 16) = v25 + 1;
        *(v1 + 8 * v25 + 32) = v8;
        if (v3 == v5)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {
      v26 = (v2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DE40);
      while (1)
      {
        v27 = *v26;
        v2 = 0xE600000000000000;
        v49[0] = 0x726564616568;
        v49[1] = 0xE600000000000000;
        v28 = v27;
        v49[2] = sub_20D564DB8();
        v49[3] = v29;
        v49[5] = MEMORY[0x277D837D0];
        v50[0] = 0x73646C656966;
        v50[1] = 0xE600000000000000;
        v30 = sub_20D564DA8();
        v50[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81EC30);
        v50[2] = v30;
        v31 = sub_20D568AD8();

        sub_20D036C04(v49, &v51);
        v32 = v51;
        v33 = v52;
        v34 = sub_20CEED668(v51, v52);
        if (v35)
        {
          break;
        }

        v2 = (v31 + 8);
        *(v31 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v34;
        v36 = (v31[6] + 16 * v34);
        *v36 = v32;
        v36[1] = v33;
        sub_20CEC80B0(v53, (v31[7] + 32 * v34));
        v37 = v31[2];
        v15 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v31[2] = v38;
        sub_20D036C04(v50, &v51);
        v39 = v51;
        v40 = v52;
        v41 = sub_20CEED668(v51, v52);
        if (v42)
        {
          break;
        }

        *(v2 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
        v43 = (v31[6] + 16 * v41);
        *v43 = v39;
        v43[1] = v40;
        sub_20CEC80B0(v53, (v31[7] + 32 * v41));
        v44 = v31[2];
        v15 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v15)
        {
          goto LABEL_27;
        }

        v31[2] = v45;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C81BE70);
        swift_arrayDestroy();

        v57 = v1;
        v47 = *(v1 + 16);
        v46 = *(v1 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_20CEF0AE8((v46 > 1), v47 + 1, 1);
          v1 = v57;
        }

        *(v1 + 16) = v47 + 1;
        *(v1 + 8 * v47 + 32) = v31;
        ++v26;
        if (!--v3)
        {
          goto LABEL_29;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v3 = sub_20D568768();
    if (!v3)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20D035680()
{
  v0 = sub_20D564C18();
  result = MEMORY[0x277D84F90];
  if (!v0)
  {
    return result;
  }

  v24 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_20D568768())
  {
    v3 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F31DD20](v4, v0);
      }

      else
      {
        if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v5 = *(v0 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (sub_20D564E78() == 0x7972746E756F43 && v8 == 0xE700000000000000)
      {
      }

      else
      {
        v9 = sub_20D568BF8();

        if (v9)
        {
        }

        else
        {
          sub_20D5688C8();
          sub_20D568908();
          sub_20D568918();
          sub_20D5688D8();
        }
      }

      ++v4;
      if (v7 == i)
      {
        v10 = v24;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v10 & 0x8000000000000000) == 0 && (v10 & 0x4000000000000000) == 0)
  {
    v11 = *(v10 + 16);
    if (v11)
    {
      goto LABEL_23;
    }

LABEL_34:

    return MEMORY[0x277D84F90];
  }

  v11 = sub_20D568768();
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_23:
  v24 = v3;
  result = sub_20D5688F8();
  if (v11 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F31DD20](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = type metadata accessor for HUTAFField();
      v16 = objc_allocWithZone(v15);
      v17 = sub_20D564E68();
      v18 = &v16[OBJC_IVAR____TtC6HomeUI10HUTAFField_label];
      *v18 = v17;
      v18[1] = v19;
      v20 = sub_20D564E78();
      v21 = &v16[OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey];
      *v21 = v20;
      v21[1] = v22;
      v16[OBJC_IVAR____TtC6HomeUI10HUTAFField_required] = sub_20D564E88() & 1;
      v23.receiver = v16;
      v23.super_class = v15;
      objc_msgSendSuper2(&v23, sel_init);

      sub_20D5688C8();
      sub_20D568908();
      sub_20D568918();
      sub_20D5688D8();
    }

    while (v11 != v12);

    return v24;
  }

  return result;
}

uint64_t UtilityConfigurationHelper.logoURL.getter()
{
  v0 = sub_20D564BD8();
  v1 = sub_20D564B98();

  v2 = sub_20D564D28();
  return v2;
}

unint64_t *UtilityConfigurationHelper.passwordlessSections.getter()
{
  v2 = v0;
  v3 = sub_20D564BA8();
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    v6 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_34;
    }

    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      while (1)
      {
        v37 = v4;
        sub_20D5688F8();
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v1 = *(v2 + OBJC_IVAR___HUUtilityConfigurationHelper_fields);
        v26 = v6;
        if (v1 >> 62)
        {
          goto LABEL_38;
        }

        v31 = v1 & 0xFFFFFFFFFFFFFF8;
        v33 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
        v8 = 0;
        v2 = 0;
        v28 = v7;
        v29 = v5 & 0xC000000000000001;
        v25 = v5 + 32;
        v32 = v1 & 0xC000000000000001;
        v27 = v5;
        while (v8 < v7)
        {
          if (__OFADD__(v8, 1))
          {
            goto LABEL_32;
          }

          v30 = v8 + 1;
          if (v29)
          {
            v16 = MEMORY[0x20F31DD20]();
          }

          else
          {
            if (v8 >= *(v26 + 16))
            {
              goto LABEL_33;
            }

            v16 = *(v25 + 8 * v8);
          }

          v17 = v16;
          v36 = v4;
          if (v33)
          {
            v5 = 0;
            while (1)
            {
              if (v32)
              {
                v18 = v1;
                v19 = MEMORY[0x20F31DD20](v5, v1);
              }

              else
              {
                if (v5 >= *(v31 + 16))
                {
                  goto LABEL_30;
                }

                v18 = v1;
                v19 = *(v1 + 8 * v5 + 32);
              }

              v1 = v19;
              v20 = v5 + 1;
              if (__OFADD__(v5, 1))
              {
                break;
              }

              v21 = sub_20D564DA8();
              v4 = &v25;
              v22 = *(v1 + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey + 8);
              v35[0] = *(v1 + OBJC_IVAR____TtC6HomeUI10HUTAFField_formKey);
              v35[1] = v22;
              MEMORY[0x28223BE20](v21);
              v24[2] = v35;
              sub_20D5663C8();
              v6 = sub_20CED0CD8(sub_20D036C74, v24, v21);

              if (v6)
              {
                sub_20D5688C8();
                v6 = v36[2];
                sub_20D568908();
                sub_20D568918();
                sub_20D5688D8();
              }

              else
              {
              }

              ++v5;
              v1 = v18;
              if (v20 == v33)
              {
                v9 = v36;
                v4 = MEMORY[0x277D84F90];
                v5 = v27;
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_30:
            __break(1u);
            break;
          }

          v9 = v4;
LABEL_9:
          v10 = sub_20D564DB8();
          v12 = v11;
          v13 = type metadata accessor for HUTAFSection();
          v14 = objc_allocWithZone(v13);
          v15 = &v14[OBJC_IVAR____TtC6HomeUI12HUTAFSection_header];
          *v15 = v10;
          v15[1] = v12;
          *&v14[OBJC_IVAR____TtC6HomeUI12HUTAFSection_fields] = v9;
          v34.receiver = v14;
          v34.super_class = v13;
          v6 = objc_msgSendSuper2(&v34, sel_init);

          sub_20D5688C8();
          sub_20D568908();
          sub_20D568918();
          sub_20D5688D8();
          v8 = v30;
          v7 = v28;
          if (v30 == v28)
          {

            return v37;
          }
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        v7 = sub_20D568768();
        if (!v7)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_38:
      v31 = v1 & 0xFFFFFFFFFFFFFF8;
      v33 = sub_20D568768();
      goto LABEL_7;
    }

LABEL_35:
  }

  return v4;
}