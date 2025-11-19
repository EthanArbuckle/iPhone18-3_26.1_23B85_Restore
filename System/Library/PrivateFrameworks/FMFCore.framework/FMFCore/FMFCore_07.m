void *sub_24A40C3E0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_24A40C53C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_24A4AB220();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41, v11);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t _s7FMFCore9FMFFriendV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for FMFLocation();
  v102 = *(v4 - 8);
  v103 = v4;
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = &v88 - v10;
  v101 = sub_24A3C9CEC(&qword_27EF3FBA8, &qword_24A4B7928);
  v11 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v13 = &v88 - v12;
  v14 = sub_24A4AAAD0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v88 - v21;
  v23 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v88 - v25;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24A4AC270() & 1) == 0)
  {
    goto LABEL_37;
  }

  v27 = a1[3];
  v28 = a2[3];
  if (v27)
  {
    if (!v28 || (a1[2] != a2[2] || v27 != v28) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v28)
  {
    goto LABEL_37;
  }

  if ((sub_24A462C1C(a1[4], a2[4]) & 1) == 0)
  {
    goto LABEL_37;
  }

  v96 = v7;
  v97 = v13;
  v98 = type metadata accessor for FMFFriend();
  v99 = a2;
  v29 = v98[8];
  v30 = *(v23 + 48);
  sub_24A37B740(a1 + v29, v26, &qword_27EF3F460, &unk_24A4B53B0);
  v31 = v99 + v29;
  v32 = v99;
  sub_24A37B740(v31, &v26[v30], &qword_27EF3F460, &unk_24A4B53B0);
  v33 = *(v15 + 48);
  if (v33(v26, 1, v14) == 1)
  {
    if (v33(&v26[v30], 1, v14) == 1)
    {
      sub_24A37EF2C(v26, &qword_27EF3F460, &unk_24A4B53B0);
      goto LABEL_19;
    }

LABEL_17:
    sub_24A37EF2C(v26, &qword_27EF3F3B8, &qword_24A4B5480);
    goto LABEL_37;
  }

  sub_24A37B740(v26, v22, &qword_27EF3F460, &unk_24A4B53B0);
  if (v33(&v26[v30], 1, v14) == 1)
  {
    (*(v15 + 8))(v22, v14);
    goto LABEL_17;
  }

  (*(v15 + 32))(v18, &v26[v30], v14);
  sub_24A40DA68(&qword_27EF3F3C0, MEMORY[0x277CC9578]);
  v34 = sub_24A4AB810();
  v35 = *(v15 + 8);
  v35(v18, v14);
  v35(v22, v14);
  v32 = v99;
  sub_24A37EF2C(v26, &qword_27EF3F460, &unk_24A4B53B0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if (*(a1 + v98[9]) != *(v32 + v98[9]))
  {
    goto LABEL_37;
  }

  v36 = v98[10];
  v37 = *(a1 + v36);
  v38 = *(v32 + v36);
  if (v37 == 2)
  {
    v39 = v97;
    if (v38 != 2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v40 = 0;
    v39 = v97;
    if (v38 == 2 || ((v38 ^ v37) & 1) != 0)
    {
      return v40 & 1;
    }
  }

  v41 = v98[11];
  v42 = *(a1 + v41);
  v43 = *(v32 + v41);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v40 = 0;
    if (v43 == 2 || ((v43 ^ v42) & 1) != 0)
    {
      return v40 & 1;
    }
  }

  v44 = v98[12];
  v45 = *(a1 + v44);
  v46 = *(v32 + v44);
  if (v45 == 2)
  {
    if (v46 != 2)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v40 = 0;
    if (v46 == 2 || ((v46 ^ v45) & 1) != 0)
    {
      return v40 & 1;
    }
  }

  if (*(a1 + v98[18]) != *(v32 + v98[18]) || *(a1 + v98[13]) != *(v32 + v98[13]))
  {
    goto LABEL_37;
  }

  v48 = v98[14];
  v49 = *(a1 + v48);
  v50 = *(v32 + v48);
  if (v49 == 2)
  {
    if (v50 == 2)
    {
      goto LABEL_44;
    }

LABEL_37:
    v40 = 0;
    return v40 & 1;
  }

  v40 = 0;
  if (v50 == 2 || ((v50 ^ v49) & 1) != 0)
  {
    return v40 & 1;
  }

LABEL_44:
  if (*(a1 + v98[15]) != *(v32 + v98[15]))
  {
    goto LABEL_37;
  }

  v51 = v98[20];
  v52 = *(v101 + 48);
  sub_24A37B740(a1 + v51, v39, &qword_27EF3F480, &unk_24A4B8C20);
  sub_24A37B740(v99 + v51, v39 + v52, &qword_27EF3F480, &unk_24A4B8C20);
  v53 = v103;
  v54 = *(v102 + 48);
  if (v54(v39, 1, v103) == 1)
  {
    if (v54(v39 + v52, 1, v53) == 1)
    {
      sub_24A37EF2C(v39, &qword_27EF3F480, &unk_24A4B8C20);
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v55 = v100;
  sub_24A37B740(v39, v100, &qword_27EF3F480, &unk_24A4B8C20);
  if (v54(v39 + v52, 1, v53) == 1)
  {
    sub_24A39A698(v55, type metadata accessor for FMFLocation);
LABEL_50:
    sub_24A37EF2C(v39, &qword_27EF3FBA8, &qword_24A4B7928);
    goto LABEL_37;
  }

  v56 = v96;
  sub_24A39CAB8(v39 + v52, v96, type metadata accessor for FMFLocation);
  v57 = static FMFLocation.== infix(_:_:)(v55);
  sub_24A39A698(v56, type metadata accessor for FMFLocation);
  sub_24A39A698(v55, type metadata accessor for FMFLocation);
  sub_24A37EF2C(v39, &qword_27EF3F480, &unk_24A4B8C20);
  if ((v57 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_52:
  v58 = v98[19];
  v59 = *(a1 + v58 + 8);
  v102 = *(a1 + v58);
  v60 = *(a1 + v58 + 24);
  v103 = *(a1 + v58 + 16);
  v61 = *(a1 + v58 + 32);
  v62 = *(a1 + v58 + 40);
  v63 = *(a1 + v58 + 48);
  v64 = (v99 + v58);
  v66 = *v64;
  v65 = v64[1];
  v67 = v64[2];
  v96 = v64[3];
  v97 = v67;
  v69 = v64[4];
  v68 = v64[5];
  v94 = v62;
  v95 = v69;
  v91 = v64[6];
  v92 = v68;
  v70 = v59;
  v100 = v60;
  v101 = v61;
  v93 = v63;
  if (!v59)
  {
    sub_24A39AED0(v102, 0);
    if (!v65)
    {
      sub_24A39AED0(v66, 0);
      v70 = 0;
      goto LABEL_71;
    }

    v71 = v65;
    sub_24A39AED0(v66, v65);
LABEL_65:
    sub_24A40D4E4(v102, v70);
    v73 = v66;
    v74 = v71;
    goto LABEL_66;
  }

  v71 = v65;
  if (!v65)
  {
    v75 = v102;
    sub_24A39AED0(v102, v59);
    sub_24A39AED0(v66, 0);
    sub_24A39AED0(v75, v70);

    goto LABEL_65;
  }

  if (v102 != v66 || v59 != v65) && (sub_24A4AC270() & 1) == 0 || (v103 != v97 || v100 != v96) && (sub_24A4AC270() & 1) == 0 || ((v101 ^ v95))
  {
    v72 = v102;
    sub_24A39AED0(v102, v70);
    sub_24A39AED0(v66, v65);
    sub_24A39AED0(v72, v70);
    sub_24A40D4E4(v66, v65);

    v73 = v102;
    v74 = v70;
LABEL_66:
    sub_24A40D4E4(v73, v74);
    goto LABEL_37;
  }

  if (v94 != v92 || v93 != v91)
  {
    v90 = sub_24A4AC270();
    sub_24A39AED0(v102, v70);
    sub_24A39AED0(v66, v65);
    sub_24A39AED0(v102, v70);
    sub_24A40D4E4(v66, v65);

    sub_24A40D4E4(v102, v70);
    if ((v90 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_72;
  }

  sub_24A39AED0(v102, v70);
  v89 = v65;
  sub_24A39AED0(v66, v65);
  sub_24A39AED0(v102, v70);
  sub_24A40D4E4(v66, v89);

LABEL_71:
  sub_24A40D4E4(v102, v70);
LABEL_72:
  v76 = v98[16];
  v77 = *(a1 + v76);
  v78 = *(v99 + v76);
  if (v77)
  {
    if (!v78)
    {
      goto LABEL_37;
    }

    v79 = *(v99 + v76);

    v80 = sub_24A3A04EC(v77, v78);

    if ((v80 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v78)
  {
    goto LABEL_37;
  }

  v81 = v98[17];
  v82 = *(a1 + v81);
  v83 = *(v99 + v81);
  if (v82)
  {
    if (!v83)
    {
      goto LABEL_37;
    }

    v84 = *(v99 + v81);

    v85 = sub_24A3A04EC(v82, v83);

    if ((v85 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v83)
  {
    goto LABEL_37;
  }

  v86 = a1[5];
  v87 = v99[5];
  v40 = (v86 | v87) == 0;
  if (v86 && v87)
  {
    v40 = sub_24A38B37C(a1[5], v87);
  }

  return v40 & 1;
}

unint64_t sub_24A40D490()
{
  result = qword_27EF3FAF8;
  if (!qword_27EF3FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FAF8);
  }

  return result;
}

uint64_t sub_24A40D4E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_24A40D534()
{
  result = qword_27EF3FB08;
  if (!qword_27EF3FB08)
  {
    sub_24A3CBC9C(&qword_27EF3FB00, &qword_24A4B7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB08);
  }

  return result;
}

unint64_t sub_24A40D5B0()
{
  result = qword_27EF3FB20;
  if (!qword_27EF3FB20)
  {
    sub_24A3CBC9C(&qword_27EF3FB00, &qword_24A4B7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB20);
  }

  return result;
}

unint64_t sub_24A40D62C()
{
  result = qword_27EF3FB28;
  if (!qword_27EF3FB28)
  {
    sub_24A3CBC9C(&qword_27EF3F480, &unk_24A4B8C20);
    sub_24A40DA68(&qword_27EF3FB30, type metadata accessor for FMFLocation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB28);
  }

  return result;
}

unint64_t sub_24A40D6E0()
{
  result = qword_27EF3FB40;
  if (!qword_27EF3FB40)
  {
    sub_24A3CBC9C(&qword_27EF3FB38, &qword_24A4B7658);
    sub_24A40D79C(&qword_27EF3FB48, &qword_27EF3FB50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB40);
  }

  return result;
}

uint64_t sub_24A40D79C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(&qword_27EF3F1B0, &unk_24A4B4980);
    sub_24A40DA68(a2, type metadata accessor for FMFLocationAlert);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24A40D838()
{
  result = qword_27EF3F3F0;
  if (!qword_27EF3F3F0)
  {
    sub_24A3CBC9C(&qword_27EF3F108, &qword_24A4B4950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F3F0);
  }

  return result;
}

unint64_t sub_24A40D910()
{
  result = qword_27EF3FB90;
  if (!qword_27EF3FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB90);
  }

  return result;
}

unint64_t sub_24A40D968()
{
  result = qword_27EF3FB98;
  if (!qword_27EF3FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FB98);
  }

  return result;
}

unint64_t sub_24A40D9C0()
{
  result = qword_27EF3FBA0;
  if (!qword_27EF3FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBA0);
  }

  return result;
}

uint64_t sub_24A40DA14()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_24A40DA68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t FMFRelationshipType.debugDescription.getter()
{
  v1 = *v0;
  sub_24A4ABF50();

  v2 = sub_24A4AC240();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000020;
}

unint64_t sub_24A40DB74()
{
  result = qword_27EF3FBB8;
  if (!qword_27EF3FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBB8);
  }

  return result;
}

unint64_t sub_24A40DBCC()
{
  result = qword_27EF3FBC0;
  if (!qword_27EF3FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBC0);
  }

  return result;
}

uint64_t FMFDemoError.hashValue.getter()
{
  sub_24A4AC360();
  MEMORY[0x24C218780](0);
  return sub_24A4AC3A0();
}

unint64_t sub_24A40DC9C()
{
  result = qword_27EF3FBD8;
  if (!qword_27EF3FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBD8);
  }

  return result;
}

void *sub_24A40DD00(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = a2;
  v19 = a3;
  v17 = a1;
  v16 = sub_24A4ABD50();
  v4 = *(v16 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v16);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4ABD10();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A4AB6E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[5] = 0;
  swift_unknownObjectWeakInit();
  v12 = sub_24A3785D4();
  v15[1] = "request handler ";
  v15[2] = v12;
  sub_24A4AB6B0();
  v20 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
  sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A3786B0(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
  sub_24A4ABE90();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v16);
  v3[6] = sub_24A4ABD90();
  v13 = v17;
  v3[12] = v18;
  v3[13] = v13;
  sub_24A37B3F8(v19, (v3 + 7));
  return v3;
}

uint64_t sub_24A40DF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_24A4AB690();
  v23 = *(v9 - 8);
  v10 = *(v23 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24A4AB6E0();
  v13 = *(v22 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 48);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  v18[6] = v17;
  aBlock[4] = sub_24A40F160;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D86F48;
  v19 = _Block_copy(aBlock);

  sub_24A4AB6B0();
  v24 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A3786B0(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v16, v12, v19);
  _Block_release(v19);
  (*(v23 + 8))(v12, v9);
  (*(v13 + 8))(v16, v22);
}

void sub_24A40E2A4(uint64_t *a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v52 = a3;
  v9 = sub_24A4AAAD0();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v12 = sub_24A4AB630();
  v13 = sub_24A378E18(v12, qword_27EF4E260);

  v51 = v13;
  v14 = sub_24A4AB600();
  v15 = sub_24A4ABCE0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v48 = a4;
    v18 = a2;
    v19 = v17;
    v55[0] = v17;
    *v16 = 136315138;
    v20 = *a1;
    v21 = sub_24A4AC420();
    v23 = sub_24A37BD58(v21, v22, v55);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_24A376000, v14, v15, "FMFDemoInteractionController: Handling %s.", v16, 0xCu);
    sub_24A37EEE0(v19);
    v24 = v19;
    a2 = v18;
    MEMORY[0x24C219130](v24, -1, -1);
    MEMORY[0x24C219130](v16, -1, -1);
  }

  v25 = swift_allocObject();
  v25[2] = a5;
  v25[3] = a2;
  v25[4] = v52;
  v55[0] = a1;
  v55[1] = sub_24A40F170;
  v55[2] = v25;
  type metadata accessor for FMFBaseRequest();
  sub_24A4ABDF0();
  swift_retain_n();
  swift_retain_n();
  sub_24A3CBC9C(&qword_27EF3F2D8, &qword_24A4B7C60);
  swift_getFunctionTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_24A3C9CEC(&qword_27EF3FBE0, &qword_24A4B7C68);
  if (swift_dynamicCast())
  {
    v26 = v54[5];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v28 = *(Strong + 104);
      v29 = v49;
      v30 = Strong;
      sub_24A4AAAC0();
      sub_24A3E4FC0(v29);
      (*(v50 + 8))(v29, v9);
      v31 = *(v30 + 104);
      v32 = v31[4];
      v33 = v31[5];
      v34 = v31[6];
      v35 = v31[7];

      v36 = sub_24A40F1F4(v32, v33, v34, v35);
      v53 = 0;
      v54[0] = v36;

      v26(v54, &v53);

      v37 = *(v30 + 96);

      sub_24A3BB2D8(v38);
    }
  }

  else
  {

    v39 = sub_24A4AB600();
    v40 = sub_24A4ABCE0();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v55[0] = v42;
      *v41 = 136315138;
      v43 = *a1;
      v44 = sub_24A4AC420();
      v46 = sub_24A37BD58(v44, v45, v55);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_24A376000, v39, v40, "FMFDemoInteractionController: Received %s, which is unsupported in demo mode.", v41, 0xCu);
      sub_24A37EEE0(v42);
      MEMORY[0x24C219130](v42, -1, -1);
      MEMORY[0x24C219130](v41, -1, -1);
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24A40ECA4();
    }

    sub_24A40F1A0();
    v47 = swift_allocError();
    a2(0, v47);
  }
}

uint64_t sub_24A40E88C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v8 = sub_24A4AB630();
  sub_24A378E18(v8, qword_27EF4E260);

  v9 = sub_24A4AB600();
  v10 = sub_24A4ABCE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    v13 = *a1;
    v14 = sub_24A4AC420();
    v16 = sub_24A37BD58(v14, v15, &v22);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24A376000, v9, v10, "FMFDemoInteractionController: Forwarding %s to real server interaction controller.", v11, 0xCu);
    sub_24A37EEE0(v12);
    MEMORY[0x24C219130](v12, -1, -1);
    MEMORY[0x24C219130](v11, -1, -1);
  }

  v17 = v4[10];
  v18 = v4[11];
  sub_24A37EACC(v4 + 7, v17);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v20 = *(v18 + 72);

  v20(a1, sub_24A40F158, v19, v17, v18);
}

uint64_t sub_24A40EAA8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = a2;
  v8 = sub_24A4AB600();
  v9 = sub_24A4ABCE0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_24A37BD58(0xD00000000000001FLL, 0x800000024A4B05A0, &v17);
    *(v10 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v12 = sub_24A4AC310();
      v14 = v13;
    }

    else
    {
      v14 = 0xE400000000000000;
      v12 = 1701736302;
    }

    v15 = sub_24A37BD58(v12, v14, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_24A376000, v8, v9, "FMFDemoInteractionController: Received %s, (error: %s) from real server interaction controller.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v11, -1, -1);
    MEMORY[0x24C219130](v10, -1, -1);
  }

  return a3(a1, a2);
}

uint64_t sub_24A40ECA4()
{
  v0 = sub_24A3C9CEC(&qword_27EF3F440, &qword_24A4B5BF0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v26 = 0x800000024A4B0530;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = [v8 bundleForClass_];
  v10 = sub_24A4AA800();
  v12 = v11;

  v13 = [v8 bundleForClass_];
  v14 = sub_24A4AA800();
  v16 = v15;

  v17 = sub_24A4AA9D0();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  v18(v3, 1, 1, v17);
  v19 = type metadata accessor for FMFAlert();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v22[3] = 0;
  swift_unknownObjectWeakInit();
  v23 = v26;
  v22[4] = 0xD00000000000001CLL;
  v22[5] = v23;
  v22[6] = v10;
  v22[7] = v12;
  v22[8] = 0;
  v22[9] = 0;
  v22[10] = v14;
  v22[11] = v16;
  v22[12] = 0;
  v22[13] = 0;
  sub_24A37BE24(v6, v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_okButtonURL, &qword_27EF3F440, &qword_24A4B5BF0);
  sub_24A37BE24(v3, v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_cancelButtonURL, &qword_27EF3F440, &qword_24A4B5BF0);
  *(v22 + OBJC_IVAR____TtC7FMFCore8FMFAlert_alertType) = 5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
  }

  sub_24A45A9DC(v22, Strong);

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40EFA4()
{
  sub_24A3C8470(v0 + 16);
  sub_24A3C8470(v0 + 32);

  sub_24A37EEE0((v0 + 56));
  v1 = *(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_24A40F028(uint64_t a1, uint64_t a2)
{
  *(*v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40F070(uint64_t a1, uint64_t a2)
{
  *(*v2 + 40) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_24A40F0B8()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  sub_24A37EACC((*v0 + 56), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_24A40F170(void *a1, void *a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return v3(*a1, *a2);
}

unint64_t sub_24A40F1A0()
{
  result = qword_27EF3FBE8;
  if (!qword_27EF3FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FBE8);
  }

  return result;
}

uint64_t sub_24A40F1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24A3C9CEC(&qword_27EF3F1C8, &unk_24A4B7C70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  v12 = MEMORY[0x277D84F90];
  v13 = sub_24A431298(MEMORY[0x277D84F90]);
  v14 = sub_24A431298(v12);
  v15 = type metadata accessor for FMFCommandResponseFragment();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_24A37F0C8(v33);
  refreshed = type metadata accessor for FMFInitRefreshClientResponse();
  v17 = *(refreshed + 48);
  v18 = *(refreshed + 52);
  v19 = swift_allocObject();
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labels) = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_labelledLocations) = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_devices) = 0;
  v20 = (v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_preferences);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_features;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = (v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_myInfo);
  *v22 = 0u;
  v22[1] = 0u;
  v22[2] = 0u;
  *(v22 + 41) = 0u;
  v23 = (v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_config);
  v24 = v33[13];
  v23[12] = v33[12];
  v23[13] = v24;
  v23[14] = v33[14];
  v25 = v33[9];
  v23[8] = v33[8];
  v23[9] = v25;
  v26 = v33[11];
  v23[10] = v33[10];
  v23[11] = v26;
  v27 = v33[5];
  v23[4] = v33[4];
  v23[5] = v27;
  v28 = v33[7];
  v23[6] = v33[6];
  v23[7] = v28;
  v29 = v33[1];
  *v23 = v33[0];
  v23[1] = v29;
  v30 = v33[3];
  v23[2] = v33[2];
  v23[3] = v30;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locations) = a3;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locatesInProgress) = a4;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_following) = a2;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_followers) = a1;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowing) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_futureFollowers) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_pendingOffers) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByMe) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnMeByFriends) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByMe) = v12;
  *(v19 + OBJC_IVAR____TtC7FMFCore28FMFInitRefreshClientResponse_locationAlertsOnFriendsByFriends) = v12;
  *(v19 + 16) = v13;
  *(v19 + 24) = v14;
  sub_24A37BE24(v11, v19 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_commandResponse, &qword_27EF3F1C8, &unk_24A4B7C70);
  *(v19 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_alert) = 0;
  *(v19 + OBJC_IVAR____TtC7FMFCore15FMFBaseResponse_fetchStatus) = 200;
  return v19;
}

