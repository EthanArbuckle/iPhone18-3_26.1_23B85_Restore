uint64_t sub_1B21D21A4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 32);
  if (v6)
  {
    return v6(*(v5 + 40), a1, *a2, a3, a4, a5);
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1B21D2200()
{
  result = qword_1EB7A2308;
  if (!qword_1EB7A2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2308);
  }

  return result;
}

unint64_t sub_1B21D2258()
{
  result = qword_1EB7A2310;
  if (!qword_1EB7A2310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2310);
  }

  return result;
}

unint64_t sub_1B21D22B0()
{
  result = qword_1EB7A2318;
  if (!qword_1EB7A2318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2318);
  }

  return result;
}

unint64_t sub_1B21D2308()
{
  result = qword_1EB7A2320;
  if (!qword_1EB7A2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2320);
  }

  return result;
}

uint64_t sub_1B21D23B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr)@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  result = sub_1B21D1F74(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1B21D2410()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = v2;
    }

    else
    {
      v4 = &unk_1F2968FA0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    *(v4 + 1) = xmmword_1B22546B0;
    *(v4 + 4) = v2;
    *(v4 + 5) = v1;
  }

  v5 = *(v4 + 2);
  if (v5)
  {
    sub_1B21414CC(v2, v1, v3);
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B212DF24();
    result = sub_1B216EB80(v6, v7, v8);
    v10 = 0;
    v11 = v35;
    v12 = (v4 + 40);
    v29 = v4;
    while (v10 < *(v4 + 2))
    {
      v13 = *v12;
      v31[0] = *(v12 - 1);
      v31[1] = v13;

      sub_1B21D67C8(v31, v30, v32);

      v15 = v32[0];
      v14 = v32[1];
      v16 = v33;
      v17 = v34;
      v35 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = sub_1B211156C(v18);
        v28 = v22;
        result = sub_1B216EB80(v21, v19 + 1, 1);
        v16 = v28;
        v11 = v35;
      }

      ++v10;
      *(v11 + 16) = v19 + 1;
      v20 = v11 + 40 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      *(v20 + 48) = v16;
      *(v20 + 64) = v17;
      v12 += 2;
      v4 = v29;
      if (v5 == v10)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B21414CC(v2, v1, v3);

    v11 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v23 = sub_1B21962F4(v11);
    v25 = *(v30 + 40);
    v24 = *(v30 + 48);
    sub_1B216B0CC();
    v26 = swift_allocError();
    *v27 = v25;
    v27[1] = v24;
    v27[2] = v23;

    return v26;
  }

  return result;
}

void sub_1B21D2610()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 72);
  v114 = *v8;
  if (v7)
  {
    if (v7 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = &unk_1F2968FD0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_1B22546B0;
    *(v9 + 4) = v6;
    *(v9 + 5) = v5;
  }

  v10 = *(v9 + 2);
  v126 = v9;
  v127 = v2;
  if (v10)
  {
    v123 = v4;
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B21414CC(v6, v5, v7);
    v134 = v11;
    v9 = v126;
    sub_1B21143E4();
    sub_1B2114114();
    v12 = 0;
    v13 = v134;
    v14 = v126 + 5;
    while (v12 < *(v9 + 2))
    {
      v15 = *v14;
      v132 = *(v14 - 1);
      v133 = v15;

      sub_1B21D5FC0(&v132, v2, &v128);

      v16 = v128;
      v17 = v129;
      v19 = *(v134 + 16);
      v18 = *(v134 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1B211D6A0(v18);
        v119 = v21;
        sub_1B2114114();
        v16 = v119;
      }

      ++v12;
      *(v134 + 16) = v19 + 1;
      v20 = v134 + 24 * v19;
      *(v20 + 32) = v16;
      *(v20 + 48) = v17;
      v14 += 2;
      v9 = v126;
      v2 = v127;
      if (v10 == v12)
      {
        v4 = v123;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {
    sub_1B21414CC(v6, v5, v7);
    v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v22 = (v13 + 48);
    v23 = *(v13 + 16) + 1;
    do
    {
      if (v23 == 1)
      {

LABEL_68:
        sub_1B2112FDC();
        return;
      }

      if (*v22 != 4)
      {
        break;
      }

      sub_1B211E500();
    }

    while (!v24);
    sub_1B21D3270(v4);
    v26 = sub_1B2140648(v25);
    v27 = v26;
    v28 = *(v2 + 24);
    v29 = *(v28 + 16);
    v30 = MEMORY[0x1E69E7CC0];
    if (v29)
    {
      v120 = v26;
      *&v128 = MEMORY[0x1E69E7CC0];

      sub_1B2122CE8();
      sub_1B2116B10();
      v30 = v128;
      v31 = (v28 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;
        v34 = sub_1B2252220();
        v36 = v35;
        *&v128 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1B211156C(v37);
          sub_1B2116B10();
          v30 = v128;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v34;
        *(v39 + 40) = v36;
        v31 += 2;
        --v29;
      }

      while (v29);

      v9 = v126;
      v27 = v120;
    }

    v40 = sub_1B21D6D60(v30, v27);

    v41 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      *&v128 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v41 = v128;
      v42 = (v9 + 40);
      do
      {
        v43 = *(v42 - 1);
        v44 = *v42;
        v45 = sub_1B2252220();
        v47 = v46;
        *&v128 = v41;
        v49 = *(v41 + 16);
        v48 = *(v41 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_1B211156C(v48);
          sub_1B2116B10();
          v41 = v128;
        }

        *(v41 + 16) = v49 + 1;
        v50 = v41 + 16 * v49;
        *(v50 + 32) = v45;
        *(v50 + 40) = v47;
        v42 += 2;
        --v10;
      }

      while (v10);
    }

    v51 = sub_1B21D6EE8(v41, v40);

    v52 = v127[2];
    v54 = v127[5];
    v53 = v127[6];
    v55 = Database.columns(in:)(v54, v53);
    if (v1)
    {

      goto LABEL_68;
    }

    v56 = v55;
    v112 = v54;
    v113 = v53;
    v57 = *(v55 + 16);
    if (v57)
    {
      *&v128 = MEMORY[0x1E69E7CC0];
      sub_1B212CE88();
      sub_1B2116B10();
      v58 = v128;
      v59 = (v56 + 64);
      do
      {
        v60 = *(v59 - 1);
        v61 = *v59;
        *&v128 = v58;
        v63 = *(v58 + 16);
        v62 = *(v58 + 24);

        if (v63 >= v62 >> 1)
        {
          sub_1B2116B10();
          v58 = v128;
        }

        *(v58 + 16) = v63 + 1;
        v64 = v58 + 16 * v63;
        *(v64 + 32) = v60;
        *(v64 + 40) = v61;
        v59 += 11;
        --v57;
      }

      while (v57);
    }

    else
    {

      v58 = MEMORY[0x1E69E7CC0];
    }

    v65 = 0;
    v117 = *(v58 + 16);
    v121 = v58;
    v115 = v58 + 32;
    v66 = MEMORY[0x1E69E7CC0];
    while (v65 != v117)
    {
      if (v65 >= *(v121 + 16))
      {
        goto LABEL_71;
      }

      v67 = (v115 + 16 * v65);
      v69 = *v67;
      v68 = v67[1];
      ++v65;
      v70 = sub_1B2252220();
      v72 = v71;
      if (*(v51 + 16))
      {
        v73 = v70;
        v116 = v69;
        v124 = v66;
        v74 = *(v51 + 40);
        sub_1B2253420();

        sub_1B2252370();
        v75 = sub_1B2253470();
        v76 = ~(-1 << *(v51 + 32));
        do
        {
          v77 = v75 & v76;
          if (((*(v51 + 56 + (((v75 & v76) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v75 & v76)) & 1) == 0)
          {

            v66 = v124;
            goto LABEL_57;
          }

          v78 = (*(v51 + 48) + 16 * v77);
          if (*v78 == v73 && v78[1] == v72)
          {
            break;
          }

          v80 = sub_1B22531F0();
          v75 = v77 + 1;
        }

        while ((v80 & 1) == 0);

        v66 = v124;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v124;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v82 = *(v124 + 16);
          sub_1B2116B10();
          v66 = v132;
        }

        v84 = *(v66 + 16);
        v83 = *(v66 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_1B211156C(v83);
          sub_1B2116B10();
          v66 = v132;
        }

        *(v66 + 16) = v84 + 1;
        v85 = v66 + 16 * v84;
        *(v85 + 32) = v116;
        *(v85 + 40) = v68;
      }

      else
      {
LABEL_57:
      }
    }

    v122 = *(v66 + 16);
    if (v122)
    {
      v86 = v127;
      v87 = 0;
    }

    else
    {

      v66 = v126;
      v88 = v126[2];

      v86 = v127;
      v87 = 0;
      v122 = v88;
      if (!v88)
      {
        v91 = MEMORY[0x1E69E7CC0];
        v101 = v126;
        v89 = v126;
LABEL_67:
        LOBYTE(v128) = v114;
        *(&v128 + 1) = v112;
        v129 = v113;
        v130 = v89;
        v131 = v101;

        v102 = sub_1B21D609C();
        v104 = v103;

        sub_1B212DAFC(v102, v104);

        *&v128 = v91;
        sub_1B212A518(v13);
        v105 = v128;
        MEMORY[0x1EEE9AC00](v106);
        v107 = sub_1B2112F9C();
        sub_1B21619D8(v107, v108);
        sub_1B2115810();
        sub_1B211AB74(v109, &qword_1EB7A10C0, &unk_1B2257E70);
        swift_getKeyPath();

        v110 = sub_1B21506CC(v105);

        *&v128 = v110;
        *(&v128 + 1) = MEMORY[0x1E69E7CC8];
        v111.values._rawValue = &v128;
        Statement.setUncheckedArguments(_:)(v111);

        goto LABEL_68;
      }
    }

    v125 = v66;
    v135 = MEMORY[0x1E69E7CC0];
    sub_1B2114114();
    v89 = v66;
    v90 = 0;
    v91 = v135;
    v92 = (v66 + 40);
    while (v90 < *(v89 + 16))
    {
      v93 = *v92;
      v132 = *(v92 - 1);
      v133 = v93;

      v94 = v87;
      sub_1B21D5FC0(&v132, v86, &v128);

      v95 = v128;
      v96 = v129;
      v98 = *(v135 + 16);
      v97 = *(v135 + 24);
      if (v98 >= v97 >> 1)
      {
        sub_1B211D6A0(v97);
        v118 = v100;
        sub_1B2114114();
        v95 = v118;
      }

      ++v90;
      *(v135 + 16) = v98 + 1;
      v99 = v135 + 24 * v98;
      *(v99 + 32) = v95;
      *(v99 + 48) = v96;
      v92 += 2;
      v86 = v127;
      v87 = v94;
      v89 = v125;
      if (v122 == v90)
      {
        v101 = v126;
        goto LABEL_67;
      }
    }
  }

  __break(1u);
}

void PersistableRecord.performSave(_:)()
{
  sub_1B2146B10();
  v3 = *(v2 + 8);
  sub_1B21D54E8();
  if (!v0)
  {
    if (v4)
    {
      sub_1B21225BC();
      MutablePersistableRecord.update(_:)(v5, v6, v7);
    }

    else
    {
      v8 = *(v1 + 24);
      sub_1B21225BC();
      sub_1B211314C();
      v9();
    }
  }
}

BOOL MutablePersistableRecord.performDelete(_:)()
{
  sub_1B21115E0();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  type metadata accessor for DAO();
  v4 = sub_1B213CF48();
  v5(v4);

  sub_1B2143004();
  if (!v0)
  {
    sub_1B21D592C();
    v8 = v7;

    if (v8)
    {
      v13[0] = 0;
      v13[1] = 0;
      v9.value.values._rawValue = v13;
      Statement.execute(arguments:)(v9);
      if (v11)
      {
      }

      else
      {
        v12 = Database.changesCount.getter();

        return v12 > 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1B21D3270(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v31 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v5 = sub_1B2132AF4(v2);
    v6 = 0;
    v7 = v2 + 56;
    v25 = v2 + 64;
    v26 = v1;
    v27 = v2 + 56;
    v28 = v2;
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

        v30 = v4;
        v29 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v12 = sub_1B2252220();
        v14 = v13;
        v15 = *(v31 + 16);
        if (v15 >= *(v31 + 24) >> 1)
        {
          sub_1B2116B10();
        }

        *(v31 + 16) = v15 + 1;
        v16 = v31 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v14;
        if (v30)
        {
          goto LABEL_29;
        }

        v7 = v27;
        v2 = v28;
        v17 = 1 << *(v28 + 32);
        if (v5 >= v17)
        {
          goto LABEL_26;
        }

        v18 = *(v27 + 8 * v8);
        if ((v18 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v28 + 36) != v29)
        {
          goto LABEL_28;
        }

        v19 = v18 & (-2 << (v5 & 0x3F));
        if (v19)
        {
          v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v20 = v8 << 6;
          v21 = v8 + 1;
          v22 = (v25 + 8 * v8);
          while (v21 < (v17 + 63) >> 6)
          {
            v24 = *v22++;
            v23 = v24;
            v20 += 64;
            ++v21;
            if (v24)
            {
              sub_1B21268C8(v5, v29, 0);
              v17 = __clz(__rbit64(v23)) + v20;
              goto LABEL_19;
            }
          }

          sub_1B21268C8(v5, v29, 0);
        }

LABEL_19:
        if (++v6 == v26)
        {
          return;
        }

        v4 = 0;
        v3 = *(v28 + 36);
        v5 = v17;
        if (v17 < 0)
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

void sub_1B21D34AC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v5 = a1 + 64;
    v4 = *(a1 + 64);
    v6 = *(a1 + 32);
    sub_1B21115A0();
    v9 = v8 & v7;
    v11 = (v10 + 63) >> 6;
    while (v9)
    {
      sub_1B2135344();
      v41 = v13;
      v15 = v14 | (v3 << 6);
LABEL_11:
      v20 = (*(v12 + 48) + 16 * v15);
      v21 = *v20;
      v22 = v20[1];
      v23 = (*(v12 + 56) + 24 * v15);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];

      v42 = v26;

      v27 = sub_1B211E590();
      LOBYTE(v26) = v28;

      if ((v26 & 1) == 0)
      {
        goto LABEL_37;
      }

      v29 = (*(a2 + 56) + 24 * v27);
      v30 = v29[1];
      v31 = v29[2];
      if (*v29)
      {
        if (!v24)
        {

          goto LABEL_38;
        }

        v32 = v29[1];

        v34 = sub_1B21B808C(v33, v24);

        if ((v34 & 1) == 0)
        {

LABEL_37:

LABEL_38:

          return;
        }
      }

      else
      {
        if (v24)
        {
          goto LABEL_37;
        }

        v35 = v29[1];
      }

      v36 = *(v30 + 16);
      if (v36 != *(v25 + 16))
      {
LABEL_34:

        goto LABEL_38;
      }

      if (v36)
      {
        v37 = v30 == v25;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        v38 = 0;
        while (v36)
        {
          v39 = *(v30 + v38 + 32) == *(v25 + v38 + 32) && *(v30 + v38 + 40) == *(v25 + v38 + 40);
          if (!v39 && (sub_1B22531F0() & 1) == 0)
          {
            goto LABEL_34;
          }

          v38 += 16;
          if (!--v36)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_41;
      }

LABEL_31:
      v40 = sub_1B21D34AC(v31, v42);

      v9 = v41;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v11)
      {
        return;
      }

      ++v16;
      if (*(v5 + 8 * v3))
      {
        sub_1B211667C();
        v41 = v18 & v17;
        v15 = v19 | (v3 << 6);
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }
}

BOOL sub_1B21D37A8(uint64_t a1, uint64_t a2)
{
  v171 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
LABEL_81:
    result = 1;
    goto LABEL_88;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_87;
  }

  v4 = 0;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v7 = *(a1 + 32);
  sub_1B21115A0();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  v169 = v3;
  while (2)
  {
    if (v10)
    {
      sub_1B2135344();
      v170 = v14;
    }

    else
    {
      v15 = v4;
      do
      {
        v4 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }

        if (v4 >= v12)
        {
          goto LABEL_81;
        }

        ++v15;
      }

      while (!*(v6 + 8 * v4));
      sub_1B211667C();
      v170 = v17 & v16;
    }

    v18 = v13 | (v4 << 6);
    v19 = (*(v3 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v3 + 56) + 24 * v18;
    v24 = *v22;
    v23 = *(v22 + 8);
    v25 = *(v22 + 16);

    v26 = sub_1B21146D8();
    sub_1B2113A20(v26, v27, v25);
    result = v21 == 0;
    if (!v21)
    {
      goto LABEL_88;
    }

    v29 = sub_1B211E590();
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      goto LABEL_86;
    }

    v32 = *(a2 + 56) + 24 * v29;
    v33 = *v32;
    v34 = *(v32 + 8);
    v35 = *(v32 + 16);
    switch(v35)
    {
      case 1:
        v70 = *v32;
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_84;
          }

          v71 = sub_1B2111664();
          v73 = sub_1B21161DC(v71, v72, 1);
          sub_1B2113A44(v73, v74, 1);
          v75 = sub_1B2111664();
          v77 = sub_1B21161DC(v75, v76, 1);
          sub_1B2113A44(v77, v78, 1);
          v47 = v33 == v24;
        }

        else
        {
          v87 = sub_1B2111664();
          v89 = sub_1B21161DC(v87, v88, 1);
          sub_1B2113A44(v89, v90, 0);
          v91 = sub_1B2111664();
          v93 = sub_1B21161DC(v91, v92, 1);
          sub_1B2113A44(v93, v94, 0);
          v95 = trunc(v33);
          v47 = v33 > -9.22337204e18 && v33 < 9.22337204e18 && v95 == v33 && *&v24 == v33;
        }

LABEL_65:
        v3 = v169;
        v10 = v170;
        result = 0;
        if (!v47)
        {
          goto LABEL_88;
        }

        continue;
      case 2:
        if (v25 == 2)
        {
          if (*&v33 == *&v24 && v34 == v23)
          {
            v98 = sub_1B21146D8();
            sub_1B2113A20(v98, v99, 2);
            v100 = sub_1B21146D8();
            v56 = sub_1B21161DC(v100, v101, 2);
            v58 = 2;
LABEL_78:
            sub_1B2113A44(v56, v57, v58);
            v3 = v169;
            v10 = v170;
          }

          else
          {
            sub_1B2111664();
            sub_1B21D8118();
            v60 = sub_1B22531F0();
            v61 = sub_1B2111664();
            sub_1B2113A20(v61, v62, 2);
            v63 = sub_1B2111664();
            v65 = sub_1B21161DC(v63, v64, 2);
            sub_1B2113A44(v65, v66, 2);
            v3 = v169;
            v10 = v170;
            result = 0;
            if ((v60 & 1) == 0)
            {
              goto LABEL_88;
            }
          }

          continue;
        }

        v142 = sub_1B2111664();
        sub_1B2113A20(v142, v143, 2);

LABEL_84:
        v149 = sub_1B21146D8();
        sub_1B2113A20(v149, v150, v25);
LABEL_85:
        v151 = sub_1B2111664();
        v153 = sub_1B21161DC(v151, v152, v35);
        sub_1B2113A44(v153, v154, v25);
        v155 = sub_1B2111664();
        sub_1B2113A44(v155, v156, v35);
LABEL_86:
        v157 = sub_1B21146D8();
        sub_1B2113A44(v157, v158, v25);
LABEL_87:
        result = 0;
LABEL_88:
        v159 = *MEMORY[0x1E69E9840];
        return result;
      case 3:
        if (v25 != 3)
        {
          v144 = sub_1B2112B00();
          sub_1B2113A20(v144, v145, v146);
          v147 = sub_1B2111664();
          sub_1B2126638(v147, v148);
          goto LABEL_84;
        }

        v68 = v33 == 0.0 && v34 == 0xC000000000000000 && v23 >> 62 == 3;
        if (v68 && (v24 == 0.0 ? (v69 = v23 == 0xC000000000000000) : (v69 = 0), v69))
        {
          v102 = sub_1B2111A28();
          sub_1B2113A20(v102, v103, v104);
          v105 = sub_1B2111A28();
          sub_1B2113A20(v105, v106, v107);
          v108 = sub_1B2111A28();
          sub_1B2113A20(v108, v109, v110);
          v111 = sub_1B2111A28();
          sub_1B2113A44(v111, v112, v113);
          v114 = sub_1B2111A28();
          sub_1B2113A44(v114, v115, v116);
          v117 = sub_1B2111A28();
          sub_1B2113A44(v117, v118, v119);
        }

        else
        {
          switch(v23 >> 62)
          {
            case 1uLL:
              LODWORD(v120) = HIDWORD(v24) - LODWORD(v24);
              if (__OFSUB__(HIDWORD(v24), LODWORD(v24)))
              {
                goto LABEL_92;
              }

              v120 = v120;
LABEL_75:
              if (v120)
              {
                v35 = 3;
                v160 = sub_1B2112B00();
                sub_1B2113A20(v160, v161, v162);
                v163 = sub_1B21175E8();
                sub_1B2113A20(v163, v164, v165);
                v166 = sub_1B2112B00();
                sub_1B2113A20(v166, v167, v168);
                LOBYTE(v25) = 3;
                goto LABEL_85;
              }

LABEL_76:
              v124 = sub_1B2112B00();
              sub_1B2113A20(v124, v125, v126);
              v127 = sub_1B21175E8();
              sub_1B2113A20(v127, v128, v129);
              v130 = sub_1B2112B00();
              sub_1B2113A20(v130, v131, v132);
              v133 = sub_1B2112B00();
              sub_1B2113A44(v133, v134, v135);
              v136 = sub_1B21175E8();
              sub_1B2113A44(v136, v137, v138);
              v139 = sub_1B2112B00();
              sub_1B2113A44(v139, v140, v141);
              break;
            case 2uLL:
              v122 = *(*&v24 + 16);
              v121 = *(*&v24 + 24);
              v123 = __OFSUB__(v121, v122);
              v120 = v121 - v122;
              if (!v123)
              {
                goto LABEL_75;
              }

              goto LABEL_91;
            case 3uLL:
              goto LABEL_76;
            default:
              v120 = BYTE6(v23);
              goto LABEL_75;
          }
        }

        v56 = sub_1B21175E8();
        goto LABEL_78;
      case 4:
        if (v25 != 4 || (v23 | *&v24) != 0)
        {
          goto LABEL_84;
        }

        v49 = sub_1B2111664();
        sub_1B2113A44(v49, v50, 4);
        v51 = sub_1B2111670();
        sub_1B2113A44(v51, v52, v53);
        v54 = sub_1B2111664();
        sub_1B2113A44(v54, v55, 4);
        v56 = sub_1B2111670();
        goto LABEL_78;
      default:
        if (v25)
        {
          if (v25 != 1)
          {
            goto LABEL_84;
          }

          v36 = sub_1B2111664();
          v38 = sub_1B21161DC(v36, v37, 0);
          sub_1B2113A44(v38, v39, 1);
          v40 = sub_1B2111664();
          v42 = sub_1B21161DC(v40, v41, 0);
          sub_1B2113A44(v42, v43, 1);
          v44 = trunc(v24);
          v47 = v24 > -9.22337204e18 && v24 < 9.22337204e18 && v44 == v24 && *&v33 == v24;
        }

        else
        {
          v79 = sub_1B2111664();
          v81 = sub_1B21161DC(v79, v80, 0);
          sub_1B2113A44(v81, v82, 0);
          v83 = sub_1B2111664();
          v85 = sub_1B21161DC(v83, v84, 0);
          sub_1B2113A44(v85, v86, 0);
          v47 = *&v33 == *&v24;
        }

        goto LABEL_65;
    }
  }
}

unint64_t PersistenceError.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  type metadata accessor for Row();
  v4 = sub_1B2113B28();
  v5 = sub_1B2224EAC(v4);
  Row.__allocating_init(_:)(v5);
  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v1, v2);
  MEMORY[0x1B2741EB0](8250, 0xE200000000000000);
  v6 = Row.description.getter();
  MEMORY[0x1B2741EB0](v6);

  return 0xD000000000000017;
}

void MutablePersistableRecord.performInsert(_:)()
{
  sub_1B2111640();
  v2 = v1;
  v4 = v3;
  v22[1] = v5;
  sub_1B21115E0();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = *(v7 + 16);
  sub_1B212CF80();
  v14();
  sub_1B212DF24();
  swift_getDynamicType();
  (*(v7 + 8))(v13, v4);
  (*(v2 + 24))(v23, v4, v2);
  v15 = LOBYTE(v23[0]);
  type metadata accessor for DAO();
  sub_1B212CF80();
  v14();

  v16 = sub_1B2143004();
  if (!v0)
  {
    v17 = v16;
    LOBYTE(v23[0]) = v15;
    sub_1B21454D4(v23);
    v23[0] = 0;
    v23[1] = 0;
    v24.value.values._rawValue = v23;
    Statement.execute(arguments:)(v24);
    if (v18)
    {

LABEL_6:

      goto LABEL_7;
    }

    if (v15 == 3)
    {
      goto LABEL_6;
    }

    v19 = Database.lastInsertedRowID.getter();
    if (*(v17 + 72))
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = *(v17 + 56);
      v21 = *(v17 + 64);
    }

    (*(v2 + 32))(v19, v20, v21, v4, v2);
  }

LABEL_7:
  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.inserted(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2122590(a1, a2);
  v7 = v6;
  (*(v8 + 16))(v3, v9, v2);
  v10 = *(v5 + 40);
  v11 = sub_1B2117268();
  result = v12(v11);
  if (v4)
  {
    return (*(v7 + 8))(v3, v2);
  }

  return result;
}

void MutablePersistableRecord.performUpdate(_:columns:)()
{
  sub_1B2111640();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1B21115E0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1B2111844();
  v14 = v13 - v12;
  type metadata accessor for DAO();
  (*(v8 + 16))(v14, v2, v6);

  sub_1B2143004();
  if (!v1)
  {
    swift_getDynamicType();
    (*(v4 + 24))(v17, v6, v4);
    sub_1B21D2610();
    if (v15)
    {
      v17[0] = 0;
      v17[1] = 0;
      sub_1B21225BC();
      Statement.execute(arguments:)(v18);
      if (!v16 && !Database.changesCount.getter())
      {
        sub_1B21D2410();
        swift_willThrow();
      }
    }

    else
    {
      sub_1B21D2410();
      swift_willThrow();
    }
  }

  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.update<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v14[2] = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  KeyPath = swift_getKeyPath();
  v11 = sub_1B2150D28(sub_1B21D6D34, v14, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v10);

  v12 = sub_1B2140648(v11);
  (*(a5 + 48))(a1, v12, a3, a5);
  return sub_1B21325B0();
}

uint64_t sub_1B21D47EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 32);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v7(AssociatedTypeWitness, v6);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t MutablePersistableRecord.update<A>(_:columns:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1B21115E0();
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1B2111844();
  v12 = sub_1B212D048(v11);
  v13(v12);
  v14 = sub_1B2252820();
  (*(a5 + 48))(a1, v14, a3, a5);
  return sub_1B21325B0();
}

