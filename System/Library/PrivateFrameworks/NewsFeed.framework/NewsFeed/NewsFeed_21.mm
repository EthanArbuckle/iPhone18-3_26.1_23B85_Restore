uint64_t sub_1D5D250C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D25108@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FormatOption();
  v2 = swift_projectBox();
  return sub_1D5D25664(v2, a1, type metadata accessor for FormatOption);
}

uint64_t sub_1D5D251EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25254(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D252BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2538C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D253F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2545C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D254C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2552C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D255FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D25664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D256CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2572C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D5D257B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatOption();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v27 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v27 - v14);
  v2[2] = *a1;
  sub_1D5D25108(&v27 - v14);
  v30 = v15[2];

  v17 = sub_1D5D25A0C(v16);
  v19 = v18;
  if (v18 >= 2)
  {
    v28 = 36;
    v29 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](*v15, v15[1]);
    MEMORY[0x1DA6F9910](61, 0xE100000000000000);
    MEMORY[0x1DA6F9910](v17, v19);
    sub_1D5D25B88(v17, v19);
    v17 = v28;
    v19 = v29;
  }

  sub_1D5D25B9C(v15);
  v2[3] = v17;
  v2[4] = v19;
  sub_1D5D25108(v11);
  v30 = v11[2];
  v20 = sub_1D5D25BF8();
  if (v20 == 2)
  {
    v21 = 0;
    v22 = 0;
  }

  else if (v20 == 3 || (v20 & 1) == 0)
  {
    v21 = 0;
    v22 = 1;
  }

  else
  {
    v28 = 36;
    v29 = 0xE100000000000000;
    MEMORY[0x1DA6F9910](*v11, v11[1]);
    MEMORY[0x1DA6F9910](0x7974706D4573692ELL, 0xE800000000000000);
    v21 = v28;
    v22 = v29;
  }

  sub_1D5D25B9C(v11);
  v2[5] = v21;
  v2[6] = v22;
  v28 = 36;
  v29 = 0xE100000000000000;
  sub_1D5D25108(v7);

  v23 = *v7;
  v24 = v7[1];

  sub_1D5D25B9C(v7);
  MEMORY[0x1DA6F9910](v23, v24);

  MEMORY[0x1DA6F9910](0x7374736978652ELL, 0xE700000000000000);
  v25 = v29;
  v2[7] = v28;
  v2[8] = v25;
  return v2;
}

uint64_t sub_1D5D25A0C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 0xD)
  {
    if (((1 << v3) & 0x3EEC) != 0)
    {
      return 0;
    }

    if (v3 == 4)
    {
      if (!*(*((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) + 16))
      {
        sub_1D5E4049C();
        return sub_1D7263ADC();
      }

      return 0;
    }

    if (v3 == 8)
    {
      return sub_1D5D25A0C(a1);
    }
  }

  if (v3)
  {
    v5 = (v2 & 0xFFFFFFFFFFFFFFFLL);
    if (!*(v5[6] + 16))
    {
      v7 = v5[4];
      v6 = v5[5];
      v8 = v5[2];
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](46, 0xE100000000000000);
      MEMORY[0x1DA6F9910](v7, v6);

      return v8;
    }

    return 0;
  }

  if (*(*(v2 + 24) + 16))
  {
    return 0;
  }

  if (*(v2 + 16))
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D5D25B88(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D5D25B9C(uint64_t a1)
{
  v2 = type metadata accessor for FormatOption();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D25BF8()
{
  v1 = *v0 >> 60;
  result = 3;
  if (((1 << v1) & 0x3EDF) == 0)
  {
    if (v1 == 5)
    {
      if (*(*((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x20) + 16))
      {
        return 2;
      }

      else
      {
        v3 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v4 = *((*v0 & 0xFFFFFFFFFFFFFFFLL) + 0x10) & 0xFFFFFFFFFFFFLL;
        if ((v3 & 0x2000000000000000) != 0)
        {
          v4 = HIBYTE(v3) & 0xF;
        }

        return v4 == 0;
      }
    }

    else
    {
      return sub_1D5D25BF8(3);
    }
  }

  return result;
}

void sub_1D5D25C90()
{
  if (!qword_1EDF1A448)
  {
    type metadata accessor for FormatOptionElement();
    v0 = sub_1D726413C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A448);
    }
  }
}

uint64_t sub_1D5D25CF8(uint64_t a1, char a2, void (*a3)(void))
{
  v4 = v3;
  v6 = *v3;
  a3(0);
  v35 = a2;
  result = sub_1D726410C();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D7264A0C();
      sub_1D72621EC();
      result = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1D5D25FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v119 = a1;
  v117 = a3;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v112 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v114 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v116 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v113 = &v111 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v115 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v111 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v111 - v31;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v111 - v35;
  sub_1D5B54CB8(0, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v111 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  MEMORY[0x1EEE9AC00](v49, v50);
  v52 = &v111 - v51;
  MEMORY[0x1EEE9AC00](v53, v54);
  v58 = &v111 - v55;
  if (a4 >= 3.0)
  {
    sub_1D5D27018(a2, &v111 - v55, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v60 = sub_1D725A3AC();
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(v58, 1, v60) != 1)
    {
      sub_1D5D27018(v58, v52, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v67 = (*(v61 + 88))(v52, v60);
      if (v67 == *MEMORY[0x1E69D7380])
      {
        v68 = v118;
        v69 = v118[5];
        if ((~v69 & 0xF000000000000007) != 0)
        {
          v85 = v120;
          sub_1D5D27084(v119, v69, v36);
          if (!v85)
          {
            v86 = sub_1D72585BC();
            v87 = *(v86 - 8);
            (*(v87 + 56))(v36, 0, 1, v86);
            (*(v87 + 32))(v117, v36, v86);
          }
        }

        else
        {
          v70 = sub_1D72585BC();
          v71 = *(v70 - 8);
          (*(v71 + 56))(v36, 1, 1, v70);
          sub_1D5D27084(v119, v68[2], v117);
          if ((*(v71 + 48))(v36, 1, v70) != 1)
          {
            sub_1D5D28540(v36, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7388])
      {
        v81 = v118;
        v82 = v118[11];
        if ((~v82 & 0xF000000000000007) != 0)
        {
          v101 = v120;
          sub_1D5D27084(v119, v82, v32);
          if (!v101)
          {
            v102 = sub_1D72585BC();
            v103 = *(v102 - 8);
            (*(v103 + 56))(v32, 0, 1, v102);
            (*(v103 + 32))(v117, v32, v102);
          }
        }

        else
        {
          v83 = sub_1D72585BC();
          v84 = *(v83 - 8);
          (*(v84 + 56))(v32, 1, 1, v83);
          sub_1D5D27084(v119, v81[2], v117);
          if ((*(v84 + 48))(v32, 1, v83) != 1)
          {
            sub_1D5D28540(v32, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      if (v67 == *MEMORY[0x1E69D7390])
      {
        v94 = v118;
        v95 = v118[14];
        if ((~v95 & 0xF000000000000007) != 0)
        {
          v105 = v120;
          sub_1D5D27084(v119, v95, v28);
          if (!v105)
          {
            v106 = sub_1D72585BC();
            v107 = *(v106 - 8);
            (*(v107 + 56))(v28, 0, 1, v106);
            (*(v107 + 32))(v117, v28, v106);
          }
        }

        else
        {
          v96 = sub_1D72585BC();
          v97 = *(v96 - 8);
          (*(v97 + 56))(v28, 1, 1, v96);
          sub_1D5D27084(v119, v94[2], v117);
          if ((*(v97 + 48))(v28, 1, v96) != 1)
          {
            sub_1D5D28540(v28, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          }
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      (*(v61 + 8))(v52, v60);
    }

    v62 = v118[2];
    goto LABEL_9;
  }

  if (a4 >= 2.0)
  {
    v63 = a2;
    v64 = v57;
    sub_1D5D27018(v63, v57, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v65 = sub_1D725A3AC();
    v66 = *(v65 - 8);
    if ((*(v66 + 48))(v64, 1, v65) != 1)
    {
      v58 = v64;
      sub_1D5D27018(v64, v46, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      v75 = (*(v66 + 88))(v46, v65);
      v76 = v118;
      if (v75 == *MEMORY[0x1E69D7380])
      {
        v77 = v118[4];
        if ((~v77 & 0xF000000000000007) != 0)
        {
          v98 = v120;
          sub_1D5D27084(v119, v77, v24);
          if (!v98)
          {
            v99 = sub_1D72585BC();
            v100 = *(v99 - 8);
            (*(v100 + 56))(v24, 0, 1, v99);
            (*(v100 + 32))(v117, v24, v99);
          }

          return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
        }

        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        (*(v79 + 56))(v24, 1, 1, v78);
        v80 = v76[1];
        goto LABEL_57;
      }

      if (v75 == *MEMORY[0x1E69D7388])
      {
        v90 = v118[10];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v115;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v115;
        (*(v92 + 56))(v115, 1, 1, v91);
      }

      else
      {
        if (v75 != *MEMORY[0x1E69D7390])
        {
          (*(v66 + 8))(v46, v65);
          v62 = v76[1];
          goto LABEL_9;
        }

        v90 = v118[13];
        if ((~v90 & 0xF000000000000007) != 0)
        {
          v104 = v113;
          goto LABEL_64;
        }

        v91 = sub_1D72585BC();
        v92 = *(v91 - 8);
        v93 = v113;
        (*(v92 + 56))(v113, 1, 1, v91);
      }

      sub_1D5D27084(v119, v76[1], v117);
      if ((*(v92 + 48))(v93, 1, v91) != 1)
      {
        sub_1D5D28540(v93, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v64;
    v62 = v118[1];
  }

  else
  {
    if (a4 < 1.0)
    {
      return sub_1D5D25FB0(v119, a2, 3.0);
    }

    v72 = v56;
    sub_1D5D27018(a2, v56, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v73 = sub_1D725A3AC();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v72, 1, v73) == 1)
    {
      sub_1D5D27084(v119, *v118, v117);
      v58 = v72;
      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    v58 = v72;
    sub_1D5D27018(v72, v40, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    v88 = (*(v74 + 88))(v40, v73);
    v89 = v118;
    if (v88 == *MEMORY[0x1E69D7380])
    {
      v90 = v118[3];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v116;
        (*(v79 + 56))(v116, 1, 1, v78);
LABEL_56:
        v80 = *v89;
LABEL_57:
        sub_1D5D27084(v119, v80, v117);
        if ((*(v79 + 48))(v24, 1, v78) != 1)
        {
          sub_1D5D28540(v24, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
      }

      v104 = v116;
      goto LABEL_64;
    }

    if (v88 == *MEMORY[0x1E69D7388])
    {
      v90 = v118[9];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v114;
        (*(v79 + 56))(v114, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v114;
LABEL_64:
      v108 = v120;
      sub_1D5D27084(v119, v90, v104);
      if (!v108)
      {
        v109 = sub_1D72585BC();
        v110 = *(v109 - 8);
        (*(v110 + 56))(v104, 0, 1, v109);
        (*(v110 + 32))(v117, v104, v109);
      }

      return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
    }

    if (v88 == *MEMORY[0x1E69D7390])
    {
      v90 = v118[12];
      if ((~v90 & 0xF000000000000007) == 0)
      {
        v78 = sub_1D72585BC();
        v79 = *(v78 - 8);
        v24 = v112;
        (*(v79 + 56))(v112, 1, 1, v78);
        goto LABEL_56;
      }

      v104 = v112;
      goto LABEL_64;
    }

    (*(v74 + 8))(v40, v73);
    v62 = *v89;
  }

LABEL_9:
  sub_1D5D27084(v119, v62, v117);
  return sub_1D5D28540(v58, &qword_1EDF3BF60, MEMORY[0x1E69D7398]);
}

uint64_t sub_1D5D27018(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1D5B54CB8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D27084@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for FormatAbsoluteURL();
  MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v20 == 2)
    {
      v24 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v27 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *(v24 + 40);
      sub_1D5D27950(v25, v26, v27, v28);
      sub_1D5D2737C(a1, v25, v26, v27, v28, a3);
      return sub_1D5D28C84(v25, v26, v27, v28);
    }

    else
    {
      v31 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6D50BD4(a1, v31, v32, a3);
    }
  }

  else if (v20)
  {
    v34 = a3;
    v29 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v35 = *(a1 + 9);

    sub_1D722B410(v10);
    sub_1D725849C();
    v30 = *(v7 + 8);
    v30(v10, v6);
    sub_1D6B79734(v29, MEMORY[0x1E69E7CC0], v34);

    return (v30)(v14, v6);
  }

  else
  {
    v21 = v17;
    v22 = swift_projectBox();
    sub_1D5D287F4(v22, v19, type metadata accessor for FormatAbsoluteURL);
    sub_1D6B79734(*&v19[*(v21 + 20)], MEMORY[0x1E69E7CC0], a3);
    return sub_1D5D28B04(v19, type metadata accessor for FormatAbsoluteURL);
  }
}

uint64_t sub_1D5D2737C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v51 = a2;
  v46 = a4;
  v52 = a3;
  v49 = a6;
  sub_1D5B54CB8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v46 - v10;
  v12 = sub_1D72585BC();
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for FormatLayoutError();
  MEMORY[0x1EEE9AC00](v63, v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B54CB8(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v46 - v21;
  v23 = type metadata accessor for FormatOption();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  if (a5 > 2u)
  {
    if (a5 == 4)
    {
      v27 = v50;
      result = sub_1D6D4F6F4();
      if (v27)
      {
        return result;
      }

      v30 = v47;
      v29 = v48;
      if ((*(v47 + 48))(v11, 1, v48) != 1)
      {
        v45 = *(v30 + 32);
        v45(v15, v11, v29);
        return (v45)(v49, v15, v29);
      }

      sub_1D5D28540(v11, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5D285FC();
      swift_allocError();
      *v31 = 0xD00000000000001FLL;
      v31[1] = 0x80000001D73F1D40;
      goto LABEL_9;
    }

LABEL_8:
    sub_1D5D285FC();
    swift_allocError();
    *v32 = 0xD00000000000006ELL;
    v32[1] = 0x80000001D73C3790;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (a5)
  {
    goto LABEL_8;
  }

  v48 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[5];
  v58 = a1[4];
  v59 = v33;
  v60 = a1[6];
  v34 = a1[1];
  v54 = *a1;
  v55 = v34;
  v35 = a1[3];
  v56 = a1[2];
  v57 = v35;
  v36 = off_1F51B1B98[0];
  v37 = v52;

  v38 = v51;
  v36(v51, v37, v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D5D28540(v22, &qword_1EDF337F0, type metadata accessor for FormatOption);
    v39 = v52;
    *v18 = v38;
    v18[1] = v39;
    swift_storeEnumTagMultiPayload();
    sub_1D5D285FC();
    swift_allocError();
    sub_1D5D287F4(v18, v40, type metadata accessor for FormatLayoutError);
    swift_willThrow();
    return sub_1D5D28B04(v18, type metadata accessor for FormatLayoutError);
  }

  else
  {
    v41 = v38;
    v42 = v52;

    v43 = v48;
    sub_1D5D247E0(v22, v48);
    v62[4] = v58;
    v62[5] = v59;
    v62[6] = v60;
    v62[0] = v54;
    v62[1] = v55;
    v62[2] = v56;
    v62[3] = v57;

    v44 = v50;
    sub_1D6B74D28(v62, &v53);
    if (!v44)
    {

      v61[3] = v57;
      v61[4] = v58;
      v61[5] = v59;
      v61[6] = v60;
      v61[0] = v54;
      v61[1] = v55;
      v61[2] = v56;
      sub_1D6B7EB54(v53, v41, v42, v46, v61, v49);
    }

    sub_1D5D28B04(v43, type metadata accessor for FormatOption);
  }
}

uint64_t sub_1D5D27950(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t sub_1D5D27998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D725A7EC();

  FormatOptionCollection.subscript.getter(a1, a2, a3);
}

uint64_t FormatOptionCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D5D27F28(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for FormatOption();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27FE0(a1, a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D5D283C4(v10, &qword_1EDF337F0, type metadata accessor for FormatOption);
    swift_beginAccess();
    if (*(*(v3 + 24) + 16) && (sub_1D5B69D90(a1, a2), (v16 & 1) != 0))
    {
      swift_endAccess();
      sub_1D5D25108(a3);
      v17 = 0;
    }

    else
    {
      swift_endAccess();
      v17 = 1;
    }
  }

  else
  {
    sub_1D5D5E67C(v10, v15, type metadata accessor for FormatOption);
    sub_1D5D5E67C(v15, a3, type metadata accessor for FormatOption);
    v17 = 0;
  }

  return (*(v12 + 56))(a3, v17, 1, v11);
}

void sub_1D5D27C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5D27CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27D10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27D64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5D27DC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27E1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D5D27E80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27ED4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27F28(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D5D27F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5D27FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (*(*(v3 + 16) + 16) && (sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    sub_1D5D25108(a3);
    v8 = 0;
  }

  else
  {
    swift_endAccess();
    v8 = 1;
  }

  v9 = type metadata accessor for FormatOption();
  return (*(*(v9 - 8) + 56))(a3, v8, 1, v9);
}

uint64_t sub_1D5D280B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28118(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D27C58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D281E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28248(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D282A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D5D28308(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D27CBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28364(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D283C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5D27F28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D28420(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D284E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28540(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1D5B54CB8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2859C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D5D285FC()
{
  result = qword_1EDF2F560;
  if (!qword_1EDF2F560)
  {
    type metadata accessor for FormatLayoutError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F560);
  }

  return result;
}

uint64_t sub_1D5D28654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D286BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D28724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2878C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D287F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D2885C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D288C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D289E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28AA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28B04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D28C84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!a4)
  {
  }

  return result;
}

uint64_t FormatContextLayoutOptions.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatOptionCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatVariableCollection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5D28D8C()
{

  sub_1D5D25B88(v0[3], v0[4]);
  sub_1D5D25B88(v0[5], v0[6]);

  return swift_deallocClassInstance();
}

uint64_t TraversalOnlyEncoder.container<A>(keyedBy:)()
{
  type metadata accessor for TraversalOnlyEncoder.KeyedContainer();

  swift_getWitnessTable();
  return sub_1D726447C();
}

uint64_t sub_1D5D28E94()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5D28ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[3] = &type metadata for TraversalOnlyEncoder;
  v8[4] = sub_1D5D28FD4();
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);

  sub_1D5D29028(a2, v5, v6, v8);

  sub_1D7261E6C();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

unint64_t sub_1D5D28FD4()
{
  result = qword_1EDF0E7A0;
  if (!qword_1EDF0E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E7A0);
  }

  return result;
}

void *sub_1D5D29028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = *v4;
  v10 = v4[1];
  sub_1D5D290FC();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);

  result = sub_1D5D291B8(inited);
  *a4 = v9;
  a4[1] = v10;
  return result;
}

void sub_1D5D290FC()
{
  if (!qword_1EDF01CF0)
  {
    sub_1D5D29154();
    v0 = sub_1D72644CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF01CF0);
    }
  }
}

unint64_t sub_1D5D29154()
{
  result = qword_1EDF01CC8;
  if (!qword_1EDF01CC8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF01CC8);
  }

  return result;
}

uint64_t FormatFeedGroup.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5C26F68(0, &qword_1EDF02978, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C26FCC();
  sub_1D7264B5C();
  v11 = type metadata accessor for FormatFeedGroup();
  LOBYTE(v15) = 0;
  type metadata accessor for FormatContent.Resolved();
  sub_1D5C270D0(&qword_1EDF11E50, type metadata accessor for FormatContent.Resolved);
  sub_1D726443C();
  if (!v2)
  {
    v15 = *(v3 + v11[6]);
    v14 = 1;
    sub_1D5B49CBC(0, &qword_1EDF43BE0);
    sub_1D6A341A0();
    sub_1D726443C();
    LOBYTE(v15) = *(v3 + v11[7]);
    v14 = 2;
    sub_1D675C5E0();
    sub_1D726443C();
    LOBYTE(v15) = *(v3 + v11[8]);
    v14 = 3;
    sub_1D726443C();
    LOBYTE(v15) = 4;
    sub_1D726441C();
    LOBYTE(v15) = 5;
    sub_1D726441C();
    LOBYTE(v15) = 11;
    sub_1D726441C();
    LOBYTE(v15) = 6;
    sub_1D72643AC();
    LOBYTE(v15) = 7;
    sub_1D72643AC();
    LOBYTE(v15) = 8;
    sub_1D72643AC();
    LOBYTE(v15) = 9;
    sub_1D72643AC();
    LOBYTE(v15) = *(v3 + v11[16]);
    v14 = 10;
    sub_1D5BA4CF0();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t FormatContent.Resolved.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D5B5AB24(0, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v56 = v53 - v5;
  sub_1D5B5AB24(0, &qword_1EDF43A28, sub_1D5C28BC0, v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v57 = v53 - v8;
  sub_1D5C28B8C(0);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v59 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5AB24(0, &qword_1EDF17608, sub_1D5C28BF4, v2);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v60 = v53 - v14;
  sub_1D5B5D160(0);
  v61 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v62 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CC4(0);
  v63 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v64 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28CF8();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v21, v23);
  v25 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C28DE4(0, &qword_1EDF027F0, sub_1D5C28E4C, &_s8ResolvedV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = v53 - v30;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C28E4C();
  sub_1D7264B5C();
  v32 = v65;
  LOBYTE(v68) = 0;
  v33 = v27;
  sub_1D72643FC();
  if (v32)
  {
    v34 = *(v28 + 8);
  }

  else
  {
    v53[3] = v22;
    v54 = v25;
    v65 = v28;
    v55 = type metadata accessor for FormatContent.Resolved();
    LOBYTE(v68) = 1;
    sub_1D725891C();
    sub_1D5B85F48(&qword_1EDF45B18, MEMORY[0x1E6969530]);
    v36 = v66;
    sub_1D726443C();
    v37 = v55;
    v68 = *(v36 + v55[6]);
    v67 = 2;
    sub_1D5B5A7F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v39 = v38;
    v40 = sub_1D5B9976C(&qword_1EDF04A90);
    sub_1D726443C();
    v68 = *(v36 + v37[7]);
    v67 = 3;
    sub_1D726443C();
    v53[1] = v40;
    v53[2] = v39;
    v68 = *(v36 + v37[8]);
    v67 = 4;
    sub_1D5B5ABEC(0);
    sub_1D5C29188(&qword_1EDF04DA8, sub_1D5B5ABEC, sub_1D5D2A668);
    sub_1D726443C();
    v68 = *(v36 + v55[9]);
    v67 = 5;
    sub_1D5B5A7F0(0, &qword_1EDF3C8C0, &type metadata for FormatContentSubgroup.ResolvedContainer, MEMORY[0x1E69E62F8]);
    sub_1D5C7F1C4(&qword_1EDF04E18, sub_1D69A52B0);
    sub_1D726443C();
    v68 = *(v36 + v55[11]);
    v67 = 6;
    sub_1D5B5AD98();
    sub_1D5C29188(&qword_1EDF050B0, sub_1D5B5AD98, sub_1D6924C08);
    sub_1D726443C();
    v68 = *(v36 + v55[12]);
    v67 = 7;
    sub_1D5B5AE40(0, &qword_1EDF43B90, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E64E8]);
    sub_1D5CB5E08(&qword_1EDF047E0);
    sub_1D726443C();
    v41 = v55;
    v42 = swift_unknownObjectRetain();
    v43 = v54;
    sub_1D67A8C48(v42, v54);
    LOBYTE(v68) = 8;
    sub_1D5C29188(&unk_1EDF17790, sub_1D5C28CF8, sub_1D69A5304);
    sub_1D726443C();
    sub_1D5CEB140(v43, sub_1D5C28CF8);
    v44 = *(v36 + v41[14]);
    v45 = v44;
    v46 = v64;
    sub_1D698AFD8(v44, v64);
    LOBYTE(v68) = 9;
    sub_1D5C29188(&qword_1EDF17640, sub_1D5C28CC4, sub_1D69A5338);
    sub_1D726443C();
    sub_1D5CEB140(v46, sub_1D5C28CC4);
    v47 = swift_unknownObjectRetain();
    sub_1D6B42B58(v47, v62);
    LOBYTE(v68) = 13;
    sub_1D5C29188(&unk_1EDF17700, sub_1D5B5D160, sub_1D69A536C);
    sub_1D726443C();
    sub_1D5CEB140(v62, sub_1D5B5D160);
    LOBYTE(v68) = 14;
    sub_1D5B5AFCC(0);
    sub_1D5C29188(&qword_1EDF11A90, sub_1D5B5AFCC, sub_1D69A53A0);
    sub_1D726443C();
    v48 = *(v66 + v55[17]);
    v49 = v48;
    sub_1D698B268(v48, v60);
    LOBYTE(v68) = 16;
    sub_1D5C28BF4();
    sub_1D5B85F48(&qword_1EDF17630, sub_1D5C28BF4);
    sub_1D72643BC();
    sub_1D5CEB4C8(v60, &qword_1EDF17608, sub_1D5C28BF4, MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v68 = *(v66 + v55[20]);
    v67 = 11;
    sub_1D726443C();
    v50 = *(v66 + v55[18]);
    v51 = v50;
    sub_1D698B554(v50, v59);
    LOBYTE(v68) = 10;
    sub_1D5C29188(&qword_1EDF177D8, sub_1D5C28B8C, sub_1D69A53D4);
    sub_1D726443C();
    sub_1D5CEB140(v59, sub_1D5C28B8C);
    LOBYTE(v68) = *(v66 + v55[19]);
    v67 = 12;
    sub_1D5B5A7F0(0, &qword_1EDF428F8, &type metadata for FeedSubscriptionPaidAccess, MEMORY[0x1E69E6720]);
    sub_1D69A5408();
    sub_1D726443C();
    v52 = v56;
    sub_1D6997468(v66 + v55[21], v56, &qword_1EDF45AB0, MEMORY[0x1E69B40B8], MEMORY[0x1E69E6720], sub_1D5B5AB24);
    Reference<A>.init(value:)(v52, v57);
    LOBYTE(v68) = 15;
    sub_1D5C28BC0(0);
    sub_1D5B85F48(&qword_1EDF17870, sub_1D5C28BC0);
    sub_1D72643BC();
    sub_1D5CEB4C8(v57, &qword_1EDF43A28, sub_1D5C28BC0, MEMORY[0x1E69E6720], sub_1D5B5AB24);
    v34 = *(v65 + 8);
  }

  return v34(v31, v33);
}

uint64_t sub_1D5D2A4FC@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.SingleValueContainer;
  a1[4] = sub_1D5D2A55C();
  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_1D5D2A55C()
{
  result = qword_1EDF0E7A8;
  if (!qword_1EDF0E7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E7A8);
  }

  return result;
}

uint64_t sub_1D5D2A5B0@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for TraversalOnlyEncoder.UnkeyedContainer;
  a1[4] = sub_1D5D2A614();
  *a1 = v4;
  a1[1] = v3;
  a1[2] = 0;
}

unint64_t sub_1D5D2A614()
{
  result = qword_1EDF0E7B0[0];
  if (!qword_1EDF0E7B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF0E7B0);
  }

  return result;
}

uint64_t sub_1D5D2A69C()
{
  v1 = v0[2];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = *v0;
    v2 = v0[1];
    v0[2] = v1 + 1;
    v10[3] = &type metadata for TraversalOnlyEncoder;
    v10[4] = sub_1D5D28FD4();
    sub_1D5D290FC();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;

    v5 = sub_1D72644BC();
    v7 = v6;
    *(inited + 56) = &type metadata for TraversalOnlyEncoder.AnyCodingKey;
    *(inited + 64) = sub_1D5D2A838();
    v8 = swift_allocObject();
    *(inited + 32) = v8;
    *(v8 + 16) = v5;
    *(v8 + 24) = v7;
    *(v8 + 32) = v1;
    *(v8 + 40) = 0;
    v10[6] = v3;
    sub_1D5D291B8(inited);
    v10[0] = v3;
    v10[1] = v2;
    sub_1D7261E6C();
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return result;
}

uint64_t sub_1D5D2A7E8()
{

  return swift_deallocObject();
}

unint64_t sub_1D5D2A838()
{
  result = qword_1EDF0E848;
  if (!qword_1EDF0E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E848);
  }

  return result;
}

unint64_t sub_1D5D2A890()
{
  result = qword_1EDF0E838;
  if (!qword_1EDF0E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E838);
  }

  return result;
}

unint64_t sub_1D5D2A8E8()
{
  result = qword_1EDF0E840;
  if (!qword_1EDF0E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0E840);
  }

  return result;
}

uint64_t FormatPackageInventory.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1D5C2B0C4(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v51 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C2B194();
  sub_1D7264B5C();
  v61 = 0;
  v10 = v53;
  sub_1D72643FC();
  if (v10)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v53 = v6;
  v61 = 1;
  sub_1D725BD1C();
  sub_1D5B4B9F8(&qword_1EDF178C0, MEMORY[0x1E69D6B38]);
  sub_1D726443C();
  v61 = *(v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_role);
  v60 = 2;
  sub_1D5D2B3EC();
  sub_1D726443C();
  v12 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__direction;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13 != 4)
  {
    v60 = 3;
    v59 = v13;
    sub_1D6E780B8();
    sub_1D61A7178();
    sub_1D72647EC();
  }

  v14 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__groups);
  swift_beginAccess();
  v15 = *v14;

  sub_1D5D2D2E8(v15);

  v16 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__items);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];

  sub_1D5D2D428(v17, v18, v9, 7);

  v19 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__snippets);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];

  sub_1D5D2D58C(v20, v21, v9, 8);

  v22 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__supplementaries);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];

  sub_1D5D2D5C0(v23, v24, v9, 9);

  v25 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];

  sub_1D5D2D5F4(v26, v27, v9, 10);

  v28 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__slots);
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];

  sub_1D5D4B69C(v29, v30, v9, 11);

  v31 = (v2 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types);
  swift_beginAccess();
  v32 = *v31;
  v33 = v31[1];

  sub_1D5D4B6D0(v32, v33, v9, 12);

  swift_beginAccess();
  v52 = v2;

  sub_1D5D4B704(v34);

  v35 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__options;
  v36 = v52;
  swift_beginAccess();
  v37 = *(v36 + v35);
  if (*(v37 + 16))
  {
    v57 = 14;
    v58 = v37;
    sub_1D6E780B8();
    sub_1D5B5AD98();
    sub_1D5C4D8F0(&qword_1EDF050B0, sub_1D5B5AD98, sub_1D6924C08);

    sub_1D72647EC();
  }

  v38 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__selectors;
  v39 = v52;
  swift_beginAccess();
  if (*(*(v39 + v38) + 16))
  {

    sub_1D5E07710(v40, v9, 15);
  }

  v41 = (v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations);
  swift_beginAccess();
  v42 = *v41;
  v43 = v41[1];

  sub_1D6A3D1F4(v42, v43, v9, 16);

  v44 = *(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem + 8);
  v55 = *(v52 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory_columnSystem);
  v56 = v44;
  LOBYTE(v54) = 17;
  sub_1D5D5FDA4(v55, v44);
  sub_1D668F320();
  sub_1D72643BC();
  sub_1D5C5D428(v55, v56);
  v45 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__references;
  v46 = v52;
  swift_beginAccess();
  v47 = *(v46 + v45);
  if (*(v47 + 16))
  {
    v62 = 18;
    v54 = v47;
    sub_1D6E780B8();
    sub_1D6E78148(0);
    sub_1D5C4D8F0(&qword_1EDF04F58, sub_1D6E78148, sub_1D5C2AF58);

    sub_1D72647EC();
  }

  v48 = OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__traits;
  v49 = v52;
  swift_beginAccess();
  if (*(*(v49 + v48) + 16))
  {

    sub_1D5E07710(v50, v9, 19);
  }

  v62 = 20;
  type metadata accessor for FormatCompilerOptions(0);
  sub_1D5B4B9F8(&qword_1EDF0E3A0, type metadata accessor for FormatCompilerOptions);
  sub_1D726443C();
  return (*(v53 + 8))(v9, v5);
}

unint64_t sub_1D5D2B3EC()
{
  result = qword_1EDF10BD0;
  if (!qword_1EDF10BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF10BD0);
  }

  return result;
}

uint64_t FormatPackageRole.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v54 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v53 = &v46 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v50 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v49 = &v46 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v48 = &v46 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v46 - v26;
  v55 = *v1;
  v28 = a1[3];
  v29 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v30 = sub_1D725BD1C();
  v31 = __swift_project_value_buffer(v30, qword_1EDFFCD30);
  v32 = *(*(v30 - 8) + 16);
  v32(v27, v31, v30);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v33 = v59;
  sub_1D5D2BEC4(v27, sub_1D5B4AA6C, 0, v28, v29);
  if (v33)
  {
    return sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  }

  v35 = v32;
  sub_1D5D2CFE8(v27, type metadata accessor for FormatVersionRequirement);
  v36 = v56;
  v37 = v56[3];
  v59 = v56[4];
  v47 = v37;
  __swift_project_boxed_opaque_existential_1(v56, v37);
  if (v55 <= 2)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v40 = v49;
        v32(v49, v31, v30);
      }

      else
      {
        v40 = v50;
        v32(v50, v31, v30);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v40, sub_1D5B4AA6C, 0, v47, v59);
      sub_1D5D2CFE8(v40, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v42 = v48;
      v32(v48, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v42, sub_1D5B4AA6C, 0, v47, v59);
      sub_1D5D2CFE8(v42, type metadata accessor for FormatVersionRequirement);
    }
  }

  else
  {
    if (v55 > 4)
    {
      if (v55 == 5)
      {
        v41 = v52;
        v35(v52, v31, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v41, sub_1D5B4AA6C, 0, v47, v59);
        sub_1D5D2CFE8(v41, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        if (qword_1EDF31E98 != -1)
        {
          swift_once();
        }

        v44 = __swift_project_value_buffer(v30, qword_1EDFFCD00);
        v45 = v54;
        v35(v54, v44, v30);
        swift_storeEnumTagMultiPayload();
        sub_1D5D2BEC4(v45, sub_1D5B4AA6C, 0, v47, v59);
        sub_1D5D2CFE8(v45, type metadata accessor for FormatVersionRequirement);
      }
    }

    else if (v55 == 3)
    {
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v38 = __swift_project_value_buffer(v30, qword_1EDFFCD98);
      v39 = v53;
      v35(v53, v38, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v39, sub_1D5B4AA6C, 0, v47, v59);
      sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v43 = v51;
      v35(v51, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_1D5D2BEC4(v43, sub_1D5B4AA6C, 0, v47, v59);
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    }

    v36 = v56;
  }

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);
  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  sub_1D726473C();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_1D5D2BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v28 = a1;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  v17 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v17, v16);
  v18 = type metadata accessor for FormatVersionInfo(0);
  v19 = (*(*(v18 - 8) + 48))(v16, 1, v18);
  if (v19 || (MEMORY[0x1EEE9AC00](v19, v20), *(&v26 - 2) = a2, *(&v26 - 1) = a3, MEMORY[0x1EEE9AC00](v21, v22), v23 = v27, *(&v26 - 2) = a4, *(&v26 - 1) = v23, sub_1D6020CA0(v28, sub_1D6026DEC, v24, sub_1D6026DE8, (&v26 - 4)), v5))
  {
    sub_1D5D2C7C0(v16, v12, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v12, v17);

    return sub_1D5D2CCD8(v16, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
  }

  else
  {
    Dictionary<>.formatCodingVersionInfo.setter(v16, v17);
  }
}

uint64_t sub_1D5D2BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4;
  v9 = a5;
  v6[2] = a2;
  v6[3] = a3;
  return sub_1D5D2BC70(a1, sub_1D6026258, v7, sub_1D6026DE8, v6);
}

