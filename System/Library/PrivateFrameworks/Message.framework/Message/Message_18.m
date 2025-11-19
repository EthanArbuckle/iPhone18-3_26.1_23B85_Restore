uint64_t *sub_1B06D2954()
{
  v102 = sub_1B06D4DBC;
  v103 = sub_1B06D4E08;
  v104 = sub_1B0398F5C;
  v105 = sub_1B0398F5C;
  v106 = sub_1B0399348;
  v107 = sub_1B06D4DBC;
  v108 = sub_1B06D4E08;
  v109 = sub_1B0398F5C;
  v110 = sub_1B0398F5C;
  v111 = sub_1B0399348;
  v145 = 0;
  v141[0] = 0;
  v141[1] = 0;
  v138 = 0;
  v112 = 0;
  v113 = 0;
  v114 = sub_1B0E439A8();
  v115 = *(v114 - 8);
  v116 = v114 - 8;
  v117 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v118 = v37 - v117;
  v119 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v120 = v37 - v119;
  v125 = sub_1B0E44468();
  v123 = *(v125 - 8);
  v124 = v125 - 8;
  v121 = (*(v123 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v125);
  v126 = (v37 - v121);
  v145 = v0;

  v122 = *(v0 + OBJC_IVAR____TtCE7MessageCSo30MFBackFillMessageBodySchedulerP33_8C94728D29B9D9CACC7F5FFB5564322B8Activity_queue);
  MEMORY[0x1E69E5928](v122);
  v3 = v123;
  *v126 = v122;
  v4 = *MEMORY[0x1E69E8020];
  (*(v3 + 104))();
  v127 = sub_1B0E44488();
  (*(v123 + 8))(v126, v125);
  result = v127;
  if (v127)
  {

    v99 = &v144;
    swift_beginAccess();
    v100 = *(v101 + 49);
    swift_endAccess();
    if (v100)
    {
      v6 = v120;
      v7 = sub_1B06BF680();
      (*(v115 + 16))(v6, v7, v114);

      v97 = sub_1B0E43988();
      v98 = sub_1B0E45908();
      v87 = 17;
      v89 = 7;
      v91 = swift_allocObject();
      *(v91 + 16) = 0;
      v92 = swift_allocObject();
      *(v92 + 16) = 2;
      v88 = 32;
      v8 = swift_allocObject();
      v9 = v101;
      v90 = v8;
      *(v8 + 16) = v107;
      *(v8 + 24) = v9;
      v10 = swift_allocObject();
      v11 = v90;
      v94 = v10;
      *(v10 + 16) = v108;
      *(v10 + 24) = v11;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v93 = sub_1B0E46A48();
      v95 = v12;

      v13 = v91;
      v14 = v95;
      *v95 = v109;
      v14[1] = v13;

      v15 = v92;
      v16 = v95;
      v95[2] = v110;
      v16[3] = v15;

      v17 = v94;
      v18 = v95;
      v95[4] = v111;
      v18[5] = v17;
      sub_1B0394964();

      if (os_log_type_enabled(v97, v98))
      {
        v19 = v112;
        v80 = sub_1B0E45D78();
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v79 = 0;
        v81 = sub_1B03949A8(0);
        v82 = sub_1B03949A8(v79);
        v83 = &v132;
        v132 = v80;
        v84 = &v131;
        v131 = v81;
        v85 = &v130;
        v130 = v82;
        sub_1B0394A48(0, &v132);
        sub_1B0394A48(1, v83);
        v128 = v109;
        v129 = v91;
        sub_1B03949FC(&v128, v83, v84, v85);
        v86 = v19;
        if (v19)
        {

          __break(1u);
        }

        else
        {
          v128 = v110;
          v129 = v92;
          sub_1B03949FC(&v128, &v132, &v131, &v130);
          v76 = 0;
          v128 = v111;
          v129 = v94;
          sub_1B03949FC(&v128, &v132, &v131, &v130);
          v75 = 0;
          _os_log_impl(&dword_1B0389000, v97, v98, "%hx: Still waiting for work to be deferred.", v80, 6u);
          v74 = 0;
          sub_1B03998A8(v81);
          sub_1B03998A8(v82);
          sub_1B0E45D58();

          v77 = v75;
        }
      }

      else
      {
        v20 = v112;

        v77 = v20;
      }

      v72 = v77;
      MEMORY[0x1E69E5920](v97);
      (*(v115 + 8))(v120, v114);
      v73 = v72;
    }

    else
    {
      v21 = v118;
      v22 = sub_1B06BF680();
      (*(v115 + 16))(v21, v22, v114);

      v70 = sub_1B0E43988();
      v71 = sub_1B0E45908();
      v60 = 17;
      v62 = 7;
      v64 = swift_allocObject();
      *(v64 + 16) = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = 2;
      v61 = 32;
      v23 = swift_allocObject();
      v24 = v101;
      v63 = v23;
      *(v23 + 16) = v102;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v63;
      v67 = v25;
      *(v25 + 16) = v103;
      *(v25 + 24) = v26;
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v66 = sub_1B0E46A48();
      v68 = v27;

      v28 = v64;
      v29 = v68;
      *v68 = v104;
      v29[1] = v28;

      v30 = v65;
      v31 = v68;
      v68[2] = v105;
      v31[3] = v30;

      v32 = v67;
      v33 = v68;
      v68[4] = v106;
      v33[5] = v32;
      sub_1B0394964();

      if (os_log_type_enabled(v70, v71))
      {
        v34 = v112;
        v53 = sub_1B0E45D78();
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v52 = 0;
        v54 = sub_1B03949A8(0);
        v55 = sub_1B03949A8(v52);
        v56 = &v137;
        v137 = v53;
        v57 = &v136;
        v136 = v54;
        v58 = &v135;
        v135 = v55;
        sub_1B0394A48(0, &v137);
        sub_1B0394A48(1, v56);
        v133 = v104;
        v134 = v64;
        sub_1B03949FC(&v133, v56, v57, v58);
        v59 = v34;
        if (v34)
        {

          __break(1u);
        }

        else
        {
          v133 = v105;
          v134 = v65;
          sub_1B03949FC(&v133, &v137, &v136, &v135);
          v49 = 0;
          v133 = v106;
          v134 = v67;
          sub_1B03949FC(&v133, &v137, &v136, &v135);
          v48 = 0;
          _os_log_impl(&dword_1B0389000, v70, v71, "%hx: Work needs to be deferred.", v53, 6u);
          v47 = 0;
          sub_1B03998A8(v54);
          sub_1B03998A8(v55);
          sub_1B0E45D58();

          v50 = v48;
        }
      }

      else
      {
        v35 = v112;

        v50 = v35;
      }

      v46 = v50;
      MEMORY[0x1E69E5920](v70);
      (*(v115 + 8))(v118, v114);
      v45 = &v143;
      swift_beginAccess();
      *(v101 + 49) = 1;
      swift_endAccess();
      v73 = v46;
    }

    v36 = v101;
    v43 = v73;
    v40 = &v142;
    swift_beginAccess();
    v41 = *(v36 + 32);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    sub_1B06D16F8();

    v140 = sub_1B06CCDFC();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1808, &qword_1B0E99B80);
    sub_1B06D5184();
    sub_1B0E45798();
    for (i = v43; ; i = v38)
    {
      v38 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1818, &qword_1B0E99B88);
      sub_1B0E46518();
      v39 = v139;
      if (!v139)
      {
        break;
      }

      v37[1] = v39;
      v37[0] = v39;
      v138 = v39;
      swift_getObjectType();
      [v37[0] stopBackFillingMessageBodyDownload];
      swift_unknownObjectRelease();
    }

    return sub_1B039E440(v141);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B06D3AB0()
{
  v2 = qword_1EB6DADD0;
  if (!qword_1EB6DADD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E17D0, &unk_1B0E99B60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D3B70(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1B0E455B8();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1B0E466C8();
  __break(1u);
LABEL_12:
  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D3E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17);
        v15 = sub_1B06D61F8;
        v16 = &v37;
        sub_1B06D3B70(sub_1B06D6214, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_1B0E465A8();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_1B0E465A8();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_1B0E465A8();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_1B0E465A8();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_1B0E465A8();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_1B0E465A8();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_1B0E465A8();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_1B0E465A8();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_1B0E465A8();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_1B0E465A8();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_1B0E466C8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D46D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1B0E465A8();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1B0E465A8();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1B0E465A8();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1B0E465A8();
                __break(1u);
              }

              sub_1B0E465A8();
              __break(1u);
            }

            sub_1B0E465A8();
            __break(1u);
          }

          sub_1B0E465A8();
          __break(1u);
        }

        sub_1B0E465A8();
        __break(1u);
      }

      sub_1B0E465A8();
      __break(1u);
    }

    sub_1B0E465A8();
    __break(1u);
  }

  result = sub_1B0E465A8();
  __break(1u);
  return result;
}

uint64_t sub_1B06D4BE8(uint64_t result)
{
  v5 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v5 > 0)
    {

      sub_1B0E45988();
      v3 = sub_1B0E45278();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      *(v3 + 16) = v5;

      v4 = v3;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    v1 = sub_1B0E45988();
    result = v4;
    v2 = v4 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));
  }

  return result;
}