unint64_t sub_24A40F54C(char a1)
{
  result = 0x54746E6572727563;
  switch(a1)
  {
    case 1:
      result = 0x656D614E707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x54746375646F7270;
      break;
    case 4:
      result = 0x6F6973726556736FLL;
      break;
    case 5:
      result = 0x646C697542736FLL;
      break;
    case 6:
      result = 0x6C43656369766564;
      break;
    case 7:
      result = 0x4455656369766564;
      break;
    case 8:
      result = 0x7365527070417369;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6E656B6F54737061;
      break;
    case 12:
      result = 0x65646F4D68737570;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x6956776F646E6977;
      break;
    case 15:
      result = 0x736F4D746E6F7266;
      break;
    case 16:
      result = 0x4B53656369766564;
      break;
    case 17:
      result = 0x437972746E756F63;
      break;
    case 18:
      result = 0x6F436E6F69676572;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24A40F7D4()
{
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t sub_24A40F88C()
{
  v0 = sub_24A4AAC20();
  v1 = *(v0 + qword_27EF3FC00);

  v2 = *(v0 + qword_27EF3FC08);

  v3 = *(v0 + qword_27EF3FC10);

  v4 = *(v0 + qword_27EF3FC18);

  v5 = *(v0 + qword_27EF3FC20);

  v6 = qword_27EF4E0D8;
  v7 = sub_24A4AAAD0();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_24A40F998(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_27EF3FC08;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_24A40F9F4())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t FMFAddUpdateLabelAction.__allocating_init(locationToLabel:label:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_24A3B4B10(a1, v9 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  if (a3)
  {

    v10._countAndFlagsBits = a2;
    v10._object = a3;
    FMFDefaultLabel.init(rawValue:)(v10);
    sub_24A3B4B74(a1);
    if (v14 == 5)
    {
      v11 = 259;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    sub_24A3B4B74(a1);
    a2 = 0;
    v11 = 0;
  }

  v12 = v9 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = v11;
  *(v9 + 16) = 1;
  return v9;
}

uint64_t FMFAddUpdateLabelAction.init(locationToLabel:label:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_24A3B4B10(a1, v3 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  if (a3)
  {

    v7._countAndFlagsBits = a2;
    v7._object = a3;
    FMFDefaultLabel.init(rawValue:)(v7);
    sub_24A3B4B74(a1);
    if (v11 == 5)
    {
      v8 = 259;
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    sub_24A3B4B74(a1);
    a2 = 0;
    v8 = 0;
  }

  v9 = v3 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 16) = v8;
  *(v3 + 16) = 1;
  return v3;
}

uint64_t sub_24A40FBDC()
{
  v1 = *v0;
  v2 = sub_24A4AC420();
  MEMORY[0x24C217D50](v2);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  sub_24A3BAF14();
  v3 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v3);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();
  MEMORY[0x24C217D50](0x203A6C6562616CLL, 0xE700000000000000);
  v4 = v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label;
  v9 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label);
  v10 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label + 8);
  v11 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label + 16);

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v5 = sub_24A4AB870();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](0x203A6570797420, 0xE700000000000000);
  v6 = v4[17];
  *(v4 + 1);
  sub_24A3C9CEC(&qword_27EF3FC38, qword_24A4B7D08);
  v7 = sub_24A4AB870();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](0xD000000000000012, 0x800000024A4B08C0);
  type metadata accessor for FMFLocation();
  sub_24A4AC030();

  MEMORY[0x24C217D50](0, 0xE000000000000000);

  return 60;
}

uint64_t sub_24A40FE6C()
{
  sub_24A3B4B74(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label + 8);
}

uint64_t FMFAddUpdateLabelAction.deinit()
{
  sub_24A3B4B74(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel);
  v1 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label + 8);

  return v0;
}

uint64_t FMFAddUpdateLabelAction.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_locationToLabel;

  sub_24A3B4B74(v0 + v1);
  v2 = *(v0 + OBJC_IVAR____TtC7FMFCore23FMFAddUpdateLabelAction_label + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFAddUpdateLabelAction()
{
  result = qword_27EF3FC40;
  if (!qword_27EF3FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24A40FFD4()
{
  result = type metadata accessor for FMFLocation();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_24A4100DC(uint64_t a1, char a2, void *a3)
{
  v41 = *(a1 + 16);
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v3) = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *a3;

  v10 = sub_24A39B2C8(v5, v4);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_24A4A4B74(v15, v3 & 1);
    v17 = *a3;
    v10 = sub_24A39B2C8(v5, v4);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_24A4AC2B0();
    __break(1u);
  }

  if (v3)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_24A4A8628();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    sub_24A3C9CEC(&qword_27EF3F0D0, &unk_24A4B6970);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v5;
  v23[1] = v4;
  v24 = v22[7] + 24 * v10;
  *v24 = v6;
  *(v24 + 8) = v7;
  *(v24 + 16) = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_24A4ABF50();
    MEMORY[0x24C217D50](0xD00000000000001BLL, 0x800000024A4B0A10);
    sub_24A4AC030();
    MEMORY[0x24C217D50](39, 0xE100000000000000);
    sub_24A4AC050();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v3 = (a1 + 104);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v5 = *(v3 - 4);
      v4 = *(v3 - 3);
      v27 = *(v3 - 2);
      v7 = *(v3 - 1);
      v8 = *v3;
      v28 = *a3;

      v29 = sub_24A39B2C8(v5, v4);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_24A4A4B74(v33, 1);
        v34 = *a3;
        v29 = sub_24A39B2C8(v5, v4);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v5;
      v37[1] = v4;
      v38 = v36[7] + 24 * v29;
      *v38 = v27;
      *(v38 + 8) = v7;
      *(v38 + 16) = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v6;
      v36[2] = v40;
      v3 += 40;
      if (v41 == v6)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_24A4104A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v88 = a1;
  v89 = a2;
  v86 = sub_24A4AAAD0();
  v7 = *(v86 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMFLocation();
  v97 = *(v10 - 8);
  v11 = v97[8];
  MEMORY[0x28223BE20](v10);
  v92 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v91 = &v82 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v82 - v16;
  v18 = *(a4 + 16);
  v94 = &v82 - v16;
  v99 = v19;
  if (v18)
  {
    v98 = v7;
    v100 = a3;
    v106[0] = MEMORY[0x277D84F90];
    sub_24A3DBD0C(0, v18, 0);
    v20 = v106[0];
    v21 = (a4 + 48);
    do
    {
      v23 = *(v21 - 2);
      v22 = *(v21 - 1);
      v24 = *v21;
      v106[0] = v20;
      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      swift_bridgeObjectRetain_n();
      if (v26 >= v25 >> 1)
      {
        sub_24A3DBD0C((v25 > 1), v26 + 1, 1);
        v20 = v106[0];
      }

      v21 += 24;
      *(v20 + 16) = v26 + 1;
      v27 = v20 + 40 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v22;
      *(v27 + 48) = v23;
      *(v27 + 56) = v22;
      *(v27 + 64) = v24;
      --v18;
    }

    while (v18);
    v17 = v94;
    a3 = v100;
    v7 = v98;
    goto LABEL_8;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_8:
    sub_24A3C9CEC(&qword_27EF3FC50, "nh");
    v28 = sub_24A4AC090();
    goto LABEL_9;
  }

  v28 = MEMORY[0x277D84F98];
LABEL_9:
  v106[0] = v28;

  sub_24A4100DC(v29, 1, v106);

  v30 = v106[0];
  v31 = *(a3 + 16);
  if (v31)
  {
    v32 = 0;
    v83 = (*(v97 + 80) + 32) & ~*(v97 + 80);
    v33 = a3 + v83;
    v34 = v97[9];
    v82 = (v7 + 8);
    v95 = MEMORY[0x277D84F90];
    v96 = MEMORY[0x277D84F90];
    v98 = v31;
    v100 = a3 + v83;
    do
    {
      sub_24A3B4B10(v33 + v34 * v32, v17);
      v35 = *(v17 + 1);
      if (v35 && *(v30 + 16))
      {
        v36 = *v17;
        v37 = *(v17 + 1);

        v38 = sub_24A39B2C8(v36, v35);
        if (v39)
        {
          v40 = *(v30 + 56) + 24 * v38;
          v41 = *(v40 + 8);
          v97 = *v40;
          v42 = *(v40 + 16);
          v43 = v99[11];
          memcpy(v106, &v17[v43], 0x161uLL);
          if (sub_24A3B9C24(v106) != 1)
          {
            v90 = v42;
            v44 = v106[38];

            [v44 coordinate];
            v46 = v45;
            v48 = v47;
            memcpy(v105, &v17[v43], 0x161uLL);
            if (sub_24A3B9C24(v105) != 1)
            {
              v93 = v41;
              v49 = v17[16];
              if (v17[16])
              {
                v50 = 10.0;
              }

              else
              {
                v50 = 120.0;
              }

              v84 = v105[38];
              v51 = [v84 timestamp];
              v52 = v85;
              sub_24A4AAAA0();

              sub_24A4AAA50();
              v54 = v53;
              (*v82)(v52, v86);
              v104[0] = 0;
              MEMORY[0x24C219150](v104, 8);
              for (i = v104[0]; (0x20000000000001 * v104[0]) < 0x1FFFFFFFFFF801; i = v104[0])
              {
                v104[0] = 0;
                MEMORY[0x24C219150](v104, 8);
              }

              v56 = v94;
              if (vcvtd_n_f64_u64((i * 0x20000000000001uLL) >> 64, 0x35uLL) <= pow(v54 / v50, 10.0))
              {
                v57 = v49;
                if (v49)
                {
                  goto LABEL_34;
                }

LABEL_31:
                if ((v57 & 1) == 0)
                {

                  memcpy(v104, (v56 + v43), 0x161uLL);
                  v58 = v91;
                  *(v91 + 24) = 0;
                  *(v58 + 32) = 1;
                  v59 = v99;
                  v60 = v99[8];
                  v61 = sub_24A4AAB20();
                  v62 = v58 + v60;
                  v63 = 1;
                  (*(*(v61 - 8) + 56))(v62, 1, 1, v61);
                  *v58 = v36;
                  *(v58 + 8) = v35;
                  *(v58 + 16) = 1;
                  memcpy((v58 + v59[11]), v104, 0x161uLL);
                  *(v58 + 33) = 0;
                  *(v58 + v59[9]) = 0;
                  *(v58 + v59[10]) = 0;

                  sub_24A37B740(v104, v102, &qword_27EF3F840, &qword_24A4B6598);
                  goto LABEL_43;
                }
              }

              else
              {
                v57 = v49 ^ 1;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_31;
                }

LABEL_34:
                if (v57)
                {

                  v97 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v46 longitude:v48];
                  memcpy(v104, (v56 + v43), 0x161uLL);
                  if (sub_24A3B9C24(v104) == 1)
                  {
                    sub_24A3BAFB0(v103);
                  }

                  else
                  {
                    sub_24A37B740(v104, v102, &unk_27EF404E0, &unk_24A4B5230);
                    memcpy(v103, v104, sizeof(v103));
                  }

                  memcpy(v102, (v56 + v43), 0x161uLL);
                  if (sub_24A3B9C24(v102) == 1)
                  {
                    v64 = 0;
                    v65 = 0;
                    v66 = 0;
                  }

                  else
                  {
                    v64 = v102[40];
                    v65 = v102[41];
                    v66 = v102[42];
                  }

                  memcpy(v101, v103, 0x130uLL);
                  v101[38] = v97;
                  LOBYTE(v101[39]) = 0;
                  v101[40] = v64;
                  v101[41] = v65;
                  LOWORD(v101[42]) = v66;
                  v101[43] = 0;
                  LOBYTE(v101[44]) = 0;
                  nullsub_1(v101);
                  v58 = v91;
                  *(v91 + 24) = 0;
                  *(v58 + 32) = 1;
                  v67 = v99;
                  v68 = v99[8];
                  v69 = sub_24A4AAB20();
                  (*(*(v69 - 8) + 56))(v58 + v68, 1, 1, v69);
                  *v58 = v36;
                  *(v58 + 8) = v35;
                  *(v58 + 16) = 0;
                  memcpy((v58 + v67[11]), v101, 0x161uLL);
                  *(v58 + 33) = 0;
                  *(v58 + v67[9]) = 0;
                  *(v58 + v67[10]) = 0;

                  v63 = 0;
LABEL_43:
                  v93 = v35;
                  v31 = v98;
LABEL_44:
                  sub_24A3B4B10(v58, v92);
                  v70 = v63;
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    v71 = v95;
                  }

                  else
                  {
                    v71 = sub_24A3B5C2C(0, v95[2] + 1, 1, v95);
                  }

                  v73 = v71[2];
                  v72 = v71[3];
                  if (v73 >= v72 >> 1)
                  {
                    v71 = sub_24A3B5C2C(v72 > 1, v73 + 1, 1, v71);
                  }

                  v71[2] = v73 + 1;
                  v95 = v71;
                  sub_24A410DD8(v92, v71 + v83 + v73 * v34);
                  v74 = v96;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v74 = sub_24A3BEA68(0, *(v74 + 2) + 1, 1, v74);
                  }

                  v76 = *(v74 + 2);
                  v75 = *(v74 + 3);
                  v96 = v74;
                  if (v76 >= v75 >> 1)
                  {
                    v96 = sub_24A3BEA68((v75 > 1), v76 + 1, 1, v96);
                  }

                  sub_24A3B4B74(v91);
                  v77 = v96;
                  *(v96 + 2) = v76 + 1;
                  v78 = &v77[24 * v76];
                  v79 = v93;
                  v17 = v94;
                  *(v78 + 4) = v36;
                  *(v78 + 5) = v79;
                  v78[48] = v70;
                  sub_24A3B4B74(v17);
                  v33 = v100;
                  goto LABEL_22;
                }
              }

              v58 = v91;
              sub_24A3B4B10(v56, v91);
              v36 = v97;
              v31 = v98;
              v63 = v90;
              goto LABEL_44;
            }
          }

          v31 = v98;
        }

        else
        {
        }

        v33 = v100;
      }

      sub_24A3B4B74(v17);
LABEL_22:
      ++v32;
    }

    while (v32 != v31);
  }

  v80 = v88;

  return v80;
}

uint64_t sub_24A410DD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMFLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall FMFShallowLocationEvent.init(firstLocationLatency:locationFound:longestAgeDisplayedIncludingCache:longestAgeDisplayedExcludingCache:timeSpentInApp:)(FMFCore::FMFShallowLocationEvent *__return_ptr retstr, Swift::Double firstLocationLatency, Swift::Bool locationFound, Swift::Double longestAgeDisplayedIncludingCache, Swift::Double longestAgeDisplayedExcludingCache, Swift::Double timeSpentInApp)
{
  retstr->firstLocationLatency = firstLocationLatency;
  retstr->locationFound = locationFound;
  retstr->longestAgeDisplayedIncludingCache = longestAgeDisplayedIncludingCache;
  retstr->longestAgeDisplayedExcludingCache = longestAgeDisplayedExcludingCache;
  retstr->timeSpentInApp = timeSpentInApp;
}

Swift::Void __swiftcall FMFManager.enqueue(event:)(FMFCore::FMFShallowLocationEvent *event)
{
  v2 = sub_24A4AB820();
  v3 = swift_allocObject();
  v4 = *&event->longestAgeDisplayedIncludingCache;
  *(v3 + 16) = *&event->firstLocationLatency;
  *(v3 + 32) = v4;
  *(v3 + 48) = event->timeSpentInApp;
  v6[4] = sub_24A411334;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D86FC0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

void static FMFAnalytics.sendShallowLocationEventAnalytics(event:)(uint64_t a1)
{
  v2 = sub_24A4AB820();
  v3 = swift_allocObject();
  v4 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 32);
  v6[4] = sub_24A4118AC;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D87010;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_24A411120(uint64_t a1)
{
  v2 = sub_24A4313C8(MEMORY[0x277D84F90]);
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v3, 0xD000000000000014, 0x800000024A4B0AF0, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v5, 0x6E6F697461636F6CLL, 0xED0000646E756F46, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v7, 0xD000000000000021, 0x800000024A4B0B10, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v9, 0xD000000000000021, 0x800000024A4B0B40, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v11, 0x6E657053656D6974, 0xEE007070416E4974, v12);
  return v2;
}

id sub_24A41133C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24A3D7810();
    v5 = sub_24A4AB760();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void static FMFAnalytics.sendLiveLocationEventAnalytics(event:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_24A4AB820();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v6[4] = sub_24A4118B0;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_24A41133C;
  v6[3] = &unk_285D870B0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

unint64_t sub_24A411610(char a1, double a2)
{
  v4 = sub_24A4313C8(MEMORY[0x277D84F90]);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v5, 0xD000000000000018, 0x800000024A4B0AB0, isUniquelyReferenced_nonNull_native);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24A4308D8(v7, 0xD000000000000015, 0x800000024A4B0AD0, v8);
  return v4;
}