void sub_1D5D2BF68()
{
  type metadata accessor for FormatVersioningMode(319);
  if (v0 <= 0x3F)
  {
    sub_1D5C2ECB0(319, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EDF04D28, type metadata accessor for FormatDeprecationWarning, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D5D2C064()
{
  sub_1D5D2C0E8(319, &qword_1EDF178D0);
  if (v0 <= 0x3F)
  {
    sub_1D5D2C0E8(319, &qword_1EDF178C8);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D5D2C0E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D725BD1C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D5D2C150()
{
  sub_1D725BD1C();
  if (v0 <= 0x3F)
  {
    sub_1D5B58244(319, &qword_1EDF43BE0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1D5C2ECB0(319, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Dictionary<>.formatCodingVersionInfo.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_1D7263FCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7263FBC();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    (*(v9 + 32))(v12, v7, v8);
    if (*(a1 + 16) && (v14 = sub_1D5B7C598(v12), (v15 & 1) != 0))
    {
      sub_1D5B76B10(*(a1 + 56) + 32 * v14, v22);
      (*(v9 + 8))(v12, v8);
      sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
      if (swift_dynamicCast())
      {
        v16 = v21;
        v17 = *(*v21 + 88);
        swift_beginAccess();
        sub_1D6026904(v16 + v17, a2, type metadata accessor for FormatVersionInfo);

        v18 = 0;
LABEL_8:
        v19 = type metadata accessor for FormatVersionInfo(0);
        return (*(*(v19 - 8) + 56))(a2, v18, 1, v19);
      }
    }

    else
    {
      (*(v9 + 8))(v12, v8);
    }

    v18 = 1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1D5D2C538(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatVersioningMode(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    v14 = *(v13 - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return;
    }

    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  v11(v12, a2, a2, v10);
}

uint64_t sub_1D5D2C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatVersioningMode(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  sub_1D5C2ECB0(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D5D2C7C0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ECB0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5D2C840(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5C2ED68(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Dictionary<>.formatCodingVersionInfo.setter(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v29 - v7;
  v9 = type metadata accessor for FormatVersionInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2ECB0(0, &qword_1EDF3C698, MEMORY[0x1E69E6D30], v4);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v29 - v16;
  v18 = sub_1D7263FCC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7263FBC();
  result = (*(v19 + 48))(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v19 + 32))(v22, v17, v18);
  if (*(a2 + 16) && (v24 = sub_1D5B7C598(v22), (v25 & 1) != 0))
  {
    sub_1D5B76B10(*(a2 + 56) + 32 * v24, v30);
    (*(v19 + 8))(v22, v18);
    sub_1D5C2ECB0(0, &qword_1EC8824D8, type metadata accessor for FormatVersionInfo, type metadata accessor for Box);
    if (swift_dynamicCast())
    {
      v26 = v29[1];
      sub_1D60246E0(a1, v8);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        sub_1D60269C0(v8, v13, type metadata accessor for FormatVersionInfo);
        v28 = *(*v26 + 88);
        swift_beginAccess();
        sub_1D6024774(v13, v26 + v28);
        swift_endAccess();
      }

      v27 = v8;
      return sub_1D5D2CCD8(v27, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    }
  }

  else
  {
    (*(v19 + 8))(v22, v18);
  }

  v27 = a1;
  return sub_1D5D2CCD8(v27, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
}

uint64_t sub_1D5D2CCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C2ECB0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D2CD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CDA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CE08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CE68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CEC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CF28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2CFE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D0A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D108(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D1C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D288(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D2D2E8(uint64_t result)
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    sub_1D6A40524();

    sub_1D72647EC();
  }

  return result;
}

uint64_t sub_1D5D2D45C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  if (*(result + 16))
  {
    sub_1D5D2D628(0, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys, MEMORY[0x1E69E6F58]);
    v6 = sub_1D5D2D690(&qword_1EDF02638, &qword_1EDF02630, sub_1D5C2B194, &type metadata for FormatPackageInventory.CodingKeys);
    a5(v6, v7);

    sub_1D72647EC();
  }

  return result;
}

void sub_1D5D2D628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D5D2D690(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D2D628(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5D2D6F4()
{
  result = qword_1EDF24880;
  if (!qword_1EDF24880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF24880);
  }

  return result;
}

uint64_t FormatNodeStyleCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  sub_1D5C2C988();
  sub_1D5C2CB2C(&qword_1EDF050D0, &qword_1EDF12400);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D5D2D870()
{
  v2 = *v0;
  v1 = v0[1];
  v4[3] = &type metadata for TraversalOnlyEncoder;
  v4[4] = sub_1D5D28FD4();
  v4[0] = v2;
  v4[1] = v1;

  sub_1D7261E6C();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t FormatObject.encode(to:)(void *a1, uint64_t a2)
{
  v25 = type metadata accessor for FormatMetadata();
  MEMORY[0x1EEE9AC00](v25, v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v28 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v27 = (&v25 - v11);
  v12 = *(a2 + 16);
  v29 = a2;
  v30 = v12;
  type metadata accessor for FormatObject.CodingKeys();
  swift_getWitnessTable();
  v13 = sub_1D726446C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B5C();
  v33 = 0;
  v18 = v31;
  sub_1D726443C();
  if (!v18)
  {
    v31 = v14;
    v20 = v26;
    v19 = v27;
    v21 = v29;
    sub_1D5D39FE4(v29, v27);
    v22 = v28;
    static FormatCodingMetadataStrategy.defaultValue.getter(v28);
    v23 = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(v19, v22);
    sub_1D5D3A908(v22);
    sub_1D5D3A908(v19);
    if ((v23 & 1) == 0)
    {
      sub_1D5D39FE4(v21, v20);
      v32 = 1;
      sub_1D5C3548C(&qword_1EDF11B70);
      sub_1D726443C();
      sub_1D5D3A908(v20);
    }

    v14 = v31;
  }

  return (*(v14 + 8))(v17, v13);
}

uint64_t FormatStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v107 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v111 = &v106 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v113 = &v106 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v110 = &v106 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v106 - v17;
  sub_1D5D2EC68();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = v1[1];
  v26 = v1[7];
  v112 = v1[6];
  v109 = v26;
  v108 = v1[8];
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1D5C2E730();
  v30 = v29;
  v31 = sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730);
  sub_1D5D2EE70(&type metadata for FormatStyle, v30, v32, v27, &type metadata for FormatStyle, v30, &type metadata for FormatVersions.JazzkonC, v28, v23, v31, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v33 = sub_1D725BD1C();
  v34 = __swift_project_value_buffer(v33, qword_1EDFFCD30);
  v35 = *(v33 - 8);
  v36 = *(v35 + 16);
  v115 = v33;
  v116 = v34;
  v118 = v35 + 16;
  v119 = v36;
  (v36)(v18);
  v117 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v127 = v24;
  v128 = v25;
  v125 = 0uLL;
  v126 = 0;
  v37 = &v23[*(v20 + 44)];
  *&v122 = v18;
  v38 = *v37;
  v39 = *(v37 + 1);
  v129 = 0;
  v40 = swift_allocObject();
  *&v123 = &v106;
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = v129;
  *(v40 + 40) = v38;
  *(v40 + 48) = v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  *(&v106 - 4) = sub_1D5B4AA6C;
  *(&v106 - 3) = 0;
  v104 = sub_1D6708BAC;
  v105 = v42;
  v129 = 0;
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = v129;
  v114 = v38;
  *(v43 + 40) = v38;
  *(v43 + 48) = v39;
  sub_1D5D2ECFC();
  v45 = v44;
  v46 = sub_1D5B58B84(&qword_1EDF02BA8, sub_1D5D2ECFC);
  swift_retain_n();
  v120 = v46;
  v121 = v45;
  v47 = sub_1D72647CC();
  v129 = 0;
  v48 = v23;
  v49 = swift_allocObject();
  *(v49 + 24) = 0;
  *(v49 + 32) = 0;
  *(v49 + 16) = v47;
  *(v49 + 40) = v129;
  v50 = &v48[*(v20 + 36)];
  v51 = __swift_project_boxed_opaque_existential_1(v50, *(v50 + 3));
  MEMORY[0x1EEE9AC00](v51, v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  *(&v106 - 4) = sub_1D615B4A4;
  *(&v106 - 3) = (&v106 - 6);
  v104 = sub_1D6708BAC;
  v105 = v43;
  v55 = v122;
  v56 = v124;
  sub_1D5D2BC70(v122, sub_1D615B49C, v57, sub_1D615B4A4, (&v106 - 6));
  if (v56)
  {
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v58 = v48;
  }

  else
  {
    *&v124 = v50;
    v106 = v39;

    sub_1D72647EC();
    v58 = v48;
    sub_1D5D2CFE8(v55, type metadata accessor for FormatVersionRequirement);

    v59 = v110;
    v60 = v115;
    v61 = v116;
    v62 = v119;
    v119(v110, v116, v115);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
    v62(v59, v61, v60);
    swift_storeEnumTagMultiPayload();
    sub_1D5D2CFE8(v59, type metadata accessor for FormatVersionRequirement);
    v63 = v113;
    v62(v113, v61, v60);
    swift_storeEnumTagMultiPayload();
    if (*(v112 + 16))
    {
      LOBYTE(v125) = 0;
      v64 = swift_allocObject();
      v123 = xmmword_1D72BAA60;
      *(v64 + 16) = xmmword_1D72BAA60;
      *(v64 + 32) = v125;
      *(v64 + 40) = v114;
      *(v64 + 48) = v106;

      v65 = v63;
      v66 = sub_1D72647CC();
      LOBYTE(v125) = 0;
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      *(v67 + 24) = v123;
      *(v67 + 40) = v125;
      v68 = __swift_project_boxed_opaque_existential_1(v124, *(v124 + 24));
      MEMORY[0x1EEE9AC00](v68, v69);
      MEMORY[0x1EEE9AC00](v70, v71);
      *(&v106 - 4) = sub_1D5B4AA6C;
      *(&v106 - 3) = 0;
      v104 = sub_1D66C09A0;
      v105 = v64;
      v73 = sub_1D5D2F7A4(v65, sub_1D615B49C, v72, sub_1D615B4A4, (&v106 - 6));
      v74 = v111;
      v78 = v73;

      if (v78)
      {
        v125 = v123;
        v126 = 0;
        v127 = v112;
        sub_1D5C34D84(0, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
        sub_1D5D2FA60();
        sub_1D72647EC();
        v77 = v124;
        *&v123 = 0;

        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);
        v76 = v114;
        v60 = v115;
        v75 = v106;
        v61 = v116;
      }

      else
      {
        *&v123 = 0;
        sub_1D5D2CFE8(v113, type metadata accessor for FormatVersionRequirement);

        v76 = v114;
        v60 = v115;
        v75 = v106;
        v61 = v116;
        v77 = v124;
      }
    }

    else
    {
      *&v123 = 0;
      sub_1D5D2CFE8(v63, type metadata accessor for FormatVersionRequirement);
      v74 = v111;
      v75 = v106;
      v76 = v114;
      v77 = v124;
    }

    v119(v74, v61, v60);
    swift_storeEnumTagMultiPayload();
    if (*(v109 + 16))
    {
      LOBYTE(v125) = 0;
      v79 = swift_allocObject();
      v122 = xmmword_1D72BAA70;
      *(v79 + 16) = xmmword_1D72BAA70;
      *(v79 + 32) = v125;
      *(v79 + 40) = v76;
      *(v79 + 48) = v75;

      v80 = sub_1D72647CC();
      LOBYTE(v125) = 0;
      v81 = swift_allocObject();
      *(v81 + 16) = v80;
      *(v81 + 24) = v122;
      *(v81 + 40) = v125;
      v82 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
      MEMORY[0x1EEE9AC00](v82, v83);
      MEMORY[0x1EEE9AC00](v84, v85);
      *(&v106 - 4) = sub_1D5B4AA6C;
      *(&v106 - 3) = 0;
      v104 = sub_1D6708BAC;
      v105 = v79;
      v86 = v123;
      v88 = sub_1D5D2F7A4(v74, sub_1D615B49C, v87, sub_1D615B4A4, (&v106 - 6));
      v89 = v86;
      if (v86)
      {
        sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v58, sub_1D5D2EC68);
      }

      v90 = v88;

      if (v90)
      {
        v125 = v122;
        v126 = 0;
        v127 = v109;
        sub_1D5C34D84(0, &qword_1EDF1B448, &type metadata for FormatType, MEMORY[0x1E69E62F8]);
        sub_1D6659404();
        sub_1D72647EC();
        v77 = v124;

        sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
        v76 = v114;
        v60 = v115;
        v75 = v106;
      }

      else
      {
        sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);

        v76 = v114;
        v60 = v115;
        v75 = v106;
        v77 = v124;
      }
    }

    else
    {
      sub_1D5D2CFE8(v74, type metadata accessor for FormatVersionRequirement);
      v89 = v123;
    }

    v91 = v107;
    v119(v107, v116, v60);
    swift_storeEnumTagMultiPayload();
    if (*(v108 + 16))
    {
      LOBYTE(v125) = 0;
      v92 = swift_allocObject();
      v124 = xmmword_1D72BAA80;
      *(v92 + 16) = xmmword_1D72BAA80;
      *(v92 + 32) = v125;
      *(v92 + 40) = v76;
      *(v92 + 48) = v75;

      v93 = sub_1D72647CC();
      LOBYTE(v125) = 0;
      v94 = v89;
      v95 = swift_allocObject();
      *(v95 + 16) = v93;
      *(v95 + 24) = v124;
      *(v95 + 40) = v125;
      v96 = __swift_project_boxed_opaque_existential_1(v77, v77[3]);
      MEMORY[0x1EEE9AC00](v96, v97);
      MEMORY[0x1EEE9AC00](v98, v99);
      *(&v106 - 4) = sub_1D5B4AA6C;
      *(&v106 - 3) = 0;
      v104 = sub_1D6708BAC;
      v105 = v92;
      v101 = sub_1D5D2F7A4(v91, sub_1D615B49C, v100, sub_1D615B4A4, (&v106 - 6));
      if (v94)
      {
        sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v58, sub_1D5D2EC68);
      }

      v103 = v101;

      if ((v103 & 1) == 0)
      {
        sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

        return sub_1D5D2CFE8(v58, sub_1D5D2EC68);
      }

      v125 = v124;
      v126 = 0;
      v127 = v108;
      sub_1D5B5BF78(0, &qword_1EDF3C920, type metadata accessor for FormatOption, MEMORY[0x1E69E62F8]);
      sub_1D60AD304();
      sub_1D72647EC();
    }

    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);
  }

  return sub_1D5D2CFE8(v58, sub_1D5D2EC68);
}

void sub_1D5D2EC68()
{
  if (!qword_1EDF088E0)
  {
    sub_1D5D2ECFC();
    sub_1D5B58B84(&qword_1EDF02BA8, sub_1D5D2ECFC);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF088E0);
    }
  }
}

void sub_1D5D2ECFC()
{
  if (!qword_1EDF02BA0)
  {
    sub_1D5C2E730();
    sub_1D5B58B84(&qword_1EDF24CC8, sub_1D5C2E730);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02BA0);
    }
  }
}

unint64_t sub_1D5D2EDA8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1D5B49474(319, &qword_1EDF01CD0);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for FormatVersionRequirement(319);
      if (v3 <= 0x3F)
      {
        result = sub_1D5B5D9E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5D2EE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v31 = a5;
  v32 = a1;
  v29 = a3;
  v33 = a9;
  v16 = *(a7 - 8);
  v30 = a11;
  MEMORY[0x1EEE9AC00](a1, a2);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D726446C();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v29 - v21;
  sub_1D7264B5C();
  v34[3] = a4;
  v34[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v11, a4);
  (*(v16 + 16))(v18, v29, a7);
  v24 = swift_allocObject();
  v26 = v31;
  v25 = v32;
  v24[2] = a4;
  v24[3] = v26;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = a8;
  v24[7] = a10;
  v27 = v30;
  v24[8] = v30;
  v24[9] = v25;
  swift_getWitnessTable();
  return sub_1D5D2F0A4(v22, v34, v18, sub_1D71B6A38, v24, v19, a7, v33, v27);
}

uint64_t sub_1D5D2F0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v16 = *(a6 - 8);
  (*(v16 + 16))(a8, a1, a6);
  v17 = type metadata accessor for VersionedKeyedEncodingContainer();
  sub_1D5B68374(a2, a8 + *(v17 + 36));
  sub_1D5D2F20C(a3, a7, a9);
  (*(*(a7 - 8) + 8))(a3, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  result = (*(v16 + 8))(a1, a6);
  v19 = (a8 + *(v17 + 44));
  *v19 = a4;
  v19[1] = a5;
  return result;
}

uint64_t sub_1D5D2F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5D2F260(a2, a3);
  type metadata accessor for FormatVersionRequirement.Value(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5D2F294()
{
  sub_1D5D2F2BC();
}

uint64_t sub_1D5D2F2C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_5Tm(void (*a1)(void, void, void))
{

  a1(*(v1 + 24), *(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_1()
{
  inserted = type metadata accessor for FeedNativeAdInsertBlueprintModifier();
  v2 = *(*(inserted - 1) + 80);
  v3 = v0 + ((v2 + 88) & ~v2);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = v3 + inserted[23];
  v5 = sub_1D7260E3C();
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for FeedNativeAdInsertion();

  v6 = (v3 + inserted[24]);

  v7 = type metadata accessor for FeedContext();
  v8 = v6 + v7[5];
  v9 = type metadata accessor for BundleSession();
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = *(v9 + 20);
    v11 = sub_1D725891C();
    (*(*(v11 - 8) + 8))(&v8[v10], v11);
  }

  if (*(v6 + v7[12] + 8) - 1 >= 3)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(v3 + inserted[25]);
  __swift_destroy_boxed_opaque_existential_1(v3 + inserted[26]);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_2()
{
  v1 = sub_1D7258DBC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_3()
{
  v1 = sub_1D725EECC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D2F7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a1;
  sub_1D5C2ECB0(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v28 - v15;
  v17 = sub_1D7264B4C();
  Dictionary<>.formatCodingVersionInfo.getter(v17, v16);
  v18 = type metadata accessor for FormatVersionInfo(0);
  v19 = (*(*(v18 - 8) + 48))(v16, 1, v18);
  if (v19)
  {
    sub_1D5D2C7C0(v16, v12, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    Dictionary<>.formatCodingVersionInfo.setter(v12, v17);

    sub_1D5D2CCD8(v16, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    LOBYTE(v21) = 1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19, v20);
    *(&v28 - 2) = a2;
    *(&v28 - 1) = a3;
    MEMORY[0x1EEE9AC00](v22, v23);
    v24 = v29;
    *(&v28 - 2) = a4;
    *(&v28 - 1) = v24;
    v26 = sub_1D6021F3C(v30, sub_1D6026DEC, v25, sub_1D6026DE8, (&v28 - 4));
    if (v5)
    {
      v21 = &qword_1EDF2EC70;
      sub_1D5D2C7C0(v16, v12, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
      Dictionary<>.formatCodingVersionInfo.setter(v12, v17);

      sub_1D5D2CCD8(v16, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    }

    else
    {
      LOBYTE(v21) = v26;
      Dictionary<>.formatCodingVersionInfo.setter(v16, v17);
    }
  }

  return v21 & 1;
}

unint64_t sub_1D5D2FA60()
{
  result = qword_1EDF04FF8;
  if (!qword_1EDF04FF8)
  {
    sub_1D5C34D84(255, &qword_1EDF05000, &type metadata for FormatNodeStyle, MEMORY[0x1E69E62F8]);
    sub_1D5C2E6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04FF8);
  }

  return result;
}

uint64_t FormatNodeStyle.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v161 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v160 = &v144 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v159 = &v144 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v158 = &v144 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v157 = &v144 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v156 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v155 = &v144 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v154 = &v144 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v152 = &v144 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v151 = &v144 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v150 = &v144 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v149 = &v144 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v148 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v153 = &v144 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v147 = &v144 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v146 = &v144 - v50;
  MEMORY[0x1EEE9AC00](v51, v52);
  v145 = &v144 - v53;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v144 - v56;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v58 - 8, v59);
  v61 = &v144 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *v1;
  v144 = *(v1 + 16);
  v162 = v62;
  v63 = *(v1 + 32);
  v64 = *(v1 + 40);
  v66 = *(v1 + 48);
  v65 = *(v1 + 56);
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  v69 = sub_1D5C30408();
  v169 = v61;
  sub_1D5D2EE70(&type metadata for FormatNodeStyle, &type metadata for FormatCodingKeys, v70, v67, &type metadata for FormatNodeStyle, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v68, v61, v69, &off_1F51F6C78);
  switch(v66 >> 59)
  {
    case 1uLL:
      v116 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v117 = sub_1D725BD1C();
      v118 = __swift_project_value_buffer(v117, qword_1EDFFCD30);
      v78 = v145;
      (*(*(v117 - 8) + 16))(v145, v118, v117);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D5D30EB8(1, v116, v78);
      goto LABEL_53;
    case 2uLL:
      v100 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v101 = sub_1D725BD1C();
      v102 = __swift_project_value_buffer(v101, qword_1EDFFCD30);
      v103 = v146;
      (*(*(v101 - 8) + 16))(v146, v102, v101);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v104 = v100;
      v74 = v169;
      sub_1D63B83AC(2, v104, v103);
      v75 = v103;
      break;
    case 3uLL:
      v109 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725BD1C();
      v111 = __swift_project_value_buffer(v110, qword_1EDFFCD30);
      v78 = v147;
      (*(*(v110 - 8) + 16))(v147, v111, v110);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D63B8578(3, v109, v78);
      goto LABEL_53;
    case 4uLL:
      v88 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v89 = sub_1D725BD1C();
      v90 = __swift_project_value_buffer(v89, qword_1EDFFCD30);
      v78 = v153;
      (*(*(v89 - 8) + 16))(v153, v90, v89);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v91 = v163;
      sub_1D63B8744(4, v88, v78);
      if (!v91)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 5uLL:
      v123 = v162;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v124 = sub_1D725BD1C();
      v125 = __swift_project_value_buffer(v124, qword_1EDFFCD18);
      v78 = v148;
      (*(*(v124 - 8) + 16))(v148, v125, v124);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v126 = v163;
      sub_1D63B8910(5, v123, v78);
      if (v126)
      {
        goto LABEL_53;
      }

      goto LABEL_57;
    case 6uLL:
      v132 = v162;
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v133 = sub_1D725BD1C();
      v134 = __swift_project_value_buffer(v133, qword_1EDFFCD18);
      v78 = v149;
      (*(*(v133 - 8) + 16))(v149, v134, v133);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v135 = v163;
      sub_1D63B8ADC(6, v132, v78);
      if (!v135)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 7uLL:
      v112 = v162;
      if (qword_1EDF31EF8 != -1)
      {
        swift_once();
      }

      v113 = sub_1D725BD1C();
      v114 = __swift_project_value_buffer(v113, qword_1EDFFCDC8);
      v78 = v150;
      (*(*(v113 - 8) + 16))(v150, v114, v113);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v115 = v163;
      sub_1D63B8CA8(7, v112, v78);
      if (!v115)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 8uLL:
      v140 = v162;
      if (qword_1EDF31EF0 != -1)
      {
        swift_once();
      }

      v141 = sub_1D725BD1C();
      v142 = __swift_project_value_buffer(v141, qword_1EDFFCDB0);
      v78 = v151;
      (*(*(v141 - 8) + 16))(v151, v142, v141);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v143 = v163;
      sub_1D63B8E74(8, v140, v78);
      if (!v143)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 9uLL:
      v96 = v162;
      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v97 = sub_1D725BD1C();
      v98 = __swift_project_value_buffer(v97, qword_1EDFFCD98);
      v78 = v152;
      (*(*(v97 - 8) + 16))(v152, v98, v97);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v99 = v163;
      sub_1D63B9040(9, v96, v78);
      if (!v99)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xAuLL:
      v136 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v137 = sub_1D725BD1C();
      v138 = __swift_project_value_buffer(v137, qword_1EDFFCD50);
      v78 = v154;
      (*(*(v137 - 8) + 16))(v154, v138, v137);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v139 = v163;
      sub_1D63B920C(10, v136, v78);
      if (!v139)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xBuLL:
      v84 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v85 = sub_1D725BD1C();
      v86 = __swift_project_value_buffer(v85, qword_1EDFFCD50);
      v78 = v155;
      (*(*(v85 - 8) + 16))(v155, v86, v85);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v87 = v163;
      sub_1D63B93D8(11, v84, v78);
      if (!v87)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xCuLL:
      v92 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v93 = sub_1D725BD1C();
      v94 = __swift_project_value_buffer(v93, qword_1EDFFCD50);
      v78 = v156;
      (*(*(v93 - 8) + 16))(v156, v94, v93);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v95 = v163;
      sub_1D63B95A4(12, v92, v78);
      if (!v95)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xDuLL:
      v127 = v162;
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v128 = sub_1D725BD1C();
      v129 = __swift_project_value_buffer(v128, qword_1EDFFCD50);
      v78 = v157;
      (*(*(v128 - 8) + 16))(v157, v129, v128);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v130 = v163;
      sub_1D63B9770(13, v127, v78);
      if (!v130)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xEuLL:
      v80 = v162;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v81 = sub_1D725BD1C();
      v82 = __swift_project_value_buffer(v81, qword_1EDFFCD00);
      v78 = v158;
      (*(*(v81 - 8) + 16))(v158, v82, v81);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v83 = v163;
      sub_1D63B993C(14, v80, v78);
      if (!v83)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0xFuLL:
      v105 = v162;
      if (qword_1EDF31E98 != -1)
      {
        swift_once();
      }

      v106 = sub_1D725BD1C();
      v107 = __swift_project_value_buffer(v106, qword_1EDFFCD00);
      v78 = v159;
      (*(*(v106 - 8) + 16))(v159, v107, v106);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v108 = v163;
      sub_1D63B9B08(15, v105, v78);
      if (!v108)
      {
        goto LABEL_57;
      }

      goto LABEL_53;
    case 0x10uLL:
      v164[0] = v162;
      v164[1] = v144;
      v165 = v63;
      v166 = v64;
      v167 = v66 & 0x7FFFFFFFFFFFFFFLL;
      v168 = v65;
      if (qword_1EDF31F58[0] != -1)
      {
        swift_once();
      }

      v76 = sub_1D725BD1C();
      v77 = __swift_project_value_buffer(v76, qword_1EDFFCE98);
      v78 = v160;
      (*(*(v76 - 8) + 16))(v160, v77, v76);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v79 = v163;
      sub_1D63B9CD4(16, v164, v78);
      if (v79)
      {
        goto LABEL_53;
      }

LABEL_57:
      v75 = v78;
      break;
    case 0x11uLL:
      v119 = v162;
      if (qword_1EDF31F50 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCE80);
      v78 = v161;
      (*(*(v120 - 8) + 16))(v161, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      v122 = v163;
      sub_1D63B9E74(17, v119, v78);
      if (v122)
      {
LABEL_53:
        v75 = v78;
      }

      else
      {
        v75 = v78;
      }

      break;
    default:
      v71 = v162;
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v72 = sub_1D725BD1C();
      v73 = __swift_project_value_buffer(v72, qword_1EDFFCD30);
      (*(*(v72 - 8) + 16))(v57, v73, v72);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = v169;
      sub_1D5D45D90(0, v71, v57);
      v75 = v57;
      break;
  }

  sub_1D5D2CFE8(v75, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v74, sub_1D5D30DC4);
}

void sub_1D5D30DC4()
{
  if (!qword_1EDF087C0)
  {
    sub_1D5C2FF94(255, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF087C0);
    }
  }
}

unint64_t sub_1D5D30E44()
{
  result = qword_1EDF02778;
  if (!qword_1EDF02778)
  {
    sub_1D5C2FF94(255, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF02778);
  }

  return result;
}

uint64_t sub_1D5D30EB8(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  sub_1D5D30DC4();
  v8 = (v3 + *(v7 + 44));
  v10 = *v8;
  v9 = v8[1];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  *(v11 + 32) = v9;
  v14[2] = sub_1D67091E0;
  v14[3] = v11;

  v12 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v14);
  if (!v4 && (v12 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D312F0();
    v15 = 0uLL;
    sub_1D72647EC();
    v15 = xmmword_1D7279980;
    type metadata accessor for FormatTextNodeStyle();
    sub_1D5B58B84(&qword_1EDF0F888, type metadata accessor for FormatTextNodeStyle);
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D31088(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D5D30DC4();
  v11 = v10;
  v12 = (v5 + *(v10 + 44));
  v14 = *v12;
  v13 = v12[1];
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v14;
  v15[5] = v13;

  sub_1D5C30618(a2, a3);
  sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  sub_1D5D30E44();
  v16 = sub_1D72647CC();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  __swift_project_boxed_opaque_existential_1((v5 + *(v11 + 36)), *(v5 + *(v11 + 36) + 24));
  v27 = sub_1D66F12A4;
  v28 = v17;
  v22 = a4;
  v23 = a5;
  v24 = sub_1D61A70D4;
  v25 = v15;
  sub_1D5C30618(a2, a3);
  v18 = sub_1D5D2F7A4(a1, sub_1D615B49C, v26, sub_1D615B4A4, v21);

  return v18 & 1;
}

uint64_t sub_1D5D31260()
{
  if (*(v0 + 24) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D312A8()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1D5D312F0()
{
  result = qword_1EDF11860;
  if (!qword_1EDF11860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11860);
  }

  return result;
}

uint64_t sub_1D5D31394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D313C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5D313C0(char a1)
{
  result = 2003134838;
  switch(a1)
  {
    case 1:
      result = 1954047348;
      break;
    case 2:
      result = 0x6567616D69;
      break;
    case 3:
      result = 1835365481;
      break;
    case 4:
      result = 0x6465626D45626577;
      break;
    case 5:
      result = 0x6D6F74737563;
      break;
    case 6:
      result = 0x656D656C70707573;
      break;
    case 7:
      result = 1633905005;
      break;
    case 8:
      result = 0x4D6465726579616CLL;
      break;
    case 9:
      result = 0x6F65646976;
      break;
    case 10:
      result = 0x766F436575737369;
      break;
    case 11:
      result = 0x70756F7267;
      break;
    case 12:
      result = 1802723693;
      break;
    case 13:
      result = 0x6F6974616D696E61;
      break;
    case 14:
      result = 0x616C506F65646976;
      break;
    case 15:
      result = 0x73736572676F7270;
      break;
    case 16:
      result = 0x6D45656C7A7A7570;
      break;
    case 17:
      result = 0x65726F736E6F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FormatTextNodeStyle.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D5B5BF78(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  *&v428 = &v400 - v7;
  v8 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v403 = &v400 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v404 = &v400 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v405 = &v400 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v406 = &v400 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v407 = &v400 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v408 = &v400 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v412 = &v400 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v411 = &v400 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v413 = &v400 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v414 = &v400 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v415 = &v400 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v416 = &v400 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v417 = &v400 - v46;
  MEMORY[0x1EEE9AC00](v47, v48);
  v427 = (&v400 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v400 - v52;
  sub_1D5D35454();
  v429 = v54;
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v400 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1[3];
  v59 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D5C31AE8();
  v61 = v60;
  v62 = sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8);
  v426 = v57;
  sub_1D5D2EE70(v4, v61, v63, v58, v4, v61, &type metadata for FormatVersions.JazzkonC, v59, v57, v62, &off_1F51F6C78);
  swift_beginAccess();
  v424 = v2;
  v65 = v2[2];
  v64 = v2[3];
  v66 = qword_1EDF31EB0;

  if (v66 != -1)
  {
    swift_once();
  }

  v67 = sub_1D725BD1C();
  v68 = __swift_project_value_buffer(v67, qword_1EDFFCD30);
  v69 = *(v67 - 8);
  v70 = *(v69 + 16);
  v71 = v69 + 16;
  v425 = v68;
  v70(v53);
  v72 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v73 = v428;
  sub_1D725892C();
  v74 = sub_1D725895C();
  v75 = (*(*(v74 - 8) + 48))(v73, 1, v74);
  v420 = v70;
  v421 = v67;
  v422 = v72;
  v423 = v71;
  if (v75 != 1)
  {
    sub_1D5D2CFE8(v53, type metadata accessor for FormatVersionRequirement);

    sub_1D5D35558(v73, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
    goto LABEL_8;
  }

  v418 = v65;
  sub_1D5D35558(v73, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1D5B5BF78);
  v76 = v429;
  v77 = v426;
  v78 = &v426[*(v429 + 11)];
  v80 = *v78;
  v79 = *(v78 + 1);
  v81 = v53;
  LOBYTE(v460) = 0;
  v82 = swift_allocObject();
  *(v82 + 16) = 0;
  *(v82 + 24) = 0;
  *(v82 + 32) = v460;
  *(v82 + 40) = v80;
  *(v82 + 48) = v79;
  sub_1D5D353C0();
  v84 = v83;
  sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0);

  v419 = v84;
  v85 = sub_1D72647CC();
  LOBYTE(v460) = 0;
  v86 = swift_allocObject();
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 16) = v85;
  *(v86 + 40) = v460;
  v87 = __swift_project_boxed_opaque_existential_1((v77 + *(v76 + 9)), *(v77 + *(v76 + 9) + 24));
  *&v428 = &v400;
  MEMORY[0x1EEE9AC00](v87, v88);
  MEMORY[0x1EEE9AC00](v89, v90);
  *(&v400 - 4) = sub_1D5B4AA6C;
  *(&v400 - 3) = 0;
  v398 = sub_1D66C8FFC;
  v399 = v82;
  v91 = v430;
  v93 = sub_1D5D2F7A4(v81, sub_1D615B49C, v92, sub_1D615B4A4, (&v400 - 6));
  v430 = v91;
  if (v91)
  {
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

    v94 = v77;
    return sub_1D5D2CFE8(v94, sub_1D5D35454);
  }

  v120 = v93;

  if ((v120 & 1) == 0)
  {
    sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);

    v70 = v420;
    v67 = v421;
    goto LABEL_8;
  }

  v460 = 0uLL;
  LOBYTE(v461) = 0;
  *&v447 = v418;
  *(&v447 + 1) = v64;
  v121 = v426;
  v122 = v430;
  sub_1D72647EC();

  sub_1D5D2CFE8(v81, type metadata accessor for FormatVersionRequirement);
  v70 = v420;
  v67 = v421;
  if (!v122)
  {
    v430 = 0;
LABEL_8:
    v96 = v424[4];
    v97 = v424[5];
    (v70)(v427, v425, v67);
    swift_storeEnumTagMultiPayload();
    *&v447 = v96;
    *(&v447 + 1) = v97;
    v428 = xmmword_1D728CF30;
    v460 = xmmword_1D728CF30;
    LOBYTE(v461) = 0;
    v98 = v426;
    v99 = &v426[*(v429 + 11)];
    v101 = *v99;
    v100 = *(v99 + 1);
    LOBYTE(v432) = 0;
    v102 = swift_allocObject();
    v419 = &v400;
    *(v102 + 16) = v428;
    *(v102 + 32) = v432;
    *(v102 + 40) = v101;
    *(v102 + 48) = v100;
    MEMORY[0x1EEE9AC00](v102, v103);
    v418 = &v400 - 6;
    *(&v400 - 4) = sub_1D5B4AA6C;
    *(&v400 - 3) = 0;
    v398 = sub_1D6708BFC;
    v399 = v104;
    LOBYTE(v432) = 0;
    v105 = swift_allocObject();
    *(v105 + 16) = v428;
    *(v105 + 32) = v432;
    v402 = v101;
    *(v105 + 40) = v101;
    *(v105 + 48) = v100;
    sub_1D5D353C0();
    v107 = v106;
    v108 = sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0);
    v401 = v100;
    swift_retain_n();
    v409 = v108;
    v410 = v107;
    v109 = sub_1D72647CC();
    LOBYTE(v432) = 0;
    v110 = swift_allocObject();
    *(v110 + 16) = v109;
    *(v110 + 24) = v428;
    *(v110 + 40) = v432;
    v111 = (v98 + *(v429 + 9));
    v112 = __swift_project_boxed_opaque_existential_1(v111, v111[3]);
    MEMORY[0x1EEE9AC00](v112, v113);
    MEMORY[0x1EEE9AC00](v114, v115);
    v116 = v418;
    *(&v400 - 4) = sub_1D615B4A4;
    *(&v400 - 3) = v116;
    v398 = sub_1D6708BFC;
    v399 = v105;
    v117 = v427;
    v118 = v430;
    sub_1D5D2BC70(v427, sub_1D615B49C, v119, sub_1D615B4A4, (&v400 - 6));
    if (v118)
    {
      sub_1D5D2CFE8(v117, type metadata accessor for FormatVersionRequirement);

      v94 = v98;
      return sub_1D5D2CFE8(v94, sub_1D5D35454);
    }

    v429 = v111;

    sub_1D72647EC();
    v430 = 0;
    sub_1D5D2CFE8(v427, type metadata accessor for FormatVersionRequirement);

    v123 = v424;
    swift_beginAccess();
    v124 = v123[6];
    v125 = v417;
    v126 = v425;
    v127 = v420;
    v128 = v421;
    (v420)(v417, v425, v421);
    swift_storeEnumTagMultiPayload();
    if (*(v124 + 16))
    {
      LOBYTE(v460) = 0;
      v129 = swift_allocObject();
      v428 = xmmword_1D7297410;
      *(v129 + 16) = xmmword_1D7297410;
      *(v129 + 32) = v460;
      v130 = v402;
      *(v129 + 40) = v402;
      *(v129 + 48) = v401;

      v131 = sub_1D72647CC();
      LOBYTE(v460) = 0;
      v132 = swift_allocObject();
      *(v132 + 16) = v131;
      *(v132 + 24) = v428;
      *(v132 + 40) = v460;
      v133 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
      v427 = &v400;
      MEMORY[0x1EEE9AC00](v133, v134);
      MEMORY[0x1EEE9AC00](v135, v136);
      *(&v400 - 4) = sub_1D5B4AA6C;
      *(&v400 - 3) = 0;
      v398 = sub_1D6708BFC;
      v399 = v129;
      v137 = v430;
      v139 = sub_1D5D2F7A4(v125, sub_1D615B49C, v138, sub_1D615B4A4, (&v400 - 6));
      if (v137)
      {
        sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);

LABEL_18:

LABEL_19:
        v94 = v426;
        return sub_1D5D2CFE8(v94, sub_1D5D35454);
      }

      v141 = v139;
      v140 = v130;

      if (v141)
      {
        v460 = v428;
        LOBYTE(v461) = 0;
        *&v447 = v124;
        sub_1D5C34D84(0, &qword_1EDF04F00, &type metadata for FormatTextNodeStyle.Selector, MEMORY[0x1E69E62F8]);
        sub_1D5D3AD58();
        sub_1D72647EC();
        v123 = v424;
        v127 = v420;
        v128 = v421;
        v430 = 0;

        sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v430 = 0;
        sub_1D5D2CFE8(v417, type metadata accessor for FormatVersionRequirement);

        v123 = v424;
        v127 = v420;
        v128 = v421;
      }

      v126 = v425;
    }

    else
    {
      sub_1D5D2CFE8(v125, type metadata accessor for FormatVersionRequirement);
      v140 = v402;
    }

    v142 = v123[7];
    v127(v416, v126, v128);
    swift_storeEnumTagMultiPayload();
    v428 = xmmword_1D72BAA60;
    v495 = xmmword_1D72BAA60;
    v496 = 0;
    LOBYTE(v460) = 0;
    v143 = swift_allocObject();
    v145 = v143;
    *(v143 + 16) = v428;
    *(v143 + 32) = v460;
    *(v143 + 40) = v140;
    v146 = v140;
    v147 = v401;
    *(v143 + 48) = v401;
    if ((~v142 & 0xF000000000000007) != 0)
    {
      v427 = &v400;
      v494 = v142;
      MEMORY[0x1EEE9AC00](v143, v144);
      *(&v400 - 4) = sub_1D5B4AA6C;
      *(&v400 - 3) = 0;
      v398 = sub_1D6708BFC;
      v399 = v145;
      LOBYTE(v460) = 0;
      v159 = swift_allocObject();
      *(v159 + 16) = v428;
      *(v159 + 32) = v460;
      *(v159 + 40) = v146;
      *(v159 + 48) = v147;
      swift_retain_n();
      sub_1D5D04BD4(v142);
      v160 = sub_1D72647CC();
      LOBYTE(v460) = 0;
      v161 = swift_allocObject();
      *(v161 + 16) = v160;
      *(v161 + 24) = v428;
      *(v161 + 40) = v460;
      v162 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
      MEMORY[0x1EEE9AC00](v162, v163);
      MEMORY[0x1EEE9AC00](v164, v165);
      *(&v400 - 4) = sub_1D615B4A4;
      *(&v400 - 3) = (&v400 - 6);
      v398 = sub_1D6708BFC;
      v399 = v159;
      v166 = v416;
      v167 = v430;
      v169 = sub_1D5D2F7A4(v416, sub_1D615B49C, v168, sub_1D615B4A4, (&v400 - 6));
      if (v167)
      {

        v170 = v426;

        v171 = v166;
LABEL_33:
        sub_1D5D2CFE8(v171, type metadata accessor for FormatVersionRequirement);
LABEL_34:
        v94 = v170;
        return sub_1D5D2CFE8(v94, sub_1D5D35454);
      }

      v184 = v169;

      if (v184)
      {
        sub_1D5B57BA4();
        sub_1D72647EC();
        v123 = v424;
        v127 = v420;
        v128 = v421;
        v430 = 0;
        v149 = v402;
        v185 = v415;

        v148 = v401;
        v150 = v185;
LABEL_29:
        sub_1D5D2CFE8(v416, type metadata accessor for FormatVersionRequirement);
        v151 = *(v123 + 9);
        v489 = *(v123 + 8);
        v490 = v151;
        v152 = *(v123 + 11);
        v491 = *(v123 + 10);
        v492 = v152;
        v153 = *(v123 + 5);
        v485 = *(v123 + 4);
        v486 = v153;
        v154 = *(v123 + 7);
        v487 = *(v123 + 6);
        v488 = v154;
        v155 = v425;
        v127(v150, v425, v128);
        swift_storeEnumTagMultiPayload();
        v428 = xmmword_1D72BAA70;
        v432 = xmmword_1D72BAA70;
        LOBYTE(v433) = 0;
        LOBYTE(v460) = 0;
        v156 = swift_allocObject();
        *(v156 + 16) = v428;
        *(v156 + 32) = v460;
        *(v156 + 40) = v149;
        *(v156 + 48) = v148;
        v493[4] = v489;
        v493[5] = v490;
        v493[6] = v491;
        v493[7] = v492;
        v493[0] = v485;
        v493[1] = v486;
        v493[2] = v487;
        v493[3] = v488;
        v157 = sub_1D5CFD0B8(v493);
        if (v157 == 1)
        {
        }

        else
        {
          v427 = &v400;
          v464 = v489;
          v465 = v490;
          v466 = v491;
          v467 = v492;
          v460 = v485;
          v461 = v486;
          v462 = v487;
          v463 = v488;
          MEMORY[0x1EEE9AC00](v157, v158);
          *(&v400 - 4) = sub_1D5B4AA6C;
          *(&v400 - 3) = 0;
          v398 = sub_1D6708BFC;
          v399 = v156;
          LOBYTE(v447) = 0;
          v172 = swift_allocObject();
          *(v172 + 16) = v428;
          *(v172 + 32) = v447;
          *(v172 + 40) = v149;
          *(v172 + 48) = v148;
          swift_retain_n();
          sub_1D5D355B8(&v485, &v447, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
          v173 = sub_1D72647CC();
          LOBYTE(v447) = 0;
          v174 = swift_allocObject();
          *(v174 + 16) = v173;
          *(v174 + 24) = v428;
          *(v174 + 40) = v447;
          v175 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
          MEMORY[0x1EEE9AC00](v175, v176);
          MEMORY[0x1EEE9AC00](v177, v178);
          *(&v400 - 4) = sub_1D615B4A4;
          *(&v400 - 3) = (&v400 - 6);
          v398 = sub_1D6708BFC;
          v399 = v172;
          v179 = v415;
          v180 = v430;
          v182 = sub_1D5D2F7A4(v415, sub_1D615B49C, v181, sub_1D615B4A4, (&v400 - 6));
          if (v180)
          {

            v451 = v464;
            v452 = v465;
            v453 = v466;
            v454 = v467;
            v447 = v460;
            v448 = v461;
            v449 = v462;
            v450 = v463;
            sub_1D5CFD368(&v447);
            v183 = v426;
            sub_1D5D2CFE8(v179, type metadata accessor for FormatVersionRequirement);
            v94 = v183;
            return sub_1D5D2CFE8(v94, sub_1D5D35454);
          }

          v186 = v182;

          if (v186)
          {
            sub_1D5D35694();
            sub_1D72647EC();
            v123 = v424;
            v127 = v420;
            v128 = v421;
            v430 = 0;

            v451 = v464;
            v452 = v465;
            v453 = v466;
            v454 = v467;
            v447 = v460;
            v448 = v461;
            v449 = v462;
            v450 = v463;
            sub_1D5CFD368(&v447);
          }

          else
          {
            v430 = 0;

            v451 = v464;
            v452 = v465;
            v453 = v466;
            v454 = v467;
            v447 = v460;
            v448 = v461;
            v449 = v462;
            v450 = v463;
            sub_1D5CFD368(&v447);
            v123 = v424;
            v127 = v420;
            v128 = v421;
          }

          v148 = v401;
          v155 = v425;
        }

        sub_1D5D2CFE8(v415, type metadata accessor for FormatVersionRequirement);
        v187 = v123[24];
        v127(v414, v155, v128);
        swift_storeEnumTagMultiPayload();
        v428 = xmmword_1D72BAA80;
        v483 = xmmword_1D72BAA80;
        v484 = 0;
        LOBYTE(v460) = 0;
        v188 = swift_allocObject();
        v190 = v188;
        *(v188 + 16) = v428;
        *(v188 + 32) = v460;
        v191 = v402;
        *(v188 + 40) = v402;
        *(v188 + 48) = v148;
        if (v187)
        {
          v427 = &v400;
          v482 = v187;
          MEMORY[0x1EEE9AC00](v188, v189);
          *(&v400 - 4) = sub_1D5B4AA6C;
          *(&v400 - 3) = 0;
          v398 = sub_1D6708BFC;
          v399 = v190;
          LOBYTE(v460) = 0;
          v192 = swift_allocObject();
          *(v192 + 16) = v428;
          *(v192 + 32) = v460;
          *(v192 + 40) = v191;
          *(v192 + 48) = v148;
          swift_retain_n();

          v193 = sub_1D72647CC();
          LOBYTE(v460) = 0;
          v194 = swift_allocObject();
          *(v194 + 16) = v193;
          *(v194 + 24) = v428;
          *(v194 + 40) = v460;
          v195 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
          MEMORY[0x1EEE9AC00](v195, v196);
          MEMORY[0x1EEE9AC00](v197, v198);
          *(&v400 - 4) = sub_1D615B4A4;
          *(&v400 - 3) = (&v400 - 6);
          v398 = sub_1D6708BFC;
          v399 = v192;
          v199 = v414;
          v200 = v430;
          v202 = sub_1D5D2F7A4(v414, sub_1D615B49C, v201, sub_1D615B4A4, (&v400 - 6));
          v430 = v200;
          if (v200)
          {

            v203 = v426;
LABEL_47:
            v204 = v199;
LABEL_60:
            sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);
            v94 = v203;
            return sub_1D5D2CFE8(v94, sub_1D5D35454);
          }

          v205 = v202;

          if (v205)
          {
            sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
            sub_1D66612AC();
            v203 = v426;
            v206 = v430;
            sub_1D72647EC();
            v127 = v420;
            v430 = v206;
            if (v206)
            {

              goto LABEL_47;
            }

            v254 = v425;

            sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
            v207 = v254;
            v148 = v401;
LABEL_54:
            v208 = v424;
            v209 = *(v424 + 31);
            v478 = *(v424 + 29);
            v479 = v209;
            v481 = *(v424 + 280);
            v210 = *(v424 + 27);
            v476 = *(v424 + 25);
            v477 = v210;
            v480 = *(v424 + 33);
            v211 = v207;
            (v127)(v413);
            swift_storeEnumTagMultiPayload();
            v428 = xmmword_1D72BAA90;
            v432 = xmmword_1D72BAA90;
            LOBYTE(v433) = 0;
            LOBYTE(v460) = 0;
            v212 = swift_allocObject();
            v214 = v212;
            *(v212 + 16) = v428;
            *(v212 + 32) = v460;
            v215 = v402;
            *(v212 + 40) = v402;
            *(v212 + 48) = v148;
            if (v481 == 254)
            {

              v216 = v148;
              v217 = v421;
            }

            else
            {
              v427 = &v400;
              v462 = v478;
              v463 = v479;
              v464 = v480;
              LOBYTE(v465) = v481;
              v460 = v476;
              v461 = v477;
              MEMORY[0x1EEE9AC00](v212, v213);
              *(&v400 - 4) = sub_1D5B4AA6C;
              *(&v400 - 3) = 0;
              v398 = sub_1D6708BFC;
              v399 = v214;
              LOBYTE(v447) = 0;
              v233 = swift_allocObject();
              *(v233 + 16) = v428;
              *(v233 + 32) = v447;
              *(v233 + 40) = v215;
              *(v233 + 48) = v148;
              swift_retain_n();
              sub_1D5D355B8(&v476, &v447, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
              v234 = sub_1D72647CC();
              LOBYTE(v447) = 0;
              v235 = swift_allocObject();
              *(v235 + 16) = v234;
              *(v235 + 24) = v428;
              *(v235 + 40) = v447;
              v236 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
              MEMORY[0x1EEE9AC00](v236, v237);
              MEMORY[0x1EEE9AC00](v238, v239);
              *(&v400 - 4) = sub_1D615B4A4;
              *(&v400 - 3) = (&v400 - 6);
              v398 = sub_1D6708BFC;
              v399 = v233;
              v240 = v413;
              v241 = v430;
              v243 = sub_1D5D2F7A4(v413, sub_1D615B49C, v242, sub_1D615B4A4, (&v400 - 6));
              if (v241)
              {

                v449 = v462;
                v450 = v463;
                v451 = v464;
                LOBYTE(v452) = v465;
                v447 = v460;
                v448 = v461;
                sub_1D601144C(&v447);
                v244 = v426;
                sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);
                v94 = v244;
                return sub_1D5D2CFE8(v94, sub_1D5D35454);
              }

              v248 = v243;

              if (v248)
              {
                sub_1D6661204();
                sub_1D72647EC();
                v208 = v424;
                v249 = v421;
                v215 = v402;
                v430 = 0;

                v449 = v462;
                v450 = v463;
                v451 = v464;
                LOBYTE(v452) = v465;
                v447 = v460;
                v448 = v461;
                sub_1D601144C(&v447);
                v217 = v249;
                v216 = v401;
                v211 = v425;
              }

              else
              {
                v430 = 0;

                v449 = v462;
                v450 = v463;
                v451 = v464;
                LOBYTE(v452) = v465;
                v447 = v460;
                v448 = v461;
                sub_1D601144C(&v447);
                v211 = v425;
                v208 = v424;
                v217 = v421;
                v216 = v401;
                v215 = v402;
              }
            }

            sub_1D5D2CFE8(v413, type metadata accessor for FormatVersionRequirement);
            v218 = v208[36];
            v219 = v411;
            (v420)(v411, v211, v217);
            swift_storeEnumTagMultiPayload();
            v428 = xmmword_1D72BAAA0;
            v474 = xmmword_1D72BAAA0;
            v475 = 0;
            LOBYTE(v460) = 0;
            v220 = swift_allocObject();
            v222 = v220;
            *(v220 + 16) = v428;
            *(v220 + 32) = v460;
            *(v220 + 40) = v215;
            *(v220 + 48) = v216;
            if (v218)
            {
              v427 = &v400;
              v473 = v218;
              MEMORY[0x1EEE9AC00](v220, v221);
              *(&v400 - 4) = sub_1D5B4AA6C;
              *(&v400 - 3) = 0;
              v398 = sub_1D6708BFC;
              v399 = v222;
              LOBYTE(v460) = 0;
              v223 = swift_allocObject();
              *(v223 + 16) = v428;
              *(v223 + 32) = v460;
              *(v223 + 40) = v215;
              *(v223 + 48) = v216;
              swift_retain_n();

              v224 = sub_1D72647CC();
              LOBYTE(v460) = 0;
              v225 = swift_allocObject();
              *(v225 + 16) = v224;
              *(v225 + 24) = v428;
              *(v225 + 40) = v460;
              v226 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
              MEMORY[0x1EEE9AC00](v226, v227);
              MEMORY[0x1EEE9AC00](v228, v229);
              *(&v400 - 4) = sub_1D615B4A4;
              *(&v400 - 3) = (&v400 - 6);
              v398 = sub_1D6708BFC;
              v399 = v223;
              v230 = v430;
              v232 = sub_1D5D2F7A4(v219, sub_1D615B49C, v231, sub_1D615B4A4, (&v400 - 6));
              v430 = v230;
              if (v230)
              {

                v203 = v426;
LABEL_59:
                v204 = v219;
                goto LABEL_60;
              }

              v250 = v232;

              v251 = v412;
              if (v250)
              {
                sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
                sub_1D5D436D8();
                v203 = v426;
                v252 = v430;
                sub_1D72647EC();
                v253 = v421;
                v430 = v252;
                v215 = v402;
                if (v252)
                {

                  v219 = v411;
                  goto LABEL_59;
                }

                v255 = v425;

                sub_1D5D2CFE8(v411, type metadata accessor for FormatVersionRequirement);
                v246 = v255;
                v247 = v253;
                v216 = v401;
              }

              else
              {

                sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);
                v247 = v421;
                v216 = v401;
                v215 = v402;
                v246 = v425;
              }

              v245 = v251;
            }

            else
            {

              sub_1D5D2CFE8(v219, type metadata accessor for FormatVersionRequirement);

              v245 = v412;
              v246 = v211;
              v247 = v217;
            }

            v256 = v424;
            v257 = *(v424 + 59);
            v457 = *(v424 + 57);
            v458 = v257;
            v459 = *(v424 + 244);
            v258 = *(v424 + 51);
            v453 = *(v424 + 49);
            v454 = v258;
            v259 = *(v424 + 55);
            v455 = *(v424 + 53);
            v456 = v259;
            v260 = *(v424 + 43);
            v449 = *(v424 + 41);
            v450 = v260;
            v261 = *(v424 + 47);
            v451 = *(v424 + 45);
            v452 = v261;
            v262 = *(v424 + 39);
            v447 = *(v424 + 37);
            v448 = v262;
            v263 = v246;
            v264 = v247;
            v420(v245);
            swift_storeEnumTagMultiPayload();
            v428 = xmmword_1D72BAAB0;
            v445 = xmmword_1D72BAAB0;
            v446 = 0;
            LOBYTE(v432) = 0;
            v265 = swift_allocObject();
            *(v265 + 16) = v428;
            *(v265 + 32) = v432;
            *(v265 + 40) = v215;
            *(v265 + 48) = v216;
            v470 = v457;
            v471 = v458;
            v472 = v459;
            v466 = v453;
            v467 = v454;
            v468 = v455;
            v469 = v456;
            v462 = v449;
            v463 = v450;
            v464 = v451;
            v465 = v452;
            v460 = v447;
            v461 = v448;
            v266 = sub_1D5D39FB4(&v460);
            if (v266 == 1)
            {

              v268 = v216;
              v269 = v264;
            }

            else
            {
              v427 = &v400;
              v444 = v459;
              v442 = v457;
              v443 = v458;
              v438 = v453;
              v439 = v454;
              v440 = v455;
              v441 = v456;
              v434 = v449;
              v435 = v450;
              v436 = v451;
              v437 = v452;
              v432 = v447;
              v433 = v448;
              MEMORY[0x1EEE9AC00](v266, v267);
              *(&v400 - 4) = sub_1D5B4AA6C;
              *(&v400 - 3) = 0;
              v398 = sub_1D6708BFC;
              v399 = v265;
              v431 = 0;
              v270 = swift_allocObject();
              *(v270 + 16) = v428;
              *(v270 + 32) = v431;
              *(v270 + 40) = v215;
              *(v270 + 48) = v216;
              swift_retain_n();
              v271 = sub_1D72647CC();
              v431 = 0;
              v272 = swift_allocObject();
              *(v272 + 16) = v271;
              *(v272 + 24) = v428;
              *(v272 + 40) = v431;
              v273 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
              MEMORY[0x1EEE9AC00](v273, v274);
              MEMORY[0x1EEE9AC00](v275, v276);
              *(&v400 - 4) = sub_1D615B4A4;
              *(&v400 - 3) = (&v400 - 6);
              v277 = v412;
              v398 = sub_1D6708BFC;
              v399 = v270;
              v278 = v430;
              v280 = sub_1D5D2F7A4(v412, sub_1D615B49C, v279, sub_1D615B4A4, (&v400 - 6));
              if (v278)
              {
                goto LABEL_83;
              }

              v281 = v280;

              if (v281)
              {
                sub_1D5F0FAA4();
                sub_1D72647EC();
              }

              v430 = 0;
              v256 = v424;
              v263 = v425;
              v269 = v421;
              v268 = v401;
            }

            sub_1D5D2CFE8(v412, type metadata accessor for FormatVersionRequirement);

            v282 = v256[62];
            v283 = *(v256 + 504);
            v277 = v408;
            (v420)(v408, v263, v269);
            swift_storeEnumTagMultiPayload();
            v428 = xmmword_1D72BAAC0;
            v432 = xmmword_1D72BAAC0;
            LOBYTE(v433) = 0;
            LOBYTE(v445) = 0;
            v284 = swift_allocObject();
            v286 = v284;
            *(v284 + 16) = v428;
            *(v284 + 32) = v445;
            v287 = v402;
            *(v284 + 40) = v402;
            *(v284 + 48) = v268;
            if (v283)
            {

              goto LABEL_87;
            }

            v427 = &v400;
            *&v445 = v282;
            MEMORY[0x1EEE9AC00](v284, v285);
            *(&v400 - 4) = sub_1D5B4AA6C;
            *(&v400 - 3) = 0;
            v398 = sub_1D6708BFC;
            v399 = v286;
            v431 = 0;
            v288 = swift_allocObject();
            *(v288 + 16) = v428;
            *(v288 + 32) = v431;
            *(v288 + 40) = v287;
            *(v288 + 48) = v268;
            swift_retain_n();
            v289 = sub_1D72647CC();
            v431 = 0;
            v290 = swift_allocObject();
            *(v290 + 16) = v289;
            *(v290 + 24) = v428;
            *(v290 + 40) = v431;
            v291 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
            MEMORY[0x1EEE9AC00](v291, v292);
            MEMORY[0x1EEE9AC00](v293, v294);
            *(&v400 - 4) = sub_1D615B4A4;
            *(&v400 - 3) = (&v400 - 6);
            v398 = sub_1D6708BFC;
            v399 = v288;
            v295 = v430;
            v297 = sub_1D5D2F7A4(v277, sub_1D615B49C, v296, sub_1D615B4A4, (&v400 - 6));
            if (!v295)
            {
              v298 = v297;

              if (v298)
              {
                sub_1D5B578C4();
                sub_1D72647EC();
              }

              v430 = 0;
              v256 = v424;
              v269 = v421;
              v287 = v402;
LABEL_87:
              sub_1D5D2CFE8(v408, type metadata accessor for FormatVersionRequirement);

              v299 = v256[64];
              if (qword_1EDF31EA8 != -1)
              {
                swift_once();
              }

              v300 = __swift_project_value_buffer(v269, qword_1EDFFCD18);
              v301 = v407;
              (v420)(v407, v300, v269);
              swift_storeEnumTagMultiPayload();
              v428 = xmmword_1D72BAAD0;
              v432 = xmmword_1D72BAAD0;
              LOBYTE(v433) = 0;
              LOBYTE(v445) = 0;
              v302 = swift_allocObject();
              v304 = v302;
              *(v302 + 16) = v428;
              *(v302 + 32) = v445;
              v305 = v401;
              *(v302 + 40) = v287;
              *(v302 + 48) = v305;
              if (v299)
              {
                v427 = &v400;
                *&v445 = v299;
                MEMORY[0x1EEE9AC00](v302, v303);
                *(&v400 - 4) = sub_1D5B4AA6C;
                *(&v400 - 3) = 0;
                v398 = sub_1D6708BFC;
                v399 = v304;
                v431 = 0;
                v306 = swift_allocObject();
                *(v306 + 16) = v428;
                *(v306 + 32) = v431;
                *(v306 + 40) = v287;
                *(v306 + 48) = v305;
                swift_retain_n();

                v307 = sub_1D72647CC();
                v431 = 0;
                v308 = swift_allocObject();
                *(v308 + 16) = v307;
                *(v308 + 24) = v428;
                *(v308 + 40) = v431;
                v309 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
                MEMORY[0x1EEE9AC00](v309, v310);
                MEMORY[0x1EEE9AC00](v311, v312);
                *(&v400 - 4) = sub_1D615B4A4;
                *(&v400 - 3) = (&v400 - 6);
                v398 = sub_1D6708BFC;
                v399 = v306;
                v313 = v430;
                v315 = sub_1D5D2F7A4(v301, sub_1D615B49C, v314, sub_1D615B4A4, (&v400 - 6));
                if (v313)
                {

                  v170 = v426;

                  v171 = v301;
                  goto LABEL_33;
                }

                v316 = v315;

                if (v316)
                {
                  sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
                  sub_1D66582DC();
                  sub_1D72647EC();
                }

                v430 = 0;

                sub_1D5D2CFE8(v301, type metadata accessor for FormatVersionRequirement);
                v256 = v424;
                v269 = v421;
                v287 = v402;
              }

              else
              {

                sub_1D5D2CFE8(v301, type metadata accessor for FormatVersionRequirement);
              }

              v317 = v406;
              v318 = v256[65];
              v319 = v256[66];
              if (qword_1EDF31EE8 != -1)
              {
                swift_once();
              }

              v320 = __swift_project_value_buffer(v269, qword_1EDFFCD98);
              (v420)(v317, v320, v269);
              swift_storeEnumTagMultiPayload();
              v428 = xmmword_1D72BAAE0;
              v432 = xmmword_1D72BAAE0;
              LOBYTE(v433) = 0;
              LOBYTE(v445) = 0;
              v321 = swift_allocObject();
              v323 = v321;
              *(v321 + 16) = v428;
              *(v321 + 32) = v445;
              v324 = v401;
              *(v321 + 40) = v287;
              *(v321 + 48) = v324;
              if (v318 == 9)
              {
              }

              else
              {
                LOBYTE(v445) = v318;
                *(&v445 + 1) = v319;
                MEMORY[0x1EEE9AC00](v321, v322);
                *(&v400 - 4) = sub_1D5B4AA6C;
                *(&v400 - 3) = 0;
                v398 = sub_1D6708BFC;
                v399 = v323;
                v431 = 0;
                v325 = swift_allocObject();
                *(v325 + 16) = v428;
                *(v325 + 32) = v431;
                *(v325 + 40) = v287;
                *(v325 + 48) = v324;
                swift_retain_n();
                sub_1D62B5D18(v318, v319);
                v326 = sub_1D72647CC();
                v431 = 0;
                v327 = swift_allocObject();
                *(v327 + 16) = v326;
                *(v327 + 24) = v428;
                *(v327 + 40) = v431;
                v328 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
                MEMORY[0x1EEE9AC00](v328, v329);
                MEMORY[0x1EEE9AC00](v330, v331);
                *(&v400 - 4) = sub_1D615B4A4;
                *(&v400 - 3) = (&v400 - 6);
                v317 = v406;
                v398 = sub_1D6708BFC;
                v399 = v325;
                v332 = v430;
                v334 = sub_1D5D2F7A4(v406, sub_1D615B49C, v333, sub_1D615B4A4, (&v400 - 6));
                if (v332)
                {
                  goto LABEL_109;
                }

                v335 = v334;

                if (v335)
                {
                  sub_1D66C908C();
                  sub_1D72647EC();
                }

                v430 = 0;

                sub_1D5C84FF4(*(&v445 + 1));
                v269 = v421;
              }

              v336 = v420;
              sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
              v337 = v424[67];
              v338 = v424[68];
              v339 = v402;
              if (qword_1EDF31ED0 != -1)
              {
                swift_once();
              }

              v340 = __swift_project_value_buffer(v269, qword_1EDFFCD50);
              v341 = v336;
              v336(v405, v340, v269);
              swift_storeEnumTagMultiPayload();
              v428 = xmmword_1D72BAAF0;
              v432 = xmmword_1D72BAAF0;
              LOBYTE(v433) = 0;
              LOBYTE(v445) = 0;
              v342 = swift_allocObject();
              v344 = v342;
              *(v342 + 16) = v428;
              *(v342 + 32) = v445;
              v345 = v401;
              *(v342 + 40) = v339;
              *(v342 + 48) = v345;
              if (v337 == 9)
              {
                v346 = v269;

                goto LABEL_117;
              }

              LOBYTE(v445) = v337;
              *(&v445 + 1) = v338;
              MEMORY[0x1EEE9AC00](v342, v343);
              *(&v400 - 4) = sub_1D5B4AA6C;
              *(&v400 - 3) = 0;
              v398 = sub_1D6708BFC;
              v399 = v344;
              v431 = 0;
              v347 = swift_allocObject();
              *(v347 + 16) = v428;
              *(v347 + 32) = v431;
              *(v347 + 40) = v339;
              *(v347 + 48) = v345;
              swift_retain_n();
              sub_1D62B5D18(v337, v338);
              v348 = sub_1D72647CC();
              v431 = 0;
              v349 = swift_allocObject();
              *(v349 + 16) = v348;
              *(v349 + 24) = v428;
              *(v349 + 40) = v431;
              v350 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
              MEMORY[0x1EEE9AC00](v350, v351);
              MEMORY[0x1EEE9AC00](v352, v353);
              *(&v400 - 4) = sub_1D615B4A4;
              *(&v400 - 3) = (&v400 - 6);
              v398 = sub_1D6708BFC;
              v399 = v347;
              v317 = v405;
              v354 = v430;
              v356 = sub_1D5D2F7A4(v405, sub_1D615B49C, v355, sub_1D615B4A4, (&v400 - 6));
              if (!v354)
              {
                v430 = 0;
                v357 = v356;

                if (v357)
                {
                  sub_1D66C908C();
                  v358 = v430;
                  sub_1D72647EC();
                  if (v358)
                  {

                    v317 = v405;
                    goto LABEL_110;
                  }

                  sub_1D5C84FF4(*(&v445 + 1));
                  v430 = 0;
                }

                else
                {

                  sub_1D5C84FF4(*(&v445 + 1));
                }

                v341 = v420;
                v346 = v421;
LABEL_117:
                sub_1D5D2CFE8(v405, type metadata accessor for FormatVersionRequirement);
                v359 = *(v424 + 552);
                v360 = v403;
                v361 = v404;
                v362 = v402;
                if (qword_1EDF31F08 != -1)
                {
                  swift_once();
                }

                v363 = __swift_project_value_buffer(v346, qword_1EDFFCDE0);
                v341(v361, v363, v346);
                swift_storeEnumTagMultiPayload();
                v428 = xmmword_1D7282A80;
                v432 = xmmword_1D7282A80;
                LOBYTE(v433) = 0;
                LOBYTE(v445) = 0;
                v364 = swift_allocObject();
                v366 = v364;
                *(v364 + 16) = v428;
                *(v364 + 32) = v445;
                v367 = v401;
                *(v364 + 40) = v362;
                *(v364 + 48) = v367;
                if (v359 == 2)
                {
                }

                else
                {
                  v427 = &v400;
                  LOBYTE(v445) = v359 & 1;
                  MEMORY[0x1EEE9AC00](v364, v365);
                  *(&v400 - 4) = sub_1D5B4AA6C;
                  *(&v400 - 3) = 0;
                  v398 = sub_1D6708BFC;
                  v399 = v366;
                  v431 = 0;
                  v368 = swift_allocObject();
                  *(v368 + 16) = v428;
                  *(v368 + 32) = v431;
                  *(v368 + 40) = v362;
                  *(v368 + 48) = v367;
                  swift_retain_n();
                  v369 = sub_1D72647CC();
                  v431 = 0;
                  v370 = swift_allocObject();
                  *(v370 + 16) = v369;
                  *(v370 + 24) = v428;
                  *(v370 + 40) = v431;
                  v371 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
                  MEMORY[0x1EEE9AC00](v371, v372);
                  MEMORY[0x1EEE9AC00](v373, v374);
                  *(&v400 - 4) = sub_1D615B4A4;
                  *(&v400 - 3) = (&v400 - 6);
                  v398 = sub_1D6708BFC;
                  v399 = v368;
                  v375 = v430;
                  v377 = sub_1D5D2F7A4(v361, sub_1D615B49C, v376, sub_1D615B4A4, (&v400 - 6));
                  if (v375)
                  {
                    sub_1D5D2CFE8(v361, type metadata accessor for FormatVersionRequirement);

                    goto LABEL_18;
                  }

                  v378 = v377;

                  if (v378)
                  {
                    sub_1D72647EC();
                  }

                  v430 = 0;
                  v360 = v403;
                  v341 = v420;
                  v346 = v421;
                }

                sub_1D5D2CFE8(v404, type metadata accessor for FormatVersionRequirement);

                v379 = v424[70];
                v380 = v402;
                if (qword_1EDF31E80 != -1)
                {
                  swift_once();
                }

                v381 = __swift_project_value_buffer(v346, qword_1EDFFCCA8);
                v341(v360, v381, v346);
                swift_storeEnumTagMultiPayload();
                v428 = xmmword_1D72BAB00;
                v432 = xmmword_1D72BAB00;
                LOBYTE(v433) = 0;
                LOBYTE(v445) = 0;
                v382 = swift_allocObject();
                v384 = v382;
                *(v382 + 16) = v428;
                *(v382 + 32) = v445;
                v385 = v401;
                *(v382 + 40) = v380;
                *(v382 + 48) = v385;
                if (v379)
                {
                  v427 = &v400;
                  *&v445 = v379;
                  MEMORY[0x1EEE9AC00](v382, v383);
                  *(&v400 - 4) = sub_1D5B4AA6C;
                  *(&v400 - 3) = 0;
                  v398 = sub_1D6708BFC;
                  v399 = v384;
                  v431 = 0;
                  v386 = v360;
                  v387 = swift_allocObject();
                  *(v387 + 16) = v428;
                  *(v387 + 32) = v431;
                  *(v387 + 40) = v380;
                  *(v387 + 48) = v385;
                  swift_retain_n();

                  v388 = sub_1D72647CC();
                  v431 = 0;
                  v389 = swift_allocObject();
                  *(v389 + 16) = v388;
                  *(v389 + 24) = v428;
                  *(v389 + 40) = v431;
                  v390 = __swift_project_boxed_opaque_existential_1(v429, v429[3]);
                  MEMORY[0x1EEE9AC00](v390, v391);
                  MEMORY[0x1EEE9AC00](v392, v393);
                  *(&v400 - 4) = sub_1D615B4A4;
                  *(&v400 - 3) = (&v400 - 6);
                  v398 = sub_1D6708BFC;
                  v399 = v387;
                  v394 = v430;
                  v396 = sub_1D5D2F7A4(v386, sub_1D615B49C, v395, sub_1D615B4A4, (&v400 - 6));
                  if (v394)
                  {
                  }

                  else
                  {
                    v397 = v396;

                    if (v397)
                    {
                      sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
                      sub_1D66582DC();
                      sub_1D72647EC();
                    }
                  }

                  sub_1D5D2CFE8(v403, type metadata accessor for FormatVersionRequirement);
                }

                else
                {

                  sub_1D5D2CFE8(v360, type metadata accessor for FormatVersionRequirement);
                }

                goto LABEL_19;
              }

LABEL_109:

LABEL_110:
              sub_1D5C84FF4(*(&v445 + 1));
              sub_1D5D2CFE8(v317, type metadata accessor for FormatVersionRequirement);
              goto LABEL_19;
            }

LABEL_83:
            sub_1D5D2CFE8(v277, type metadata accessor for FormatVersionRequirement);

            v170 = v426;
            goto LABEL_34;
          }

          sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);
          v127 = v420;
          v148 = v401;
        }

        else
        {

          sub_1D5D2CFE8(v414, type metadata accessor for FormatVersionRequirement);
        }

        v207 = v425;
        goto LABEL_54;
      }

      v430 = 0;

      v123 = v424;
      v127 = v420;
      v128 = v421;
      v148 = v401;
      v149 = v402;
    }

    else
    {

      v148 = v147;
      v149 = v146;
    }

    v150 = v415;
    goto LABEL_29;
  }

  return sub_1D5D2CFE8(v121, sub_1D5D35454);
}

void sub_1D5D353C0()
{
  if (!qword_1EDF03490)
  {
    sub_1D5C31AE8();
    sub_1D5B58B84(&qword_1EDF25458, sub_1D5C31AE8);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03490);
    }
  }
}

void sub_1D5D35454()
{
  if (!qword_1EDF08D58)
  {
    sub_1D5D353C0();
    sub_1D5B58B84(&qword_1EDF03498, sub_1D5D353C0);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D58);
    }
  }
}

uint64_t sub_1D5D354E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D610A360(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5D35558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D5D355B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D5D3562C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D5D35694()
{
  result = qword_1EDF12A70;
  if (!qword_1EDF12A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A70);
  }

  return result;
}

uint64_t FormatFill.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v59 = v60 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v60 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v60 - v17;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v24);
  v25 = sub_1D5C30408();
  v63 = v22;
  sub_1D5D2EE70(&type metadata for FormatFill, &type metadata for FormatCodingKeys, v26, v24, &type metadata for FormatFill, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v23, v22, v25, &off_1F51F6C78);
  v27 = v2[5];
  v62[4] = v2[4];
  v62[5] = v27;
  v28 = v2[7];
  v62[6] = v2[6];
  v62[7] = v28;
  v29 = v2[1];
  v62[0] = *v2;
  v62[1] = v29;
  v30 = v2[3];
  v62[2] = v2[2];
  v62[3] = v30;
  v31 = sub_1D5CFD35C(v62);
  v32 = sub_1D5CFD34C(v62);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v39 = *(v32 + 80);
      v61[4] = *(v32 + 64);
      v61[5] = v39;
      v40 = *(v32 + 112);
      v61[6] = *(v32 + 96);
      v61[7] = v40;
      v41 = *(v32 + 16);
      v61[0] = *v32;
      v61[1] = v41;
      v42 = *(v32 + 48);
      v61[2] = *(v32 + 32);
      v61[3] = v42;
      if (qword_1EDF31E90 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCCE8);
      v45 = v59;
      (*(*(v43 - 8) + 16))(v59, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v37 = v63;
      sub_1D63C43D0(2, v61, v45);
      v38 = v45;
    }

    else
    {
      v50 = *v32;
      sub_1D5B58478();
      v52 = *(v51 + 48);
      v53 = &v7[*(v51 + 64)];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v54 = sub_1D725BD1C();
      v55 = __swift_project_value_buffer(v54, qword_1EDFFCD30);
      v56 = *(*(v54 - 8) + 16);
      v56(v7, v55, v54);
      if (qword_1EDF31F48 != -1)
      {
        swift_once();
      }

      v57 = __swift_project_value_buffer(v54, qword_1EDFFCE68);
      v56(&v7[v52], v57, v54);
      type metadata accessor for FormatVersionRequirement.Value(0);
      *v53 = 0;
      *(v53 + 1) = 0;
      swift_storeEnumTagMultiPayload();
      v37 = v63;
      sub_1D5D44D6C(3, v50, v7);
      v38 = v7;
    }
  }

  else if (v31)
  {
    v46 = *(v32 + 16);
    v60[0] = *v32;
    v60[1] = v46;
    v47 = *(v32 + 48);
    v60[2] = *(v32 + 32);
    v60[3] = v47;
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v48 = sub_1D725BD1C();
    v49 = __swift_project_value_buffer(v48, qword_1EDFFCD30);
    (*(*(v48 - 8) + 16))(v14, v49, v48);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v63;
    sub_1D63C4230(1, v60, v14);
    v38 = v14;
  }

  else
  {
    v33 = *v32;
    v34 = *(v32 + 8);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D725BD1C();
    v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
    (*(*(v35 - 8) + 16))(v18, v36, v35);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v37 = v63;
    sub_1D5D35CF4(0, v33, v34, v18);
    v38 = v18;
  }

  sub_1D5D2CFE8(v38, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v37, sub_1D5D30DC4);
}

uint64_t sub_1D5D35CF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D6709230;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D35E8C();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5D35FB4();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D35E8C()
{
  result = qword_1EDF12A78;
  if (!qword_1EDF12A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A78);
  }

  return result;
}

void sub_1D5D35F30(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x64696C6F73;
  v4 = 0xEE00746E65696461;
  v5 = 0x72476C6169646172;
  if (*v1 != 2)
  {
    v5 = 0x656E696873;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x746E656964617267;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1D5D35FB4()
{
  result = qword_1EDF11818;
  if (!qword_1EDF11818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11818);
  }

  return result;
}

uint64_t FormatSolidFill.encode(to:)(void *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v78 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v72 - v10;
  sub_1D5D36A00();
  v79 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v80 = v1[1];
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D5C32ACC();
  v20 = v19;
  v21 = sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC);
  sub_1D5D2EE70(&type metadata for FormatSolidFill, v20, v22, v17, &type metadata for FormatSolidFill, v20, &type metadata for FormatVersions.JazzkonC, v18, v15, v21, &off_1F51F6C78);
  v23 = qword_1EDF31EB0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = sub_1D725BD1C();
  v25 = __swift_project_value_buffer(v24, qword_1EDFFCD30);
  v26 = *(v24 - 8);
  v27 = *(v26 + 16);
  v28 = v26 + 16;
  v27(v11, v25, v24);
  *&v77 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v29 = swift_allocObject();
  *(v29 + 16) = 21;
  *(v29 + 24) = 0x3FF0000000000000;
  *(v29 + 32) = 0;
  *&v81 = v29 | 0x1000000000000000;
  v83 = v16;
  v30 = static FormatColor.== infix(_:_:)(&v81, &v83);

  if (v30)
  {

    sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    v31 = v78;
    v27(v78, v25, v24);
  }

  else
  {
    v74 = v25;
    v75 = v28;
    v73 = v27;
    v76 = v3;
    v36 = v79;
    v37 = &v15[*(v79 + 11)];
    v39 = *v37;
    v38 = *(v37 + 1);
    LOBYTE(v81) = 0;
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v81;
    *(v40 + 40) = v39;
    *(v40 + 48) = v38;
    sub_1D5D3696C();
    v42 = v41;
    v43 = sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C);

    v72[0] = v43;
    v72[1] = v42;
    v44 = sub_1D72647CC();
    LOBYTE(v81) = 0;
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    *(v45 + 32) = 0;
    *(v45 + 16) = v44;
    *(v45 + 40) = v81;
    v46 = __swift_project_boxed_opaque_existential_1(&v15[*(v36 + 9)], *&v15[*(v36 + 9) + 24]);
    MEMORY[0x1EEE9AC00](v46, v47);
    MEMORY[0x1EEE9AC00](v48, v49);
    v72[-4] = sub_1D5B4AA6C;
    v72[-3] = 0;
    v70 = sub_1D66B9B08;
    v71 = v40;
    v50 = v76;
    v52 = sub_1D5D2F7A4(v11, sub_1D615B49C, v51, sub_1D615B4A4, &v72[-6]);
    if (v50)
    {

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      return sub_1D5D2CFE8(v15, sub_1D5D36A00);
    }

    v68 = v52;

    if (v68)
    {
      v81 = 0uLL;
      v82 = 0;
      v83 = v16;
      sub_1D5B55CBC();
      sub_1D72647EC();
      v3 = 0;

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
    }

    else
    {

      sub_1D5D2CFE8(v11, type metadata accessor for FormatVersionRequirement);
      v3 = 0;
    }

    v31 = v78;
    v73(v78, v74, v24);
  }

  swift_storeEnumTagMultiPayload();
  v32 = swift_allocObject();
  *(v32 + 16) = 2;
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *&v81 = v32 | 0x1000000000000000;
  v83 = v80;

  v33 = static FormatColor.== infix(_:_:)(&v81, &v83);

  v34 = v79;
  if ((v33 & 1) == 0)
  {
    v54 = &v15[*(v79 + 11)];
    v56 = *v54;
    v55 = *(v54 + 1);
    LOBYTE(v81) = 0;
    v57 = swift_allocObject();
    v77 = xmmword_1D728CF30;
    *(v57 + 16) = xmmword_1D728CF30;
    *(v57 + 32) = v81;
    *(v57 + 40) = v56;
    *(v57 + 48) = v55;
    sub_1D5D3696C();
    v59 = v58;
    sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C);

    v76 = v59;
    v60 = sub_1D72647CC();
    LOBYTE(v81) = 0;
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v77;
    *(v61 + 40) = v81;
    v62 = __swift_project_boxed_opaque_existential_1(&v15[*(v34 + 9)], *&v15[*(v34 + 9) + 24]);
    v79 = v72;
    MEMORY[0x1EEE9AC00](v62, v63);
    MEMORY[0x1EEE9AC00](v64, v65);
    v72[-4] = sub_1D5B4AA6C;
    v72[-3] = 0;
    v70 = sub_1D6708B80;
    v71 = v57;
    v67 = sub_1D5D2F7A4(v31, sub_1D615B49C, v66, sub_1D615B4A4, &v72[-6]);
    if (v3)
    {

      v35 = v31;
      goto LABEL_14;
    }

    v69 = v67;

    if (v69)
    {
      v81 = v77;
      v82 = 0;
      v83 = v80;
      sub_1D5B55CBC();
      sub_1D72647EC();

      v35 = v78;
      goto LABEL_14;
    }

    v31 = v78;
  }

  v35 = v31;
LABEL_14:
  sub_1D5D2CFE8(v35, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v15, sub_1D5D36A00);
}

void sub_1D5D3696C()
{
  if (!qword_1EDF02A20)
  {
    sub_1D5C32ACC();
    sub_1D5B58B84(&qword_1EDF24B78, sub_1D5C32ACC);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF02A20);
    }
  }
}

void sub_1D5D36A00()
{
  if (!qword_1EDF08820)
  {
    sub_1D5D3696C();
    sub_1D5B58B84(&qword_1EDF02A28, sub_1D5D3696C);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08820);
    }
  }
}