uint64_t MutablePersistableRecord.update(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getDynamicType();
  v6 = (*(*(a3 + 16) + 8))(a2);
  v8 = Database.columns(in:)(v6, v7);
  if (!v3)
  {
    v9 = v8;

    v10 = *(v9 + 16);
    if (v10)
    {
      v22 = a3;
      v23 = MEMORY[0x1E69E7CC0];
      sub_1B2122CE8();
      sub_1B2116B10();
      v11 = v23;
      v12 = (v9 + 64);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v16 = *(v23 + 16);
        v15 = *(v23 + 24);

        if (v16 >= v15 >> 1)
        {
          sub_1B2116B10();
        }

        *(v23 + 16) = v16 + 1;
        v17 = v23 + 16 * v16;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v12 += 11;
        --v10;
      }

      while (v10);

      a3 = v22;
    }

    else
    {

      v11 = MEMORY[0x1E69E7CC0];
    }

    sub_1B2140648(v11);
    v18 = *(a3 + 48);
    v19 = sub_1B21D810C();
    v20(v19);
  }
}

uint64_t MutablePersistableRecord.updateChanges<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_1B21115E0();
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1B2111844();
  v18 = sub_1B212D048(v17);
  v19(v18);
  v20 = *(a6 + 8);
  v21 = *(a6 + 16);

  sub_1B2143368(v22, v7, a4, v20, v21);
  if (!v8)
  {
    v24[0] = v24[1];
    LOBYTE(a5) = sub_1B21D4C3C(a1, v24, a3, a5);
  }

  return a5 & 1;
}

uint64_t sub_1B21D4C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = v14[1];
  (*(v17 + 16))(v13, v7);
  v18 = *(a4 + 8);
  v19 = *(a4 + 16);

  sub_1B2143368(v20, v13, a3, v18, v19);
  if (!v6)
  {
    v30[0] = a1;
    v30[1] = v7;
    v31 = a3;
    v32 = a4;
    v33 = 0;
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    *(v21 + 32) = 0;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v40 = MEMORY[0x1E69E7CD0];
    while (1)
    {
      sub_1B21903D4(v21, v15, v16, &v34);
      v22 = v35;
      if (!v35)
      {
        break;
      }

      v23 = v34;
      v25 = v36;
      v24 = v37;
      v26 = v38;

      sub_1B2113A20(v25, v24, v26);
      sub_1B2113A44(v25, v24, v26);
      sub_1B2139304();
      sub_1B21906DC(v23, v22, v25, v24, v26);
    }

    v27 = *(v40 + 16);
    LOBYTE(v6) = v27 != 0;
    if (v27 && (v28 = v33, (*(v32 + 48))(v30[0], v40, v31), v28))
    {
    }

    else
    {
    }
  }

  return v6 & 1;
}

void MutablePersistableRecord.updateChanges(_:with:)()
{
  sub_1B2111640();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B21115E0();
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1B2111844();
  v16 = sub_1B212D048(v15);
  v18(v16, v0, v17);
  v19 = *(v5 + 8);
  v20 = *(v5 + 16);

  sub_1B2143368(v21, v2, v7, v19, v20);
  if (!v3)
  {
    v9(v0);
    sub_1B21D4C3C(v11, &v22, v7, v5);
  }

  sub_1B2112FDC();
}

void MutablePersistableRecord.performSave(_:)()
{
  sub_1B2111640();
  sub_1B2146B10();
  sub_1B21115E0();
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1B2111844();
  sub_1B21D54E8();
  if (!v0)
  {
    if (v5)
    {
      sub_1B211314C();
      sub_1B21225BC();
      MutablePersistableRecord.update(_:)(v6, v7, v8);
    }

    else
    {
      v9 = *(v1 + 40);
      sub_1B21225BC();
      sub_1B211314C();
      v10();
    }
  }

  sub_1B2112FDC();
}

uint64_t MutablePersistableRecord.saved(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B2122590(a1, a2);
  v7 = v6;
  (*(v8 + 16))(v3, v9, v2);
  v10 = *(v5 + 56);
  v11 = sub_1B2117268();
  result = v12(v11);
  if (v4)
  {
    return (*(v7 + 8))(v3, v2);
  }

  return result;
}