__n128 sub_24A411720(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24A411734(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24A411788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for FMFLiveLocationEvent(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FMFLiveLocationEvent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FMFLiveLocationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24A4118C0()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t FMFFavoriteFriend.friendIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A411A1C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x726564726FLL;
  }

  else
  {
    v4 = 25705;
  }

  if (v3)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  if (*a2)
  {
    v6 = 0x726564726FLL;
  }

  else
  {
    v6 = 25705;
  }

  if (*a2)
  {
    v7 = 0xE500000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A411AB4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A411B28()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A411B88()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A411C04(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x726564726FLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A411C34()
{
  if (*v0)
  {
    result = 0x726564726FLL;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_24A411C60@<X0>(char *a1@<X8>)
{
  v2 = sub_24A4AC0C0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A411CC4(uint64_t a1)
{
  v2 = sub_24A411F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A411D00(uint64_t a1)
{
  v2 = sub_24A411F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFFavoriteFriend.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FC58, &qword_24A4B7E30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A411F08();
  sub_24A4AC3C0();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_24A4AC120();
    v13 = v12;
    v14 = v11;
    v18 = 1;
    v15 = sub_24A4AC150();
    (*(v6 + 8))(v9, v5);
    *a2 = v14;
    a2[1] = v13;
    a2[2] = v15;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A411F08()
{
  result = qword_27EF3FC60;
  if (!qword_27EF3FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FC60);
  }

  return result;
}

uint64_t FMFFavoriteFriend.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FC68, &qword_24A4B7E38);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A411F08();
  sub_24A4AC3D0();
  v15 = 0;
  v11 = v13[1];
  sub_24A4AC1B0();
  if (!v11)
  {
    v14 = 1;
    sub_24A4AC1E0();
  }

  return (*(v4 + 8))(v7, v3);
}

BOOL static FMFFavoriteFriend.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

unint64_t FMFFavoriteFriend.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_24A4ABF50();

  MEMORY[0x24C217D50](v1, v2);
  MEMORY[0x24C217D50](0x3A726564726F20, 0xE700000000000000);
  v4 = sub_24A4AC240();
  MEMORY[0x24C217D50](v4);

  return 0xD000000000000026;
}

BOOL sub_24A412248(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_24A4AC270();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

FMFCore::FMFGeofenceAlertsFrom_optional __swiftcall FMFGeofenceAlertsFrom.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFGeofenceAlertsFrom.rawValue.getter()
{
  if (*v0)
  {
    result = 0x454E4F5952455645;
  }

  else
  {
    result = 0x53444E45495246;
  }

  *v0;
  return result;
}

uint64_t sub_24A412348(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x454E4F5952455645;
  }

  else
  {
    v4 = 0x53444E45495246;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x454E4F5952455645;
  }

  else
  {
    v6 = 0x53444E45495246;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A4123F0()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A412474()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A4124E4()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A412570@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_24A4AC0C0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_24A4125CC(uint64_t *a1@<X8>)
{
  v2 = 0x53444E45495246;
  if (*v1)
  {
    v2 = 0x454E4F5952455645;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A412644()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A412758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A413028();
  *a2 = result;
  return result;
}

void sub_24A412788(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006E6F6974;
  v4 = 0x61636F4C65646968;
  v5 = 0xD000000000000013;
  v6 = 0x800000024A4AE5F0;
  v7 = 0xEC0000006C69616DLL;
  v8 = 0x457972616D697270;
  if (v2 != 4)
  {
    v8 = 0x657469726F766166;
    v7 = 0xE900000000000073;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000024A4AE5D0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024A4AE5B0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_24A412864@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A413028();
  *a1 = result;
  return result;
}

uint64_t sub_24A412898(uint64_t a1)
{
  v2 = sub_24A3831D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4128D4(uint64_t a1)
{
  v2 = sub_24A3831D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall FMFPreferences.init(prefs:hideLocation:)(FMFCore::FMFPreferences *__return_ptr retstr, FMFCore::FMFPreferences *prefs, Swift::Bool hideLocation)
{
  shouldReceiveEmails = prefs->shouldReceiveEmails;
  value = prefs->allowLocationAlertsFrom.value;
  primaryEmail = prefs->primaryEmail;
  rawValue = prefs->favorites.value._rawValue;
  retstr->allowFriendRequests = prefs->allowFriendRequests;
  retstr->allowLocationAlertsFrom.value = value;
  retstr->shouldReceiveEmails = shouldReceiveEmails;
  retstr->primaryEmail = primaryEmail;
  retstr->favorites.value._rawValue = rawValue;
  retstr->hideLocation = hideLocation;
}

void __swiftcall FMFPreferences.init(prefs:allowFriendRequests:)(FMFCore::FMFPreferences *__return_ptr retstr, FMFCore::FMFPreferences *prefs, Swift::Bool allowFriendRequests)
{
  hideLocation = prefs->hideLocation;
  shouldReceiveEmails = prefs->shouldReceiveEmails;
  value = prefs->allowLocationAlertsFrom.value;
  primaryEmail = prefs->primaryEmail;
  rawValue = prefs->favorites.value._rawValue;
  retstr->allowFriendRequests = allowFriendRequests;
  retstr->allowLocationAlertsFrom.value = value;
  retstr->shouldReceiveEmails = shouldReceiveEmails;
  retstr->primaryEmail = primaryEmail;
  retstr->favorites.value._rawValue = rawValue;
  retstr->hideLocation = hideLocation;
}

unint64_t sub_24A4129A4()
{
  result = qword_27EF3FCA8;
  if (!qword_27EF3FCA8)
  {
    sub_24A3CBC9C(&qword_27EF3FCA0, &qword_24A4B7E58);
    sub_24A3833C0(&qword_27EF3FCB0, sub_24A38D204);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCA8);
  }

  return result;
}

uint64_t FMFPreferences.debugDescription.getter()
{
  v1 = *v0;
  v13 = v0[1];
  v14 = v0[2];
  v2 = v0[3];
  v15 = *(v0 + 3);

  sub_24A4ABF50();

  v16[0] = 0xD000000000000026;
  v16[1] = 0x800000024A4B0BA0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v3, v4);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3FCC0, &qword_24A4B7E68);
  v5 = sub_24A4AB870();
  MEMORY[0x24C217D50](v5);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](0xD000000000000018, 0x800000024A4B0BD0);

  v6 = v16[0];
  sub_24A4ABF50();

  strcpy(v16, "hideLocation:");
  HIWORD(v16[1]) = -4864;
  if (v13)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v13)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v7, v8);

  MEMORY[0x24C217D50](0xD000000000000016, 0x800000024A4B0BF0);
  if (v14)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v14)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C217D50](v9, v10);

  MEMORY[0x24C217D50](32, 0xE100000000000000);

  MEMORY[0x24C217D50](v16[0], v16[1]);

  sub_24A4ABF50();

  sub_24A3C9CEC(&qword_27EF3FCA0, &qword_24A4B7E58);
  v11 = sub_24A4AB870();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](15965, 0xE200000000000000);

  MEMORY[0x24C217D50](0xD000000000000019, 0x800000024A4B0C10);

  return v6;
}

unint64_t sub_24A412DB8()
{
  result = qword_27EF3FCC8;
  if (!qword_27EF3FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCC8);
  }

  return result;
}

__n128 sub_24A412E0C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A412E20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_24A412E68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A412ECC()
{
  result = qword_27EF3FCD0;
  if (!qword_27EF3FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCD0);
  }

  return result;
}

unint64_t sub_24A412F24()
{
  result = qword_27EF3FCD8;
  if (!qword_27EF3FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCD8);
  }

  return result;
}

unint64_t sub_24A412F7C()
{
  result = qword_27EF3FCF0;
  if (!qword_27EF3FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCF0);
  }

  return result;
}

unint64_t sub_24A412FD4()
{
  result = qword_27EF3FCF8;
  if (!qword_27EF3FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FCF8);
  }

  return result;
}