uint64_t static FormatColor.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 60;
  if (v4 > 5)
  {
    if (v4 <= 8)
    {
      if (v4 == 6)
      {
        if (v3 >> 60 == 6)
        {
          v33 = v2 & 0xFFFFFFFFFFFFFFFLL;
          v34 = *(v33 + 48);
          v35 = *(v33 + 40);
          v36 = *(v33 + 32);
          v37 = v3 & 0xFFFFFFFFFFFFFFFLL;
          v38 = *(v37 + 32);
          v39 = *(v37 + 40);
          v40 = *(v37 + 48);
          v73 = *(v33 + 16);
          v74 = v36;
          v75 = v35;
          LOBYTE(v76) = v34;
          v69 = *(v37 + 16);
          v70 = v38;
          v71 = v39;
          LOBYTE(v72) = v40;
          v18 = _s8NewsFeed15FormatRGBAColorV2eeoiySbAC_ACtFZ_0(&v73, &v69);
          return v18 & 1;
        }

        goto LABEL_67;
      }

      if (v4 == 7)
      {
        if (v3 >> 60 == 7)
        {
          v12 = v2 & 0xFFFFFFFFFFFFFFFLL;
          v13 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v14 = *(v12 + 32);
          v15 = v3 & 0xFFFFFFFFFFFFFFFLL;
          v16 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v17 = *(v15 + 40);
          v73 = *(v12 + 16);
          v74 = v14;
          LOBYTE(v75) = v13;
          v69 = *(v15 + 16);
          v70 = v16;
          LOBYTE(v71) = v17;

          v18 = _s8NewsFeed18FormatColorBindingO2eeoiySbAC_ACtFZ_0(&v73, &v69);
LABEL_45:

          return v18 & 1;
        }

        goto LABEL_67;
      }

      if (v3 >> 60 != 8)
      {
        goto LABEL_67;
      }

      v54 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v56 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v55 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *(&v73 + 1) = v54;
      *&v69 = v56;
      *(&v69 + 1) = v55;

      if (static FormatColor.== infix(_:_:)(&v73, &v69))
      {

        v57 = sub_1D6360E9C(v54, v55);

        swift_bridgeObjectRelease_n();
        if ((v57 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }

      goto LABEL_65;
    }

    if (v4 == 9)
    {
      if (v3 >> 60 != 9)
      {
        goto LABEL_67;
      }

      v44 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v45 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v46 = *(v44 + 40);
      v47 = *(v44 + 32);
      v48 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v49 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v50 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v51 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v52 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v73 = *(v44 + 16);
      v74 = v47;
      LOBYTE(v75) = v46;
      v76 = v45;
      *&v69 = v48;
      *(&v69 + 1) = v49;
      v70 = v50;
      LOBYTE(v71) = v51;
      v72 = v52;

      sub_1D5F58038(v48, v49, v50, v51);

      if (_s8NewsFeed18FormatColorBindingO2eeoiySbAC_ACtFZ_0(&v73, &v69))
      {
        v53 = static FormatColor.== infix(_:_:)(&v76, &v72);
        sub_1D5F57FEC(v48, v49, v50, v51);

        if ((v53 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }

      sub_1D5F57FEC(v48, v49, v50, v51);

      goto LABEL_66;
    }

    if (v4 == 10)
    {
      if (v3 >> 60 != 10)
      {
        goto LABEL_67;
      }

      v24 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v28 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v73 = *(v24 + 16);
      *(&v73 + 1) = v26;
      v74 = v25;
      *&v69 = v28;
      *(&v69 + 1) = v27;
      v70 = v29;
      v78[0] = v73;
      v77[0] = v28;

      swift_retain_n();

      v30 = static FormatColor.== infix(_:_:)(v78, v77);

      if (v30 & 1) != 0 && (sub_1D6344A00(v26, v27))
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v3 >> 60 != 11)
      {
        goto LABEL_67;
      }

      v60 = v2 & 0xFFFFFFFFFFFFFFFLL;
      v62 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v61 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v64 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v63 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v65 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v73 = *(v60 + 16);
      *(&v73 + 1) = v62;
      v74 = v61;
      *&v69 = v64;
      *(&v69 + 1) = v63;
      v70 = v65;
      v78[0] = v73;
      v78[1] = v62;
      v77[0] = v64;
      v77[1] = v63;

      if (static FormatColor.== infix(_:_:)(v78, v77))
      {

        v66 = sub_1D6360E9C(v62, v63);

        if (v66)
        {
LABEL_58:
          v67 = static FormatColor.== infix(_:_:)(&v74, &v70);

          if ((v67 & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_73;
        }
      }
    }

LABEL_65:

    goto LABEL_66;
  }

  if (v4 > 2)
  {
    if (v4 == 3)
    {
      if (v3 >> 60 != 3)
      {
        goto LABEL_67;
      }

      v41 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v69 = v41;
      *(&v69 + 1) = v42;

      if (static FormatColor.== infix(_:_:)(&v73, &v69))
      {
        v43 = static FormatColor.== infix(_:_:)(&v73 + 8, &v69 + 8);

        if ((v43 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }
    }

    else
    {
      if (v4 != 4)
      {
        if (v3 >> 60 != 5)
        {
          goto LABEL_67;
        }

        v58 = v2 & 0xFFFFFFFFFFFFFFFLL;
        v59 = v3 & 0xFFFFFFFFFFFFFFFLL;
        if (*(v58 + 16) != *(v59 + 16))
        {
          goto LABEL_67;
        }

        if (*(v58 + 32))
        {
          if ((*(v59 + 32) & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (*(v58 + 24) == *(v59 + 24))
          {
            v68 = *(v59 + 32);
          }

          else
          {
            v68 = 1;
          }

          if (v68)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_73;
      }

      if (v3 >> 60 != 4)
      {
        goto LABEL_67;
      }

      v19 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v73 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      *&v69 = v21;

      v22 = static FormatColor.== infix(_:_:)(&v73, &v69);

      if (v22)
      {
        v23 = sub_1D6344A00(v19, v20);

        if ((v23 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_73;
      }
    }

LABEL_66:

    goto LABEL_67;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      if (v3 >> 60 == 1)
      {
        v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v10 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v11 = FormatSystemColor.rawValue.getter;
LABEL_44:
        v18 = sub_1D5D39A5C(v10, v6, v5, v9, v7, v8, v11);
        goto LABEL_45;
      }
    }

    else if (v3 >> 60 == 2)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v7 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v8 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v9 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v11 = FormatFixedColor.rawValue.getter;
      goto LABEL_44;
    }

LABEL_67:
    v18 = 0;
    return v18 & 1;
  }

  if (v3 >> 60)
  {
    goto LABEL_67;
  }

  if (*(v2 + 16) == *(v3 + 16) && *(v2 + 24) == *(v3 + 24))
  {
LABEL_73:
    v18 = 1;
    return v18 & 1;
  }

  return sub_1D72646CC();
}

uint64_t FormatColor.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v137 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v136 = &v130 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v138 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v135 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v134 = &v130 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v132 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v131 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v133 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v130 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v130 - v42;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v130 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *v2;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  v51 = sub_1D5C30408();
  v139 = v47;
  sub_1D5D2EE70(&type metadata for FormatColor, &type metadata for FormatCodingKeys, v52, v50, &type metadata for FormatColor, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v49, v47, v51, &off_1F51F6C78);
  v53 = v48 >> 60;
  if ((v48 >> 60) > 5)
  {
    if (v53 > 8)
    {
      v63 = v139;
      if (v53 == 9)
      {
        v100 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v143[0] = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v143[1] = v100;
        v144 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        sub_1D5D355B8(v143, v140, &qword_1EC8854B0, sub_1D62B5080, &type metadata for FormatColorBinding, sub_1D667DF1C);
        if (qword_1EDF31EA8 != -1)
        {
          swift_once();
        }

        v101 = sub_1D725BD1C();
        v102 = __swift_project_value_buffer(v101, qword_1EDFFCD18);
        v31 = v138;
        (*(*(v101 - 8) + 16))(v138, v102, v101);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD708(9, v143, v31);
        sub_1D66615F8(v143, &qword_1EC8854B0, sub_1D62B5080, &type metadata for FormatColorBinding, sub_1D667DF1C);
        goto LABEL_52;
      }

      if (v53 == 10)
      {
        v77 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v78 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v79 = *(v77 + 24);
        v80 = *(v77 + 32);
        v81 = qword_1EDF31ED0;

        if (v81 != -1)
        {
          swift_once();
        }

        v82 = sub_1D725BD1C();
        v83 = __swift_project_value_buffer(v82, qword_1EDFFCD50);
        v31 = v136;
        (*(*(v82 - 8) + 16))(v136, v83, v82);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD8D4(10, v78, v79, v80, v31);
      }

      else
      {
        v122 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v123 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v124 = *(v122 + 24);
        v125 = *(v122 + 32);
        v126 = qword_1EDF31ED0;

        if (v126 != -1)
        {
          swift_once();
        }

        v127 = sub_1D725BD1C();
        v128 = __swift_project_value_buffer(v127, qword_1EDFFCD50);
        v31 = v137;
        (*(*(v127 - 8) + 16))(v137, v128, v127);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BDA98(11, v123, v124, v125, v31);
      }
    }

    else
    {
      v63 = v139;
      if (v53 == 6)
      {
        v91 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v141[0] = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v141[1] = v91;
        v142 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v92 = sub_1D725BD1C();
        v93 = __swift_project_value_buffer(v92, qword_1EDFFCD30);
        v31 = v132;
        (*(*(v92 - 8) + 16))(v132, v93, v92);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD1F8(6, v141, v31);
        goto LABEL_52;
      }

      if (v53 == 7)
      {
        v64 = v48 & 0xFFFFFFFFFFFFFFFLL;
        v65 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v66 = *(v64 + 24);
        v67 = *(v64 + 32);
        v68 = *(v64 + 40);
        sub_1D5F58038(v65, v66, v67, v68);
        if (qword_1EDF31EB0 != -1)
        {
          swift_once();
        }

        v69 = sub_1D725BD1C();
        v70 = __swift_project_value_buffer(v69, qword_1EDFFCD30);
        v31 = v134;
        (*(*(v69 - 8) + 16))(v134, v70, v69);
        type metadata accessor for FormatVersionRequirement.Value(0);
        swift_storeEnumTagMultiPayload();
        sub_1D63BD398(7, v65, v66, v67, v68, v31);
        sub_1D5F57FEC(v65, v66, v67, v68);
        goto LABEL_52;
      }

      v110 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v111 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v112 = *(v110 + 24);
      v113 = qword_1EDF31ED0;

      if (v113 != -1)
      {
        swift_once();
      }

      v114 = sub_1D725BD1C();
      v115 = __swift_project_value_buffer(v114, qword_1EDFFCD50);
      v31 = v135;
      (*(*(v114 - 8) + 16))(v135, v115, v114);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BD534(8, v111, v112, v31);
    }

    goto LABEL_50;
  }

  if (v53 > 2)
  {
    v63 = v139;
    if (v53 == 3)
    {
      v94 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v95 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v96 = *(v94 + 24);
      v97 = qword_1EDF31EB0;

      if (v97 != -1)
      {
        swift_once();
      }

      v98 = sub_1D725BD1C();
      v99 = __swift_project_value_buffer(v98, qword_1EDFFCD30);
      (*(*(v98 - 8) + 16))(v31, v99, v98);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BCCF0(3, v95, v96, v31);

      goto LABEL_51;
    }

    if (v53 != 4)
    {
      v116 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v117 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v118 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v119 = *(v116 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v120 = sub_1D725BD1C();
      v121 = __swift_project_value_buffer(v120, qword_1EDFFCD30);
      v31 = v131;
      (*(*(v120 - 8) + 16))(v131, v121, v120);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D63BD058(5, v118, v119, v31, v117);
      goto LABEL_52;
    }

    v71 = v48 & 0xFFFFFFFFFFFFFFFLL;
    v72 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v73 = *(v71 + 24);
    v74 = qword_1EDF31EB0;

    if (v74 != -1)
    {
      swift_once();
    }

    v75 = sub_1D725BD1C();
    v76 = __swift_project_value_buffer(v75, qword_1EDFFCD30);
    v31 = v133;
    (*(*(v75 - 8) + 16))(v133, v76, v75);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63BCEC4(4, v72, v73, v31);
LABEL_50:

LABEL_51:

LABEL_52:
    sub_1D5D2CFE8(v31, type metadata accessor for FormatVersionRequirement);
    v90 = v63;
    return sub_1D5D2CFE8(v90, sub_1D5D30DC4);
  }

  if (v53)
  {
    if (v53 == 1)
    {
      v54 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v55 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *(v54 + 24);
      v57 = *(v54 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v58 = sub_1D725BD1C();
      v59 = __swift_project_value_buffer(v58, qword_1EDFFCD30);
      (*(*(v58 - 8) + 16))(v39, v59, v58);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v60 = v55;
      v61 = v139;
      sub_1D5D415DC(1, v60, v56, v57, v39);
      v62 = v39;
    }

    else
    {
      v103 = v48 & 0xFFFFFFFFFFFFFFFLL;
      v104 = *((v48 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v105 = *(v103 + 24);
      v106 = *(v103 + 32);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v107 = sub_1D725BD1C();
      v108 = __swift_project_value_buffer(v107, qword_1EDFFCD30);
      (*(*(v107 - 8) + 16))(v35, v108, v107);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v109 = v104;
      v61 = v139;
      sub_1D63BCB10(2, v109, v105, v106, v35);
      v62 = v35;
    }

    sub_1D5D2CFE8(v62, type metadata accessor for FormatVersionRequirement);
    v90 = v61;
  }

  else
  {
    v85 = *(v48 + 16);
    v84 = *(v48 + 24);
    v86 = qword_1EDF31EB0;

    if (v86 != -1)
    {
      swift_once();
    }

    v87 = sub_1D725BD1C();
    v88 = __swift_project_value_buffer(v87, qword_1EDFFCD30);
    (*(*(v87 - 8) + 16))(v43, v88, v87);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v89 = v139;
    sub_1D5D38124(0, v85, v84, v43);

    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    v90 = v89;
  }

  return sub_1D5D2CFE8(v90, sub_1D5D30DC4);
}

uint64_t sub_1D5D38124(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v17 = a2;
  v18 = a3;
  sub_1D5D30DC4();
  v9 = (v4 + *(v8 + 44));
  v11 = *v9;
  v10 = v9[1];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  v15[2] = sub_1D670925C;
  v15[3] = v12;

  v13 = sub_1D5D31088(a4, 0, 0, sub_1D6709140, v15);
  if (!v5 && (v13 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D382F0();
    v16 = 0uLL;
    sub_1D72647EC();
    v16 = xmmword_1D7279980;
    sub_1D5C34074(0, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    sub_1D5D38540();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D382F0()
{
  result = qword_1EDF12980;
  if (!qword_1EDF12980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12980);
  }

  return result;
}

uint64_t sub_1D5D38394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5D383C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D5D383C0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x646E756F626E75;
    v7 = 0x7365636F72706E75;
    if (a1 != 10)
    {
      v7 = 0x7463656C65736E75;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 1633838962;
    v9 = 0x676E69646E6962;
    if (a1 != 7)
    {
      v9 = 0x726F7463656C6573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7890280;
    v2 = 0x65746E4972657375;
    v3 = 0x65737365636F7270;
    if (a1 != 4)
    {
      v3 = 0x6C61637379617267;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6D6574737973;
    if (a1 != 1)
    {
      v4 = 0x6465786966;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D5D38540()
{
  result = qword_1EDF12710;
  if (!qword_1EDF12710)
  {
    sub_1D5C34074(255, &qword_1EDF419A0, MEMORY[0x1E69E6158], &protocol witness table for String, type metadata accessor for FormatValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12710);
  }

  return result;
}

uint64_t FormatValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v26 = *(a2 + 24);
  v27 = v8;
  v9 = _s10CodingKeysOMa_10();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v29 = v9;
  v30 = WitnessTable;
  v31 = v11;
  v32 = v12;
  v13 = type metadata accessor for FormatCodingKeysContainer();
  v14 = swift_getWitnessTable();
  sub_1D726446C();
  swift_getWitnessTable();
  v15 = type metadata accessor for VersionedKeyedEncodingContainer();
  v25 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D5D2EE70(a2, v13, v21, v19, a2, v13, &type metadata for FormatVersions.JazzkonC, v20, v18, v14, &off_1F51F6C78);
  v29 = 0;
  v30 = 0;
  LOBYTE(v31) = 0;
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D725BD1C();
  v23 = __swift_project_value_buffer(v22, qword_1EDFFCD30);
  (*(*(v22 - 8) + 16))(v7, v23, v22);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D38930(v28, &v29, v7, sub_1D5B4AA6C, 0, v15, v27, *(v26 + 16));
  sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);
  return (*(v25 + 8))(v18, v15);
}

uint64_t sub_1D5D38930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a3;
  v33 = a6;
  v45 = a8;
  v34 = a4;
  v35 = a5;
  v31[1] = a1;
  v10 = *(a6 + 16);
  v38 = *(a6 + 24);
  v39 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v18 = v31 - v17;
  v19 = (v8 + *(a6 + 44));
  v20 = v19[1];
  v32 = *v19;
  v21 = a2;
  (*(v13 + 16))(v18, a2, AssociatedTypeWitness, v16);
  v22 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v31[2] = v10;
  v26 = v38;
  v25 = v39;
  *(v24 + 2) = v10;
  *(v24 + 3) = v25;
  v27 = v45;
  *(v24 + 4) = v26;
  *(v24 + 5) = v27;
  (*(v13 + 32))(&v24[v22], v18, AssociatedTypeWitness);
  v28 = &v24[v23];
  *v28 = v32;
  *(v28 + 1) = v20;
  v41 = v34;
  v42 = v35;
  v43 = sub_1D71B6A80;
  v44 = v24;

  v29 = v37;
  sub_1D5D38B54(v36, v21, sub_1D71B6A7C, v40, v33);
  if (!v29)
  {
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D38B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a1;
  v40 = a3;
  v41 = a4;
  v36 = a2;
  v8 = *(a5 + 16);
  v7 = *(a5 + 24);
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v37 = *(v10 + 64);
  v11 = v37;
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &AssociatedTypeWitness - v14;
  v16 = (v5 + *(a5 + 44));
  v17 = v16[1];
  v31 = *v16;
  v18 = *(v10 + 16);
  v34 = v10 + 16;
  v35 = v18;
  (v18)(v15, a2, v13);
  v19 = *(v10 + 80);
  v20 = (v19 + 32) & ~v19;
  v21 = (v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v8;
  *(v22 + 24) = v7;
  v32 = *(v10 + 32);
  v33 = v10 + 32;
  v23 = v22 + v20;
  v24 = v22;
  v38 = v22;
  v25 = AssociatedTypeWitness;
  v32(v23, v15, AssociatedTypeWitness);
  v26 = (v24 + v21);
  *v26 = v31;
  v26[1] = v17;

  v27 = sub_1D72647CC();
  v35(v15, v36, v25);
  v28 = swift_allocObject();
  v28[2] = v8;
  v28[3] = v7;
  v28[4] = v27;
  v32(v28 + ((v19 + 40) & ~v19), v15, v25);
  __swift_project_boxed_opaque_existential_1((v51 + *(v39 + 36)), *(v51 + *(v39 + 36) + 24));
  v49 = sub_1D71B6A78;
  v50 = v28;
  v44 = v40;
  v45 = v41;
  v46 = sub_1D71B6A74;
  v47 = v38;
  sub_1D5D2BC70(v42, sub_1D71B6A90, v48, sub_1D71B6A7C, v43);
}

uint64_t objectdestroy_2Tm_0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{
  v1 = *(type metadata accessor for FeedCursorTrackerSnapshot() - 8);
  v2 = (*(v1 + 80) + 80) & ~*(v1 + 80);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = type metadata accessor for FeedPuzzleStatistic();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  if (*(v2 + 32) >= 0x12uLL)
  {
  }

  v3 = v2 + *(v1 + 32);
  swift_unknownObjectRelease();
  v4 = v3 + *(type metadata accessor for PuzzleStatistic() + 20);
  type metadata accessor for PuzzleStatisticCategory(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
      if (!(*(*(v28 - 8) + 48))(v4, 1, v28))
      {
        v29 = sub_1D725891C();
        (*(*(v29 - 8) + 8))(v4, v29);
        v30 = type metadata accessor for PuzzleLeaderboardEntry();

        v31 = v4 + *(v30 + 24);

        v32 = *(v31 + 40);
        if (v32 >> 60 != 15)
        {
          sub_1D5B952F8(*(v31 + 32), v32);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v18 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
      v19 = *(v18 + 28);
      v20 = type metadata accessor for PuzzleStreak();
      v21 = *(*(v20 - 8) + 48);
      if (!v21(v4 + v19, 1, v20))
      {
        v22 = sub_1D7257ADC();
        (*(*(v22 - 8) + 8))(v4 + v19, v22);
      }

      v23 = *(v18 + 32);
      if (!v21(v4 + v23, 1, v20))
      {
        v24 = sub_1D7257ADC();
        (*(*(v24 - 8) + 8))(v4 + v23, v24);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      type metadata accessor for PuzzleStatisticValue(0);
      v6 = swift_getEnumCaseMultiPayload();
      if (v6 == 6 || v6 == 5)
      {
        v7 = type metadata accessor for PuzzleStreak();
        if (!(*(*(v7 - 8) + 48))(v4, 1, v7))
        {
          v8 = sub_1D7257ADC();
          (*(*(v8 - 8) + 8))(v4, v8);
        }
      }

      v9 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v10 = *(v9 + 20);
      v11 = swift_getEnumCaseMultiPayload();
      if (v11 == 6 || v11 == 5)
      {
        v12 = type metadata accessor for PuzzleStreak();
        if (!(*(*(v12 - 8) + 48))(v4 + v10, 1, v12))
        {
          v13 = sub_1D7257ADC();
          (*(*(v13 - 8) + 8))(v4 + v10, v13);
        }
      }

      v14 = *(v9 + 24);
      v15 = swift_getEnumCaseMultiPayload();
      if (v15 == 6 || v15 == 5)
      {
        v16 = type metadata accessor for PuzzleStreak();
        if (!(*(*(v16 - 8) + 48))(v4 + v14, 1, v16))
        {
          v17 = sub_1D7257ADC();
          (*(*(v17 - 8) + 8))(v4 + v14, v17);
        }
      }
    }
  }

  else
  {
    type metadata accessor for PuzzleStatisticValue(0);
    v25 = swift_getEnumCaseMultiPayload();
    if (v25 == 6 || v25 == 5)
    {
      v26 = type metadata accessor for PuzzleStreak();
      if (!(*(*(v26 - 8) + 48))(v4, 1, v26))
      {
        v27 = sub_1D7257ADC();
        (*(*(v27 - 8) + 8))(v4, v27);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{

  sub_1D6A8CEDC(v0[4], v0[5], v0[6], v0[7]);

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_6()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 48) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D39884(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v23 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1D5D30DC4();
  v11 = (v6 + *(v10 + 44));
  v13 = *v11;
  v12 = v11[1];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v13;
  *(v14 + 32) = v12;
  v17[2] = sub_1D6704364;
  v17[3] = v14;

  v15 = sub_1D5D31088(a6, 0, 0, sub_1D6709140, v17);
  if (!v7 && (v15 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D67042BC();
    v18 = 0uLL;
    sub_1D72647EC();
    v18 = xmmword_1D7279980;
    sub_1D6089CC4();
    sub_1D72647EC();
  }
}

uint64_t sub_1D5D39A20()
{

  return swift_deallocObject();
}

BOOL sub_1D5D39A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(void))
{
  v12 = a7();
  v14 = v13;
  if (v12 == a7() && v14 == v15)
  {

    if (a3)
    {
      return (a6 & 1) != 0;
    }

    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  v17 = sub_1D72646CC();

  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  if ((a3 & 1) == 0)
  {
    return (a6 & 1) == 0 && *&a2 == *&a5;
  }

  return (a6 & 1) != 0;
}

unint64_t FormatSystemColor.rawValue.getter()
{
  result = 0x6574696877;
  switch(*v0)
  {
    case 1:
      result = 0x6B63616C62;
      break;
    case 2:
      result = 0x7261656C63;
      break;
    case 3:
      result = 6579570;
      break;
    case 4:
      result = 0x6E65657267;
      break;
    case 5:
      result = 1702194274;
      break;
    case 6:
      result = 0x65676E61726FLL;
      break;
    case 7:
      result = 0x776F6C6C6579;
      break;
    case 8:
      result = 1802398064;
      break;
    case 9:
      result = 0x656C70727570;
      break;
    case 0xA:
      result = 1953393005;
      break;
    case 0xB:
      result = 1818322292;
      break;
    case 0xC:
      result = 1851881827;
      break;
    case 0xD:
      result = 0x6F6769646E69;
      break;
    case 0xE:
      result = 0x6E776F7262;
      break;
    case 0xF:
      result = 2036429415;
      break;
    case 0x10:
      result = 0x3279617267;
      break;
    case 0x11:
      result = 0x3379617267;
      break;
    case 0x12:
      result = 0x3479617267;
      break;
    case 0x13:
      result = 0x3579617267;
      break;
    case 0x14:
      result = 0x3679617267;
      break;
    case 0x15:
      result = 0x6C6562616CLL;
      break;
    case 0x16:
    case 0x24:
      result = 0x7261646E6F636573;
      break;
    case 0x17:
    case 0x25:
      result = 0x7972616974726574;
      break;
    case 0x18:
    case 0x26:
      result = 0x616E726574617571;
      break;
    case 0x19:
      result = 1802398060;
      break;
    case 0x1A:
      result = 0x6C6F686563616C70;
      break;
    case 0x1B:
      result = 0x6F74617261706573;
      break;
    case 0x1C:
      result = 0x655365757161706FLL;
      break;
    case 0x1D:
      result = 0x756F72676B636162;
      break;
    case 0x1E:
      result = 0xD000000000000013;
      break;
    case 0x1F:
      result = 0xD000000000000012;
      break;
    case 0x20:
      result = 0xD000000000000011;
      break;
    case 0x21:
      result = 0xD00000000000001ALL;
      break;
    case 0x22:
      result = 0xD000000000000019;
      break;
    case 0x23:
      result = 1819044198;
      break;
    case 0x27:
      result = 0xD000000000000016;
      break;
    case 0x28:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5D39FB4(uint64_t a1)
{
  v1 = *(a1 + 193);
  if (v1 >= 2)
  {
    v2 = ((v1 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v2 = -2;
  }

  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D5D39FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2BD20();
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A074(v2 + *(a1 + 36), v8);
  return sub_1D5C35728(v8, a2);
}

uint64_t sub_1D5D3A074(uint64_t a1, uint64_t a2)
{
  sub_1D5B5C688(0, &qword_1EDF45148, sub_1D5B5C758, &type metadata for FormatCodingMetadataStrategy, type metadata accessor for FormatCodingDefault);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static FormatCodingMetadataStrategy.defaultValue.getter@<X0>(char *a1@<X8>)
{
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v24 - v8;
  v10 = sub_1D725BD1C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  sub_1D725BD3C();
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_1D725BCDC();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1D5BFC6D4(v9, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v11 + 32))(v18, v9, v10);
  }

  sub_1D725BD3C();
  if (v19(v5, 1, v10) == 1)
  {
    sub_1D725BCCC();
    if (v19(v5, 1, v10) != 1)
    {
      sub_1D5BFC6D4(v5, sub_1D5B5C268);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v5, v10);
  }

  v20 = type metadata accessor for FormatMetadata();
  sub_1D725BD3C();
  *a1 = 0;
  *(a1 + 1) = 0;
  v21 = *(v11 + 32);
  v21(&a1[v20[5]], v18, v10);
  result = (v21)(&a1[v20[6]], v14, v10);
  v23 = MEMORY[0x1E69E7CD0];
  *&a1[v20[8]] = MEMORY[0x1E69E7CD0];
  *&a1[v20[9]] = v23;
  *&a1[v20[10]] = v23;
  *&a1[v20[11]] = v23;
  return result;
}

uint64_t _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D725BD1C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B5C268(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D3A7E0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = a2[1];
  if (v18)
  {
    if (!v19 || (*a1 != *a2 || v18 != v19) && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v19)
  {
    goto LABEL_21;
  }

  v20 = type metadata accessor for FormatMetadata();
  if ((sub_1D725BCBC() & 1) == 0 || (sub_1D725BCBC() & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = v20[7];
  v22 = *(v14 + 48);
  sub_1D5D3A874(a1 + v21, v17);
  v29 = v22;
  sub_1D5D3A874(a2 + v21, &v17[v22]);
  v23 = *(v5 + 48);
  if (v23(v17, 1, v4) != 1)
  {
    sub_1D5D3A874(v17, v12);
    if (v23(&v17[v29], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_15;
    }

    (*(v5 + 32))(v8, &v17[v29], v4);
    sub_1D70BE520(&qword_1EDF178B8, MEMORY[0x1E69D6B38]);
    v24 = sub_1D7261FBC();
    v25 = *(v5 + 8);
    v25(v8, v4);
    v25(v12, v4);
    sub_1D5BFC674(v17, sub_1D5B5C268);
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_21:
    v26 = 0;
    return v26 & 1;
  }

  if (v23(&v17[v29], 1, v4) != 1)
  {
LABEL_15:
    sub_1D5BFC674(v17, sub_1D5D3A7E0);
    goto LABEL_21;
  }

  sub_1D5BFC674(v17, sub_1D5B5C268);
LABEL_17:
  if ((sub_1D5C15FFC(*(a1 + v20[8]), *(a2 + v20[8])) & 1) == 0 || (sub_1D5C15FFC(*(a1 + v20[9]), *(a2 + v20[9])) & 1) == 0 || (sub_1D5D3A964(*(a1 + v20[10]), *(a2 + v20[10])) & 1) == 0)
  {
    goto LABEL_21;
  }

  v26 = sub_1D5D3A964(*(a1 + v20[11]), *(a2 + v20[11]));
  return v26 & 1;
}

void sub_1D5D3A7E0()
{
  if (!qword_1EDF178B0)
  {
    sub_1D5B5BD94(255, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF178B0);
    }
  }
}

uint64_t sub_1D5D3A874(uint64_t a1, uint64_t a2)
{
  sub_1D5B5BD94(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D3A908(uint64_t a1)
{
  v2 = type metadata accessor for FormatMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D3A964(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v30 = result + 56;
  v31 = result;
  v29 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v32 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v14 = *v13;
    v15 = v13[1];
    sub_1D7264A0C();
    switch(v15)
    {
      case 1:
        MEMORY[0x1DA6FC0B0](1);
        break;
      case 2:
        MEMORY[0x1DA6FC0B0](2);
        break;
      case 3:
        MEMORY[0x1DA6FC0B0](3);
        break;
      default:
        MEMORY[0x1DA6FC0B0](0);
        sub_1D7264A2C();
        if (v15)
        {

          sub_1D72621EC();
        }

        break;
    }

    v16 = sub_1D7264A5C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_58:
      sub_1D5C39250(v14, v15);
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      switch(v22)
      {
        case 1:
          if (v15 == 1)
          {
            v27 = *v20;
            v28 = 1;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 1;
          goto LABEL_34;
        case 2:
          if (v15 == 2)
          {
            v27 = *v20;
            v28 = 2;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 2;
          goto LABEL_34;
        case 3:
          if (v15 == 3)
          {
            v27 = *v20;
            v28 = 3;
            goto LABEL_53;
          }

          sub_1D5B7CD94(v14, v15);
          v23 = 3;
          goto LABEL_34;
      }

      if ((v15 - 1) < 3)
      {
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, v22);
        v23 = v22;
LABEL_34:
        v24 = v15;
LABEL_35:
        sub_1D5C39250(v21, v23);
LABEL_36:
        sub_1D5C39250(v14, v24);
        goto LABEL_37;
      }

      if (!v22)
      {
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, 0);
        sub_1D5B7CD94(v14, v15);
        sub_1D5B7CD94(v21, 0);
        sub_1D5C39250(v21, 0);
        sub_1D5C39250(v14, v15);
        v24 = v15;
        if (!v15)
        {
          goto LABEL_54;
        }

        goto LABEL_36;
      }

      if (!v15)
      {
        sub_1D5B7CD94(v14, 0);
        sub_1D5B7CD94(v14, 0);
        sub_1D5B7CD94(v21, v22);
        v23 = v22;
        v24 = 0;
        goto LABEL_35;
      }

      if (v21 == v14 && v22 == v15)
      {
        break;
      }

      v26 = sub_1D72646CC();
      sub_1D5B7CD94(v14, v15);
      sub_1D5B7CD94(v21, v22);
      sub_1D5C39250(v21, v22);
      sub_1D5C39250(v14, v15);
      if (v26)
      {
        goto LABEL_54;
      }

LABEL_37:
      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    v27 = v14;
    v28 = v15;
LABEL_53:
    sub_1D5C39250(v27, v28);
LABEL_54:
    sub_1D5C39250(v14, v15);
    v4 = v30;
    result = v31;
    v8 = v29;
    v7 = v32;
  }

  while (v32);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D5D3AD58()
{
  result = qword_1EDF04EF8;
  if (!qword_1EDF04EF8)
  {
    sub_1D5C34D84(255, &qword_1EDF04F00, &type metadata for FormatTextNodeStyle.Selector, MEMORY[0x1E69E62F8]);
    sub_1D5C31A00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04EF8);
  }

  return result;
}

uint64_t FormatTextNodeStyle.Selector.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v340 = &v331 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v339 = &v331 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v341 = &v331 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v344 = &v331 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v346 = &v331 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v348 = &v331 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v347 = &v331 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v349 = &v331 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v352 = &v331 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v351 = &v331 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v354 = &v331 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v357 = &v331 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v331 - v41;
  sub_1D5D3E578();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v43, v45);
  v47 = &v331 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v1 + 8);
  *&v367 = *v1;
  v355 = *(v1 + 16);
  v49 = *(v1 + 104);
  v413 = *(v1 + 88);
  v414 = v49;
  v50 = *(v1 + 136);
  v415 = *(v1 + 120);
  v416 = v50;
  v51 = *(v1 + 40);
  v409 = *(v1 + 24);
  v410 = v51;
  v52 = *(v1 + 72);
  v411 = *(v1 + 56);
  v412 = v52;
  v353 = *(v1 + 152);
  v422 = *(v1 + 240);
  v53 = *(v1 + 224);
  v420 = *(v1 + 208);
  v421 = v53;
  v54 = *(v1 + 192);
  v418 = *(v1 + 176);
  v419 = v54;
  v417 = *(v1 + 160);
  v350 = *(v1 + 248);
  v55 = *(v1 + 256);
  v56 = *(v1 + 272);
  v57 = *(v1 + 304);
  v425 = *(v1 + 288);
  v426 = v57;
  v423 = v55;
  v424 = v56;
  v58 = *(v1 + 320);
  v59 = *(v1 + 336);
  v60 = *(v1 + 400);
  v431 = *(v1 + 384);
  v61 = *(v1 + 368);
  v429 = *(v1 + 352);
  v430 = v61;
  v427 = v58;
  v428 = v59;
  v62 = *(v1 + 416);
  v63 = *(v1 + 432);
  v435 = *(v1 + 448);
  v434 = v63;
  v433 = v62;
  v432 = v60;
  v64 = *(v1 + 456);
  v345 = *(v1 + 464);
  v65 = *(v1 + 472);
  v342 = *(v1 + 480);
  v343 = v65;
  v66 = *(v1 + 496);
  v337 = *(v1 + 488);
  v338 = v66;
  v67 = *(v1 + 504);
  v336 = *(v1 + 512);
  v334 = *(v1 + 520);
  v335 = v67;
  v68 = a1[3];
  v69 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v68);
  sub_1D5C3592C();
  v71 = v70;
  v72 = sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C);
  sub_1D5D2EE70(&type metadata for FormatTextNodeStyle.Selector, v71, v73, v68, &type metadata for FormatTextNodeStyle.Selector, v71, &type metadata for FormatVersions.JazzkonC, v69, v47, v72, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v74 = sub_1D725BD1C();
  v75 = __swift_project_value_buffer(v74, qword_1EDFFCD30);
  v76 = *(v74 - 8);
  v77 = *(v76 + 16);
  v361 = v74;
  v362 = v75;
  v358 = v77;
  v359 = v76 + 16;
  (v77)(v42);
  v363 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  *&v371 = v367;
  *(&v371 + 1) = v48;
  v386 = 0uLL;
  LOBYTE(v387) = 0;
  v78 = &v47[*(v44 + 44)];
  v80 = *v78;
  v79 = *(v78 + 1);
  LOBYTE(v405[0]) = 0;
  v81 = swift_allocObject();
  *&v367 = &v331;
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  *(v81 + 32) = v405[0];
  *(v81 + 40) = v80;
  *(v81 + 48) = v79;
  MEMORY[0x1EEE9AC00](v81, v82);
  v366 = &v331 - 6;
  *(&v331 - 4) = sub_1D5B4AA6C;
  *(&v331 - 3) = 0;
  v329 = sub_1D6708C00;
  v330 = v83;
  LOBYTE(v405[0]) = 0;
  v84 = swift_allocObject();
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = v405[0];
  v360 = v80;
  *(v84 + 40) = v80;
  *(v84 + 48) = v79;
  sub_1D5D3E4E4();
  v86 = v85;
  v87 = sub_1D5B58B84(&qword_1EDF03488, sub_1D5D3E4E4);
  v356 = v79;
  swift_retain_n();
  v364 = v86;
  v365 = v87;
  v88 = sub_1D72647CC();
  LOBYTE(v405[0]) = 0;
  v89 = swift_allocObject();
  *(v89 + 24) = 0;
  *(v89 + 32) = 0;
  *(v89 + 16) = v88;
  *(v89 + 40) = v405[0];
  v90 = *(v44 + 36);
  v91 = v42;
  v369 = v47;
  v92 = &v47[v90];
  v93 = __swift_project_boxed_opaque_existential_1(&v47[v90], *&v47[v90 + 24]);
  MEMORY[0x1EEE9AC00](v93, v94);
  MEMORY[0x1EEE9AC00](v95, v96);
  v97 = v366;
  *(&v331 - 4) = sub_1D615B4A4;
  *(&v331 - 3) = v97;
  v329 = sub_1D6708C00;
  v330 = v84;
  v98 = v368;
  sub_1D5D2BC70(v91, sub_1D615B49C, v99, sub_1D615B4A4, (&v331 - 6));
  if (v98)
  {
    sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

    v100 = v369;
LABEL_6:
    v101 = v100;
    return sub_1D5D2CFE8(v101, sub_1D5D3E578);
  }

  v368 = v92;

  sub_1D5D3E60C();
  v100 = v369;
  sub_1D72647EC();
  sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

  v103 = v357;
  v358(v357, v362, v361);
  swift_storeEnumTagMultiPayload();
  v367 = xmmword_1D728CF30;
  v407 = xmmword_1D728CF30;
  v408 = 0;
  LOBYTE(v386) = 0;
  v104 = swift_allocObject();
  v106 = v104;
  *(v104 + 16) = v367;
  *(v104 + 32) = v386;
  v107 = v360;
  v108 = v355;
  v109 = v356;
  *(v104 + 40) = v360;
  *(v104 + 48) = v109;
  v366 = 0;
  if ((~v108 & 0xF000000000000007) == 0)
  {

    goto LABEL_10;
  }

  v333 = &v331;
  v406 = v108;
  MEMORY[0x1EEE9AC00](v104, v105);
  v137 = v109;
  v332 = &v331 - 6;
  *(&v331 - 4) = sub_1D5B4AA6C;
  *(&v331 - 3) = 0;
  v329 = sub_1D6708C00;
  v330 = v106;
  LOBYTE(v386) = 0;
  v139 = v138;
  v140 = swift_allocObject();
  *(v140 + 16) = v367;
  *(v140 + 32) = v386;
  *(v140 + 40) = v360;
  *(v140 + 48) = v137;
  swift_retain_n();
  sub_1D5D04BD4(v139);
  v141 = sub_1D72647CC();
  LOBYTE(v386) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v141;
  *(v142 + 24) = v367;
  *(v142 + 40) = v386;
  v143 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
  MEMORY[0x1EEE9AC00](v143, v144);
  MEMORY[0x1EEE9AC00](v145, v146);
  v147 = v332;
  *(&v331 - 4) = sub_1D615B4A4;
  *(&v331 - 3) = v147;
  v329 = sub_1D6708C00;
  v330 = v140;
  v148 = v366;
  v150 = sub_1D5D2F7A4(v103, sub_1D615B49C, v149, sub_1D615B4A4, (&v331 - 6));
  if (!v148)
  {
    v164 = v150;

    if (v164)
    {
      sub_1D5B57BA4();
      v100 = v369;
      sub_1D72647EC();
      v103 = v357;
      v366 = 0;

      v109 = v356;
    }

    else
    {
      v366 = 0;

      v100 = v369;
      v109 = v356;
      v103 = v357;
    }

    v107 = v360;
LABEL_10:
    sub_1D5D2CFE8(v103, type metadata accessor for FormatVersionRequirement);
    v110 = v354;
    v111 = v358;
    v358(v354, v362, v361);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D7297410;
    v403 = xmmword_1D7297410;
    v404 = 0;
    LOBYTE(v386) = 0;
    v112 = swift_allocObject();
    *(v112 + 16) = v367;
    *(v112 + 32) = v386;
    *(v112 + 40) = v107;
    *(v112 + 48) = v109;
    v405[4] = v413;
    v405[5] = v414;
    v405[6] = v415;
    v405[7] = v416;
    v405[0] = v409;
    v405[1] = v410;
    v405[2] = v411;
    v405[3] = v412;
    v113 = sub_1D5CFD0B8(v405);
    if (v113 == 1)
    {
      v115 = v107;
      v116 = v109;
      v117 = v111;
      v118 = v115;

      v119 = v110;
      v121 = v361;
      v120 = v362;
    }

    else
    {
      v357 = &v331;
      v390 = v413;
      v391 = v414;
      v392 = v415;
      v393 = v416;
      v386 = v409;
      v387 = v410;
      v388 = v411;
      v389 = v412;
      MEMORY[0x1EEE9AC00](v113, v114);
      v355 = &v331 - 6;
      *(&v331 - 4) = sub_1D5B4AA6C;
      *(&v331 - 3) = 0;
      v329 = sub_1D6708C00;
      v330 = v112;
      LOBYTE(v371) = 0;
      v153 = swift_allocObject();
      *(v153 + 16) = v367;
      *(v153 + 32) = v371;
      *(v153 + 40) = v107;
      *(v153 + 48) = v109;
      swift_retain_n();
      sub_1D5D355B8(&v409, &v371, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v154 = sub_1D72647CC();
      LOBYTE(v371) = 0;
      v155 = swift_allocObject();
      *(v155 + 16) = v154;
      *(v155 + 24) = v367;
      *(v155 + 40) = v371;
      v156 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
      MEMORY[0x1EEE9AC00](v156, v157);
      MEMORY[0x1EEE9AC00](v158, v159);
      v160 = v355;
      *(&v331 - 4) = sub_1D615B4A4;
      *(&v331 - 3) = v160;
      v329 = sub_1D6708C00;
      v330 = v153;
      v161 = v366;
      v163 = sub_1D5D2F7A4(v110, sub_1D615B49C, v162, sub_1D615B4A4, (&v331 - 6));
      if (v161)
      {

        v375 = v390;
        v376 = v391;
        v377 = v392;
        v378 = v393;
        v371 = v386;
        v372 = v387;
        v373 = v388;
        v374 = v389;
        sub_1D5CFD368(&v371);
        sub_1D5D2CFE8(v354, type metadata accessor for FormatVersionRequirement);
        goto LABEL_6;
      }

      v168 = v163;

      if (v168)
      {
        sub_1D5D35694();
        sub_1D72647EC();
        v118 = v360;
        v120 = v362;
        v366 = 0;

        v375 = v390;
        v376 = v391;
        v377 = v392;
        v378 = v393;
        v371 = v386;
        v372 = v387;
        v373 = v388;
        v374 = v389;
        sub_1D5CFD368(&v371);
        v116 = v356;
        v121 = v361;
        v117 = v358;
      }

      else
      {
        v366 = 0;

        v375 = v390;
        v376 = v391;
        v377 = v392;
        v378 = v393;
        v371 = v386;
        v372 = v387;
        v373 = v388;
        v374 = v389;
        sub_1D5CFD368(&v371);
        v116 = v356;
        v118 = v360;
        v121 = v361;
        v117 = v358;
        v120 = v362;
      }

      v119 = v354;
    }

    sub_1D5D2CFE8(v119, type metadata accessor for FormatVersionRequirement);
    v122 = v351;
    v117(v351, v120, v121);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D72BAA60;
    v403 = xmmword_1D72BAA60;
    v404 = 0;
    LOBYTE(v386) = 0;
    v123 = swift_allocObject();
    v125 = v123;
    *(v123 + 16) = v367;
    *(v123 + 32) = v386;
    *(v123 + 40) = v118;
    *(v123 + 48) = v116;
    if (v353)
    {
      v357 = &v331;
      v402 = v353;
      MEMORY[0x1EEE9AC00](v123, v124);
      *(&v331 - 4) = sub_1D5B4AA6C;
      *(&v331 - 3) = 0;
      v329 = sub_1D6708C00;
      v330 = v125;
      LOBYTE(v386) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v367;
      *(v126 + 32) = v386;
      *(v126 + 40) = v118;
      *(v126 + 48) = v116;
      swift_retain_n();

      v127 = sub_1D72647CC();
      LOBYTE(v386) = 0;
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *(v128 + 24) = v367;
      *(v128 + 40) = v386;
      v129 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
      MEMORY[0x1EEE9AC00](v129, v130);
      MEMORY[0x1EEE9AC00](v131, v132);
      *(&v331 - 4) = sub_1D615B4A4;
      *(&v331 - 3) = (&v331 - 6);
      v329 = sub_1D6708C00;
      v330 = v126;
      v133 = v366;
      v135 = sub_1D5D2F7A4(v122, sub_1D615B49C, v134, sub_1D615B4A4, (&v331 - 6));
      if (v133)
      {

        v136 = v369;
        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
LABEL_63:
        v101 = v136;
        return sub_1D5D2CFE8(v101, sub_1D5D3E578);
      }

      v169 = v135;

      v165 = v352;
      if (v169)
      {
        sub_1D5C34D84(0, &unk_1EDF1B3E0, &type metadata for FormatBorder, MEMORY[0x1E69E62F8]);
        sub_1D66612AC();
        sub_1D72647EC();
        v166 = v360;
        v366 = 0;

        sub_1D5D2CFE8(v351, type metadata accessor for FormatVersionRequirement);
        v116 = v356;
      }

      else
      {
        v366 = 0;

        sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);
        v116 = v356;
        v166 = v360;
      }

      v121 = v361;
      v167 = v358;
      v358(v165, v362, v361);
    }

    else
    {

      sub_1D5D2CFE8(v122, type metadata accessor for FormatVersionRequirement);

      v165 = v352;
      v166 = v118;
      v167 = v117;
      v117(v352, v362, v121);
    }

    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D72BAA70;
    v400 = xmmword_1D72BAA70;
    v401 = 0;
    LOBYTE(v386) = 0;
    v170 = swift_allocObject();
    v172 = v170;
    *(v170 + 16) = v367;
    *(v170 + 32) = v386;
    *(v170 + 40) = v166;
    *(v170 + 48) = v116;
    if (v422 == 254)
    {

      v173 = v116;
    }

    else
    {
      v357 = &v331;
      v388 = v419;
      v389 = v420;
      v390 = v421;
      LOBYTE(v391) = v422;
      v386 = v417;
      v387 = v418;
      MEMORY[0x1EEE9AC00](v170, v171);
      *(&v331 - 4) = sub_1D5B4AA6C;
      *(&v331 - 3) = 0;
      v329 = sub_1D6708C00;
      v330 = v172;
      LOBYTE(v371) = 0;
      v174 = swift_allocObject();
      *(v174 + 16) = v367;
      *(v174 + 32) = v371;
      *(v174 + 40) = v166;
      *(v174 + 48) = v116;
      swift_retain_n();
      sub_1D5D355B8(&v417, &v371, &qword_1EDF33718, &type metadata for FormatShadow, MEMORY[0x1E69E6720], sub_1D5C34D84);
      v175 = sub_1D72647CC();
      LOBYTE(v371) = 0;
      v176 = swift_allocObject();
      *(v176 + 16) = v175;
      *(v176 + 24) = v367;
      *(v176 + 40) = v371;
      v177 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
      MEMORY[0x1EEE9AC00](v177, v178);
      MEMORY[0x1EEE9AC00](v179, v180);
      *(&v331 - 4) = sub_1D615B4A4;
      *(&v331 - 3) = (&v331 - 6);
      v329 = sub_1D6708C00;
      v330 = v174;
      v181 = v366;
      sub_1D5D2F7A4(v165, sub_1D615B49C, v182, sub_1D615B4A4, (&v331 - 6));
      if (v181)
      {

        v373 = v388;
        v374 = v389;
        v375 = v390;
        LOBYTE(v376) = v391;
        v371 = v386;
        v372 = v387;
        sub_1D601144C(&v371);
        v136 = v369;
        sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
        goto LABEL_63;
      }

      sub_1D6661204();
      sub_1D72647EC();
      v366 = 0;

      v373 = v388;
      v374 = v389;
      v375 = v390;
      LOBYTE(v376) = v391;
      v371 = v386;
      v372 = v387;
      sub_1D601144C(&v371);
      v173 = v356;
      v121 = v361;
      v167 = v358;
    }

    sub_1D5D2CFE8(v352, type metadata accessor for FormatVersionRequirement);
    v183 = v349;
    v167(v349, v362, v121);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D72BAA80;
    v400 = xmmword_1D72BAA80;
    v401 = 0;
    LOBYTE(v386) = 0;
    v184 = swift_allocObject();
    v186 = v184;
    *(v184 + 16) = v367;
    *(v184 + 32) = v386;
    v187 = v360;
    *(v184 + 40) = v360;
    *(v184 + 48) = v173;
    if (v350)
    {
      v357 = &v331;
      v399 = v350;
      MEMORY[0x1EEE9AC00](v184, v185);
      *(&v331 - 4) = sub_1D5B4AA6C;
      *(&v331 - 3) = 0;
      v329 = sub_1D6708C00;
      v330 = v186;
      LOBYTE(v386) = 0;
      v188 = swift_allocObject();
      *(v188 + 16) = v367;
      *(v188 + 32) = v386;
      *(v188 + 40) = v187;
      *(v188 + 48) = v173;
      swift_retain_n();

      v189 = sub_1D72647CC();
      LOBYTE(v386) = 0;
      v190 = swift_allocObject();
      *(v190 + 16) = v189;
      *(v190 + 24) = v367;
      *(v190 + 40) = v386;
      v191 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
      MEMORY[0x1EEE9AC00](v191, v192);
      MEMORY[0x1EEE9AC00](v193, v194);
      *(&v331 - 4) = sub_1D615B4A4;
      *(&v331 - 3) = (&v331 - 6);
      v329 = sub_1D6708C00;
      v330 = v188;
      v195 = v366;
      v197 = sub_1D5D2F7A4(v183, sub_1D615B49C, v196, sub_1D615B4A4, (&v331 - 6));
      if (v195)
      {

        v136 = v369;
LABEL_40:
        sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
        goto LABEL_63;
      }

      v198 = v197;

      if (v198)
      {
        sub_1D5C34D84(0, &qword_1EDF1B060, &type metadata for FormatTextNodeTransform, MEMORY[0x1E69E62F8]);
        sub_1D5D436D8();
        sub_1D72647EC();
        v366 = 0;

        sub_1D5D2CFE8(v349, type metadata accessor for FormatVersionRequirement);
      }

      else
      {
        v366 = 0;

        sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
      }

      v173 = v356;
      v121 = v361;
      v167 = v358;
    }

    else
    {

      sub_1D5D2CFE8(v183, type metadata accessor for FormatVersionRequirement);
    }

    v199 = v347;
    v167(v347, v362, v121);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D72BAA90;
    v384 = xmmword_1D72BAA90;
    v385 = 0;
    LOBYTE(v371) = 0;
    v200 = swift_allocObject();
    *(v200 + 16) = v367;
    *(v200 + 32) = v371;
    v201 = v360;
    *(v200 + 40) = v360;
    *(v200 + 48) = v173;
    v396 = v433;
    v397 = v434;
    v398 = v435;
    v392 = v429;
    v393 = v430;
    v394 = v431;
    v395 = v432;
    v388 = v425;
    v389 = v426;
    v390 = v427;
    v391 = v428;
    v386 = v423;
    v387 = v424;
    v202 = sub_1D5D39FB4(&v386);
    if (v202 == 1)
    {

      v204 = v199;
    }

    else
    {
      v357 = &v331;
      v383 = v435;
      v381 = v433;
      v382 = v434;
      v377 = v429;
      v378 = v430;
      v379 = v431;
      v380 = v432;
      v373 = v425;
      v374 = v426;
      v375 = v427;
      v376 = v428;
      v371 = v423;
      v372 = v424;
      MEMORY[0x1EEE9AC00](v202, v203);
      *(&v331 - 4) = sub_1D5B4AA6C;
      *(&v331 - 3) = 0;
      v329 = sub_1D6708C00;
      v330 = v200;
      v370 = 0;
      v205 = swift_allocObject();
      *(v205 + 16) = v367;
      *(v205 + 32) = v370;
      *(v205 + 40) = v201;
      *(v205 + 48) = v173;
      swift_retain_n();
      v206 = sub_1D72647CC();
      v370 = 0;
      v207 = swift_allocObject();
      *(v207 + 16) = v206;
      *(v207 + 24) = v367;
      *(v207 + 40) = v370;
      v208 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
      MEMORY[0x1EEE9AC00](v208, v209);
      MEMORY[0x1EEE9AC00](v210, v211);
      *(&v331 - 4) = sub_1D615B4A4;
      *(&v331 - 3) = (&v331 - 6);
      v329 = sub_1D6708C00;
      v330 = v205;
      v212 = v366;
      v214 = sub_1D5D2F7A4(v199, sub_1D615B49C, v213, sub_1D615B4A4, (&v331 - 6));
      if (v212)
      {
        sub_1D5D2CFE8(v199, type metadata accessor for FormatVersionRequirement);

        goto LABEL_62;
      }

      v215 = v214;

      if (v215)
      {
        sub_1D5F0FAA4();
        sub_1D72647EC();
      }

      v366 = 0;
      v173 = v356;
      v121 = v361;
      v167 = v358;
      v204 = v347;
    }

    sub_1D5D2CFE8(v204, type metadata accessor for FormatVersionRequirement);

    v167(v348, v362, v121);
    swift_storeEnumTagMultiPayload();
    v367 = xmmword_1D72BAAA0;
    v371 = xmmword_1D72BAAA0;
    LOBYTE(v372) = 0;
    LOBYTE(v384) = 0;
    v216 = swift_allocObject();
    v218 = v216;
    *(v216 + 16) = v367;
    *(v216 + 32) = v384;
    v219 = v360;
    *(v216 + 40) = v360;
    *(v216 + 48) = v173;
    if (v345)
    {
      v220 = v173;

      v221 = v366;
      v222 = v348;
      v223 = v219;
      goto LABEL_55;
    }

    v362 = &v331;
    *&v384 = v64;
    MEMORY[0x1EEE9AC00](v216, v217);
    *(&v331 - 4) = sub_1D5B4AA6C;
    *(&v331 - 3) = 0;
    v329 = sub_1D6708C00;
    v330 = v218;
    v370 = 0;
    v241 = swift_allocObject();
    *(v241 + 16) = v367;
    *(v241 + 32) = v370;
    *(v241 + 40) = v219;
    *(v241 + 48) = v173;
    swift_retain_n();
    v242 = sub_1D72647CC();
    v370 = 0;
    v243 = swift_allocObject();
    *(v243 + 16) = v242;
    *(v243 + 24) = v367;
    *(v243 + 40) = v370;
    v244 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
    MEMORY[0x1EEE9AC00](v244, v245);
    MEMORY[0x1EEE9AC00](v246, v247);
    *(&v331 - 4) = sub_1D615B4A4;
    *(&v331 - 3) = (&v331 - 6);
    v329 = sub_1D6708C00;
    v330 = v241;
    v248 = v366;
    sub_1D5D2F7A4(v348, sub_1D615B49C, v249, sub_1D615B4A4, (&v331 - 6));
    v221 = v248;
    if (!v248)
    {

      sub_1D5B578C4();
      sub_1D72647EC();
      v220 = v356;
      v223 = v360;
      v222 = v348;
LABEL_55:
      sub_1D5D2CFE8(v222, type metadata accessor for FormatVersionRequirement);

      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v224 = v361;
      v225 = __swift_project_value_buffer(v361, qword_1EDFFCD18);
      v358(v346, v225, v224);
      swift_storeEnumTagMultiPayload();
      v367 = xmmword_1D72BAAB0;
      v371 = xmmword_1D72BAAB0;
      LOBYTE(v372) = 0;
      LOBYTE(v384) = 0;
      v227 = swift_allocObject();
      *(v227 + 16) = v367;
      *(v227 + 32) = v384;
      *(v227 + 40) = v223;
      *(v227 + 48) = v220;
      if (v343)
      {
        v362 = &v331;
        *&v384 = v343;
        MEMORY[0x1EEE9AC00](v220, v226);
        v229 = v228;
        v366 = v221;
        *(&v331 - 4) = sub_1D5B4AA6C;
        *(&v331 - 3) = 0;
        v329 = sub_1D6708C00;
        v330 = v227;
        v370 = 0;
        v230 = swift_allocObject();
        *(v230 + 16) = v367;
        *(v230 + 32) = v370;
        *(v230 + 40) = v223;
        *(v230 + 48) = v229;
        swift_retain_n();

        v231 = sub_1D72647CC();
        v370 = 0;
        v232 = swift_allocObject();
        *(v232 + 16) = v231;
        *(v232 + 24) = v367;
        *(v232 + 40) = v370;
        v233 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
        MEMORY[0x1EEE9AC00](v233, v234);
        MEMORY[0x1EEE9AC00](v235, v236);
        *(&v331 - 4) = sub_1D615B4A4;
        *(&v331 - 3) = (&v331 - 6);
        v329 = sub_1D6708C00;
        v330 = v230;
        v237 = v366;
        sub_1D5D2F7A4(v346, sub_1D615B49C, v238, sub_1D615B4A4, (&v331 - 6));
        v221 = v237;
        if (v237)
        {

          v239 = v369;
          v240 = v346;

          sub_1D5D2CFE8(v240, type metadata accessor for FormatVersionRequirement);
          v101 = v239;
          return sub_1D5D2CFE8(v101, sub_1D5D3E578);
        }

        sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
        sub_1D66582DC();
        sub_1D72647EC();

        sub_1D5D2CFE8(v346, type metadata accessor for FormatVersionRequirement);
        v220 = v356;
        v223 = v360;
      }

      else
      {

        sub_1D5D2CFE8(v346, type metadata accessor for FormatVersionRequirement);
      }

      if (qword_1EDF31EE8 != -1)
      {
        swift_once();
      }

      v250 = v361;
      v251 = __swift_project_value_buffer(v361, qword_1EDFFCD98);
      v252 = v344;
      v358(v344, v251, v250);
      swift_storeEnumTagMultiPayload();
      v367 = xmmword_1D72BAAC0;
      v371 = xmmword_1D72BAAC0;
      LOBYTE(v372) = 0;
      LOBYTE(v384) = 0;
      v253 = swift_allocObject();
      v255 = v253;
      *(v253 + 16) = v367;
      *(v253 + 32) = v384;
      *(v253 + 40) = v223;
      *(v253 + 48) = v220;
      if (v342 == 9)
      {

        v256 = v340;
        v257 = v341;
      }

      else
      {
        v362 = &v331;
        LOBYTE(v384) = v342;
        v258 = v337;
        *(&v384 + 1) = v337;
        MEMORY[0x1EEE9AC00](v253, v254);
        v366 = v221;
        *(&v331 - 4) = sub_1D5B4AA6C;
        *(&v331 - 3) = 0;
        v329 = sub_1D6708C00;
        v330 = v255;
        v370 = 0;
        v260 = v259;
        v261 = swift_allocObject();
        *(v261 + 16) = v367;
        *(v261 + 32) = v370;
        *(v261 + 40) = v360;
        *(v261 + 48) = v220;
        swift_retain_n();
        sub_1D62B5D18(v260, v258);
        v262 = sub_1D72647CC();
        v370 = 0;
        v263 = swift_allocObject();
        *(v263 + 16) = v262;
        *(v263 + 24) = v367;
        *(v263 + 40) = v370;
        v264 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
        MEMORY[0x1EEE9AC00](v264, v265);
        MEMORY[0x1EEE9AC00](v266, v267);
        *(&v331 - 4) = sub_1D615B4A4;
        *(&v331 - 3) = (&v331 - 6);
        v329 = sub_1D6708C00;
        v330 = v261;
        v268 = v366;
        sub_1D5D2F7A4(v252, sub_1D615B49C, v269, sub_1D615B4A4, (&v331 - 6));
        v221 = v268;
        if (v268)
        {

          v136 = v369;
          v270 = v344;
          sub_1D5C84FF4(*(&v384 + 1));
          sub_1D5D2CFE8(v270, type metadata accessor for FormatVersionRequirement);
          goto LABEL_63;
        }

        sub_1D66C908C();
        sub_1D72647EC();

        sub_1D5C84FF4(*(&v384 + 1));
        v256 = v340;
        v223 = v360;
        v257 = v341;
      }

      sub_1D5D2CFE8(v344, type metadata accessor for FormatVersionRequirement);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v271 = v361;
      v272 = __swift_project_value_buffer(v361, qword_1EDFFCD50);
      v358(v257, v272, v271);
      swift_storeEnumTagMultiPayload();
      v367 = xmmword_1D72BAAD0;
      v371 = xmmword_1D72BAAD0;
      LOBYTE(v372) = 0;
      LOBYTE(v384) = 0;
      v273 = swift_allocObject();
      v275 = v273;
      *(v273 + 16) = v367;
      *(v273 + 32) = v384;
      v276 = v356;
      *(v273 + 40) = v223;
      *(v273 + 48) = v276;
      if (v338 == 9)
      {
      }

      else
      {
        v362 = &v331;
        LOBYTE(v384) = v338;
        v277 = v335;
        *(&v384 + 1) = v335;
        MEMORY[0x1EEE9AC00](v273, v274);
        v366 = v221;
        *(&v331 - 4) = sub_1D5B4AA6C;
        *(&v331 - 3) = 0;
        v329 = sub_1D6708C00;
        v330 = v275;
        v370 = 0;
        v279 = v278;
        v280 = swift_allocObject();
        *(v280 + 16) = v367;
        *(v280 + 32) = v370;
        *(v280 + 40) = v223;
        *(v280 + 48) = v276;
        swift_retain_n();
        sub_1D62B5D18(v279, v277);
        v281 = sub_1D72647CC();
        v370 = 0;
        v282 = swift_allocObject();
        *(v282 + 16) = v281;
        *(v282 + 24) = v367;
        *(v282 + 40) = v370;
        v283 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
        MEMORY[0x1EEE9AC00](v283, v284);
        MEMORY[0x1EEE9AC00](v285, v286);
        *(&v331 - 4) = sub_1D615B4A4;
        *(&v331 - 3) = (&v331 - 6);
        v329 = sub_1D6708C00;
        v330 = v280;
        v287 = v366;
        v289 = sub_1D5D2F7A4(v257, sub_1D615B49C, v288, sub_1D615B4A4, (&v331 - 6));
        v221 = v287;
        if (v287)
        {

          v136 = v369;
          v183 = v341;
          sub_1D5C84FF4(*(&v384 + 1));
          goto LABEL_40;
        }

        v290 = v289;

        if (v290)
        {
          sub_1D66C908C();
          sub_1D72647EC();
          v257 = v341;

          sub_1D5C84FF4(*(&v384 + 1));
          v256 = v340;
        }

        else
        {

          sub_1D5C84FF4(*(&v384 + 1));
          v256 = v340;
          v257 = v341;
        }
      }

      sub_1D5D2CFE8(v257, type metadata accessor for FormatVersionRequirement);
      v291 = v339;
      if (qword_1EDF31F08 != -1)
      {
        swift_once();
      }

      v292 = v361;
      v293 = __swift_project_value_buffer(v361, qword_1EDFFCDE0);
      v358(v291, v293, v292);
      swift_storeEnumTagMultiPayload();
      v367 = xmmword_1D72BAAE0;
      v371 = xmmword_1D72BAAE0;
      LOBYTE(v372) = 0;
      LOBYTE(v384) = 0;
      v294 = swift_allocObject();
      v296 = v294;
      *(v294 + 16) = v367;
      *(v294 + 32) = v384;
      v297 = v360;
      v298 = v356;
      *(v294 + 40) = v360;
      *(v294 + 48) = v298;
      if (v336 == 2)
      {
      }

      else
      {
        v362 = &v331;
        LOBYTE(v384) = v336 & 1;
        MEMORY[0x1EEE9AC00](v294, v295);
        v366 = v221;
        *(&v331 - 4) = sub_1D5B4AA6C;
        *(&v331 - 3) = 0;
        v329 = sub_1D6708C00;
        v330 = v296;
        v370 = 0;
        v299 = swift_allocObject();
        *(v299 + 16) = v367;
        *(v299 + 32) = v370;
        *(v299 + 40) = v297;
        *(v299 + 48) = v298;
        swift_retain_n();
        v300 = sub_1D72647CC();
        v370 = 0;
        v301 = swift_allocObject();
        *(v301 + 16) = v300;
        *(v301 + 24) = v367;
        *(v301 + 40) = v370;
        v302 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
        MEMORY[0x1EEE9AC00](v302, v303);
        MEMORY[0x1EEE9AC00](v304, v305);
        *(&v331 - 4) = sub_1D615B4A4;
        *(&v331 - 3) = (&v331 - 6);
        v329 = sub_1D6708C00;
        v330 = v299;
        v306 = v366;
        v308 = sub_1D5D2F7A4(v291, sub_1D615B49C, v307, sub_1D615B4A4, (&v331 - 6));
        v221 = v306;
        if (v306)
        {
          sub_1D5D2CFE8(v291, type metadata accessor for FormatVersionRequirement);

LABEL_102:
          v101 = v369;
          return sub_1D5D2CFE8(v101, sub_1D5D3E578);
        }

        v309 = v308;

        if (v309)
        {
          sub_1D72647EC();
        }

        v256 = v340;
      }

      sub_1D5D2CFE8(v339, type metadata accessor for FormatVersionRequirement);

      v310 = v360;
      if (qword_1EDF31E80 != -1)
      {
        swift_once();
      }

      v311 = v361;
      v312 = __swift_project_value_buffer(v361, qword_1EDFFCCA8);
      v358(v256, v312, v311);
      swift_storeEnumTagMultiPayload();
      v367 = xmmword_1D72BAAF0;
      v371 = xmmword_1D72BAAF0;
      LOBYTE(v372) = 0;
      LOBYTE(v384) = 0;
      v313 = swift_allocObject();
      v315 = v313;
      *(v313 + 16) = v367;
      *(v313 + 32) = v384;
      v316 = v356;
      *(v313 + 40) = v310;
      *(v313 + 48) = v316;
      if (v334)
      {
        v363 = &v331;
        *&v384 = v334;
        MEMORY[0x1EEE9AC00](v313, v314);
        v317 = v256;
        v366 = v221;
        *(&v331 - 4) = sub_1D5B4AA6C;
        *(&v331 - 3) = 0;
        v329 = sub_1D6708C00;
        v330 = v315;
        v370 = 0;
        v318 = swift_allocObject();
        *(v318 + 16) = v367;
        *(v318 + 32) = v370;
        *(v318 + 40) = v310;
        *(v318 + 48) = v316;
        swift_retain_n();

        v319 = sub_1D72647CC();
        v370 = 0;
        v320 = swift_allocObject();
        *(v320 + 16) = v319;
        *(v320 + 24) = v367;
        *(v320 + 40) = v370;
        v321 = __swift_project_boxed_opaque_existential_1(v368, *(v368 + 3));
        MEMORY[0x1EEE9AC00](v321, v322);
        MEMORY[0x1EEE9AC00](v323, v324);
        *(&v331 - 4) = sub_1D615B4A4;
        *(&v331 - 3) = (&v331 - 6);
        v329 = sub_1D66C90E0;
        v330 = v318;
        v325 = v366;
        v327 = sub_1D5D2F7A4(v317, sub_1D615B49C, v326, sub_1D615B4A4, (&v331 - 6));
        if (v325)
        {
        }

        else
        {
          v328 = v327;

          if (v328)
          {
            sub_1D5C30060(0, &qword_1EDF32858, sub_1D5C35130, &type metadata for FormatFloat, type metadata accessor for FormatEquation);
            sub_1D66582DC();
            sub_1D72647EC();
          }
        }

        sub_1D5D2CFE8(v340, type metadata accessor for FormatVersionRequirement);
      }

      else
      {

        sub_1D5D2CFE8(v256, type metadata accessor for FormatVersionRequirement);
      }

      goto LABEL_102;
    }

    sub_1D5D2CFE8(v348, type metadata accessor for FormatVersionRequirement);

LABEL_62:
    v136 = v369;
    goto LABEL_63;
  }

  v151 = v369;
  v152 = v357;

  sub_1D5D2CFE8(v152, type metadata accessor for FormatVersionRequirement);
  return sub_1D5D2CFE8(v151, sub_1D5D3E578);
}

void sub_1D5D3E4E4()
{
  if (!qword_1EDF03480)
  {
    sub_1D5C3592C();
    sub_1D5B58B84(&qword_1EDF25448, sub_1D5C3592C);
    v0 = sub_1D726446C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF03480);
    }
  }
}

void sub_1D5D3E578()
{
  if (!qword_1EDF08D50)
  {
    sub_1D5D3E4E4();
    sub_1D5B58B84(&qword_1EDF03488, sub_1D5D3E4E4);
    v0 = type metadata accessor for VersionedKeyedEncodingContainer();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF08D50);
    }
  }
}

unint64_t sub_1D5D3E60C()
{
  result = qword_1EDF11B58;
  if (!qword_1EDF11B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11B58);
  }

  return result;
}

uint64_t FormatSelector.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27[-1] - v10;
  v12 = *v1;
  v13 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v28 = v12;
  v29 = v13;
  v27[0] = 33;
  v27[1] = 0xE100000000000000;
  sub_1D5BF4D9C();
  if ((sub_1D7263ABC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = a1[3];
  v32 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v14);
  if (qword_1EDF31ED0 != -1)
  {
    swift_once();
  }

  v15 = sub_1D725BD1C();
  v16 = __swift_project_value_buffer(v15, qword_1EDFFCD50);
  (*(*(v15 - 8) + 16))(v11, v16, v15);
  type metadata accessor for FormatVersionRequirement.Value(0);
  v17 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v17, v18);
  *(&v26 - 2) = v12;
  *(&v26 - 1) = v13;
  sub_1D5D2BEC4(v11, sub_1D6EE4A60, (&v26 - 4), v14, v32);
  sub_1D6079974(v11);
  if (!v2)
  {
LABEL_5:
    v28 = v12;
    v29 = v13;
    strcpy(v27, "symbol.exists(");
    HIBYTE(v27[1]) = -18;
    if ((sub_1D7263ABC() & 1) == 0)
    {
      goto LABEL_9;
    }

    v19 = a1[3];
    v20 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v19);
    if (qword_1EDF31F38 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCE38);
    (*(*(v21 - 8) + 16))(v7, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v23 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v26 - 2) = v12;
    *(&v26 - 1) = v13;
    sub_1D5D2BEC4(v7, sub_1D6EE4868, (&v26 - 4), v19, v20);
    sub_1D6079974(v7);
    if (!v2)
    {
LABEL_9:
      __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
      sub_1D726473C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t FormatFont.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v58 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v56 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v56 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v56 - v19;
  sub_1D5D30DC4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *v2;
  v27 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v28 = sub_1D5C30408();
  sub_1D5D2EE70(&type metadata for FormatFont, &type metadata for FormatCodingKeys, v29, v27, &type metadata for FormatFont, &type metadata for FormatCodingKeys, &type metadata for FormatVersions.JazzkonC, v26, v24, v28, &off_1F51F6C78);
  v30 = v25 >> 61;
  if ((v25 >> 61) <= 1)
  {
    if (v30)
    {
      v52 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v62[0] = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v62[1] = v52;
      v63 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      sub_1D5D43E24(v62, v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v53 = sub_1D725BD1C();
      v54 = __swift_project_value_buffer(v53, qword_1EDFFCD30);
      (*(*(v53 - 8) + 16))(v16, v54, v53);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D43E80(1, v62, v16);
      sub_1D5D44D18(v62);
      v43 = v16;
    }

    else
    {
      v40 = *(v25 + 48);
      v60[1] = *(v25 + 32);
      v60[2] = v40;
      v60[3] = *(v25 + 64);
      v61 = *(v25 + 80);
      v60[0] = *(v25 + 16);
      sub_1D5D3F188(v60, v59);
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v41 = sub_1D725BD1C();
      v42 = __swift_project_value_buffer(v41, qword_1EDFFCD30);
      (*(*(v41 - 8) + 16))(v20, v42, v41);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      sub_1D5D3F1E4(0, v60, v20);
      sub_1D5D41588(v60);
      v43 = v20;
    }

    goto LABEL_22;
  }

  if (v30 == 2)
  {
    v44 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v64 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v65[0] = v44;
    *(v65 + 10) = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x2A);
    sub_1D665C0D4(&v64, v59);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v45 = sub_1D725BD1C();
    v46 = __swift_project_value_buffer(v45, qword_1EDFFCD30);
    v47 = v56;
    (*(*(v45 - 8) + 16))(v56, v46, v45);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C3D1C(2, &v64, v47);
    sub_1D665C130(&v64);
    v43 = v47;
LABEL_22:
    sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
    v51 = v24;
    return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
  }

  v31 = v30 == 3;
  v32 = v25 & 0x1FFFFFFFFFFFFFFFLL;
  if (v31)
  {
    v33 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v34 = *(v32 + 24);
    v35 = *(v32 + 32);
    v36 = *(v32 + 40);
    sub_1D5F58038(*(v32 + 16), v34, v35, v36);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D725BD1C();
    v38 = __swift_project_value_buffer(v37, qword_1EDFFCD30);
    v39 = v58;
    (*(*(v37 - 8) + 16))(v58, v38, v37);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C3EBC(3, v33, v34, v35, v36, v39);
    sub_1D5F57FEC(v33, v34, v35, v36);
  }

  else
  {
    v48 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v66[0] = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v66[1] = v48;
    v67 = *((v25 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    sub_1D6706BB4(v66, v59, sub_1D62B5154);
    if (qword_1EDF31EA8 != -1)
    {
      swift_once();
    }

    v49 = sub_1D725BD1C();
    v50 = __swift_project_value_buffer(v49, qword_1EDFFCD18);
    v39 = v57;
    (*(*(v49 - 8) + 16))(v57, v50, v49);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    sub_1D63C4058(4, v66, v39);
    sub_1D5D2CFE8(v66, sub_1D62B5154);
  }

  sub_1D5D2CFE8(v39, type metadata accessor for FormatVersionRequirement);
  v51 = v24;
  return sub_1D5D2CFE8(v51, sub_1D5D30DC4);
}

uint64_t sub_1D5D3F1E4(char a1, __int128 *a2, uint64_t a3)
{
  v23 = a1;
  v7 = a2[3];
  v20 = a2[2];
  v21 = v7;
  v22 = *(a2 + 32);
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  sub_1D5D30DC4();
  v10 = (v3 + *(v9 + 44));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12;
  *(v13 + 32) = v11;
  v16[2] = sub_1D6709300;
  v16[3] = v13;

  v14 = sub_1D5D31088(a3, 0, 0, sub_1D6709140, v16);
  if (!v4 && (v14 & 1) != 0)
  {
    sub_1D5C30060(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
    sub_1D5D30E44();
    sub_1D5D3F390();
    v17 = 0uLL;
    sub_1D72647EC();
    v17 = xmmword_1D7279980;
    sub_1D5D3F4C8();
    sub_1D72647EC();
  }
}

unint64_t sub_1D5D3F390()
{
  result = qword_1EDF12A68;
  if (!qword_1EDF12A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12A68);
  }

  return result;
}

void sub_1D5D3F434(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6574737973;
  v5 = 0xE600000000000000;
  v6 = 0x65746F6D6572;
  v7 = 0x676E69646E6962;
  if (v2 != 3)
  {
    v7 = 0x646E756F626E75;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6D6F74737563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1D5D3F4C8()
{
  result = qword_1EDF11130;
  if (!qword_1EDF11130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11130);
  }

  return result;
}

uint64_t FormatSystemFont.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v154 = &v140 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v156 = &v140 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v140 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v140 - v20;
  sub_1D5D40A38();
  *&v158 = v22;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v140 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *v1;
  v143 = *(v1 + 8);
  LODWORD(v157) = *(v1 + 16);
  v155 = *(v1 + 18);
  v27 = *(v1 + 32);
  v153 = *(v1 + 24);
  v144 = v27;
  v28 = *(v1 + 48);
  v145 = *(v1 + 40);
  v146 = v28;
  v147 = *(v1 + 56);
  v148 = *(v1 + 64);
  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1D5C48AEC();
  v32 = v31;
  v33 = sub_1D5B58B84(&qword_1EDF25668, sub_1D5C48AEC);
  sub_1D5D2EE70(&type metadata for FormatSystemFont, v32, v34, v29, &type metadata for FormatSystemFont, v32, &type metadata for FormatVersions.JazzkonC, v30, v25, v33, &off_1F51F6C78);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v35 = sub_1D725BD1C();
  v36 = __swift_project_value_buffer(v35, qword_1EDFFCD30);
  v37 = *(v35 - 8);
  v38 = *(v37 + 16);
  v39 = v37 + 16;
  v159 = v36;
  v38(v21);
  *&v160 = type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  v149 = v7;
  v151 = v35;
  v150 = v38;
  v152 = v39;
  if (v26 == 16.0)
  {
    v40 = v2;
    sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    (v38)(v17, v159, v35);
    goto LABEL_5;
  }

  v59 = v158;
  v60 = &v25[*(v158 + 44)];
  v61 = v25;
  v63 = *v60;
  v62 = *(v60 + 1);
  LOBYTE(v162) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  *(v64 + 32) = v162;
  *(v64 + 40) = v63;
  *(v64 + 48) = v62;
  sub_1D5D409FC(0);
  v66 = v65;
  v67 = sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);

  v141 = v66;
  v68 = sub_1D72647CC();
  LOBYTE(v162) = 0;
  v69 = swift_allocObject();
  *(v69 + 24) = 0;
  *(v69 + 32) = 0;
  *(v69 + 16) = v68;
  *(v69 + 40) = v162;
  v70 = __swift_project_boxed_opaque_existential_1(&v61[*(v59 + 36)], *&v61[*(v59 + 36) + 24]);
  *&v142 = &v140;
  MEMORY[0x1EEE9AC00](v70, v71);
  MEMORY[0x1EEE9AC00](v72, v73);
  *(&v140 - 4) = sub_1D5B4AA6C;
  *(&v140 - 3) = 0;
  v138 = sub_1D66C4720;
  v139 = v64;
  v75 = sub_1D5D2F7A4(v21, sub_1D615B49C, v74, sub_1D615B4A4, (&v140 - 6));
  if (!v2)
  {
    v107 = v75;
    v140 = v67;

    if (v107)
    {
      v162 = 0uLL;
      v163 = 0;
      *&v166 = v26;
      sub_1D5B578C4();
      v25 = v61;
      sub_1D72647EC();
      v40 = 0;
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
    }

    else
    {
      v40 = 0;
      sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);
      v25 = v61;
    }

    v7 = v149;
    v35 = v151;
    v38 = v150;
    (v150)(v17, v159, v151);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    if ((v157 & 0xFF00) == 0xC00)
    {
      sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
      v41 = v40;
      v42 = v158;
    }

    else
    {
      v76 = v158;
      v77 = &v25[*(v158 + 44)];
      v61 = v25;
      v79 = *v77;
      v78 = *(v77 + 1);
      LOBYTE(v162) = 0;
      v80 = swift_allocObject();
      v142 = xmmword_1D728CF30;
      *(v80 + 16) = xmmword_1D728CF30;
      *(v80 + 32) = v162;
      *(v80 + 40) = v79;
      *(v80 + 48) = v78;
      sub_1D5D409FC(0);
      v82 = v81;
      sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);

      v141 = v82;
      v83 = sub_1D72647CC();
      LOBYTE(v162) = 0;
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v142;
      *(v84 + 40) = v162;
      v85 = __swift_project_boxed_opaque_existential_1(&v61[*(v76 + 36)], *&v61[*(v76 + 36) + 24]);
      MEMORY[0x1EEE9AC00](v85, v86);
      MEMORY[0x1EEE9AC00](v87, v88);
      *(&v140 - 4) = sub_1D5B4AA6C;
      *(&v140 - 3) = 0;
      v138 = sub_1D6708BD8;
      v139 = v80;
      v90 = sub_1D5D2F7A4(v17, sub_1D615B49C, v89, sub_1D615B4A4, (&v140 - 6));
      v41 = v40;
      if (v40)
      {
        v91 = v17;
LABEL_18:
        sub_1D5D2CFE8(v91, type metadata accessor for FormatVersionRequirement);

        goto LABEL_19;
      }

      v108 = v90;

      if (v108)
      {
        v162 = v142;
        v163 = 0;
        *&v166 = v143;
        WORD4(v166) = v157;
        sub_1D5FC8148();
        v25 = v61;
        sub_1D72647EC();
        v42 = v158;
        sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
        v7 = v149;
      }

      else
      {
        sub_1D5D2CFE8(v17, type metadata accessor for FormatVersionRequirement);
        v25 = v61;
        v7 = v149;
        v42 = v158;
      }

      v35 = v151;
      v38 = v150;
    }

    v43 = v156;
    (v38)(v156, v159, v35);
    swift_storeEnumTagMultiPayload();
    if (v155 == 5)
    {
      sub_1D5D2CFE8(v43, type metadata accessor for FormatVersionRequirement);
      v44 = v154;
      (v38)(v154, v159, v35);
      goto LABEL_9;
    }

    v92 = &v25[*(v42 + 44)];
    v61 = v25;
    v94 = *v92;
    v93 = *(v92 + 1);
    LOBYTE(v162) = 0;
    v95 = swift_allocObject();
    v157 = xmmword_1D7297410;
    *(v95 + 16) = xmmword_1D7297410;
    *(v95 + 32) = v162;
    *(v95 + 40) = v94;
    *(v95 + 48) = v93;
    sub_1D5D409FC(0);
    v97 = v96;
    sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);

    v143 = v97;
    v98 = sub_1D72647CC();
    LOBYTE(v162) = 0;
    v99 = swift_allocObject();
    *(v99 + 16) = v98;
    *(v99 + 24) = v157;
    *(v99 + 40) = v162;
    v100 = __swift_project_boxed_opaque_existential_1(&v61[*(v42 + 36)], *&v61[*(v42 + 36) + 24]);
    MEMORY[0x1EEE9AC00](v100, v101);
    MEMORY[0x1EEE9AC00](v102, v103);
    *(&v140 - 4) = sub_1D5B4AA6C;
    *(&v140 - 3) = 0;
    v138 = sub_1D6708BD8;
    v139 = v95;
    v105 = sub_1D5D2F7A4(v43, sub_1D615B49C, v104, sub_1D615B4A4, (&v140 - 6));
    if (!v41)
    {
      v109 = v105;

      if (v109)
      {
        v162 = v157;
        v163 = 0;
        LOBYTE(v166) = v155;
        sub_1D5D40BEC();
        v25 = v61;
        sub_1D72647EC();
        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
        v42 = v158;
        v7 = v149;
      }

      else
      {
        sub_1D5D2CFE8(v156, type metadata accessor for FormatVersionRequirement);
        v25 = v61;
        v7 = v149;
        v42 = v158;
      }

      v44 = v154;
      v35 = v151;
      v38 = v150;
      (v150)(v154, v159, v151);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      if (*(v153 + 16))
      {
        v45 = &v25[*(v42 + 44)];
        v47 = *v45;
        v46 = *(v45 + 1);
        LOBYTE(v162) = 0;
        v159 = v41;
        v48 = swift_allocObject();
        v158 = xmmword_1D72BAA60;
        *(v48 + 16) = xmmword_1D72BAA60;
        *(v48 + 32) = v162;
        *(v48 + 40) = v47;
        *(v48 + 48) = v46;
        sub_1D5D409FC(0);
        sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);

        v49 = sub_1D72647CC();
        LOBYTE(v162) = 0;
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v158;
        *(v50 + 40) = v162;
        v51 = *(v42 + 36);
        *&v158 = v25;
        v52 = __swift_project_boxed_opaque_existential_1(&v25[v51], *&v25[v51 + 24]);
        MEMORY[0x1EEE9AC00](v52, v53);
        MEMORY[0x1EEE9AC00](v54, v55);
        *(&v140 - 4) = sub_1D5B4AA6C;
        *(&v140 - 3) = 0;
        v138 = sub_1D6708BD8;
        v139 = v48;
        v56 = v159;
        v58 = sub_1D5D2F7A4(v44, sub_1D615B49C, v57, sub_1D615B4A4, (&v140 - 6));
        v41 = v56;
        if (v56)
        {

          v25 = v158;
          sub_1D5D2CFE8(v154, type metadata accessor for FormatVersionRequirement);
LABEL_46:
          v106 = v25;
          return sub_1D5D2CFE8(v106, sub_1D5D40A38);
        }

        v110 = v58;

        v25 = v158;
        if (v110)
        {
          sub_1D5E07E9C(v153, v158, 3, 0, 0);
        }

        v44 = v154;

        v35 = v151;
        v38 = v150;
      }

      sub_1D5D2CFE8(v44, type metadata accessor for FormatVersionRequirement);
      if (qword_1EDF31ED0 != -1)
      {
        swift_once();
      }

      v111 = __swift_project_value_buffer(v35, qword_1EDFFCD50);
      (v38)(v7, v111, v35);
      swift_storeEnumTagMultiPayload();
      v160 = xmmword_1D72BAA70;
      v166 = xmmword_1D72BAA70;
      v167 = 0;
      v112 = &v25[*(v42 + 44)];
      v113 = v42;
      v114 = *v112;
      v115 = *(v112 + 1);
      LOBYTE(v162) = 0;
      v116 = swift_allocObject();
      v118 = v116;
      *(v116 + 16) = v160;
      *(v116 + 32) = v162;
      *(v116 + 40) = v114;
      *(v116 + 48) = v115;
      if ((v148 & 0xFF00) == 0x500)
      {
      }

      else
      {
        *&v158 = &v140;
        LOBYTE(v162) = v144;
        *(&v162 + 1) = v145;
        v163 = v146 & 1;
        v164 = v147;
        v165 = v148 & 0xFF01;
        MEMORY[0x1EEE9AC00](v116, v117);
        v119 = v25;
        v159 = v41;
        *(&v140 - 4) = sub_1D5B4AA6C;
        *(&v140 - 3) = 0;
        v138 = sub_1D6708BD8;
        v139 = v118;
        v161 = 0;
        v120 = swift_allocObject();
        *(v120 + 16) = v160;
        *(v120 + 32) = v161;
        *(v120 + 40) = v114;
        *(v120 + 48) = v115;
        sub_1D5D409FC(0);
        v122 = v121;
        v123 = sub_1D5B58B84(&qword_1EDF036E8, sub_1D5D409FC);
        swift_retain_n();
        *&v157 = v122;
        v124 = v7;
        v125 = sub_1D72647CC();
        v161 = 0;
        v126 = swift_allocObject();
        *(v126 + 16) = v125;
        *(v126 + 24) = v160;
        *(v126 + 40) = v161;
        v127 = *(v113 + 36);
        v128 = v119;
        v129 = __swift_project_boxed_opaque_existential_1(&v119[v127], *&v119[v127 + 24]);
        MEMORY[0x1EEE9AC00](v129, v130);
        MEMORY[0x1EEE9AC00](v131, v132);
        *(&v140 - 4) = sub_1D615B4A4;
        *(&v140 - 3) = (&v140 - 6);
        v138 = sub_1D6708BD8;
        v139 = v120;
        v133 = v159;
        v135 = sub_1D5D2F7A4(v124, sub_1D615B49C, v134, sub_1D615B4A4, (&v140 - 6));
        if (v133)
        {
          sub_1D5D2CFE8(v124, type metadata accessor for FormatVersionRequirement);

          v25 = v119;
          goto LABEL_46;
        }

        v136 = v135;
        *&v160 = v123;

        if (v136)
        {
          sub_1D66C479C();
          v25 = v128;
          sub_1D72647EC();
        }

        else
        {
          v25 = v128;
        }

        v7 = v124;
      }

      sub_1D5D2CFE8(v7, type metadata accessor for FormatVersionRequirement);

      goto LABEL_46;
    }

    v91 = v43;
    goto LABEL_18;
  }

  sub_1D5D2CFE8(v21, type metadata accessor for FormatVersionRequirement);

LABEL_19:
  v106 = v61;
  return sub_1D5D2CFE8(v106, sub_1D5D40A38);
}