uint64_t MutablePersistableRecord.performExists(_:)()
{
  sub_1B2117A7C();
  sub_1B21115E0();
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1B2111844();
  type metadata accessor for DAO();
  v4 = sub_1B213CF48();
  v5(v4);

  sub_1B2143004();
  if (!v0)
  {
    sub_1B21D5BBC();
    v8 = v7;

    if (v8 && (type metadata accessor for Row(), v13 = 0uLL, v12 = 0, memset(v11, 0, sizeof(v11)), v10 = static Row.fetchOne(_:arguments:adapter:)(v8, &v13, v11), sub_1B212AC5C(v11, &qword_1EB7A1370, &unk_1B2257580), , v10))
    {

      v6 = 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

void sub_1B21D54E8()
{
  sub_1B2111640();
  v5 = v4;
  sub_1B2117A7C();
  sub_1B21115E0();
  v59 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1B2111844();
  sub_1B212D870();
  v10 = *(v5 + 16);
  (*(v10 + 8))(v2, v10);
  Database.primaryKey(_:)();
  if (v1)
  {

LABEL_4:
    sub_1B21440EC();
    sub_1B2112FDC();
    return;
  }

  v56 = v66;
  (*(v59 + 16))(v3, v0, v2);
  v11 = *(v5 + 8);

  sub_1B2143368(v12, v3, v2, v11, v10);
  v13 = v65;
  v57 = v66;
  v58 = v65;
  if (v67)
  {
    if (v67 == 1)
    {
      v14 = v65;
    }

    else
    {
      v14 = &unk_1F2969030;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_1B22546B0;
    *(v14 + 4) = v13;
    *(v14 + 5) = v56;
  }

  v15 = *(v14 + 2);
  if (v15)
  {
    v70 = MEMORY[0x1E69E7CC0];
    v16 = sub_1B21143E4();
    sub_1B216EB80(v16, v17, v18);
    v19 = v70;
    v20 = (v14 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v63 = v58;
      v64 = v57;
      swift_bridgeObjectRetain_n();
      sub_1B219020C();
      v23 = v68;
      if (v68)
      {
        v24 = v69;
        sub_1B21139A0(&v65, v68);
        (*(v24 + 24))(&v61, v23, v24);
        v60 = v61;
        v25 = v62;
        sub_1B2113208(&v65);
      }

      else
      {
        sub_1B212AC5C(&v65, &qword_1EB7A0E30, &unk_1B2259360);

        v60 = 0u;
        v25 = 4;
      }

      v27 = *(v70 + 16);
      v26 = *(v70 + 24);
      if (v27 >= v26 >> 1)
      {
        v29 = sub_1B211D6A0(v26);
        sub_1B216EB80(v29, v27 + 1, 1);
      }

      *(v70 + 16) = v27 + 1;
      v28 = v70 + 40 * v27;
      *(v28 + 32) = v21;
      *(v28 + 40) = v22;
      *(v28 + 48) = v60;
      *(v28 + 64) = v25;
      v20 += 2;
      --v15;
    }

    while (v15);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  v30 = sub_1B21962F4(v19);
  v31 = *(v30 + 64);
  v32 = *(v30 + 32);
  sub_1B21115A0();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;

  v38 = 0;
  if (v35)
  {
    while (1)
    {
      v39 = v38;
LABEL_25:
      v40 = __clz(__rbit64(v35)) | (v39 << 6);
      v41 = *(*(v30 + 48) + 16 * v40 + 8);
      v42 = *(v30 + 56) + 24 * v40;
      v43 = *(v42 + 16);
      v44 = *(v42 + 8) | *v42;
      if (v43 != 4 || v44 != 0)
      {
        break;
      }

      v35 &= v35 - 1;

      v46 = sub_1B2111670();
      sub_1B2113A20(v46, v47, v48);

      v49 = sub_1B2111670();
      sub_1B2113A44(v49, v50, v51);
      v38 = v39;
      if (!v35)
      {
        goto LABEL_22;
      }
    }

    v52 = sub_1B2112F9C();
    sub_1B2113A20(v52, v53, v43);

    v54 = sub_1B2112F9C();
    sub_1B2113A44(v54, v55, v43);
    goto LABEL_4;
  }

LABEL_22:
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v39 >= v37)
    {

      goto LABEL_4;
    }

    v35 = *(v30 + 64 + 8 * v39);
    ++v38;
    if (v35)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_1B21D592C()
{
  sub_1B2111640();
  sub_1B211F39C();
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = &unk_1F2969090;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v2;
  }

  if (*(v4 + 2))
  {
    sub_1B2116A84();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B21143E4();
    sub_1B2114114();
    v5 = v27;
    while (*(v4 + 2))
    {
      sub_1B2149824();
      sub_1B21D5FC0(&v25, v24, v26);

      v7 = sub_1B211409C();
      if (v8)
      {
        sub_1B211D6A0(v6);
        v23 = v10;
        sub_1B2114114();
        v7 = v23;
        v5 = v27;
      }

      sub_1B211ADF0(v7);
      if (v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B2116A84();
    v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v11 = (v5 + 48);
    v12 = *(v5 + 16) + 1;
    while (v12 != 1)
    {
      if (*v11 == 4)
      {
        sub_1B211E500();
        if (!v13)
        {
          continue;
        }
      }

      sub_1B21262E4();
      sub_1B213CE48();
      v14 = sub_1B212D5CC();
      sub_1B21D65AC(v14, v15, v4, 23, v16);

      v17 = sub_1B21D810C();
      sub_1B212DAFC(v17, v18);
      if (!v0)
      {
        sub_1B2115F1C();

        MEMORY[0x1EEE9AC00](v19);
        sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
        sub_1B2115810();
        sub_1B211AB74(v20, &qword_1EB7A10C0, &unk_1B2257E70);
        swift_getKeyPath();

        v21 = sub_1B21506CC(v5);
        sub_1B21325B0();

        v26[0] = v21;
        v26[1] = MEMORY[0x1E69E7CC8];
        v22.values._rawValue = v26;
        Statement.setUncheckedArguments(_:)(v22);
      }

      break;
    }

    sub_1B21440EC();
    sub_1B2112FDC();
  }
}

void sub_1B21D5BBC()
{
  sub_1B2111640();
  sub_1B211F39C();
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = &unk_1F29690C0;
    }
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
    sub_1B2113B74();
    v4 = swift_allocObject();
    v4[1] = xmmword_1B22546B0;
    *(v4 + 4) = v3;
    *(v4 + 5) = v2;
  }

  if (*(v4 + 2))
  {
    sub_1B2116A84();
    v27 = MEMORY[0x1E69E7CC0];
    sub_1B21143E4();
    sub_1B2114114();
    v5 = v27;
    while (*(v4 + 2))
    {
      sub_1B2149824();
      sub_1B21D5FC0(&v25, v24, v26);

      v7 = sub_1B211409C();
      if (v8)
      {
        sub_1B211D6A0(v6);
        v23 = v10;
        sub_1B2114114();
        v7 = v23;
        v5 = v27;
      }

      sub_1B211ADF0(v7);
      if (v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1B2116A84();
    v5 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v11 = (v5 + 48);
    v12 = *(v5 + 16) + 1;
    while (v12 != 1)
    {
      if (*v11 == 4)
      {
        sub_1B211E500();
        if (!v13)
        {
          continue;
        }
      }

      sub_1B21262E4();
      v14 = sub_1B212D5CC();
      sub_1B21D65AC(v14, v15, v4, 25, v16);

      v17 = sub_1B21D810C();
      sub_1B212DAFC(v17, v18);
      if (!v0)
      {
        sub_1B2115F1C();

        MEMORY[0x1EEE9AC00](v19);
        sub_1B21619D8(&qword_1EB7A10C0, &unk_1B2257E70);
        sub_1B2115810();
        sub_1B211AB74(v20, &qword_1EB7A10C0, &unk_1B2257E70);
        swift_getKeyPath();

        v21 = sub_1B21506CC(v5);
        sub_1B21325B0();

        v26[0] = v21;
        v26[1] = MEMORY[0x1E69E7CC8];
        v22.values._rawValue = v26;
        Statement.setUncheckedArguments(_:)(v22);
      }

      break;
    }

    sub_1B21440EC();
    sub_1B2112FDC();
  }
}

uint64_t MutablePersistableRecord<>.updateChanges(_:with:)(uint64_t a1, void (*a2)(uint64_t), char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v17 = v7;
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);

  swift_unknownObjectRetain();
  sub_1B2143368(a1, &v17, a4, v13, v14);
  if (!v6)
  {
    a2(v7);
    v17 = v7;
    a3 = sub_1B21D4C3C(a1, &v16, a4, a5);
  }

  return a3 & 1;
}

uint64_t sub_1B21D5FC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v15 = *(a2 + 24);
  sub_1B219020C();
  if (v17)
  {
    v6 = v18;
    sub_1B21139A0(v16, v17);
    v7 = *(v6 + 24);
    v8 = sub_1B2112F9C();
    v9(v8);
    v10 = v14;
    result = sub_1B2113208(v16);
    v12 = v13;
  }

  else
  {
    result = sub_1B212AC5C(v16, &qword_1EB7A0E30, &unk_1B2259360);
    v12 = 0uLL;
    v10 = 4;
  }

  *a3 = v12;
  *(a3 + 16) = v10;
  return result;
}

uint64_t sub_1B21D609C()
{
  v1 = v0[1];
  v42 = *v0;
  v43 = v1;
  v44 = *(v0 + 4);
  if (qword_1ED85D4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B2117D3C();
  sub_1B221E37C(v2, v3);
  v5 = v4;

  v6 = sub_1B21C9050(&v42, v5);
  v8 = v7;

  if (!v8)
  {
    v9 = *(&v43 + 1);
    v10 = *(*(&v43 + 1) + 16);
    if (v10)
    {
      v39 = MEMORY[0x1E69E7CC0];
      sub_1B2116B10();
      v11 = (v9 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;

        MEMORY[0x1B2741EB0](v12, v13);
        sub_1B2122C5C();
        sub_1B21233A4();

        v15 = *(v39 + 16);
        v14 = *(v39 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1B211156C(v14);
          sub_1B2116B10();
        }

        *(v39 + 16) = v15 + 1;
        v16 = v39 + 16 * v15;
        *(v16 + 32) = 34;
        *(v16 + 40) = 0xE100000000000000;
        v11 += 2;
        --v10;
      }

      while (v10);
    }

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B21151BC();
    sub_1B211AB74(v17, &qword_1EB7A0DA0, &qword_1B2254340);
    v18 = sub_1B2252250();
    v20 = v19;

    v21 = v44;
    v22 = *(v44 + 16);
    if (v22)
    {
      v38 = v18;
      v40 = MEMORY[0x1E69E7CC0];
      sub_1B212CE88();
      sub_1B2116B10();
      v23 = (v21 + 40);
      do
      {
        v24 = *(v23 - 1);
        v25 = *v23;

        MEMORY[0x1B2741EB0](v24, v25);
        sub_1B2122C5C();
        sub_1B21233A4();

        v27 = *(v40 + 16);
        v26 = *(v40 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1B211156C(v26);
          sub_1B2116B10();
        }

        *(v40 + 16) = v27 + 1;
        v28 = v40 + 16 * v27;
        *(v28 + 32) = 34;
        *(v28 + 40) = 0xE100000000000000;
        v23 += 2;
        --v22;
      }

      while (v22);
      v18 = v38;
    }

    sub_1B2252250();

    v29 = v42;
    if (v42 == 1)
    {
      sub_1B2252CD0();

      v41 = 0x20455441445055;
      v30 = *(&v42 + 1);
      v31 = v43;
    }

    else
    {
      sub_1B2252CD0();

      v41 = 0x4F20455441445055;
      v32 = 0xE800000000000000;
      result = sub_1B21D8124();
      switch(v29)
      {
        case 1:
          __break(1u);
          return result;
        case 2:
          v32 = 0xE400000000000000;
          result = 1279869254;
          goto LABEL_21;
        case 3:
          v32 = 0xE600000000000000;
          result = 0x45524F4E4749;
          goto LABEL_21;
        case 4:
          v32 = 0xE700000000000000;
          result = sub_1B21260C0();
          goto LABEL_21;
        default:
LABEL_21:
          MEMORY[0x1B2741EB0](result, v32);

          MEMORY[0x1B2741EB0](32, 0xE100000000000000);
          v30 = *(&v42 + 1);
          v31 = v43;
          break;
      }
    }

    MEMORY[0x1B2741EB0](v30, v31);
    sub_1B2122C5C();
    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    MEMORY[0x1B2741EB0](0x2054455320, 0xE500000000000000);
    MEMORY[0x1B2741EB0](v18, v20);

    v34 = sub_1B2115828();
    MEMORY[0x1B2741EB0](v34, 0xE700000000000000);
    v35 = sub_1B21146D8();
    MEMORY[0x1B2741EB0](v35);

    v6 = v41;

    v36 = sub_1B2117D3C();
    sub_1B221E37C(v36, v37);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1B21AC070();
    sub_1B221E3B8();
  }

  return v6;
}

uint64_t sub_1B21D65AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a2;
  v7 = a1;
  v8 = *(a3 + 16);
  if (v8)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1B212CE88();
    sub_1B2116B10();
    v10 = v26;
    v11 = (a3 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      MEMORY[0x1B2741EB0](v12, v13);
      sub_1B2122C5C();
      MEMORY[0x1B2741EB0](16189, 0xE200000000000000);

      v25 = v10;
      v14 = *(v10 + 16);
      if (v14 >= *(v10 + 24) >> 1)
      {
        sub_1B2116B10();
      }

      *(v10 + 16) = v14 + 1;
      v15 = v10 + 16 * v14;
      *(v15 + 32) = 34;
      *(v15 + 40) = 0xE100000000000000;
      v11 += 2;
      --v8;
    }

    while (v8);
    v7 = a1;
    v6 = a2;
    v5 = a5;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B21151BC();
  sub_1B211AB74(v16, &qword_1EB7A0DA0, &qword_1B2254340);
  v17 = sub_1B2252250();
  v19 = v18;

  sub_1B211A2CC();
  sub_1B2252CD0();

  sub_1B21131A0();
  MEMORY[0x1B2741EB0](v7, v6);
  sub_1B2122C5C();
  MEMORY[0x1B2741EB0](v25);

  v20 = sub_1B2115828();
  MEMORY[0x1B2741EB0](v20, 0xE700000000000000);
  MEMORY[0x1B2741EB0](v17, v19);

  return v5;
}

uint64_t sub_1B21D67C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  *a3 = *a1;
  *(a3 + 8) = v4;
  v13 = *(a2 + 24);

  sub_1B219020C();
  v5 = v15;
  if (v15)
  {
    v6 = v16;
    sub_1B21139A0(v14, v15);
    (*(v6 + 24))(&v11, v5, v6);
    v10 = v11;
    v7 = v12;
    result = sub_1B2113208(v14);
    v9 = v10;
  }

  else
  {
    result = sub_1B212AC5C(v14, &qword_1EB7A0E30, &unk_1B2259360);
    v9 = 0uLL;
    v7 = 4;
  }

  *(a3 + 16) = v9;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1B21D68B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((sub_1B21AAB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v8 = v2 == v5 && v3 == v6;
  if (!v8 && (sub_1B22531F0() & 1) == 0)
  {
    return 0;
  }

  return sub_1B21B8000(v4, v7);
}

void sub_1B21D6958(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v1;
  sub_1B2145DB0();
  sub_1B2252370();

  sub_1B2145E84(a1, v5);
}

uint64_t sub_1B21D69C0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = *v0;
  sub_1B2253420();
  sub_1B2145DB0();
  sub_1B2252370();
  sub_1B2145E84(v6, v3);
  return sub_1B2253470();
}

uint64_t sub_1B21D6A3C()
{
  v1 = *(v0 + 8);
  v3[72] = *v0;
  v4 = v1;
  v5 = *(v0 + 16);
  sub_1B2253420();
  sub_1B21D6958(v3);
  return sub_1B2253470();
}

uint64_t sub_1B21D6A98(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if ((sub_1B21AAB68(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    sub_1B2112F9C();
    if ((sub_1B22531F0() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1B21B8000(v5, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1B21B8000(v4, v8);
}

void sub_1B21D6B54(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = *v1;
  sub_1B2145DB0();
  sub_1B2252370();
  sub_1B2145E84(a1, v5);

  sub_1B2145E84(a1, v6);
}

uint64_t sub_1B21D6BC8()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *v0;
  sub_1B2253420();
  sub_1B2145DB0();
  sub_1B2252370();
  sub_1B2145E84(v7, v3);
  sub_1B2145E84(v7, v4);
  return sub_1B2253470();
}

uint64_t sub_1B21D6C58()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = v1;
  v6 = *(v0 + 16);
  v7 = v2;
  sub_1B2253420();
  sub_1B21D6B54(v4);
  return sub_1B2253470();
}

uint64_t sub_1B21D6CBC()
{
  sub_1B21D7F7C();
  v0 = sub_1B2252190();
  sub_1B21619D8(&qword_1EB7A2328, &qword_1B225D988);
  swift_allocObject();
  result = sub_1B21537C8(v0);
  qword_1ED85D4D8 = result;
  return result;
}

unint64_t sub_1B21D6D60(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1B2148CEC(0, v5, v6);
    sub_1B21D7D74(v6, v5, v3, a2);
    sub_1B2113B28();
  }

  else
  {
    v9 = swift_slowAlloc();
    sub_1B21D7F00(v9, v5, sub_1B21D8000);
    sub_1B2113B28();

    sub_1B2112AE8();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1B21D6EE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v45[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v45[0] = a1;
    v3 = *(a1 + 16);
    v43 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v42 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v43 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_1B2253420();

      sub_1B212CF80();
      sub_1B2252370();
      v10 = sub_1B2253470();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v42;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16)
        {
          break;
        }

        sub_1B21D8118();
        if (sub_1B22531F0())
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v45[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v37 = swift_slowAlloc();
          sub_1B21D772C(v37, v20, (v2 + 56), v20, v2, v12, v45);
          sub_1B2113B28();

          sub_1B2112AE8();

          v2 = v12;
          goto LABEL_35;
        }
      }

      v38[0] = v20;
      v38[1] = v38;
      MEMORY[0x1EEE9AC00](v18);
      v22 = v38 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v40 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v44;
      v42 = *(v44 + 16);
      v20 = v17;
      while (1)
      {
        v39 = v24;
        v41 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v42)
          {
            v2 = sub_1B21D7B58(v40, v38[0], v39, v2);
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v43 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_1B2253420();

          sub_1B2252370();
          v27 = sub_1B2253470();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v44;
              v17 = v41;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_1B22531F0();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v40[v29];
          v40[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v44;
          v17 = v41;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v39 - 1;
        if (__OFSUB__(v39, 1))
        {
          break;
        }

        v17 = v20;
        if (v39 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_35:
  v35 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t getEnumTagSinglePayload for PersistenceConflictPolicy(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceConflictPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B21D7580(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  v26 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      return sub_1B21D7B58(v26, a2, v25, a3);
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_1B2253420();

    sub_1B2252370();
    v15 = sub_1B2253470();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = sub_1B22531F0();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = v26[v18];
    v26[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B21D772C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1B21D7580(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1B21D77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1B2117A7C();
      sub_1B21619D8(&qword_1EB7A22D0, &unk_1B225D340);
      v8 = sub_1B2252C90();
      v9 = v8;
      if (v4 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        v18 = *(v9 + 40);
        v19 = sub_1B2253410() & ~(-1 << *(v9 + 32));
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          sub_1B2114850();
          while (++v20 != v22 || (v21 & 1) == 0)
          {
            v23 = v20 == v22;
            if (v20 == v22)
            {
              v20 = 0;
            }

            v21 |= v23;
            if (*(v12 + 8 * v20) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v12 + v24) |= v25;
        *(*(v9 + 48) + 8 * v26) = v17;
        ++*(v9 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v14;
        if (v5[v11])
        {
          sub_1B211667C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

void sub_1B21D795C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  if (a3)
  {
    v7 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_1B2117A7C();
      sub_1B21619D8(&qword_1EB7A2340, qword_1B225D9B0);
      v8 = sub_1B2252C90();
      v9 = v8;
      if (v4 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v5;
      }

      v11 = 0;
      v12 = v8 + 56;
      v32 = v6;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v17 = (*(v6 + 48) + 32 * (v13 | (v11 << 6)));
        v18 = *v17;
        v19 = v17[1];
        v20 = v17[3];
        v33 = v17[2];
        v21 = *(v9 + 40);
        sub_1B2253420();

        sub_1B2252370();
        v22 = sub_1B2253470() & ~(-1 << *(v9 + 32));
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          sub_1B2114850();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v12 + 8 * v23) != -1)
            {
              sub_1B2118398();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        sub_1B2112110();
LABEL_25:
        sub_1B2111AE8();
        *(v12 + v27) |= v28;
        v30 = (*(v9 + 48) + 32 * v29);
        *v30 = v18;
        v30[1] = v19;
        v30[2] = v33;
        v30[3] = v20;
        ++*(v9 + 16);
        if (__OFSUB__(v7--, 1))
        {
          goto LABEL_30;
        }

        v6 = v32;
        if (!v7)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= v4)
        {
          goto LABEL_5;
        }

        ++v14;
        if (v5[v11])
        {
          sub_1B211667C();
          v10 = v16 & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1B21D7B58(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1B21619D8(&qword_1EB7A22C0, &unk_1B225D990);
  result = sub_1B2252C90();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1B2253420();

    sub_1B2252370();
    result = sub_1B2253470();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1B21D7D74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v25 = *(a3 + 16);
  v23 = result;
  v24 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v22 = v5;
LABEL_3:
    if (v6 == v25)
    {
      goto LABEL_19;
    }

    if (v6 >= v25)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v24 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v26 = v6 + 1;
    v11 = *(a4 + 40);
    sub_1B2253420();

    sub_1B2252370();
    v12 = sub_1B2253470();
    v13 = ~(-1 << *(a4 + 32));
    do
    {
      v14 = v12 & v13;
      v15 = (v12 & v13) >> 6;
      v16 = 1 << (v12 & v13);
      if ((v16 & *(v7 + 8 * v15)) == 0)
      {

        v6 = v26;
        goto LABEL_3;
      }

      v17 = (*(a4 + 48) + 16 * v14);
      if (*v17 == v10 && v17[1] == v9)
      {
        break;
      }

      v19 = sub_1B22531F0();
      v12 = v14 + 1;
    }

    while ((v19 & 1) == 0);

    v20 = v23[v15];
    v23[v15] = v20 | v16;
    v6 = v26;
    if ((v20 & v16) != 0)
    {
      goto LABEL_3;
    }

    v5 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_19:

      return sub_1B21D7B58(v23, a2, v22, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_1B21D7F00(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t sub_1B21D7F7C()
{
  result = qword_1ED85D1F0;
  if (!qword_1ED85D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D1F0);
  }

  return result;
}

uint64_t sub_1B21D7FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1B21D7D74(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_1B21D801C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21D805C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1B21D80B8()
{
  result = qword_1ED85D1E8;
  if (!qword_1ED85D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED85D1E8);
  }

  return result;
}

uint64_t *sub_1B21D8138(uint64_t a1)
{
  ppSnapshot[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  ppSnapshot[0] = 0;
  swift_beginAccess();
  v4 = sqlite3_snapshot_get(*(a1 + 16), "main", ppSnapshot);

  if (v4 || !ppSnapshot[0])
  {
    swift_deallocPartialClassInstance();
    v1 = 0;
  }

  else
  {
    v1[2] = ppSnapshot[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t sub_1B21D8224()
{
  sqlite3_snapshot_free(*(v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1B21D8280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B2122784(a6, v14);
  sub_1B21619D8(&qword_1EB7A0F70, &qword_1B2257590);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B22546B0;
  __src[0] = a2;
  __src[1] = a3;
  __src[2] = a4;
  __src[3] = a5;
  sub_1B2114CC4(__src);
  memcpy((v11 + 32), __src, 0xB8uLL);
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v17 = v11;

  sub_1B2142B5C(v14, v15);
  v18 = 2;
  v12 = sub_1B21D83A0(a1, v15);
  sub_1B212AC5C(v15, &qword_1EB7A1C18, &qword_1B2259C90);
  return v12;
}

uint64_t sub_1B21D83A0(uint64_t a1, uint64_t a2)
{
  sub_1B2146A54(&v9);
  if (!v2)
  {
    sub_1B2122784(&v10, v8);
    sub_1B21619D8(qword_1EB7A2350, &unk_1B22604F0);
    swift_allocObject();

    v6 = sub_1B215A0E0(v4, 0, 0, v8);
    v11 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    if (*(v6 + 24) == 1)
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v7 = *(v6 + 16);

      sub_1B222FE44(v7, v6, &v11);
      *(v6 + 24) = 1;

      a2 = v11;
    }

    sub_1B2142D18(&v9);
  }

  return a2;
}

uint64_t FTS3.Diacritics.hashValue.getter()
{
  v1 = *v0;
  sub_1B2253420();
  MEMORY[0x1B2742F10](v1);
  return sub_1B2253470();
}

GRDBInternal::FTS3 __swiftcall FTS3.init()()
{
  *v0 = 863204454;
  v0[1] = 0xE400000000000000;
  return result;
}

uint64_t static FTS3.tokenize(_:withTokenizer:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for Configuration();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a3;
  *v10 = 1;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 23) = 0;
  *(v10 + 4) = MEMORY[0x1E69E7CC0];
  *(v10 + 20) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  v10[64] = 2;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  v10[88] = -1;
  *(v10 + 12) = 5;
  v12 = &v10[v7[18]];
  sub_1B2252110();
  *&v10[v7[19]] = 0;
  *&v10[v7[20]] = 0;
  v10[v7[21]] = 1;
  v10[v7[22]] = 0;
  v13 = &v10[v7[23]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v10[v7[24]];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v10[v7[25]];
  type metadata accessor for DatabaseQueue();
  *v15 = 0;
  v15[1] = 0;
  swift_allocObject();
  v16 = DatabaseQueue.init(configuration:)(v10);
  v21 = v11;
  v22 = *(a3 + 1);
  v23 = a1;
  v24 = a2;
  v17 = v16[2];
  v18 = sub_1B21FB5C4();

  return v18;
}

uint64_t sub_1B21D8738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a7;

  sub_1B214400C();
  v11 = v10;
  v12 = *(v10 + 16);
  if (v12 >= *(v10 + 24) >> 1)
  {
    sub_1B214400C();
    v11 = v31;
  }

  *(v11 + 16) = v12 + 1;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = a2;
  *(v13 + 40) = a3;
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = (a4 + 40);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      *&v35[0] = 34;
      *(&v35[0] + 1) = 0xE100000000000000;

      MEMORY[0x1B2741EB0](v17, v16);

      MEMORY[0x1B2741EB0](34, 0xE100000000000000);
      v18 = v35[0];
      v19 = *(v11 + 16);
      if (v19 >= *(v11 + 24) >> 1)
      {
        sub_1B214400C();
        v11 = v20;
      }

      *(v11 + 16) = v19 + 1;
      *(v11 + 16 * v19 + 32) = v18;
      v15 += 2;
      --v14;
    }

    while (v14);
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v21 = sub_1B2252250();
  v23 = v22;

  sub_1B2252CD0();

  MEMORY[0x1B2741EB0](v21, v23);

  MEMORY[0x1B2741EB0](41, 0xE100000000000000);
  v24._countAndFlagsBits = 0xD00000000000002FLL;
  v35[0] = MEMORY[0x1E69E7CC0];
  v25.values._rawValue = v35;
  v24._object = 0x80000001B226EB20;
  Database.execute(sql:arguments:)(v24, v25);

  if (v26)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1B21619D8(&qword_1EB7A0E28, &unk_1B2254540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B22546B0;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 32) = a5;
    *(inited + 40) = a6;

    sub_1B2112554(inited, v35);
    v28 = v35[0];
    v36 = 0;
    memset(v35, 0, sizeof(v35));
    v29 = sub_1B21D8280(a1, 0xD00000000000003ALL, 0x80000001B226EB70, v28, *(&v28 + 1), v35);
    sub_1B212AC5C(v35, &qword_1EB7A1370, &unk_1B2257580);

    *v37 = v29;
  }

  return result;
}

uint64_t FTS3.moduleName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void *FTS3.makeTableDefinition(configuration:)()
{
  type metadata accessor for FTS3TableDefinition();
  result = swift_allocObject();
  result[2] = MEMORY[0x1E69E7CC0];
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  return result;
}

uint64_t FTS3.moduleArguments(for:in:)(void *a1)
{
  swift_beginAccess();
  v2 = a1[2];
  swift_beginAccess();
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[3];
    v5 = a1[5];
    if (*(v5 + 16))
    {

      v6 = sub_1B21175F8();
      sub_1B21D911C(v6, v7);

      MEMORY[0x1B2741EB0](v4, v3);

      MEMORY[0x1B2741EB0](32, 0xE100000000000000);
      v8 = *(v5 + 16);
      if (v8)
      {
        v29 = v2;
        v30 = MEMORY[0x1E69E7CC0];
        sub_1B2116B10();
        v9 = (v5 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          MEMORY[0x1B2741EB0](v10, v11);
          MEMORY[0x1B2741EB0](34, 0xE100000000000000);

          v12 = *(v30 + 16);
          if (v12 >= *(v30 + 24) >> 1)
          {
            sub_1B2116B10();
          }

          *(v30 + 16) = v12 + 1;
          v13 = v30 + 16 * v12;
          *(v13 + 32) = 34;
          *(v13 + 40) = 0xE100000000000000;
          v9 += 2;
          --v8;
        }

        while (v8);
        sub_1B21C2654(v4, v3);
        v2 = v29;
      }

      else
      {
        v18 = sub_1B21175F8();
        sub_1B21C2654(v18, v19);
      }

      sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
      sub_1B215175C();
      v20 = sub_1B2252250();
      v22 = v21;

      MEMORY[0x1B2741EB0](v20, v22);
    }

    else
    {

      v14 = sub_1B21175F8();
      sub_1B21D911C(v14, v15);

      MEMORY[0x1B2741EB0](v4, v3);
      v16 = sub_1B21175F8();
      sub_1B21C2654(v16, v17);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = *(v2 + 16);
      sub_1B214400C();
      v2 = v27;
    }

    v23 = *(v2 + 16);
    if (v23 >= *(v2 + 24) >> 1)
    {
      sub_1B214400C();
      v2 = v28;
    }

    *(v2 + 16) = v23 + 1;
    v24 = v2 + 16 * v23;
    *(v24 + 32) = 0x657A696E656B6F74;
    *(v24 + 40) = 0xE90000000000003DLL;
  }

  else
  {
  }

  return v2;
}

void *sub_1B21D8E8C@<X0>(void *a1@<X8>)
{
  result = FTS3.makeTableDefinition(configuration:)();
  *a1 = result;
  return result;
}

uint64_t FTS3TableDefinition.tokenizer.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return sub_1B21D911C(v3, v4);
}

uint64_t FTS3TableDefinition.tokenizer.setter(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *(v1 + 3) = v7;
  v1[5] = v2;
  return sub_1B21C2654(v3, v4);
}

Swift::Void __swiftcall FTS3TableDefinition.column(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  swift_beginAccess();

  sub_1B21449A8();
  v4 = *(*(v1 + 16) + 16);
  sub_1B2144A08();
  v5 = *(v1 + 16);
  *(v5 + 16) = v4 + 1;
  v6 = v5 + 16 * v4;
  *(v6 + 32) = countAndFlagsBits;
  *(v6 + 40) = object;
  *(v1 + 16) = v5;
  swift_endAccess();
}

void *FTS3TableDefinition.deinit()
{
  v1 = v0[2];

  v2 = v0[5];
  sub_1B21C2654(v0[3], v0[4]);
  return v0;
}

uint64_t FTS3TableDefinition.__deallocating_deinit()
{
  FTS3TableDefinition.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B21D911C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1B21D9164()
{
  result = qword_1EB7A2348;
  if (!qword_1EB7A2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7A2348);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FTS3.Diacritics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B21D92BC@<X0>(uint64_t *__src@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 32);
  v7 = *__src;
  v6 = __src[1];
  memcpy(&v11[7], __src, 0xA2uLL);
  sub_1B21619D8(&qword_1EB7A0F50, &qword_1B2254C10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B22546B0;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = 0;
  v9 = *a2;
  *(v8 + 72) = a2[1];
  *(v8 + 56) = v9;
  *(v8 + 88) = v5;
  memcpy((v8 + 89), v11, 0xA9uLL);
  *(v8 + 258) = 0;
  *a3 = v8;
}

uint64_t JoinAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21D93E0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21D941C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21D9460(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = JoinAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21D94BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21D94F8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21D9534()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21D9588(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v36 = MEMORY[0x1E69E7CC0];
  result = sub_1B216ECE4(0, v6, 0);
  v28 = v5;
  v29 = v4;
  v26 = a1;
  v27 = a2;
  v30 = v6;
  if (v6)
  {
    v8 = (a2 + 40);
    v9 = (a1 + 40);
    v10 = v5;
    while (v4)
    {
      if (!v10)
      {
        goto LABEL_22;
      }

      v11 = *v9;
      v12 = *v8;
      v32 = *(v9 - 1);
      v33 = *(v8 - 1);
      v14 = *(v36 + 16);
      v13 = *(v36 + 24);
      v34 = v14 + 1;

      if (v14 >= v13 >> 1)
      {
        result = sub_1B216ECE4((v13 > 1), v34, 1);
      }

      *(v36 + 16) = v34;
      v15 = (v36 + 32 * v14);
      v15[4] = v32;
      v15[5] = v11;
      --v10;
      v15[6] = v33;
      v15[7] = v12;
      --v4;
      v8 += 2;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v30;
    v35 = 16 * v30;
    v17 = v26;
    for (i = v27; v29 != v16; i += 16)
    {
      if (v16 >= v29)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_24;
      }

      if (v28 == v16)
      {
        break;
      }

      if (v16 >= v28)
      {
        goto LABEL_25;
      }

      v31 = v16;
      v19 = *(v17 + v35 + 32);
      v20 = *(v17 + v35 + 40);
      v21 = *(i + v35 + 32);
      v22 = *(i + v35 + 40);
      v24 = *(v36 + 16);
      v23 = *(v36 + 24);

      if (v24 >= v23 >> 1)
      {
        result = sub_1B216ECE4((v23 > 1), v24 + 1, 1);
      }

      *(v36 + 16) = v24 + 1;
      v25 = (v36 + 32 * v24);
      v25[4] = v19;
      v25[5] = v20;
      v25[6] = v21;
      v25[7] = v22;
      v16 = v31 + 1;
      v17 += 16;
    }

    return v36;
  }

  return result;
}

uint64_t sub_1B21D9790(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  if (v5)
  {
    v6 = v3[5];
    if (v6)
    {
      if (*(v5 + 16) != *(v6 + 16))
      {
        goto LABEL_45;
      }

      return sub_1B21D9588(v3[4], v6);
    }
  }

  v8 = *v3;
  v7 = v3[1];
  v9 = Database.foreignKeys(on:)(*v3, v7);
  if (v2)
  {
    return a1;
  }

  v10 = v9;
  v70 = v3;
  v61 = v7;
  v60 = v8;
  v11 = 0;
  v65 = *(v9 + 16);
  v66 = v5;
  v12 = v9 + 56;
  v63 = MEMORY[0x1E69E7CC0];
  v62 = v9 + 56;
LABEL_7:
  for (i = (v12 + 32 * v11); ; i += 4)
  {
    if (v65 == v11)
    {

      v46 = v63[2];
      if (v46)
      {
        v47 = v63[6];
        a1 = v63[7];
        if (v46 != 1)
        {

          sub_1B2252CD0();

          sub_1B211583C();
          v67 = v57;
          v68 = v56;
          MEMORY[0x1B2741EB0](v60, v61);
          sub_1B21161F8();
          MEMORY[0x1B2741EB0](v70[2], v70[3]);
          goto LABEL_45;
        }

        v48 = v63[6];

LABEL_30:

        return a1;
      }

      v50 = v70;
      if (v66)
      {
        v51 = v70[3];
        Database.primaryKey(_:)(&v67, v70[2]);
        v52 = v67;
        if (v69)
        {
          if (v69 == 1)
          {
            v53 = v67;
          }

          else
          {
            v53 = &unk_1F2968E80;
          }
        }

        else
        {
          v54 = v68;
          sub_1B21619D8(&qword_1EB7A0F88, &unk_1B22546A0);
          v53 = swift_allocObject();
          v53[1] = xmmword_1B22546B0;
          *(v53 + 4) = v52;
          *(v53 + 5) = v54;
        }

        if (*(v66 + 16) == *(v53 + 2))
        {

          a1 = sub_1B21D9588(v55, v53);

          goto LABEL_30;
        }
      }

      v67 = 0;
      v68 = 0xE000000000000000;
      sub_1B2252CD0();

      sub_1B211583C();
      v67 = (v59 + 6);
      v68 = v58;
      MEMORY[0x1B2741EB0](v60, v61);
      sub_1B21161F8();
      MEMORY[0x1B2741EB0](v50[2], v50[3]);
      goto LABEL_45;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v14 = v10;
    v15 = *(i - 2);
    v64 = *(i - 3);
    v16 = *(i - 1);
    v17 = *i;
    v18 = v70[2];
    v19 = v70[3];
    v20 = sub_1B2252220();
    v22 = v21;
    if (v20 == sub_1B2252220() && v22 == v23)
    {
    }

    else
    {
      v25 = sub_1B22531F0();

      if ((v25 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if (!v66)
    {
      goto LABEL_48;
    }

    sub_1B21166B0();
    sub_1B2169104(v26, v27, v28);

    sub_1B21166B0();
    sub_1B216911C(v29, v30, v31);
    sub_1B2140704();
    v33 = v32;

    if (v33)
    {
LABEL_48:
      if (!v70[5])
      {
        goto LABEL_22;
      }

      sub_1B21166B0();
      sub_1B2169104(v34, v35, v36);

      sub_1B21166B0();
      sub_1B216911C(v37, v38, v39);
      sub_1B2140704();
      v41 = v40;

      if (v41)
      {
LABEL_22:
        v42 = v63;
        v67 = v63;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = v63[2];
          sub_1B216EC98();
          v42 = v67;
        }

        v10 = v14;
        v44 = v42[2];
        if (v44 >= v42[3] >> 1)
        {
          sub_1B216EC98();
          v42 = v67;
        }

        ++v11;
        v42[2] = v44 + 1;
        v63 = v42;
        v45 = &v42[4 * v44];
        v45[4] = v64;
        v45[5] = v15;
        v45[6] = v16;
        v45[7] = v17;
        v12 = v62;
        goto LABEL_7;
      }
    }

LABEL_21:

    ++v11;
    v10 = v14;
  }

  __break(1u);
LABEL_45:
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}

uint64_t sub_1B21D9D18(char a1, uint64_t a2)
{
  v9 = *(a2 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    if (v9)
    {
      sub_1B21151D4();
      v10 = v16;
      v11 = a2 + 56;
      do
      {
        sub_1B2117608();

        if (v6 >= v7 >> 1)
        {
          sub_1B2112B10();
          v10 = v16;
        }

        *(v10 + 16) = v3;
        v12 = (v10 + 32 * v6);
        v12[4] = v4;
        v12[5] = a2;
        v12[6] = v5;
        v12[7] = v2;
        v11 += 32;
        --v9;
      }

      while (v9);
    }
  }

  else if (v9)
  {
    sub_1B21151D4();
    v10 = v16;
    v13 = a2 + 56;
    do
    {
      sub_1B2117608();

      if (v6 >= v7 >> 1)
      {
        sub_1B2112B10();
        v10 = v16;
      }

      *(v10 + 16) = v3;
      v14 = (v10 + 32 * v6);
      v14[4] = v5;
      v14[5] = v2;
      v14[6] = v4;
      v14[7] = a2;
      v13 += 32;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1B21D9E14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = sub_1B2252220();
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t DatabaseBackupProgress.completedPageCount.getter()
{
  v1 = v0[1];
  result = v1 - *v0;
  if (__OFSUB__(v1, *v0))
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DatabaseBackupProgress(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for DatabaseBackupProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t TableAlias.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  return result;
}

_BYTE *sub_1B21D9F5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + 48);
  sub_1B2252220();
  if (!*(v7 + 16))
  {

LABEL_7:
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);

    v12 = v14;
    if (v13 < 0)
    {
      v12 = sub_1B21D9F5C(a1, a2);
      sub_1B211B418(v14, v13);
    }

    else
    {
      v15 = Database.columns(in:)(a1, a2);

      if (!v3)
      {
        v12 = *(v15 + 16);
      }
    }

    return v12;
  }

  v8 = sub_1B211E590();
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  memcpy(__dst, (*(v7 + 56) + 176 * v8), 0xABuLL);
  sub_1B21818BC(__dst, __src);
  v11 = sub_1B2139B70();
  if (__dst[0])
  {
    v12 = *(__dst[0] + 16);
  }

  else
  {
    memcpy(__src, &__dst[1], 0xA2uLL);
    sub_1B214CFE0(&__dst[1], v18);
    v12 = __src;
    v16 = sub_1B21E98EC(v11);
    if (v3)
    {
      memcpy(v18, __src, 0xA2uLL);
      sub_1B21DAF74(v18);

      sub_1B219A920(__dst);
      return v12;
    }

    v12 = v16;
    memcpy(v18, __src, 0xA2uLL);
    sub_1B21DAF74(v18);
  }

  sub_1B219A920(__dst);
  return v12;
}

uint64_t sub_1B21DA128@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B21DA160(a2 + 2, *a1, a1[1], a1 + 2);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B21DA160(void *a1, int a2, int a3, void *__src)
{
  memcpy(__dst, __src, 0xABuLL);
  v6 = sub_1B2252220();
  memcpy(a1, __src, 0xABuLL);
  sub_1B21818BC(__dst, &v8);
  return v6;
}

uint64_t sub_1B21DA1EC()
{
  type metadata accessor for StatementArgumentsSink();
  swift_allocObject();
  result = sub_1B2114D98(1);
  qword_1ED861900 = result;
  return result;
}

uint64_t TableAlias.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  return v2;
}

uint64_t sub_1B21DA240(uint64_t result)
{
  v2 = v1;
  if (v1 != result)
  {
    v3 = result;
    v5 = (v2 + 24);
    v4 = *(v2 + 24);
    v6 = *(v2 + 16);
    v8 = *(v2 + 32);
    v7 = *(v2 + 40);
    if (*(v2 + 48))
    {
      if (*(v2 + 48) == 1)
      {
        v9 = *(v2 + 40);

        if (v7)
        {
          v10 = sub_1B2111F44();
          sub_1B21DA5F0(v10, v11);
        }

        v12 = *(v2 + 16);
        v13 = *(v2 + 24);
        v14 = *(v2 + 32);
        v15 = *(v2 + 40);
        *(v2 + 16) = v3;
        *v5 = 0;
        *(v2 + 32) = 0;
        *(v2 + 40) = 0;
        v16 = *(v2 + 48);
        *(v2 + 48) = 2;

        v17 = v12;
        v18 = v13;
        v19 = v14;
        v20 = v15;
        v21 = v16;
      }

      else
      {
        v28 = *(v2 + 16);

        sub_1B21DA240(v3);
        v17 = sub_1B21183AC();
        v21 = 2;
      }
    }

    else
    {
      if (v4)
      {
        v22 = *(v2 + 24);

        sub_1B21DA5F0(v6, v4);
        v23 = sub_1B21183AC();
        sub_1B2142C9C(v23, v24, v25, v26, 0);
        v6 = *(v2 + 16);
        v27 = *(v2 + 24);
        v8 = *(v2 + 32);
        v7 = *(v2 + 40);
        LOBYTE(v4) = *(v2 + 48);
      }

      else
      {
        v27 = 0;
      }

      *(v2 + 16) = v3;
      *(v2 + 32) = 0;
      *(v2 + 40) = 0;
      *v5 = 0;
      *(v2 + 48) = 2;

      v17 = v6;
      v18 = v27;
      v19 = v8;
      v20 = v7;
      v21 = v4;
    }

    return sub_1B2142C9C(v17, v18, v19, v20, v21);
  }

  return result;
}

uint64_t sub_1B21DA3B0(uint64_t a1)
{
  v2 = v1;
  if (v1 == a1)
  {
  }

  else
  {
    v3 = sub_1B2138CF0();
    v4 = sub_1B2138CF0();
    v2 = v4;
    v5 = *(v3 + 24);
    v7 = *(v3 + 32);
    v6 = *(v3 + 40);
    v8 = *(v3 + 48);
    v10 = *(v4 + 32);
    v9 = *(v4 + 40);
    if (v8 == 1 && *(v4 + 48) == 1)
    {
      v26 = *(v3 + 16) == *(v4 + 16) && v5 == *(v4 + 24);
      v27 = *(v4 + 24);
      v28 = *(v4 + 16);
      v76 = *(v3 + 16);
      if (v26 || (v29 = *(v3 + 40), v30 = *(v3 + 16), v31 = sub_1B22531F0(), v6 = v29, (v31 & 1) != 0))
      {
        v32 = v9;
        if (!v6 || !v9 || (v7 == v10 ? (v33 = v6 == v9) : (v33 = 0), v33 || (v34 = v10, v35 = v6, v36 = sub_1B22531F0(), v6 = v35, v10 = v34, v32 = v9, (v36 & 1) != 0)))
        {
          sub_1B2112B34(v6);
          v37 = sub_1B2117630();
          sub_1B21DAEF8(v37, v38, v39, v32, 1);
          v40 = sub_1B21DA240(v2);
          sub_1B21151F8(v40, v41, v42, v43, v44, v45, v46, v47, v75, v76);
          sub_1B2142C9C(v28, v27, v10, v32, 1);

          return v2;
        }

        sub_1B2112B34(v6);
        v64 = sub_1B2117630();
        v67 = sub_1B21DAEF8(v64, v65, v66, v9, 1);
        sub_1B21151F8(v67, v68, v69, v70, v71, v72, v73, v74, v75, v76);
        v60 = sub_1B2117630();
        v63 = v9;
      }

      else
      {
        sub_1B2112B34(v29);
        v49 = sub_1B2117630();
        v52 = sub_1B21DAEF8(v49, v50, v51, v9, 1);
        sub_1B21151F8(v52, v53, v54, v55, v56, v57, v58, v59, v75, v76);
        v60 = sub_1B2117630();
        v63 = v9;
      }

      sub_1B2142C9C(v60, v61, v62, v63, 1);
    }

    else
    {
      v12 = *(v3 + 24);
      v13 = *(v3 + 32);
      v77 = v13;
      v14 = *(v3 + 40);
      v15 = *(v3 + 16);
      sub_1B21DAEF8(v15, v12, v13, v6, v8);
      v16 = sub_1B2111AFC();
      sub_1B21DAEF8(v16, v17, v18, v19, v20);
      sub_1B2142C9C(v15, v5, v77, v14, v8);
      v21 = sub_1B2111AFC();
      sub_1B2142C9C(v21, v22, v23, v24, v25);
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1B21DA5F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  if (!*(v2 + 48))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = 0;
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    goto LABEL_5;
  }

  if (v9 == 1)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
    *(v2 + 48) = 1;

LABEL_5:

    goto LABEL_7;
  }

  v10 = *(v2 + 16);

  sub_1B21DA5F0(a1, a2);
  LOBYTE(v9) = 2;
LABEL_7:

  return sub_1B2142C9C(v7, v6, v5, v8, v9);
}

uint64_t sub_1B21DA6C0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      v5 = *(v2 + 24);

      sub_1B2111F44();
      v6 = sub_1B2252220();
      v8 = v7;
      if (v6 == sub_1B2252220() && v8 == v9)
      {
      }

      else
      {
        sub_1B2111F44();
        v11 = sub_1B22531F0();

        if ((v11 & 1) == 0)
        {
          result = sub_1B2252EC0();
          __break(1u);
          return result;
        }
      }
    }

    else
    {
      v14 = *(v2 + 32);
      v13 = *(v2 + 40);
      v15 = *(v2 + 16);

      v16 = sub_1B2111F44();
      sub_1B21DA6C0(v16);

      return sub_1B2142C9C(v4, v3, v14, v13, 2);
    }
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
    *(v2 + 32) = v4;
    *(v2 + 40) = v3;
    *(v2 + 48) = 1;
  }
}

uint64_t sub_1B21DA888(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = sub_1B2115850();
  v3(v2, v1);
  v4 = sub_1B2116218();
  sub_1B21789F8(v4);
  memcpy(__dst, v6, sizeof(__dst));
  return sub_1B213A5CC(__dst);
}

uint64_t sub_1B21DA908(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = *(v1 + 8);
  v3 = sub_1B2115850();
  v4(v3);
  v5 = sub_1B2116218();
  sub_1B213BBD8(v5, v6);
  memcpy(__dst, v8, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DA988(void *a1)
{
  v1 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  v2 = sub_1B2115850();
  v3(v2, v1);
  v4 = sub_1B2116218();
  sub_1B214D9C8(v4, v5);
  memcpy(__dst, v7, 0xA3uLL);
  return sub_1B214DC54(__dst);
}

uint64_t sub_1B21DAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_1B213CBE4(__src);
  memcpy(a3, __src, 0xA3uLL);
}

uint64_t sub_1B21DAA6C@<X0>(void *a1@<X8>)
{
  LOBYTE(__src[1]) = 0;
  sub_1B21D041C(__src);
  memcpy(a1, __src, 0xA3uLL);
}

uint64_t sub_1B21DAAE4()
{
  sub_1B2253420();
  sub_1B2138CB8();
  return sub_1B2253470();
}

uint64_t sub_1B21DABA0()
{
  sub_1B2253420();
  v1 = *v0;
  sub_1B2138CB8();
  return sub_1B2253470();
}

BOOL sub_1B21DABE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static TableAlias.== infix(_:_:)();
}

uint64_t dispatch thunk of TableAlias.subscript.getter()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 224))();
}

uint64_t sub_1B21DAD38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21DAD78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B21DADE4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 16))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 13) | (2 * ((*(a1 + 8) >> 50) & 0x1C00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1B21DAE54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B21DAED0(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t sub_1B21DAEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 == 1)
    {
    }

    else if (a5)
    {
      return result;
    }
  }
}

uint64_t static Data.fromDatabaseValue(_:)(uint64_t a1)
{
  v2 = sub_1B22522F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 == 3)
  {
    sub_1B2126638(*a1, *(a1 + 8));
  }

  else if (v9 == 2)
  {
    sub_1B22522E0();
    v7 = sub_1B22522B0();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1B21DB0F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.fromDatabaseValue(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B21DB118(Swift::OpaquePointer to, Swift::Int32 at)
{
  v3 = *v2;
  v4 = v2[1];
  return Data.bind(to:at:)(to, at);
}

id sub_1B21DB120()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB98]) initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  qword_1EB7A23D8 = result;
  return result;
}

void NSNumber.databaseValue.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  sub_1B21DBA2C();
  v6 = qword_1EB7A0D60;
  v7 = v1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = [v5 decimalNumberByRoundingAccordingToBehavior_];
  v9 = sub_1B2252AB0();

  if ((v9 & 1) == 0 || (v10 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithLongLong_], v11 = objc_msgSend(v5, sel_compare_, v10), v10, v11 == 1) || (v12 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AB90]), sel_initWithLongLong_, 0x8000000000000000), v13 = objc_msgSend(v5, sel_compare_, v12), v12, v13 == -1))
  {

LABEL_9:
    [v2 objCType];
    v16 = sub_1B22523F0();
    v18 = v17;
    v19 = v16 == 99 && v17 == 0xE100000000000000;
    if (v19 || (v20 = v16, (sub_1B2117654() & 1) != 0))
    {

      v21 = [v2 charValue];
LABEL_15:
      v15 = 0;
      v22 = v21;
LABEL_23:
      *a1 = v22;
      goto LABEL_24;
    }

    v23 = v20 == 67 && v18 == 0xE100000000000000;
    if (v23 || (sub_1B2117654() & 1) != 0)
    {

      v24 = [v2 unsignedCharValue];
LABEL_22:
      v15 = 0;
      v22 = v24;
      goto LABEL_23;
    }

    v25 = v20 == 115 && v18 == 0xE100000000000000;
    if (v25 || (sub_1B2117654() & 1) != 0)
    {

      v21 = [v2 shortValue];
      goto LABEL_15;
    }

    v26 = v20 == 83 && v18 == 0xE100000000000000;
    if (v26 || (sub_1B2117654() & 1) != 0)
    {

      v24 = [v2 unsignedShortValue];
      goto LABEL_22;
    }

    v27 = v20 == 105 && v18 == 0xE100000000000000;
    if (v27 || (sub_1B2117654() & 1) != 0)
    {

      v21 = [v2 intValue];
      goto LABEL_15;
    }

    v28 = v20 == 73 && v18 == 0xE100000000000000;
    if (v28 || (sub_1B2117654() & 1) != 0)
    {

      v24 = [v2 unsignedIntValue];
      goto LABEL_22;
    }

    v29 = v20 == 108 && v18 == 0xE100000000000000;
    if (v29 || (sub_1B2117654() & 1) != 0)
    {

      v30 = [v2 integerValue];
LABEL_55:
      v15 = 0;
      *a1 = v30;
      goto LABEL_24;
    }

    v31 = v20 == 76 && v18 == 0xE100000000000000;
    if (v31 || (sub_1B2117654() & 1) != 0)
    {

      v32 = [v2 unsignedIntegerValue];
      if ((v32 & 0x8000000000000000) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v33 = v20 == 113 && v18 == 0xE100000000000000;
      if (v33 || (sub_1B2117654() & 1) != 0)
      {

        v30 = [v2 longLongValue];
        goto LABEL_55;
      }

      v34 = v20 == 81 && v18 == 0xE100000000000000;
      if (!v34 && (sub_1B2117654() & 1) == 0)
      {
        v35 = v20 == 102 && v18 == 0xE100000000000000;
        if (v35 || (sub_1B2117654() & 1) != 0)
        {

          [v2 floatValue];
          v37 = v36;
        }

        else
        {
          v38 = v20 == 100 && v18 == 0xE100000000000000;
          if (!v38 && (sub_1B2117654() & 1) == 0)
          {
            v39 = v20 == 66 && v18 == 0xE100000000000000;
            if (!v39 && (sub_1B2117654() & 1) == 0)
            {
              goto LABEL_97;
            }

            v24 = [v2 BOOLValue];
            goto LABEL_22;
          }

          [v2 doubleValue];
        }

        *a1 = v37;
        v15 = 1;
        goto LABEL_24;
      }

      v32 = [v2 unsignedLongLongValue];
      if ((v32 & 0x8000000000000000) == 0)
      {
LABEL_62:
        v15 = 0;
        *a1 = v32;
        goto LABEL_24;
      }
    }

    sub_1B211521C();
    sub_1B2252CD0();
    sub_1B2112B5C();
    v40 = sub_1B2252FD0();
    MEMORY[0x1B2741EB0](v40);

    sub_1B2115864();
    while (1)
    {
      sub_1B2252EC0();
      __break(1u);
LABEL_97:
      sub_1B211521C();
      sub_1B2252CD0();
      MEMORY[0x1B2741EB0](0xD000000000000035, 0x80000001B226EEC0);
      MEMORY[0x1B2741EB0](v20, v18);
    }
  }

  v14 = [v7 longLongValue];

  v15 = 0;
  *a1 = v14;
LABEL_24:
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
}

id static NSNumber.fromDatabaseValue(_:)(uint64_t a1)
{
  v2 = sub_1B21619D8(&qword_1EB7A1350, &unk_1B22550D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - v4;
  v6 = *a1;
  v7 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithLongLong_];
  }

  if (v7 == 2)
  {
    v10 = *(a1 + 8);
    if (qword_1EB7A0D68 != -1)
    {
      swift_once();
    }

    v11 = sub_1B2251F10();
    v12 = sub_1B2156958(v11, qword_1EB7A23E0);
    (*(*(v11 - 8) + 16))(v5, v12, v11);
    sub_1B21117B4(v5, 0, 1, v11);
    v13 = sub_1B2252AD0();
    v15 = v14;
    v17 = v16;
    sub_1B21D12D0(v5);
    if ((v17 & 0x100000000) == 0)
    {
      v18 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v21[0] = v13;
      v21[1] = v15;
      v22 = v17;
      v19 = [v18 initWithDecimal_];
      result = swift_dynamicCastUnknownClass();
      if (result)
      {
        return result;
      }
    }
  }

  else if (v7 == 1)
  {
    v8 = *a1;
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDouble_];
  }

  return 0;
}

id sub_1B21DB998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = static NSNumber.fromDatabaseValue(_:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B21DB9C0()
{
  v0 = sub_1B2251F10();
  sub_1B2175CC4(v0, qword_1EB7A23E0);
  sub_1B2156958(v0, qword_1EB7A23E0);
  return sub_1B2251EF0();
}

unint64_t sub_1B21DBA2C()
{
  result = qword_1EB7A23F8;
  if (!qword_1EB7A23F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7A23F8);
  }

  return result;
}

uint64_t FTS3Pattern.rawPattern.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

GRDBInternal::FTS3Pattern __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FTS3Pattern.init(rawPattern:)(Swift::String rawPattern)
{
  object = rawPattern._object;
  countAndFlagsBits = rawPattern._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for Configuration();
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = 1;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *(v10 + 23) = 0;
  *(v10 + 4) = MEMORY[0x1E69E7CC0];
  *(v10 + 20) = 0;
  *(v10 + 6) = 0;
  *(v10 + 7) = 0;
  v10[64] = 2;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0;
  v10[88] = -1;
  *(v10 + 12) = 5;
  v11 = &v10[v7[18]];
  sub_1B2252110();
  *&v10[v7[19]] = 0;
  *&v10[v7[20]] = 0;
  v10[v7[21]] = 1;
  v10[v7[22]] = 0;
  v12 = &v10[v7[23]];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v10[v7[24]];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v10[v7[25]];
  type metadata accessor for DatabaseQueue();
  *v14 = 0;
  v14[1] = 0;
  swift_allocObject();
  v15 = DatabaseQueue.init(configuration:)(v10);
  v28 = countAndFlagsBits;
  v29 = object;
  v16 = v15[2];
  sub_1B2113C20(sub_1B21DC4CC, v27);
  if (v2)
  {

    v35 = v2;
    v17 = v2;
    sub_1B21619D8(qword_1EB7A0F98, &unk_1B22595B0);
    if (swift_dynamicCast())
    {

      v30[0] = v32;
      v30[1] = v33;
      v31[0] = v34[0];
      *(v31 + 9) = *(v34 + 9);
      v18 = v32;
      v20 = *(&v32 + 1);
      v19 = v33;
      sub_1B21AC298();
      swift_allocError();
      v22 = v21;
      if (v19)
      {
        v23 = v19;
      }

      else
      {
        v24 = sqlite3_errstr(v18);
        if (!v24)
        {
          __break(1u);
          goto LABEL_11;
        }

        v20 = sub_1B22523F0();
      }

      *v22 = v18;
      *(v22 + 8) = v20;
      *(v22 + 16) = v23;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
      *(v22 + 56) = 0;

      sub_1B21DC4E8(v30);
      swift_willThrow();
    }
  }

  else
  {

    *v5 = countAndFlagsBits;
    v5[1] = object;
  }

LABEL_11:
  result.rawPattern._object = v25;
  result.rawPattern._countAndFlagsBits = v24;
  return result;
}

uint64_t sub_1B21DBD2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B2127C14();
  v19 = v5;
  v6._object = 0x80000001B226EFB0;
  v6._countAndFlagsBits = 0xD000000000000059;
  SQLInterpolation.appendLiteral(_:)(v6);
  __dst[0] = a2;
  __dst[1] = a3;

  v7 = sub_1B2252490();
  v9 = v8;
  v10 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = *(v19 + 16);
    sub_1B2127C14();
    v10 = v15;
  }

  v11 = *(v10 + 16);
  if (v11 >= *(v10 + 24) >> 1)
  {
    sub_1B2127C14();
    v10 = v16;
  }

  __src[0] = v7;
  __src[1] = v9;
  LOBYTE(__src[2]) = 2;
  sub_1B2127D7C(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B2127AE0(__dst);
  *(v10 + 16) = v11 + 1;
  memcpy((v10 + 184 * v11 + 32), __dst, 0xB8uLL);
  v19 = v10;
  v12._countAndFlagsBits = 59;
  v12._object = 0xE100000000000000;
  SQLInterpolation.appendLiteral(_:)(v12);
  Database.execute(literal:)(&v19);
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAnyTokenIn:)(Swift::String matchingAnyTokenIn)
{
  sub_1B21DBEE0(matchingAnyTokenIn._countAndFlagsBits, matchingAnyTokenIn._object, v1);
  result.value.rawPattern._object = v3;
  result.value.rawPattern._countAndFlagsBits = v2;
  result.is_nil = v4;
  return result;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAllTokensIn:)(Swift::String matchingAllTokensIn)
{
  sub_1B21DBEE0(matchingAllTokensIn._countAndFlagsBits, matchingAllTokensIn._object, v1);
  result.value.rawPattern._object = v3;
  result.value.rawPattern._countAndFlagsBits = v2;
  result.is_nil = v4;
  return result;
}

void sub_1B21DBEE0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674();
  }

  v13 = qword_1EB7A30F8;
  v14 = unk_1EB7A3100;
  v15 = qword_1EB7A3108;

  v6 = static FTS3.tokenize(_:withTokenizer:)(a1, a2, &v13);

  if (!*(v6 + 16))
  {

    goto LABEL_7;
  }

  sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
  sub_1B215175C();
  v7 = sub_1B2252250();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  FTS3Pattern.init(rawPattern:)(v10);
  if (v11)
  {

LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v12 = v14;
  *a3 = v13;
  a3[1] = v12;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingAllPrefixesIn:)(Swift::String matchingAllPrefixesIn)
{
  v2 = v1;
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674();
  }

  v23 = qword_1EB7A30F8;
  v24 = unk_1EB7A3100;

  v3 = sub_1B2112864();
  v6 = static FTS3.tokenize(_:withTokenizer:)(v3, v4, v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B2116B10();
    v8 = (v6 + 40);
    do
    {
      v20 = *(v8 - 1);
      v21 = *v8;
      swift_bridgeObjectRetain_n();
      MEMORY[0x1B2741EB0](42, 0xE100000000000000);

      v9 = *(v22 + 16);
      if (v9 >= *(v22 + 24) >> 1)
      {
        sub_1B2116B10();
      }

      *(v22 + 16) = v9 + 1;
      v10 = v22 + 16 * v9;
      *(v10 + 32) = v20;
      *(v10 + 40) = v21;
      v8 += 2;
      --v7;
    }

    while (v7);

    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v11 = sub_1B2252250();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    v19 = FTS3Pattern.init(rawPattern:)(v14);
    object = v19.rawPattern._object;
    countAndFlagsBits = v19.rawPattern._countAndFlagsBits;
    if (!v18)
    {
      *v2 = v23;
      v2[1] = v24;
      goto LABEL_13;
    }
  }

  else
  {
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_13:
  result.value.rawPattern._object = object;
  result.value.rawPattern._countAndFlagsBits = countAndFlagsBits;
  result.is_nil = v17;
  return result;
}

GRDBInternal::FTS3Pattern_optional __swiftcall FTS3Pattern.init(matchingPhrase:)(Swift::String matchingPhrase)
{
  v2 = v1;
  if (qword_1EB7A0D70 != -1)
  {
    sub_1B2117674();
  }

  v16 = qword_1EB7A30F8;
  v17 = unk_1EB7A3100;

  v3 = sub_1B2112864();
  v6 = static FTS3.tokenize(_:withTokenizer:)(v3, v4, v5);

  if (*(v6 + 16))
  {
    sub_1B21619D8(&qword_1EB7A0DA0, &qword_1B2254340);
    sub_1B215175C();
    v7 = sub_1B2252250();
    v9 = v8;

    MEMORY[0x1B2741EB0](v7, v9);

    MEMORY[0x1B2741EB0](34, 0xE100000000000000);

    v10._countAndFlagsBits = 34;
    v10._object = 0xE100000000000000;
    v15 = FTS3Pattern.init(rawPattern:)(v10);
    object = v15.rawPattern._object;
    countAndFlagsBits = v15.rawPattern._countAndFlagsBits;
    if (!v14)
    {
      *v2 = v16;
      v2[1] = v17;
      goto LABEL_9;
    }
  }

  else
  {
  }

  *v2 = 0;
  v2[1] = 0;
LABEL_9:
  result.value.rawPattern._object = object;
  result.value.rawPattern._countAndFlagsBits = countAndFlagsBits;
  result.is_nil = v13;
  return result;
}

uint64_t FTS3Pattern.databaseValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 2;
}

uint64_t static FTS3Pattern.fromDatabaseValue(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B22522F0();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = *a1;
  v7 = a1[1];
  v9 = *(a1 + 16);
  if (v9 != 3)
  {
    if (v9 == 2)
    {
      v10 = a1[1];

      goto LABEL_5;
    }

LABEL_7:
    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  sub_1B22522E0();
  sub_1B2112864();
  result = sub_1B22522C0();
  if (!v11)
  {
    goto LABEL_7;
  }

LABEL_5:
  swift_bridgeObjectRetain_n();
  v12._countAndFlagsBits = sub_1B2112864();
  FTS3Pattern.init(rawPattern:)(v12);
  if (v13)
  {

    result = swift_bridgeObjectRelease_n();
    goto LABEL_7;
  }

  result = swift_bridgeObjectRelease_n();
  *a2 = v14;
  a2[1] = v15;
  return result;
}

unint64_t sub_1B21DC54C(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1B22524A0();

    return v4;
  }

  return result;
}

uint64_t sub_1B21DC5F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v14, v10, 0xA3uLL);
  type metadata accessor for BasePreparation();
  (*(v6 + 16))(v9, v3, a2);
  memcpy(v13, v14, 0xA3uLL);
  v11 = sub_1B21DC71C(v9, v13);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v11;
  return sub_1B2127DC0(v14, v13);
}

uint64_t sub_1B21DC71C(uint64_t a1, const void *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_1B21DF484(a1, a2);
}

void AssociationToMany.count.getter()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOWORD(__src[2]) = 257;
  __src[3] = &unk_1F2969878;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, &v76);
  memcpy(v79, __dst, 0xA3uLL);
  sub_1B21356F8(v79);
  *&__dst[1] = v77;
  __dst[0] = v76;
  v4 = sub_1B2232B00(v3, *(v1 + 8));
  v6 = v5;
  switch(v7)
  {
    case 1:
    case 3:
      goto LABEL_29;
    case 2:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_3;
      }

      break;
  }

  while (1)
  {
    sub_1B2112A24();
LABEL_3:
    sub_1B21225C8();
    v8 = off_1ED85D830;

    sub_1B212DF30();
    v9 = sub_1B21FDA08();
    sub_1B212DF30();
    sub_1B21FD8E0();
    sub_1B2124238();
    if (!v11)
    {
      break;
    }

    v70 = v9;
    v71 = v10;
    sub_1B2121238();
    v73 = v6;
    v12 = sub_1B22524A0();
    v13 = MEMORY[0x1B2741E40](v12);
    v15 = v14;

    MEMORY[0x1B2741F40](v13, v15);
    v16 = 0;
    v6 = v8;
    v18 = (v8 + 8);
    v17 = v8[8];
    v19 = *(v8 + 32);
    sub_1B21115A0();
    sub_1B21260D4();
    v21 = v20 >> 6;
    while (v8)
    {
LABEL_11:
      sub_1B21183C0();
      v23 = *(v6 + 56);
      v25 = sub_1B2122240(v24);
      v4 = sub_1B2252290();
      sub_1B2115CB0();
      v28 = [v26 v27];

      if (v28)
      {

        v29 = sub_1B212DF30();
        v31 = 0;
LABEL_28:
        sub_1B21C807C(v29, v30, v31);
LABEL_29:
        v66 = sub_1B212DF30();
        MEMORY[0x1B2741EB0](v66);

        MEMORY[0x1B2741EB0](0x746E756F43, 0xE500000000000000);
        swift_getAssociatedTypeWitness();
        sub_1B211D6B0();
        sub_1B211187C();
        AssociationAggregate.forKey(_:)(v67, v68);

        sub_1B2111588();
        return;
      }
    }

    while (1)
    {
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v22 >= v21)
      {

        sub_1B211D9A4();
        v51 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v51);

        sub_1B21FDE44(v13);
        sub_1B211E510();
        sub_1B211F1C8();

        v60 = sub_1B211F6DC(v52, v53, v54, v55, v56, v57, v58, v59, v69, v70, v71);
        v62 = sub_1B21DC54C(v60, v61, v73);
        MEMORY[0x1B2741E40](v62);
        sub_1B211E510();
        sub_1B211F1C8();

        v29 = sub_1B212DF30();
        v31 = 0;
        goto LABEL_28;
      }

      v8 = *&v18[8 * v22];
      ++v16;
      if (v8)
      {
        v16 = v22;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
LABEL_33:
  sub_1B2112A24();
LABEL_14:
  sub_1B21225C8();
  v32 = off_1ED85D830;

  sub_1B212DF30();
  sub_1B21FDA08();
  sub_1B212DF30();
  sub_1B21FD8E0();
  sub_1B2124238();
  if (v11)
  {
    v72 = v33;
    sub_1B2121238();
    v74 = v4;
    v34 = sub_1B22524A0();
    v4 = v35;
    MEMORY[0x1B2741E40](v34);
    sub_1B21E1B2C();

    sub_1B21E1B6C();
    v36 = 0;
    v37 = v32;
    v39 = (v32 + 8);
    v38 = v32[8];
    v40 = *(v32 + 32);
    sub_1B21115A0();
    sub_1B21260D4();
    v42 = v41 >> 6;
    while (v32)
    {
      v43 = v37;
LABEL_24:
      sub_1B21183C0();
      v45 = v43[7];
      v4 = sub_1B2122240(v46);
      v47 = sub_1B2252290();
      sub_1B2115CB0();
      v50 = [v48 v49];

      if (v50)
      {

        v29 = sub_1B212DF30();
        v31 = 2;
        goto LABEL_28;
      }
    }

    v43 = v37;
    while (1)
    {
      v44 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_31;
      }

      if (v44 >= v42)
      {

        sub_1B211D9A4();
        v63 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v63);
        sub_1B21140B8();

        sub_1B211FE6C();
        sub_1B21FDE44(v64);
        sub_1B21140B8();

        sub_1B213CD78();

        v65 = sub_1B21DC54C(v72, v74, v6);
        MEMORY[0x1B2741E40](v65);
        sub_1B21140B8();

        sub_1B213CD78();

        v29 = v74;
        v30 = v6;
        v31 = 2;
        goto LABEL_28;
      }

      v32 = *&v39[8 * v44];
      ++v36;
      if (v32)
      {
        v36 = v44;
        goto LABEL_24;
      }
    }
  }

  __break(1u);
}

uint64_t AssociationAggregate.forKey(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v4 = *(a1 + 16);
  return sub_1B2135E94(sub_1B21E1398, a1, a2);
}

void AssociationToMany.isEmpty.getter()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  __src[0] = 0x544E554F43;
  __src[1] = 0xE500000000000000;
  LOWORD(__src[2]) = 257;
  __src[3] = &unk_1F2969940;
  sub_1B2179374(__src);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0xA3uLL);
  *(v4 + 179) = 0;
  v67[0] = v4;
  sub_1B21D04A8(v67);
  memcpy(__dst, v67, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, &v64);
  memcpy(v68, __dst, 0xA3uLL);
  sub_1B21356F8(v68);
  __dst[0] = v64;
  *&__dst[1] = v65;
  v5 = sub_1B2232B00(v3, *(v1 + 8));
  v7 = v6;
  switch(v8)
  {
    case 1:
    case 3:
      goto LABEL_29;
    case 2:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_33;
    default:
      if (qword_1ED85D818 == -1)
      {
        goto LABEL_3;
      }

      break;
  }

  while (1)
  {
    sub_1B2112A24();
LABEL_3:
    sub_1B21225C8();
    v9 = off_1ED85D830;

    sub_1B2122034();
    sub_1B21FDA08();
    sub_1B2122034();
    sub_1B21FD8E0();
    sub_1B2124238();
    if (!v11)
    {
      break;
    }

    v61 = v5;
    v58 = v10;
    sub_1B2121238();
    v60 = v7;
    v12 = sub_1B22524A0();
    v13 = MEMORY[0x1B2741E40](v12);
    v15 = v14;

    MEMORY[0x1B2741F40](v13, v15);
    v5 = 0;
    v7 = v9;
    v17 = (v9 + 8);
    v16 = v9[8];
    v18 = *(v9 + 32);
    sub_1B21115A0();
    sub_1B21260D4();
    v20 = v19 >> 6;
    while (v9)
    {
LABEL_11:
      sub_1B21183C0();
      v22 = *(v7 + 56);
      v24 = sub_1B2122240(v23);
      v25 = sub_1B2252290();
      sub_1B2115CB0();
      v28 = [v26 v27];

      if (v28)
      {

        v29 = sub_1B2122034();
        v31 = 0;
LABEL_28:
        sub_1B21C807C(v29, v30, v31);
LABEL_29:
        sub_1B2122034();
        sub_1B21FD218();

        v55 = sub_1B211187C();
        MEMORY[0x1B2741EB0](v55);

        swift_getAssociatedTypeWitness();
        sub_1B211D6B0();
        sub_1B211187C();
        AssociationAggregate.forKey(_:)(v56, v57);

        sub_1B2111588();
        return;
      }
    }

    while (1)
    {
      v21 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v21 >= v20)
      {

        v50 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v50);

        sub_1B21FDE44(v13);
        sub_1B211E510();
        sub_1B211F1C8();

        v51 = sub_1B21DC54C(v58, v61, v60);
        MEMORY[0x1B2741E40](v51);
        sub_1B211E510();
        sub_1B211F1C8();

        v29 = sub_1B212DF30();
        v31 = 0;
        goto LABEL_28;
      }

      v9 = *&v17[8 * v21];
      ++v5;
      if (v9)
      {
        v5 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
LABEL_33:
  sub_1B2112A24();
LABEL_14:
  sub_1B21225C8();
  v32 = off_1ED85D830;

  sub_1B2122034();
  sub_1B21FDA08();
  sub_1B2122034();
  sub_1B21FD8E0();
  sub_1B2124238();
  if (v11)
  {
    v59 = v33;
    sub_1B2121238();
    v62 = v5;
    v34 = sub_1B22524A0();
    MEMORY[0x1B2741E40](v34);
    sub_1B21E1B2C();

    sub_1B21E1B6C();
    v5 = 0;
    v35 = v32;
    v37 = (v32 + 8);
    v36 = v32[8];
    v38 = *(v32 + 32);
    sub_1B21115A0();
    sub_1B21260D4();
    v40 = v39 >> 6;
    while (v32)
    {
      v41 = v35;
LABEL_24:
      sub_1B21183C0();
      v43 = v41[7];
      v45 = sub_1B2122240(v44);
      v46 = sub_1B2252290();
      sub_1B2115CB0();
      v49 = [v47 v48];

      if (v49)
      {

        v29 = sub_1B2122034();
        v31 = 2;
        goto LABEL_28;
      }
    }

    v41 = v35;
    while (1)
    {
      v42 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_31;
      }

      if (v42 >= v40)
      {

        v52 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v52);
        sub_1B21140B8();

        sub_1B211FE6C();
        sub_1B21FDE44(v53);
        sub_1B21140B8();

        sub_1B213CD78();

        v54 = sub_1B21DC54C(v59, v62, v7);
        MEMORY[0x1B2741E40](v54);
        sub_1B21140B8();

        sub_1B213CD78();

        v29 = v62;
        v30 = v7;
        v31 = 2;
        goto LABEL_28;
      }

      v32 = *&v37[8 * v42];
      ++v5;
      if (v32)
      {
        v5 = v42;
        goto LABEL_24;
      }
    }
  }

  __break(1u);
}