uint64_t _s8ActivityCMa()
{
  v1 = qword_1EB6DA678;
  if (!qword_1EB6DA678)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1B06D4DCC@<X0>(uint64_t (*a1)(void)@<X0>, _WORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1B06D4E14()
{
  v2 = qword_1EB6DA340;
  if (!qword_1EB6DA340)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D4EC8()
{
  v2 = qword_1EB6DA690;
  if (!qword_1EB6DA690)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA690);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5010()
{
  v2 = qword_1EB6DAE78;
  if (!qword_1EB6DAE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1800, &unk_1B0E99B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5098()
{
  v2 = qword_1EB6DA350;
  if (!qword_1EB6DA350)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA350);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_327(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5184()
{
  v2 = qword_1EB6DB000;
  if (!qword_1EB6DB000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1808, &qword_1B0E99B80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB000);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D5234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B06D527C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B0694390();
  v5 = MEMORY[0x1E69E6810];

  return sub_1B0398F64(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B06D52F0()
{
  v2 = qword_1EB6DAA70;
  if (!qword_1EB6DAA70)
  {
    sub_1B0E45A38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAA70);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_367(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B06D5410()
{
  v2 = qword_1EB6DAE20;
  if (!qword_1EB6DAE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1838, &qword_1B0E99BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5498()
{
  v2 = qword_1EB6DAE28;
  if (!qword_1EB6DAE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1838, &qword_1B0E99BE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5548()
{
  v2 = qword_1EB6DAE88;
  if (!qword_1EB6DAE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1800, &unk_1B0E99B70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D55D0()
{
  v2 = qword_1EB6DACC8;
  if (!qword_1EB6DACC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1850, &unk_1B0E9B040);
    sub_1B06D5674();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5674()
{
  v2 = qword_1EB6DEE40;
  if (!qword_1EB6DEE40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5714()
{
  v2 = qword_1EB6DAE68;
  if (!qword_1EB6DAE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D579C()
{
  v2 = qword_1EB6DAE70;
  if (!qword_1EB6DAE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D5824()
{
  v2 = qword_1EB6DA698;
  if (!qword_1EB6DA698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D58A0()
{
  v2 = qword_1EB6DAE60;
  if (!qword_1EB6DAE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E1860, &qword_1B0E99C08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t type metadata accessor for MFBackFillMessageBodyScheduler()
{
  v2 = qword_1EB6E1870;
  if (!qword_1EB6E1870)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB6E1870);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B06D598C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1B06D5AF4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1B06D5D34()
{
  v2 = sub_1B0E43108();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1B06D5EA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFA && *(a1 + 9))
    {
      v5 = *a1 + 250;
    }

    else
    {
      v2 = *(a1 + 8) - 5;
      if (v2 < 0)
      {
        v2 = -1;
      }

      v3 = v2 - 1;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B06D5FD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFA)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 251;
    if (a3 >= 0xFB)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 5;
    }
  }

  return result;
}

void *sub_1B06D61B0(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](a1[1]);
  return a1;
}

unint64_t sub_1B06D6240()
{
  v2 = qword_1EB6DEEE0;
  if (!qword_1EB6DEEE0)
  {
    sub_1B0E45988();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D62C0()
{
  v2 = qword_1EB6DEEF0;
  if (!qword_1EB6DEEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E1888, &unk_1B0EEDC60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DEEF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_1B06D63E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06D642C()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06D6494(uint64_t a1)
{
  swift_unknownObjectRetain();
  v4 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06D6514()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06D655C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06D65C4()
{

  swift_beginAccess();
  swift_weakAssign();

  swift_endAccess();
}

uint64_t sub_1B06D6644()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *sub_1B06D66D0(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v40 = a2;
  v3 = v2;
  v4 = v41;
  v20 = v3;
  ObjectType = swift_getObjectType();
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v37 = 0;
  v31 = sub_1B0E459C8();
  v29 = *(v31 - 8);
  v30 = v31 - 8;
  v17 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v36 = &v16 - v17;
  v23 = sub_1B0E45988();
  v18 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v16 - v18;
  v5 = sub_1B0E44288();
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v16 - v19;
  v45 = v4;
  v44 = v6;
  v46 = v20;
  *&v20[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token] = v7;
  swift_weakInit();
  v21 = v46;
  MEMORY[0x1E69E5928](v4);
  v8 = v40;
  *&v21[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue] = v4;
  v22 = v46;
  MEMORY[0x1E69E5928](v8);
  *&v22[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence] = v40;
  v38 = v46;
  v28 = sub_1B06CCC58();
  v24 = sub_1B0E45A18();
  v26 = v9;
  v10 = sub_1B0E44838();
  v25 = v11;
  v32 = MEMORY[0x1B2726DB0](v24, v26, v10);
  v33 = v12;

  sub_1B0E44268();
  v27 = sub_1B0E46A48();
  sub_1B06D6240();
  sub_1B0E46028();
  (*(v29 + 104))(v36, *MEMORY[0x1E69E8098], v31);
  v13 = sub_1B0E45A08();
  v14 = ObjectType;
  *&v38[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue] = v13;
  v43.receiver = v46;
  v43.super_class = v14;
  v42 = objc_msgSendSuper2(&v43, sel_init);
  MEMORY[0x1E69E5928](v42);
  v46 = v42;
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  MEMORY[0x1E69E5920](v46);
  return v42;
}

id sub_1B06D6A54()
{
  v3.super_class = swift_getObjectType();
  v7 = v0;
  v4 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token);
  swift_beginAccess();
  v5 = *v4;
  swift_unknownObjectRetain();
  swift_endAccess();
  if (v5)
  {
    v2 = [objc_opt_self() defaultCenter];
    swift_unknownObjectRetain();
    swift_getObjectType();
    [v2 removeObserver_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v2);
    swift_unknownObjectRelease();
  }

  v6 = v3;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void sub_1B06D6C54(uint64_t a1)
{
  v67 = a1;
  v62 = 0;
  v95 = 0;
  v94 = 0;
  v58 = sub_1B0E44238();
  v59 = *(v58 - 8);
  v60 = v59;
  v2 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](0);
  v61 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1B0E44288();
  v64 = *(v63 - 8);
  v65 = v64;
  v4 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1B0E44468();
  v68 = *(v71 - 8);
  v70 = v68;
  v6 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v72 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = v8;
  v94 = v1;
  v9 = v1;
  v69 = *&v1[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue];
  v10 = v69;
  v11 = v70;
  *v72 = v69;
  v12 = *MEMORY[0x1E69E8020];
  (*(v11 + 104))();
  v73 = sub_1B0E44488();
  (*(v70 + 8))(v72, v71);
  if (v73)
  {

    v54 = &v57[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token];
    v55 = &v93;
    swift_beginAccess();
    v56 = *v54;
    swift_unknownObjectRetain();
    swift_endAccess();
    v92 = v56;
    v53 = v56 == 0;
    v52 = v53;
    sub_1B03FD360(&v92);
    if (v52)
    {

      v46 = &v57[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_persistenceAdaptor];
      v47 = &v91;
      v49 = 0;
      swift_beginAccess();
      swift_weakAssign();

      swift_endAccess();
      v48 = [objc_opt_self() defaultCenter];
      v50 = *MEMORY[0x1E699B390];
      v13 = v50;
      v51 = v50;
      v89[0] = v49;
      v89[1] = v49;
      v89[2] = v49;
      v90 = v49;
      if (v49)
      {
        v40 = v90;
        v43 = v89;
        __swift_project_boxed_opaque_existential_0(v89, v90);
        v38 = *(v40 - 8);
        v39 = v38;
        v14 = *(v38 + 64);
        v42 = &v24;
        v15 = MEMORY[0x1EEE9AC00](&v24);
        v41 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v39 + 16))(v15);
        v44 = sub_1B0E46A58();
        (*(v39 + 8))(v41, v40);
        __swift_destroy_boxed_opaque_existential_0(v43);
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v27 = v45;
      v31 = 24;
      v32 = 7;
      v25 = swift_allocObject();
      v24 = v25 + 16;
      v17 = v57;
      swift_unknownObjectWeakInit();

      v87 = sub_1B06D78A0;
      v88 = v25;
      aBlock = MEMORY[0x1E69E9820];
      v33 = 1107296256;
      v83 = 1107296256;
      v34 = 0;
      v84 = 0;
      v85 = sub_1B06D8164;
      v86 = &block_descriptor_0;
      v26 = _Block_copy(&aBlock);

      v35 = 0;
      v29 = [v48 addObserverForName:v51 object:v27 queue:? usingBlock:?];
      _Block_release(v26);
      swift_unknownObjectRelease();

      v28 = &v57[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_token];
      v30 = &v81;
      swift_beginAccess();
      v18 = *v28;
      *v28 = v29;
      swift_unknownObjectRelease();
      swift_endAccess();
      v37 = *&v57[OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue];
      v19 = v37;
      v20 = v57;
      v21 = swift_allocObject();
      v22 = v33;
      v23 = v34;
      *(v21 + 16) = v57;
      v79 = sub_1B06D82BC;
      v80 = v21;
      v74 = MEMORY[0x1E69E9820];
      v75 = v22;
      v76 = v23;
      v77 = sub_1B038C908;
      v78 = &block_descriptor_6;
      v36 = _Block_copy(&v74);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](v35, v66, v61, v36);
      (*(v60 + 8))(v61, v58);
      (*(v65 + 8))(v66, v63);
      _Block_release(v36);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B06D75A0(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  v16 = 0;
  v9 = sub_1B06D8700;
  v34 = 0;
  v33 = 0;
  v10 = 0;
  v11 = sub_1B0E44238();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v15 = &p_Strong - v14;
  v19 = sub_1B0E44288();
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &p_Strong - v22;
  v34 = v2;
  v24 = v3 + 16;
  v33 = v3 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v6 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1B06D4E94(p_Strong);
    swift_endAccess();
    v8 = *(v6 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
    MEMORY[0x1E69E5928](v8);
    MEMORY[0x1E69E5920](v6);

    v30 = v9;
    v31 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v26 = 1107296256;
    v27 = 0;
    v28 = sub_1B038C908;
    v29 = &block_descriptor_16;
    v7 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](0, v23, v15, v7);
    (*(v12 + 8))(v15, v11);
    (*(v20 + 8))(v23, v19);
    _Block_release(v7);

    return MEMORY[0x1E69E5920](v8);
  }

  else
  {
    sub_1B06D4E94(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D78A8(uint64_t a1)
{
  v3[4] = a1 + 16;
  swift_beginAccess();
  v3[0] = swift_unknownObjectWeakLoadStrong();
  if (v3[0])
  {
    v2 = v3[0];
    MEMORY[0x1E69E5928](v3[0]);
    sub_1B06D4E94(v3);
    swift_endAccess();
    sub_1B06D7968();
    return MEMORY[0x1E69E5920](v2);
  }

  else
  {
    sub_1B06D4E94(v3);
    return swift_endAccess();
  }
}

uint64_t sub_1B06D7968()
{
  v35 = sub_1B06D83A8;
  v36 = sub_1B06D853C;
  v70 = 0;
  v69 = 0;
  v66 = 0;
  v37 = 0;
  v64 = 0;
  v43 = 0;
  v38 = sub_1B0E44238();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v42 = &v8 - v41;
  v44 = sub_1B0E44288();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v8 - v47;
  v53 = sub_1B0E44468();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v49 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v54 = (&v8 - v49);
  v70 = v0;
  MEMORY[0x1E69E5928](v0);
  v50 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_observerQueue);
  MEMORY[0x1E69E5928](v50);
  v1 = v51;
  *v54 = v50;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v55 = sub_1B0E44488();
  (*(v51 + 8))(v54, v53);
  result = v55;
  if (v55)
  {
    MEMORY[0x1E69E5920](v34);
    v30 = [objc_opt_self() sharedInstance];
    v32 = [v30 visibleMailboxObjectIDs];
    v29 = sub_1B06BD108();
    v31 = sub_1B0E451B8();
    v69 = v31;
    MEMORY[0x1E69E5920](v30);
    MEMORY[0x1E69E5920](v32);
    v33 = *(v34 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_mailboxPersistence);
    MEMORY[0x1E69E5928](v33);
    if (v33)
    {
      v28 = v33;
      v23 = v33;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v19 = &v56;
      v56 = v31;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
      v20 = sub_1B06D8548();
      sub_1B06D85C8();
      v21 = sub_1B0E45598();
      v22 = sub_1B0E453E8();

      v25 = [v23 mailboxDatabaseIDsForMailboxObjectIDs:v22 createIfNecessary:0];
      MEMORY[0x1E69E5920](v22);
      MEMORY[0x1E69E5920](v23);
      v24 = sub_1B039A494();
      sub_1B06D8328();
      v26 = sub_1B0E453F8();
      MEMORY[0x1E69E5920](v25);
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v67 = v27;
    if (v27)
    {
      v68 = v67;
    }

    else
    {
      v15 = 0;
      v16 = sub_1B039A494();
      v17 = sub_1B0E46A48();
      sub_1B06D8328();
      v68 = sub_1B0E45438();
      if (v67)
      {
        sub_1B039E440(&v67);
      }
    }

    v4 = v37;
    v12 = v68;
    v66 = v68;
    v65 = v68;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18B8, &qword_1B0E99EB0);
    sub_1B06D83F0();
    result = sub_1B0E44F58();
    v14 = result;
    if (!v4)
    {
      v11 = v14;
      v64 = v14;
      v10 = *(v34 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor19ClientStateObserver_queue);
      MEMORY[0x1E69E5928](v10);
      MEMORY[0x1E69E5928](v34);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v5 = swift_allocObject();
      v6 = v36;
      v7 = v11;
      *(v5 + 16) = v34;
      *(v5 + 24) = v7;
      v62 = v6;
      v63 = v5;
      aBlock = MEMORY[0x1E69E9820];
      v58 = 1107296256;
      v59 = 0;
      v60 = sub_1B038C908;
      v61 = &block_descriptor_12;
      v9 = _Block_copy(&aBlock);
      sub_1B039B81C();
      sub_1B039B77C();
      MEMORY[0x1B2727B00](0, v48, v42, v9);
      (*(v39 + 8))(v42, v38);
      (*(v45 + 8))(v48, v44);
      _Block_release(v9);

      MEMORY[0x1E69E5920](v10);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B06D8164(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v12 = a2;
  v11 = sub_1B0E42A08();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v6 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v4 - v6;
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);

  MEMORY[0x1E69E5928](v12);
  sub_1B0E429D8();
  v7(v10);
  (*(v8 + 8))(v10, v11);
  MEMORY[0x1E69E5920](v12);
}

unint64_t sub_1B06D8328()
{
  v2 = qword_1EB6DA5A8;
  if (!qword_1EB6DA5A8)
  {
    sub_1B039A494();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA5A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D83F0()
{
  v2 = qword_1EB6DACE8;
  if (!qword_1EB6DACE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18B8, &qword_1B0E99EB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DACE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D8478(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B09B014C(a2);
  }

  else
  {
    sub_1B0391AD4(v4);
    return swift_endAccess();
  }
}

unint64_t sub_1B06D8548()
{
  v2 = qword_1EB6DAAF8;
  if (!qword_1EB6DAAF8)
  {
    sub_1B06BD108();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06D85C8()
{
  v2 = qword_1EB6DAFC0;
  if (!qword_1EB6DAFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18C0, &qword_1B0E99EB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DAFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06D876C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v51 = a1;
  v48 = a2;
  v29 = "Fatal error";
  v30 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v31 = "Message/Configuration.swift";
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v34 = 0;
  v49 = sub_1B0E439A8();
  v46 = *(v49 - 8);
  v47 = v49 - 8;
  v32 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v12 - v32;
  v33 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18C8, &qword_1B0E99EE0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v54 = &v12 - v33;
  v55 = type metadata accessor for ConnectionConfiguration();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v35 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v12 - v35;
  v37 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v12 - v37;
  v60 = &v12 - v37;
  v39 = type metadata accessor for Configuration();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v43 = (&v12 - v42);
  v44 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v45 = (&v12 - v44);
  v59 = &v12 - v44;
  v58 = v7;
  v57 = v8;
  MEMORY[0x1E69E5928](v7);
  (*(v46 + 16))(v50, v48, v49);
  sub_1B06D8DD4(v51, v50, v54);
  if ((*(v52 + 48))(v54, 1, v55) == 1)
  {
    sub_1B06D94D8(v54);
    (*(v46 + 8))(v48, v49);
    MEMORY[0x1E69E5920](v51);
    return (*(v40 + 56))(v28, 1, 1, v39);
  }

  else
  {
    sub_1B06D95C4(v54, v38);
    v26 = sub_1B06D96CC(v10);
    v56 = v26;
    MEMORY[0x1E69E5928](v51);
    v27 = [v51 identifier];
    if (v27)
    {
      v25 = v27;
      v20 = v27;
      v21 = sub_1B0E44AD8();
      v22 = v11;
      MEMORY[0x1E69E5920](v20);
      v23 = v21;
      v24 = v22;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    v19 = v24;
    v18 = v23;
    MEMORY[0x1E69E5920](v51);
    if (v19)
    {
      v16 = v18;
      v17 = v19;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v12 = v17;
    v13 = v16;
    sub_1B06D9758(v38, v36);
    v15 = 1;
    v14 = 0;
    Configuration.init(logName:connection:mailboxFilter:fetchedMessageMetadata:)(v13, v12, v36, v26, 0, v43);
    sub_1B06D98D8(v43, v45);
    sub_1B06D9A6C(v38);
    sub_1B06D9B1C(v45, v28);
    (*(v40 + 56))(v28, v14, v15, v39);
    (*(v46 + 8))(v48, v49);
    MEMORY[0x1E69E5920](v51);
    return sub_1B06D9D34(v45);
  }
}

uint64_t sub_1B06D8DD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v42 = a1;
  v49 = a2;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v65 = 0;
  v62 = 0;
  v63 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D0, &qword_1B0E99EE8);
  v43 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v17 - v43;
  v44 = 0;
  v61 = sub_1B0E43BC8();
  v58 = *(v61 - 8);
  v59 = v61 - 8;
  v45 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v17 - v45;
  v47 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v17 - v47;
  v70 = &v17 - v47;
  v50 = type metadata accessor for ConnectionConfiguration();
  v51 = *(v50 - 8);
  v52 = v50 - 8;
  v54 = *(v51 + 64);
  v53 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v17 - v53;
  v56 = (v54 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17 - v53);
  v57 = &v17 - v56;
  v69 = &v17 - v56;
  v68 = a1;
  v67 = v7;
  sub_1B06D9E08(v8);
  if ((*(v58 + 48))(v60, 1, v61) == 1)
  {
    sub_1B06DA5D4(v60);
LABEL_13:
    v16 = sub_1B0E439A8();
    (*(*(v16 - 8) + 8))(v49);
    MEMORY[0x1E69E5920](v42);
    return (*(v51 + 56))(v41, 1, 1, v50);
  }

  (*(v58 + 32))(v48, v60, v61);
  v40 = sub_1B0A61548();
  if ((v40 & 0xFC) == 0xFC)
  {
    (*(v58 + 8))(v48, v61);
    goto LABEL_13;
  }

  v39 = v40;
  v37 = v40;
  v66 = v40;
  MEMORY[0x1E69E5928](v42);
  v9 = [v42 sourceApplicationBundleIdentifier];
  v38 = v9;
  if (v9)
  {
    v36 = v38;
    v31 = v38;
    v32 = sub_1B0E44AD8();
    v33 = v10;
    MEMORY[0x1E69E5920](v31);
    v34 = v32;
    v35 = v33;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v28 = v35;
  v29 = v34;
  v64 = v34;
  v65 = v35;
  MEMORY[0x1E69E5920](v42);
  v30 = [v42 networkAccountIdentifier];
  if (v30)
  {
    v27 = v30;
    v22 = v30;
    v23 = sub_1B0E44AD8();
    v24 = v11;
    MEMORY[0x1E69E5920](v22);
    v25 = v23;
    v26 = v24;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v18 = v26;
  v17 = v25;
  v62 = v25;
  v63 = v26;
  (*(v58 + 16))(v46, v48, v61);
  v12 = sub_1B0394868();
  v21 = 0;
  v20 = 1;
  v19 = 0;
  ConnectionConfiguration.init(transportLayerSecurity:transportLayerSecurityOptions:endpoint:prohibitConstrainedPaths:prohibitedInterfaceTypes:sourceApplicationBundleIdentifier:sourceApplicationKind:networkAccountIdentifier:)(v37, v46, v12 & 1, 0, v29, v28, 0, v55, v17, v18);
  v13 = sub_1B06D95C4(v55, v57);
  (*(v58 + 8))(v48, v61, v13);
  sub_1B06D9758(v57, v41);
  (*(v51 + 56))(v41, v19, v20, v50);
  v14 = sub_1B0E439A8();
  (*(*(v14 - 8) + 8))(v49);
  MEMORY[0x1E69E5920](v42);
  return sub_1B06D9A6C(v57);
}

uint64_t sub_1B06D94D8(uint64_t a1)
{
  v7 = type metadata accessor for ConnectionConfiguration();
  if (!(*(*(v7 - 1) + 48))(a1, 1))
  {
    v1 = sub_1B0E43BC8();
    (*(*(v1 - 8) + 8))(a1);
    v2 = *(a1 + v7[6]);

    v3 = *(a1 + v7[8] + 8);

    v4 = *(a1 + v7[10] + 8);
  }

  return a1;
}

__n128 sub_1B06D95C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43BC8();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for ConnectionConfiguration();
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  *(a2 + v3[8]) = *(a1 + v3[8]);
  *(a2 + v3[9]) = *(a1 + v3[9]) & 1;
  result = *(a1 + v3[10]);
  *(a2 + v3[10]) = result;
  return result;
}

BOOL sub_1B06D96CC(uint64_t a1)
{
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1(a1);
  v3[3] = &unk_1F26A3990;
  v3[4] = sub_1B06E3170();
  v2 = sub_1B0E434A8();
  __swift_destroy_boxed_opaque_existential_0(v3);
  return (v2 & 1) == 0;
}

uint64_t sub_1B06D9758(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E43BC8();
  (*(*(v2 - 8) + 16))(a2, a1);
  v11 = type metadata accessor for ConnectionConfiguration();
  *(a2 + v11[5]) = *(a1 + v11[5]);
  v6 = v11[6];
  v7 = *(a1 + v6);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(a2 + v6) = v7;
  *(a2 + v11[7]) = *(a1 + v11[7]);
  v3 = v11[8];
  v9 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v10 = *(a1 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v9 + 8) = v10;
  *(a2 + v11[9]) = *(a1 + v11[9]);
  v4 = v11[10];
  v13 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v14 = *(a1 + v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v13 + 8) = v14;
  return result;
}

__n128 sub_1B06D98D8(_OWORD *a1, _OWORD *a2)
{
  *a2 = *a1;
  v7 = type metadata accessor for Configuration();
  v5 = v7[5];
  v2 = sub_1B0E43BC8();
  v6 = a2 + v5;
  (*(*(v2 - 8) + 32))();
  v3 = type metadata accessor for ConnectionConfiguration();
  v6[v3[5]] = *(a1 + v5 + v3[5]);
  *&v6[v3[6]] = *(a1 + v5 + v3[6]);
  v6[v3[7]] = *(a1 + v5 + v3[7]);
  *&v6[v3[8]] = *(a1 + v5 + v3[8]);
  v6[v3[9]] = *(a1 + v5 + v3[9]) & 1;
  result = *(a1 + v5 + v3[10]);
  *&v6[v3[10]] = result;
  *(a2 + v7[6]) = *(a1 + v7[6]) & 1;
  *(a2 + v7[7]) = *(a1 + v7[7]) & 1;
  return result;
}

uint64_t sub_1B06D9A6C(uint64_t a1)
{
  v1 = sub_1B0E43BC8();
  (*(*(v1 - 8) + 8))(a1);
  v6 = type metadata accessor for ConnectionConfiguration();
  v2 = *(a1 + v6[6]);

  v3 = *(a1 + v6[8] + 8);

  v4 = *(a1 + v6[10] + 8);

  return a1;
}

void *sub_1B06D9B1C(void *a1, void *a2)
{
  *a2 = *a1;
  v6 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  a2[1] = v6;
  v17 = type metadata accessor for Configuration();
  v7 = v17[5];
  v2 = sub_1B0E43BC8();
  v13 = a2 + v7;
  (*(*(v2 - 8) + 16))();
  v10 = type metadata accessor for ConnectionConfiguration();
  v13[v10[5]] = *(a1 + v7 + v10[5]);
  v8 = v10[6];
  v9 = *(a1 + v7 + v8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *&v13[v8] = v9;
  v13[v10[7]] = *(a1 + v7 + v10[7]);
  v3 = v10[8];
  v11 = a2 + v7 + v3;
  *&v13[v3] = *(a1 + v7 + v3);
  v12 = *(a1 + v7 + v3 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  *(v11 + 1) = v12;
  v13[v10[9]] = *(a1 + v7 + v10[9]);
  v4 = v10[10];
  v15 = a2 + v7 + v4;
  *&v13[v4] = *(a1 + v7 + v4);
  v16 = *(a1 + v7 + v4 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *(v15 + 1) = v16;
  *(a2 + v17[6]) = *(a1 + v17[6]);
  *(a2 + v17[7]) = *(a1 + v17[7]);
  return result;
}

uint64_t sub_1B06D9D34(uint64_t a1)
{
  v1 = *(a1 + 8);

  v7 = *(type metadata accessor for Configuration() + 20);
  v2 = sub_1B0E43BC8();
  (*(*(v2 - 8) + 8))();
  v8 = type metadata accessor for ConnectionConfiguration();
  v3 = *(a1 + v7 + v8[6]);

  v4 = *(a1 + v7 + v8[8] + 8);

  v5 = *(a1 + v7 + v8[10] + 8);

  return a1;
}

uint64_t sub_1B06D9E08@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v57 = 0;
  v58 = 0;
  v54 = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18D8, &unk_1B0E99EF0);
  v41 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v13 - v41;
  v43 = sub_1B0E43BB8();
  v44 = *(v43 - 8);
  v45 = v43 - 8;
  v46 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v52);
  v47 = &v13 - v46;
  v61 = &v13 - v46;
  v48 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v13 - v48;
  v50 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v13 - v50;
  v60 = &v13 - v50;
  v59 = v6;
  MEMORY[0x1E69E5928](v6);
  v53 = [v52 hostname];
  if (v53)
  {
    v39 = v53;
    v34 = v53;
    v35 = sub_1B0E44AD8();
    v36 = v7;
    MEMORY[0x1E69E5920](v34);
    v37 = v35;
    v38 = v36;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v32 = v38;
  v33 = v37;
  if (v38)
  {
    v30 = v33;
    v31 = v32;
    v27 = v32;
    v28 = v33;
    v57 = v33;
    v58 = v32;
    MEMORY[0x1E69E5920](v52);
    MEMORY[0x1E69E5928](v52);
    v29 = [v52 portNumber];
    MEMORY[0x1E69E5920](v52);
    if (v29 <= 0xFFFF)
    {
      v55 = v29;
      v56 = 0;
    }

    else
    {
      v55 = 0;
      v56 = 1;
    }

    v26 = v55;
    if ((v56 & 1) == 0)
    {
      v25 = v26;
      v23 = v26;
      v54 = v26;
      v8 = sub_1B0A61548();
      v24 = v8;
      if ((v8 & 0xFC) == 0xFC)
      {
        goto LABEL_26;
      }

      v22 = v24;
      v21 = (v24 >> 6) & 3;
      if (v21)
      {
        if (v21 == 1)
        {
          if (v23)
          {
LABEL_26:
            sub_1B0E43B98();
            if ((*(v44 + 48))(v42, 1, v43) == 1)
            {
              sub_1B06E31EC(v42);
              v9 = sub_1B0E43BC8();
              (*(*(v9 - 8) + 56))(v40, 1);
            }

            v20 = *(v44 + 32);
            v19 = v44 + 32;
            v20(v47, v42, v43);
            (*(v44 + 16))(v49, v47, v43);
            v20(v51, v49, v43);
            (*(v44 + 8))(v47, v43);
            goto LABEL_29;
          }

          sub_1B0E43B88();
          (*(v44 + 32))(v51, v49, v43);
LABEL_29:
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E0, &qword_1B0ED0CD0);
          v14 = v40 + *(v11 + 48);
          sub_1B0E43B68();
          (*(v44 + 16))(v14, v51, v43);
          v15 = *MEMORY[0x1E6977B08];
          v18 = sub_1B0E43BC8();
          v16 = *(v18 - 8);
          v17 = v18 - 8;
          (*(v16 + 104))(v40, v15);
          (*(v16 + 56))(v40, 0, 1, v18);
          return (*(v44 + 8))(v51, v43);
        }

        if (v23)
        {
          goto LABEL_26;
        }
      }

      else if (v23)
      {
        goto LABEL_26;
      }

      sub_1B0E43B78();
      (*(v44 + 32))(v51, v49, v43);
      goto LABEL_29;
    }
  }

  else
  {
    MEMORY[0x1E69E5920](v52);
  }

  v12 = sub_1B0E43BC8();
  return (*(*(v12 - 8) + 56))(v40, 1);
}

uint64_t sub_1B06DA5D4(uint64_t a1)
{
  v3 = sub_1B0E43BC8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1B06DA67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v519 = a5;
  v643 = a1;
  v630 = a2;
  v631 = a3;
  v632 = a4;
  v520 = sub_1B039BBE8;
  v521 = sub_1B0394C30;
  v522 = sub_1B0394C24;
  v523 = sub_1B039BA2C;
  v524 = sub_1B039BA88;
  v525 = sub_1B039BB94;
  v526 = sub_1B0394C24;
  v527 = sub_1B039BBA0;
  v528 = sub_1B039BC08;
  v529 = sub_1B0398F5C;
  v530 = sub_1B0398F5C;
  v531 = sub_1B0399178;
  v532 = sub_1B0398F5C;
  v533 = sub_1B0398F5C;
  v534 = sub_1B039BA94;
  v535 = sub_1B0398F5C;
  v536 = sub_1B0398F5C;
  v537 = sub_1B0399178;
  v538 = sub_1B0398F5C;
  v539 = sub_1B0398F5C;
  v540 = sub_1B03991EC;
  v541 = sub_1B039BBE8;
  v542 = sub_1B06E34F4;
  v543 = sub_1B06E3508;
  v544 = sub_1B06E3510;
  v545 = sub_1B0394C24;
  v546 = sub_1B039BA2C;
  v547 = sub_1B039BA88;
  v548 = sub_1B0394C24;
  v549 = sub_1B039BBA0;
  v550 = sub_1B039BC08;
  v551 = sub_1B06E34EC;
  v552 = sub_1B03B0DF8;
  v553 = 0x786F626C69616DLL;
  v554 = sub_1B06BA324;
  v555 = sub_1B06E34FC;
  v556 = sub_1B039BCF8;
  v557 = sub_1B06BA324;
  v558 = sub_1B06E34FC;
  v559 = sub_1B039BCF8;
  v560 = sub_1B06BA324;
  v561 = sub_1B06E34FC;
  v562 = sub_1B039BCF8;
  v563 = sub_1B0398F5C;
  v564 = sub_1B0398F5C;
  v565 = sub_1B0399178;
  v566 = sub_1B0398F5C;
  v567 = sub_1B0398F5C;
  v568 = sub_1B039BA94;
  v569 = sub_1B0398F5C;
  v570 = sub_1B0398F5C;
  v571 = sub_1B0399178;
  v572 = sub_1B0398F5C;
  v573 = sub_1B0398F5C;
  v574 = sub_1B03991EC;
  v575 = sub_1B0398F5C;
  v576 = sub_1B0398F5C;
  v577 = sub_1B0399260;
  v578 = sub_1B0398F5C;
  v579 = sub_1B0398F5C;
  v580 = sub_1B03993BC;
  v581 = sub_1B0398F5C;
  v582 = sub_1B0398F5C;
  v583 = sub_1B039BCEC;
  v584 = sub_1B0398F5C;
  v585 = sub_1B0398F5C;
  v586 = sub_1B03993BC;
  v587 = sub_1B0398F5C;
  v588 = sub_1B0398F5C;
  v589 = sub_1B039BCEC;
  v590 = sub_1B0398F5C;
  v591 = sub_1B0398F5C;
  v592 = sub_1B03993BC;
  v593 = sub_1B0398F5C;
  v594 = sub_1B0398F5C;
  v595 = sub_1B039BCEC;
  v596 = "Fatal error";
  v597 = "Not enough bits to represent the passed value";
  v598 = "Swift/Integers.swift";
  v599 = "Not enough bits to represent a signed value";
  v600 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v601 = "Message/Configuration.swift";
  v602 = sub_1B039BBE8;
  v603 = sub_1B0394C24;
  v604 = sub_1B039BA2C;
  v605 = sub_1B039BA88;
  v606 = sub_1B0394C24;
  v607 = sub_1B039BBA0;
  v608 = sub_1B039BC08;
  v609 = sub_1B0398F5C;
  v610 = sub_1B0398F5C;
  v611 = sub_1B0399178;
  v612 = sub_1B0398F5C;
  v613 = sub_1B0398F5C;
  v614 = sub_1B039BA94;
  v615 = sub_1B0398F5C;
  v616 = sub_1B0398F5C;
  v617 = sub_1B0399178;
  v618 = sub_1B0398F5C;
  v619 = sub_1B0398F5C;
  v620 = sub_1B03991EC;
  v676 = 0;
  v677 = 0;
  v675 = 0;
  v674 = 0;
  v673 = 0;
  v672 = 0;
  v621 = 0;
  v657 = 0;
  v658 = 0;
  v654 = 0;
  v655 = 0;
  v622 = 0;
  v623 = _s6LoggerVMa();
  v624 = (*(*(v623 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](0);
  v625 = &v233 - v624;
  v626 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v627 = &v233 - v626;
  v628 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v629 = &v233 - v628;
  v634 = sub_1B0E439A8();
  v635 = *(v634 - 8);
  v636 = v634 - 8;
  v640 = *(v635 + 64);
  v637 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v633);
  v638 = &v233 - v637;
  v639 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v641 = &v233 - v639;
  v642 = (v640 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v644 = &v233 - v642;
  v676 = v643;
  v677 = v12;
  v675 = v13;
  v674 = v14;
  v673 = v11;
  v645 = sub_1B06DE748(v11, v14, v13);
  v672 = v645;
  v671 = v645;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  if (sub_1B0E45748())
  {
    (*(v635 + 16))(v638, v632, v634);
    sub_1B0394784(v632, v629);
    sub_1B0394784(v629, v627);
    sub_1B03F4FD0(v629, v625);
    v185 = (v627 + *(v623 + 20));
    v256 = *v185;
    v257 = *(v185 + 1);
    sub_1B039480C(v627);
    v255 = 24;
    v267 = 7;
    v186 = swift_allocObject();
    v187 = v257;
    v260 = v186;
    *(v186 + 16) = v256;
    *(v186 + 20) = v187;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v188 = swift_allocObject();
    v189 = v257;
    v258 = v188;
    *(v188 + 16) = v256;
    *(v188 + 20) = v189;

    v266 = 32;
    v190 = swift_allocObject();
    v191 = v258;
    v268 = v190;
    *(v190 + 16) = v520;
    *(v190 + 24) = v191;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v625);
    v285 = sub_1B0E43988();
    v286 = sub_1B0E458D8();
    v264 = 17;
    v270 = swift_allocObject();
    v262 = 16;
    *(v270 + 16) = 16;
    v271 = swift_allocObject();
    v265 = 4;
    *(v271 + 16) = 4;
    v192 = swift_allocObject();
    v259 = v192;
    *(v192 + 16) = v521;
    *(v192 + 24) = 0;
    v193 = swift_allocObject();
    v194 = v259;
    v272 = v193;
    *(v193 + 16) = v522;
    *(v193 + 24) = v194;
    v273 = swift_allocObject();
    *(v273 + 16) = 0;
    v274 = swift_allocObject();
    *(v274 + 16) = 1;
    v195 = swift_allocObject();
    v196 = v260;
    v261 = v195;
    *(v195 + 16) = v523;
    *(v195 + 24) = v196;
    v197 = swift_allocObject();
    v198 = v261;
    v275 = v197;
    *(v197 + 16) = v524;
    *(v197 + 24) = v198;
    v276 = swift_allocObject();
    *(v276 + 16) = v262;
    v277 = swift_allocObject();
    *(v277 + 16) = v265;
    v199 = swift_allocObject();
    v263 = v199;
    *(v199 + 16) = v525;
    *(v199 + 24) = 0;
    v200 = swift_allocObject();
    v201 = v263;
    v278 = v200;
    *(v200 + 16) = v526;
    *(v200 + 24) = v201;
    v279 = swift_allocObject();
    *(v279 + 16) = 0;
    v280 = swift_allocObject();
    *(v280 + 16) = v265;
    v202 = swift_allocObject();
    v203 = v268;
    v269 = v202;
    *(v202 + 16) = v527;
    *(v202 + 24) = v203;
    v204 = swift_allocObject();
    v205 = v269;
    v282 = v204;
    *(v204 + 16) = v528;
    *(v204 + 24) = v205;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v281 = sub_1B0E46A48();
    v283 = v206;

    v207 = v270;
    v208 = v283;
    *v283 = v529;
    v208[1] = v207;

    v209 = v271;
    v210 = v283;
    v283[2] = v530;
    v210[3] = v209;

    v211 = v272;
    v212 = v283;
    v283[4] = v531;
    v212[5] = v211;

    v213 = v273;
    v214 = v283;
    v283[6] = v532;
    v214[7] = v213;

    v215 = v274;
    v216 = v283;
    v283[8] = v533;
    v216[9] = v215;

    v217 = v275;
    v218 = v283;
    v283[10] = v534;
    v218[11] = v217;

    v219 = v276;
    v220 = v283;
    v283[12] = v535;
    v220[13] = v219;

    v221 = v277;
    v222 = v283;
    v283[14] = v536;
    v222[15] = v221;

    v223 = v278;
    v224 = v283;
    v283[16] = v537;
    v224[17] = v223;

    v225 = v279;
    v226 = v283;
    v283[18] = v538;
    v226[19] = v225;

    v227 = v280;
    v228 = v283;
    v283[20] = v539;
    v228[21] = v227;

    v229 = v282;
    v230 = v283;
    v283[22] = v540;
    v230[23] = v229;
    sub_1B0394964();

    if (os_log_type_enabled(v285, v286))
    {
      v231 = v621;
      v248 = sub_1B0E45D78();
      v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v247 = 0;
      v249 = sub_1B03949A8(0);
      v250 = sub_1B03949A8(v247);
      v251 = &v669;
      v669 = v248;
      v252 = &v668;
      v668 = v249;
      v253 = &v667;
      v667 = v250;
      sub_1B0394A48(0, &v669);
      sub_1B0394A48(4, v251);
      v665 = v529;
      v666 = v270;
      sub_1B03949FC(&v665, v251, v252, v253);
      v254 = v231;
      if (v231)
      {

        __break(1u);
      }

      else
      {
        v665 = v530;
        v666 = v271;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v245 = 0;
        v665 = v531;
        v666 = v272;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v244 = 0;
        v665 = v532;
        v666 = v273;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v243 = 0;
        v665 = v533;
        v666 = v274;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v242 = 0;
        v665 = v534;
        v666 = v275;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v241 = 0;
        v665 = v535;
        v666 = v276;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v240 = 0;
        v665 = v536;
        v666 = v277;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v239 = 0;
        v665 = v537;
        v666 = v278;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v238 = 0;
        v665 = v538;
        v666 = v279;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v237 = 0;
        v665 = v539;
        v666 = v280;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        v236 = 0;
        v665 = v540;
        v666 = v282;
        sub_1B03949FC(&v665, &v669, &v668, &v667);
        _os_log_impl(&dword_1B0389000, v285, v286, "[%.*hhx-%.*X] APNS: Not registering.", v248, 0x17u);
        v235 = 0;
        sub_1B03998A8(v249);
        sub_1B03998A8(v250);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v285);
    (*(v635 + 8))(v638, v634);
    v234 = v670;
    memset(v670, 0, sizeof(v670));

    memcpy(__dst, v234, sizeof(__dst));
  }

  else
  {
    v447 = *(v635 + 16);
    v448 = v635 + 16;
    v447(v644, v632, v634);
    sub_1B0394784(v632, v629);
    sub_1B0394784(v629, v627);
    sub_1B03F4FD0(v629, v625);
    v15 = (v627 + *(v623 + 20));
    v449 = *v15;
    v450 = *(v15 + 1);
    sub_1B039480C(v627);
    v472 = 24;
    v478 = 7;
    v16 = swift_allocObject();
    v17 = v450;
    v456 = v16;
    *(v16 + 16) = v449;
    *(v16 + 20) = v17;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = swift_allocObject();
    v19 = v450;
    v451 = v18;
    *(v18 + 16) = v449;
    *(v18 + 20) = v19;

    v477 = 32;
    v20 = swift_allocObject();
    v21 = v451;
    v461 = v20;
    *(v20 + 16) = v541;
    *(v20 + 24) = v21;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v625);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v463 = swift_allocObject();
    *(v463 + 16) = v645;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v452 = swift_allocObject();
    *(v452 + 16) = v645;

    v22 = swift_allocObject();
    v23 = v452;
    v466 = v22;
    *(v22 + 16) = v542;
    *(v22 + 24) = v23;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v453 = swift_allocObject();
    *(v453 + 16) = v645;

    v24 = swift_allocObject();
    v25 = v453;
    v469 = v24;
    *(v24 + 16) = v543;
    *(v24 + 24) = v25;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v454 = swift_allocObject();
    *(v454 + 16) = v645;

    v26 = swift_allocObject();
    v27 = v454;
    v479 = v26;
    *(v26 + 16) = v544;
    *(v26 + 24) = v27;

    v517 = sub_1B0E43988();
    v518 = sub_1B0E45908();
    v475 = 17;
    v481 = swift_allocObject();
    v458 = 16;
    *(v481 + 16) = 16;
    v482 = swift_allocObject();
    v460 = 4;
    *(v482 + 16) = 4;
    v28 = swift_allocObject();
    v455 = v28;
    *(v28 + 16) = v521;
    *(v28 + 24) = 0;
    v29 = swift_allocObject();
    v30 = v455;
    v483 = v29;
    *(v29 + 16) = v545;
    *(v29 + 24) = v30;
    v484 = swift_allocObject();
    *(v484 + 16) = 0;
    v485 = swift_allocObject();
    *(v485 + 16) = 1;
    v31 = swift_allocObject();
    v32 = v456;
    v457 = v31;
    *(v31 + 16) = v546;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v457;
    v486 = v33;
    *(v33 + 16) = v547;
    *(v33 + 24) = v34;
    v487 = swift_allocObject();
    *(v487 + 16) = v458;
    v488 = swift_allocObject();
    *(v488 + 16) = v460;
    v35 = swift_allocObject();
    v459 = v35;
    *(v35 + 16) = v525;
    *(v35 + 24) = 0;
    v36 = swift_allocObject();
    v37 = v459;
    v489 = v36;
    *(v36 + 16) = v548;
    *(v36 + 24) = v37;
    v490 = swift_allocObject();
    *(v490 + 16) = 0;
    v491 = swift_allocObject();
    *(v491 + 16) = v460;
    v38 = swift_allocObject();
    v39 = v461;
    v462 = v38;
    *(v38 + 16) = v549;
    *(v38 + 24) = v39;
    v40 = swift_allocObject();
    v41 = v462;
    v492 = v40;
    *(v40 + 16) = v550;
    *(v40 + 24) = v41;
    v493 = swift_allocObject();
    *(v493 + 16) = 0;
    v494 = swift_allocObject();
    v476 = 8;
    *(v494 + 16) = 8;
    v42 = swift_allocObject();
    v43 = v463;
    v464 = v42;
    *(v42 + 16) = v551;
    *(v42 + 24) = v43;
    v44 = swift_allocObject();
    v45 = v464;
    v495 = v44;
    *(v44 + 16) = v552;
    *(v44 + 24) = v45;
    v496 = swift_allocObject();
    v471 = 112;
    *(v496 + 16) = 112;
    v497 = swift_allocObject();
    *(v497 + 16) = v476;
    v465 = swift_allocObject();
    *(v465 + 16) = v553;
    v46 = swift_allocObject();
    v47 = v465;
    v498 = v46;
    *(v46 + 16) = v554;
    *(v46 + 24) = v47;
    v499 = swift_allocObject();
    v474 = 37;
    *(v499 + 16) = 37;
    v500 = swift_allocObject();
    *(v500 + 16) = v476;
    v48 = swift_allocObject();
    v49 = v466;
    v467 = v48;
    *(v48 + 16) = v555;
    *(v48 + 24) = v49;
    v50 = swift_allocObject();
    v51 = v467;
    v501 = v50;
    *(v50 + 16) = v556;
    *(v50 + 24) = v51;
    v502 = swift_allocObject();
    *(v502 + 16) = v471;
    v503 = swift_allocObject();
    *(v503 + 16) = v476;
    v468 = swift_allocObject();
    *(v468 + 16) = v553;
    v52 = swift_allocObject();
    v53 = v468;
    v504 = v52;
    *(v52 + 16) = v557;
    *(v52 + 24) = v53;
    v505 = swift_allocObject();
    *(v505 + 16) = v474;
    v506 = swift_allocObject();
    *(v506 + 16) = v476;
    v54 = swift_allocObject();
    v55 = v469;
    v470 = v54;
    *(v54 + 16) = v558;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v470;
    v507 = v56;
    *(v56 + 16) = v559;
    *(v56 + 24) = v57;
    v508 = swift_allocObject();
    *(v508 + 16) = v471;
    v509 = swift_allocObject();
    *(v509 + 16) = v476;
    v473 = swift_allocObject();
    *(v473 + 16) = v553;
    v58 = swift_allocObject();
    v59 = v473;
    v510 = v58;
    *(v58 + 16) = v560;
    *(v58 + 24) = v59;
    v511 = swift_allocObject();
    *(v511 + 16) = v474;
    v512 = swift_allocObject();
    *(v512 + 16) = v476;
    v60 = swift_allocObject();
    v61 = v479;
    v480 = v60;
    *(v60 + 16) = v561;
    *(v60 + 24) = v61;
    v62 = swift_allocObject();
    v63 = v480;
    v514 = v62;
    *(v62 + 16) = v562;
    *(v62 + 24) = v63;
    v516 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v513 = sub_1B0E46A48();
    v515 = v64;

    v65 = v481;
    v66 = v515;
    *v515 = v563;
    v66[1] = v65;

    v67 = v482;
    v68 = v515;
    v515[2] = v564;
    v68[3] = v67;

    v69 = v483;
    v70 = v515;
    v515[4] = v565;
    v70[5] = v69;

    v71 = v484;
    v72 = v515;
    v515[6] = v566;
    v72[7] = v71;

    v73 = v485;
    v74 = v515;
    v515[8] = v567;
    v74[9] = v73;

    v75 = v486;
    v76 = v515;
    v515[10] = v568;
    v76[11] = v75;

    v77 = v487;
    v78 = v515;
    v515[12] = v569;
    v78[13] = v77;

    v79 = v488;
    v80 = v515;
    v515[14] = v570;
    v80[15] = v79;

    v81 = v489;
    v82 = v515;
    v515[16] = v571;
    v82[17] = v81;

    v83 = v490;
    v84 = v515;
    v515[18] = v572;
    v84[19] = v83;

    v85 = v491;
    v86 = v515;
    v515[20] = v573;
    v86[21] = v85;

    v87 = v492;
    v88 = v515;
    v515[22] = v574;
    v88[23] = v87;

    v89 = v493;
    v90 = v515;
    v515[24] = v575;
    v90[25] = v89;

    v91 = v494;
    v92 = v515;
    v515[26] = v576;
    v92[27] = v91;

    v93 = v495;
    v94 = v515;
    v515[28] = v577;
    v94[29] = v93;

    v95 = v496;
    v96 = v515;
    v515[30] = v578;
    v96[31] = v95;

    v97 = v497;
    v98 = v515;
    v515[32] = v579;
    v98[33] = v97;

    v99 = v498;
    v100 = v515;
    v515[34] = v580;
    v100[35] = v99;

    v101 = v499;
    v102 = v515;
    v515[36] = v581;
    v102[37] = v101;

    v103 = v500;
    v104 = v515;
    v515[38] = v582;
    v104[39] = v103;

    v105 = v501;
    v106 = v515;
    v515[40] = v583;
    v106[41] = v105;

    v107 = v502;
    v108 = v515;
    v515[42] = v584;
    v108[43] = v107;

    v109 = v503;
    v110 = v515;
    v515[44] = v585;
    v110[45] = v109;

    v111 = v504;
    v112 = v515;
    v515[46] = v586;
    v112[47] = v111;

    v113 = v505;
    v114 = v515;
    v515[48] = v587;
    v114[49] = v113;

    v115 = v506;
    v116 = v515;
    v515[50] = v588;
    v116[51] = v115;

    v117 = v507;
    v118 = v515;
    v515[52] = v589;
    v118[53] = v117;

    v119 = v508;
    v120 = v515;
    v515[54] = v590;
    v120[55] = v119;

    v121 = v509;
    v122 = v515;
    v515[56] = v591;
    v122[57] = v121;

    v123 = v510;
    v124 = v515;
    v515[58] = v592;
    v124[59] = v123;

    v125 = v511;
    v126 = v515;
    v515[60] = v593;
    v126[61] = v125;

    v127 = v512;
    v128 = v515;
    v515[62] = v594;
    v128[63] = v127;

    v129 = v514;
    v130 = v515;
    v515[64] = v595;
    v130[65] = v129;
    sub_1B0394964();

    if (os_log_type_enabled(v517, v518))
    {
      v131 = v621;
      v440 = sub_1B0E45D78();
      v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v441 = sub_1B03949A8(0);
      v442 = sub_1B03949A8(3);
      v443 = &v651;
      v651 = v440;
      v444 = &v650;
      v650 = v441;
      v445 = &v649;
      v649 = v442;
      sub_1B0394A48(3, &v651);
      sub_1B0394A48(11, v443);
      v647 = v563;
      v648 = v481;
      sub_1B03949FC(&v647, v443, v444, v445);
      v446 = v131;
      if (v131)
      {

        __break(1u);
      }

      else
      {
        v647 = v564;
        v648 = v482;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v437 = 0;
        v647 = v565;
        v648 = v483;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v436 = 0;
        v647 = v566;
        v648 = v484;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v435 = 0;
        v647 = v567;
        v648 = v485;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v434 = 0;
        v647 = v568;
        v648 = v486;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v433 = 0;
        v647 = v569;
        v648 = v487;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v432 = 0;
        v647 = v570;
        v648 = v488;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v431 = 0;
        v647 = v571;
        v648 = v489;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v430 = 0;
        v647 = v572;
        v648 = v490;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v429 = 0;
        v647 = v573;
        v648 = v491;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v428 = 0;
        v647 = v574;
        v648 = v492;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v427 = 0;
        v647 = v575;
        v648 = v493;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v426 = 0;
        v647 = v576;
        v648 = v494;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v425 = 0;
        v647 = v577;
        v648 = v495;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v424 = 0;
        v647 = v578;
        v648 = v496;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v423 = 0;
        v647 = v579;
        v648 = v497;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v422 = 0;
        v647 = v580;
        v648 = v498;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v421 = 0;
        v647 = v581;
        v648 = v499;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v420 = 0;
        v647 = v582;
        v648 = v500;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v419 = 0;
        v647 = v583;
        v648 = v501;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v418 = 0;
        v647 = v584;
        v648 = v502;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v417 = 0;
        v647 = v585;
        v648 = v503;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v416 = 0;
        v647 = v586;
        v648 = v504;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v415 = 0;
        v647 = v587;
        v648 = v505;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v414 = 0;
        v647 = v588;
        v648 = v506;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v413 = 0;
        v647 = v589;
        v648 = v507;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v412 = 0;
        v647 = v590;
        v648 = v508;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v411 = 0;
        v647 = v591;
        v648 = v509;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v410 = 0;
        v647 = v592;
        v648 = v510;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v409 = 0;
        v647 = v593;
        v648 = v511;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v408 = 0;
        v647 = v594;
        v648 = v512;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v407 = 0;
        v647 = v595;
        v648 = v514;
        sub_1B03949FC(&v647, &v651, &v650, &v649);
        v406 = 0;
        _os_log_impl(&dword_1B0389000, v517, v518, "[%.*hhx-%.*X] APNS: %ld mailbox(es) {'%{sensitive,mask.mailbox}s', '%{sensitive,mask.mailbox}s', '%{sensitive,mask.mailbox}s'}", v440, 0x5Du);
        sub_1B03998A8(v441);
        sub_1B03998A8(v442);
        sub_1B0E45D58();

        v438 = v406;
      }
    }

    else
    {
      v132 = v621;

      v438 = v132;
    }

    v402 = v438;
    MEMORY[0x1E69E5920](v517);
    v403 = *(v635 + 8);
    v404 = v635 + 8;
    v403(v644, v634);
    v405 = [objc_opt_self() sharedManager];
    if (v405)
    {
      v401 = v405;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v399 = v401;
    swift_getObjectType();
    v400 = [v399 copyDeviceToken];
    if (v400)
    {
      v398 = v400;
      v393 = v400;
      v394 = sub_1B0E42F38();
      v395 = v133;
      MEMORY[0x1E69E5920](v393);
      v396 = v394;
      v397 = v395;
    }

    else
    {
      v396 = 0;
      v397 = 0xF000000000000000;
    }

    v391 = v397;
    v392 = v396;
    if ((v397 & 0xF000000000000000) == 0xF000000000000000)
    {
      swift_unknownObjectRelease();
      v388 = 0;
    }

    else
    {
      v389 = v392;
      v390 = v391;
      v385 = v391;
      v386 = v392;
      v387 = sub_1B0E42F18();
      sub_1B0391D50(v386, v385);
      swift_unknownObjectRelease();
      v388 = v387;
    }

    v384 = v388;
    if (v388)
    {
      v383 = v384;
      v377 = v384;
      v378 = [v384 ef_hexString];
      v379 = sub_1B0E44AD8();
      v380 = v134;
      MEMORY[0x1E69E5920](v377);
      MEMORY[0x1E69E5920](v378);
      v381 = v379;
      v382 = v380;
    }

    else
    {
      v381 = 0;
      v382 = 0;
    }

    v375 = v382;
    v376 = v381;
    if (v382)
    {
      v373 = v376;
      v374 = v375;
      v370 = v375;
      v371 = v376;
      v657 = v376;
      v658 = v375;
      v372 = MFUserAgent();
      if (v372)
      {
        v369 = v372;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v367 = v369;
      swift_getObjectType();
      v368 = [v367 isMaild];
      swift_unknownObjectRelease();
      if (v368)
      {
        v362 = *MEMORY[0x1E69B17F0];
        MEMORY[0x1E69E5928](v362);
        v363 = sub_1B0E44AD8();
        v364 = v135;
        MEMORY[0x1E69E5920](v362);
        v365 = v363;
        v366 = v364;
      }

      else
      {
        v360 = [objc_opt_self() mainBundle];
        v361 = [v360 bundleIdentifier];
        if (v361)
        {
          v359 = v361;
          v354 = v361;
          v355 = sub_1B0E44AD8();
          v356 = v136;
          MEMORY[0x1E69E5920](v354);
          v357 = v355;
          v358 = v356;
        }

        else
        {
          v357 = 0;
          v358 = 0;
        }

        v353 = v358;
        v352 = v357;
        MEMORY[0x1E69E5920](v360);
        v365 = v352;
        v366 = v353;
      }

      v350 = v366;
      v351 = v365;
      if (v366)
      {
        v348 = v351;
        v349 = v350;
        v345 = v350;
        v346 = v351;
        v654 = v351;
        v655 = v350;
        [v633 apsVersion];
        sub_1B041A044();
        v347 = v137;
        if (v137 < 0xFFFFFFFF80000000)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        if (v347 > 0x7FFFFFFF)
        {
          sub_1B0E465A8();
          __break(1u);
        }

        v340 = v347;
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v341 = v678;
        PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)(v340, v643, v630, v371, v370, v346, v345, v645, v678);
        v342 = v652;
        v344 = 64;
        memcpy(v652, v341, sizeof(v652));
        v343 = v653;
        memcpy(v653, v652, sizeof(v653));
        memcpy(__dst, v653, sizeof(__dst));
      }

      else
      {
        v339 = v656;
        memset(v656, 0, sizeof(v656));

        memcpy(__dst, v339, sizeof(__dst));
      }
    }

    else
    {
      v447(v641, v632, v634);
      sub_1B0394784(v632, v629);
      sub_1B0394784(v629, v627);
      sub_1B03F4FD0(v629, v625);
      v138 = (v627 + *(v623 + 20));
      v309 = *v138;
      v310 = *(v138 + 1);
      sub_1B039480C(v627);
      v308 = 24;
      v320 = 7;
      v139 = swift_allocObject();
      v140 = v310;
      v313 = v139;
      *(v139 + 16) = v309;
      *(v139 + 20) = v140;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v141 = swift_allocObject();
      v142 = v310;
      v311 = v141;
      *(v141 + 16) = v309;
      *(v141 + 20) = v142;

      v319 = 32;
      v143 = swift_allocObject();
      v144 = v311;
      v321 = v143;
      *(v143 + 16) = v602;
      *(v143 + 24) = v144;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v625);
      v337 = sub_1B0E43988();
      v338 = sub_1B0E458E8();
      v317 = 17;
      v323 = swift_allocObject();
      v315 = 16;
      *(v323 + 16) = 16;
      v324 = swift_allocObject();
      v318 = 4;
      *(v324 + 16) = 4;
      v145 = swift_allocObject();
      v312 = v145;
      *(v145 + 16) = v521;
      *(v145 + 24) = 0;
      v146 = swift_allocObject();
      v147 = v312;
      v325 = v146;
      *(v146 + 16) = v603;
      *(v146 + 24) = v147;
      v326 = swift_allocObject();
      *(v326 + 16) = 0;
      v327 = swift_allocObject();
      *(v327 + 16) = 1;
      v148 = swift_allocObject();
      v149 = v313;
      v314 = v148;
      *(v148 + 16) = v604;
      *(v148 + 24) = v149;
      v150 = swift_allocObject();
      v151 = v314;
      v328 = v150;
      *(v150 + 16) = v605;
      *(v150 + 24) = v151;
      v329 = swift_allocObject();
      *(v329 + 16) = v315;
      v330 = swift_allocObject();
      *(v330 + 16) = v318;
      v152 = swift_allocObject();
      v316 = v152;
      *(v152 + 16) = v525;
      *(v152 + 24) = 0;
      v153 = swift_allocObject();
      v154 = v316;
      v331 = v153;
      *(v153 + 16) = v606;
      *(v153 + 24) = v154;
      v332 = swift_allocObject();
      *(v332 + 16) = 0;
      v333 = swift_allocObject();
      *(v333 + 16) = v318;
      v155 = swift_allocObject();
      v156 = v321;
      v322 = v155;
      *(v155 + 16) = v607;
      *(v155 + 24) = v156;
      v157 = swift_allocObject();
      v158 = v322;
      v335 = v157;
      *(v157 + 16) = v608;
      *(v157 + 24) = v158;
      v334 = sub_1B0E46A48();
      v336 = v159;

      v160 = v323;
      v161 = v336;
      *v336 = v609;
      v161[1] = v160;

      v162 = v324;
      v163 = v336;
      v336[2] = v610;
      v163[3] = v162;

      v164 = v325;
      v165 = v336;
      v336[4] = v611;
      v165[5] = v164;

      v166 = v326;
      v167 = v336;
      v336[6] = v612;
      v167[7] = v166;

      v168 = v327;
      v169 = v336;
      v336[8] = v613;
      v169[9] = v168;

      v170 = v328;
      v171 = v336;
      v336[10] = v614;
      v171[11] = v170;

      v172 = v329;
      v173 = v336;
      v336[12] = v615;
      v173[13] = v172;

      v174 = v330;
      v175 = v336;
      v336[14] = v616;
      v175[15] = v174;

      v176 = v331;
      v177 = v336;
      v336[16] = v617;
      v177[17] = v176;

      v178 = v332;
      v179 = v336;
      v336[18] = v618;
      v179[19] = v178;

      v180 = v333;
      v181 = v336;
      v336[20] = v619;
      v181[21] = v180;

      v182 = v335;
      v183 = v336;
      v336[22] = v620;
      v183[23] = v182;
      sub_1B0394964();

      if (os_log_type_enabled(v337, v338))
      {
        v184 = v402;
        v301 = sub_1B0E45D78();
        v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v300 = 0;
        v302 = sub_1B03949A8(0);
        v303 = sub_1B03949A8(v300);
        v304 = &v663;
        v663 = v301;
        v305 = &v662;
        v662 = v302;
        v306 = &v661;
        v661 = v303;
        sub_1B0394A48(0, &v663);
        sub_1B0394A48(4, v304);
        v659 = v609;
        v660 = v323;
        sub_1B03949FC(&v659, v304, v305, v306);
        v307 = v184;
        if (v184)
        {

          __break(1u);
        }

        else
        {
          v659 = v610;
          v660 = v324;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v298 = 0;
          v659 = v611;
          v660 = v325;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v297 = 0;
          v659 = v612;
          v660 = v326;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v296 = 0;
          v659 = v613;
          v660 = v327;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v295 = 0;
          v659 = v614;
          v660 = v328;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v294 = 0;
          v659 = v615;
          v660 = v329;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v293 = 0;
          v659 = v616;
          v660 = v330;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v292 = 0;
          v659 = v617;
          v660 = v331;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v291 = 0;
          v659 = v618;
          v660 = v332;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v290 = 0;
          v659 = v619;
          v660 = v333;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          v289 = 0;
          v659 = v620;
          v660 = v335;
          sub_1B03949FC(&v659, &v663, &v662, &v661);
          _os_log_impl(&dword_1B0389000, v337, v338, "[%.*hhx-%.*X] APNS: no device token", v301, 0x17u);
          v288 = 0;
          sub_1B03998A8(v302);
          sub_1B03998A8(v303);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v337);
      v403(v641, v634);
      v287 = v664;
      memset(v664, 0, sizeof(v664));

      memcpy(__dst, v287, sizeof(__dst));
    }
  }

  return memcpy(v519, __dst, 0x40uLL);
}

uint64_t sub_1B06DE748(void *a1, uint64_t a2, uint64_t a3)
{
  v322 = a3;
  v324 = a2;
  v323 = a1;
  v315 = 0;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v314 = 0;
  v339 = 0;
  v334 = 0;
  v316 = _s6LoggerVMa();
  v318 = *(*(v316 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](0);
  v320 = (v318 + 15) & 0xFFFFFFFFFFFFFFF0;
  v317 = &v116 - v320;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v319 = &v116 - v320;
  MEMORY[0x1EEE9AC00](v4);
  v321 = &v116 - v320;
  v325 = sub_1B0E439A8();
  v326 = *(v325 - 8);
  v327 = v326;
  v328 = *(v326 + 64);
  v5 = MEMORY[0x1EEE9AC00](v323);
  v330 = (v328 + 15) & 0xFFFFFFFFFFFFFFF0;
  v329 = &v116 - v330;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v331 = &v116 - v330;
  v352 = v6;
  v351 = v7;
  v350 = v8;
  v332 = MFUserAgent();
  if (v332)
  {
    v313 = v332;
  }

  else
  {
    LODWORD(v114) = 0;
    v113 = 86;
    v112 = 2;
    sub_1B0E465A8();
    __break(1u);
  }

  v311 = v313;
  swift_getObjectType();
  v312 = [v311 canRegisterForAPSPush];
  swift_unknownObjectRelease();
  if (!v312)
  {
    v116 = sub_1B0E46A48();
    v288 = v116;
    v289 = v314;
    return v288;
  }

  if (![v323 shouldRegisterForPush])
  {
    (*(v327 + 16))(v329, v324, v325);
    sub_1B0394784(v324, v321);
    sub_1B0394784(v321, v319);
    sub_1B03F4FD0(v321, v317);
    v62 = (v319 + *(v316 + 20));
    v155 = *v62;
    v156 = *(v62 + 1);
    sub_1B039480C(v319);
    v154 = 24;
    v181 = 7;
    v63 = swift_allocObject();
    v64 = v156;
    v166 = v63;
    *(v63 + 16) = v155;
    *(v63 + 20) = v64;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v65 = swift_allocObject();
    v66 = v156;
    v157 = v65;
    *(v65 + 16) = v155;
    *(v65 + 20) = v66;

    v180 = 32;
    v67 = swift_allocObject();
    v68 = v157;
    v182 = v67;
    *(v67 + 16) = sub_1B039BBE8;
    *(v67 + 24) = v68;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v317);
    v201 = sub_1B0E43988();
    v158 = v201;
    v200 = sub_1B0E45908();
    v159 = v200;
    v176 = 17;
    v185 = swift_allocObject();
    v160 = v185;
    v169 = 16;
    *(v185 + 16) = 16;
    v186 = swift_allocObject();
    v161 = v186;
    v178 = 4;
    *(v186 + 16) = 4;
    v69 = swift_allocObject();
    v162 = v69;
    *(v69 + 16) = sub_1B0394C30;
    v172 = 0;
    *(v69 + 24) = 0;
    v70 = swift_allocObject();
    v71 = v162;
    v187 = v70;
    v163 = v70;
    *(v70 + 16) = sub_1B0394C24;
    *(v70 + 24) = v71;
    v188 = swift_allocObject();
    v164 = v188;
    v175 = 0;
    *(v188 + 16) = 0;
    v189 = swift_allocObject();
    v165 = v189;
    *(v189 + 16) = 1;
    v72 = swift_allocObject();
    v73 = v166;
    v167 = v72;
    *(v72 + 16) = sub_1B039BA2C;
    *(v72 + 24) = v73;
    v74 = swift_allocObject();
    v75 = v167;
    v190 = v74;
    v168 = v74;
    *(v74 + 16) = sub_1B039BA88;
    *(v74 + 24) = v75;
    v191 = swift_allocObject();
    v170 = v191;
    *(v191 + 16) = v169;
    v192 = swift_allocObject();
    v171 = v192;
    *(v192 + 16) = v178;
    v76 = swift_allocObject();
    v77 = v172;
    v173 = v76;
    *(v76 + 16) = sub_1B039BB94;
    *(v76 + 24) = v77;
    v78 = swift_allocObject();
    v79 = v173;
    v193 = v78;
    v174 = v78;
    *(v78 + 16) = sub_1B0394C24;
    *(v78 + 24) = v79;
    v194 = swift_allocObject();
    v177 = v194;
    *(v194 + 16) = v175;
    v195 = swift_allocObject();
    v179 = v195;
    *(v195 + 16) = v178;
    v80 = swift_allocObject();
    v81 = v182;
    v183 = v80;
    *(v80 + 16) = sub_1B039BBA0;
    *(v80 + 24) = v81;
    v82 = swift_allocObject();
    v83 = v183;
    v198 = v82;
    v184 = v82;
    *(v82 + 16) = sub_1B039BC08;
    *(v82 + 24) = v83;
    v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v196 = sub_1B0E46A48();
    v197 = v84;

    v85 = v185;
    v86 = v197;
    *v197 = sub_1B0398F5C;
    v86[1] = v85;

    v87 = v186;
    v88 = v197;
    v197[2] = sub_1B0398F5C;
    v88[3] = v87;

    v89 = v187;
    v90 = v197;
    v197[4] = sub_1B0399178;
    v90[5] = v89;

    v91 = v188;
    v92 = v197;
    v197[6] = sub_1B0398F5C;
    v92[7] = v91;

    v93 = v189;
    v94 = v197;
    v197[8] = sub_1B0398F5C;
    v94[9] = v93;

    v95 = v190;
    v96 = v197;
    v197[10] = sub_1B039BA94;
    v96[11] = v95;

    v97 = v191;
    v98 = v197;
    v197[12] = sub_1B0398F5C;
    v98[13] = v97;

    v99 = v192;
    v100 = v197;
    v197[14] = sub_1B0398F5C;
    v100[15] = v99;

    v101 = v193;
    v102 = v197;
    v197[16] = sub_1B0399178;
    v102[17] = v101;

    v103 = v194;
    v104 = v197;
    v197[18] = sub_1B0398F5C;
    v104[19] = v103;

    v105 = v195;
    v106 = v197;
    v197[20] = sub_1B0398F5C;
    v106[21] = v105;

    v107 = v197;
    v108 = v198;
    v197[22] = sub_1B03991EC;
    v107[23] = v108;
    sub_1B0394964();

    if (os_log_type_enabled(v201, v200))
    {
      v109 = v314;
      v148 = sub_1B0E45D78();
      v144 = v148;
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v146 = 0;
      v149 = sub_1B03949A8(0);
      v147 = v149;
      v150 = sub_1B03949A8(v146);
      v349 = v148;
      v348 = v149;
      v347 = v150;
      v151 = &v349;
      sub_1B0394A48(0, &v349);
      sub_1B0394A48(4, v151);
      v345 = sub_1B0398F5C;
      v346 = v160;
      sub_1B03949FC(&v345, v151, &v348, &v347);
      v152 = v109;
      v153 = v109;
      if (v109)
      {
        v142 = 0;

        __break(1u);
      }

      else
      {
        v345 = sub_1B0398F5C;
        v346 = v161;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v140 = 0;
        v141 = 0;
        v345 = sub_1B0399178;
        v346 = v163;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v138 = 0;
        v139 = 0;
        v345 = sub_1B0398F5C;
        v346 = v164;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v136 = 0;
        v137 = 0;
        v345 = sub_1B0398F5C;
        v346 = v165;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v134 = 0;
        v135 = 0;
        v345 = sub_1B039BA94;
        v346 = v168;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v132 = 0;
        v133 = 0;
        v345 = sub_1B0398F5C;
        v346 = v170;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v130 = 0;
        v131 = 0;
        v345 = sub_1B0398F5C;
        v346 = v171;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v128 = 0;
        v129 = 0;
        v345 = sub_1B0399178;
        v346 = v174;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v126 = 0;
        v127 = 0;
        v345 = sub_1B0398F5C;
        v346 = v177;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v124 = 0;
        v125 = 0;
        v345 = sub_1B0398F5C;
        v346 = v179;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v122 = 0;
        v123 = 0;
        v345 = sub_1B03991EC;
        v346 = v184;
        sub_1B03949FC(&v345, &v349, &v348, &v347);
        v120 = 0;
        v121 = 0;
        _os_log_impl(&dword_1B0389000, v158, v159, "[%.*hhx-%.*X] APNS: shouldRegisterForPush: NO", v144, 0x17u);
        v119 = 0;
        sub_1B03998A8(v147);
        sub_1B03998A8(v150);
        sub_1B0E45D58();

        v143 = v120;
      }
    }

    else
    {
      v110 = v314;

      v143 = v110;
    }

    v117 = v143;

    (*(v327 + 8))(v329, v325);
    v118 = sub_1B0E46A48();
    v288 = v118;
    v289 = v117;
    return v288;
  }

  v310 = [v323 mailboxesForPushRegistration];
  if (v310)
  {
    v309 = v310;
    v306 = v310;
    v305 = sub_1B03EE50C();
    v307 = sub_1B0E451B8();

    v308 = v307;
  }

  else
  {
    v308 = 0;
  }

  v304 = v308;
  if (!v308)
  {
LABEL_16:
    (*(v327 + 16))(v331, v324, v325);
    sub_1B0394784(v324, v321);
    sub_1B0394784(v321, v319);
    sub_1B03F4FD0(v321, v317);
    v13 = (v319 + *(v316 + 20));
    v240 = *v13;
    v241 = *(v13 + 1);
    sub_1B039480C(v319);
    v239 = 24;
    v266 = 7;
    v14 = swift_allocObject();
    v15 = v241;
    v251 = v14;
    *(v14 + 16) = v240;
    *(v14 + 20) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = swift_allocObject();
    v17 = v241;
    v242 = v16;
    *(v16 + 16) = v240;
    *(v16 + 20) = v17;

    v265 = 32;
    v18 = swift_allocObject();
    v19 = v242;
    v267 = v18;
    *(v18 + 16) = sub_1B039BBE8;
    *(v18 + 24) = v19;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v317);
    v286 = sub_1B0E43988();
    v243 = v286;
    v285 = sub_1B0E45908();
    v244 = v285;
    v261 = 17;
    v270 = swift_allocObject();
    v245 = v270;
    v254 = 16;
    *(v270 + 16) = 16;
    v271 = swift_allocObject();
    v246 = v271;
    v263 = 4;
    *(v271 + 16) = 4;
    v20 = swift_allocObject();
    v247 = v20;
    *(v20 + 16) = sub_1B0394C30;
    v257 = 0;
    *(v20 + 24) = 0;
    v21 = swift_allocObject();
    v22 = v247;
    v272 = v21;
    v248 = v21;
    *(v21 + 16) = sub_1B0394C24;
    *(v21 + 24) = v22;
    v273 = swift_allocObject();
    v249 = v273;
    v260 = 0;
    *(v273 + 16) = 0;
    v274 = swift_allocObject();
    v250 = v274;
    *(v274 + 16) = 1;
    v23 = swift_allocObject();
    v24 = v251;
    v252 = v23;
    *(v23 + 16) = sub_1B039BA2C;
    *(v23 + 24) = v24;
    v25 = swift_allocObject();
    v26 = v252;
    v275 = v25;
    v253 = v25;
    *(v25 + 16) = sub_1B039BA88;
    *(v25 + 24) = v26;
    v276 = swift_allocObject();
    v255 = v276;
    *(v276 + 16) = v254;
    v277 = swift_allocObject();
    v256 = v277;
    *(v277 + 16) = v263;
    v27 = swift_allocObject();
    v28 = v257;
    v258 = v27;
    *(v27 + 16) = sub_1B039BB94;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v258;
    v278 = v29;
    v259 = v29;
    *(v29 + 16) = sub_1B0394C24;
    *(v29 + 24) = v30;
    v279 = swift_allocObject();
    v262 = v279;
    *(v279 + 16) = v260;
    v280 = swift_allocObject();
    v264 = v280;
    *(v280 + 16) = v263;
    v31 = swift_allocObject();
    v32 = v267;
    v268 = v31;
    *(v31 + 16) = sub_1B039BBA0;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v268;
    v283 = v33;
    v269 = v33;
    *(v33 + 16) = sub_1B039BC08;
    *(v33 + 24) = v34;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v281 = sub_1B0E46A48();
    v282 = v35;

    v36 = v270;
    v37 = v282;
    *v282 = sub_1B0398F5C;
    v37[1] = v36;

    v38 = v271;
    v39 = v282;
    v282[2] = sub_1B0398F5C;
    v39[3] = v38;

    v40 = v272;
    v41 = v282;
    v282[4] = sub_1B0399178;
    v41[5] = v40;

    v42 = v273;
    v43 = v282;
    v282[6] = sub_1B0398F5C;
    v43[7] = v42;

    v44 = v274;
    v45 = v282;
    v282[8] = sub_1B0398F5C;
    v45[9] = v44;

    v46 = v275;
    v47 = v282;
    v282[10] = sub_1B039BA94;
    v47[11] = v46;

    v48 = v276;
    v49 = v282;
    v282[12] = sub_1B0398F5C;
    v49[13] = v48;

    v50 = v277;
    v51 = v282;
    v282[14] = sub_1B0398F5C;
    v51[15] = v50;

    v52 = v278;
    v53 = v282;
    v282[16] = sub_1B0399178;
    v53[17] = v52;

    v54 = v279;
    v55 = v282;
    v282[18] = sub_1B0398F5C;
    v55[19] = v54;

    v56 = v280;
    v57 = v282;
    v282[20] = sub_1B0398F5C;
    v57[21] = v56;

    v58 = v282;
    v59 = v283;
    v282[22] = sub_1B03991EC;
    v58[23] = v59;
    sub_1B0394964();

    if (os_log_type_enabled(v286, v285))
    {
      v60 = v314;
      v233 = sub_1B0E45D78();
      v229 = v233;
      v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v231 = 0;
      v234 = sub_1B03949A8(0);
      v232 = v234;
      v235 = sub_1B03949A8(v231);
      v344 = v233;
      v343 = v234;
      v342 = v235;
      v236 = &v344;
      sub_1B0394A48(0, &v344);
      sub_1B0394A48(4, v236);
      v340 = sub_1B0398F5C;
      v341 = v245;
      sub_1B03949FC(&v340, v236, &v343, &v342);
      v237 = v60;
      v238 = v60;
      if (v60)
      {
        v227 = 0;

        __break(1u);
      }

      else
      {
        v340 = sub_1B0398F5C;
        v341 = v246;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v225 = 0;
        v226 = 0;
        v340 = sub_1B0399178;
        v341 = v248;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v223 = 0;
        v224 = 0;
        v340 = sub_1B0398F5C;
        v341 = v249;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v221 = 0;
        v222 = 0;
        v340 = sub_1B0398F5C;
        v341 = v250;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v219 = 0;
        v220 = 0;
        v340 = sub_1B039BA94;
        v341 = v253;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v217 = 0;
        v218 = 0;
        v340 = sub_1B0398F5C;
        v341 = v255;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v215 = 0;
        v216 = 0;
        v340 = sub_1B0398F5C;
        v341 = v256;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v213 = 0;
        v214 = 0;
        v340 = sub_1B0399178;
        v341 = v259;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v211 = 0;
        v212 = 0;
        v340 = sub_1B0398F5C;
        v341 = v262;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v209 = 0;
        v210 = 0;
        v340 = sub_1B0398F5C;
        v341 = v264;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v207 = 0;
        v208 = 0;
        v340 = sub_1B03991EC;
        v341 = v269;
        sub_1B03949FC(&v340, &v344, &v343, &v342);
        v205 = 0;
        v206 = 0;
        _os_log_impl(&dword_1B0389000, v243, v244, "[%.*hhx-%.*X] APNS: no mailboxes", v229, 0x17u);
        v204 = 0;
        sub_1B03998A8(v232);
        sub_1B03998A8(v235);
        sub_1B0E45D58();

        v228 = v205;
      }
    }

    else
    {
      v61 = v314;

      v228 = v61;
    }

    v202 = v228;

    (*(v327 + 8))(v331, v325);
    v203 = sub_1B0E46A48();
    v288 = v203;
    v289 = v202;
    return v288;
  }

  v303 = v304;
  v300 = v304;
  v339 = v304;
  v338 = v304;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34E0, &qword_1B0E9F580);
  v301 = v302;
  sub_1B06E3518();
  v9 = sub_1B0E45748();
  if (v9)
  {

    goto LABEL_16;
  }

  v10 = v314;
  v336 = v300;
  v293 = &type metadata for MailboxName;
  v294 = sub_1B0E46A48();
  sub_1B0451F2C();
  v335 = sub_1B0E45438();
  v295 = &v116;
  MEMORY[0x1EEE9AC00](&v116);
  v297 = &v112;
  v114 = v322;
  v115 = v11;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
  v296 = v298;
  sub_1B06E35CC();
  sub_1B0E44FD8();
  v299 = v10;
  if (!v10)
  {
    v290 = v337;
    v334 = v337;
    v333 = v337;
    sub_1B06E3654();
    v12 = sub_1B0E44FF8();
    v291 = 0;
    v292 = v12;
    v287 = v12;

    v288 = v287;
    v289 = v291;
    return v288;
  }

  __break(1u);
  result = 0;
  __break(1u);
  return result;
}

void *sub_1B06E1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v245 = a1;
  v242 = a2;
  v243 = a3;
  v244 = a4;
  v193 = sub_1B039BBE8;
  v194 = sub_1B06E3930;
  v195 = sub_1B0394C30;
  v196 = sub_1B0394C24;
  v197 = sub_1B039BA2C;
  v198 = sub_1B039BA88;
  v199 = sub_1B039BB94;
  v200 = sub_1B0394C24;
  v201 = sub_1B039BBA0;
  v202 = sub_1B039BC08;
  v203 = sub_1B06BA324;
  v204 = sub_1B06E395C;
  v205 = sub_1B039BCF8;
  v206 = sub_1B0398F5C;
  v207 = sub_1B0398F5C;
  v208 = sub_1B0399178;
  v209 = sub_1B0398F5C;
  v210 = sub_1B0398F5C;
  v211 = sub_1B039BA94;
  v212 = sub_1B0398F5C;
  v213 = sub_1B0398F5C;
  v214 = sub_1B0399178;
  v215 = sub_1B0398F5C;
  v216 = sub_1B0398F5C;
  v217 = sub_1B03991EC;
  v218 = sub_1B0398F5C;
  v219 = sub_1B0398F5C;
  v220 = sub_1B03993BC;
  v221 = sub_1B0398F5C;
  v222 = sub_1B0398F5C;
  v223 = sub_1B039BCEC;
  v282 = 0;
  v281 = 0;
  v280 = 0;
  v279 = 0;
  memset(v278, 0, 13);
  v275 = 0;
  memset(v268, 0, 13);
  v231 = 0;
  v224 = _s6LoggerVMa();
  v225 = (*(*(v224 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v226 = &v91 - v225;
  v227 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v228 = &v91 - v227;
  v229 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v230 = &v91 - v229;
  v232 = sub_1B0E439A8();
  v233 = *(v232 - 8);
  v234 = v232 - 8;
  v235 = (*(v233 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v231);
  v236 = &v91 - v235;
  v237 = sub_1B0E42E68();
  v238 = *(v237 - 8);
  v239 = v237 - 8;
  v240 = (*(v238 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v237);
  v241 = &v91 - v240;
  v246 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v245);
  v247 = &v91 - v246;
  v282 = v8;
  v281 = *v9;
  v280 = v10;
  v279 = v11;
  v248 = [v281 URL];
  if (v248)
  {
    v191 = v248;
    v190 = v248;
    sub_1B0E42DE8();
    (*(v238 + 32))(v247, v241, v237);
    (*(v238 + 56))(v247, 0, 1, v237);
    MEMORY[0x1E69E5920](v190);
  }

  else
  {
    (*(v238 + 56))(v247, 1, 1, v237);
  }

  v189 = sub_1B07BEDFC(v247);
  v188 = v12;
  sub_1B06E3800(v247);
  if (!v189)
  {
    result = v192;
    v185 = v192;
    return result;
  }

  v186 = v189;
  v187 = v188 & 0xFFFFFFFFFFLL;
  v184 = v188 & 0xFFFFFFFFFFLL;
  v183 = v189;
  v278[0] = v189;
  LODWORD(v278[1]) = v188;
  BYTE4(v278[1]) = (v188 & 0xFFFFFFFFFFuLL) >> 32;
  v276 = v189;
  LODWORD(v277) = v188;
  BYTE4(v277) = BYTE4(v278[1]);
  MailboxPath.displayStringComponents(omittingEmptySubsequences:)(0, v189, v277);
  v182 = v14;
  v275 = v14;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v271 = v183;
  LODWORD(v272) = v184;
  BYTE4(v272) = BYTE4(v184);
  v15 = MailboxPath.pathSeparator.getter(v183, v272);
  v269 = v15;
  v270 = v16;
  if (v16)
  {
    v273 = v269;
    v274 = v270;
  }

  else
  {
    v273 = sub_1B0E44838();
    v274 = v17;
    if (v270)
    {
      sub_1B03B1198(&v269);
    }
  }

  v18 = v192;
  v19 = sub_1B07BEE90(v182, v273, v274);
  v177 = v18;
  v268[2] = v19;
  v268[3] = v20;
  v178 = v19;
  v179 = v20;
  v180 = BYTE4(v20);
  v181 = v18;
  if (v18)
  {
    v91 = 0;

    v174 = 0;
    v175 = 0;
    v176 = v91;
  }

  else
  {
    v174 = v178;
    v175 = v179 | (v180 << 32);
    v176 = 0;
  }

  v169 = v176;
  v170 = v174;
  v268[0] = v174;
  LODWORD(v268[1]) = v175;
  BYTE4(v268[1]) = BYTE4(v175);
  v171 = &v265;
  v265 = v174;
  v266 = v175;
  v267 = BYTE4(v175);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v173 = v184 | (BYTE4(v184) << 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v172 = v263;
  sub_1B06E38A8(v171, v263);
  *v264 = v183;
  *&v264[8] = v173;
  *(v172 + 28) = BYTE4(v173);
  if (v263[0])
  {
    sub_1B06E38A8(v263, v255);
    if (*v264)
    {
      v165 = v254;
      v254[0] = *v255;
      *(v254 + 5) = *&v255[5];
      v164 = v253;
      v253[0] = *v264;
      v166 = v263;
      *(v253 + 5) = *&v264[5];
      v251 = v254[0];
      LODWORD(v252) = *&v255[5] >> 24;
      BYTE4(v252) = v255[12];
      v249 = v253[0];
      LODWORD(v250) = *&v264[5] >> 24;
      BYTE4(v250) = v264[12];
      v167 = static MailboxPath.__derived_struct_equals(_:_:)(v254[0], v252, v253[0], v250);
      sub_1B039E440(v164);
      sub_1B039E440(v165);
      sub_1B039E440(v166);
      v168 = v167;
      goto LABEL_20;
    }

    sub_1B039E440(v255);
    goto LABEL_22;
  }

  if (*v264)
  {
LABEL_22:
    sub_1B06E38F8(v263);
    v168 = 0;
    goto LABEL_20;
  }

  sub_1B039E440(v263);
  v168 = 1;
LABEL_20:
  v163 = v168;

  if (v163)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v162 = &v256;
    v256 = v183;
    v257 = v184;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F0, qword_1B0E99F10);
    sub_1B0E454D8();

    result = v169;
    v185 = v169;
  }

  else
  {
    (*(v233 + 16))(v236, v244, v232);
    sub_1B0394784(v244, v230);
    sub_1B0394784(v230, v228);
    sub_1B03F4FD0(v230, v226);
    v21 = (v228 + *(v224 + 20));
    v119 = *v21;
    v120 = *(v21 + 1);
    sub_1B039480C(v228);
    v131 = 24;
    v136 = 7;
    v22 = swift_allocObject();
    v23 = v120;
    v124 = v22;
    *(v22 + 16) = v119;
    *(v22 + 20) = v23;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v24 = swift_allocObject();
    v25 = v120;
    v121 = v24;
    *(v24 + 16) = v119;
    *(v24 + 20) = v25;

    v135 = 32;
    v26 = swift_allocObject();
    v27 = v121;
    v129 = v26;
    *(v26 + 16) = v193;
    *(v26 + 24) = v27;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v226);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v28 = swift_allocObject();
    v29 = v184;
    v30 = BYTE4(v184);
    v122 = v28;
    *(v28 + 16) = v183;
    *(v28 + 24) = v29;
    *(v28 + 28) = v30;

    v31 = swift_allocObject();
    v32 = v122;
    v137 = v31;
    *(v31 + 16) = v194;
    *(v31 + 24) = v32;

    v160 = sub_1B0E43988();
    v161 = sub_1B0E458E8();
    v133 = 17;
    v139 = swift_allocObject();
    v126 = 16;
    *(v139 + 16) = 16;
    v140 = swift_allocObject();
    v128 = 4;
    *(v140 + 16) = 4;
    v33 = swift_allocObject();
    v123 = v33;
    *(v33 + 16) = v195;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v123;
    v141 = v34;
    *(v34 + 16) = v196;
    *(v34 + 24) = v35;
    v142 = swift_allocObject();
    *(v142 + 16) = 0;
    v143 = swift_allocObject();
    *(v143 + 16) = 1;
    v36 = swift_allocObject();
    v37 = v124;
    v125 = v36;
    *(v36 + 16) = v197;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v125;
    v144 = v38;
    *(v38 + 16) = v198;
    *(v38 + 24) = v39;
    v145 = swift_allocObject();
    *(v145 + 16) = v126;
    v146 = swift_allocObject();
    *(v146 + 16) = v128;
    v40 = swift_allocObject();
    v127 = v40;
    *(v40 + 16) = v199;
    *(v40 + 24) = 0;
    v41 = swift_allocObject();
    v42 = v127;
    v147 = v41;
    *(v41 + 16) = v200;
    *(v41 + 24) = v42;
    v148 = swift_allocObject();
    *(v148 + 16) = 0;
    v149 = swift_allocObject();
    *(v149 + 16) = v128;
    v43 = swift_allocObject();
    v44 = v129;
    v130 = v43;
    *(v43 + 16) = v201;
    *(v43 + 24) = v44;
    v45 = swift_allocObject();
    v46 = v130;
    v150 = v45;
    *(v45 + 16) = v202;
    *(v45 + 24) = v46;
    v151 = swift_allocObject();
    *(v151 + 16) = 112;
    v152 = swift_allocObject();
    v134 = 8;
    *(v152 + 16) = 8;
    v132 = swift_allocObject();
    *(v132 + 16) = 0x786F626C69616DLL;
    v47 = swift_allocObject();
    v48 = v132;
    v153 = v47;
    *(v47 + 16) = v203;
    *(v47 + 24) = v48;
    v154 = swift_allocObject();
    *(v154 + 16) = 37;
    v155 = swift_allocObject();
    *(v155 + 16) = v134;
    v49 = swift_allocObject();
    v50 = v137;
    v138 = v49;
    *(v49 + 16) = v204;
    *(v49 + 24) = v50;
    v51 = swift_allocObject();
    v52 = v138;
    v157 = v51;
    *(v51 + 16) = v205;
    *(v51 + 24) = v52;
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v156 = sub_1B0E46A48();
    v158 = v53;

    v54 = v139;
    v55 = v158;
    *v158 = v206;
    v55[1] = v54;

    v56 = v140;
    v57 = v158;
    v158[2] = v207;
    v57[3] = v56;

    v58 = v141;
    v59 = v158;
    v158[4] = v208;
    v59[5] = v58;

    v60 = v142;
    v61 = v158;
    v158[6] = v209;
    v61[7] = v60;

    v62 = v143;
    v63 = v158;
    v158[8] = v210;
    v63[9] = v62;

    v64 = v144;
    v65 = v158;
    v158[10] = v211;
    v65[11] = v64;

    v66 = v145;
    v67 = v158;
    v158[12] = v212;
    v67[13] = v66;

    v68 = v146;
    v69 = v158;
    v158[14] = v213;
    v69[15] = v68;

    v70 = v147;
    v71 = v158;
    v158[16] = v214;
    v71[17] = v70;

    v72 = v148;
    v73 = v158;
    v158[18] = v215;
    v73[19] = v72;

    v74 = v149;
    v75 = v158;
    v158[20] = v216;
    v75[21] = v74;

    v76 = v150;
    v77 = v158;
    v158[22] = v217;
    v77[23] = v76;

    v78 = v151;
    v79 = v158;
    v158[24] = v218;
    v79[25] = v78;

    v80 = v152;
    v81 = v158;
    v158[26] = v219;
    v81[27] = v80;

    v82 = v153;
    v83 = v158;
    v158[28] = v220;
    v83[29] = v82;

    v84 = v154;
    v85 = v158;
    v158[30] = v221;
    v85[31] = v84;

    v86 = v155;
    v87 = v158;
    v158[32] = v222;
    v87[33] = v86;

    v88 = v157;
    v89 = v158;
    v158[34] = v223;
    v89[35] = v88;
    sub_1B0394964();

    if (os_log_type_enabled(v160, v161))
    {
      v112 = sub_1B0E45D78();
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v113 = sub_1B03949A8(0);
      v114 = sub_1B03949A8(1);
      v115 = &v262;
      v262 = v112;
      v116 = &v261;
      v261 = v113;
      v117 = &v260;
      v260 = v114;
      sub_1B0394A48(3, &v262);
      sub_1B0394A48(6, v115);
      v90 = v169;
      v258 = v206;
      v259 = v139;
      sub_1B03949FC(&v258, v115, v116, v117);
      v118 = v90;
      if (v90)
      {

        __break(1u);
      }

      else
      {
        v258 = v207;
        v259 = v140;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v109 = 0;
        v258 = v208;
        v259 = v141;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v108 = 0;
        v258 = v209;
        v259 = v142;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v107 = 0;
        v258 = v210;
        v259 = v143;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v106 = 0;
        v258 = v211;
        v259 = v144;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v105 = 0;
        v258 = v212;
        v259 = v145;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v104 = 0;
        v258 = v213;
        v259 = v146;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v103 = 0;
        v258 = v214;
        v259 = v147;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v102 = 0;
        v258 = v215;
        v259 = v148;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v101 = 0;
        v258 = v216;
        v259 = v149;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v100 = 0;
        v258 = v217;
        v259 = v150;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v99 = 0;
        v258 = v218;
        v259 = v151;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v98 = 0;
        v258 = v219;
        v259 = v152;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v97 = 0;
        v258 = v220;
        v259 = v153;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v96 = 0;
        v258 = v221;
        v259 = v154;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v95 = 0;
        v258 = v222;
        v259 = v155;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v94 = 0;
        v258 = v223;
        v259 = v157;
        sub_1B03949FC(&v258, &v262, &v261, &v260);
        v93 = 0;
        _os_log_impl(&dword_1B0389000, v160, v161, "[%.*hhx-%.*X] APNS: Not registering mailbox '%{sensitive,mask.mailbox}s' for push because it’s not modified UTF-7 encoded.", v112, 0x2Bu);
        sub_1B03998A8(v113);
        sub_1B03998A8(v114);
        sub_1B0E45D58();

        v110 = v93;
      }
    }

    else
    {

      v110 = v169;
    }

    v92 = v110;
    MEMORY[0x1E69E5920](v160);
    (*(v233 + 8))(v236, v232);

    result = v92;
    v185 = v92;
  }

  return result;
}

uint64_t sub_1B06E2C78()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0E45728();
  return v1;
}

uint64_t sub_1B06E2CD8()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0750030();
  sub_1B0E45768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F8, &qword_1B0E9A088);
  sub_1B06E3968();
  sub_1B0E45728();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B06E2DC0()
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E3294();
  sub_1B0750030();
  sub_1B0E45768();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18F8, &qword_1B0E9A088);
  sub_1B06E3968();
  sub_1B0750030();
  sub_1B0E45768();
  sub_1B0E45728();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1B06E2EEC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12[0] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E18E8, &unk_1B0E99F00);
  sub_1B06E36DC();
  sub_1B0E44F58();
  sub_1B039E440(v12);
  sub_1B0391B00();
  v9 = v4;
  if ((v5 & 1) == 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B06E3764();
    sub_1B0E45598();
    v8 = sub_1B0E453E8();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v7 = sub_1B0E44AC8();

    [v10 serverRegisteredMailboxes:v8 withTopic:v7 version:v9];
    MEMORY[0x1E69E5920](v7);
    MEMORY[0x1E69E5920](v8);
  }
}

uint64_t sub_1B06E311C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B07BF45C(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v3;
  return result;
}

unint64_t sub_1B06E3170()
{
  v2 = qword_1EB6DCC98;
  if (!qword_1EB6DCC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DCC98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E31EC(uint64_t a1)
{
  v3 = sub_1B0E43BB8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B06E3294()
{
  v2 = qword_1EB6DB628;
  if (!qword_1EB6DB628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18E8, &unk_1B0E99F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB628);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E3384(uint64_t (*a1)(void))
{
  if (a1())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v5 = sub_1B0E44BA8();
    v6 = v1;

    v7 = v5;
    v8 = v6;
  }

  else
  {

    v7 = 0;
    v8 = 0;
  }

  if (v8)
  {
    return v7;
  }

  v4 = sub_1B0E44838();

  return v4;
}

unint64_t sub_1B06E3518()
{
  v2 = qword_1EB6DB018;
  if (!qword_1EB6DB018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB018);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E35CC()
{
  v2 = qword_1EB6DB020;
  if (!qword_1EB6DB020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB6E34E0, &qword_1B0E9F580);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB020);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E3654()
{
  v2 = qword_1EB6DADB0;
  if (!qword_1EB6DADB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18F0, qword_1B0E99F10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DADB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E36DC()
{
  v2 = qword_1EB6DB630;
  if (!qword_1EB6DB630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18E8, &unk_1B0E99F00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB630);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B06E3764()
{
  v2 = qword_1EB6DB060;
  if (!qword_1EB6DB060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DB060);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E3800(uint64_t a1)
{
  v3 = sub_1B0E42E68();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B06E38A8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2;
  *a2 = v4;
  *(a2 + 8) = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  return result;
}

uint64_t *sub_1B06E38F8(uint64_t *a1)
{
  v1 = *a1;

  v2 = a1[2];

  return a1;
}

uint64_t sub_1B06E3930()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  return sub_1B06E2BB4(*(v0 + 16));
}

unint64_t sub_1B06E3968()
{
  v2 = qword_1EB6DA580;
  if (!qword_1EB6DA580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB6E18F8, &qword_1B0E9A088);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB6DA580);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B06E39F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_1B06F3C88();
  v18 = v4;
  sub_1B06F3D18(a1);
  sub_1B06F6420();
  if (sub_1B0E45528())
  {
    v11 = sub_1B06F649C(v17, v18);
    v12 = v5;

    sub_1B06F655C(v11, v12, a1);
  }

  if (sub_1B0E45528())
  {
    v6 = sub_1B06F649C(v17, v18);
    sub_1B06F85B0(v6, v7, a1);
  }

  if (sub_1B0E45528())
  {
    v8 = sub_1B06F649C(v17, v18);
    sub_1B06FC2B8(v8, v9, a1);
  }

  sub_1B06FD86C(a2, a1, a3, a4, v17, v18);

  MEMORY[0x1E69E5920](v17);
}

uint64_t sub_1B06E3BF4()
{
  v2 = *(v0 + 16);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3C50()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3C8C()
{
  v2 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B06E3CC8()
{
  v2 = v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v2 + 8);
  swift_endAccess();
  return Strong;
}

uint64_t sub_1B06E3D38(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06E3DB4()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B06E3E14(uint64_t a1)
{
  swift_unknownObjectRetain();
  v4 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B06E3E84()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B06E3EE4(uint64_t a1)
{

  v4 = (v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;

  swift_endAccess();
}

uint64_t sub_1B06E3F74()
{
  v2 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state);
  swift_beginAccess();
  v3 = *v2 | (*(v2 + 4) << 32);
  swift_endAccess();
  return v3 & 0xFFFFFFFFFFLL;
}

uint64_t sub_1B06E3FE0(uint64_t a1)
{
  v4 = v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state;
  swift_beginAccess();
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1);
  return swift_endAccess();
}

uint64_t sub_1B06E4044(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1B06E40A0(a1, a2, a3);
}

uint64_t sub_1B06E40A0(void *a1, uint64_t a2, uint64_t a3)
{
  v93 = a1;
  v86 = a2;
  v87 = a3;
  v88 = 0;
  v75 = sub_1B06FF208;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0;
  v104 = 0;
  v105 = 0;
  v91 = 0;
  v76 = sub_1B0E459C8();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v80 = v32 - v79;
  v81 = sub_1B0E45C58();
  v82 = (*(*(v81 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v83 = v32 - v82;
  v84 = (*(*(sub_1B0E44288() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91);
  v85 = v32 - v84;
  v89 = (*(*(_s6LoggerVMa() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93);
  v90 = v32 - v89;
  v113 = v4;
  v112 = v5;
  v111 = v6;
  v110 = v3;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor + 8) = 0;
  swift_unknownObjectWeakInit();
  v7 = v91;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken) = v91;
  *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture) = v7;
  v92 = OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state;
  v8 = sub_1B06E3F54();
  v9 = v93;
  v10 = v3 + v92;
  *v10 = v8;
  *(v10 + 4) = BYTE4(v8);
  MEMORY[0x1E69E5928](v9);
  v11 = v93;
  *(v3 + 16) = v93;
  MEMORY[0x1E69E5928](v11);
  v94 = [v93 identifier];
  if (v94)
  {
    v73 = v94;
    v68 = v94;
    v69 = sub_1B0E44AD8();
    v70 = v12;
    MEMORY[0x1E69E5920](v68);
    v71 = v69;
    v72 = v70;
  }

  else
  {
    v71 = 0;
    v72 = 0;
  }

  v67 = v72;
  v66 = v71;
  MEMORY[0x1E69E5920](v93);
  v106 = v66;
  v107 = v67;
  if (v67)
  {
    v108 = v106;
    v109 = v107;
  }

  else
  {
    v108 = sub_1B0E44838();
    v109 = v13;
    if (v107)
    {
      sub_1B03B1198(&v106);
    }
  }

  v43 = v108;
  v65 = v109;
  v104 = v108;
  v105 = v109;
  sub_1B0394784(v86, v90);
  sub_1B03F4FD0(v90, v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger);
  v48 = 0;
  v37 = sub_1B06FF124();
  v32[0] = 56;
  v40 = 1;
  v14 = sub_1B0E46A28();
  v33 = &v102;
  v102 = v14;
  v103 = v15;
  v49 = 1;
  v16 = sub_1B0E44838();
  v32[1] = v17;
  MEMORY[0x1B2728B30](v16);

  v100 = v43;
  v101 = v65;
  v44 = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69E61C8];
  v46 = MEMORY[0x1E69E61C0];
  sub_1B0E46A08();
  v47 = "";
  v18 = sub_1B0E44838();
  v32[2] = v19;
  MEMORY[0x1B2728B30](v18);

  v35 = v102;
  v34 = v103;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v33);
  v39 = sub_1B0E44C88();
  v38 = v20;
  sub_1B0E44278();
  v36 = sub_1B0E46A48();
  sub_1B06FF188();
  sub_1B0E46028();
  (*(v77 + 104))(v80, *MEMORY[0x1E69E8098], v76);
  MEMORY[0x1E69E5928](v87);
  v21 = sub_1B0E45C68();
  v22 = v87;
  *(v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue) = v21;
  MEMORY[0x1E69E5928](v22);
  v55 = &unk_1EB737000;
  *(v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop) = v87;
  v50 = type metadata accessor for StateCapture();
  v41 = 37;
  v23 = sub_1B0E46A28();
  v52 = &v98;
  v98 = v23;
  v99 = v24;
  v25 = sub_1B0E44838();
  v42 = v26;
  MEMORY[0x1B2728B30](v25);

  v96 = v43;
  v97 = v65;
  sub_1B0E46A08();
  v27 = sub_1B0E44838();
  v51 = v28;
  MEMORY[0x1B2728B30](v27);

  v54 = v98;
  v53 = v99;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v52);
  v58 = sub_1B0E44C88();
  v59 = v29;
  v60 = *(v74 + v55[324]);
  MEMORY[0x1E69E5928](v60);
  v61 = swift_allocObject();
  v56 = v61 + 16;

  v57 = v74;
  swift_weakInit();

  v63 = StateCapture.__allocating_init(title:queue:capture:)(v58, v59, v60, v75, v61);

  v62 = (v74 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  v64 = &v95;
  swift_beginAccess();
  v30 = *v62;
  *v62 = v63;

  swift_endAccess();

  MEMORY[0x1E69E5920](v87);
  sub_1B039480C(v86);
  MEMORY[0x1E69E5920](v93);
  return v74;
}

uint64_t sub_1B06E4A80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v8[4] = a1 + 16;
  swift_beginAccess();
  v8[0] = swift_weakLoadStrong();
  if (v8[0])
  {
    v5 = v8[0];

    sub_1B0391AD4(v8);
    swift_endAccess();
    v4 = (v5 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_state);
    swift_beginAccess();
    v6 = *v4 | (*(v4 + 4) << 32);
    swift_endAccess();

    result = sub_1B06E4BB8(v6 & 0xFFFFFFFFFFLL);
    a2[3] = MEMORY[0x1E69E6158];
    a2[4] = MEMORY[0x1E69E6160];
    *a2 = result;
    a2[1] = v3;
  }

  else
  {
    sub_1B0391AD4(v8);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B06E4BB8(uint64_t a1)
{
  v31 = 0;
  v30 = 0;
  v26 = 0;
  v25 = 0;
  v21 = 0;
  v20 = 0;
  v34 = a1;
  v35 = BYTE4(a1);
  v18 = ((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if ((((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
  {
    if (v18 == 1)
    {
      v26 = a1;
      v25 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
      v24[0] = sub_1B0E46A28();
      v24[1] = v7;
      v8 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v8);

      v23 = a1;
      sub_1B06FF210();
      sub_1B0E469F8();
      v9 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v9);

      v22 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
      sub_1B06FF28C();
      sub_1B0E469F8();
      v10 = sub_1B0E44838();
      MEMORY[0x1B2728B30](v10);

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03B1198(v24);
      v32 = sub_1B0E44C88();
      v33 = v11;
    }

    else
    {
      if (v18 == 2)
      {
        v31 = a1;
        v30 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
        v29[0] = sub_1B0E46A28();
        v29[1] = v12;
        v13 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v13);

        v28 = a1;
        sub_1B06FF210();
        sub_1B0E469F8();
        v14 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v14);

        v27 = ((a1 & 0x3FFFFFFFFFuLL) >> 32) & 1;
        sub_1B06FF28C();
        sub_1B0E469F8();
        v15 = sub_1B0E44838();
        MEMORY[0x1B2728B30](v15);

        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B03B1198(v29);
        v32 = sub_1B0E44C88();
      }

      else
      {
        v32 = sub_1B0E44838();
      }

      v33 = v1;
    }
  }

  else
  {
    v21 = a1;
    v20 = ((a1 & 0xFFFFFFFFFFuLL) >> 32) & 1;
    v19[0] = sub_1B0E46A28();
    v19[1] = v2;
    v3 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v3);

    sub_1B06FF210();
    sub_1B0E469F8();
    v4 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v4);

    sub_1B06FF28C();
    sub_1B0E469F8();
    v5 = sub_1B0E44838();
    MEMORY[0x1B2728B30](v5);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v19);
    v32 = sub_1B0E44C88();
    v33 = v6;
  }

  return v32;
}

uint64_t sub_1B06E5120()
{
  v4 = OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture;
  v5 = (v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture);
  swift_beginAccess();
  if (!*v5)
  {
    return swift_endAccess();
  }

  v2 = *(v3 + v4);

  swift_endAccess();
  StateCapture.tearDown()();
}

uint64_t sub_1B06E51C8()
{
  MEMORY[0x1E69E5920](*(v0 + 16));
  sub_1B039480C(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop));
  sub_1B06D56EC();
  sub_1B03FD360((v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken));
  sub_1B0391AD4((v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_stateCapture));
  return v2;
}

uint64_t sub_1B06E5284()
{
  v0 = *sub_1B06E51C8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_1B06E536C(int a1)
{
  v6 = a1;
  v5[0] = sub_1B0E46A28();
  v5[1] = v1;
  v2 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v2);

  sub_1B0E469F8();
  v3 = sub_1B0E44838();
  MEMORY[0x1B2728B30](v3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B1198(v5);
  return sub_1B0E44C88();
}

BOOL sub_1B06E55A4(uint64_t a1, uint64_t a2)
{
  v8 = ((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if ((((a1 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
  {
    if (v8 == 1)
    {
      v5 = BYTE4(a1) & 0x3F;
      if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 1)
      {
        return 0;
      }

      return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v5 & 1, ((a2 & 0x3FFFFFFFFFuLL) >> 32) & 1);
    }

    else
    {
      if (v8 != 2)
      {
        return (((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) == 3 && (a2 & 0xFFFFFFFFFFLL) == 0xC000000000;
      }

      v4 = BYTE4(a1) & 0x3F;
      if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 2)
      {
        return 0;
      }

      return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v4 & 1, ((a2 & 0x3FFFFFFFFFuLL) >> 32) & 1);
    }
  }

  else
  {
    v6 = BYTE4(a1);
    if ((((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3) != 0)
    {
      return 0;
    }

    return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v6 & 1, ((a2 & 0xFFFFFFFFFFuLL) >> 32) & 1);
  }
}

uint64_t sub_1B06E58CC(uint64_t a1, uint64_t a2)
{
  v3 = ((a2 & 0xFFFFFFFFFFuLL) >> 38) & 3;
  if (v3 < 2)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
    sub_1B0E46C48();
    sub_1B070E084();
    return sub_1B0E46C48();
  }

  else
  {
    if (v3 == 2)
    {
      sub_1B0E46C48();
      sub_1B06FF304();
      sub_1B0E46C48();
      sub_1B070E084();
    }

    return sub_1B0E46C48();
  }
}

BOOL sub_1B06E5C34(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B06E5D1C()
{
  result = sub_1B0E46A48();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  sub_1B0394964();
  return result;
}

uint64_t sub_1B06E5F6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B06E5D1C();
  *a1 = result;
  return result;
}

uint64_t sub_1B06E61A8(char a1)
{
  if (((((*v1 | (*(v1 + 4) << 32)) & 0xFFFFFFFFFFLL) >> 38) & 3) == 3)
  {
    *v5 = sub_1B06E52E8();
    *(v5 + 4) = a1 & 1;
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

BOOL sub_1B06E6294(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return sub_1B06E5468(a1, a2);
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_1B06E639C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B06E6504()
{
  v2 = *v0;
  v3 = v0[1] & 1;
  return sub_1B06E648C();
}

uint64_t sub_1B06E6540(uint64_t a1)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4) & 1;
  return sub_1B06E639C(a1, v3);
}

BOOL sub_1B06E657C(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4) & 1;
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4) & 1;
  return sub_1B06E6294(v4, v3);
}

uint64_t sub_1B06E65DC()
{
  v5 = *v0 | (*(v0 + 4) << 32);
  if ((((v5 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if ((((v5 & 0xFFFFFFFFFFLL) >> 38) & 3) == 1)
    {
      *(v0 + 4);
      v6 = sub_1B06E5308(*v0);
      *v4 = v6;
      *(v4 + 4) = ((v5 & 0x3FFFFFFFFFLL) >> 32) & 1;
      v2 = v6;
      v3 = 0;
    }

    else
    {
      v2 = 0;
      v3 = 1;
    }
  }

  else
  {
    v2 = 0;
    v3 = 1;
  }

  LODWORD(v7) = v2;
  BYTE4(v7) = v3 & 1;
  return v7;
}

void sub_1B06E673C()
{
  v2 = *v0 | (*(v0 + 4) << 32);
  if ((((v2 & 0xFFFFFFFFFFLL) >> 38) & 3) == 1)
  {
    *(v0 + 4);
    *v1 = *v0;
    *(v1 + 4) = ((v2 & 0x3FFFFFFFFFLL) >> 32) & 1;
  }
}

BOOL sub_1B06E6818(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xFF00000000) == 0x200000000)
  {
    return (a2 & 0xFF00000000) == 0x200000000;
  }

  v4 = BYTE4(a1);
  if ((a2 & 0xFF00000000) == 0x200000000)
  {
    return 0;
  }

  return sub_1B06E5468(a1, a2) && static Environment.AppState.__derived_enum_equals(_:_:)(v4 & 1, ((a2 & 0xFFFFFFFFFFuLL) >> 32) & 1);
}

uint64_t sub_1B06E6980(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFF00000000) != 0x200000000)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
    sub_1B0E46C48();
    sub_1B070E084();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B06E6BB8(char a1)
{
  v6 = *v1 | (*(v1 + 4) << 32);
  v7 = ((v6 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v6 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v7 == 1 || v7 == 2)
    {
      v4 = 0x200000000;
    }

    else
    {
      v4 = 0x200000000;
    }
  }

  else
  {
    *(v1 + 4);
    if (a1 == 2)
    {
      v2 = sub_1B06E5308(*v1);
      *v5 = v2;
      *(v5 + 4) = (v2 | ((BYTE4(v6) & 1) << 32) | 0x4000000000) >> 32;
      v4 = 0x200000000;
    }

    else
    {
      v8 = sub_1B06E5308(*v1);
      *v5 = v8;
      *(v5 + 4) = (v8 | ((BYTE4(v6) & 1) << 32) | 0xFFFFFF8000000000) >> 32;
      v4 = v8 | ((BYTE4(v6) & 1) << 32);
    }
  }

  return v4 & 0xFFFFFFFFFFLL;
}

BOOL sub_1B06E6D74(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1)
    {
      return (a2 & 0x100000000) != 0 && a2;
    }

    return (a2 & 0x100000000) != 0 && !a2;
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return sub_1B06E5468(a1, a2);
  }
}

uint64_t sub_1B06E6ECC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0)
  {
    sub_1B0E46C48();
    sub_1B06FF304();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B06E706C()
{
  v2 = *v0;
  v3 = v0[1] & 1;
  return sub_1B06E6FF4();
}

uint64_t sub_1B06E70A8(uint64_t a1)
{
  LODWORD(v3) = *v1;
  BYTE4(v3) = *(v1 + 4) & 1;
  return sub_1B06E6ECC(a1, v3);
}

BOOL sub_1B06E70E4(uint64_t a1, uint64_t a2)
{
  LODWORD(v4) = *a1;
  BYTE4(v4) = *(a1 + 4) & 1;
  LODWORD(v3) = *a2;
  BYTE4(v3) = *(a2 + 4) & 1;
  return sub_1B06E6D74(v4, v3);
}

uint64_t sub_1B06E7208(unsigned int a1, char a2)
{
  v9 = *v2 | (*(v2 + 4) << 32);
  v10 = ((v9 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v9 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v10 == 1)
    {
      v5 = (a2 & 1) != 0;
      v6 = 1;
    }

    else if (v10 == 2)
    {
      if (a2)
      {
        *(v2 + 4);
        if (sub_1B06E5468(a1, *v2))
        {
          v3 = sub_1B06E5308(a1);
          *v8 = v3;
          *(v8 + 4) = (v3 | ((BYTE4(v9) & 1) << 32) | 0x4000000000) >> 32;
        }

        v5 = 1;
        v6 = 1;
      }

      else
      {
        *(v2 + 4);
        if (sub_1B06E5468(a1, *v2))
        {
          v11 = sub_1B06E5308(a1);
          *v8 = v11;
          *(v8 + 4) = BYTE4(v9) & 1;
          v5 = v11;
          v6 = 0;
        }

        else
        {
          v5 = 0;
          v6 = 1;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }
  }

  else
  {
    v5 = (a2 & 1) != 0;
    v6 = 1;
  }

  LODWORD(v12) = v5;
  BYTE4(v12) = v6 & 1;
  return v12;
}

uint64_t sub_1B06E7488(char a1, char a2)
{
  v8 = *v2 | (*(v2 + 4) << 32);
  v9 = ((v8 & 0xFFFFFFFFFFLL) >> 38) & 3;
  if ((((v8 & 0xFFFFFFFFFFLL) >> 38) & 3) != 0)
  {
    if (v9 == 1)
    {
      if (static Environment.AppState.__derived_enum_equals(_:_:)(a1 & 1, ((v8 & 0x3FFFFFFFFFLL) >> 32) & 1))
      {
        v4 = 0x200000000;
      }

      else if ((v8 & 0x3FFFFFFFFFLL & 0x100000000) != 0 && (!a2 || a2 == 1))
      {
        v10 = sub_1B06E5308(v8);
        *v7 = v10;
        *(v7 + 4) = (v10 | ((a1 & 1) << 32) | 0xFFFFFF8000000000) >> 32;
        v4 = v10 | ((a1 & 1) << 32);
      }

      else
      {
        *v7 = v8;
        *(v7 + 4) = (v8 | ((a1 & 1) << 32) | 0x4000000000) >> 32;
        v4 = 0x200000000;
      }
    }

    else
    {
      if (v9 == 2)
      {
        *(v2 + 4);
        *v7 = *v2;
        *(v7 + 4) = (v8 | ((a1 & 1) << 32) | 0xFFFFFF8000000000) >> 32;
      }

      v4 = 0x200000000;
    }
  }

  else
  {
    *(v2 + 4);
    *v7 = *v2;
    *(v7 + 4) = a1 & 1;
    v4 = 0x200000000;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

uint64_t sub_1B06E7704(uint64_t a1, uint64_t a2, int a3)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v21 = sub_1B0E44468();
  v19 = *(v21 - 8);
  v20 = v21 - 8;
  v17 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v22 = (v11 - v17);
  v29 = v4;
  v30 = v5;
  v28 = v6 & 1;
  v27 = v3;

  v18 = *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v18);
  v7 = v19;
  *v22 = v18;
  v8 = *MEMORY[0x1E69E8020];
  (*(v7 + 104))();
  v23 = sub_1B0E44488();
  (*(v19 + 8))(v22, v21);
  result = v23;
  if (v23)
  {

    v11[2] = &v26;
    swift_beginAccess();
    v12 = sub_1B06E61A8(v14 & 1);
    swift_endAccess();
    result = v12;
    v25 = v12 & 1;
    if ((v12 & 1) == 0)
    {
      v10 = v13;
      swift_unknownObjectRetain();
      v11[0] = v10 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      v11[1] = &v24;
      swift_beginAccess();
      *(v11[0] + 8) = v15;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      swift_endAccess();
      return sub_1B06E7960();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06E7960()
{
  v20 = 0;
  v35 = 0;
  v19 = [objc_opt_self() defaultCenter];
  v21 = *MEMORY[0x1E69595F8];
  v0 = v21;
  v22 = v21;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v17 = 0;
  v12 = 0;
  v10 = *(v18 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  v1 = v10;
  v8 = 7;
  v9 = swift_allocObject();
  v7 = v9 + 16;

  swift_weakInit();

  v2 = v10;

  v3 = swift_allocObject();
  v4 = v9;
  *(v3 + 16) = v10;
  *(v3 + 24) = v4;
  v29 = sub_1B06FF6E4;
  v30 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_1B06D8164;
  v28 = &block_descriptor_1;
  v11 = _Block_copy(&aBlock);

  v13 = 0;
  v15 = [v19 addObserverForName:v22 object:v12 queue:? usingBlock:?];
  _Block_release(v11);
  swift_unknownObjectRelease();

  v14 = (v18 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_notificationToken);
  v16 = &v23;
  swift_beginAccess();
  v5 = *v14;
  *v14 = v15;
  swift_unknownObjectRelease();
  return swift_endAccess();
}

uint64_t sub_1B06E7D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v19 = a3;
  v25 = sub_1B070E528;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v27 = 0;
  v31 = sub_1B0E44238();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = &v12 - v13;
  v35 = sub_1B0E44288();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v14 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v34 = &v12 - v14;
  v24 = sub_1B0E42A08();
  v20 = *(v24 - 8);
  v21 = v24 - 8;
  v17 = v20;
  v18 = *(v20 + 64);
  v15 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v12 - v15;
  v46 = v4;
  v45 = a2;
  v44 = v5 + 16;

  (*(v20 + 16))(v23, v16, v24);
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v6 = swift_allocObject();
  v7 = v20;
  v8 = v22;
  v9 = v23;
  v10 = v24;
  v26 = v6;
  *(v6 + 16) = v19;
  (*(v7 + 32))(v6 + v8, v9, v10);
  v42 = v25;
  v43 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v38 = 1107296256;
  v39 = 0;
  v40 = sub_1B038C908;
  v41 = &block_descriptor_2407;
  v36 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v27, v34, v30, v36);
  (*(v28 + 8))(v30, v31);
  (*(v32 + 8))(v34, v35);
  _Block_release(v36);
}

uint64_t sub_1B06E80A4(uint64_t a1, uint64_t a2)
{
  v4[5] = a1 + 16;
  v4[4] = a2;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B06E8164(a2);
  }

  else
  {
    sub_1B0391AD4(v4);
    return swift_endAccess();
  }
}

uint64_t sub_1B06E8164(uint64_t a1)
{
  v433 = a1;
  v349 = sub_1B039BBE8;
  v350 = sub_1B0394C30;
  v351 = sub_1B0394C24;
  v352 = sub_1B039BA2C;
  v353 = sub_1B039BA88;
  v354 = sub_1B039BB94;
  v355 = sub_1B0394C24;
  v356 = sub_1B039BBA0;
  v357 = sub_1B039BC08;
  v358 = sub_1B0398F5C;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0399178;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0398F5C;
  v363 = sub_1B039BA94;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0399178;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0398F5C;
  v369 = sub_1B03991EC;
  v370 = sub_1B039BBE8;
  v371 = sub_1B0394C24;
  v372 = sub_1B039BA2C;
  v373 = sub_1B039BA88;
  v374 = sub_1B0394C24;
  v375 = sub_1B039BBA0;
  v376 = sub_1B039BC08;
  v377 = sub_1B070B278;
  v378 = sub_1B039BC08;
  v379 = sub_1B0398F5C;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0399178;
  v382 = sub_1B0398F5C;
  v383 = sub_1B0398F5C;
  v384 = sub_1B039BA94;
  v385 = sub_1B0398F5C;
  v386 = sub_1B0398F5C;
  v387 = sub_1B0399178;
  v388 = sub_1B0398F5C;
  v389 = sub_1B0398F5C;
  v390 = sub_1B03991EC;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0398F5C;
  v393 = sub_1B03991EC;
  v394 = sub_1B039BBE8;
  v395 = sub_1B0394C24;
  v396 = sub_1B039BA2C;
  v397 = sub_1B039BA88;
  v398 = sub_1B0394C24;
  v399 = sub_1B039BBA0;
  v400 = sub_1B039BC08;
  v401 = sub_1B0398F5C;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0399178;
  v404 = sub_1B0398F5C;
  v405 = sub_1B0398F5C;
  v406 = sub_1B039BA94;
  v407 = sub_1B0398F5C;
  v408 = sub_1B0398F5C;
  v409 = sub_1B0399178;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0398F5C;
  v412 = sub_1B03991EC;
  v470 = 0;
  v469 = 0;
  v468 = 0;
  v413 = 0;
  v457 = 0;
  v458 = 0;
  v456 = 0;
  v423 = 0;
  v414 = sub_1B0E439A8();
  v415 = *(v414 - 8);
  v416 = v414 - 8;
  v417 = (*(v415 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v418 = v172 - v417;
  v419 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v420 = v172 - v419;
  v421 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v422 = v172 - v421;
  v424 = _s6LoggerVMa();
  v425 = (*(*(v424 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v423);
  v426 = v172 - v425;
  v427 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v428 = v172 - v427;
  v429 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v430 = v172 - v429;
  v431 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v432 = v172 - v431;
  v470 = v172 - v431;
  v438 = sub_1B0E44468();
  v436 = *(v438 - 8);
  v437 = v438 - 8;
  v434 = (*(v436 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v433);
  v439 = (v172 - v434);
  v469 = v12;
  v468 = v1;

  v435 = *(v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v435);
  v13 = v436;
  *v439 = v435;
  v14 = *MEMORY[0x1E69E8020];
  (*(v13 + 104))();
  v440 = sub_1B0E44488();
  (*(v436 + 8))(v439, v438);
  result = v440;
  if ((v440 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  sub_1B0394784(v348 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v432);
  v344 = sub_1B06ECF28();
  v345 = v16;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v346 = *(v348 + 16);
  MEMORY[0x1E69E5928](v346);
  v347 = [v346 identifier];
  if (v347)
  {
    v343 = v347;
    v340 = v347;
    *&v341 = sub_1B0E44AD8();
    *(&v341 + 1) = v17;
    MEMORY[0x1E69E5920](v340);
    v342 = v341;
  }

  else
  {
    v342 = 0uLL;
  }

  v339 = v342;
  MEMORY[0x1E69E5920](v346);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v466[0] = v344;
  v466[1] = v345;
  v467 = v339;
  if (v345)
  {
    sub_1B070B280(v466, &v443);
    if (*(&v467 + 1))
    {
      v336 = &v442;
      v442 = v443;
      v335 = &v441;
      v441 = v467;
      v337 = MEMORY[0x1B2726DE0](v443, *(&v443 + 1), v467, *(&v467 + 1));
      sub_1B03B1198(v335);
      sub_1B03B1198(v336);
      sub_1B03B1198(v466);
      v338 = v337;
      goto LABEL_11;
    }

    sub_1B03B1198(&v443);
    goto LABEL_13;
  }

  if (*(&v467 + 1))
  {
LABEL_13:
    sub_1B06FF6F0(v466);
    v338 = 0;
    goto LABEL_11;
  }

  sub_1B03B1198(v466);
  v338 = 1;
LABEL_11:
  v334 = v338;

  if (v334)
  {
    v331 = &v460;
    swift_beginAccess();
    v459 = sub_1B06E65DC();
    v332 = v459;
    v333 = BYTE4(v459);
    swift_endAccess();
    v457 = v332;
    v458 = v333 & 1;
    if (v333)
    {
      (*(v415 + 16))(v422, v432, v414);
      sub_1B0394784(v432, v430);
      sub_1B0394784(v430, v428);
      sub_1B03F4FD0(v430, v426);
      v18 = (v428 + *(v424 + 20));
      v299 = *v18;
      v300 = *(v18 + 1);
      sub_1B039480C(v428);
      v298 = 24;
      v310 = 7;
      v19 = swift_allocObject();
      v20 = v300;
      v303 = v19;
      *(v19 + 16) = v299;
      *(v19 + 20) = v20;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v21 = swift_allocObject();
      v22 = v300;
      v301 = v21;
      *(v21 + 16) = v299;
      *(v21 + 20) = v22;

      v309 = 32;
      v23 = swift_allocObject();
      v24 = v301;
      v311 = v23;
      *(v23 + 16) = v394;
      *(v23 + 24) = v24;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v426);
      v328 = sub_1B0E43988();
      v329 = sub_1B0E45908();
      v307 = 17;
      v313 = swift_allocObject();
      v305 = 16;
      *(v313 + 16) = 16;
      v314 = swift_allocObject();
      v308 = 4;
      *(v314 + 16) = 4;
      v25 = swift_allocObject();
      v302 = v25;
      *(v25 + 16) = v350;
      *(v25 + 24) = 0;
      v26 = swift_allocObject();
      v27 = v302;
      v315 = v26;
      *(v26 + 16) = v395;
      *(v26 + 24) = v27;
      v316 = swift_allocObject();
      *(v316 + 16) = 0;
      v317 = swift_allocObject();
      *(v317 + 16) = 1;
      v28 = swift_allocObject();
      v29 = v303;
      v304 = v28;
      *(v28 + 16) = v396;
      *(v28 + 24) = v29;
      v30 = swift_allocObject();
      v31 = v304;
      v318 = v30;
      *(v30 + 16) = v397;
      *(v30 + 24) = v31;
      v319 = swift_allocObject();
      *(v319 + 16) = v305;
      v320 = swift_allocObject();
      *(v320 + 16) = v308;
      v32 = swift_allocObject();
      v306 = v32;
      *(v32 + 16) = v354;
      *(v32 + 24) = 0;
      v33 = swift_allocObject();
      v34 = v306;
      v321 = v33;
      *(v33 + 16) = v398;
      *(v33 + 24) = v34;
      v322 = swift_allocObject();
      *(v322 + 16) = 0;
      v323 = swift_allocObject();
      *(v323 + 16) = v308;
      v35 = swift_allocObject();
      v36 = v311;
      v312 = v35;
      *(v35 + 16) = v399;
      *(v35 + 24) = v36;
      v37 = swift_allocObject();
      v38 = v312;
      v325 = v37;
      *(v37 + 16) = v400;
      *(v37 + 24) = v38;
      v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v324 = sub_1B0E46A48();
      v326 = v39;

      v40 = v313;
      v41 = v326;
      *v326 = v401;
      v41[1] = v40;

      v42 = v314;
      v43 = v326;
      v326[2] = v402;
      v43[3] = v42;

      v44 = v315;
      v45 = v326;
      v326[4] = v403;
      v45[5] = v44;

      v46 = v316;
      v47 = v326;
      v326[6] = v404;
      v47[7] = v46;

      v48 = v317;
      v49 = v326;
      v326[8] = v405;
      v49[9] = v48;

      v50 = v318;
      v51 = v326;
      v326[10] = v406;
      v51[11] = v50;

      v52 = v319;
      v53 = v326;
      v326[12] = v407;
      v53[13] = v52;

      v54 = v320;
      v55 = v326;
      v326[14] = v408;
      v55[15] = v54;

      v56 = v321;
      v57 = v326;
      v326[16] = v409;
      v57[17] = v56;

      v58 = v322;
      v59 = v326;
      v326[18] = v410;
      v59[19] = v58;

      v60 = v323;
      v61 = v326;
      v326[20] = v411;
      v61[21] = v60;

      v62 = v325;
      v63 = v326;
      v326[22] = v412;
      v63[23] = v62;
      sub_1B0394964();

      if (os_log_type_enabled(v328, v329))
      {
        v64 = v413;
        v291 = sub_1B0E45D78();
        v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v290 = 0;
        v292 = sub_1B03949A8(0);
        v293 = sub_1B03949A8(v290);
        v294 = &v448;
        v448 = v291;
        v295 = &v447;
        v447 = v292;
        v296 = &v446;
        v446 = v293;
        sub_1B0394A48(0, &v448);
        sub_1B0394A48(4, v294);
        v444 = v401;
        v445 = v313;
        sub_1B03949FC(&v444, v294, v295, v296);
        v297 = v64;
        if (v64)
        {

          __break(1u);
        }

        else
        {
          v444 = v402;
          v445 = v314;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v288 = 0;
          v444 = v403;
          v445 = v315;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v287 = 0;
          v444 = v404;
          v445 = v316;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v286 = 0;
          v444 = v405;
          v445 = v317;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v285 = 0;
          v444 = v406;
          v445 = v318;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v284 = 0;
          v444 = v407;
          v445 = v319;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v283 = 0;
          v444 = v408;
          v445 = v320;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v282 = 0;
          v444 = v409;
          v445 = v321;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v281 = 0;
          v444 = v410;
          v445 = v322;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v280 = 0;
          v444 = v411;
          v445 = v323;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          v279 = 0;
          v444 = v412;
          v445 = v325;
          sub_1B03949FC(&v444, &v448, &v447, &v446);
          _os_log_impl(&dword_1B0389000, v328, v329, "[%.*hhx-%.*X] Accounts: Ignoring credentials did change.", v291, 0x17u);
          v278 = 0;
          sub_1B03998A8(v292);
          sub_1B03998A8(v293);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v328);
      (*(v415 + 8))(v422, v414);
    }

    else
    {
      v330 = v332;
      v244 = v332;
      v456 = v332;
      (*(v415 + 16))(v420, v432, v414);
      sub_1B0394784(v432, v430);
      sub_1B0394784(v430, v428);
      sub_1B03F4FD0(v430, v426);
      v65 = (v428 + *(v424 + 20));
      v241 = *v65;
      v242 = *(v65 + 1);
      sub_1B039480C(v428);
      v240 = 24;
      v255 = 7;
      v66 = swift_allocObject();
      v67 = v242;
      v246 = v66;
      *(v66 + 16) = v241;
      *(v66 + 20) = v67;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v68 = swift_allocObject();
      v69 = v242;
      v243 = v68;
      *(v68 + 16) = v241;
      *(v68 + 20) = v69;

      v254 = 32;
      v70 = swift_allocObject();
      v71 = v243;
      v250 = v70;
      *(v70 + 16) = v370;
      *(v70 + 24) = v71;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v426);
      v256 = swift_allocObject();
      *(v256 + 16) = v244;
      v276 = sub_1B0E43988();
      v277 = sub_1B0E45908();
      v252 = 17;
      v258 = swift_allocObject();
      v248 = 16;
      *(v258 + 16) = 16;
      v259 = swift_allocObject();
      v253 = 4;
      *(v259 + 16) = 4;
      v72 = swift_allocObject();
      v245 = v72;
      *(v72 + 16) = v350;
      *(v72 + 24) = 0;
      v73 = swift_allocObject();
      v74 = v245;
      v260 = v73;
      *(v73 + 16) = v371;
      *(v73 + 24) = v74;
      v261 = swift_allocObject();
      *(v261 + 16) = 0;
      v262 = swift_allocObject();
      *(v262 + 16) = 1;
      v75 = swift_allocObject();
      v76 = v246;
      v247 = v75;
      *(v75 + 16) = v372;
      *(v75 + 24) = v76;
      v77 = swift_allocObject();
      v78 = v247;
      v263 = v77;
      *(v77 + 16) = v373;
      *(v77 + 24) = v78;
      v264 = swift_allocObject();
      *(v264 + 16) = v248;
      v265 = swift_allocObject();
      *(v265 + 16) = v253;
      v79 = swift_allocObject();
      v249 = v79;
      *(v79 + 16) = v354;
      *(v79 + 24) = 0;
      v80 = swift_allocObject();
      v81 = v249;
      v266 = v80;
      *(v80 + 16) = v374;
      *(v80 + 24) = v81;
      v267 = swift_allocObject();
      *(v267 + 16) = 0;
      v268 = swift_allocObject();
      *(v268 + 16) = v253;
      v82 = swift_allocObject();
      v83 = v250;
      v251 = v82;
      *(v82 + 16) = v375;
      *(v82 + 24) = v83;
      v84 = swift_allocObject();
      v85 = v251;
      v269 = v84;
      *(v84 + 16) = v376;
      *(v84 + 24) = v85;
      v270 = swift_allocObject();
      *(v270 + 16) = 0;
      v271 = swift_allocObject();
      *(v271 + 16) = v253;
      v86 = swift_allocObject();
      v87 = v256;
      v257 = v86;
      *(v86 + 16) = v377;
      *(v86 + 24) = v87;
      v88 = swift_allocObject();
      v89 = v257;
      v273 = v88;
      *(v88 + 16) = v378;
      *(v88 + 24) = v89;
      v275 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v272 = sub_1B0E46A48();
      v274 = v90;

      v91 = v258;
      v92 = v274;
      *v274 = v379;
      v92[1] = v91;

      v93 = v259;
      v94 = v274;
      v274[2] = v380;
      v94[3] = v93;

      v95 = v260;
      v96 = v274;
      v274[4] = v381;
      v96[5] = v95;

      v97 = v261;
      v98 = v274;
      v274[6] = v382;
      v98[7] = v97;

      v99 = v262;
      v100 = v274;
      v274[8] = v383;
      v100[9] = v99;

      v101 = v263;
      v102 = v274;
      v274[10] = v384;
      v102[11] = v101;

      v103 = v264;
      v104 = v274;
      v274[12] = v385;
      v104[13] = v103;

      v105 = v265;
      v106 = v274;
      v274[14] = v386;
      v106[15] = v105;

      v107 = v266;
      v108 = v274;
      v274[16] = v387;
      v108[17] = v107;

      v109 = v267;
      v110 = v274;
      v274[18] = v388;
      v110[19] = v109;

      v111 = v268;
      v112 = v274;
      v274[20] = v389;
      v112[21] = v111;

      v113 = v269;
      v114 = v274;
      v274[22] = v390;
      v114[23] = v113;

      v115 = v270;
      v116 = v274;
      v274[24] = v391;
      v116[25] = v115;

      v117 = v271;
      v118 = v274;
      v274[26] = v392;
      v118[27] = v117;

      v119 = v273;
      v120 = v274;
      v274[28] = v393;
      v120[29] = v119;
      sub_1B0394964();

      if (os_log_type_enabled(v276, v277))
      {
        v121 = v413;
        v233 = sub_1B0E45D78();
        v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v232 = 0;
        v234 = sub_1B03949A8(0);
        v235 = sub_1B03949A8(v232);
        v236 = &v453;
        v453 = v233;
        v237 = &v452;
        v452 = v234;
        v238 = &v451;
        v451 = v235;
        sub_1B0394A48(0, &v453);
        sub_1B0394A48(5, v236);
        v449 = v379;
        v450 = v258;
        sub_1B03949FC(&v449, v236, v237, v238);
        v239 = v121;
        if (v121)
        {

          __break(1u);
        }

        else
        {
          v449 = v380;
          v450 = v259;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v230 = 0;
          v449 = v381;
          v450 = v260;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v229 = 0;
          v449 = v382;
          v450 = v261;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v228 = 0;
          v449 = v383;
          v450 = v262;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v227 = 0;
          v449 = v384;
          v450 = v263;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v226 = 0;
          v449 = v385;
          v450 = v264;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v225 = 0;
          v449 = v386;
          v450 = v265;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v224 = 0;
          v449 = v387;
          v450 = v266;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v223 = 0;
          v449 = v388;
          v450 = v267;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v222 = 0;
          v449 = v389;
          v450 = v268;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v221 = 0;
          v449 = v390;
          v450 = v269;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v220 = 0;
          v449 = v391;
          v450 = v270;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v219 = 0;
          v449 = v392;
          v450 = v271;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          v218 = 0;
          v449 = v393;
          v450 = v273;
          sub_1B03949FC(&v449, &v453, &v452, &v451);
          _os_log_impl(&dword_1B0389000, v276, v277, "[%.*hhx-%.*X] Accounts: Credentials did change (%u).", v233, 0x1Du);
          v217 = 0;
          sub_1B03998A8(v234);
          sub_1B03998A8(v235);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v276);
      (*(v415 + 8))(v420, v414);
      v216 = v348 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v123 = *(v216 + 8);
      v454 = Strong;
      v455 = v123;
      if (Strong)
      {
        v213 = &v454;
        v215 = v454;
        v214 = v455;
        swift_unknownObjectRetain();
        sub_1B03FD360(v213);
        swift_endAccess();
        ObjectType = swift_getObjectType();
        (*(v214 + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1B03FD360(&v454);
        swift_endAccess();
      }
    }

    return sub_1B039480C(v432);
  }

  else
  {
    (*(v415 + 16))(v418, v432, v414);
    sub_1B0394784(v432, v430);
    sub_1B0394784(v430, v428);
    sub_1B03F4FD0(v430, v426);
    v125 = (v428 + *(v424 + 20));
    v182 = *v125;
    v183 = *(v125 + 1);
    sub_1B039480C(v428);
    v181 = 24;
    v193 = 7;
    v126 = swift_allocObject();
    v127 = v183;
    v186 = v126;
    *(v126 + 16) = v182;
    *(v126 + 20) = v127;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v128 = swift_allocObject();
    v129 = v183;
    v184 = v128;
    *(v128 + 16) = v182;
    *(v128 + 20) = v129;

    v192 = 32;
    v130 = swift_allocObject();
    v131 = v184;
    v194 = v130;
    *(v130 + 16) = v349;
    *(v130 + 24) = v131;
    sub_1B0394868();
    sub_1B0394868();

    sub_1B039480C(v426);
    v211 = sub_1B0E43988();
    v212 = sub_1B0E458D8();
    v190 = 17;
    v196 = swift_allocObject();
    v188 = 16;
    *(v196 + 16) = 16;
    v197 = swift_allocObject();
    v191 = 4;
    *(v197 + 16) = 4;
    v132 = swift_allocObject();
    v185 = v132;
    *(v132 + 16) = v350;
    *(v132 + 24) = 0;
    v133 = swift_allocObject();
    v134 = v185;
    v198 = v133;
    *(v133 + 16) = v351;
    *(v133 + 24) = v134;
    v199 = swift_allocObject();
    *(v199 + 16) = 0;
    v200 = swift_allocObject();
    *(v200 + 16) = 1;
    v135 = swift_allocObject();
    v136 = v186;
    v187 = v135;
    *(v135 + 16) = v352;
    *(v135 + 24) = v136;
    v137 = swift_allocObject();
    v138 = v187;
    v201 = v137;
    *(v137 + 16) = v353;
    *(v137 + 24) = v138;
    v202 = swift_allocObject();
    *(v202 + 16) = v188;
    v203 = swift_allocObject();
    *(v203 + 16) = v191;
    v139 = swift_allocObject();
    v189 = v139;
    *(v139 + 16) = v354;
    *(v139 + 24) = 0;
    v140 = swift_allocObject();
    v141 = v189;
    v204 = v140;
    *(v140 + 16) = v355;
    *(v140 + 24) = v141;
    v205 = swift_allocObject();
    *(v205 + 16) = 0;
    v206 = swift_allocObject();
    *(v206 + 16) = v191;
    v142 = swift_allocObject();
    v143 = v194;
    v195 = v142;
    *(v142 + 16) = v356;
    *(v142 + 24) = v143;
    v144 = swift_allocObject();
    v145 = v195;
    v208 = v144;
    *(v144 + 16) = v357;
    *(v144 + 24) = v145;
    v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v207 = sub_1B0E46A48();
    v209 = v146;

    v147 = v196;
    v148 = v209;
    *v209 = v358;
    v148[1] = v147;

    v149 = v197;
    v150 = v209;
    v209[2] = v359;
    v150[3] = v149;

    v151 = v198;
    v152 = v209;
    v209[4] = v360;
    v152[5] = v151;

    v153 = v199;
    v154 = v209;
    v209[6] = v361;
    v154[7] = v153;

    v155 = v200;
    v156 = v209;
    v209[8] = v362;
    v156[9] = v155;

    v157 = v201;
    v158 = v209;
    v209[10] = v363;
    v158[11] = v157;

    v159 = v202;
    v160 = v209;
    v209[12] = v364;
    v160[13] = v159;

    v161 = v203;
    v162 = v209;
    v209[14] = v365;
    v162[15] = v161;

    v163 = v204;
    v164 = v209;
    v209[16] = v366;
    v164[17] = v163;

    v165 = v205;
    v166 = v209;
    v209[18] = v367;
    v166[19] = v165;

    v167 = v206;
    v168 = v209;
    v209[20] = v368;
    v168[21] = v167;

    v169 = v208;
    v170 = v209;
    v209[22] = v369;
    v170[23] = v169;
    sub_1B0394964();

    if (os_log_type_enabled(v211, v212))
    {
      v171 = v413;
      v174 = sub_1B0E45D78();
      v172[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v173 = 0;
      v175 = sub_1B03949A8(0);
      v176 = sub_1B03949A8(v173);
      v177 = &v465;
      v465 = v174;
      v178 = &v464;
      v464 = v175;
      v179 = &v463;
      v463 = v176;
      sub_1B0394A48(0, &v465);
      sub_1B0394A48(4, v177);
      v461 = v358;
      v462 = v196;
      sub_1B03949FC(&v461, v177, v178, v179);
      v180 = v171;
      if (v171)
      {

        __break(1u);
      }

      else
      {
        v461 = v359;
        v462 = v197;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[10] = 0;
        v461 = v360;
        v462 = v198;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[9] = 0;
        v461 = v361;
        v462 = v199;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[8] = 0;
        v461 = v362;
        v462 = v200;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[7] = 0;
        v461 = v363;
        v462 = v201;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[6] = 0;
        v461 = v364;
        v462 = v202;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[5] = 0;
        v461 = v365;
        v462 = v203;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[4] = 0;
        v461 = v366;
        v462 = v204;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[3] = 0;
        v461 = v367;
        v462 = v205;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[2] = 0;
        v461 = v368;
        v462 = v206;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        v172[1] = 0;
        v461 = v369;
        v462 = v208;
        sub_1B03949FC(&v461, &v465, &v464, &v463);
        _os_log_impl(&dword_1B0389000, v211, v212, "[%.*hhx-%.*X] Accounts: Credentials did change for different account.", v174, 0x17u);
        v172[0] = 0;
        sub_1B03998A8(v175);
        sub_1B03998A8(v176);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v211);
    (*(v415 + 8))(v418, v414);
    return sub_1B039480C(v432);
  }
}

uint64_t sub_1B06EAFDC(unsigned int a1)
{
  v166 = a1;
  v124 = sub_1B039BBE8;
  v125 = sub_1B0394C30;
  v126 = sub_1B0394C24;
  v127 = sub_1B039BA2C;
  v128 = sub_1B039BA88;
  v129 = sub_1B039BB94;
  v130 = sub_1B0394C24;
  v131 = sub_1B039BBA0;
  v132 = sub_1B039BC08;
  v133 = sub_1B070B278;
  v134 = sub_1B039BC08;
  v135 = sub_1B0398F5C;
  v136 = sub_1B0398F5C;
  v137 = sub_1B0399178;
  v138 = sub_1B0398F5C;
  v139 = sub_1B0398F5C;
  v140 = sub_1B039BA94;
  v141 = sub_1B0398F5C;
  v142 = sub_1B0398F5C;
  v143 = sub_1B0399178;
  v144 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v146 = sub_1B03991EC;
  v147 = sub_1B0398F5C;
  v148 = sub_1B0398F5C;
  v149 = sub_1B03991EC;
  v185 = 0;
  v184 = 0;
  v183 = 0;
  v181 = 0;
  v180 = 0;
  v179 = 0;
  v150 = 0;
  v156 = 0;
  v151 = sub_1B0E439A8();
  v152 = *(v151 - 8);
  v153 = v151 - 8;
  v154 = (*(v152 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v155 = v69 - v154;
  v157 = _s6LoggerVMa();
  v158 = (*(*(v157 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v156);
  v159 = v69 - v158;
  v160 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v161 = v69 - v160;
  v162 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v163 = v69 - v162;
  v164 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v165 = v69 - v164;
  v185 = v69 - v164;
  v171 = sub_1B0E44468();
  v169 = *(v171 - 8);
  v170 = v171 - 8;
  v167 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v166);
  v172 = (v69 - v167);
  v184 = v8 & 1;
  v183 = v1;

  v168 = *(v1 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v168);
  v9 = v169;
  *v172 = v168;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v173 = sub_1B0E44488();
  (*(v169 + 8))(v172, v171);
  result = v173;
  if (v173)
  {

    sub_1B0394784(v123 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v165);
    v119 = *(v123 + 16);
    MEMORY[0x1E69E5928](v119);
    v120 = sub_1B06EC92C();
    MEMORY[0x1E69E5920](v119);
    v121 = &v182;
    swift_beginAccess();
    v122 = sub_1B06E7488(v166 & 1, v120);
    swift_endAccess();
    LODWORD(v181) = v122;
    BYTE4(v181) = BYTE4(v122);
    if ((v122 & 0xFF00000000) != 0x200000000)
    {
      v118 = v122 & 0xFFFFFFFFFFLL;
      v78 = (v122 & 0xFFFFFFFFFFuLL) >> 32;
      v83 = v122;
      v180 = v122;
      v85 = 1;
      v179 = v78 & 1;
      (*(v152 + 16))(v155, v165, v151);
      sub_1B0394784(v165, v163);
      sub_1B0394784(v163, v161);
      sub_1B03F4FD0(v163, v159);
      v12 = (v161 + *(v157 + 20));
      v80 = *v12;
      v81 = *(v12 + 1);
      sub_1B039480C(v161);
      v79 = 24;
      v95 = 7;
      v13 = swift_allocObject();
      v14 = v81;
      v86 = v13;
      *(v13 + 16) = v80;
      *(v13 + 20) = v14;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = swift_allocObject();
      v16 = v81;
      v82 = v15;
      *(v15 + 16) = v80;
      *(v15 + 20) = v16;

      v94 = 32;
      v17 = swift_allocObject();
      v18 = v82;
      v90 = v17;
      *(v17 + 16) = v124;
      *(v17 + 24) = v18;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v159);
      v96 = swift_allocObject();
      *(v96 + 16) = v83;
      v116 = sub_1B0E43988();
      v117 = sub_1B0E458E8();
      v92 = 17;
      v98 = swift_allocObject();
      v88 = 16;
      *(v98 + 16) = 16;
      v99 = swift_allocObject();
      v93 = 4;
      *(v99 + 16) = 4;
      v19 = swift_allocObject();
      v84 = v19;
      *(v19 + 16) = v125;
      *(v19 + 24) = 0;
      v20 = swift_allocObject();
      v21 = v84;
      v100 = v20;
      *(v20 + 16) = v126;
      *(v20 + 24) = v21;
      v101 = swift_allocObject();
      *(v101 + 16) = 0;
      v102 = swift_allocObject();
      *(v102 + 16) = v85;
      v22 = swift_allocObject();
      v23 = v86;
      v87 = v22;
      *(v22 + 16) = v127;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v87;
      v103 = v24;
      *(v24 + 16) = v128;
      *(v24 + 24) = v25;
      v104 = swift_allocObject();
      *(v104 + 16) = v88;
      v105 = swift_allocObject();
      *(v105 + 16) = v93;
      v26 = swift_allocObject();
      v89 = v26;
      *(v26 + 16) = v129;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v89;
      v106 = v27;
      *(v27 + 16) = v130;
      *(v27 + 24) = v28;
      v107 = swift_allocObject();
      *(v107 + 16) = 0;
      v108 = swift_allocObject();
      *(v108 + 16) = v93;
      v29 = swift_allocObject();
      v30 = v90;
      v91 = v29;
      *(v29 + 16) = v131;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v91;
      v109 = v31;
      *(v31 + 16) = v132;
      *(v31 + 24) = v32;
      v110 = swift_allocObject();
      *(v110 + 16) = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = v93;
      v33 = swift_allocObject();
      v34 = v96;
      v97 = v33;
      *(v33 + 16) = v133;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v97;
      v113 = v35;
      *(v35 + 16) = v134;
      *(v35 + 24) = v36;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v112 = sub_1B0E46A48();
      v114 = v37;

      v38 = v98;
      v39 = v114;
      *v114 = v135;
      v39[1] = v38;

      v40 = v99;
      v41 = v114;
      v114[2] = v136;
      v41[3] = v40;

      v42 = v100;
      v43 = v114;
      v114[4] = v137;
      v43[5] = v42;

      v44 = v101;
      v45 = v114;
      v114[6] = v138;
      v45[7] = v44;

      v46 = v102;
      v47 = v114;
      v114[8] = v139;
      v47[9] = v46;

      v48 = v103;
      v49 = v114;
      v114[10] = v140;
      v49[11] = v48;

      v50 = v104;
      v51 = v114;
      v114[12] = v141;
      v51[13] = v50;

      v52 = v105;
      v53 = v114;
      v114[14] = v142;
      v53[15] = v52;

      v54 = v106;
      v55 = v114;
      v114[16] = v143;
      v55[17] = v54;

      v56 = v107;
      v57 = v114;
      v114[18] = v144;
      v57[19] = v56;

      v58 = v108;
      v59 = v114;
      v114[20] = v145;
      v59[21] = v58;

      v60 = v109;
      v61 = v114;
      v114[22] = v146;
      v61[23] = v60;

      v62 = v110;
      v63 = v114;
      v114[24] = v147;
      v63[25] = v62;

      v64 = v111;
      v65 = v114;
      v114[26] = v148;
      v65[27] = v64;

      v66 = v113;
      v67 = v114;
      v114[28] = v149;
      v67[29] = v66;
      sub_1B0394964();

      if (os_log_type_enabled(v116, v117))
      {
        v68 = v150;
        v71 = sub_1B0E45D78();
        v69[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v70 = 0;
        v72 = sub_1B03949A8(0);
        v73 = sub_1B03949A8(v70);
        v74 = &v178;
        v178 = v71;
        v75 = &v177;
        v177 = v72;
        v76 = &v176;
        v176 = v73;
        sub_1B0394A48(0, &v178);
        sub_1B0394A48(5, v74);
        v174 = v135;
        v175 = v98;
        sub_1B03949FC(&v174, v74, v75, v76);
        v77 = v68;
        if (v68)
        {

          __break(1u);
        }

        else
        {
          v174 = v136;
          v175 = v99;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[14] = 0;
          v174 = v137;
          v175 = v100;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[13] = 0;
          v174 = v138;
          v175 = v101;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[12] = 0;
          v174 = v139;
          v175 = v102;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[11] = 0;
          v174 = v140;
          v175 = v103;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[10] = 0;
          v174 = v141;
          v175 = v104;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[9] = 0;
          v174 = v142;
          v175 = v105;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[8] = 0;
          v174 = v143;
          v175 = v106;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[7] = 0;
          v174 = v144;
          v175 = v107;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[6] = 0;
          v174 = v145;
          v175 = v108;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[5] = 0;
          v174 = v146;
          v175 = v109;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[4] = 0;
          v174 = v147;
          v175 = v110;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[3] = 0;
          v174 = v148;
          v175 = v111;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          v69[2] = 0;
          v174 = v149;
          v175 = v113;
          sub_1B03949FC(&v174, &v178, &v177, &v176);
          _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%.*X] Accounts: App visibility did change. Trying to renew (%u).", v71, 0x1Du);
          v69[1] = 0;
          sub_1B03998A8(v72);
          sub_1B03998A8(v73);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v116);
      (*(v152 + 8))(v155, v151);
      sub_1B06ECC2C(v83, v78 & 1);
    }

    return sub_1B039480C(v165);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06EC92C()
{
  v26 = 0;
  v16 = sub_1B0E43108();
  v17 = *(v16 - 8);
  v18 = v16 - 8;
  v19 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v3[-v19];
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = MEMORY[0x1EEE9AC00](v23);
  v22 = &v3[-v21];
  v26 = v0;
  MEMORY[0x1E69E5928](v0);
  v24 = [v23 oauth2Token];
  if (v24)
  {
    v15 = v24;
    v10 = v24;
    v11 = sub_1B0E44AD8();
    v12 = v1;
    MEMORY[0x1E69E5920](v10);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v8 = v14;
  v7 = v13;
  MEMORY[0x1E69E5920](v23);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v25[0] = v7;
  v25[1] = v8;
  v9 = [v23 credentialExpiryDate];
  if (v9)
  {
    v6 = v9;
    v5 = v9;
    sub_1B0E430D8();
    (*(v17 + 32))(v22, v20, v16);
    (*(v17 + 56))(v22, 0, 1, v16);
    MEMORY[0x1E69E5920](v5);
  }

  else
  {
    (*(v17 + 56))(v22, 1, 1, v16);
  }

  sub_1B06FF790();
  v4 = sub_1B06FF7A8(v7, v8, v22, v20);
  sub_1B03B1198(v25);
  return v4;
}

uint64_t sub_1B06ECC2C(int a1, char a2)
{
  v10 = *(v2 + 16);
  MEMORY[0x1E69E5928](v10);
  v9 = *(v4 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_queue);
  MEMORY[0x1E69E5928](v9);
  v8 = swift_allocObject();

  swift_weakInit();

  v7 = swift_allocObject();
  *(v7 + 16) = v8;
  *(v7 + 24) = a1;
  sub_1B06F2BDC(a2 & 1, v9, sub_1B070B2C0, v7);

  MEMORY[0x1E69E5920](v9);
  return MEMORY[0x1E69E5920](v10);
}

uint64_t sub_1B06ECD9C()
{
  v13 = 0;
  v9 = sub_1B0E44468();
  v7 = *(v9 - 8);
  v8 = v9 - 8;
  v5 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v10 = (v4 - v5);
  v13 = v0;

  v6 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v6);
  v1 = v7;
  *v10 = v6;
  v2 = *MEMORY[0x1E69E8020];
  (*(v1 + 104))();
  v11 = sub_1B0E44488();
  (*(v7 + 8))(v10, v9);
  result = v11;
  if (v11)
  {

    v4[1] = &v12;
    swift_beginAccess();
    sub_1B06E673C();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06ECF28()
{
  v10 = v0;
  if (sub_1B0E429F8())
  {
    v5 = *MEMORY[0x1E6959720];
    MEMORY[0x1E69E5928](*MEMORY[0x1E6959720]);
    v7[0] = sub_1B0E44AD8();
    v7[1] = v1;
    sub_1B0E467D8();
    sub_1B0E44778();

    sub_1B070B2CC(v6);
    MEMORY[0x1E69E5920](v5);
    sub_1B03B1198(v7);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v9 = 0;
  }

  if (v9)
  {
    if (swift_dynamicCast())
    {
      return v7[2];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B041C0EC(v8);
    return 0;
  }
}

uint64_t sub_1B06ED0D0()
{
  v223 = sub_1B039BBE8;
  v224 = sub_1B0394C30;
  v225 = sub_1B0394C24;
  v226 = sub_1B039BA2C;
  v227 = sub_1B039BA88;
  v228 = sub_1B039BB94;
  v229 = sub_1B0394C24;
  v230 = sub_1B039BBA0;
  v231 = sub_1B039BC08;
  v232 = sub_1B070B278;
  v233 = sub_1B039BC08;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B0399178;
  v237 = sub_1B0398F5C;
  v238 = sub_1B0398F5C;
  v239 = sub_1B039BA94;
  v240 = sub_1B0398F5C;
  v241 = sub_1B0398F5C;
  v242 = sub_1B0399178;
  v243 = sub_1B0398F5C;
  v244 = sub_1B0398F5C;
  v245 = sub_1B03991EC;
  v246 = sub_1B0398F5C;
  v247 = sub_1B0398F5C;
  v248 = sub_1B03991EC;
  v249 = sub_1B039BBE8;
  v250 = sub_1B0394C24;
  v251 = sub_1B039BA2C;
  v252 = sub_1B039BA88;
  v253 = sub_1B0394C24;
  v254 = sub_1B039BBA0;
  v255 = sub_1B039BC08;
  v256 = sub_1B0398F5C;
  v257 = sub_1B0398F5C;
  v258 = sub_1B0399178;
  v259 = sub_1B0398F5C;
  v260 = sub_1B0398F5C;
  v261 = sub_1B039BA94;
  v262 = sub_1B0398F5C;
  v263 = sub_1B0398F5C;
  v264 = sub_1B0399178;
  v265 = sub_1B0398F5C;
  v266 = sub_1B0398F5C;
  v267 = sub_1B03991EC;
  v308 = 0;
  v307 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v268 = 0;
  v276 = 0;
  v269 = sub_1B0E439A8();
  v270 = *(v269 - 8);
  v271 = v269 - 8;
  v272 = (*(v270 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v273 = v116 - v272;
  v274 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v275 = v116 - v274;
  v277 = _s6LoggerVMa();
  v278 = (*(*(v277 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v276);
  v279 = v116 - v278;
  v280 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v281 = v116 - v280;
  v282 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v283 = v116 - v282;
  v284 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v285 = v116 - v284;
  v308 = v116 - v284;
  v290 = sub_1B0E44468();
  v288 = *(v290 - 8);
  v289 = v290 - 8;
  v286 = (*(v288 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v290);
  v291 = (v116 - v286);
  v307 = v0;

  v287 = *(v0 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v287);
  v9 = v288;
  *v291 = v287;
  v10 = *MEMORY[0x1E69E8020];
  (*(v9 + 104))();
  v292 = sub_1B0E44488();
  (*(v288 + 8))(v291, v290);
  result = v292;
  if (v292)
  {

    sub_1B0394784(v222 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v285);
    v218 = *(v222 + 16);
    MEMORY[0x1E69E5928](v218);
    v219 = sub_1B06EC92C();
    MEMORY[0x1E69E5920](v218);
    v220 = &v306;
    swift_beginAccess();
    v221 = sub_1B06E6BB8(v219);
    swift_endAccess();
    LODWORD(v305) = v221;
    BYTE4(v305) = BYTE4(v221);
    if ((v221 & 0xFF00000000) == 0x200000000)
    {
      (*(v270 + 16))(v275, v285, v269);
      sub_1B0394784(v285, v283);
      sub_1B0394784(v283, v281);
      sub_1B03F4FD0(v283, v279);
      v12 = (v281 + *(v277 + 20));
      v186 = *v12;
      v187 = *(v12 + 1);
      sub_1B039480C(v281);
      v185 = 24;
      v197 = 7;
      v13 = swift_allocObject();
      v14 = v187;
      v190 = v13;
      *(v13 + 16) = v186;
      *(v13 + 20) = v14;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = swift_allocObject();
      v16 = v187;
      v188 = v15;
      *(v15 + 16) = v186;
      *(v15 + 20) = v16;

      v196 = 32;
      v17 = swift_allocObject();
      v18 = v188;
      v198 = v17;
      *(v17 + 16) = v249;
      *(v17 + 24) = v18;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v279);
      v215 = sub_1B0E43988();
      v216 = sub_1B0E45908();
      v194 = 17;
      v200 = swift_allocObject();
      v192 = 16;
      *(v200 + 16) = 16;
      v201 = swift_allocObject();
      v195 = 4;
      *(v201 + 16) = 4;
      v19 = swift_allocObject();
      v189 = v19;
      *(v19 + 16) = v224;
      *(v19 + 24) = 0;
      v20 = swift_allocObject();
      v21 = v189;
      v202 = v20;
      *(v20 + 16) = v250;
      *(v20 + 24) = v21;
      v203 = swift_allocObject();
      *(v203 + 16) = 0;
      v204 = swift_allocObject();
      *(v204 + 16) = 1;
      v22 = swift_allocObject();
      v23 = v190;
      v191 = v22;
      *(v22 + 16) = v251;
      *(v22 + 24) = v23;
      v24 = swift_allocObject();
      v25 = v191;
      v205 = v24;
      *(v24 + 16) = v252;
      *(v24 + 24) = v25;
      v206 = swift_allocObject();
      *(v206 + 16) = v192;
      v207 = swift_allocObject();
      *(v207 + 16) = v195;
      v26 = swift_allocObject();
      v193 = v26;
      *(v26 + 16) = v228;
      *(v26 + 24) = 0;
      v27 = swift_allocObject();
      v28 = v193;
      v208 = v27;
      *(v27 + 16) = v253;
      *(v27 + 24) = v28;
      v209 = swift_allocObject();
      *(v209 + 16) = 0;
      v210 = swift_allocObject();
      *(v210 + 16) = v195;
      v29 = swift_allocObject();
      v30 = v198;
      v199 = v29;
      *(v29 + 16) = v254;
      *(v29 + 24) = v30;
      v31 = swift_allocObject();
      v32 = v199;
      v212 = v31;
      *(v31 + 16) = v255;
      *(v31 + 24) = v32;
      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v211 = sub_1B0E46A48();
      v213 = v33;

      v34 = v200;
      v35 = v213;
      *v213 = v256;
      v35[1] = v34;

      v36 = v201;
      v37 = v213;
      v213[2] = v257;
      v37[3] = v36;

      v38 = v202;
      v39 = v213;
      v213[4] = v258;
      v39[5] = v38;

      v40 = v203;
      v41 = v213;
      v213[6] = v259;
      v41[7] = v40;

      v42 = v204;
      v43 = v213;
      v213[8] = v260;
      v43[9] = v42;

      v44 = v205;
      v45 = v213;
      v213[10] = v261;
      v45[11] = v44;

      v46 = v206;
      v47 = v213;
      v213[12] = v262;
      v47[13] = v46;

      v48 = v207;
      v49 = v213;
      v213[14] = v263;
      v49[15] = v48;

      v50 = v208;
      v51 = v213;
      v213[16] = v264;
      v51[17] = v50;

      v52 = v209;
      v53 = v213;
      v213[18] = v265;
      v53[19] = v52;

      v54 = v210;
      v55 = v213;
      v213[20] = v266;
      v55[21] = v54;

      v56 = v212;
      v57 = v213;
      v213[22] = v267;
      v57[23] = v56;
      sub_1B0394964();

      if (os_log_type_enabled(v215, v216))
      {
        v58 = v268;
        v178 = sub_1B0E45D78();
        v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v177 = 0;
        v179 = sub_1B03949A8(0);
        v180 = sub_1B03949A8(v177);
        v181 = &v297;
        v297 = v178;
        v182 = &v296;
        v296 = v179;
        v183 = &v295;
        v295 = v180;
        sub_1B0394A48(0, &v297);
        sub_1B0394A48(4, v181);
        v293 = v256;
        v294 = v200;
        sub_1B03949FC(&v293, v181, v182, v183);
        v184 = v58;
        if (v58)
        {

          __break(1u);
        }

        else
        {
          v293 = v257;
          v294 = v201;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v175 = 0;
          v293 = v258;
          v294 = v202;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v174 = 0;
          v293 = v259;
          v294 = v203;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v173 = 0;
          v293 = v260;
          v294 = v204;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v172 = 0;
          v293 = v261;
          v294 = v205;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v171 = 0;
          v293 = v262;
          v294 = v206;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v170 = 0;
          v293 = v263;
          v294 = v207;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v169 = 0;
          v293 = v264;
          v294 = v208;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v168 = 0;
          v293 = v265;
          v294 = v209;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v167 = 0;
          v293 = v266;
          v294 = v210;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          v166 = 0;
          v293 = v267;
          v294 = v212;
          sub_1B03949FC(&v293, &v297, &v296, &v295);
          _os_log_impl(&dword_1B0389000, v215, v216, "[%.*hhx-%.*X] Accounts: Ignoring credentials did become invalid.", v178, 0x17u);
          v165 = 0;
          sub_1B03998A8(v179);
          sub_1B03998A8(v180);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v215);
      (*(v270 + 8))(v275, v269);
    }

    else
    {
      v217 = v221 & 0xFFFFFFFFFFLL;
      v125 = (v221 & 0xFFFFFFFFFFuLL) >> 32;
      v130 = v221;
      v304 = v221;
      v132 = 1;
      v303 = v125 & 1;
      (*(v270 + 16))(v273, v285, v269);
      sub_1B0394784(v285, v283);
      sub_1B0394784(v283, v281);
      sub_1B03F4FD0(v283, v279);
      v59 = (v281 + *(v277 + 20));
      v127 = *v59;
      v128 = *(v59 + 1);
      sub_1B039480C(v281);
      v126 = 24;
      v142 = 7;
      v60 = swift_allocObject();
      v61 = v128;
      v133 = v60;
      *(v60 + 16) = v127;
      *(v60 + 20) = v61;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v62 = swift_allocObject();
      v63 = v128;
      v129 = v62;
      *(v62 + 16) = v127;
      *(v62 + 20) = v63;

      v141 = 32;
      v64 = swift_allocObject();
      v65 = v129;
      v137 = v64;
      *(v64 + 16) = v223;
      *(v64 + 24) = v65;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v279);
      v143 = swift_allocObject();
      *(v143 + 16) = v130;
      v163 = sub_1B0E43988();
      v164 = sub_1B0E458E8();
      v139 = 17;
      v145 = swift_allocObject();
      v135 = 16;
      *(v145 + 16) = 16;
      v146 = swift_allocObject();
      v140 = 4;
      *(v146 + 16) = 4;
      v66 = swift_allocObject();
      v131 = v66;
      *(v66 + 16) = v224;
      *(v66 + 24) = 0;
      v67 = swift_allocObject();
      v68 = v131;
      v147 = v67;
      *(v67 + 16) = v225;
      *(v67 + 24) = v68;
      v148 = swift_allocObject();
      *(v148 + 16) = 0;
      v149 = swift_allocObject();
      *(v149 + 16) = v132;
      v69 = swift_allocObject();
      v70 = v133;
      v134 = v69;
      *(v69 + 16) = v226;
      *(v69 + 24) = v70;
      v71 = swift_allocObject();
      v72 = v134;
      v150 = v71;
      *(v71 + 16) = v227;
      *(v71 + 24) = v72;
      v151 = swift_allocObject();
      *(v151 + 16) = v135;
      v152 = swift_allocObject();
      *(v152 + 16) = v140;
      v73 = swift_allocObject();
      v136 = v73;
      *(v73 + 16) = v228;
      *(v73 + 24) = 0;
      v74 = swift_allocObject();
      v75 = v136;
      v153 = v74;
      *(v74 + 16) = v229;
      *(v74 + 24) = v75;
      v154 = swift_allocObject();
      *(v154 + 16) = 0;
      v155 = swift_allocObject();
      *(v155 + 16) = v140;
      v76 = swift_allocObject();
      v77 = v137;
      v138 = v76;
      *(v76 + 16) = v230;
      *(v76 + 24) = v77;
      v78 = swift_allocObject();
      v79 = v138;
      v156 = v78;
      *(v78 + 16) = v231;
      *(v78 + 24) = v79;
      v157 = swift_allocObject();
      *(v157 + 16) = 0;
      v158 = swift_allocObject();
      *(v158 + 16) = v140;
      v80 = swift_allocObject();
      v81 = v143;
      v144 = v80;
      *(v80 + 16) = v232;
      *(v80 + 24) = v81;
      v82 = swift_allocObject();
      v83 = v144;
      v160 = v82;
      *(v82 + 16) = v233;
      *(v82 + 24) = v83;
      v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v159 = sub_1B0E46A48();
      v161 = v84;

      v85 = v145;
      v86 = v161;
      *v161 = v234;
      v86[1] = v85;

      v87 = v146;
      v88 = v161;
      v161[2] = v235;
      v88[3] = v87;

      v89 = v147;
      v90 = v161;
      v161[4] = v236;
      v90[5] = v89;

      v91 = v148;
      v92 = v161;
      v161[6] = v237;
      v92[7] = v91;

      v93 = v149;
      v94 = v161;
      v161[8] = v238;
      v94[9] = v93;

      v95 = v150;
      v96 = v161;
      v161[10] = v239;
      v96[11] = v95;

      v97 = v151;
      v98 = v161;
      v161[12] = v240;
      v98[13] = v97;

      v99 = v152;
      v100 = v161;
      v161[14] = v241;
      v100[15] = v99;

      v101 = v153;
      v102 = v161;
      v161[16] = v242;
      v102[17] = v101;

      v103 = v154;
      v104 = v161;
      v161[18] = v243;
      v104[19] = v103;

      v105 = v155;
      v106 = v161;
      v161[20] = v244;
      v106[21] = v105;

      v107 = v156;
      v108 = v161;
      v161[22] = v245;
      v108[23] = v107;

      v109 = v157;
      v110 = v161;
      v161[24] = v246;
      v110[25] = v109;

      v111 = v158;
      v112 = v161;
      v161[26] = v247;
      v112[27] = v111;

      v113 = v160;
      v114 = v161;
      v161[28] = v248;
      v114[29] = v113;
      sub_1B0394964();

      if (os_log_type_enabled(v163, v164))
      {
        v115 = v268;
        v118 = sub_1B0E45D78();
        v116[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v117 = 0;
        v119 = sub_1B03949A8(0);
        v120 = sub_1B03949A8(v117);
        v121 = &v302;
        v302 = v118;
        v122 = &v301;
        v301 = v119;
        v123 = &v300;
        v300 = v120;
        sub_1B0394A48(0, &v302);
        sub_1B0394A48(5, v121);
        v298 = v234;
        v299 = v145;
        sub_1B03949FC(&v298, v121, v122, v123);
        v124 = v115;
        if (v115)
        {

          __break(1u);
        }

        else
        {
          v298 = v235;
          v299 = v146;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[13] = 0;
          v298 = v236;
          v299 = v147;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[12] = 0;
          v298 = v237;
          v299 = v148;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[11] = 0;
          v298 = v238;
          v299 = v149;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[10] = 0;
          v298 = v239;
          v299 = v150;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[9] = 0;
          v298 = v240;
          v299 = v151;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[8] = 0;
          v298 = v241;
          v299 = v152;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[7] = 0;
          v298 = v242;
          v299 = v153;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[6] = 0;
          v298 = v243;
          v299 = v154;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[5] = 0;
          v298 = v244;
          v299 = v155;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[4] = 0;
          v298 = v245;
          v299 = v156;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[3] = 0;
          v298 = v246;
          v299 = v157;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[2] = 0;
          v298 = v247;
          v299 = v158;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          v116[1] = 0;
          v298 = v248;
          v299 = v160;
          sub_1B03949FC(&v298, &v302, &v301, &v300);
          _os_log_impl(&dword_1B0389000, v163, v164, "[%.*hhx-%.*X] Accounts: Credentials did become invalid. Trying to renew (%u).", v118, 0x1Du);
          v116[0] = 0;
          sub_1B03998A8(v119);
          sub_1B03998A8(v120);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v163);
      (*(v270 + 8))(v273, v269);
      sub_1B06ECC2C(v130, v125 & 1);
    }

    return sub_1B039480C(v285);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06EFB4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v13 = a1;
  v12 = a2;
  v11 = a3 + 16;
  v10 = a4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    v5 = sub_1B06E7144(a1);
    sub_1B06EFC38(a4, v5, a2);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B06EFC38(unsigned int a1, int a2, uint64_t a3)
{
  v446 = a1;
  v445 = a2;
  v444 = a3;
  v355 = sub_1B039BBE8;
  v356 = sub_1B0394C30;
  v357 = sub_1B0394C24;
  v358 = sub_1B039BA2C;
  v359 = sub_1B039BA88;
  v360 = sub_1B039BB94;
  v361 = sub_1B0394C24;
  v362 = sub_1B039BBA0;
  v363 = sub_1B039BC08;
  v364 = sub_1B070B278;
  v365 = sub_1B039BC08;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0399178;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B039BA94;
  v372 = sub_1B0398F5C;
  v373 = sub_1B0398F5C;
  v374 = sub_1B0399178;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0398F5C;
  v377 = sub_1B03991EC;
  v378 = sub_1B0398F5C;
  v379 = sub_1B0398F5C;
  v380 = sub_1B03991EC;
  v381 = sub_1B039BBE8;
  v382 = sub_1B0394C24;
  v383 = sub_1B039BA2C;
  v384 = sub_1B039BA88;
  v385 = sub_1B0394C24;
  v386 = sub_1B039BBA0;
  v387 = sub_1B039BC08;
  v388 = sub_1B070B2F4;
  v389 = sub_1B070B324;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0398F5C;
  v392 = sub_1B0399178;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B039BA94;
  v396 = sub_1B0398F5C;
  v397 = sub_1B0398F5C;
  v398 = sub_1B0399178;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0398F5C;
  v401 = sub_1B03991EC;
  v402 = sub_1B0398F5C;
  v403 = sub_1B0398F5C;
  v404 = sub_1B070B4B4;
  v405 = sub_1B039BBE8;
  v406 = sub_1B0394C24;
  v407 = sub_1B039BA2C;
  v408 = sub_1B039BA88;
  v409 = sub_1B0394C24;
  v410 = sub_1B039BBA0;
  v411 = sub_1B039BC08;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B0399178;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B039BA94;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B0399178;
  v421 = sub_1B0398F5C;
  v422 = sub_1B0398F5C;
  v423 = sub_1B03991EC;
  v481 = 0;
  v480 = 0;
  v479 = 0;
  v478 = 0;
  v477 = 0;
  v473 = 0;
  v474 = 0;
  v424 = 0;
  v467 = 0;
  v461 = 0;
  v434 = 0;
  v425 = sub_1B0E439A8();
  v426 = *(v425 - 8);
  v427 = v425 - 8;
  v428 = (*(v426 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](0);
  v429 = v184 - v428;
  v430 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v431 = v184 - v430;
  v432 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v433 = v184 - v432;
  v435 = _s6LoggerVMa();
  v436 = (*(*(v435 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v434);
  v437 = v184 - v436;
  v438 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v439 = v184 - v438;
  v440 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v441 = v184 - v440;
  v442 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v443 = v184 - v442;
  v481 = v184 - v442;
  v451 = sub_1B0E44468();
  v449 = *(v451 - 8);
  v450 = v451 - 8;
  v447 = (*(v449 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x1EEE9AC00](v446);
  v452 = (v184 - v447);
  v480 = v14;
  v479 = v15 & 1;
  v478 = v16;
  v477 = v3;

  v448 = *(v3 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_workloop);
  MEMORY[0x1E69E5928](v448);
  v17 = v449;
  *v452 = v448;
  v18 = *MEMORY[0x1E69E8020];
  (*(v17 + 104))();
  v453 = sub_1B0E44488();
  (*(v449 + 8))(v452, v451);
  result = v453;
  if (v453)
  {

    sub_1B0394784(v354 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_logger, v443);
    v351 = &v476;
    swift_beginAccess();
    v475 = sub_1B06E7208(v446, v445 & 1);
    v352 = v475;
    v353 = BYTE4(v475);
    swift_endAccess();
    v473 = v352;
    v474 = v353 & 1;
    if (v353)
    {
      if (v352)
      {
        MEMORY[0x1E69E5928](v444);
        if (v444)
        {
          v284 = v444;
          v250 = v444;
          v467 = v444;
          (*(v426 + 16))(v431, v443, v425);
          sub_1B0394784(v443, v441);
          sub_1B0394784(v441, v439);
          sub_1B03F4FD0(v441, v437);
          v80 = (v439 + *(v435 + 20));
          v246 = *v80;
          v247 = *(v80 + 1);
          sub_1B039480C(v439);
          v249 = 24;
          v261 = 7;
          v81 = swift_allocObject();
          v82 = v247;
          v252 = v81;
          *(v81 + 16) = v246;
          *(v81 + 20) = v82;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v83 = swift_allocObject();
          v84 = v247;
          v248 = v83;
          *(v83 + 16) = v246;
          *(v83 + 20) = v84;

          v260 = 32;
          v85 = swift_allocObject();
          v86 = v248;
          v257 = v85;
          *(v85 + 16) = v381;
          *(v85 + 24) = v86;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v437);
          MEMORY[0x1E69E5928](v250);
          v262 = swift_allocObject();
          *(v262 + 16) = v250;
          v282 = sub_1B0E43988();
          v283 = sub_1B0E458E8();
          v259 = 17;
          v264 = swift_allocObject();
          v254 = 16;
          *(v264 + 16) = 16;
          v265 = swift_allocObject();
          v256 = 4;
          *(v265 + 16) = 4;
          v87 = swift_allocObject();
          v251 = v87;
          *(v87 + 16) = v356;
          *(v87 + 24) = 0;
          v88 = swift_allocObject();
          v89 = v251;
          v266 = v88;
          *(v88 + 16) = v382;
          *(v88 + 24) = v89;
          v267 = swift_allocObject();
          *(v267 + 16) = 0;
          v268 = swift_allocObject();
          *(v268 + 16) = 1;
          v90 = swift_allocObject();
          v91 = v252;
          v253 = v90;
          *(v90 + 16) = v383;
          *(v90 + 24) = v91;
          v92 = swift_allocObject();
          v93 = v253;
          v269 = v92;
          *(v92 + 16) = v384;
          *(v92 + 24) = v93;
          v270 = swift_allocObject();
          *(v270 + 16) = v254;
          v271 = swift_allocObject();
          *(v271 + 16) = v256;
          v94 = swift_allocObject();
          v255 = v94;
          *(v94 + 16) = v360;
          *(v94 + 24) = 0;
          v95 = swift_allocObject();
          v96 = v255;
          v272 = v95;
          *(v95 + 16) = v385;
          *(v95 + 24) = v96;
          v273 = swift_allocObject();
          *(v273 + 16) = 0;
          v274 = swift_allocObject();
          *(v274 + 16) = v256;
          v97 = swift_allocObject();
          v98 = v257;
          v258 = v97;
          *(v97 + 16) = v386;
          *(v97 + 24) = v98;
          v99 = swift_allocObject();
          v100 = v258;
          v275 = v99;
          *(v99 + 16) = v387;
          *(v99 + 24) = v100;
          v276 = swift_allocObject();
          *(v276 + 16) = 64;
          v277 = swift_allocObject();
          *(v277 + 16) = 8;
          v101 = swift_allocObject();
          v102 = v262;
          v263 = v101;
          *(v101 + 16) = v388;
          *(v101 + 24) = v102;
          v103 = swift_allocObject();
          v104 = v263;
          v279 = v103;
          *(v103 + 16) = v389;
          *(v103 + 24) = v104;
          v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v278 = sub_1B0E46A48();
          v280 = v105;

          v106 = v264;
          v107 = v280;
          *v280 = v390;
          v107[1] = v106;

          v108 = v265;
          v109 = v280;
          v280[2] = v391;
          v109[3] = v108;

          v110 = v266;
          v111 = v280;
          v280[4] = v392;
          v111[5] = v110;

          v112 = v267;
          v113 = v280;
          v280[6] = v393;
          v113[7] = v112;

          v114 = v268;
          v115 = v280;
          v280[8] = v394;
          v115[9] = v114;

          v116 = v269;
          v117 = v280;
          v280[10] = v395;
          v117[11] = v116;

          v118 = v270;
          v119 = v280;
          v280[12] = v396;
          v119[13] = v118;

          v120 = v271;
          v121 = v280;
          v280[14] = v397;
          v121[15] = v120;

          v122 = v272;
          v123 = v280;
          v280[16] = v398;
          v123[17] = v122;

          v124 = v273;
          v125 = v280;
          v280[18] = v399;
          v125[19] = v124;

          v126 = v274;
          v127 = v280;
          v280[20] = v400;
          v127[21] = v126;

          v128 = v275;
          v129 = v280;
          v280[22] = v401;
          v129[23] = v128;

          v130 = v276;
          v131 = v280;
          v280[24] = v402;
          v131[25] = v130;

          v132 = v277;
          v133 = v280;
          v280[26] = v403;
          v133[27] = v132;

          v134 = v279;
          v135 = v280;
          v280[28] = v404;
          v135[29] = v134;
          sub_1B0394964();

          if (os_log_type_enabled(v282, v283))
          {
            v136 = v424;
            v239 = sub_1B0E45D78();
            v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v240 = sub_1B03949A8(1);
            v241 = sub_1B03949A8(0);
            v242 = &v466;
            v466 = v239;
            v243 = &v465;
            v465 = v240;
            v244 = &v464;
            v464 = v241;
            sub_1B0394A48(2, &v466);
            sub_1B0394A48(5, v242);
            v462 = v390;
            v463 = v264;
            sub_1B03949FC(&v462, v242, v243, v244);
            v245 = v136;
            if (v136)
            {

              __break(1u);
            }

            else
            {
              v462 = v391;
              v463 = v265;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v237 = 0;
              v462 = v392;
              v463 = v266;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v236 = 0;
              v462 = v393;
              v463 = v267;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v235 = 0;
              v462 = v394;
              v463 = v268;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v234 = 0;
              v462 = v395;
              v463 = v269;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v233 = 0;
              v462 = v396;
              v463 = v270;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v232 = 0;
              v462 = v397;
              v463 = v271;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v231 = 0;
              v462 = v398;
              v463 = v272;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v230 = 0;
              v462 = v399;
              v463 = v273;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v229 = 0;
              v462 = v400;
              v463 = v274;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v228 = 0;
              v462 = v401;
              v463 = v275;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v227 = 0;
              v462 = v402;
              v463 = v276;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v226 = 0;
              v462 = v403;
              v463 = v277;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              v225 = 0;
              v462 = v404;
              v463 = v279;
              sub_1B03949FC(&v462, &v466, &v465, &v464);
              _os_log_impl(&dword_1B0389000, v282, v283, "[%.*hhx-%.*X] Accounts: Failed to renew credentials: %@", v239, 0x21u);
              sub_1B03998A8(v240);
              sub_1B03998A8(v241);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v282);
          (*(v426 + 8))(v431, v425);
          MEMORY[0x1E69E5920](v250);
        }

        else
        {
          (*(v426 + 16))(v429, v443, v425);
          sub_1B0394784(v443, v441);
          sub_1B0394784(v441, v439);
          sub_1B03F4FD0(v441, v437);
          v137 = (v439 + *(v435 + 20));
          v194 = *v137;
          v195 = *(v137 + 1);
          sub_1B039480C(v439);
          v193 = 24;
          v205 = 7;
          v138 = swift_allocObject();
          v139 = v195;
          v198 = v138;
          *(v138 + 16) = v194;
          *(v138 + 20) = v139;
          sub_1B0394868();
          sub_1B0394868();
          sub_1B0394868();
          v140 = swift_allocObject();
          v141 = v195;
          v196 = v140;
          *(v140 + 16) = v194;
          *(v140 + 20) = v141;

          v204 = 32;
          v142 = swift_allocObject();
          v143 = v196;
          v206 = v142;
          *(v142 + 16) = v405;
          *(v142 + 24) = v143;
          sub_1B0394868();
          sub_1B0394868();

          sub_1B039480C(v437);
          v223 = sub_1B0E43988();
          v224 = sub_1B0E458E8();
          v202 = 17;
          v208 = swift_allocObject();
          v200 = 16;
          *(v208 + 16) = 16;
          v209 = swift_allocObject();
          v203 = 4;
          *(v209 + 16) = 4;
          v144 = swift_allocObject();
          v197 = v144;
          *(v144 + 16) = v356;
          *(v144 + 24) = 0;
          v145 = swift_allocObject();
          v146 = v197;
          v210 = v145;
          *(v145 + 16) = v406;
          *(v145 + 24) = v146;
          v211 = swift_allocObject();
          *(v211 + 16) = 0;
          v212 = swift_allocObject();
          *(v212 + 16) = 1;
          v147 = swift_allocObject();
          v148 = v198;
          v199 = v147;
          *(v147 + 16) = v407;
          *(v147 + 24) = v148;
          v149 = swift_allocObject();
          v150 = v199;
          v213 = v149;
          *(v149 + 16) = v408;
          *(v149 + 24) = v150;
          v214 = swift_allocObject();
          *(v214 + 16) = v200;
          v215 = swift_allocObject();
          *(v215 + 16) = v203;
          v151 = swift_allocObject();
          v201 = v151;
          *(v151 + 16) = v360;
          *(v151 + 24) = 0;
          v152 = swift_allocObject();
          v153 = v201;
          v216 = v152;
          *(v152 + 16) = v409;
          *(v152 + 24) = v153;
          v217 = swift_allocObject();
          *(v217 + 16) = 0;
          v218 = swift_allocObject();
          *(v218 + 16) = v203;
          v154 = swift_allocObject();
          v155 = v206;
          v207 = v154;
          *(v154 + 16) = v410;
          *(v154 + 24) = v155;
          v156 = swift_allocObject();
          v157 = v207;
          v220 = v156;
          *(v156 + 16) = v411;
          *(v156 + 24) = v157;
          v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
          v219 = sub_1B0E46A48();
          v221 = v158;

          v159 = v208;
          v160 = v221;
          *v221 = v412;
          v160[1] = v159;

          v161 = v209;
          v162 = v221;
          v221[2] = v413;
          v162[3] = v161;

          v163 = v210;
          v164 = v221;
          v221[4] = v414;
          v164[5] = v163;

          v165 = v211;
          v166 = v221;
          v221[6] = v415;
          v166[7] = v165;

          v167 = v212;
          v168 = v221;
          v221[8] = v416;
          v168[9] = v167;

          v169 = v213;
          v170 = v221;
          v221[10] = v417;
          v170[11] = v169;

          v171 = v214;
          v172 = v221;
          v221[12] = v418;
          v172[13] = v171;

          v173 = v215;
          v174 = v221;
          v221[14] = v419;
          v174[15] = v173;

          v175 = v216;
          v176 = v221;
          v221[16] = v420;
          v176[17] = v175;

          v177 = v217;
          v178 = v221;
          v221[18] = v421;
          v178[19] = v177;

          v179 = v218;
          v180 = v221;
          v221[20] = v422;
          v180[21] = v179;

          v181 = v220;
          v182 = v221;
          v221[22] = v423;
          v182[23] = v181;
          sub_1B0394964();

          if (os_log_type_enabled(v223, v224))
          {
            v183 = v424;
            v186 = sub_1B0E45D78();
            v184[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
            v185 = 0;
            v187 = sub_1B03949A8(0);
            v188 = sub_1B03949A8(v185);
            v189 = &v472;
            v472 = v186;
            v190 = &v471;
            v471 = v187;
            v191 = &v470;
            v470 = v188;
            sub_1B0394A48(0, &v472);
            sub_1B0394A48(4, v189);
            v468 = v412;
            v469 = v208;
            sub_1B03949FC(&v468, v189, v190, v191);
            v192 = v183;
            if (v183)
            {

              __break(1u);
            }

            else
            {
              v468 = v413;
              v469 = v209;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[10] = 0;
              v468 = v414;
              v469 = v210;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[9] = 0;
              v468 = v415;
              v469 = v211;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[8] = 0;
              v468 = v416;
              v469 = v212;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[7] = 0;
              v468 = v417;
              v469 = v213;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[6] = 0;
              v468 = v418;
              v469 = v214;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[5] = 0;
              v468 = v419;
              v469 = v215;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[4] = 0;
              v468 = v420;
              v469 = v216;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[3] = 0;
              v468 = v421;
              v469 = v217;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[2] = 0;
              v468 = v422;
              v469 = v218;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              v184[1] = 0;
              v468 = v423;
              v469 = v220;
              sub_1B03949FC(&v468, &v472, &v471, &v470);
              _os_log_impl(&dword_1B0389000, v223, v224, "[%.*hhx-%.*X] Accounts: Failed to renew credentials.", v186, 0x17u);
              v184[0] = 0;
              sub_1B03998A8(v187);
              sub_1B03998A8(v188);
              sub_1B0E45D58();
            }
          }

          else
          {
          }

          MEMORY[0x1E69E5920](v223);
          (*(v426 + 8))(v429, v425);
        }
      }
    }

    else
    {
      v350 = v352;
      v316 = v352;
      v461 = v352;
      (*(v426 + 16))(v433, v443, v425);
      sub_1B0394784(v443, v441);
      sub_1B0394784(v441, v439);
      sub_1B03F4FD0(v441, v437);
      v20 = (v439 + *(v435 + 20));
      v313 = *v20;
      v314 = *(v20 + 1);
      sub_1B039480C(v439);
      v312 = 24;
      v327 = 7;
      v21 = swift_allocObject();
      v22 = v314;
      v318 = v21;
      *(v21 + 16) = v313;
      *(v21 + 20) = v22;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v23 = swift_allocObject();
      v24 = v314;
      v315 = v23;
      *(v23 + 16) = v313;
      *(v23 + 20) = v24;

      v326 = 32;
      v25 = swift_allocObject();
      v26 = v315;
      v322 = v25;
      *(v25 + 16) = v355;
      *(v25 + 24) = v26;
      sub_1B0394868();
      sub_1B0394868();

      sub_1B039480C(v437);
      v328 = swift_allocObject();
      *(v328 + 16) = v316;
      v348 = sub_1B0E43988();
      v349 = sub_1B0E45908();
      v324 = 17;
      v330 = swift_allocObject();
      v320 = 16;
      *(v330 + 16) = 16;
      v331 = swift_allocObject();
      v325 = 4;
      *(v331 + 16) = 4;
      v27 = swift_allocObject();
      v317 = v27;
      *(v27 + 16) = v356;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v317;
      v332 = v28;
      *(v28 + 16) = v357;
      *(v28 + 24) = v29;
      v333 = swift_allocObject();
      *(v333 + 16) = 0;
      v334 = swift_allocObject();
      *(v334 + 16) = 1;
      v30 = swift_allocObject();
      v31 = v318;
      v319 = v30;
      *(v30 + 16) = v358;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v319;
      v335 = v32;
      *(v32 + 16) = v359;
      *(v32 + 24) = v33;
      v336 = swift_allocObject();
      *(v336 + 16) = v320;
      v337 = swift_allocObject();
      *(v337 + 16) = v325;
      v34 = swift_allocObject();
      v321 = v34;
      *(v34 + 16) = v360;
      *(v34 + 24) = 0;
      v35 = swift_allocObject();
      v36 = v321;
      v338 = v35;
      *(v35 + 16) = v361;
      *(v35 + 24) = v36;
      v339 = swift_allocObject();
      *(v339 + 16) = 0;
      v340 = swift_allocObject();
      *(v340 + 16) = v325;
      v37 = swift_allocObject();
      v38 = v322;
      v323 = v37;
      *(v37 + 16) = v362;
      *(v37 + 24) = v38;
      v39 = swift_allocObject();
      v40 = v323;
      v341 = v39;
      *(v39 + 16) = v363;
      *(v39 + 24) = v40;
      v342 = swift_allocObject();
      *(v342 + 16) = 0;
      v343 = swift_allocObject();
      *(v343 + 16) = v325;
      v41 = swift_allocObject();
      v42 = v328;
      v329 = v41;
      *(v41 + 16) = v364;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v329;
      v345 = v43;
      *(v43 + 16) = v365;
      *(v43 + 24) = v44;
      v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v344 = sub_1B0E46A48();
      v346 = v45;

      v46 = v330;
      v47 = v346;
      *v346 = v366;
      v47[1] = v46;

      v48 = v331;
      v49 = v346;
      v346[2] = v367;
      v49[3] = v48;

      v50 = v332;
      v51 = v346;
      v346[4] = v368;
      v51[5] = v50;

      v52 = v333;
      v53 = v346;
      v346[6] = v369;
      v53[7] = v52;

      v54 = v334;
      v55 = v346;
      v346[8] = v370;
      v55[9] = v54;

      v56 = v335;
      v57 = v346;
      v346[10] = v371;
      v57[11] = v56;

      v58 = v336;
      v59 = v346;
      v346[12] = v372;
      v59[13] = v58;

      v60 = v337;
      v61 = v346;
      v346[14] = v373;
      v61[15] = v60;

      v62 = v338;
      v63 = v346;
      v346[16] = v374;
      v63[17] = v62;

      v64 = v339;
      v65 = v346;
      v346[18] = v375;
      v65[19] = v64;

      v66 = v340;
      v67 = v346;
      v346[20] = v376;
      v67[21] = v66;

      v68 = v341;
      v69 = v346;
      v346[22] = v377;
      v69[23] = v68;

      v70 = v342;
      v71 = v346;
      v346[24] = v378;
      v71[25] = v70;

      v72 = v343;
      v73 = v346;
      v346[26] = v379;
      v73[27] = v72;

      v74 = v345;
      v75 = v346;
      v346[28] = v380;
      v75[29] = v74;
      sub_1B0394964();

      if (os_log_type_enabled(v348, v349))
      {
        v76 = v424;
        v305 = sub_1B0E45D78();
        v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v304 = 0;
        v306 = sub_1B03949A8(0);
        v307 = sub_1B03949A8(v304);
        v308 = &v458;
        v458 = v305;
        v309 = &v457;
        v457 = v306;
        v310 = &v456;
        v456 = v307;
        sub_1B0394A48(0, &v458);
        sub_1B0394A48(5, v308);
        v454 = v366;
        v455 = v330;
        sub_1B03949FC(&v454, v308, v309, v310);
        v311 = v76;
        if (v76)
        {

          __break(1u);
        }

        else
        {
          v454 = v367;
          v455 = v331;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v302 = 0;
          v454 = v368;
          v455 = v332;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v301 = 0;
          v454 = v369;
          v455 = v333;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v300 = 0;
          v454 = v370;
          v455 = v334;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v299 = 0;
          v454 = v371;
          v455 = v335;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v298 = 0;
          v454 = v372;
          v455 = v336;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v297 = 0;
          v454 = v373;
          v455 = v337;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v296 = 0;
          v454 = v374;
          v455 = v338;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v295 = 0;
          v454 = v375;
          v455 = v339;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v294 = 0;
          v454 = v376;
          v455 = v340;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v293 = 0;
          v454 = v377;
          v455 = v341;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v292 = 0;
          v454 = v378;
          v455 = v342;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v291 = 0;
          v454 = v379;
          v455 = v343;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          v290 = 0;
          v454 = v380;
          v455 = v345;
          sub_1B03949FC(&v454, &v458, &v457, &v456);
          _os_log_impl(&dword_1B0389000, v348, v349, "[%.*hhx-%.*X] Accounts: Did renew credentials (%u).", v305, 0x1Du);
          v289 = 0;
          sub_1B03998A8(v306);
          sub_1B03998A8(v307);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v348);
      (*(v426 + 8))(v433, v425);
      v288 = v354 + OBJC_IVAR____TtCC7Message18PersistenceAdaptor17CredentialsHelper_persistenceAdaptor;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v78 = *(v288 + 8);
      v459 = Strong;
      v460 = v78;
      if (Strong)
      {
        v285 = &v459;
        v287 = v459;
        v286 = v460;
        swift_unknownObjectRetain();
        sub_1B03FD360(v285);
        swift_endAccess();
        ObjectType = swift_getObjectType();
        (*(v286 + 8))(ObjectType);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1B03FD360(&v459);
        swift_endAccess();
      }
    }

    return sub_1B039480C(v443);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B06F2BDC(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a1;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = sub_1B070B4C0;
  v76 = 0;
  v75 = 0;
  v73 = 0;
  v74 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v50 = 0;
  v55 = sub_1B0E44238();
  v52 = *(v55 - 8);
  v53 = v55 - 8;
  v32 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v54 = &v32 - v32;
  v59 = sub_1B0E44288();
  v56 = *(v59 - 8);
  v57 = v59 - 8;
  v33 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v35);
  v58 = &v32 - v33;
  v37 = 1;
  v76 = v5 & 1;
  v75 = v6;
  v73 = v7;
  v74 = v8;
  v72 = v4;
  v34 = 0;
  v9 = static Environment.AppState.__derived_enum_equals(_:_:)(v5 & 1, 0);
  v36 = v9 ^ v37;
  v71 = (v9 ^ v37) & 1 & v37;
  v38 = static Environment.AppState.__derived_enum_equals(_:_:)(v35 & 1, v34);
  v70 = v38 & v37;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1940, &qword_1B0E9A0A0);
  v40 = sub_1B0E46A48();
  v39 = v10;
  v43 = *MEMORY[0x1E6959AA0];
  MEMORY[0x1E69E5928](v43);
  v11 = sub_1B0E44AD8();
  v12 = v36;
  v13 = v37;
  v15 = v14;
  v16 = v39;
  *v39 = v11;
  v16[1] = v15;
  *(v16 + 16) = v12 & v13;
  v42 = *MEMORY[0x1E6959AA8];
  MEMORY[0x1E69E5928](v42);
  v17 = sub_1B0E44AD8();
  v18 = v37;
  v19 = v38;
  v20 = v39;
  v21 = v17;
  v22 = v40;
  v39[3] = v21;
  v20[4] = v23;
  *(v20 + 40) = v19 & v18;
  sub_1B0394964();
  v44 = v22;
  MEMORY[0x1E69E5920](v42);
  MEMORY[0x1E69E5920](v43);
  v61 = sub_1B0E445D8();
  v69 = v61;
  v60 = *sub_1B06F338C();
  MEMORY[0x1E69E5928](v60);
  sub_1B0E44278();
  sub_1B0E44228();
  MEMORY[0x1E69E5928](v45);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1E69E5928](v46);

  v24 = swift_allocObject();
  v25 = v46;
  v26 = v47;
  v27 = v48;
  v28 = v49;
  v29 = v24;
  v30 = v61;
  v29[2] = v45;
  v29[3] = v30;
  v29[4] = v25;
  v29[5] = v26;
  v29[6] = v27;
  v67 = v28;
  v68 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v63 = 1107296256;
  v64 = 0;
  v65 = sub_1B038C908;
  v66 = &block_descriptor_783;
  v51 = _Block_copy(&aBlock);
  MEMORY[0x1B2727B00](v50, v58, v54);
  _Block_release(v51);

  (*(v52 + 8))(v54, v55);
  (*(v56 + 8))(v58, v59);
  MEMORY[0x1E69E5920](v60);
}