uint64_t sub_24A413028()
{
  v0 = sub_24A4AC0C0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t FMFMuteFencesAction.__allocating_init(friendId:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  sub_24A413118(a3, v9 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  *(v9 + 16) = 0;
  return v9;
}

uint64_t FMFMuteFencesAction.init(friendId:endDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_24A413118(a3, v3 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  *(v3 + 16) = 0;
  return v3;
}

uint64_t sub_24A413118(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A413188()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - v3;
  v21[0] = 60;
  v21[1] = 0xE100000000000000;
  v5 = *v0;
  v6 = sub_24A4AC420();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](2016419898, 0xE400000000000000);
  v20[0] = v0;
  sub_24A3BAF14();
  v7 = sub_24A4AB9E0();
  MEMORY[0x24C217D50](v7);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v9 = v21[0];
  v8 = v21[1];
  strcpy(v21, "friendId: ");
  BYTE3(v21[1]) = 0;
  HIDWORD(v21[1]) = -369098752;
  v10 = v0[4];
  v20[0] = v0[3];
  v20[1] = v10;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v11 = sub_24A4AB870();
  MEMORY[0x24C217D50](v11);

  MEMORY[0x24C217D50](8236, 0xE200000000000000);
  v12 = v21[0];
  v13 = v21[1];
  v21[0] = v9;
  v21[1] = v8;

  MEMORY[0x24C217D50](v12, v13);

  v15 = v21[0];
  v14 = v21[1];
  strcpy(v21, "muteEndDate: ");
  HIWORD(v21[1]) = -4864;
  sub_24A38CB20(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate, v4);
  v16 = sub_24A4AB870();
  MEMORY[0x24C217D50](v16);

  v17 = v21[0];
  v18 = v21[1];
  v21[0] = v15;
  v21[1] = v14;

  MEMORY[0x24C217D50](v17, v18);

  return v21[0];
}

uint64_t sub_24A413408()
{
  v1 = *(v0 + 32);

  v2 = v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate;

  return sub_24A413470(v2);
}

uint64_t FMFMuteFencesAction.deinit()
{
  v1 = *(v0 + 32);

  sub_24A413470(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);
  return v0;
}

uint64_t sub_24A413470(uint64_t a1)
{
  v2 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FMFMuteFencesAction.__deallocating_deinit()
{
  v1 = v0[4];

  sub_24A413470(v0 + OBJC_IVAR____TtC7FMFCore19FMFMuteFencesAction_muteEndDate);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FMFMuteFencesAction()
{
  result = qword_27EF3FD00;
  if (!qword_27EF3FD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24A4135B4()
{
  sub_24A37E944();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t FMFLabel.localizedValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3._countAndFlagsBits = sub_24A4AB880();
  FMFDefaultLabel.init(rawValue:)(v3);
  if (v5 != 5)
  {
    return FMFDefaultLabel.localizedLabel.getter();
  }

  return v1;
}

FMFCore::FMFLabelSourceType_optional __swiftcall FMFLabelSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFLabelSourceType.rawValue.getter()
{
  v1 = 0x646E65697266;
  if (*v0 != 1)
  {
    v1 = 0x736573696D657270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t sub_24A413844(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646E65697266;
  if (v2 != 1)
  {
    v4 = 0x736573696D657270;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C61636F6CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646E65697266;
  if (*a2 != 1)
  {
    v8 = 0x736573696D657270;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C61636F6CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24A4AC270();
  }

  return v11 & 1;
}

uint64_t sub_24A41393C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4139D8()
{
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A413A60()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A413B04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646E65697266;
  if (v2 != 1)
  {
    v5 = 0x736573696D657270;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C61636F6CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

FMFCore::FMFLabelSaveType_optional __swiftcall FMFLabelSaveType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFLabelSaveType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6D6F74737563;
  }

  else
  {
    result = 0x746C7561666564;
  }

  *v0;
  return result;
}

uint64_t sub_24A413BF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6F74737563;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6F74737563;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A413C9C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A413D1C()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A413D88()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A413E10(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6D6F74737563;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t FMFDefaultLabel.localizedLabel.getter()
{
  v1 = *v0;
  type metadata accessor for FMLocalize();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_24A4AA800();

  return v4;
}

FMFCore::FMFDefaultLabel_optional __swiftcall FMFDefaultLabel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24A4AC0C0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FMFDefaultLabel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D6F683C21245FLL;
  v3 = 0x6F6863733C21245FLL;
  v4 = 0x3E6D79673C21245FLL;
  if (v1 != 3)
  {
    v4 = 0x6568746F3C21245FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B726F773C21245FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A414090()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A414198()
{
  *v0;
  *v0;
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A41428C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A41439C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656D6F683C21245FLL;
  v4 = 0xEE005F24213E6C6FLL;
  v5 = 0x6F6863733C21245FLL;
  v6 = 0xEB000000005F2421;
  v7 = 0x3E6D79673C21245FLL;
  if (v2 != 3)
  {
    v7 = 0x6568746F3C21245FLL;
    v6 = 0xED00005F24213E72;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6B726F773C21245FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC0000005F24213ELL;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t FMFLabel.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_24A4144E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1701869940;
  }

  else
  {
    v4 = 0x65756C6176;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1701869940;
  }

  else
  {
    v6 = 0x65756C6176;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24A4AC270();
  }

  return v9 & 1;
}

uint64_t sub_24A414580()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4145F8()
{
  *v0;
  sub_24A4AB8F0();
}

uint64_t sub_24A41465C()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

void sub_24A4146DC(uint64_t *a1@<X8>)
{
  v2 = 1701869940;
  if (!*v1)
  {
    v2 = 0x65756C6176;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24A414710()
{
  if (*v0)
  {
    result = 1701869940;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t sub_24A414740@<X0>(char *a1@<X8>)
{
  v2 = sub_24A4AC0C0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_24A4147A4(uint64_t a1)
{
  v2 = sub_24A414A18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4147E0(uint64_t a1)
{
  v2 = sub_24A414A18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFLabel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24A3C9CEC(&qword_27EF3FD10, &qword_24A4B8400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3C0();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_24A4AC120();
    v13 = v12;
    v18 = 1;
    sub_24A4AC120();
    v17 = sub_24A4AC0C0();

    if (v17 >= 3)
    {
      v14 = 3;
    }

    else
    {
      v14 = v17;
    }

    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
    *(a2 + 17) = 2;
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A414A18()
{
  result = qword_27EF3FD18;
  if (!qword_27EF3FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD18);
  }

  return result;
}

uint64_t FMFLabel.encode(to:)(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FD20, &qword_24A4B8408);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3D0();
  v12[31] = 0;
  sub_24A4AC1B0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static FMFLabel.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24A4AC270();
  }
}

unint64_t FMFLabel.debugDescription.getter()
{
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

void *static FMFLabel.defaultLabels(includingOther:)(char a1)
{
  if (a1)
  {
    v1 = &unk_285D84148;
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  sub_24A3DB740(v1);
  return &unk_285D84120;
}

uint64_t static FMFLabel.defaultLabelFor(localizedLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = sub_24A3DB740(&unk_285D84198);
  v7 = 0;
  v8 = *&byte_285D84170[16];
  while (1)
  {
    if (v8 == v7)
    {

      v10 = 5;
      goto LABEL_10;
    }

    if (v7 >= *&byte_285D84170[16])
    {
      break;
    }

    v10 = byte_285D84170[v7 + 32];
    if (FMFDefaultLabel.localizedLabel.getter() == a1 && v11 == a2)
    {

LABEL_9:

LABEL_10:
      *a3 = v10;
      return result;
    }

    ++v7;
    v9 = sub_24A4AC270();

    if (v9)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24A414DC4(void *a1)
{
  v3 = sub_24A3C9CEC(&qword_27EF3FD20, &qword_24A4B8408);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A414A18();
  sub_24A4AC3D0();
  v12[31] = 0;
  sub_24A4AC1B0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_24A414F0C()
{
  MEMORY[0x24C217D50](*v0, v0[1]);
  MEMORY[0x24C217D50](62, 0xE100000000000000);
  return 0xD000000000000012;
}

unint64_t sub_24A414F70()
{
  result = qword_27EF3FD28;
  if (!qword_27EF3FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD28);
  }

  return result;
}

unint64_t sub_24A414FC8()
{
  result = qword_27EF3FD30;
  if (!qword_27EF3FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD30);
  }

  return result;
}

unint64_t sub_24A415020()
{
  result = qword_27EF3FD38;
  if (!qword_27EF3FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD38);
  }

  return result;
}

__n128 sub_24A4150A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_24A4150B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24A41510C()
{
  result = qword_27EF3FD40;
  if (!qword_27EF3FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD40);
  }

  return result;
}

unint64_t sub_24A415164()
{
  result = qword_27EF3FD48;
  if (!qword_27EF3FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD48);
  }

  return result;
}

unint64_t sub_24A4151BC()
{
  result = qword_27EF3FD50;
  if (!qword_27EF3FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD50);
  }

  return result;
}

uint64_t sub_24A415218(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 440) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 456) = 1;
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

    *(result + 456) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24A4152D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_24A381A4C(*a1);
  v5 = v4;
  if (v3 == sub_24A381A4C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24A4AC270();
  }

  return v8 & 1;
}

uint64_t sub_24A415358()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A381A4C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A4153BC()
{
  sub_24A381A4C(*v0);
  sub_24A4AB8F0();
}

uint64_t sub_24A415410()
{
  v1 = *v0;
  sub_24A4AC360();
  sub_24A381A4C(v1);
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A415470@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A415FE8();
  *a2 = result;
  return result;
}

unint64_t sub_24A4154A0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24A381A4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_24A4154CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A415FE8();
  *a1 = result;
  return result;
}

uint64_t sub_24A4154F4(uint64_t a1)
{
  v2 = sub_24A381748();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A415530(uint64_t a1)
{
  v2 = sub_24A381748();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24A4155EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_24A4AC270();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_24A4156A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a2 + 48);
    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v5 || (v6 = a1, v7 = *(a1 + 32), v8 = a2, v9 = sub_24A4AC270(), a2 = v8, v10 = v9, a1 = v6, (v10 & 1) != 0))
    {
      v11 = (a2 + 72);
      v12 = (a1 + 72);
      for (i = v2 - 1; ; --i)
      {
        if (v3)
        {
          if (v3 == 1)
          {
            v14 = 0x776F6C6C616873;
          }

          else
          {
            v14 = 1885693284;
          }

          if (v3 == 1)
          {
            v15 = 0xE700000000000000;
          }

          else
          {
            v15 = 0xE400000000000000;
          }

          v16 = v4;
          if (!v4)
          {
LABEL_24:
            v17 = 0xE400000000000000;
            if (v14 != 1701736302)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v15 = 0xE400000000000000;
          v14 = 1701736302;
          v16 = v4;
          if (!v4)
          {
            goto LABEL_24;
          }
        }

        if (v16 == 1)
        {
          v17 = 0xE700000000000000;
          if (v14 != 0x776F6C6C616873)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v17 = 0xE400000000000000;
          if (v14 != 1885693284)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        if (v15 == v17)
        {

          goto LABEL_30;
        }

LABEL_29:
        v18 = sub_24A4AC270();

        if ((v18 & 1) == 0)
        {
          return 0;
        }

LABEL_30:
        if (!i)
        {
          return 1;
        }

        v3 = *v12;
        v4 = *v11;
        if ((*(v12 - 2) != *(v11 - 2) || *(v12 - 1) != *(v11 - 1)) && (sub_24A4AC270() & 1) == 0)
        {
          return 0;
        }

        v11 += 24;
        v12 += 24;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A41587C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = *(a1 + 48);
    v4 = *(a2 + 48);
    v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
    if (v5 || (v6 = a1, v7 = *(a1 + 32), v8 = a2, v9 = sub_24A4AC270(), a2 = v8, v10 = v9, a1 = v6, (v10 & 1) != 0))
    {
      v11 = (a2 + 72);
      v12 = (a1 + 72);
      for (i = v2 - 1; ; --i)
      {
        if (v3)
        {
          if (v3 == 1)
          {
            v14 = 0x4C676E69646E6570;
          }

          else
          {
            v14 = 0x6F4C646573756170;
          }

          if (v3 == 1)
          {
            v15 = 0xEF676E697461636FLL;
          }

          else
          {
            v15 = 0xEE00676E69746163;
          }

          v16 = v4;
          if (!v4)
          {
LABEL_24:
            v17 = 0xE400000000000000;
            if (v14 != 1701736302)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }

        else
        {
          v15 = 0xE400000000000000;
          v14 = 1701736302;
          v16 = v4;
          if (!v4)
          {
            goto LABEL_24;
          }
        }

        if (v16 == 1)
        {
          v17 = 0xEF676E697461636FLL;
          if (v14 != 0x4C676E69646E6570)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v17 = 0xEE00676E69746163;
          if (v14 != 0x6F4C646573756170)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        if (v15 == v17)
        {

          goto LABEL_30;
        }

LABEL_29:
        v18 = sub_24A4AC270();

        if ((v18 & 1) == 0)
        {
          return 0;
        }

LABEL_30:
        if (!i)
        {
          return 1;
        }

        v3 = *v12;
        v4 = *v11;
        if ((*(v12 - 2) != *(v11 - 2) || *(v12 - 1) != *(v11 - 1)) && (sub_24A4AC270() & 1) == 0)
        {
          return 0;
        }

        v11 += 24;
        v12 += 24;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_24A415A6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *v4;
      v6 = *v3;
      if (*(v4 - 2) == *(v3 - 2) && *(v4 - 1) == *(v3 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_24A4AC270();
        result = 0;
        if (v8 & 1) == 0 || ((v5 ^ v6))
        {
          return result;
        }
      }

      v3 += 24;
      v4 += 24;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t sub_24A415B2C()
{
  result = qword_27EF3F138;
  if (!qword_27EF3F138)
  {
    sub_24A3CBC9C(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A3852CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3F138);
  }

  return result;
}

unint64_t sub_24A415BB0()
{
  result = qword_27EF3FD88;
  if (!qword_27EF3FD88)
  {
    sub_24A3CBC9C(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A387110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FD88);
  }

  return result;
}

unint64_t sub_24A415C34()
{
  result = qword_27EF3FDB8;
  if (!qword_27EF3FDB8)
  {
    sub_24A3CBC9C(&qword_27EF3FDB0, &qword_24A4BA250);
    sub_24A38D420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDB8);
  }

  return result;
}

unint64_t sub_24A415CB8()
{
  result = qword_27EF3FDD0;
  if (!qword_27EF3FDD0)
  {
    sub_24A3CBC9C(&qword_27EF3FDC8, &qword_24A4B8A28);
    sub_24A38D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDD0);
  }

  return result;
}

unint64_t sub_24A415D3C()
{
  result = qword_27EF3FDE0;
  if (!qword_27EF3FDE0)
  {
    sub_24A3CBC9C(&qword_27EF3FD68, &unk_24A4B9F40);
    sub_24A38D94C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDE0);
  }

  return result;
}

unint64_t sub_24A415DC0()
{
  result = qword_27EF3FDF0;
  if (!qword_27EF3FDF0)
  {
    sub_24A3CBC9C(&qword_27EF3F130, &unk_24A4B4960);
    sub_24A38E4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FDF0);
  }

  return result;
}

unint64_t sub_24A415E44()
{
  result = qword_27EF3FE10;
  if (!qword_27EF3FE10)
  {
    sub_24A3CBC9C(&qword_27EF3FD80, &qword_24A4B8A18);
    sub_24A39ADC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE10);
  }

  return result;
}

uint64_t sub_24A415EC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24A415F30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24A415F94()
{
  result = qword_27EF3FE28;
  if (!qword_27EF3FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE28);
  }

  return result;
}

uint64_t sub_24A415FE8()
{
  v0 = sub_24A4AC290();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

void sub_24A416040(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v3 = sub_24A4ABD50();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24A4ABD10();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_24A4AB6E0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    v16 = sub_24A4AB850();
    v18 = v17;

    v2[3] = v16;
    v2[4] = v18;
    v45[0] = sub_24A37B428(0, &qword_27EF40900, 0x277D85C78);
    v46 = "Location8@NSError16";
    v47 = v2;
    sub_24A4AB6B0();
    v50 = MEMORY[0x277D84F90];
    v45[3] = sub_24A37EFD4(&qword_27EF402C0, MEMORY[0x277D85230]);
    v45[4] = v13;
    v45[2] = sub_24A3C9CEC(&qword_27EF3F2F8, &unk_24A4B4FA0);
    v45[1] = sub_24A378704(&qword_27EF402D0, &qword_27EF3F2F8, &unk_24A4B4FA0);
    sub_24A4ABE90();
    v19 = *MEMORY[0x277D85260];
    v20 = *(v4 + 104);
    v20(v7, v19, v3);
    v21 = sub_24A4ABD90();
    v22 = v47;
    v47[5] = v21;
    v46 = "onController.serial";
    sub_24A4AB6C0();
    v50 = MEMORY[0x277D84F90];
    sub_24A4ABE90();
    v20(v7, v19, v3);
    v22[6] = sub_24A4ABD90();
    v22[7] = [objc_allocWithZone(MEMORY[0x277D496C0]) init];
    type metadata accessor for FMLocationShifter();
    swift_allocObject();
    v23 = FMLocationShifter.init()();
    v24 = MEMORY[0x277D84F90];
    v22[9] = v23;
    v22[10] = v24;
    v25 = v49;
    v22[2] = v48;
    v22[8] = v25;
    v26 = qword_27EF3EBF8;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = sub_24A4AB630();
    sub_24A378E18(v27, qword_27EF4E260);

    v28 = sub_24A4AB600();
    v29 = sub_24A4ABCE0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v52 = v31;
      *v30 = 136315138;
      v50 = v22;
      v32 = sub_24A4AC3F0();
      v34 = sub_24A37E99C(9uLL, v32, v33);
      v36 = v35;
      v38 = v37;
      v40 = v39;

      v41 = MEMORY[0x24C217CD0](v34, v36, v38, v40);
      v43 = v42;

      v50 = 30768;
      v51 = 0xE200000000000000;
      MEMORY[0x24C217D50](v41, v43);

      v44 = sub_24A37BD58(v50, v51, &v52);

      *(v30 + 4) = v44;
      _os_log_impl(&dword_24A376000, v28, v29, "👀 FMFProactiveLocationController<%s>: init", v30, 0xCu);
      sub_24A37EEE0(v31);
      MEMORY[0x24C219130](v31, -1, -1);
      MEMORY[0x24C219130](v30, -1, -1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24A4165F8()
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_24A4AB630();
  sub_24A378E18(v1, qword_27EF4E260);

  v2 = sub_24A4AB600();
  v3 = sub_24A4ABCE0();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v25 = v5;
    *v4 = 136315138;
    v6 = sub_24A4AC3F0();
    v8 = sub_24A37E99C(9uLL, v6, v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = MEMORY[0x24C217CD0](v8, v10, v12, v14);
    v17 = v16;

    MEMORY[0x24C217D50](v15, v17);

    v18 = sub_24A37BD58(30768, 0xE200000000000000, &v25);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_24A376000, v2, v3, "👀 FMFProactiveLocationController<%s>: deinit", v4, 0xCu);
    sub_24A37EEE0(v5);
    MEMORY[0x24C219130](v5, -1, -1);
    MEMORY[0x24C219130](v4, -1, -1);
  }

  v19 = *(v0 + 16);

  v20 = *(v0 + 32);

  v21 = *(v0 + 64);

  v22 = *(v0 + 72);

  v23 = *(v0 + 80);

  return v0;
}

uint64_t sub_24A416830()
{
  sub_24A4165F8();

  return swift_deallocClassInstance();
}

void sub_24A416888(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24A416914(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v97 = a4;
  v98 = a5;
  v103 = a3;
  v92 = a2;
  v6 = sub_24A3C9CEC(&qword_27EF3F650, &qword_24A4B5A10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v95 = &v84 - v8;
  v9 = sub_24A3C9CEC(&qword_27EF3FE50, &unk_24A4B8C10);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = (&v84 - v11);
  v12 = type metadata accessor for FMReverseGeocodingRequest();
  v93 = *(v12 - 8);
  v94 = v12;
  v13 = *(v93 + 64);
  MEMORY[0x28223BE20](v12);
  v85 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24A3C9CEC(&qword_27EF3F8C0, &qword_24A4B9F50);
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v84 - v20;
  v87 = type metadata accessor for FMFLocation();
  v106 = *(v87 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = (&v84 - v28);
  MEMORY[0x28223BE20](v30);
  v89 = &v84 - v31;
  MEMORY[0x28223BE20](v32);
  v88 = &v84 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v84 - v35;
  v90 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v84 - v39;
  v41 = sub_24A3C9CEC(&qword_27EF3F480, &unk_24A4B8C20);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v86 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v102 = &v84 - v45;
  v46 = *(a1 + 16);
  v47 = MEMORY[0x277D84F90];
  v100 = v29;
  v101 = v36;
  v99 = v26;
  if (v46)
  {
    *&v108[0] = MEMORY[0x277D84F90];
    sub_24A3B57CC(0, v46, 0);
    v47 = *&v108[0];
    v48 = a1 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
    v104 = *(v104 + 72);
    do
    {
      sub_24A37B740(v48, v21, &qword_27EF3F8C0, &qword_24A4B9F50);
      sub_24A37BE24(v21, v18, &qword_27EF3F8C0, &qword_24A4B9F50);
      v49 = *(v105 + 48);
      sub_24A3997D4(v18, v40, type metadata accessor for FMFLocation);
      sub_24A37EF2C(&v18[v49], &qword_27EF3F480, &unk_24A4B8C20);
      *&v108[0] = v47;
      v51 = *(v47 + 16);
      v50 = *(v47 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_24A3B57CC(v50 > 1, v51 + 1, 1);
        v47 = *&v108[0];
      }

      *(v47 + 16) = v51 + 1;
      sub_24A3997D4(v40, v47 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v51, type metadata accessor for FMFLocation);
      v48 += v104;
      --v46;
    }

    while (v46);
    v29 = v100;
    v36 = v101;
    v26 = v99;
  }

  v52 = v102;
  v53 = v92;
  v54 = v106;
  v55 = v87;
  if (*(v47 + 16))
  {
    sub_24A39921C(v47 + ((*(v106 + 80) + 32) & ~*(v106 + 80)), v102, type metadata accessor for FMFLocation);
    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  (*(v54 + 56))(v52, v56, 1, v55);
  v57 = v52;
  v58 = v86;
  sub_24A37B740(v57, v86, &qword_27EF3F480, &unk_24A4B8C20);
  v59 = *(v54 + 48);
  if (v59(v58, 1, v55) == 1)
  {
    sub_24A39921C(v53, v36, type metadata accessor for FMFLocation);
    if (v59(v58, 1, v55) != 1)
    {
      sub_24A37EF2C(v58, &qword_27EF3F480, &unk_24A4B8C20);
    }
  }

  else
  {
    sub_24A3997D4(v58, v36, type metadata accessor for FMFLocation);
  }

  v105 = *(v103 + 64);
  v60 = v88;
  sub_24A39921C(v36, v88, type metadata accessor for FMFLocation);
  v61 = v89;
  sub_24A39921C(v53, v89, type metadata accessor for FMFLocation);
  sub_24A39921C(v60, v29, type metadata accessor for FMFLocation);
  sub_24A39921C(v61, v26, type metadata accessor for FMFLocation);
  v62 = *(v54 + 80);
  v63 = (v62 + 16) & ~v62;
  v64 = (v90 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = (v64 + 15) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v62 + 16 + v65) & ~v62;
  v67 = swift_allocObject();
  v68 = v60;
  v69 = v103;
  sub_24A3997D4(v68, v67 + v63, type metadata accessor for FMFLocation);
  *(v67 + v64) = v69;
  v70 = (v67 + v65);
  v71 = v101;
  v73 = v97;
  v72 = v98;
  *v70 = v97;
  v70[1] = v72;
  v74 = v61;
  v75 = v69;
  v76 = v105;
  sub_24A3997D4(v74, v67 + v66, type metadata accessor for FMFLocation);
  v77 = v91;
  sub_24A39921C(v71, v91, type metadata accessor for FMFLocation);
  v78 = v95;
  sub_24A37B740(v76 + qword_27EF4E178, v95, &qword_27EF3F650, &qword_24A4B5A10);

  v79 = v96;
  sub_24A446558(v77, v78, v96);
  if ((*(v93 + 48))(v79, 1, v94) == 1)
  {
    sub_24A37EF2C(v79, &qword_27EF3FE50, &unk_24A4B8C10);
    sub_24A3BAFB0(v108);
    memcpy(v107, v108, sizeof(v107));
    v81 = v99;
    v80 = v100;
    sub_24A417240(v107, v100, v75, v73, v72, v99);

    sub_24A39A6F8(v81, type metadata accessor for FMFLocation);
    sub_24A39A6F8(v80, type metadata accessor for FMFLocation);
  }

  else
  {
    sub_24A39A6F8(v99, type metadata accessor for FMFLocation);
    sub_24A39A6F8(v100, type metadata accessor for FMFLocation);
    v82 = v85;
    sub_24A3997D4(v79, v85, type metadata accessor for FMReverseGeocodingRequest);
    sub_24A4416C0(v82, sub_24A41EDE4, v67);

    sub_24A39A6F8(v82, type metadata accessor for FMReverseGeocodingRequest);
  }

  sub_24A39A6F8(v71, type metadata accessor for FMFLocation);
  return sub_24A37EF2C(v102, &qword_27EF3F480, &unk_24A4B8C20);
}

uint64_t sub_24A417240(const void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v49 = a6;
  v11 = type metadata accessor for FMFLocation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v44[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v44[-v16];
  MEMORY[0x28223BE20](v18);
  v50 = &v44[-v19];
  memcpy(v53, a1, 0x130uLL);
  v20 = a2[1];
  if (v20)
  {
    v48 = *a2;
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v48 = 7104878;
  }

  sub_24A39921C(a2, v17, type metadata accessor for FMFLocation);
  sub_24A39921C(a2, v14, type metadata accessor for FMFLocation);
  memcpy(v52, v53, sizeof(v52));

  sub_24A37B740(v53, v51, &unk_27EF404E0, &unk_24A4B5230);
  FMFLocation.init(from:updatedLocation:address:)(v17, v14, v52, v50);
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v22 = sub_24A4AB630();
  sub_24A378E18(v22, qword_27EF4E260);

  v23 = sub_24A4AB600();
  v24 = sub_24A4ABCE0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51[0] = v46;
    *v25 = 136315394;
    v52[0] = a3;
    v45 = v24;
    v26 = sub_24A4AC3F0();
    v28 = sub_24A37E99C(9uLL, v26, v27);
    v47 = a5;
    v30 = v29;
    v32 = v31;
    v33 = a4;
    v35 = v34;

    v36 = MEMORY[0x24C217CD0](v28, v30, v32, v35);
    v38 = v37;
    a4 = v33;

    v52[0] = 30768;
    v52[1] = 0xE200000000000000;
    MEMORY[0x24C217D50](v36, v38);

    v39 = sub_24A37BD58(v52[0], v52[1], v51);

    *(v25 + 4) = v39;
    *(v25 + 12) = 2080;
    v40 = sub_24A37BD58(v48, v21, v51);

    *(v25 + 14) = v40;
    _os_log_impl(&dword_24A376000, v23, v45, "👀 FMFProactiveLocationController<%s>: did reverse geocode proactive location for %s", v25, 0x16u);
    v41 = v46;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v41, -1, -1);
    MEMORY[0x24C219130](v25, -1, -1);
  }

  else
  {
  }

  v42 = v50;
  a4(v49, v50);
  return sub_24A39A6F8(v42, type metadata accessor for FMFLocation);
}

uint64_t sub_24A417628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v125 = a3;
  v124 = a2;
  v6 = sub_24A4AB690();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v127 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_24A4AB6E0();
  v128 = *(v129 - 8);
  v10 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  v12 = *(v3 + 40);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = &v156;
  v13[5] = &v155;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24A418E98;
  *(v14 + 24) = v13;
  v153 = sub_24A37CE34;
  v154 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v150 = 1107296256;
  v151 = sub_24A37CDDC;
  v152 = &unk_285D87910;
  v15 = _Block_copy(&aBlock);
  v146 = v4;

  v130 = a1;

  v139 = v12;
  dispatch_sync(v12, v15);
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    goto LABEL_28;
  }

  v16 = *(v155 + 16);
  v123 = v13;
  v122 = v7;
  if (v16 || *(v156 + 16))
  {
    if (qword_27EF3EBF8 != -1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v17 = sub_24A4AB630();
      v18 = sub_24A378E18(v17, qword_27EF4E260);

      v19 = sub_24A4AB600();
      v20 = sub_24A4ABCE0();

      v21 = os_log_type_enabled(v19, v20);
      v136 = v18;
      v121 = v6;
      if (v21)
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v148 = v23;
        *v22 = 136315650;
        aBlock = v146;
        v24 = sub_24A4AC3F0();
        v26 = sub_24A37E99C(9uLL, v24, v25);
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v33 = MEMORY[0x24C217CD0](v26, v28, v30, v32);
        v35 = v34;

        aBlock = 30768;
        v150 = 0xE200000000000000;
        MEMORY[0x24C217D50](v33, v35);

        v36 = sub_24A37BD58(aBlock, v150, &v148);

        *(v22 + 4) = v36;
        *(v22 + 12) = 2048;
        swift_beginAccess();
        *(v22 + 14) = *(v155 + 16);
        *(v22 + 22) = 2048;
        swift_beginAccess();
        *(v22 + 24) = *(v156 + 16);
        _os_log_impl(&dword_24A376000, v19, v20, "👀 FMFProactiveLocationController<%s>: updated subscriptions: %ld added, %ld removed", v22, 0x20u);
        sub_24A37EEE0(v23);
        MEMORY[0x24C219130](v23, -1, -1);
        MEMORY[0x24C219130](v22, -1, -1);
      }

      swift_beginAccess();
      v37 = v156;
      v6 = *(v156 + 16);

      if (v6)
      {
        v38 = 0;
        v39 = (v37 + 40);
        while (v38 < *(v37 + 16))
        {
          ++v38;
          v40 = *v39;
          aBlock = *(v39 - 1);
          v150 = v40;

          sub_24A419304(&aBlock, v146);

          v39 += 2;
          if (v6 == v38)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_11:

        v41 = swift_allocObject();
        v42 = MEMORY[0x277D84F90];
        v138 = v41;
        *(v41 + 16) = MEMORY[0x277D84F90];
        v140 = swift_allocObject();
        *(v140 + 16) = v42;
        v137 = swift_allocObject();
        *(v137 + 16) = v42;
        v145 = dispatch_group_create();
        v144 = dispatch_group_create();
        swift_beginAccess();
        v135 = *(v155 + 16);
        if (!v135)
        {
LABEL_18:
          v79 = swift_allocObject();
          v80 = v146;
          v79[2] = v138;
          v79[3] = v80;
          v81 = v137;
          v79[4] = v140;
          v79[5] = v81;
          v82 = v144;
          v83 = v124;
          v79[6] = v144;
          v79[7] = v83;
          v84 = v130;
          v79[8] = v125;
          v79[9] = v84;
          v153 = sub_24A41ED60;
          v154 = v79;
          aBlock = MEMORY[0x277D85DD0];
          v150 = 1107296256;
          v151 = sub_24A388564;
          v152 = &unk_285D87A28;
          v85 = _Block_copy(&aBlock);

          v86 = v82;

          sub_24A3C8498(v83);
          v87 = v126;
          sub_24A4AB6B0();
          v147 = MEMORY[0x277D84F90];
          sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
          sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
          sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
          v88 = v127;
          v89 = v121;
          sub_24A4ABE90();
          v90 = v145;
          sub_24A4ABD00();
          _Block_release(v85);

          (*(v122 + 8))(v88, v89);
          (*(v128 + 8))(v87, v129);

          goto LABEL_19;
        }

        v133 = &v151;

        v44 = 0;
        v45 = (v43 + 40);
        *&v46 = 136315394;
        v131 = v46;
        v134 = v43;
        while (v44 < *(v43 + 16))
        {
          v59 = *(v45 - 1);
          v60 = *v45;
          v143 = v45;

          dispatch_group_enter(v145);
          dispatch_group_enter(v144);

          v61 = sub_24A4AB600();
          v62 = sub_24A4ABCE0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v141 = swift_slowAlloc();
            v147 = v141;
            *v63 = v131;
            aBlock = v146;
            v132 = v62;
            v64 = sub_24A4AC3F0();
            v66 = sub_24A37E99C(9uLL, v64, v65);
            v142 = v59;
            v67 = v66;
            v69 = v68;
            v71 = v70;
            v73 = v72;

            v74 = MEMORY[0x24C217CD0](v67, v69, v71, v73);
            v76 = v75;

            aBlock = 30768;
            v150 = 0xE200000000000000;
            MEMORY[0x24C217D50](v74, v76);

            v77 = sub_24A37BD58(aBlock, v150, &v147);

            *(v63 + 4) = v77;
            v59 = v142;
            *(v63 + 12) = 2080;
            *(v63 + 14) = sub_24A37BD58(v59, v60, &v147);
            _os_log_impl(&dword_24A376000, v61, v132, "👀 FMFProactiveLocationController<%s>: cache-fetching for %s…", v63, 0x16u);
            v78 = v141;
            swift_arrayDestroy();
            MEMORY[0x24C219130](v78, -1, -1);
            MEMORY[0x24C219130](v63, -1, -1);
          }

          v47 = v44 + 1;
          v142 = v146[7];
          v141 = sub_24A4AB820();
          v48 = swift_allocObject();
          swift_weakInit();
          v49 = swift_allocObject();
          v49[2] = v48;
          v49[3] = v59;
          v50 = v139;
          v49[4] = v60;
          v49[5] = v50;
          v51 = v137;
          v49[6] = v140;
          v49[7] = v51;
          v52 = v145;
          v53 = v144;
          v49[8] = v145;
          v49[9] = v53;
          v49[10] = v138;
          v153 = sub_24A41D710;
          v154 = v49;
          aBlock = MEMORY[0x277D85DD0];
          v150 = 1107296256;
          v151 = sub_24A416888;
          v152 = &unk_285D879D8;
          v54 = _Block_copy(&aBlock);
          v6 = v154;

          v55 = v50;

          v56 = v52;
          v57 = v53;
          v44 = v47;

          v58 = v141;
          [v142 latestLocationFromCacheForId:v141 completion:v54];
          _Block_release(v54);

          v45 = v143 + 2;
          v43 = v134;
          if (v135 == v44)
          {

            goto LABEL_18;
          }
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      swift_once();
    }
  }

  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v92 = v6;
  v93 = sub_24A4AB630();
  sub_24A378E18(v93, qword_27EF4E260);
  v94 = v130;
  swift_bridgeObjectRetain_n();

  v95 = sub_24A4AB600();
  v96 = sub_24A4ABCE0();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v148 = v98;
    *v97 = 136315394;
    aBlock = v146;
    v99 = sub_24A4AC3F0();
    v101 = sub_24A37E99C(9uLL, v99, v100);
    v103 = v102;
    v105 = v104;
    v107 = v106;

    v108 = MEMORY[0x24C217CD0](v101, v103, v105, v107);
    v110 = v109;

    aBlock = 30768;
    v150 = 0xE200000000000000;
    MEMORY[0x24C217D50](v108, v110);

    v111 = sub_24A37BD58(aBlock, v150, &v148);

    *(v97 + 4) = v111;
    *(v97 + 12) = 2048;
    v112 = *(v130 + 16);

    *(v97 + 14) = v112;

    _os_log_impl(&dword_24A376000, v95, v96, "👀 FMFProactiveLocationController<%s>: no subscriptions to update for %ld friends", v97, 0x16u);
    sub_24A37EEE0(v98);
    v94 = v130;
    MEMORY[0x24C219130](v98, -1, -1);
    MEMORY[0x24C219130](v97, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v113 = v146;
  v114 = v146[6];
  v115 = swift_allocObject();
  v116 = v124;
  v117 = v125;
  v115[2] = v124;
  v115[3] = v117;
  v115[4] = v113;
  v115[5] = v94;
  v153 = sub_24A41ED74;
  v154 = v115;
  aBlock = MEMORY[0x277D85DD0];
  v150 = 1107296256;
  v151 = sub_24A388564;
  v152 = &unk_285D87A78;
  v118 = _Block_copy(&aBlock);

  sub_24A3C8498(v116);
  v119 = v126;
  sub_24A4AB6B0();
  v148 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v120 = v127;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v119, v120, v118);
  _Block_release(v118);
  (*(v122 + 8))(v120, v92);
  (*(v128 + 8))(v119, v129);
LABEL_19:
}

uint64_t sub_24A4186D0(uint64_t a1, uint64_t a2, char **a3, char **a4)
{
  v77 = a3;
  v76 = sub_24A3C9CEC(&qword_27EF3FE58, &qword_24A4B8C30);
  v7 = *(*(v76 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v76);
  v75 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v63 - v10;
  v65 = sub_24A3C9CEC(&qword_27EF3FE60, &qword_24A4B8C38);
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v13 = &v63 - v12;
  v14 = sub_24A3C9CEC(&qword_27EF3FE68, &qword_24A4B8C40);
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v67 = &v63 - v16;
  v17 = type metadata accessor for FMFFriend();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v73 = (&v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v20);
  v72 = (&v63 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v71 = (&v63 - v25);
  MEMORY[0x28223BE20](v24);
  v27 = &v63 - v26;
  v66 = a1;
  v28 = *(a2 + 16);
  v64 = *(a1 + 80);

  if (v28)
  {
    v29 = *(v18 + 72);
    v69 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v30 = a2 + v69;
    v31 = MEMORY[0x277D84F90];
    v70 = a4;
    do
    {
      sub_24A39921C(v30, v27, type metadata accessor for FMFFriend);
      v32 = v27[*(v17 + 44)];
      if (v32 == 2 || (v32 & 1) == 0)
      {
        sub_24A39A6F8(v27, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A3997D4(v27, v71, type metadata accessor for FMFFriend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v78[0] = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24A39E574(0, v31[2] + 1, 1);
          v31 = v78[0];
        }

        v35 = v31[2];
        v34 = v31[3];
        if (v35 >= v34 >> 1)
        {
          sub_24A39E574(v34 > 1, v35 + 1, 1);
          v31 = v78[0];
        }

        v31[2] = v35 + 1;
        sub_24A3997D4(v71, v31 + v69 + v35 * v29, type metadata accessor for FMFFriend);
        a4 = v70;
      }

      v30 += v29;
      --v28;
    }

    while (v28);
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  v78[0] = v31;

  sub_24A41D74C(v78);

  v71 = v78[0];
  v78[4] = v64;
  sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
  sub_24A378704(&qword_27EF3FE70, &qword_27EF3FE40, &unk_24A4BA230);
  v36 = v67;
  sub_24A4AB7F0();

  (*(v68 + 16))(v13, v36, v14);
  v37 = *(v65 + 36);
  sub_24A378704(&qword_27EF3FE78, &qword_27EF3FE68, &qword_24A4B8C40);
  sub_24A4ABC50();
  while (1)
  {
    sub_24A4ABC60();
    if (*&v13[v37] == v78[0])
    {
      break;
    }

    v42 = sub_24A4ABC80();
    v43 = v74;
    sub_24A37B740(v44, v74, &qword_27EF3FE58, &qword_24A4B8C30);
    v42(v78, 0);
    sub_24A4ABC70();
    v45 = v75;
    sub_24A37BE24(v43, v75, &qword_27EF3FE58, &qword_24A4B8C30);
    LODWORD(v42) = swift_getEnumCaseMultiPayload();
    v46 = *(sub_24A3C9CEC(&qword_27EF3FE80, &qword_24A4B8C48) + 48);
    if (v42 == 1)
    {
      v47 = v72;
      sub_24A3997D4(v45 + v46, v72, type metadata accessor for FMFFriend);
      v49 = *v47;
      v48 = v47[1];
      v50 = v77;
      v51 = *v77;

      v52 = swift_isUniquelyReferenced_nonNull_native();
      *v50 = v51;
      if ((v52 & 1) == 0)
      {
        v51 = sub_24A3ED900(0, *(v51 + 2) + 1, 1, v51);
        *v77 = v51;
      }

      v54 = *(v51 + 2);
      v53 = *(v51 + 3);
      v55 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v60 = sub_24A3ED900((v53 > 1), v54 + 1, 1, v51);
        v39 = v77;
        *v77 = v60;
        v38 = v72;
      }

      else
      {
        v38 = v72;
        v39 = v77;
      }
    }

    else
    {
      v56 = v73;
      sub_24A3997D4(v45 + v46, v73, type metadata accessor for FMFFriend);
      v49 = *v56;
      v48 = v56[1];
      v57 = *a4;

      v58 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v57;
      if ((v58 & 1) == 0)
      {
        v57 = sub_24A3ED900(0, *(v57 + 2) + 1, 1, v57);
        *a4 = v57;
      }

      v54 = *(v57 + 2);
      v59 = *(v57 + 3);
      v55 = v54 + 1;
      if (v54 >= v59 >> 1)
      {
        *a4 = sub_24A3ED900((v59 > 1), v54 + 1, 1, v57);
      }

      v38 = v73;
      v39 = a4;
    }

    sub_24A39A6F8(v38, type metadata accessor for FMFFriend);
    v40 = *v39;
    *(v40 + 2) = v55;
    v41 = &v40[16 * v54];
    *(v41 + 4) = v49;
    *(v41 + 5) = v48;
  }

  sub_24A37EF2C(v13, &qword_27EF3FE60, &qword_24A4B8C38);
  (*(v68 + 8))(v67, v14);
  v61 = *(v66 + 80);
  *(v66 + 80) = v71;
}

uint64_t sub_24A418EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *(type metadata accessor for FMFFriend() - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v41 - v12);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  if (a1)
  {
    v17 = *(*(a3 + 16) + 56);
    v42 = result;
    v43 = a2;
    sub_24A3C8498(result);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    v18 = 0;
    sub_24A4ABD70();

    result = v53[0];
    v46 = *(v53[0] + 16);
    if (v46)
    {
      v19 = 0;
      v49 = MEMORY[0x277D84F90];
      v44 = v53[0];
      v45 = a4;
      while (v19 < *(result + 16))
      {
        v51 = v19;
        v52 = v18;
        v20 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v21 = *(v48 + 72);
        v22 = v16;
        isUniquelyReferenced_nonNull_native = sub_24A39921C(result + v20 + v21 * v19, v16, type metadata accessor for FMFFriend);
        v24 = *(a4 + 16);
        v50 = v20;
        if (v24)
        {
          v25 = a4 + v20;
          v26 = MEMORY[0x277D84F90];
          do
          {
            sub_24A39921C(v25, v13, type metadata accessor for FMFFriend);
            v27 = *v13;
            v28 = v13[1];

            sub_24A39A6F8(v13, type metadata accessor for FMFFriend);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_24A3ED900(0, *(v26 + 16) + 1, 1, v26);
              v26 = isUniquelyReferenced_nonNull_native;
            }

            v30 = *(v26 + 16);
            v29 = *(v26 + 24);
            if (v30 >= v29 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_24A3ED900((v29 > 1), v30 + 1, 1, v26);
              v26 = isUniquelyReferenced_nonNull_native;
            }

            *(v26 + 16) = v30 + 1;
            v31 = v26 + 16 * v30;
            *(v31 + 32) = v27;
            *(v31 + 40) = v28;
            v25 += v21;
            --v24;
          }

          while (v24);
        }

        else
        {
          v26 = MEMORY[0x277D84F90];
        }

        v16 = v22;
        v32 = *(v22 + 1);
        v53[0] = *v22;
        v53[1] = v32;
        MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
        *(&v41 - 2) = v53;
        v18 = v52;
        v33 = sub_24A45363C(sub_24A41ED80, (&v41 - 4), v26);

        if (v33)
        {
          sub_24A3997D4(v16, v47, type metadata accessor for FMFFriend);
          v34 = v49;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          v36 = v34;
          v54 = v34;
          if ((v35 & 1) == 0)
          {
            sub_24A39E574(0, *(v34 + 16) + 1, 1);
            v36 = v54;
          }

          v37 = v50;
          v39 = *(v36 + 16);
          v38 = *(v36 + 24);
          a4 = v45;
          if (v39 >= v38 >> 1)
          {
            sub_24A39E574(v38 > 1, v39 + 1, 1);
            v36 = v54;
          }

          *(v36 + 16) = v39 + 1;
          v49 = v36;
          sub_24A3997D4(v47, v36 + v37 + v39 * v21, type metadata accessor for FMFFriend);
        }

        else
        {
          sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
          a4 = v45;
        }

        result = v44;
        v19 = v51 + 1;
        if (v51 + 1 == v46)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    else
    {
      v49 = MEMORY[0x277D84F90];
LABEL_23:

      v40 = v42;
      v42(v49);

      return sub_24A3C84A8(v40);
    }
  }

  return result;
}

void sub_24A419304(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = qword_27EF3EBF8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = sub_24A4AB630();
  sub_24A378E18(v6, qword_27EF4E260);

  v7 = sub_24A4AB600();
  v8 = sub_24A4ABCE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v9 = 136315394;
    v34 = v8;
    v10 = sub_24A4AC3F0();
    log = v7;
    v12 = sub_24A37E99C(9uLL, v10, v11);
    v14 = v13;
    v15 = v4;
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v4 = v15;
    v21 = MEMORY[0x24C217CD0](v12, v14, v20, v19);
    v23 = v22;

    aBlock = 30768;
    v37 = 0xE200000000000000;
    MEMORY[0x24C217D50](v21, v23);

    v24 = sub_24A37BD58(30768, 0xE200000000000000, &v42);

    *(v9 + 4) = v24;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_24A37BD58(v15, v3, &v42);
    _os_log_impl(&dword_24A376000, log, v34, "👀 FMFProactiveLocationController<%s>: will unsubscribe for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v35, -1, -1);
    MEMORY[0x24C219130](v9, -1, -1);
  }

  else
  {
  }

  v25 = a2[7];
  v26 = sub_24A4AB820();
  v27 = a2[3];
  v28 = a2[4];
  v29 = sub_24A4AB820();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v31[2] = v30;
  v31[3] = v4;
  v31[4] = v3;
  v40 = sub_24A41F320;
  v41 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v37 = 1107296256;
  v38 = sub_24A3D65E0;
  v39 = &unk_285D87D70;
  v32 = _Block_copy(&aBlock);

  [v25 unsubscribeForId:v26 clientApp:v29 completion:v32];
  _Block_release(v32);
}

void sub_24A41966C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v7 = sub_24A4AB630();
    sub_24A378E18(v7, qword_27EF4E260);

    v8 = a1;
    v9 = sub_24A4AB600();
    v10 = sub_24A4ABCE0();

    if (os_log_type_enabled(v9, v10))
    {
      v31 = v10;
      v11 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v11 = 136315650;
      v12 = sub_24A4AC3F0();
      v14 = sub_24A37E99C(9uLL, v12, v13);
      v29 = a3;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v21 = MEMORY[0x24C217CD0](v14, v16, v18, v20);
      v23 = v22;

      MEMORY[0x24C217D50](v21, v23);

      v24 = sub_24A37BD58(30768, 0xE200000000000000, &v32);

      *(v11 + 4) = v24;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_24A37BD58(v29, a4, &v32);
      *(v11 + 22) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v25 = sub_24A4AC310();
        v27 = v26;
      }

      else
      {
        v25 = 0;
        v27 = 0xE000000000000000;
      }

      v28 = sub_24A37BD58(v25, v27, &v32);

      *(v11 + 24) = v28;
      _os_log_impl(&dword_24A376000, v9, v31, "👀 FMFProactiveLocationController<%s>: did unsubscribe for %s (error=%s)", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v30, -1, -1);
      MEMORY[0x24C219130](v11, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24A419954(void *a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v87 = a7;
  v88 = a8;
  v94 = a4;
  v15 = sub_24A4AB690();
  v93 = *(v15 - 8);
  v16 = v93[8];
  MEMORY[0x28223BE20](v15);
  v18 = &v82[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_24A4AB6E0();
  v19 = *(v92 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v92);
  v22 = &v82[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for FMFLocation();
  v86 = *(v23 - 8);
  v24 = *(v86 + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v89 = &v82[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25);
  v90 = &v82[-v26];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    v91 = a6;
    v29 = a9;
    if (!a1 || a2)
    {
      goto LABEL_4;
    }

    v85 = a9;
    v84 = a1;
    v35 = [v84 findMyId];
    v36 = sub_24A4AB850();
    v38 = v37;

    if (v36 == v94 && v38 == a5)
    {
    }

    else
    {
      v39 = sub_24A4AC270();

      if ((v39 & 1) == 0)
      {

        v29 = v85;
LABEL_4:
        v30 = swift_allocObject();
        v31 = v94;
        v30[2] = v28;
        v30[3] = v31;
        v30[4] = a5;
        v30[5] = a11;
        v30[6] = v29;
        v100 = sub_24A41EF48;
        v101 = v30;
        aBlock = MEMORY[0x277D85DD0];
        v97 = 1107296256;
        v98 = sub_24A388564;
        v99 = &unk_285D87C80;
        v32 = v29;
        v33 = _Block_copy(&aBlock);

        v34 = v32;

        sub_24A4AB6B0();
        v95 = MEMORY[0x277D84F90];
        sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
        sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
        sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
        sub_24A4ABE90();
        MEMORY[0x24C218190](0, v22, v18, v33);
        _Block_release(v33);

        (v93[1])(v18, v15);
        (*(v19 + 8))(v22, v92);
      }
    }

    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v40 = a10;
    v41 = sub_24A4AB630();
    sub_24A378E18(v41, qword_27EF4E260);

    v42 = sub_24A4AB600();
    v43 = sub_24A4ABCE0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v93 = a10;
      v45 = v44;
      v92 = swift_slowAlloc();
      v95 = v92;
      aBlock = v28;
      *v45 = 136315394;
      v83 = v43;
      v46 = sub_24A4AC3F0();
      v48 = sub_24A37E99C(9uLL, v46, v47);
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v55 = MEMORY[0x24C217CD0](v48, v50, v52, v54);
      v57 = v56;

      aBlock = 30768;
      v97 = 0xE200000000000000;
      MEMORY[0x24C217D50](v55, v57);

      v58 = sub_24A37BD58(aBlock, v97, &v95);

      *(v45 + 4) = v58;
      *(v45 + 12) = 2080;
      v59 = v94;
      *(v45 + 14) = sub_24A37BD58(v94, a5, &v95);
      _os_log_impl(&dword_24A376000, v42, v83, "👀 FMFProactiveLocationController<%s>: did cache-fetch for %s", v45, 0x16u);
      v60 = v92;
      swift_arrayDestroy();
      MEMORY[0x24C219130](v60, -1, -1);
      v61 = v45;
      v40 = v93;
      MEMORY[0x24C219130](v61, -1, -1);

      v62 = v91;
    }

    else
    {

      v62 = v91;
      v59 = v94;
    }

    v63 = swift_allocObject();
    *(v63 + 2) = v62;
    *(v63 + 3) = v28;
    *(v63 + 4) = v59;
    *(v63 + 5) = a5;
    v64 = v88;
    *(v63 + 6) = v87;
    *(v63 + 7) = v64;
    v65 = v84;
    v66 = v85;
    *(v63 + 8) = v85;
    *(v63 + 9) = v40;
    v67 = v65;
    v94 = v67;

    v68 = v62;

    v69 = v66;
    v70 = v40;
    v71 = v90;
    sub_24A3EC26C(v67, v90);
    v72 = *(v28 + 72);
    sub_24A3C9CEC(&qword_27EF3F4F0, &unk_24A4B8C00);
    v73 = *(v86 + 72);
    v74 = *(v86 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_24A4B4E10;
    sub_24A39921C(v71, v75 + ((v74 + 32) & ~v74), type metadata accessor for FMFLocation);
    v76 = v71;
    v77 = v89;
    sub_24A39921C(v76, v89, type metadata accessor for FMFLocation);
    v78 = (v74 + 16) & ~v74;
    v79 = (v24 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    sub_24A3997D4(v77, v80 + v78, type metadata accessor for FMFLocation);
    *(v80 + v79) = v28;
    v81 = (v80 + ((v79 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v81 = sub_24A41EF58;
    v81[1] = v63;

    sub_24A3BCD18(v75, sub_24A41F398, v80);

    sub_24A39A6F8(v90, type metadata accessor for FMFLocation);
  }

  return result;
}

uint64_t sub_24A41A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v44 = a5;
  v45 = a7;
  v43[0] = a4;
  v43[1] = a6;
  v55 = a3;
  v47 = a8;
  v48 = a10;
  v46 = a9;
  v52 = sub_24A4AB690();
  v54 = *(v52 - 8);
  v14 = *(v54 + 64);
  MEMORY[0x28223BE20](v52);
  v50 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24A4AB6E0();
  v51 = *(v53 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v49 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMFLocation();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8);
  v22 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v43 - v23;
  sub_24A39921C(a1, v43 - v23, type metadata accessor for FMFLocation);
  sub_24A39921C(a2, v22, type metadata accessor for FMFLocation);
  v25 = *(v19 + 80);
  v26 = (v25 + 48) & ~v25;
  v27 = v20 + 7;
  v28 = (v20 + 7 + v26) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v25 + v28 + 8) & ~v25;
  v30 = (v27 + v29) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = a4;
  v32[3] = v33;
  v32[4] = a6;
  v32[5] = v45;
  sub_24A3997D4(v24, v32 + v26, type metadata accessor for FMFLocation);
  *(v32 + v28) = v47;
  sub_24A3997D4(v22, v32 + v29, type metadata accessor for FMFLocation);
  v34 = v46;
  *(v32 + v30) = v46;
  v35 = v48;
  *(v32 + v31) = v48;
  aBlock[4] = sub_24A41F264;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24A388564;
  aBlock[3] = &unk_285D87D20;
  v36 = _Block_copy(aBlock);

  v37 = v34;
  v38 = v35;
  v39 = v49;
  sub_24A4AB6B0();
  v56 = MEMORY[0x277D84F90];
  sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
  sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
  sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
  v40 = v50;
  v41 = v52;
  sub_24A4ABE90();
  MEMORY[0x24C218190](0, v39, v40, v36);
  _Block_release(v36);
  (*(v54 + 8))(v40, v41);
  (*(v51 + 8))(v39, v53);
}

void sub_24A41A628(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, NSObject *a8, NSObject *a9)
{
  v62 = a4;
  v63 = a7;
  v15 = type metadata accessor for FMFLocation();
  v61 = *(v15 - 8);
  v16 = *(v61 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v64 = &v55 - v20;
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v21 = sub_24A4AB630();
  sub_24A378E18(v21, qword_27EF4E260);

  v22 = sub_24A4AB600();
  v23 = sub_24A4ABCE0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v59 = v19;
    v25 = v24;
    v26 = swift_slowAlloc();
    v60 = a8;
    v57 = v26;
    v65 = v26;
    v66 = a1;
    *v25 = 136315394;
    v27 = sub_24A4AC3F0();
    v29 = sub_24A37E99C(9uLL, v27, v28);
    v58 = a5;
    v31 = v30;
    v32 = a6;
    v34 = v33;
    v56 = a2;
    v36 = v35;

    v37 = v34;
    a6 = v32;
    v38 = MEMORY[0x24C217CD0](v29, v31, v37, v36);
    v40 = v39;

    v66 = 30768;
    v67 = 0xE200000000000000;
    MEMORY[0x24C217D50](v38, v40);

    v41 = sub_24A37BD58(v66, v67, &v65);

    *(v25 + 4) = v41;
    a5 = v58;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_24A37BD58(v56, a3, &v65);
    _os_log_impl(&dword_24A376000, v22, v23, "👀 FMFProactiveLocationController<%s>: did reverse-geo for %s", v25, 0x16u);
    v42 = v57;
    swift_arrayDestroy();
    a8 = v60;
    MEMORY[0x24C219130](v42, -1, -1);
    v43 = v25;
    v19 = v59;
    MEMORY[0x24C219130](v43, -1, -1);
  }

  sub_24A39921C(a5, v64, type metadata accessor for FMFLocation);
  v44 = v62;
  swift_beginAccess();
  v45 = *(v44 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v44 + 16) = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_24A3B5C2C(0, v45[2] + 1, 1, v45);
    *(v44 + 16) = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_24A3B5C2C(v47 > 1, v48 + 1, 1, v45);
  }

  v45[2] = v48 + 1;
  v49 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v50 = *(v61 + 72);
  sub_24A3997D4(v64, v45 + v49 + v50 * v48, type metadata accessor for FMFLocation);
  *(v44 + 16) = v45;
  swift_endAccess();
  sub_24A39921C(v63, v19, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v51 = *(a6 + 16);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  *(a6 + 16) = v51;
  if ((v52 & 1) == 0)
  {
    v51 = sub_24A3B5C2C(0, v51[2] + 1, 1, v51);
    *(a6 + 16) = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_24A3B5C2C(v53 > 1, v54 + 1, 1, v51);
  }

  v51[2] = v54 + 1;
  sub_24A3997D4(v19, v51 + v49 + v54 * v50, type metadata accessor for FMFLocation);
  *(a6 + 16) = v51;
  swift_endAccess();
  dispatch_group_leave(a8);
  dispatch_group_leave(a9);
}

void sub_24A41AAF4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5)
{
  if (qword_27EF3EBF8 != -1)
  {
    swift_once();
  }

  v9 = sub_24A4AB630();
  sub_24A378E18(v9, qword_27EF4E260);

  v10 = sub_24A4AB600();
  v11 = sub_24A4ABCE0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36[0] = v34;
    *v12 = 136315394;
    v13 = sub_24A4AC3F0();
    v15 = sub_24A37E99C(9uLL, v13, v14);
    v33 = v11;
    v17 = v16;
    v35 = a2;
    v18 = a4;
    v19 = a5;
    v21 = v20;
    v23 = v22;

    v24 = MEMORY[0x24C217CD0](v15, v17, v21, v23);
    v26 = v25;

    v36[1] = 30768;
    v36[2] = 0xE200000000000000;
    MEMORY[0x24C217D50](v24, v26);
    a5 = v19;
    a4 = v18;
    a2 = v35;

    v27 = sub_24A37BD58(30768, 0xE200000000000000, v36);

    *(v12 + 4) = v27;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_24A37BD58(v35, a3, v36);
    _os_log_impl(&dword_24A376000, v10, v33, "👀 FMFProactiveLocationController<%s>: failed cache-fetch for %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C219130](v34, -1, -1);
    MEMORY[0x24C219130](v12, -1, -1);
  }

  swift_beginAccess();
  v28 = *(a4 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_24A3ED900(0, *(v28 + 2) + 1, 1, v28);
    *(a4 + 16) = v28;
  }

  v31 = *(v28 + 2);
  v30 = *(v28 + 3);
  if (v31 >= v30 >> 1)
  {
    v28 = sub_24A3ED900((v30 > 1), v31 + 1, 1, v28);
  }

  *(v28 + 2) = v31 + 1;
  v32 = &v28[16 * v31];
  *(v32 + 4) = a2;
  *(v32 + 5) = a3;
  *(a4 + 16) = v28;
  swift_endAccess();
  dispatch_group_leave(a5);
}

void sub_24A41ADF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v76 = a5;
  v75 = a3;
  v84 = a2;
  v74 = sub_24A4AB690();
  v73 = *(v74 - 8);
  v13 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24A4AB6E0();
  v70 = *(v72 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v68 = a1;
  v82 = *(a1 + 16);
  v17 = &unk_24A4B4000;
  v81 = *(v82 + 16);
  if (v81)
  {
    v64 = a4;
    v65 = a6;
    v66 = a7;
    v67 = a8;
    v18 = 0;
    v19 = ( + 40);
    *&v20 = 136315394;
    v77 = v20;
    while (v18 < *(v82 + 16))
    {
      v21 = *v19;
      v83 = *(v19 - 1);
      v22 = qword_27EF3EBF8;

      if (v22 != -1)
      {
        swift_once();
      }

      v23 = sub_24A4AB630();
      sub_24A378E18(v23, qword_27EF4E260);

      v24 = sub_24A4AB600();
      v25 = sub_24A4ABCE0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v92[0] = v80;
        *v26 = v77;
        aBlock = v84;
        v79 = v25;
        v27 = sub_24A4AC3F0();
        v29 = sub_24A37E99C(9uLL, v27, v28);
        v30 = v21;
        v78 = v24;
        v31 = v29;
        v33 = v32;
        v35 = v34;
        v37 = v36;

        v38 = MEMORY[0x24C217CD0](v31, v33, v35, v37);
        v40 = v39;
        v17 = &unk_24A4B4000;

        aBlock = 30768;
        v87 = 0xE200000000000000;
        MEMORY[0x24C217D50](v38, v40);

        v41 = sub_24A37BD58(aBlock, v87, v92);

        *(v26 + 4) = v41;
        *(v26 + 12) = 2080;
        *(v26 + 14) = sub_24A37BD58(v83, v30, v92);
        v42 = v78;
        _os_log_impl(&dword_24A376000, v78, v79, "👀 FMFProactiveLocationController<%s>: subscribing for %s…", v26, 0x16u);
        v43 = v80;
        swift_arrayDestroy();
        MEMORY[0x24C219130](v43, -1, -1);
        MEMORY[0x24C219130](v26, -1, -1);
      }

      else
      {
      }

      ++v18;
      v19 += 2;
      if (v81 == v18)
      {

        v44 = v84;
        v83 = *(v84 + 56);
        v45 = v68;
        swift_beginAccess();
        v46 = *(v45 + 16);

        v47 = sub_24A4ABA50();

        v48 = *(v44 + 24);
        v49 = *(v44 + 32);
        v50 = sub_24A4AB820();
        v51 = swift_allocObject();
        swift_weakInit();
        v52 = swift_allocObject();
        v52[2] = v51;
        v52[3] = v45;
        a4 = v64;
        v52[4] = v75;
        v52[5] = a4;
        v53 = v76;
        v52[6] = v76;
        v90 = sub_24A41EDA0;
        v91 = v52;
        aBlock = MEMORY[0x277D85DD0];
        v87 = v17[156];
        v88 = sub_24A41CE7C;
        v89 = &unk_285D87AC8;
        v54 = _Block_copy(&aBlock);

        v55 = v53;

        [v83 subscribeAndFetchLocationForIds:v47 clientApp:v50 completion:v54];
        _Block_release(v54);

        a8 = v67;
        a7 = v66;
        a6 = v65;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v56 = v84;
    v57 = *(v84 + 48);
    v58 = swift_allocObject();
    v58[2] = v56;
    v58[3] = a4;
    v58[4] = v75;
    v58[5] = a6;
    v58[6] = a7;
    v58[7] = a8;
    v90 = sub_24A41EDB0;
    v91 = v58;
    aBlock = MEMORY[0x277D85DD0];
    v87 = v17[156];
    v88 = sub_24A388564;
    v89 = &unk_285D87B18;
    v59 = _Block_copy(&aBlock);

    sub_24A3C8498(a6);

    v60 = v69;
    sub_24A4AB6B0();
    v85 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v61 = v71;
    v62 = v74;
    sub_24A4ABE90();
    sub_24A4ABD00();
    _Block_release(v59);
    (*(v73 + 8))(v61, v62);
    (*(v70 + 8))(v60, v72);
  }
}

uint64_t sub_24A41B5D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31 = a7;
  v12 = sub_24A4AB690();
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24A4AB6E0();
  v33 = *(v16 - 8);
  v17 = *(v33 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = *(result + 40);
    v21 = result;
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = v21;
    v22[4] = a4;
    v22[5] = a1;
    v22[6] = a5;
    v22[7] = a6;
    v28 = a5;
    v23 = v31;
    v22[8] = v31;
    aBlock[4] = sub_24A41EDC0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D87B68;
    v24 = _Block_copy(aBlock);
    v29 = v16;
    v25 = v24;
    v26 = a2;

    v27 = v23;
    sub_24A4AB6B0();
    v34 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v19, v15, v25);
    _Block_release(v25);
    (*(v32 + 8))(v15, v12);
    (*(v33 + 8))(v19, v29);
  }

  return result;
}

uint64_t sub_24A41B93C(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v8 = a7;
  v9 = a3;
  v10 = a2;
  if (!a1)
  {
    v12 = a5;
    if (a4 >> 62)
    {
      v9 = sub_24A4AC060();
    }

    else
    {
      v9 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v37 = v8;
    if (v9)
    {
      v38 = 0;
      v8 = (a4 & 0xC000000000000001);
      v10 = a4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v39 = MEMORY[0x24C218380](v38, a4);
        }

        else
        {
          if (v38 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v39 = *(a4 + 8 * v38 + 32);
        }

        v7 = v39;
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_29;
        }

        v77 = v39;
        sub_24A41C004(&v77, (a3 + 16), a2, v12, a6, v37);

        ++v38;
      }

      while (v40 != v9);
    }

    v8 = a7;
    v35 = 0x27EF3E000;
    v9 = a3;
    goto LABEL_18;
  }

  v7 = a1;
  v11 = a1;
  v12 = 0x27EF3E000uLL;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v13 = sub_24A4AB630();
    sub_24A378E18(v13, qword_27EF4E260);

    v14 = v7;

    v15 = sub_24A4AB600();
    v16 = sub_24A4ABCE0();

    if (os_log_type_enabled(v15, v16))
    {
      v12 = v9;
      v17 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v74 = v72;
      *v17 = 136315650;
      v77 = v10;
      loga = v15;
      v18 = sub_24A4AC3F0();
      v20 = sub_24A37E99C(9uLL, v18, v19);
      v65 = v16;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v27 = MEMORY[0x24C217CD0](v20, v22, v24, v26);
      v29 = v28;

      v77 = 30768;
      v78 = 0xE200000000000000;
      MEMORY[0x24C217D50](v27, v29);

      v30 = sub_24A37BD58(v77, v78, &v74);

      *(v17 + 4) = v30;
      *(v17 + 12) = 2048;
      swift_beginAccess();
      v31 = *(*(v12 + 16) + 16);

      *(v17 + 14) = v31;

      *(v17 + 22) = 2080;
      swift_getErrorValue();
      v32 = sub_24A4AC310();
      v34 = sub_24A37BD58(v32, v33, &v74);

      *(v17 + 24) = v34;
      _os_log_impl(&dword_24A376000, loga, v65, "👀 FMFProactiveLocationController<%s>: failed subscribing for %ld ids (error=%s)", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C219130](v72, -1, -1);
      v9 = v12;
      MEMORY[0x24C219130](v17, -1, -1);

      v35 = 0x27EF3E000;
    }

    else
    {

      v35 = v12;
    }

LABEL_18:
    swift_beginAccess();
    v41 = *(v9 + 16);
    v42 = *(v41 + 16);

    log = v42;
    if (!v42)
    {
      break;
    }

    v9 = 0;
    v43 = (v41 + 40);
    v62 = v41;
    while (v9 < *(v41 + 16))
    {
      v44 = v8;
      v7 = *v43;
      v73 = *(v43 - 1);
      v10 = v35;
      v45 = *(v35 + 3064);

      if (v45 != -1)
      {
        swift_once();
      }

      v46 = sub_24A4AB630();
      sub_24A378E18(v46, qword_27EF4E260);
      v12 = a2;

      v47 = sub_24A4AB600();
      v48 = sub_24A4ABCE0();

      v70 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v76 = v64;
        *v49 = 136315394;
        v74 = a2;
        v50 = sub_24A4AC3F0();
        v10 = sub_24A37E99C(9uLL, v50, v51);
        v53 = v52;
        v55 = v54;
        v12 = v56;

        v57 = MEMORY[0x24C217CD0](v10, v53, v55, v12);
        v59 = v58;

        v74 = 30768;
        v75 = 0xE200000000000000;
        MEMORY[0x24C217D50](v57, v59);
        v8 = a7;

        v60 = sub_24A37BD58(v74, v75, &v76);

        *(v49 + 4) = v60;
        v41 = v62;
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_24A37BD58(v73, v7, &v76);
        _os_log_impl(&dword_24A376000, v47, v70, "👀 FMFProactiveLocationController<%s>: failed subscribe and fetch for %s: no location found", v49, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C219130](v64, -1, -1);
        v35 = 0x27EF3E000;
        MEMORY[0x24C219130](v49, -1, -1);
      }

      else
      {

        v8 = v44;
        v35 = v10;
      }

      ++v9;
      dispatch_group_leave(v8);

      v43 += 2;
      if (log == v9)
      {
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }
}

uint64_t sub_24A41C004(id *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v81 = a5;
  v82 = a6;
  v80 = a4;
  v87 = a3;
  v8 = type metadata accessor for FMFLocation();
  v83 = *(v8 - 8);
  v9 = *(v83 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v84 = v11;
  v85 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v88 = &v79 - v12;
  v89 = *a1;
  swift_beginAccess();
  v86 = a2;
  v13 = *a2;
  v14 = *(*a2 + 16);

  if (!v14)
  {
  }

  v15 = 0;
  for (i = (v13 + 40); ; i += 2)
  {
    if (v15 >= *(v13 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v17 = *(i - 1);
    v18 = *i;

    v19 = [v89 findMyId];
    v20 = sub_24A4AB850();
    v22 = v21;

    if (v17 == v20 && v18 == v22)
    {
      break;
    }

    v24 = sub_24A4AC270();

    if (v24)
    {
      goto LABEL_12;
    }

    if (v14 == ++v15)
    {
    }
  }

LABEL_12:

  swift_beginAccess();
  sub_24A41C6E4(v15);
  swift_endAccess();

  if (qword_27EF3EBF8 == -1)
  {
    goto LABEL_13;
  }

LABEL_21:
  swift_once();
LABEL_13:
  v26 = sub_24A4AB630();
  sub_24A378E18(v26, qword_27EF4E260);
  v27 = v89;
  v28 = v87;

  v29 = v28;
  v30 = sub_24A4AB600();
  v31 = sub_24A4ABCE0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v90 = v29;
    v92 = v89;
    *v32 = 136316163;
    v33 = sub_24A4AC3F0();
    v35 = sub_24A37E99C(9uLL, v33, v34);
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = MEMORY[0x24C217CD0](v35, v37, v39, v41);
    v44 = v43;

    v90 = 30768;
    v91 = 0xE200000000000000;
    MEMORY[0x24C217D50](v42, v44);

    v45 = sub_24A37BD58(v90, v91, &v92);

    *(v32 + 4) = v45;
    *(v32 + 12) = 2080;
    v46 = [v27 findMyId];
    v47 = sub_24A4AB850();
    v49 = v48;

    v50 = sub_24A37BD58(v47, v49, &v92);

    *(v32 + 14) = v50;
    *(v32 + 22) = 2049;
    [v27 latitude];
    *(v32 + 24) = v51;
    *(v32 + 32) = 2049;
    [v27 longitude];
    *(v32 + 34) = v52;
    *(v32 + 42) = 2081;
    v53 = [v27 locationLabel];
    if (v53)
    {
      v54 = v53;
      v55 = sub_24A4AB850();
      v57 = v56;
    }

    else
    {
      v57 = 0xE300000000000000;
      v55 = 7104878;
    }

    v58 = sub_24A37BD58(v55, v57, &v92);

    *(v32 + 44) = v58;
    _os_log_impl(&dword_24A376000, v30, v31, "👀 FMFProactiveLocationController<%s>: did subscribe and fetch for %s: {%{private}f,%{private}f}, label='%{private}s'", v32, 0x34u);
    v59 = v89;
    swift_arrayDestroy();
    MEMORY[0x24C219130](v59, -1, -1);
    MEMORY[0x24C219130](v32, -1, -1);

    v29 = v87;
  }

  else
  {
  }

  v60 = swift_allocObject();
  v89 = v60;
  swift_weakInit();
  v61 = swift_allocObject();
  v63 = v80;
  v62 = v81;
  *(v61 + 2) = v60;
  *(v61 + 3) = v63;
  v64 = v82;
  *(v61 + 4) = v62;
  *(v61 + 5) = v64;
  v65 = v29;
  v66 = v27;

  v67 = v64;
  v68 = v88;
  sub_24A3EC26C(v66, v88);
  v87 = *(v65 + 72);
  v69 = v65;
  sub_24A3C9CEC(&qword_27EF3F4F0, &unk_24A4B8C00);
  v70 = *(v83 + 72);
  v71 = *(v83 + 80);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_24A4B4E10;
  sub_24A39921C(v68, v72 + ((v71 + 32) & ~v71), type metadata accessor for FMFLocation);
  v73 = v68;
  v74 = v85;
  sub_24A39921C(v73, v85, type metadata accessor for FMFLocation);
  v75 = (v71 + 16) & ~v71;
  v76 = (v84 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  sub_24A3997D4(v74, v77 + v75, type metadata accessor for FMFLocation);
  *(v77 + v76) = v69;
  v78 = (v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v78 = sub_24A41EDD4;
  v78[1] = v61;

  sub_24A3BCD18(v72, sub_24A41EDE0, v77);

  sub_24A39A6F8(v88, type metadata accessor for FMFLocation);
}

uint64_t sub_24A41C6E4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A473E14(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A41C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v39 = a5;
  v40 = a6;
  v38 = a4;
  v8 = sub_24A4AB690();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24A4AB6E0();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v41 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMFLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - v19;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v35 = *(result + 40);
    v36 = result;
    sub_24A39921C(a1, v20, type metadata accessor for FMFLocation);
    sub_24A39921C(a2, v18, type metadata accessor for FMFLocation);
    v22 = *(v15 + 80);
    v23 = (v22 + 24) & ~v22;
    v24 = (v16 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v22 + v24 + 8) & ~v22;
    v34 = v11;
    v26 = (v16 + 7 + v25) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v38;
    sub_24A3997D4(v20, v27 + v23, type metadata accessor for FMFLocation);
    *(v27 + v24) = v39;
    sub_24A3997D4(v18, v27 + v25, type metadata accessor for FMFLocation);
    v28 = v40;
    *(v27 + v26) = v40;
    aBlock[4] = sub_24A41EE9C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24A388564;
    aBlock[3] = &unk_285D87C30;
    v29 = _Block_copy(aBlock);

    v30 = v28;
    v31 = v41;
    sub_24A4AB6B0();
    v44 = MEMORY[0x277D84F90];
    sub_24A37EFD4(&qword_27EF408E0, MEMORY[0x277D85198]);
    sub_24A3C9CEC(&unk_27EF40310, &unk_24A4B4F40);
    sub_24A378704(&qword_27EF408F0, &unk_27EF40310, &unk_24A4B4F40);
    v32 = v43;
    sub_24A4ABE90();
    MEMORY[0x24C218190](0, v31, v32, v29);
    _Block_release(v29);
    (*(v37 + 8))(v32, v8);
    (*(v42 + 8))(v31, v34);
  }

  return result;
}

void sub_24A41CBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5)
{
  v10 = type metadata accessor for FMFLocation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_24A39921C(a2, &v28 - v16, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v18 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_24A3B5C2C(0, v18[2] + 1, 1, v18);
    *(a1 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_24A3B5C2C(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v23 = *(v11 + 72);
  sub_24A3997D4(v17, v18 + v22 + v23 * v21, type metadata accessor for FMFLocation);
  *(a1 + 16) = v18;
  swift_endAccess();
  sub_24A39921C(a4, v15, type metadata accessor for FMFLocation);
  swift_beginAccess();
  v24 = *(a3 + 16);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v24;
  if ((v25 & 1) == 0)
  {
    v24 = sub_24A3B5C2C(0, v24[2] + 1, 1, v24);
    *(a3 + 16) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_24A3B5C2C(v26 > 1, v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  sub_24A3997D4(v15, v24 + v22 + v27 * v23, type metadata accessor for FMFLocation);
  *(a3 + 16) = v24;
  swift_endAccess();
  dispatch_group_leave(a5);
}

void sub_24A41CE7C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_24A37B428(0, &qword_27EF3FE48, 0x277D496B8);
  v6 = sub_24A4ABA70();

  v7 = a3;
  v5(v6, a3);
}

void (*sub_24A41CF2C(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6))(void)
{
  v72[1] = a5;
  v73 = a4;
  v10 = type metadata accessor for FMFFriend();
  v77 = *(v10 - 8);
  v11 = *(v77 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v76 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v72 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = v72 - v17;
  if (qword_27EF3EBF8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v19 = sub_24A4AB630();
    sub_24A378E18(v19, qword_27EF4E260);
    swift_retain_n();

    v20 = sub_24A4AB600();
    v21 = sub_24A4ABCE0();

    v22 = os_log_type_enabled(v20, v21);
    v79 = a6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v85 = v81;
      *v23 = 136315394;
      v86 = a1;
      v80 = v20;
      v24 = sub_24A4AC3F0();
      v26 = sub_24A37E99C(9uLL, v24, v25);
      v28 = v27;
      v82 = a3;
      v30 = v29;
      LODWORD(v78) = v21;
      v32 = v31;

      v33 = MEMORY[0x24C217CD0](v26, v28, v30, v32);
      v35 = v34;

      v86 = 30768;
      v87 = 0xE200000000000000;
      MEMORY[0x24C217D50](v33, v35);

      v36 = sub_24A37BD58(v86, v87, &v85);

      *(v23 + 4) = v36;
      a3 = v82;
      *(v23 + 12) = 2048;
      swift_beginAccess();
      v37 = *(*(a2 + 16) + 16);

      *(v23 + 14) = v37;

      v38 = v80;
      _os_log_impl(&dword_24A376000, v80, v78, "👀 FMFProactiveLocationController<%s>: updating client subscribers with %ld resolved locations", v23, 0x16u);
      v39 = v81;
      sub_24A37EEE0(v81);
      MEMORY[0x24C219130](v39, -1, -1);
      v40 = v23;
      a6 = v79;
      MEMORY[0x24C219130](v40, -1, -1);
    }

    else
    {
    }

    v41 = *(a1 + 16);
    v42 = swift_beginAccess();
    v43 = a1;
    v44 = *(a3 + 16);
    v45 = *(v41 + 56);
    MEMORY[0x28223BE20](v42);
    v72[-2] = v44;
    v72[-1] = v41;

    sub_24A4ABD70();

    v46 = *(a1 + 16);
    v47 = swift_beginAccess();
    a1 = v72;
    v48 = *(a2 + 16);
    v49 = *(v46 + 56);
    MEMORY[0x28223BE20](v47);
    v72[-2] = v46;
    v72[-1] = v48;

    sub_24A4ABD70();

    result = v73;
    if (!v73)
    {
      return result;
    }

    a2 = *(v43 + 16);
    v51 = *(a2 + 56);
    sub_24A3C8498(v73);

    sub_24A3C9CEC(&qword_27EF3FE40, &unk_24A4BA230);
    sub_24A4ABD70();
    v82 = 0;

    a3 = v83[0];
    v75 = *(v83[0] + 16);
    if (!v75)
    {
      v78 = MEMORY[0x277D84F90];
LABEL_27:

      v71 = v73;
      v73(v78);

      return sub_24A3C84A8(v71);
    }

    v52 = 0;
    v78 = MEMORY[0x277D84F90];
    v74 = v83[0];
    while (v52 < *(a3 + 16))
    {
      v53 = ((*(v77 + 80) + 32) & ~*(v77 + 80));
      a2 = *(v77 + 72);
      v54 = v53 + a3 + a2 * v52;
      v55 = v18;
      isUniquelyReferenced_nonNull_native = sub_24A39921C(v54, v18, type metadata accessor for FMFFriend);
      v57 = *(a6 + 16);
      v80 = v53;
      v81 = v52;
      if (v57)
      {
        v58 = v53 + a6;
        v59 = MEMORY[0x277D84F90];
        do
        {
          sub_24A39921C(v58, v16, type metadata accessor for FMFFriend);
          v61 = *v16;
          v60 = v16[1];

          sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_24A3ED900(0, *(v59 + 16) + 1, 1, v59);
            v59 = isUniquelyReferenced_nonNull_native;
          }

          a1 = *(v59 + 16);
          v62 = *(v59 + 24);
          if (a1 >= v62 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_24A3ED900((v62 > 1), a1 + 1, 1, v59);
            v59 = isUniquelyReferenced_nonNull_native;
          }

          *(v59 + 16) = a1 + 1;
          v63 = v59 + 16 * a1;
          *(v63 + 32) = v61;
          *(v63 + 40) = v60;
          v58 += a2;
          --v57;
        }

        while (v57);
      }

      else
      {
        v59 = MEMORY[0x277D84F90];
      }

      v18 = v55;
      v64 = *(v55 + 1);
      v83[0] = *v55;
      v83[1] = v64;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      v72[-2] = v83;
      v65 = v82;
      v66 = sub_24A45363C(sub_24A41F354, &v72[-4], v59);
      v82 = v65;

      if (v66)
      {
        sub_24A3997D4(v18, v76, type metadata accessor for FMFFriend);
        v67 = v78;
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v84 = v67;
        a3 = v74;
        if ((v68 & 1) == 0)
        {
          sub_24A39E574(0, *(v67 + 16) + 1, 1);
          v67 = v84;
        }

        a6 = v79;
        a1 = v80;
        v70 = *(v67 + 16);
        v69 = *(v67 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_24A39E574(v69 > 1, v70 + 1, 1);
          v67 = v84;
        }

        *(v67 + 16) = v70 + 1;
        v78 = v67;
        sub_24A3997D4(v76, v67 + a1 + v70 * a2, type metadata accessor for FMFFriend);
      }

      else
      {
        sub_24A39A6F8(v18, type metadata accessor for FMFFriend);
        a6 = v79;
        a3 = v74;
      }

      v52 = (v81 + 1);
      if ((v81 + 1) == v75)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }
}

uint64_t sub_24A41D74C(void **a1)
{
  v2 = *(type metadata accessor for FMFFriend() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24A41ED38(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24A41D7F4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24A41D7F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24A4AC220();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FMFFriend();
        v6 = sub_24A4ABAC0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FMFFriend() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24A41DBAC(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24A41D920(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24A41D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for FMFFriend();
  v8 = *(*(v36 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v36);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v28 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v28 - v17);
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v35 = v19;
    v29 = v20;
    v24 = v19 + v20 * a3;
LABEL_6:
    v33 = v21;
    v34 = a3;
    v31 = v24;
    v32 = v23;
    while (1)
    {
      sub_24A39921C(v24, v18, type metadata accessor for FMFFriend);
      sub_24A39921C(v21, v14, type metadata accessor for FMFFriend);
      if (*v18 == *v14 && v18[1] == v14[1])
      {
        sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
        result = sub_24A39A6F8(v18, type metadata accessor for FMFFriend);
LABEL_5:
        a3 = v34 + 1;
        v21 = v33 + v29;
        v23 = v32 - 1;
        v24 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_6;
      }

      v26 = sub_24A4AC270();
      sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
      result = sub_24A39A6F8(v18, type metadata accessor for FMFFriend);
      if ((v26 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_24A3997D4(v24, v11, type metadata accessor for FMFFriend);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24A3997D4(v11, v21, type metadata accessor for FMFFriend);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24A41DBAC(int64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v124 = a1;
  v138 = type metadata accessor for FMFFriend();
  v131 = *(v138 - 8);
  v9 = *(v131 + 64);
  v10 = MEMORY[0x28223BE20](v138);
  v127 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v118 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (&v118 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v118 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v135 = (&v118 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v134 = (&v118 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v123 = (&v118 - v25);
  result = MEMORY[0x28223BE20](v24);
  v122 = (&v118 - v27);
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_110:
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_112:
      v139 = v30;
      v113 = *(v30 + 16);
      if (v113 >= 2)
      {
        while (*a3)
        {
          v114 = v30;
          v30 = *(v30 + 16 * v113);
          v115 = v114;
          v116 = *&v114[16 * v113 + 24];
          sub_24A41E608(*a3 + *(v131 + 72) * v30, *a3 + *(v131 + 72) * *&v114[16 * v113 + 16], *a3 + *(v131 + 72) * v116, v5);
          if (v6)
          {
          }

          if (v116 < v30)
          {
            goto LABEL_135;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_24A41EC2C(v115);
          }

          if (v113 - 2 >= *(v115 + 2))
          {
            goto LABEL_136;
          }

          v117 = &v115[16 * v113];
          *v117 = v30;
          v117[1] = v116;
          v139 = v115;
          result = sub_24A41EBA0(v113 - 1);
          v30 = v139;
          v113 = *(v139 + 16);
          if (v113 <= 1)
          {
          }
        }

        goto LABEL_146;
      }
    }

LABEL_142:
    result = sub_24A41EC2C(v30);
    v30 = result;
    goto LABEL_112;
  }

  v118 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v132 = a3;
  v128 = v19;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v129 = v28;
      v119 = v30;
      v33 = *a3;
      v34 = *(v131 + 72);
      v35 = v29 + 1;
      v36 = v122;
      sub_24A39921C(v33 + v34 * v32, v122, type metadata accessor for FMFFriend);
      v133 = v34;
      v37 = v33 + v34 * v31;
      v38 = v123;
      sub_24A39921C(v37, v123, type metadata accessor for FMFFriend);
      v39 = *v36 == *v38 && v36[1] == v38[1];
      v120 = v6;
      if (v39)
      {
        LODWORD(v130) = 0;
      }

      else
      {
        LODWORD(v130) = sub_24A4AC270();
      }

      sub_24A39A6F8(v123, type metadata accessor for FMFFriend);
      result = sub_24A39A6F8(v122, type metadata accessor for FMFFriend);
      v121 = v31;
      v40 = v31 + 2;
      v41 = v133 * (v31 + 2);
      v42 = v33 + v41;
      v43 = v35;
      v44 = v133 * v35;
      a3 = v33 + v133 * v35;
      do
      {
        v46 = v40;
        v30 = v43;
        v5 = v44;
        v47 = v41;
        v136 = v40;
        if (v40 >= v129)
        {
          break;
        }

        v48 = v16;
        v49 = v134;
        sub_24A39921C(v42, v134, type metadata accessor for FMFFriend);
        v50 = v135;
        sub_24A39921C(a3, v135, type metadata accessor for FMFFriend);
        v51 = *v49 == *v50 && v49[1] == v50[1];
        v45 = v51 ? 0 : sub_24A4AC270();
        v16 = v48;
        v6 = type metadata accessor for FMFFriend;
        sub_24A39A6F8(v135, type metadata accessor for FMFFriend);
        result = sub_24A39A6F8(v134, type metadata accessor for FMFFriend);
        v46 = v136;
        v40 = v136 + 1;
        v42 += v133;
        a3 += v133;
        v43 = v30 + 1;
        v44 = v5 + v133;
        v41 = v47 + v133;
        v19 = v128;
      }

      while (((v130 ^ v45) & 1) == 0);
      if ((v130 & 1) == 0)
      {
        v32 = v46;
LABEL_36:
        v30 = v119;
        v6 = v120;
        a3 = v132;
        v31 = v121;
        goto LABEL_37;
      }

      if (v46 < v121)
      {
        goto LABEL_139;
      }

      if (v121 < v46)
      {
        v52 = v121 * v133;
        v53 = v121;
        do
        {
          if (v53 != v30)
          {
            v55 = *v132;
            if (!*v132)
            {
              goto LABEL_145;
            }

            sub_24A3997D4(v55 + v52, v127, type metadata accessor for FMFFriend);
            if (v52 < v5 || v55 + v52 >= (v55 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v52 != v5)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_24A3997D4(v127, v55 + v5, type metadata accessor for FMFFriend);
          }

          ++v53;
          v5 -= v133;
          v47 -= v133;
          v52 += v133;
        }

        while (v53 < v30--);
        v32 = v136;
        goto LABEL_36;
      }

      v32 = v46;
      v30 = v119;
      v6 = v120;
      a3 = v132;
      v31 = v121;
    }

LABEL_37:
    v56 = *(a3 + 8);
    if (v32 < v56)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_138;
      }

      if (v32 - v31 < v118)
      {
        break;
      }
    }

LABEL_59:
    if (v32 < v31)
    {
      goto LABEL_137;
    }

    v136 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24A3EDCB4(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v68 = *(v30 + 16);
    v67 = *(v30 + 24);
    v69 = v68 + 1;
    v29 = v136;
    if (v68 >= v67 >> 1)
    {
      result = sub_24A3EDCB4((v67 > 1), v68 + 1, 1, v30);
      v29 = v136;
      v30 = result;
    }

    *(v30 + 16) = v69;
    v70 = v30 + 16 * v68;
    *(v70 + 32) = v31;
    *(v70 + 40) = v29;
    v5 = *v124;
    if (!*v124)
    {
      goto LABEL_147;
    }

    if (v68)
    {
      while (1)
      {
        a3 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v71 = *(v30 + 32);
          v72 = *(v30 + 40);
          v81 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          v74 = v81;
LABEL_79:
          if (v74)
          {
            goto LABEL_126;
          }

          v87 = (v30 + 16 * v69);
          v89 = *v87;
          v88 = v87[1];
          v90 = __OFSUB__(v88, v89);
          v91 = v88 - v89;
          v92 = v90;
          if (v90)
          {
            goto LABEL_129;
          }

          v93 = (v30 + 32 + 16 * a3);
          v95 = *v93;
          v94 = v93[1];
          v81 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v81)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v91, v96))
          {
            goto LABEL_133;
          }

          if (v91 + v96 >= v73)
          {
            if (v73 < v96)
            {
              a3 = v69 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v97 = (v30 + 16 * v69);
        v99 = *v97;
        v98 = v97[1];
        v81 = __OFSUB__(v98, v99);
        v91 = v98 - v99;
        v92 = v81;
LABEL_93:
        if (v92)
        {
          goto LABEL_128;
        }

        v100 = v30 + 16 * a3;
        v102 = *(v100 + 32);
        v101 = *(v100 + 40);
        v81 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v81)
        {
          goto LABEL_131;
        }

        if (v103 < v91)
        {
          goto LABEL_3;
        }

LABEL_100:
        v108 = a3 - 1;
        if (a3 - 1 >= v69)
        {
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v132)
        {
          goto LABEL_144;
        }

        v109 = v30;
        v110 = v30 + 32;
        v30 = *(v30 + 32 + 16 * v108);
        v111 = *(v110 + 16 * a3 + 8);
        sub_24A41E608(*v132 + *(v131 + 72) * v30, *v132 + *(v131 + 72) * *(v110 + 16 * a3), *v132 + *(v131 + 72) * v111, v5);
        if (v6)
        {
        }

        if (v111 < v30)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_24A41EC2C(v109);
        }

        if (v108 >= *(v109 + 2))
        {
          goto LABEL_123;
        }

        v112 = &v109[16 * v108];
        *(v112 + 4) = v30;
        *(v112 + 5) = v111;
        v139 = v109;
        result = sub_24A41EBA0(a3);
        v30 = v139;
        v69 = *(v139 + 16);
        v29 = v136;
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v75 = v30 + 32 + 16 * v69;
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_124;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_125;
      }

      v82 = (v30 + 16 * v69);
      v84 = *v82;
      v83 = v82[1];
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_127;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_130;
      }

      if (v86 >= v78)
      {
        v104 = (v30 + 32 + 16 * a3);
        v106 = *v104;
        v105 = v104[1];
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_134;
        }

        if (v73 < v107)
        {
          a3 = v69 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    a3 = v132;
    v28 = v132[1];
    if (v29 >= v28)
    {
      goto LABEL_110;
    }
  }

  v57 = v31 + v118;
  if (__OFADD__(v31, v118))
  {
    goto LABEL_140;
  }

  if (v57 >= v56)
  {
    v57 = *(a3 + 8);
  }

  if (v57 < v31)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (v32 == v57)
  {
    goto LABEL_59;
  }

  v119 = v30;
  v120 = v6;
  a3 = *a3;
  v58 = *(v131 + 72);
  v59 = a3 + v58 * (v32 - 1);
  v60 = v31;
  v61 = -v58;
  v121 = v60;
  v62 = v60 - v32;
  v125 = v58;
  v126 = v57;
  v5 = a3 + v32 * v58;
LABEL_48:
  v136 = v32;
  v129 = v5;
  v130 = v62;
  v133 = v59;
  while (1)
  {
    sub_24A39921C(v5, v19, type metadata accessor for FMFFriend);
    sub_24A39921C(v59, v16, type metadata accessor for FMFFriend);
    if (*v19 == *v16 && v19[1] == v16[1])
    {
      sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v19, type metadata accessor for FMFFriend);
LABEL_47:
      v32 = v136 + 1;
      v59 = v133 + v125;
      v62 = v130 - 1;
      v5 = v129 + v125;
      if (v136 + 1 == v126)
      {
        v32 = v126;
        v30 = v119;
        v6 = v120;
        v31 = v121;
        goto LABEL_59;
      }

      goto LABEL_48;
    }

    v64 = sub_24A4AC270();
    sub_24A39A6F8(v16, type metadata accessor for FMFFriend);
    result = sub_24A39A6F8(v19, type metadata accessor for FMFFriend);
    if ((v64 & 1) == 0)
    {
      goto LABEL_47;
    }

    if (!a3)
    {
      break;
    }

    v65 = v137;
    sub_24A3997D4(v5, v137, type metadata accessor for FMFFriend);
    swift_arrayInitWithTakeFrontToBack();
    sub_24A3997D4(v65, v59, type metadata accessor for FMFFriend);
    v59 += v61;
    v5 += v61;
    if (__CFADD__(v62++, 1))
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_24A41E608(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a4;
  v48 = type metadata accessor for FMFFriend();
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v46 = (&v41 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v41 - v13);
  result = MEMORY[0x28223BE20](v12);
  v17 = (&v41 - v16);
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v45 = a2;
  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v20 = a3 - v45;
  if (a3 - v45 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_72;
  }

  v21 = (a2 - a1) / v19;
  v52 = a1;
  v51 = v49;
  if (v21 >= v20 / v19)
  {
    v24 = v20 / v19 * v19;
    if (v49 < v45 || v45 + v24 <= v49)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v49 != v45)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v30 = v49 + v24;
    if (v24 >= 1)
    {
      v31 = -v19;
      v32 = v49 + v24;
      v44 = -v19;
      do
      {
        v42 = v30;
        v33 = v45;
        v45 += v31;
        while (1)
        {
          if (v33 <= a1)
          {
            v52 = v33;
            v50 = v42;
            goto LABEL_69;
          }

          v34 = a3;
          v43 = v30;
          v35 = v44;
          v36 = v32 + v44;
          v37 = v46;
          sub_24A39921C(v32 + v44, v46, type metadata accessor for FMFFriend);
          v38 = v47;
          sub_24A39921C(v45, v47, type metadata accessor for FMFFriend);
          v39 = *v37 == *v38 && v37[1] == v38[1];
          v40 = v39 ? 0 : sub_24A4AC270();
          a3 = v34 + v35;
          sub_24A39A6F8(v47, type metadata accessor for FMFFriend);
          sub_24A39A6F8(v46, type metadata accessor for FMFFriend);
          if (v40)
          {
            break;
          }

          v30 = v32 + v35;
          if (v34 < v32 || a3 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v32 += v35;
          if (v36 <= v49)
          {
            v45 = v33;
            goto LABEL_68;
          }
        }

        if (v34 < v33 || a3 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v30 = v43;
        }

        else
        {
          v30 = v43;
          if (v34 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v44;
      }

      while (v32 > v49);
    }

LABEL_68:
    v52 = v45;
    v50 = v30;
  }

  else
  {
    v22 = v21 * v19;
    if (v49 < a1 || a1 + v22 <= v49)
    {
      swift_arrayInitWithTakeFrontToBack();
      v23 = v45;
    }

    else
    {
      v23 = v45;
      if (v49 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v25 = v49 + v22;
    v50 = v49 + v22;
    if (v22 >= 1 && v23 < a3)
    {
      while (1)
      {
        sub_24A39921C(v23, v17, type metadata accessor for FMFFriend);
        sub_24A39921C(v49, v14, type metadata accessor for FMFFriend);
        if (*v17 == *v14 && v17[1] == v14[1])
        {
          break;
        }

        v28 = sub_24A4AC270();
        sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
        sub_24A39A6F8(v17, type metadata accessor for FMFFriend);
        if ((v28 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < v23 || a1 >= v23 + v19)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v23 += v19;
LABEL_38:
        a1 += v19;
        v52 = a1;
        if (v49 >= v25 || v23 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_24A39A6F8(v14, type metadata accessor for FMFFriend);
      sub_24A39A6F8(v17, type metadata accessor for FMFFriend);
LABEL_30:
      v29 = v49 + v19;
      if (a1 < v49 || a1 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v49)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v51 = v29;
      v49 = v29;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_24A41EC40(&v52, &v51, &v50);
  return 1;
}

uint64_t sub_24A41EBA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24A41EC2C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24A41EC40(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for FMFFriend();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_24A41EDE4(const void *a1)
{
  v3 = *(type metadata accessor for FMFLocation() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v6);
  v9 = *(v1 + v7);
  v10 = *(v1 + v7 + 8);

  return sub_24A417240(a1, (v1 + v5), v8, v9, v10, v1 + ((v4 + 16 + v7) & ~v4));
}

void sub_24A41EE9C()
{
  v1 = *(type metadata accessor for FMFLocation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v2 + v5 + 8) & ~v2;
  v7 = *(v0 + v5);
  v8 = *(v0 + ((v4 + v6) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);

  sub_24A41CBDC(v9, v0 + v3, v7, v0 + v6, v8);
}

uint64_t sub_24A41EF8C()
{
  v1 = type metadata accessor for FMFLocation();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v1 + 32);
  v8 = sub_24A4AAB20();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = (v5 + *(v1 + 44));
  v11 = v10[38];
  if (v11)
  {
    if (v10[21])
    {
      v12 = *v10;

      v13 = v10[2];

      v14 = v10[4];

      v15 = v10[6];

      v16 = v10[8];

      v17 = v10[10];

      v18 = v10[12];

      v19 = v10[14];

      v20 = v10[16];

      v21 = v10[18];

      v22 = v10[20];

      v23 = v10[21];

      v24 = v10[23];

      v25 = v10[25];

      v26 = v10[27];

      v27 = v10[29];

      v28 = v10[31];

      v29 = v10[33];

      v30 = v10[35];

      v31 = v10[37];

      v11 = v10[38];
    }

    v32 = v10[41];

    v33 = v10[43];
  }

  v34 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = *(v0 + v34);

  v37 = *(v0 + v35 + 8);

  return MEMORY[0x2821FE8E8](v0, v35 + 16, v2 | 7);
}

uint64_t sub_24A41F1B8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMFLocation() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_24A416914(a1, v1 + v4, v6, v8, v9);
}

void sub_24A41F264()
{
  v1 = *(type metadata accessor for FMFLocation() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64) + 7;
  v5 = (v4 + v3) & 0xFFFFFFFFFFFFFFF8;
  sub_24A41A628(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), v0 + v3, *(v0 + v5), v0 + ((v2 + v5 + 8) & ~v2), *(v0 + ((v4 + ((v2 + v5 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + ((v2 + v5 + 8) & ~v2)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_24A41F39C()
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F4F0()
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F644()
{
  sub_24A4AB8F0();
}

uint64_t sub_24A41F760()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41F888()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41F9A8()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41FAE0()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t sub_24A41FC10()
{
  sub_24A4AC360();
  sub_24A4AB8F0();

  return sub_24A4AC3A0();
}

uint64_t FMFLabelledLocation.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t FMFLabelledLocation.label.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t FMFLabelledLocation.userId.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t FMFLabelledLocation.latitude.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t FMFLabelledLocation.longitude.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_24A41FE74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_24A421B7C();
  *a2 = result;
  return result;
}

void sub_24A41FEA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x64757469676E6F6CLL;
  v6 = 0xE900000000000065;
  if (v2 != 6)
  {
    v5 = 0x7354657461647075;
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x644972657375;
  if (v2 != 4)
  {
    v8 = 0x656475746974616CLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7079546C6562616CLL;
  v10 = 0xE900000000000065;
  if (v2 != 2)
  {
    v9 = 1701869940;
    v10 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6C6562616CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_24A41FF90()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x64757469676E6F6CLL;
  if (v1 != 6)
  {
    v3 = 0x7354657461647075;
  }

  v4 = 0x644972657375;
  if (v1 != 4)
  {
    v4 = 0x656475746974616CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7079546C6562616CLL;
  if (v1 != 2)
  {
    v5 = 1701869940;
  }

  if (*v0)
  {
    v2 = 0x6C6562616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24A420078@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24A421B7C();
  *a1 = result;
  return result;
}

uint64_t sub_24A4200A0(uint64_t a1)
{
  v2 = sub_24A420724();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24A4200DC(uint64_t a1)
{
  v2 = sub_24A420724();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FMFLabelledLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = sub_24A3C9CEC(&qword_27EF3FE88, &qword_24A4B8C58);
  v4 = *(v47 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v47);
  v7 = &v42 - v6;
  v8 = type metadata accessor for FMFLabelledLocation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A420724();
  sub_24A4AC3C0();
  if (!v2)
  {
    v45 = v11;
    LOBYTE(v48) = 0;
    v13 = v7;
    v14 = sub_24A4AC120();
    v15 = v45;
    *v45 = v14;
    *(v15 + 8) = v16;
    LOBYTE(v48) = 4;
    *(v15 + 40) = sub_24A4AC120();
    *(v15 + 48) = v17;
    LOBYTE(v48) = 5;
    sub_24A4AC140();
    *(v15 + 56) = v18;
    *(v15 + 64) = 0;
    LOBYTE(v48) = 6;
    sub_24A4AC140();
    v43 = v4;
    *(v15 + 72) = v19;
    *(v15 + 80) = 0;
    LOBYTE(v48) = 7;
    v20 = sub_24A4AC170();
    v44 = v13;
    v21 = *(v8 + 36);
    v22 = [objc_opt_self() fm:v20 dateFromEpoch:?];
    sub_24A4AAAA0();

    v23 = sub_24A4AAAD0();
    (*(*(v23 - 8) + 56))(v15 + v21, 0, 1, v23);
    LOBYTE(v48) = 1;
    v24 = sub_24A4AC120();
    v26 = v25;
    LOBYTE(v48) = 2;
    sub_24A4AC120();
    v27 = sub_24A4AC0C0();

    if (v27 >= 3)
    {
      v28 = 3;
    }

    else
    {
      v28 = v27;
    }

    v29._countAndFlagsBits = v24;
    v29._object = v26;
    FMFDefaultLabel.init(rawValue:)(v29);
    v30 = v28 | ((v48 == 5) << 8);
    *(v15 + 16) = v24;
    *(v15 + 24) = v26;
    *(v15 + 32) = v30;
    v31 = FMFLabelledLocation.debugDescription.getter();
    v33 = v32;
    if (qword_27EF3EBF8 != -1)
    {
      swift_once();
    }

    v34 = sub_24A4AB630();
    sub_24A378E18(v34, qword_27EF4E260);

    v35 = sub_24A4AB600();
    v36 = sub_24A4ABCE0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48 = v38;
      *v37 = 136315138;
      v39 = a1;
      v40 = sub_24A37BD58(v31, v33, &v48);

      *(v37 + 4) = v40;
      a1 = v39;
      v15 = v45;
      _os_log_impl(&dword_24A376000, v35, v36, "FMFLabelledLocation: initialized with coder %s", v37, 0xCu);
      sub_24A37EEE0(v38);
      MEMORY[0x24C219130](v38, -1, -1);
      MEMORY[0x24C219130](v37, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v44, v47);
    sub_24A3D71D4(v15, v46);
  }

  return sub_24A37EEE0(a1);
}

unint64_t sub_24A420724()
{
  result = qword_27EF3FE90;
  if (!qword_27EF3FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF3FE90);
  }

  return result;
}

uint64_t FMFLabelledLocation.debugDescription.getter()
{
  v1 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - v3;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v31 = 0xD000000000000022;
  v32 = 0x800000024A4B0EB0;
  v5 = *(v0 + 8);
  v28 = *v0;
  v29 = v5;

  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  v6 = sub_24A4AB870();
  MEMORY[0x24C217D50](v6);

  MEMORY[0x24C217D50](0x203A6C6562616C20, 0xE800000000000000);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v28 = *(v0 + 16);
  v29 = v7;
  v30 = v8;

  sub_24A3C9CEC(&qword_27EF3F908, &qword_24A4B7D00);
  v9 = sub_24A4AB870();
  MEMORY[0x24C217D50](v9);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v10 = v31;
  v11 = v32;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0x203A644972657375;
  v29 = 0xE800000000000000;
  v12 = *(v0 + 48);
  v31 = *(v0 + 40);
  v32 = v12;

  v13 = sub_24A4AB870();
  MEMORY[0x24C217D50](v13);

  MEMORY[0x24C217D50](0x6475746974616C20, 0xEB00000000203A65);
  v14 = *(v0 + 64);
  v31 = *(v0 + 56);
  LOBYTE(v32) = v14;
  sub_24A3C9CEC(&qword_27EF3FE98, &qword_24A4B8C60);
  v15 = sub_24A4AB870();
  MEMORY[0x24C217D50](v15);

  MEMORY[0x24C217D50](32, 0xE100000000000000);
  v17 = v28;
  v16 = v29;
  v28 = v10;
  v29 = v11;

  MEMORY[0x24C217D50](v17, v16);

  v18 = v28;
  v19 = v29;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_24A4ABF50();

  v28 = 0x64757469676E6F6CLL;
  v29 = 0xEB00000000203A65;
  v20 = *(v0 + 80);
  v31 = *(v0 + 72);
  LOBYTE(v32) = v20;
  v21 = sub_24A4AB870();
  MEMORY[0x24C217D50](v21);

  MEMORY[0x24C217D50](0x6465746164707520, 0xEC000000203A7441);
  v22 = type metadata accessor for FMFLabelledLocation();
  sub_24A37B740(v0 + *(v22 + 36), v4, &qword_27EF3F460, &unk_24A4B53B0);
  v23 = sub_24A4AB870();
  MEMORY[0x24C217D50](v23);

  MEMORY[0x24C217D50](62, 0xE100000000000000);
  v24 = v28;
  v25 = v29;
  v28 = v18;
  v29 = v19;

  MEMORY[0x24C217D50](v24, v25);

  return v28;
}

uint64_t FMFLabelledLocation.init(labelledLocation:label:userId:latitude:longitude:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>)
{
  v60 = a8;
  v54 = a7;
  v55 = a4;
  v58 = a6;
  v59 = a5;
  v56 = a3;
  v12 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v51 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = type metadata accessor for FMFLabelledLocation();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a2;
  v27 = a2[1];
  v29 = *(a2 + 8);
  v57 = a1;
  sub_24A37B740(a1, v21, &qword_27EF3FEA0, &qword_24A4B8C68);
  v30 = v22;
  v31 = *(v23 + 48);
  if (v31(v21, 1, v22) == 1)
  {
    sub_24A37EF2C(v21, &qword_27EF3FEA0, &qword_24A4B8C68);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    sub_24A3D71D4(v21, v26);
    v32 = *v26;
    v33 = v26[1];

    sub_24A3D7178(v26);
  }

  *a9 = v32;
  *(a9 + 8) = v33;
  *(a9 + 16) = v28;
  *(a9 + 24) = v27;
  *(a9 + 32) = v29;
  v34 = v30;
  v35 = v59;
  v36 = v31;
  v37 = v56;
  v38 = v57;
  v39 = v55;
  if (!v55)
  {
    v40 = v51;
    sub_24A37B740(v57, v51, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v36(v40, 1, v34) == 1)
    {
      sub_24A37EF2C(v40, &qword_27EF3FEA0, &qword_24A4B8C68);
      v37 = 0;
      v39 = 0;
    }

    else
    {
      v37 = *(v40 + 40);
      v39 = *(v40 + 48);

      sub_24A3D7178(v40);
    }
  }

  *(a9 + 40) = v37;
  *(a9 + 48) = v39;
  if (v58)
  {
    v41 = v52;
    sub_24A37B740(v38, v52, &qword_27EF3FEA0, &qword_24A4B8C68);
    if (v36(v41, 1, v34) == 1)
    {
      sub_24A37EF2C(v41, &qword_27EF3FEA0, &qword_24A4B8C68);
      v35 = 0;
      v42 = 1;
    }

    else
    {
      v43 = v41;
      v35 = *(v41 + 56);
      v42 = *(v41 + 64);
      sub_24A3D7178(v43);
    }
  }

  else
  {
    v42 = 0;
  }

  *(a9 + 56) = v35;
  *(a9 + 64) = v42;
  if (v60)
  {
    v44 = v53;
    sub_24A421520(v38, v53);
    if (v36(v44, 1, v34) == 1)
    {
      sub_24A37EF2C(v44, &qword_27EF3FEA0, &qword_24A4B8C68);
      v45 = 0;
      v46 = 1;
    }

    else
    {
      v45 = *(v44 + 72);
      v47 = v44;
      v46 = *(v44 + 80);
      sub_24A3D7178(v47);
    }
  }

  else
  {
    sub_24A37EF2C(v38, &qword_27EF3FEA0, &qword_24A4B8C68);
    v46 = 0;
    v45 = v54;
  }

  *(a9 + 72) = v45;
  *(a9 + 80) = v46;
  v48 = *(v34 + 36);
  v49 = sub_24A4AAAD0();
  return (*(*(v49 - 8) + 56))(a9 + v48, 1, 1, v49);
}

uint64_t FMFLabelledLocation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v33 - v7;
  v9 = sub_24A3C9CEC(&qword_27EF3FEA8, &unk_24A4B8C70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = a1[4];
  sub_24A37EACC(a1, a1[3]);
  sub_24A420724();
  sub_24A4AC3D0();
  v35 = *v3;
  v34 = 0;
  sub_24A3C9CEC(&unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A421590(&qword_27EF3EFA0, &unk_27EF3F4C0, &qword_24A4B7E60);
  sub_24A4AC1F0();
  if (v2)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v15 = *(v3 + 2);
  v16 = *(v3 + 3);
  if (!v16)
  {
    v15 = 0;
  }

  *&v35 = v15;
  *(&v35 + 1) = v16;
  v34 = 1;
  sub_24A4AC1F0();
  if (v16)
  {
    v17 = *(v3 + 16);
    if (v17 >> 8 == 2)
    {
      v18 = v17;
      v19 = *&aLocal_1[8 * v17];
      v16 = qword_24A4B8ED0[v18];
    }

    else
    {
      v20 = ((v17 >> 8) & 1) == 0;
      v19 = 0x746C7561666564;
      if (v20)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v19 = 0x6D6F74737563;
        v16 = 0xE600000000000000;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  *&v35 = v19;
  *(&v35 + 1) = v16;
  v34 = 2;
  sub_24A4AC1F0();
  v33 = 0;

  v35 = *(v3 + 40);
  v34 = 4;
  v21 = v33;
  sub_24A4AC1F0();
  if (v21)
  {
    return (*(v10 + 8))(v13, v9);
  }

  v23 = *(v3 + 64);
  *&v35 = *(v3 + 7);
  BYTE8(v35) = v23;
  v34 = 5;
  sub_24A3C9CEC(&qword_27EF3FE98, &qword_24A4B8C60);
  sub_24A421590(&qword_27EF3FEB0, &qword_27EF3FE98, &qword_24A4B8C60);
  sub_24A4AC1F0();
  v24 = *(v3 + 80);
  *&v35 = *(v3 + 9);
  BYTE8(v35) = v24;
  v34 = 6;
  sub_24A4AC1F0();
  v25 = type metadata accessor for FMFLabelledLocation();
  sub_24A37B740(v3 + *(v25 + 36), v8, &qword_27EF3F460, &unk_24A4B53B0);
  v26 = sub_24A4AAAD0();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return sub_24A37EF2C(v8, &qword_27EF3F460, &unk_24A4B53B0);
  }

  else
  {
    sub_24A4AAA90();
    v29 = v28;
    (*(v27 + 8))(v8, v26);
    v30 = v29 * 1000.0;
    v31 = v29 * 1000.0 <= -9.22337204e18;
    if (v29 * 1000.0 >= 9.22337204e18)
    {
      v31 = 1;
    }

    if (v30 != trunc(v30))
    {
      v31 = 1;
    }

    v32 = v30;
    if (v31)
    {
      v32 = 0;
    }

    *&v35 = v32;
    BYTE8(v35) = v31;
    v34 = 7;
    sub_24A3C9CEC(&qword_27EF3F418, &qword_24A4B54B0);
    sub_24A421590(&qword_27EF3F420, &qword_27EF3F418, &qword_24A4B54B0);
    sub_24A4AC1F0();
    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_24A421520(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A3C9CEC(&qword_27EF3FEA0, &qword_24A4B8C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24A421590(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_24A3CBC9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7FMFCore19FMFLabelledLocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24A4AAAD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24A3C9CEC(&qword_27EF3F460, &unk_24A4B53B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_24A3C9CEC(&qword_27EF3F3B8, &qword_24A4B5480);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = *(a1 + 8);
  v18 = *(a2 + 8);
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v18)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 24);
  v20 = *(a2 + 24);
  if (v19)
  {
    if (v20)
    {
      if (*(a1 + 16) != *(a2 + 16) || v19 != v20)
      {
        v21 = *(a2 + 24);
        if ((sub_24A4AC270() & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_21;
    }

    v23 = *(a1 + 24);
LABEL_17:

    goto LABEL_18;
  }

  if (v20)
  {
    v22 = *(a2 + 24);
    goto LABEL_17;
  }

LABEL_21:
  v26 = *(a1 + 48);
  v27 = *(a2 + 48);
  if (v26)
  {
    if (!v27 || (*(a1 + 40) != *(a2 + 40) || v26 != v27) && (sub_24A4AC270() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v27)
  {
    goto LABEL_18;
  }

  v28 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v28 = 1;
    }

    if (v28)
    {
      goto LABEL_18;
    }
  }

  v29 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if (!*(a2 + 80))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      v29 = 1;
    }

    if (v29)
    {
      goto LABEL_18;
    }
  }

  v30 = *(type metadata accessor for FMFLabelledLocation() + 36);
  v31 = *(v13 + 48);
  sub_24A37B740(a1 + v30, v16, &qword_27EF3F460, &unk_24A4B53B0);
  sub_24A37B740(a2 + v30, &v16[v31], &qword_27EF3F460, &unk_24A4B53B0);
  v32 = *(v5 + 48);
  if (v32(v16, 1, v4) == 1)
  {
    if (v32(&v16[v31], 1, v4) == 1)
    {
      sub_24A37EF2C(v16, &qword_27EF3F460, &unk_24A4B53B0);
      v24 = 1;
      return v24 & 1;
    }
  }

  else
  {
    sub_24A37B740(v16, v12, &qword_27EF3F460, &unk_24A4B53B0);
    if (v32(&v16[v31], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v31], v4);
      sub_24A421BC8();
      v24 = sub_24A4AB810();
      v33 = *(v5 + 8);
      v33(v8, v4);
      v33(v12, v4);
      sub_24A37EF2C(v16, &qword_27EF3F460, &unk_24A4B53B0);
      return v24 & 1;
    }

    (*(v5 + 8))(v12, v4);
  }

  sub_24A37EF2C(v16, &qword_27EF3F3B8, &qword_24A4B5480);
LABEL_18:
  v24 = 0;
  return v24 & 1;
}