void AssociationToMany.average(_:)()
{
  sub_1B21DD5AC();
}

{
  sub_1B21DDCB0();
}

void AssociationToMany.max(_:)()
{
  sub_1B211AE18();
}

{
  sub_1B2111680();
}

void sub_1B21DD5AC()
{
  sub_1B2111F14();
  v126 = v1;
  v127 = v2;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v12 = sub_1B21325C8();
  *(v12 + 16) = xmmword_1B22546B0;
  v13 = v9[4];
  sub_1B21139A0(v9, v9[3]);
  v14 = sub_1B21E1B38();
  v15 = v13;
  v16 = v7;
  v17(v14, v15);
  __src[0] = v4;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v12;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v7, v133);
  memcpy(v136, __dst, 0xA3uLL);
  v18 = sub_1B21356F8(v136);
  sub_1B212D890(v18, v19, v20, v21, v22, v23, v24, v25, v96, v99, v102, v105, v107, v109, v111, v113, v115, v117, v119, v121, v122, v124, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133[0]);
  sub_1B21619D8(&qword_1EB7A1170, &qword_1B2254990);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (sub_1B213CE68())
  {
    v123 = v12;
    v125 = v7;
    sub_1B21217FC(&v130, __dst);
    sub_1B21E1B4C();
    v27 = v26;
    switch(v28)
    {
      case 1:
      case 3:
        goto LABEL_29;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24();
LABEL_4:
      sub_1B2135358();
      sub_1B2115F28();
      v29 = *(&xmmword_1ED85D820 + 1);
      v30 = off_1ED85D830;

      v108 = v29;

      sub_1B21180C0();
      sub_1B21FDA08();
      sub_1B21180C0();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v31)
      {
        sub_1B211522C();
        sub_1B214CC48();
        v106 = v27;
        v32 = sub_1B22524A0();
        v33 = MEMORY[0x1B2741E40](v32);
        v35 = v34;

        MEMORY[0x1B2741F40](v33, v35);
        sub_1B213CB20();
        v27 = v30;
        v37 = v30[8];
        v36 = (v30 + 8);
        v38 = *(v36 - 32);
        sub_1B21115A0();
        sub_1B2146B24();
        v11 = (v39 >> 6);
        while (v5)
        {
LABEL_12:
          sub_1B2116228();
          v41 = *(v27 + 56);
          v43 = sub_1B2122240(v42);
          v35 = sub_1B2252290();
          v44 = sub_1B2111B14();
          v4 = [v44 v45];

          if (v4)
          {

            v46 = sub_1B21180C0();
            v48 = 0;
LABEL_28:
            sub_1B21C807C(v46, v47, v48);
            v4 = v114;
LABEL_29:
            v133[0] = v125;
            v133[1] = v123;
            v133[2] = v4;
            sub_1B21180C0();
            sub_1B21FD218();
            sub_1B2149844();
            v90 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v90);

            sub_1B21139A0(__dst, __dst[3]);
            v91 = sub_1B2115884();
            v92(v91);
            sub_1B21FD218();
            sub_1B2112124();

            v93 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v93);

            swift_getAssociatedTypeWitness();
            sub_1B211D6B0();
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v94, v95);

            sub_1B2113208(__dst);
            goto LABEL_30;
          }
        }

        while (1)
        {
          v40 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v40 >= v11)
          {

            sub_1B211D9A4();
            v60 = sub_1B2126304();
            MEMORY[0x1B2741E40](v60);
            sub_1B2112124();

            sub_1B212D05C();
            sub_1B2112124();

            v61 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v61);

            sub_1B211FE6C();
            v65 = sub_1B21DC54C(v62, v63, v64);
            MEMORY[0x1B2741E40](v65);
            sub_1B2112124();

            v66 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v66);

            v46 = v35;
            v47 = v27;
            v48 = 0;
            goto LABEL_28;
          }

          v5 = *&v36[8 * v40];
          ++v16;
          if (v5)
          {
            v16 = v40;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_34:
        sub_1B2112A24();
LABEL_16:
        sub_1B2135358();
        sub_1B21225C8();
        sub_1B21234F4();
        sub_1B2124BF0();

        sub_1B21180C0();
        sub_1B21FDA08();
        sub_1B21180C0();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v31)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        sub_1B214CC48();
        v49 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v49);
        sub_1B21E1B2C();

        v120 = v4;
        sub_1B21E1B6C();
        sub_1B213CB20();
        v50 = v11;
        v51 = v11[8];
        v11 += 8;
        v52 = *(v11 - 32);
        sub_1B21115A0();
        sub_1B2146B24();
        v54 = v53 >> 6;
        while (v5)
        {
LABEL_24:
          sub_1B2116228();
          v56 = v50[7];
          v58 = sub_1B2122240(v57);
          v59 = sub_1B2252290();
          v4 = sub_1B21143F8(v59, sel_firstMatchInString_options_range_);

          if (v4)
          {

            v46 = sub_1B21180C0();
            v48 = 2;
            goto LABEL_28;
          }
        }

        while (1)
        {
          v55 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v55 >= v54)
          {

            sub_1B211D9A4();
            v67 = v110;
            v68 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v68);
            v69 = sub_1B211A2DC();
            sub_1B21229FC(v69, v70, v71, v72, v73, v74, v75, v76, v97, v100, v103, v106, v108, v110, v112, v114, v116, v118, v120);
            sub_1B21E1B10();
            v77 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v77);

            v86 = sub_1B211F6DC(v78, v79, v80, v81, v82, v83, v84, v85, v98, v101, v104);
            v88 = sub_1B21DC54C(v86, v87, v27);
            MEMORY[0x1B2741E40](v88);
            sub_1B2112124();

            v89 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v89);

            v46 = v67;
            v47 = v27;
            v48 = 2;
            goto LABEL_28;
          }

          v5 = v11[v55];
          ++v16;
          if (v5)
          {
            v16 = v55;
            goto LABEL_24;
          }
        }
      }

      __break(1u);
    }
  }

  v132 = 0;
  v130 = 0u;
  v131 = 0u;
  sub_1B212AC5C(&v130, &qword_1EB7A2408, &qword_1B225E0F8);
  *v11 = v7;
  v11[1] = v12;
  v11[2] = v4;
LABEL_30:
  sub_1B2111588();
}

void sub_1B21DDCB0()
{
  sub_1B2111F14();
  v121 = v4;
  v122 = v5;
  v7 = v6;
  sub_1B21233C8();
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v8 = sub_1B21325C8();
  *(v8 + 16) = xmmword_1B22546B0;
  v9 = v2[4];
  sub_1B21139A0(v2, v2[3]);
  v10 = *(v9 + 8);
  v11 = sub_1B21E1B38();
  v12(v11);
  __src[0] = v7;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v8;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, v128);
  memcpy(v131, __dst, 0xA3uLL);
  v13 = sub_1B21356F8(v131);
  sub_1B212D890(v13, v14, v15, v16, v17, v18, v19, v20, v91, v94, v97, v100, v102, v104, v106, v108, v110, v112, v114, v116, v117, v119, v121, v122, v123, v124, v125, *(&v125 + 1), v126, *(&v126 + 1), v127, v128[0]);
  sub_1B21619D8(qword_1EB7A2410, &qword_1B225E100);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (sub_1B213CE68())
  {
    v118 = v8;
    v120 = v9;
    sub_1B21217FC(&v125, __dst);
    sub_1B21E1B4C();
    v22 = v21;
    switch(v23)
    {
      case 1:
      case 3:
        goto LABEL_29;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_34;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24();
LABEL_4:
      sub_1B2135358();
      sub_1B2115F28();
      v24 = *(&xmmword_1ED85D820 + 1);
      v25 = off_1ED85D830;

      v103 = v24;

      sub_1B21180C0();
      sub_1B21FDA08();
      sub_1B21180C0();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v26)
      {
        sub_1B211522C();
        sub_1B214CC48();
        v101 = v22;
        v27 = sub_1B22524A0();
        v28 = MEMORY[0x1B2741E40](v27);
        v30 = v29;

        MEMORY[0x1B2741F40](v28, v30);
        sub_1B213CB20();
        v22 = v25;
        v32 = v25[8];
        v31 = (v25 + 8);
        v33 = *(v31 - 32);
        sub_1B21115A0();
        sub_1B2146B24();
        v0 = (v34 >> 6);
        while (v1)
        {
LABEL_12:
          sub_1B2116228();
          v36 = *(v22 + 56);
          v38 = sub_1B2122240(v37);
          v30 = sub_1B2252290();
          v39 = sub_1B2111B14();
          v7 = [v39 v40];

          if (v7)
          {

            v41 = sub_1B21180C0();
            v43 = 0;
LABEL_28:
            sub_1B21C807C(v41, v42, v43);
            v7 = v109;
LABEL_29:
            v128[0] = v120;
            v128[1] = v118;
            v128[2] = v7;
            sub_1B21180C0();
            sub_1B21FD218();
            sub_1B2149844();
            v85 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v85);

            sub_1B21139A0(__dst, __dst[3]);
            v86 = sub_1B2115884();
            v87(v86);
            sub_1B21FD218();
            sub_1B2112124();

            v88 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v88);

            swift_getAssociatedTypeWitness();
            sub_1B211D6B0();
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v89, v90);

            sub_1B2113208(__dst);
            goto LABEL_30;
          }
        }

        while (1)
        {
          v35 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v35 >= v0)
          {

            sub_1B211D9A4();
            v55 = sub_1B2126304();
            MEMORY[0x1B2741E40](v55);
            sub_1B2112124();

            sub_1B212D05C();
            sub_1B2112124();

            v56 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v56);

            sub_1B211FE6C();
            v60 = sub_1B21DC54C(v57, v58, v59);
            MEMORY[0x1B2741E40](v60);
            sub_1B2112124();

            v61 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v61);

            v41 = v30;
            v42 = v22;
            v43 = 0;
            goto LABEL_28;
          }

          v1 = *&v31[8 * v35];
          ++v3;
          if (v1)
          {
            v3 = v35;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_34:
        sub_1B2112A24();
LABEL_16:
        sub_1B2135358();
        sub_1B21225C8();
        sub_1B21234F4();
        sub_1B2124BF0();

        sub_1B21180C0();
        sub_1B21FDA08();
        sub_1B21180C0();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v26)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        sub_1B214CC48();
        v44 = sub_1B22524A0();
        MEMORY[0x1B2741E40](v44);
        sub_1B21E1B2C();

        v115 = v7;
        sub_1B21E1B6C();
        sub_1B213CB20();
        v45 = v0;
        v46 = v0[8];
        v0 += 8;
        v47 = *(v0 - 32);
        sub_1B21115A0();
        sub_1B2146B24();
        v49 = v48 >> 6;
        while (v1)
        {
LABEL_24:
          sub_1B2116228();
          v51 = v45[7];
          v53 = sub_1B2122240(v52);
          v54 = sub_1B2252290();
          v7 = sub_1B21143F8(v54, sel_firstMatchInString_options_range_);

          if (v7)
          {

            v41 = sub_1B21180C0();
            v43 = 2;
            goto LABEL_28;
          }
        }

        while (1)
        {
          v50 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            break;
          }

          if (v50 >= v49)
          {

            sub_1B211D9A4();
            v62 = v105;
            v63 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v63);
            v64 = sub_1B211A2DC();
            sub_1B21229FC(v64, v65, v66, v67, v68, v69, v70, v71, v92, v95, v98, v101, v103, v105, v107, v109, v111, v113, v115);
            sub_1B21E1B10();
            v72 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v72);

            v81 = sub_1B211F6DC(v73, v74, v75, v76, v77, v78, v79, v80, v93, v96, v99);
            v83 = sub_1B21DC54C(v81, v82, v22);
            MEMORY[0x1B2741E40](v83);
            sub_1B2112124();

            v84 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v84);

            v41 = v62;
            v42 = v22;
            v43 = 2;
            goto LABEL_28;
          }

          v1 = v0[v50];
          ++v3;
          if (v1)
          {
            v3 = v50;
            goto LABEL_24;
          }
        }
      }

      __break(1u);
    }
  }

  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  sub_1B212AC5C(&v125, &qword_1EB7A2408, &qword_1B225E0F8);
  *v0 = v9;
  v0[1] = v8;
  v0[2] = v7;
LABEL_30:
  sub_1B2111588();
}

void AssociationToMany.min(_:)()
{
  sub_1B211AE18();
}

{
  sub_1B2111680();
}

void AssociationToMany.sum(_:)()
{
  sub_1B2111F14();
  sub_1B21233C8();
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v4 = sub_1B21325C8();
  *(v4 + 16) = xmmword_1B22546B0;
  v5 = v2[4];
  sub_1B21139A0(v2, v2[3]);
  v6 = *(v5 + 8);
  v7 = sub_1B21180C0();
  v8(v7);
  __src[0] = 5068115;
  __src[1] = 0xE300000000000000;
  LOWORD(__src[2]) = 1;
  __src[3] = v4;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v3, &v100);
  memcpy(v105, __dst, 0xA3uLL);
  sub_1B21356F8(v105);
  v10 = v100;
  v9 = v101;
  v11 = v102;
  sub_1B211EE68(v2, &v100);
  sub_1B21619D8(&qword_1EB7A1170, &qword_1B2254990);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(v98, __dst);
    sub_1B2232B00(v3, *(v1 + 8));
    switch(v12)
    {
      case 1:
      case 3:
        goto LABEL_31;
      case 2:
        v97 = v9;
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_37;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24();
LABEL_4:
      v93 = v10;
      v95 = v11;
      sub_1B2115F28();
      v0 = *(&xmmword_1ED85D820 + 1);
      v11 = off_1ED85D830;
      v92 = xmmword_1ED85D820;

      v91 = v0;

      sub_1B2112F9C();
      v13 = sub_1B21FDA08();
      sub_1B2112F9C();
      v14 = sub_1B21FD8E0();
      if (v14 >> 14 < v13 >> 14)
      {
        __break(1u);
LABEL_37:
        sub_1B2112A24();
LABEL_16:
        v94 = v10;
        v96 = v11;
        sub_1B21225C8();
        sub_1B21234F4();
        sub_1B2124BF0();

        sub_1B2112F9C();
        sub_1B21FDA08();
        sub_1B2112F9C();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        v37 = sub_1B22524A0();
        v9 = v38;
        v39 = MEMORY[0x1B2741E40](v37);
        v41 = v40;

        MEMORY[0x1B2741F40](v39, v41);
        v42 = 0;
        v43 = v0;
        v45 = v0[8];
        v44 = (v0 + 8);
        v46 = *(v44 - 32);
        sub_1B21115A0();
        v11 = v48 & v47;
        sub_1B213CF5C();
        while (v11)
        {
          v49 = v42;
LABEL_25:
          v11 &= v11 - 1;
          v50 = v43[7];
          v9 = sub_1B2122240(v49);
          v51 = sub_1B2252290();
          v10 = sub_1B21143F8(v51, sel_firstMatchInString_options_range_);

          if (v10)
          {

            v52 = sub_1B2112F9C();
            sub_1B21C807C(v52, v53, 2u);
LABEL_30:
            v10 = v94;
            v11 = v96;
            v9 = v97;
LABEL_31:
            v100 = v10;
            v101 = v9;
            v102 = v11;
            sub_1B21139A0(__dst, __dst[3]);
            v83 = sub_1B2115884();
            v84(v83);
            sub_1B21FD218();
            sub_1B2112124();

            v85 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v85);

            MEMORY[0x1B2741EB0](7173459, 0xE300000000000000);
            swift_getAssociatedTypeWitness();
            sub_1B211D6B0();
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v86, v87);

            sub_1B2113208(__dst);
            goto LABEL_32;
          }
        }

        while (1)
        {
          v49 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v49 >= v2)
          {

            sub_1B211D9A4();
            v68 = sub_1B21131B4();
            MEMORY[0x1B2741E40](v68);
            sub_1B211A2DC();
            v69 = sub_1B21440FC();
            sub_1B21FDE44(v69);
            sub_1B21E1B10();
            v70 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v70);

            v79 = sub_1B211F6DC(v71, v72, v73, v74, v75, v76, v77, v78, v88, v89, v90);
            v81 = sub_1B21DC54C(v79, v80, v42);
            MEMORY[0x1B2741E40](v81);
            sub_1B2112124();

            v82 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v82);

            sub_1B21C807C(v44, v42, 2u);
            goto LABEL_30;
          }

          v11 = *(v44 + 8 * v49);
          ++v42;
          if (v11)
          {
            v42 = v49;
            goto LABEL_25;
          }
        }
      }

      else
      {
        v89 = v13;
        v90 = v14;
        v15 = sub_1B22524A0();
        v16 = MEMORY[0x1B2741E40](v15);
        v18 = v17;

        v97 = v16;
        MEMORY[0x1B2741F40](v16, v18);
        v19 = 0;
        v20 = v11;
        v21 = *(v11 + 64);
        v11 += 64;
        v22 = *(v11 - 32);
        sub_1B21115A0();
        v25 = v24 & v23;
        sub_1B213CF5C();
        while (v25)
        {
          v26 = v9;
LABEL_12:
          sub_1B2114628();
          v28 = *(v20 + 56);
          v30 = sub_1B2122240(v29);
          v31 = sub_1B2252290();
          v32 = sub_1B2111B14();
          v10 = [v32 v33];

          v9 = v26;
          if (v10)
          {

            v34 = sub_1B2112F9C();
            sub_1B21C807C(v34, v35, 0);
LABEL_28:
            v10 = v93;
            v11 = v95;
            goto LABEL_31;
          }
        }

        while (1)
        {
          v27 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v27 >= v2)
          {

            sub_1B211D9A4();
            v54 = sub_1B21131B4();
            MEMORY[0x1B2741E40](v54);
            sub_1B2112124();

            v100 = v92;
            v101 = v91;
            v102 = v20;
            sub_1B21FDE44(v97);
            sub_1B2112124();

            v55 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v55);

            v64 = sub_1B211F6DC(v56, v57, v58, v59, v60, v61, v62, v63, v88, v89, v90);
            v66 = sub_1B21DC54C(v64, v65, v19);
            MEMORY[0x1B2741E40](v66);
            sub_1B2112124();

            v67 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v67);

            sub_1B21C807C(v25, v19, 0);
            goto LABEL_28;
          }

          v25 = *(v11 + 8 * v27);
          ++v19;
          if (v25)
          {
            v26 = v9;
            v19 = v27;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  v99 = 0;
  memset(v98, 0, sizeof(v98));
  sub_1B212AC5C(v98, &qword_1EB7A2408, &qword_1B225E0F8);
  *v0 = v10;
  v0[1] = v9;
  v0[2] = v11;
LABEL_32:
  sub_1B2111588();
}

{
  sub_1B21DEB78();
}

void sub_1B21DEB78()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v87 = v10;
  sub_1B21619D8(&qword_1EB7A0E70, &unk_1B225D330);
  v11 = sub_1B21325C8();
  *(v11 + 16) = xmmword_1B22546B0;
  v13 = v9[3];
  v12 = v9[4];
  sub_1B21139A0(v9, v13);
  (*(*(v12 + 8) + 8))(v13);
  __src[0] = v3;
  __src[1] = v1;
  LOWORD(__src[2]) = 1;
  __src[3] = v11;
  v14 = v7;
  sub_1B2179374(__src);
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B21DC5F0(__dst, v7, &v90);
  memcpy(v95, __dst, 0xA3uLL);
  sub_1B21356F8(v95);
  v16 = v90;
  v15 = v91;
  v17 = v92;
  sub_1B211EE68(v9, &v90);
  v18 = sub_1B21619D8(qword_1EB7A2410, &qword_1B225E100);
  sub_1B21619D8(&qword_1EB7A2400, &qword_1B225E0F0);
  if (swift_dynamicCast())
  {
    sub_1B21217FC(v88, __dst);
    sub_1B2232B00(v14, v5[1]);
    sub_1B2112124();
    switch(v19)
    {
      case 1:
      case 3:
        goto LABEL_30;
      case 2:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      default:
        if (qword_1ED85D818 == -1)
        {
          goto LABEL_4;
        }

        break;
    }

    while (1)
    {
      sub_1B2112A24();
LABEL_4:
      v84 = v15;
      v85 = v16;
      v86 = v17;
      sub_1B2115F28();
      v20 = *(&xmmword_1ED85D820 + 1);
      v21 = off_1ED85D830;
      v81 = xmmword_1ED85D820;

      v80 = v20;

      sub_1B2113B50();
      v15 = sub_1B21FDA08();
      sub_1B2113B50();
      sub_1B21FD8E0();
      sub_1B2113088();
      if (v22)
      {
        sub_1B211522C();
        v82 = v5;
        v83 = v18;
        v23 = sub_1B22524A0();
        v24 = MEMORY[0x1B2741E40](v23);
        v15 = v25;

        MEMORY[0x1B2741F40](v24, v15);
        v26 = 0;
        v16 = v21;
        v28 = v21[8];
        v27 = (v21 + 8);
        v29 = *(v27 - 32);
        sub_1B21115A0();
        v17 = v31 & v30;
        sub_1B213CF5C();
        while (v17)
        {
LABEL_12:
          sub_1B2114628();
          v33 = *(v16 + 56);
          v5 = sub_1B2122240(v34);
          v15 = sub_1B2252290();
          v35 = sub_1B2111B14();
          v18 = [v35 v36];

          if (v18)
          {

            v37 = sub_1B2113B50();
            v39 = 0;
LABEL_29:
            sub_1B21C807C(v37, v38, v39);
            v17 = v86;
            v16 = v85;
            v15 = v84;
LABEL_30:
            v90 = v16;
            v91 = v15;
            v92 = v17;
            sub_1B21139A0(__dst, __dst[3]);
            v72 = sub_1B2115884();
            v73(v72);
            sub_1B21FD218();
            sub_1B2112124();

            v74 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v74);

            MEMORY[0x1B2741EB0](7173459, 0xE300000000000000);
            swift_getAssociatedTypeWitness();
            sub_1B211D6B0();
            sub_1B2116164();
            AssociationAggregate.forKey(_:)(v75, v76);

            sub_1B2113208(__dst);
            goto LABEL_31;
          }
        }

        while (1)
        {
          v32 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v32 >= v9)
          {

            sub_1B211D9A4();
            v53 = sub_1B22524A0();
            MEMORY[0x1B2741E40](v53);
            sub_1B2112124();

            v90 = v81;
            v91 = v80;
            v92 = v16;
            sub_1B21FDE44(v24);
            sub_1B2112124();

            v54 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v54);

            v55 = sub_1B21DC54C(v79, v83, v82);
            MEMORY[0x1B2741E40](v55);
            sub_1B2112124();

            v56 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v56);

            v37 = sub_1B211187C();
            v39 = 0;
            goto LABEL_29;
          }

          v17 = *&v27[8 * v32];
          ++v26;
          if (v17)
          {
            v26 = v32;
            goto LABEL_12;
          }
        }

        __break(1u);
      }

      else
      {
        __break(1u);
LABEL_35:
        sub_1B2112A24();
LABEL_16:
        v84 = v15;
        v85 = v16;
        v86 = v17;
        sub_1B21225C8();
        sub_1B21234F4();
        sub_1B2124BF0();

        sub_1B2113B50();
        sub_1B21FDA08();
        sub_1B2113B50();
        sub_1B21FD8E0();
        sub_1B2113088();
        if (!v22)
        {
          __break(1u);
          return;
        }

        sub_1B211522C();
        v40 = sub_1B22524A0();
        v15 = v41;
        v42 = MEMORY[0x1B2741E40](v40);
        v44 = v43;

        MEMORY[0x1B2741F40](v42, v44);
        v45 = 0;
        v16 = v17;
        v46 = *(v17 + 64);
        v17 += 64;
        v47 = *(v17 - 32);
        sub_1B21115A0();
        v50 = v49 & v48;
        sub_1B213CF5C();
        while (v50)
        {
          v51 = v45;
LABEL_25:
          v50 &= v50 - 1;
          v52 = *(v16 + 56);
          v15 = sub_1B2122240(v51);
          v5 = sub_1B2252290();
          v18 = sub_1B21143F8(v5, sel_firstMatchInString_options_range_);

          if (v18)
          {

            v37 = sub_1B2113B50();
            v39 = 2;
            goto LABEL_29;
          }
        }

        while (1)
        {
          v51 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v51 >= v9)
          {

            sub_1B211D9A4();
            v57 = sub_1B21131B4();
            MEMORY[0x1B2741E40](v57);
            sub_1B211A2DC();
            v58 = sub_1B21440FC();
            sub_1B21FDE44(v58);
            sub_1B21E1B10();
            v59 = sub_1B2116164();
            MEMORY[0x1B2741EB0](v59);

            v68 = sub_1B211F6DC(v60, v61, v62, v63, v64, v65, v66, v67, v77, v78, v79);
            v70 = sub_1B21DC54C(v68, v69, v45);
            MEMORY[0x1B2741E40](v70);
            sub_1B2112124();

            v71 = sub_1B2113B50();
            MEMORY[0x1B2741EB0](v71);

            v37 = v17;
            v38 = v45;
            v39 = 2;
            goto LABEL_29;
          }

          v50 = *(v17 + 8 * v51);
          ++v45;
          if (v50)
          {
            v45 = v51;
            goto LABEL_25;
          }
        }
      }

      __break(1u);
    }
  }

  v89 = 0;
  memset(v88, 0, sizeof(v88));
  sub_1B212AC5C(v88, &qword_1EB7A2408, &qword_1B225E0F8);
  *v87 = v16;
  v87[1] = v15;
  v87[2] = v17;
LABEL_31:
  sub_1B2111588();
}

uint64_t sub_1B21DF34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);

  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  return result;
}

uint64_t AssociationAggregate.forKey(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = *(v3 + 1);
  v6 = a1[4];
  sub_1B21139A0(a1, a1[3]);
  sub_1B2113B50();
  sub_1B22534D0();
  AssociationAggregate.forKey(_:)(a2, a3);
}

uint64_t sub_1B21DF484(uint64_t a1, const void *a2)
{
  (*(*(*(*v2 + 104) - 8) + 32))(v2 + *(*v2 + 120), a1);
  memcpy((v2 + *(*v2 + 128)), a2, 0xA3uLL);
  return v2;
}

uint64_t sub_1B21DF528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a1;
  v33 = a4;
  v8 = *v4;
  v9 = v8[13];
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v28 - v12;
  v30 = *(v14 - 8);
  v15 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TableAlias();
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0;
  v19 = *(v8[14] + 8);
  v20 = *(*(*(v19 + 8) + 48) + 16);
  v21 = v5 + v8[15];
  v29 = v13;
  v20();
  v22 = v31;
  JoinableRequest.joining<A>(optional:)(v13, a2, v9, a3[3], v19);
  v23 = *(v30 + 8);
  v23(v22, a2);
  (*(v32 + 8))(v29, v9);
  v24 = a3[1];
  v25 = a3[6];
  TableRequest<>.groupByPrimaryKey()();
  v23(v17, a2);
  v26 = *(*v5 + 128);
  memcpy(v35, v5 + v26, 0xA3uLL);
  memcpy(v34, v5 + v26, sizeof(v34));
  sub_1B2127DC0(v35, __dst);
  sub_1B213BBD8(v18, v33);

  memcpy(__dst, v34, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DF7E0()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  memcpy(__dst, (v0 + *(*v0 + 128)), 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DF880()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 120));
  memcpy(__dst, (v0 + *(*v0 + 128)), 0xA3uLL);
  sub_1B21356F8(__dst);
  return v0;
}

uint64_t sub_1B21DF924()
{
  v0 = sub_1B21DF880();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1B21DF978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1B21DF9C0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  (*(**(v0 + 16) + 88))(v4);
  v2(v4);
  memcpy(__dst, v4, 0xA3uLL);
  return sub_1B21356F8(__dst);
}

uint64_t sub_1B21DFA54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
}

uint64_t sub_1B21DFA84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_1B21DFAAC()
{
  v0 = sub_1B21DFA84();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1B21DFADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *v4;
  v9 = *(a3 + 16);
  type metadata accessor for MapPreparation();
  v10 = sub_1B21DF978(v8, a1, a2);
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v10;
}

void *sub_1B21DFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1B21DFBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(v3 + 16) + 88))(__src);
  (*(**(v3 + 24) + 88))(v13, a1, a2, a3);
  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  memcpy(__dst, __src, 0xA3uLL);
  memcpy(v10, v13, 0xA3uLL);
  v8(__dst, v10);
  sub_1B21356F8(v13);
  return sub_1B21356F8(__src);
}

uint64_t sub_1B21DFCAC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];
}

void *sub_1B21DFCE4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t sub_1B21DFD14()
{
  v0 = sub_1B21DFCE4();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B21DFD44@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  type metadata accessor for CombinePreparation();
  v10 = sub_1B21DFB5C(v8, v9, a3, a4);
  a5[1] = 0;
  a5[2] = 0;
  *a5 = v10;
}

void sub_1B21DFF70()
{
  sub_1B2111F14();
  v1 = v0;
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0();
  sub_1B212D6F0(v5);
  sub_1B212D6F0((v4[0] + 16));
  v3[3] = &type metadata for SQLExpression;
  v3[4] = &protocol witness table for SQLExpression;
  v3[0] = sub_1B2116AA0();
  sub_1B212E2E0(v6);
  sub_1B212E2E0((v3[0] + 16));
  sub_1B2127DC0(v5, v2);
  sub_1B2127DC0(v6, v2);
  v1(v4, v3);
  sub_1B2113208(v3);
  sub_1B2113208(v4);
  sub_1B2111588();
}

uint64_t sub_1B21E00C8(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 1);
  sub_1B211EE68(a2, v6);
  sub_1B2113BC0();
  v2 = swift_allocObject();
  sub_1B21217FC(v6, v2 + 16);
  v3 = type metadata accessor for AssociationAggregate();
  sub_1B2122CF8(v3, v4, v3);
}

uint64_t sub_1B21E0184(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  sub_1B211EE68(a1, v6);
  sub_1B2113BC0();
  v2 = swift_allocObject();
  sub_1B21217FC(v6, v2 + 16);
  v3 = type metadata accessor for AssociationAggregate();
  sub_1B2122CF8(v3, v4, v3);
}

uint64_t sub_1B21E0290(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  memcpy((v6[0] + 16), __src, 0xA3uLL);
  sub_1B2127DC0(__dst, v5);
  == infix(_:_:)(v6, a2);
  return sub_1B2113208(v6);
}

uint64_t sub_1B21E0358(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  memcpy((v6[0] + 16), __src, 0xA3uLL);
  sub_1B2127DC0(__dst, v5);
  == infix(_:_:)(a2, v6);
  return sub_1B2113208(v6);
}

uint64_t sub_1B21E0478(uint64_t *a1, char a2)
{
  sub_1B211F3B0(a1);
  *(swift_allocObject() + 16) = a2;
  v3 = type metadata accessor for AssociationAggregate();
  sub_1B2122CF8(v3, v4, v3);
}

uint64_t sub_1B21E0504(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = swift_allocObject();
  memcpy((v7[0] + 16), __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  sub_1B2127DC0(__dst, &v5);
  == infix(_:_:)(v7, a2);
  ! prefix(_:)(v6);
  sub_1B2113208(v6);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E0610(char a1, uint64_t *a2)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  *(swift_allocObject() + 16) = a1;
  v2 = type metadata accessor for AssociationAggregate();
  sub_1B2122CF8(v2, v3, v2);
}

uint64_t sub_1B21E06A8(void *__src, char a2)
{
  memcpy(__dst, __src, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = swift_allocObject();
  memcpy((v7[0] + 16), __src, 0xA3uLL);
  v6[3] = &type metadata for SQLExpression;
  v6[4] = &protocol witness table for SQLExpression;
  v6[0] = swift_allocObject();
  sub_1B2127DC0(__dst, &v5);
  == infix(_:_:)(a2, v7);
  ! prefix(_:)(v6);
  sub_1B2113208(v6);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E07CC()
{
  sub_1B212CE98();
  sub_1B212E2E0(v6);
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0();
  sub_1B212E2E0((v5[0] + 16));
  sub_1B211EE68(v1, v4);
  sub_1B2127DC0(v6, &v3);
  v0(v5, v4);
  sub_1B212AC5C(v4, &qword_1EB7A10F0, &qword_1B225D320);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E08A4(void *__src, uint64_t a2, void (*a3)(_BYTE *, uint64_t *))
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B211EE68(a2, v8);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0();
  memcpy((v7[0] + 16), __dst, 0xA3uLL);
  sub_1B2127DC0(__dst, &v6);
  a3(v8, v7);
  sub_1B212AC5C(v8, &qword_1EB7A10F0, &qword_1B225D320);
  return sub_1B2113208(v7);
}

uint64_t sub_1B21E09A4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, _BYTE *))
{
  sub_1B212D6F0(v10);
  v9[3] = &type metadata for SQLExpression;
  v9[4] = &protocol witness table for SQLExpression;
  v9[0] = sub_1B2116AA0();
  sub_1B212D6F0((v9[0] + 16));
  sub_1B211EE68(a2, v8);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0();
  sub_1B2127DC0(v10, v6);
  a3(v9, v8);
  ! prefix(_:)(v7);
  sub_1B212AC5C(v8, &qword_1EB7A10F0, &qword_1B225D320);
  sub_1B2113208(v7);
  return sub_1B2113208(v9);
}

uint64_t sub_1B21E0ABC(void *__src, uint64_t a2, void (*a3)(_BYTE *, uint64_t *))
{
  memcpy(__dst, __src, 0xA3uLL);
  sub_1B211EE68(a2, v9);
  v8[3] = &type metadata for SQLExpression;
  v8[4] = &protocol witness table for SQLExpression;
  v8[0] = sub_1B2116AA0();
  memcpy((v8[0] + 16), __dst, 0xA3uLL);
  v7[3] = &type metadata for SQLExpression;
  v7[4] = &protocol witness table for SQLExpression;
  v7[0] = sub_1B2116AA0();
  sub_1B2127DC0(__dst, v6);
  a3(v9, v8);
  ! prefix(_:)(v7);
  sub_1B212AC5C(v9, &qword_1EB7A10F0, &qword_1B225D320);
  sub_1B2113208(v7);
  return sub_1B2113208(v8);
}

uint64_t sub_1B21E0D48(uint64_t a1, void (*a2)(uint64_t *))
{
  sub_1B213CCB0(v6);
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0();
  sub_1B213CCB0((v5[0] + 16));
  sub_1B2127DC0(v6, v4);
  a2(v5);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E0EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v9 = *(a1 + 8);
  v6 = v4;
  v7 = *(a2 + 8);
  return sub_1B21DFD44(&v8, &v6, a3, 0, a4);
}

uint64_t sub_1B21E0F8C()
{
  sub_1B212CE98();
  sub_1B212E2E0(v5);
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0();
  sub_1B212E2E0((v4[0] + 16));
  sub_1B2127DC0(v5, v3);
  v0(v1, v4);
  return sub_1B2113208(v4);
}

uint64_t ?? infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  sub_1B211EE68(a2, &v9);
  v6 = swift_allocObject();
  sub_1B21217FC(&v9, v6 + 16);
  v7 = type metadata accessor for AssociationAggregate();
  sub_1B21DFADC(sub_1B21E18A8, v6, v7, &v14);

  v9 = v14;
  v10 = v15;
  sub_1B2135E94(sub_1B21E18D4, v7, a3);
}

uint64_t sub_1B21E1148()
{
  sub_1B212CE98();
  sub_1B212E2E0(v5);
  v4[3] = &type metadata for SQLExpression;
  v4[4] = &protocol witness table for SQLExpression;
  v4[0] = sub_1B2116AA0();
  sub_1B212E2E0((v4[0] + 16));
  sub_1B2127DC0(v5, v3);
  v0(v4, v1);
  return sub_1B2113208(v4);
}

uint64_t sub_1B21E11DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  return result;
}

uint64_t sub_1B21E1274(uint64_t a1, void (*a2)(uint64_t *))
{
  v5[3] = &type metadata for SQLExpression;
  v5[4] = &protocol witness table for SQLExpression;
  v5[0] = sub_1B2116AA0();
  sub_1B213CCB0(v6);
  sub_1B213CCB0((v5[0] + 16));
  sub_1B2127DC0(v6, v4);
  a2(v5);
  return sub_1B2113208(v5);
}

uint64_t sub_1B21E1328@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  sub_1B211F3B0(a1);
  v5 = type metadata accessor for AssociationAggregate();
  return sub_1B21DFADC(a2, 0, v5, a3);
}

uint64_t sub_1B21E18F4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E1980(uint64_t a1)
{
  v1 = *(a1 + 104);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21E1B10()
{
}

uint64_t sub_1B21E1B4C()
{
  v3 = *(v0 + 8);

  return sub_1B2232B00(v1, v3);
}

void sub_1B21E1B6C()
{

  JUMPOUT(0x1B2741F40);
}

Swift::Void __swiftcall SQLInterpolation.appendInterpolation(sql:arguments:)(Swift::String sql, GRDBInternal::StatementArguments arguments)
{
  v3 = *arguments.values._rawValue;
  v4 = *(arguments.values._rawValue + 1);
  __src = sql;
  v16 = v3;
  v17 = v4;
  sub_1B2114CC4(&__src);

  sub_1B2127D18();
  v5 = *(*v2 + 16);
  sub_1B21277F4();
  sub_1B2115E28(v6, v7, v8, v9, v10, v11, v12, v13, v14, __src._countAndFlagsBits);
  *v2 = v3;
}

Swift::Void __swiftcall SQLInterpolation.appendInterpolation(literal:)(GRDBInternal::SQL literal)
{
  v1 = *literal.elements._rawValue;

  sub_1B216CFB4(v2);
}

uint64_t HasOneThroughAssociation._sqlAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t sub_1B21E1CBC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21E1CF8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void (*sub_1B21E1D3C(void *a1))(void *a1)
{
  v2 = sub_1B2170FB8(0x28uLL);
  *a1 = v2;
  v2[4] = HasOneThroughAssociation._sqlAssociation.modify();
  return sub_1B2171E40;
}

uint64_t sub_1B21E1D98(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B21E1DD4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B21E1E10()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E1E64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for ValueReducers.Trace();
  v13 = (a7 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  v14 = (a7 + *(result + 40));
  *v14 = a4;
  v14[1] = a5;
  return result;
}

uint64_t ValueReducers.Trace._fetch(_:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(a2 + 36);
  v6 = *(v5 + 8);
  (*v5)();
  return (*(*(*(a2 + 24) + 8) + 24))(a1, *(a2 + 16));
}

uint64_t ValueReducers.Trace._value(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(*(a2 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1B2252B00();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - v13;
  (*(v8 + 32))(a1, v7, v8);
  if (sub_1B2122A98(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v15 = 1;
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 32))(a3, v14, AssociatedTypeWitness);
    v16 = v3 + *(a2 + 40);
    v17 = *(v16 + 8);
    (*v16)(a3);
    v15 = 0;
  }

  return sub_1B21117B4(a3, v15, 1, AssociatedTypeWitness);
}

uint64_t sub_1B21E213C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B21E2194(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_1B2173DAC();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B21E221C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1B2122A98(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1B21E2360(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1B21117B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B21E2558(uint64_t a1)
{
  v1 = *(a1 + 88);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1B21E263C()
{
  sub_1B2111F14();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1B21E2E58();
  sub_1B2111588();
}

void sub_1B21E26C4()
{
  sub_1B2111F14();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  v5 = *(*v0 + 104);
  v6 = *(v5 + 8);
  v7 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B211280C(AssociatedTypeWitness);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v33 - v13;
  v14 = v0[5];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  *&v15 = *(v4 + 96);
  *&v16 = *(v4 + 80);
  *(&v16 + 1) = v7;
  *(&v15 + 1) = v5;
  v49 = v16;
  v50 = v15;
  v52[0] = v16;
  v52[1] = v15;
  v17 = type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks();
  v18 = sub_1B2252B00();
  v52[0] = v49;
  v52[1] = v50;
  type metadata accessor for ValueWriteOnlyObserver.DatabaseAccess();
  sub_1B2252B00();
  sub_1B21180CC();
  sub_1B21E2BF4(sub_1B21E3B08, 0, sub_1B21E8734);
  memcpy(v55, v52, 0x60uLL);
  v19 = v55[10];
  if (!v55[10])
  {
    goto LABEL_8;
  }

  v34 = AssociatedTypeWitness;
  v36 = v4;
  *&v49 = v3;
  v20 = v53;
  v38 = v55[1];
  v39 = v55[0];
  v40 = v55[3];
  v41 = v55[2];
  v42 = v55[5];
  v43 = v55[4];
  v44 = v55[7];
  v45 = v55[6];
  v46 = v55[9];
  v47 = v55[8];
  *&v50 = v55[11];
  if (!v53)
  {
    memcpy(v52, v55, sizeof(v52));
    (*(*(v17 - 8) + 16))(&v51, v52, v17);
    sub_1B2112F4C(v39);
    sub_1B2112F4C(v41);
    sub_1B2112F4C(v43);
    sub_1B2112F4C(v45);
    sub_1B2112F4C(v47);

LABEL_8:
    sub_1B2252EC0();
    __break(1u);
    return;
  }

  v21 = v54;
  v22 = *(v18 - 8);
  v23 = *(v22 + 16);
  v48 = v18;
  v23(v52, v55, v18);
  v37 = v21;
  sub_1B21E8750(v20);

  v24 = v1[2];
  v25 = v24[5];
  v26 = v24[6];
  sub_1B21139A0(v24 + 2, v25);
  if ((*(v26 + 16))(v25, v26))
  {
    v27 = v35;
    sub_1B21E3C20();
    v28 = v49;
    v19(v27);
    (*(v33 + 8))(v27, v34);
  }

  else
  {
    sub_1B21E3D14();
    v28 = v49;
  }

  v29 = type metadata accessor for AnyDatabaseCancellable();
  *&v52[0] = v1;

  v30 = sub_1B21E9F54(v52, v29, v36, &off_1F2971F88);
  v28[3] = v29;
  v28[4] = &protocol witness table for AnyDatabaseCancellable;
  v31 = v48;
  v32 = v45;
  swift_unknownObjectRelease();
  *v28 = v30;
  sub_1B2112F4C(v39);
  sub_1B2112F4C(v41);
  sub_1B2112F4C(v43);
  sub_1B2112F4C(v32);
  sub_1B2112F4C(v47);

  sub_1B21E8464(v20);
  (*(v22 + 8))(v55, v31);
  sub_1B2111588();
}

id sub_1B21E2C6C()
{
  sub_1B211441C();
  v3(v11, [v2 lock]);
  sub_1B2111688();
  result = sub_1B2122A2C(v4);
  if (!v0)
  {
    v6 = v12;
    v7 = v11[1];
    v8 = v11[2];
    v9 = v11[3];
    v10 = v11[4];
    *v1 = v11[0];
    *(v1 + 16) = v7;
    *(v1 + 32) = v8;
    *(v1 + 48) = v9;
    *(v1 + 64) = v10;
    *(v1 + 80) = v6;
  }

  return result;
}

uint64_t sub_1B21E2CFC()
{
  sub_1B2113094();
  v2(&v6, [v1 lock]);
  sub_1B2111688();
  sub_1B2122040(v3);
  if (!v0)
  {
    v4 = v6;
  }

  return v4 & 1;
}

id sub_1B21E2D6C()
{
  sub_1B211441C();
  v3(v6, [v2 lock]);
  sub_1B2111688();
  if (v0)
  {
    return sub_1B2122A2C(v4);
  }

  sub_1B2122A2C(v4);
  return memcpy(v1, v6, 0x50uLL);
}

id sub_1B21E2DEC()
{
  sub_1B2113094();
  v2(&v5, [v1 lock]);
  sub_1B2111688();
  if (v0)
  {
    return sub_1B2122040(v3);
  }

  sub_1B2122040(v3);
  return v5;
}

void sub_1B21E2E58()
{
  sub_1B2111F14();
  v1 = v0;
  v105 = v2;
  v93 = v3;
  v5 = v4;
  v7 = v6;
  v106 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *v1;
  v100 = sub_1B2252A10();
  v17 = sub_1B211280C(v100);
  v99 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1B2111844();
  sub_1B21183D4(v22 - v21);
  v97 = sub_1B22529C0();
  v23 = sub_1B21118A0(v97);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1B2111844();
  sub_1B21183D4(v27 - v26);
  v95 = sub_1B2252120();
  v28 = sub_1B211280C(v95);
  v94 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1B2115CBC();
  v77 = v32;
  MEMORY[0x1EEE9AC00](v33);
  sub_1B21183D4(&v77 - v34);
  v85 = type metadata accessor for Configuration();
  v35 = sub_1B21118A0(v85);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1B2115CBC();
  v84 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v83 = &v77 - v40;
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0;
  v78 = v16[10];
  v41 = v78;
  v104 = v16[11];
  v42 = v104;
  v80 = v16[12];
  v43 = v80;
  v82 = v16[13];
  v44 = v82;
  *(v1 + 176) = 1;
  *(v1 + 184) = 0;
  *(v1 + 16) = v13;
  *(v1 + 24) = v11;
  *(v1 + 32) = v9;
  v45 = sub_1B21E3620(v7, v41, v42, v43, v44);
  v47 = *(v1 + 56);
  v46 = *(v1 + 64);
  v48 = *(v1 + 72);
  v81 = v15;
  *(v1 + 56) = v15;
  *(v1 + 64) = v45;
  *(v1 + 72) = v49;
  v101 = v13;

  swift_unknownObjectRetain();
  sub_1B21E8464(v47);
  v51 = *v5;
  v50 = v5[1];
  v53 = v5[2];
  v52 = v5[3];
  v54 = v5[4];
  v55 = v5[5];
  v56 = v5[6];
  v57 = v5[7];
  v58 = v5[9];
  v102 = v5[8];
  v103 = v56;
  memcpy(v111, (v1 + 80), 0x60uLL);
  memcpy((v1 + 80), v5, 0x50uLL);
  v59 = v105;
  *(v1 + 160) = v93;
  *(v1 + 168) = v59;

  v88 = v51;
  v86 = v50;
  sub_1B2112328(v51);
  v90 = v53;
  v87 = v52;
  sub_1B2112328(v53);
  v92 = v54;
  v89 = v55;
  sub_1B2112328(v54);
  v91 = v57;
  sub_1B2112328(v103);
  v93 = v58;
  sub_1B2112328(v102);
  v60 = v78;
  v61 = v104;
  v107 = v78;
  v108 = v104;
  v62 = v80;
  v109 = v80;
  v110 = v82;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks();
  v63 = sub_1B2252B00();
  sub_1B21118A0(v63);
  (*(v64 + 8))(v111);
  v65 = *(*v1 + 176);
  v82 = *(v61 - 8);
  (*(v82 + 16))(v1 + v65, v106, v61);
  v66 = *(v62 + 8);
  v67 = *(v66 + 8);
  v68 = v83;
  v67(v60, v66);
  v69 = *(v68 + 8);
  if (*(v68 + 16))
  {
    v70 = *(v68 + 16);
  }

  else
  {
    v69 = 1111773767;
    v70 = 0xE400000000000000;
  }

  v107 = v69;
  v108 = v70;

  MEMORY[0x1B2741EB0](0xD000000000000011, 0x80000001B226F150);

  v80 = v107;
  v79 = v108;
  sub_1B2133D70(v68);
  v71 = v66;
  v72 = v84;
  v67(v60, v71);
  if (*(v72 + *(v85 + 68)))
  {
    v73 = v77;
    sub_1B2252A20();
    (*(v94 + 32))(v96, v73, v95);
  }

  else
  {
    (*(v94 + 16))(v96, v72 + *(v85 + 64), v95);
  }

  sub_1B21E8558(0, &qword_1ED85E778, 0x1E69E9610);
  sub_1B2133D70(v72);
  v107 = MEMORY[0x1E69E7CC0];
  sub_1B21202AC(&qword_1ED85E780, MEMORY[0x1E69E8030]);
  sub_1B21619D8(&qword_1EB7A21A0, &unk_1B225E830);
  sub_1B21E8598(&qword_1ED85E788, &qword_1EB7A21A0, &unk_1B225E830);
  sub_1B2252BC0();
  (*(v99 + 104))(v98, *MEMORY[0x1E69E8090], v100);
  v74 = sub_1B2252A70();

  sub_1B21166C8();
  sub_1B2112F4C(v75);
  sub_1B2112F4C(v90);
  sub_1B2112F4C(v92);
  sub_1B2112F4C(v103);
  sub_1B2112F4C(v102);

  swift_unknownObjectRelease();
  sub_1B2117D58(&v111[16]);
  v76(v106, v104);
  *(v1 + 48) = v74;
  sub_1B2111588();
}

uint64_t (*sub_1B21E3620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  *(v13 + 5) = a5;
  (*(v9 + 32))(&v13[v12], v11, a3);
  return sub_1B21E85EC;
}

uint64_t *sub_1B21E3750()
{
  v1 = *v0;
  v2 = v0[2];

  sub_1B21E865C(v0[4]);

  v3 = v0[8];
  v4 = v0[9];
  sub_1B21E8464(v0[7]);
  v6 = v0[21];
  sub_1B21E866C(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16], v0[17], v0[18], v0[19], v0[20]);
  sub_1B21E7918(v0[22]);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 176));
  return v0;
}

uint64_t sub_1B21E3828()
{
  sub_1B21E3750();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B21E3898()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E38D4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21E38F8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 9))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21E3958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B21E39C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E3A04(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B21E3A44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B21E3AB4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B21E3B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, a1 + 10, sizeof(__dst));
  memcpy(a2, a1 + 10, 0x60uLL);
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  a2[12] = v5;
  a2[13] = v6;
  a2[14] = v7;
  v8 = *(v4 + 96);
  v11[0] = *(v4 + 80);
  v11[1] = v8;
  type metadata accessor for ValueWriteOnlyObserver.NotificationCallbacks();
  v9 = sub_1B2252B00();
  (*(*(v9 - 8) + 16))(v11, __dst, v9);
  return sub_1B21E8750(v5);
}

uint64_t sub_1B21E3C20()
{
  v1 = *(*v0 + 96);
  v2 = *(v1 + 64);
  v3 = *(*v0 + 80);
  v4 = *(*(*v0 + 104) + 8);
  v5 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v2(sub_1B21E8790, v0, AssociatedTypeWitness, v3, v1);
}

uint64_t sub_1B21E3D14()
{
  v1 = *(*v0 + 96);
  v2 = *(v1 + 56);
  v3 = *(*v0 + 80);

  v2(sub_1B21E87E4, v0, v3, v1);
}

uint64_t sub_1B21E3DC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = *(*a2 + 88);
  v23 = *(*(*a2 + 104) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1B2252B00();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v21 - v15;
  result = sub_1B21E40AC(a1, v12);
  if (!v3)
  {
    v21[0] = v8;
    v21[1] = v6;
    v18 = v22;
    if (sub_1B2122A98(v12, 1, AssociatedTypeWitness) == 1)
    {
      (*(v18 + 8))(v12, v21[0]);
      result = sub_1B2252EC0();
      __break(1u);
    }

    else
    {
      v19 = (*(v13 + 32))(v16, v12, AssociatedTypeWitness);
      v20 = a2[6];
      MEMORY[0x1EEE9AC00](v19);
      swift_getAssociatedTypeWitness();
      sub_1B2252A50();
      return (*(v13 + 8))(v16, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t sub_1B21E40AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v52 = a1;
  v54 = a2;
  v5 = *v2;
  v6 = *(*v2 + 104);
  v7 = *(v6 + 8);
  v8 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v41 - v13;
  v14 = v2[5];
  sub_1B21E8558(0, &qword_1EB7A2798, 0x1E696AD10);
  sub_1B2161A20(&qword_1EB7A27A0, &qword_1B2260EA0);
  type metadata accessor for Database();
  v55 = AssociatedTypeWitness;
  swift_getFunctionTypeMetadata1();
  sub_1B2252B00();
  swift_getTupleTypeMetadata2();
  sub_1B21E2BF4(sub_1B21E58F8, 0, sub_1B21E87C8);
  v15 = v66;
  v16 = v68;
  if (!v68)
  {
    if (v58 != 1)
    {
      v23 = v64;
      v24 = v62;
      v25 = v60;
      sub_1B2112F4C(v58);
      sub_1B2112F4C(v25);
      sub_1B2112F4C(v24);
      sub_1B2112F4C(v23);
      sub_1B2112F4C(v15);
      v20 = v55;
      goto LABEL_11;
    }

    v19 = 0;
LABEL_6:
    v20 = v55;
    sub_1B2112F4C(v19);
LABEL_11:
    v26 = v54;
    v27 = 1;
    v28 = v20;
    return sub_1B21117B4(v26, v27, 1, v28);
  }

  v41 = v59;
  v42 = v60;
  v48 = v61;
  v43 = v62;
  v44 = v63;
  v45 = v64;
  v46 = v65;
  v47 = v67;
  v17 = v69;
  v53 = v58;
  v18 = swift_allocObject();
  v18[2] = *(v5 + 80);
  v18[3] = v8;
  v18[4] = *(v5 + 96);
  v18[5] = v6;
  v18[6] = v16;
  v18[7] = v17;
  v19 = sub_1B21E89C8;
  if (v53 == 1)
  {
    goto LABEL_6;
  }

  v21 = v4[4];
  if (v21 < 2)
  {
    sub_1B211B358();
    v70 = sub_1B2252190();
    MEMORY[0x1EEE9AC00](v70);
    *(&v41 - 4) = v52;
    *(&v41 - 3) = v4;
    *(&v41 - 2) = sub_1B21E89C8;
    *(&v41 - 1) = v18;
    v22 = v55;
    sub_1B2237994(&v70, sub_1B21E78E4);
    if (v3)
    {

      sub_1B2112F4C(sub_1B21E89C8);
      sub_1B2112F4C(v53);
      sub_1B2112F4C(v42);
      sub_1B2112F4C(v43);
      sub_1B2112F4C(v45);
      return sub_1B2112F4C(v15);
    }

    if (v70)
    {
      v33 = sub_1B21E79E0(v70);
    }

    else
    {
      v33 = 0;
    }

    v56 = v33;
    sub_1B21C9D20(&v57);

    v36 = v57;
    v37 = v42;
    if (v42)
    {
      v42(&v57);
    }

    v57 = v36;
    sub_1B21E5ADC(v52, &v57);
    sub_1B2112F4C(sub_1B21E89C8);
    sub_1B2112F4C(v53);
    sub_1B2112F4C(v37);
    sub_1B2112F4C(v43);
    sub_1B2112F4C(v45);
    sub_1B2112F4C(v15);

    v38 = v54;
    (*(v49 + 32))(v54, v51, v22);
    goto LABEL_29;
  }

  v29 = MEMORY[0x1EEE9AC00](*(v4 + 24));
  *(&v41 - 8) = v30;
  *(&v41 - 7) = v8;
  *(&v41 - 6) = v31;
  *(&v41 - 5) = v6;
  *(&v41 - 4) = sub_1B21E89C8;
  *(&v41 - 3) = v18;
  v32 = v52;
  *(&v41 - 2) = v52;
  v22 = v55;
  sub_1B212B00C(v29, sub_1B21E8998, (&v41 - 10), v55, v50);
  if (!v3)
  {

    sub_1B21CAAC0(v32, v21, &v70);
    sub_1B21E865C(v21);
    if (v70)
    {
      v35 = sub_1B21E79E0(v70);
    }

    else
    {
      v35 = 0;
    }

    v57 = v35;
    sub_1B21C9D20(&v70);

    v39 = v70;
    v40 = v42;
    if (v42)
    {
      v42(&v70);
    }

    v70 = v39;
    sub_1B21E5ADC(v52, &v70);
    sub_1B2112F4C(sub_1B21E89C8);
    sub_1B2112F4C(v53);
    sub_1B2112F4C(v40);
    sub_1B2112F4C(v43);
    sub_1B2112F4C(v45);
    sub_1B2112F4C(v15);

    v38 = v54;
    (*(v49 + 32))(v54, v50, v22);
LABEL_29:
    v26 = v38;
    v27 = 0;
    v28 = v22;
    return sub_1B21117B4(v26, v27, 1, v28);
  }

  sub_1B2112F4C(v53);
  sub_1B2112F4C(v42);
  sub_1B2112F4C(v43);
  sub_1B2112F4C(v45);
  sub_1B2112F4C(v15);
  return sub_1B2112F4C(sub_1B21E89C8);
}

uint64_t sub_1B21E4ABC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*(*a1 + 104) + 8);
  v7 = *(*a1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1B2252B00();
  v15 = *(v9 - 8);
  v10 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = *(v5 + 176);
  swift_beginAccess();
  (*(v6 + 32))(a2, v7, v6);
  swift_endAccess();
  if (sub_1B2122A98(v12, 1, AssociatedTypeWitness) != 1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 32))(a3, v12, AssociatedTypeWitness);
  }

  (*(v15 + 8))(v12, v9);
  result = sub_1B2252EC0();
  __break(1u);
  return result;
}