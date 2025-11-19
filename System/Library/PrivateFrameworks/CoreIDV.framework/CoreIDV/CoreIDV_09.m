unint64_t sub_21CD71EB8()
{
  result = qword_27CE1C078;
  if (!qword_27CE1C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C078);
  }

  return result;
}

unint64_t sub_21CD71F10()
{
  result = qword_27CE1C080;
  if (!qword_27CE1C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C080);
  }

  return result;
}

unint64_t sub_21CD71F68()
{
  result = qword_27CE1C088;
  if (!qword_27CE1C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C088);
  }

  return result;
}

unint64_t sub_21CD71FC0()
{
  result = qword_27CE1C090;
  if (!qword_27CE1C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C090);
  }

  return result;
}

unint64_t sub_21CD72018()
{
  result = qword_27CE1C098;
  if (!qword_27CE1C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C098);
  }

  return result;
}

unint64_t sub_21CD72070()
{
  result = qword_27CE1C0A0;
  if (!qword_27CE1C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0A0);
  }

  return result;
}

unint64_t sub_21CD720C8()
{
  result = qword_27CE1C0A8;
  if (!qword_27CE1C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0A8);
  }

  return result;
}

unint64_t sub_21CD72120()
{
  result = qword_27CE1C0B0;
  if (!qword_27CE1C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0B0);
  }

  return result;
}

unint64_t sub_21CD72178()
{
  result = qword_27CE1C0B8;
  if (!qword_27CE1C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0B8);
  }

  return result;
}

uint64_t sub_21CD721CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964616572 && a2 == 0xE500000000000000;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA0000000000676ELL || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021CDA16E0 == a2 || (sub_21CD841A4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656873696E6966 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_21CD841A4();

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

uint64_t sub_21CD7233C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0C0, &qword_21CD9A1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CD723A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD72408(uint64_t a1, uint64_t a2)
{
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v4 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84, v5);
  v7 = &v66 - v6;
  v8 = sub_21CD837F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v78 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v66 - v15;
  v17 = type metadata accessor for MobileDocumentType.Identifier(0);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v66 - v24;
  v26 = type metadata accessor for MobileDocumentType(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26 - 8, v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v29, v32);
  v79 = &v66 - v34;
  result = MEMORY[0x28223BE20](v33, v35);
  v39 = &v66 - v38;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v40 = 0;
  v41 = a1 + 56;
  v42 = 1 << *(a1 + 32);
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  else
  {
    v43 = -1;
  }

  v44 = v43 & *(a1 + 56);
  v45 = (v42 + 63) >> 6;
  v85 = (v9 + 48);
  v76 = (v9 + 32);
  v80 = (v9 + 8);
  v83 = a2 + 56;
  v72 = a1;
  v71 = v16;
  v75 = v25;
  v70 = v37;
  v69 = v39;
  v68 = a1 + 56;
  v67 = v45;
  if (!v44)
  {
    goto LABEL_8;
  }

  do
  {
    v46 = __clz(__rbit64(v44));
    v73 = (v44 - 1) & v44;
LABEL_13:
    v74 = v40;
    v49 = *(a1 + 48);
    v82 = *(v37 + 72);
    sub_21CD77EA4(v49 + v82 * (v46 | (v40 << 6)), v39, type metadata accessor for MobileDocumentType);
    v50 = v79;
    sub_21CD77FB4(v39, v79, type metadata accessor for MobileDocumentType);
    v51 = *(a2 + 40);
    sub_21CD84264();
    sub_21CD77EA4(v50, v25, type metadata accessor for MobileDocumentType.Identifier);
    v52 = *v85;
    v53 = (*v85)(v25, 2, v8);
    if (v53)
    {
      if (v53 == 1)
      {
        v54 = 0;
      }

      else
      {
        v54 = 2;
      }

      MEMORY[0x21CF17CC0](v54);
    }

    else
    {
      (*v76)(v16, v75, v8);
      MEMORY[0x21CF17CC0](1);
      sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698]);
      sub_21CD83A64();
      (*v80)(v16, v8);
    }

    v55 = v79;
    v56 = sub_21CD84294();
    v57 = -1 << *(a2 + 32);
    v58 = v56 & ~v57;
    if (((*(v83 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
    {
LABEL_35:
      sub_21CD77F54(v55, type metadata accessor for MobileDocumentType);
      return 0;
    }

    v81 = ~v57;
    while (1)
    {
      v59 = a2;
      sub_21CD77EA4(*(a2 + 48) + v58 * v82, v31, type metadata accessor for MobileDocumentType);
      v60 = *(v84 + 48);
      sub_21CD77EA4(v31, v7, type metadata accessor for MobileDocumentType.Identifier);
      sub_21CD77EA4(v55, &v7[v60], type metadata accessor for MobileDocumentType.Identifier);
      v61 = v52(v7, 2, v8);
      if (v61)
      {
        if (v61 == 1)
        {
          sub_21CD77F54(v31, type metadata accessor for MobileDocumentType);
          if (v52(&v7[v60], 2, v8) == 1)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_21CD77F54(v31, type metadata accessor for MobileDocumentType);
          if (v52(&v7[v60], 2, v8) == 2)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_22;
      }

      sub_21CD77EA4(v7, v22, type metadata accessor for MobileDocumentType.Identifier);
      if (!v52(&v7[v60], 2, v8))
      {
        break;
      }

      sub_21CD77F54(v31, type metadata accessor for MobileDocumentType);
      (*v80)(v22, v8);
LABEL_22:
      sub_21CCAC1DC(v7);
LABEL_23:
      a2 = v59;
      v58 = (v58 + 1) & v81;
      if (((*(v83 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    v62 = v22;
    v63 = v78;
    (*v76)(v78, &v7[v60], v8);
    v77 = MEMORY[0x21CF17230](v62, v63);
    v64 = *v80;
    v65 = v63;
    v22 = v62;
    v55 = v79;
    (*v80)(v65, v8);
    sub_21CD77F54(v31, type metadata accessor for MobileDocumentType);
    v64(v22, v8);
    if ((v77 & 1) == 0)
    {
      sub_21CD77F54(v7, type metadata accessor for MobileDocumentType.Identifier);
      goto LABEL_23;
    }

LABEL_32:
    sub_21CD77F54(v7, type metadata accessor for MobileDocumentType.Identifier);
    result = sub_21CD77F54(v55, type metadata accessor for MobileDocumentType);
    a2 = v59;
    a1 = v72;
    v16 = v71;
    v40 = v74;
    v25 = v75;
    v37 = v70;
    v39 = v69;
    v41 = v68;
    v45 = v67;
    v44 = v73;
  }

  while (v73);
LABEL_8:
  v47 = v40;
  while (1)
  {
    v40 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v40 >= v45)
    {
      return 1;
    }

    v48 = *(v41 + 8 * v40);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v73 = (v48 - 1) & v48;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD72C10(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
LABEL_7:
  if (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(v3 + 48) + 16 * (v10 | (v4 << 6));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(a2 + 40);
    sub_21CD84264();
    MobileDocumentElement.Element.hash(into:)();
    v17 = sub_21CD84294();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if ((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      if (v14 > 0x11)
      {
        v21 = v15;
      }

      else
      {
        v21 = 0;
      }

      v42 = v21;
      if (v14 == 17)
      {
        v22 = v15;
      }

      else
      {
        v22 = 0;
      }

      v41 = v22;
      if (v14 == 16)
      {
        v23 = v15;
      }

      else
      {
        v23 = 0;
      }

      v40 = v23;
      if (v14 == 15)
      {
        v24 = v15;
      }

      else
      {
        v24 = 0;
      }

      v39 = v24;
      if (v14 == 14)
      {
        v25 = v15;
      }

      else
      {
        v25 = 0;
      }

      if (v14 == 13)
      {
        result = v15;
      }

      else
      {
        result = 0;
      }

      if (v14 == 12)
      {
        v26 = v15;
      }

      else
      {
        v26 = 0;
      }

      if (v14 == 11)
      {
        v27 = v15;
      }

      else
      {
        v27 = 0;
      }

      if (v14 == 10)
      {
        v28 = v15;
      }

      else
      {
        v28 = 0;
      }

      if (v14 == 9)
      {
        v29 = v15;
      }

      else
      {
        v29 = 0;
      }

      if (v14 == 8)
      {
        v30 = v15;
      }

      else
      {
        v30 = 0;
      }

      if (v14 == 7)
      {
        v31 = v15;
      }

      else
      {
        v31 = 0;
      }

      if (v14 == 6)
      {
        v32 = v15;
      }

      else
      {
        v32 = 0;
      }

      if (v14 == 5)
      {
        v33 = v15;
      }

      else
      {
        v33 = 0;
      }

      if (v14)
      {
        v34 = 0;
      }

      else
      {
        v34 = v15;
      }

      while (1)
      {
        v36 = *(a2 + 48) + 16 * v19;
        v37 = *v36;
        if (*(v36 + 8) == 1)
        {
          v38 = v14 == 1;
          switch(v37)
          {
            case 1:
              break;
            case 2:
              v38 = v14 == 2;
              break;
            case 3:
              if ((v15 & (v14 == 3)) != 0)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 4:
              if ((v15 & (v14 == 4)) != 0)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 5:
              if (v33)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 6:
              if (v32)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 7:
              if (v31)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 8:
              if (v30)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 9:
              if (v29)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 10:
              if (v28)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 11:
              if (v27)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 12:
              if (v26)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 13:
              if (result)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 14:
              if (v25)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 15:
              if (v39)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 16:
              if (v40)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 17:
              if (v41)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            case 18:
              if (v42)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
            default:
              if (v34)
              {
                goto LABEL_7;
              }

              goto LABEL_64;
          }

          if (v15 & v38)
          {
            goto LABEL_7;
          }
        }

        else
        {
          if (v37 == v14)
          {
            v35 = v15;
          }

          else
          {
            v35 = 1;
          }

          if ((v35 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

LABEL_64:
        v19 = (v19 + 1) & v20;
        if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD72F34(uint64_t a1, uint64_t a2)
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v4 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107, v5);
  v7 = &v87 - v6;
  v8 = sub_21CD837F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v98 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v96 = &v87 - v15;
  v16 = type metadata accessor for MobileDocumentType.Identifier(0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v100 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v87 - v22;
  v101 = type metadata accessor for MobileDocumentRequest();
  v24 = *(*(v101 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v101, v25);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v110 = &v87 - v29;
  result = MEMORY[0x28223BE20](v28, v30);
  v35 = &v87 - v32;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v103 = v7;
  v36 = 0;
  v37 = *(a1 + 56);
  v89 = a1 + 56;
  v38 = 1 << *(a1 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & v37;
  v88 = (v38 + 63) >> 6;
  v112 = (v9 + 48);
  v95 = (v9 + 32);
  v99 = (v9 + 8);
  v104 = a2 + 56;
  v108 = a2;
  v93 = a1;
  v106 = v8;
  v92 = v23;
  v91 = v33;
  v109 = v34;
  v90 = &v87 - v32;
LABEL_8:
  if (v40)
  {
    v41 = __clz(__rbit64(v40));
    v42 = (v40 - 1) & v40;
  }

  else
  {
    v43 = v36;
    do
    {
      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_69;
      }

      if (v36 >= v88)
      {
        return 1;
      }

      v44 = *(v89 + 8 * v36);
      ++v43;
    }

    while (!v44);
    v41 = __clz(__rbit64(v44));
    v42 = (v44 - 1) & v44;
  }

  v45 = *(a1 + 48);
  v105 = *(v33 + 72);
  sub_21CD77EA4(v45 + v105 * (v41 | (v36 << 6)), v35, type metadata accessor for MobileDocumentRequest);
  v46 = v110;
  sub_21CD77FB4(v35, v110, type metadata accessor for MobileDocumentRequest);
  v47 = *(a2 + 40);
  sub_21CD84264();
  sub_21CD77EA4(v46, v23, type metadata accessor for MobileDocumentType.Identifier);
  v111 = *v112;
  v48 = v111(v23, 2, v8);
  v97 = v42;
  if (v48)
  {
    if (v48 == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = 2;
    }

    result = MEMORY[0x21CF17CC0](v49);
  }

  else
  {
    v50 = v96;
    (*v95)(v96, v23, v8);
    MEMORY[0x21CF17CC0](1);
    sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    result = (*v99)(v50, v8);
  }

  v51 = 0;
  v52 = 0;
  v53 = *(v110 + *(v101 + 20));
  v54 = 1 << *(v53 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v53 + 64);
  v57 = (v54 + 63) >> 6;
  while (v56)
  {
LABEL_32:
    v60 = __clz(__rbit64(v56)) | (v52 << 6);
    v61 = *(v53 + 48) + 16 * v60;
    v58 = *v61;
    LOBYTE(v61) = *(v61 + 8);
    v62 = *(*(v53 + 56) + v60);
    v115 = v120;
    v116 = v121;
    v117 = v122;
    v113 = v118;
    v114 = v119;
    if (v61)
    {
      v58 = qword_21CD9AAE0[v58];
    }

    else
    {
      MEMORY[0x21CF17CC0](5);
    }

    v56 &= v56 - 1;
    MEMORY[0x21CF17CC0](v58);
    sub_21CD84284();
    result = sub_21CD84294();
    v51 ^= result;
  }

  while (1)
  {
    v59 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
      goto LABEL_68;
    }

    if (v59 >= v57)
    {
      break;
    }

    v56 = *(v53 + 64 + 8 * v59);
    ++v52;
    if (v56)
    {
      v52 = v59;
      goto LABEL_32;
    }
  }

  MEMORY[0x21CF17CC0](v51);
  v63 = sub_21CD84294();
  v64 = v108;
  v65 = -1 << *(v108 + 32);
  v66 = v63 & ~v65;
  v67 = v109;
  if (((*(v104 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
  {
LABEL_65:
    sub_21CD77F54(v110, type metadata accessor for MobileDocumentRequest);
    return 0;
  }

  v102 = ~v65;
  while (1)
  {
    sub_21CD77EA4(*(v64 + 48) + v66 * v105, v67, type metadata accessor for MobileDocumentRequest);
    v69 = *(v107 + 48);
    v70 = v103;
    sub_21CD77EA4(v67, v103, type metadata accessor for MobileDocumentType.Identifier);
    sub_21CD77EA4(v110, v70 + v69, type metadata accessor for MobileDocumentType.Identifier);
    v71 = v106;
    v72 = v111(v70, 2, v106);
    if (v72)
    {
      if (v72 == 1)
      {
        if (v111((v70 + v69), 2, v71) != 1)
        {
          goto LABEL_38;
        }
      }

      else if (v111((v70 + v69), 2, v71) != 2)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v68 = v100;
      sub_21CD77EA4(v70, v100, type metadata accessor for MobileDocumentType.Identifier);
      if (v111((v70 + v69), 2, v71))
      {
        (*v99)(v68, v71);
LABEL_38:
        sub_21CCAC1DC(v70);
        goto LABEL_39;
      }

      v73 = v98;
      (*v95)(v98, (v70 + v69), v71);
      v94 = MEMORY[0x21CF17230](v68, v73);
      v74 = *v99;
      (*v99)(v73, v71);
      v74(v68, v71);
      if ((v94 & 1) == 0)
      {
        sub_21CD77F54(v70, type metadata accessor for MobileDocumentType.Identifier);
        goto LABEL_39;
      }
    }

    result = sub_21CD77F54(v70, type metadata accessor for MobileDocumentType.Identifier);
    v75 = *(v67 + *(v101 + 20));
    if (v75 == v53)
    {
LABEL_7:
      sub_21CD77F54(v67, type metadata accessor for MobileDocumentRequest);
      result = sub_21CD77F54(v110, type metadata accessor for MobileDocumentRequest);
      a2 = v108;
      a1 = v93;
      v8 = v106;
      v23 = v92;
      v33 = v91;
      v35 = v90;
      v40 = v97;
      goto LABEL_8;
    }

    if (*(v75 + 16) == *(v53 + 16))
    {
      break;
    }

LABEL_39:
    v67 = v109;
    sub_21CD77F54(v109, type metadata accessor for MobileDocumentRequest);
    v66 = (v66 + 1) & v102;
    v64 = v108;
    if (((*(v104 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  v76 = 0;
  v77 = 1 << *(v75 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & *(v75 + 64);
  v80 = (v77 + 63) >> 6;
  while (v79)
  {
    v81 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
LABEL_60:
    v84 = v81 | (v76 << 6);
    v85 = *(*(v75 + 56) + v84);
    result = sub_21CCAAF0C(*(*(v75 + 48) + 16 * v84), *(*(v75 + 48) + 16 * v84 + 8));
    if ((v86 & 1) == 0 || v85 != *(*(v53 + 56) + result))
    {
      goto LABEL_39;
    }
  }

  v82 = v76;
  v67 = v109;
  while (1)
  {
    v76 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v76 >= v80)
    {
      goto LABEL_7;
    }

    v83 = *(v75 + 64 + 8 * v76);
    ++v82;
    if (v83)
    {
      v81 = __clz(__rbit64(v83));
      v79 = (v83 - 1) & v83;
      goto LABEL_60;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_21CD7399C()
{
  v1 = 0x6E61725461746164;
  if (*v0 != 1)
  {
    v1 = 0x5261746144776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4F79616C70736964;
  }
}

uint64_t sub_21CD73A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD77D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD73A3C(uint64_t a1)
{
  v2 = sub_21CD772A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73A78(uint64_t a1)
{
  v2 = sub_21CD772A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73AB4(uint64_t a1)
{
  v2 = sub_21CD7734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73AF0(uint64_t a1)
{
  v2 = sub_21CD7734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73B2C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_21CD73B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD73C14(uint64_t a1)
{
  v2 = sub_21CD773A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73C50(uint64_t a1)
{
  v2 = sub_21CD773A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD73C8C(uint64_t a1)
{
  v2 = sub_21CD772F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD73CC8(uint64_t a1)
{
  v2 = sub_21CD772F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequestType.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0C8, &qword_21CD9A1E0);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v37 = &v34 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0D0, &qword_21CD9A1E8);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v34 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0D8, &qword_21CD9A1F0);
  v34 = *(v38 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v38, v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0E0, &qword_21CD9A1F8);
  v17 = *(v16 - 8);
  v43 = v16;
  v44 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v34 - v20;
  v22 = v1[1];
  v41 = *v1;
  v23 = *(v1 + 16);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD772A4();
  sub_21CD842B4();
  if (v23)
  {
    if (v23 == 1)
    {
      LOBYTE(v46) = 1;
      sub_21CD7734C();
      v25 = v43;
      sub_21CD840E4();
      v46 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
      sub_21CD7746C(&qword_27CE1C100, &qword_27CE1C108);
      v26 = v36;
      sub_21CD84164();
      (*(v35 + 8))(v11, v26);
      return (*(v44 + 8))(v21, v25);
    }

    LOBYTE(v46) = 2;
    sub_21CD772F8();
    v32 = v37;
    v29 = v43;
    sub_21CD840E4();
    v46 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
    sub_21CD7746C(&qword_27CE1C100, &qword_27CE1C108);
    v33 = v40;
    sub_21CD84164();
    (*(v39 + 8))(v32, v33);
  }

  else
  {
    v28 = v34;
    LOBYTE(v46) = 0;
    sub_21CD773A0();
    v29 = v43;
    sub_21CD840E4();
    v46 = v41;
    v45 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C120, &qword_21CD9A208);
    sub_21CD77508(&qword_27CE1C128, &qword_27CE1B040);
    v30 = v38;
    v31 = v42;
    sub_21CD84164();
    if (!v31)
    {
      v46 = v22;
      v45 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C130, &qword_21CD9A210);
      sub_21CD773F4(&qword_27CE1C138, sub_21CD3FFB4);
      sub_21CD84164();
    }

    (*(v28 + 8))(v15, v30);
  }

  return (*(v44 + 8))(v21, v29);
}

uint64_t MobileDocumentRequestType.Storage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C140, &qword_21CD9A218);
  v49 = *(v46 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v46, v4);
  v52 = &v44[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C148, &qword_21CD9A220);
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C150, &qword_21CD9A228);
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v44[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C158, &unk_21CD9A230);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44[-v20];
  v22 = a1[3];
  v23 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_21CD772A4();
  v24 = v53;
  sub_21CD842A4();
  if (!v24)
  {
    v25 = v52;
    v53 = v17;
    v26 = sub_21CD840D4();
    v27 = (2 * *(v26 + 16)) | 1;
    v57 = v26;
    v58 = v26 + 32;
    v59 = 0;
    v60 = v27;
    v28 = sub_21CCD18D4();
    if (v28 == 3 || v59 != v60 >> 1)
    {
      v31 = sub_21CD83FA4();
      swift_allocError();
      v33 = v32;
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v33 = &type metadata for MobileDocumentRequestType.Storage;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
      swift_willThrow();
      (*(v53 + 8))(v21, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v28;
      if (v28)
      {
        if (v28 == 1)
        {
          LOBYTE(v61) = 1;
          sub_21CD7734C();
          v29 = v10;
          sub_21CD84034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
          sub_21CD7746C(&qword_27CE1C160, &qword_27CE1C168);
          v30 = v48;
          sub_21CD840C4();
          (*(v47 + 8))(v29, v30);
          (*(v53 + 8))(v21, v16);
        }

        else
        {
          LOBYTE(v61) = 2;
          sub_21CD772F8();
          sub_21CD84034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C0F8, &qword_21CD9A200);
          sub_21CD7746C(&qword_27CE1C160, &qword_27CE1C168);
          v39 = v46;
          sub_21CD840C4();
          v40 = v53;
          (*(v49 + 8))(v25, v39);
          (*(v40 + 8))(v21, v16);
        }

        swift_unknownObjectRelease();
        v43 = 0;
        v42 = v61;
        v37 = v51;
      }

      else
      {
        LOBYTE(v61) = 0;
        sub_21CD773A0();
        v36 = v15;
        sub_21CD84034();
        v37 = v51;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C120, &qword_21CD9A208);
        LOBYTE(v56) = 0;
        sub_21CD77508(&qword_27CE1C170, &qword_27CE1B070);
        sub_21CD840C4();
        v38 = v53;
        v41 = v36;
        v42 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C130, &qword_21CD9A210);
        v55 = 1;
        sub_21CD773F4(&qword_27CE1C178, sub_21CD400EC);
        v52 = v41;
        sub_21CD840C4();
        (*(v50 + 8))(v52, v11);
        (*(v38 + 8))(v21, v16);
        swift_unknownObjectRelease();
        v43 = v56;
      }

      *v37 = v42;
      *(v37 + 8) = v43;
      *(v37 + 16) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v54);
}

uint64_t MobileDocumentRequestType.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_21CD19BA8(v2, v3, v4);
}

uint64_t static MobileDocumentRequestType.displayRequest(documentTypes:elements:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{

  v5 = sub_21CCF0E20(v4);

  sub_21CCEF82C(&unk_282E6D0B8);
  v6 = sub_21CCF0FAC(a1);

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_21CD74BD8@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{

  v5 = sub_21CCF1064(v4);

  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  return result;
}

uint64_t MobileDocumentRequestType.documentTypes.getter()
{
  v3 = *v0;
  v4 = *(v0 + 16);
  v1 = MobileDocumentRequestType.requestedElements.getter();

  return sub_21CCE7F44(v1);
}

uint64_t MobileDocumentRequestType.requestedElements.getter()
{
  v1 = type metadata accessor for MobileDocumentRequest();
  v68 = *(v1 - 8);
  v2 = *(v68 + 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MobileDocumentType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v64 - v15;
  v17 = *v0;
  v18 = *(v0 + 8);
  v19 = *(v0 + 16);
  if (v19)
  {
    sub_21CD19BA8(*v0, *(v0 + 8), *(v0 + 16));
    v20 = sub_21CD7DBB8(MEMORY[0x277D84F90]);
    v21 = 1 << *(v17 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v17 + 56);
    v67 = v18;
    sub_21CD19BA8(v17, v18, v19);
    v24 = 0;
    v25 = (v21 + 63) >> 6;
    while (v23)
    {
      v26 = v24;
LABEL_10:
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_21CD77EA4(*(v17 + 48) + *(v68 + 9) * (v27 | (v26 << 6)), v5, type metadata accessor for MobileDocumentRequest);
      v28 = *&v5[*(v1 + 20)];

      v30 = sub_21CCE7E40(v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v20;
      sub_21CD11BF0(v30, v5, isUniquelyReferenced_nonNull_native);
      v20 = v69;
      sub_21CD77F54(v5, type metadata accessor for MobileDocumentRequest);
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v25)
      {

        sub_21CD19C4C(v17, v67, v19);
        return v20;
      }

      v23 = *(v17 + 56 + 8 * v26);
      ++v24;
      if (v23)
      {
        v24 = v26;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v64 = v14;
    sub_21CD19BA8(v17, v18, 0);
    v20 = sub_21CD7DBB8(MEMORY[0x277D84F90]);
    v32 = v17 + 56;
    v33 = 1 << *(v17 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v17 + 56);
    v67 = (v33 + 63) >> 6;

    v36 = 0;
    v37 = v18;
    v68 = v12;
    v38 = v16;
    v65 = v7;
    v66 = v17 + 56;
    while (v35)
    {
      v41 = v36;
LABEL_23:
      v42 = v17;
      v43 = *(v7 + 72);
      sub_21CD77EA4(*(v17 + 48) + v43 * (__clz(__rbit64(v35)) | (v41 << 6)), v38, type metadata accessor for MobileDocumentType);
      v44 = v38;
      v45 = v38;
      v46 = v68;
      sub_21CD77EA4(v45, v68, type metadata accessor for MobileDocumentType);
      v47 = v37;

      v48 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v20;
      v49 = sub_21CCAB040(v46);
      v51 = v20[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_36;
      }

      v55 = v50;
      if (v20[3] >= v54)
      {
        v38 = v44;
        if ((v48 & 1) == 0)
        {
          v62 = v49;
          sub_21CD76F04();
          v49 = v62;
        }
      }

      else
      {
        sub_21CD76210(v54, v48);
        v49 = sub_21CCAB040(v68);
        if ((v55 & 1) != (v56 & 1))
        {
          goto LABEL_38;
        }

        v38 = v44;
      }

      v37 = v47;
      v32 = v66;
      v35 &= v35 - 1;
      v20 = v69;
      v17 = v42;
      if (v55)
      {
        v39 = v69[7];
        v40 = *(v39 + 8 * v49);
        *(v39 + 8 * v49) = v37;

        sub_21CD77F54(v68, type metadata accessor for MobileDocumentType);
        sub_21CD77F54(v38, type metadata accessor for MobileDocumentType);
      }

      else
      {
        v69[(v49 >> 6) + 8] |= 1 << v49;
        v57 = v20[6] + v49 * v43;
        v58 = v49;
        v59 = v68;
        sub_21CD77EA4(v68, v57, type metadata accessor for MobileDocumentType);
        *(v20[7] + 8 * v58) = v37;
        sub_21CD77F54(v59, type metadata accessor for MobileDocumentType);
        sub_21CD77F54(v38, type metadata accessor for MobileDocumentType);
        v60 = v20[2];
        v53 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v53)
        {
          goto LABEL_37;
        }

        v20[2] = v61;
      }

      v36 = v41;
      v7 = v65;
    }

    while (1)
    {
      v41 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v41 >= v67)
      {

        return v20;
      }

      v35 = *(v32 + 8 * v41);
      ++v36;
      if (v35)
      {
        goto LABEL_23;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_21CD841F4();
  __break(1u);
  return result;
}

uint64_t static MobileDocumentRequestType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_21CD19BA8(v11, v2, v5);
  sub_21CD19BA8(v3, v4, v6);
  LOBYTE(v3) = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_21CD19C4C(v8, v9, v10);
  sub_21CD19C4C(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_21CD75294(uint64_t a1)
{
  v2 = sub_21CD775A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD752D0(uint64_t a1)
{
  v2 = sub_21CD775A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentRequestType.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C180, &qword_21CD9A240);
  v3 = *(v14 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v14, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = a1[4];
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD19BA8(v8, v9, v11);
  sub_21CD775A4();
  sub_21CD842B4();
  v15 = v8;
  v16 = v9;
  v17 = v11;
  sub_21CD775F8();
  v12 = v14;
  sub_21CD84164();
  sub_21CD19C4C(v15, v16, v17);
  return (*(v3 + 8))(v7, v12);
}

uint64_t sub_21CD75488(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);

    return sub_21CD41C30(a1, v3);
  }

  else
  {
    v5 = *(v1 + 8);
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v3);

    return sub_21CD421F0(a1, v5);
  }
}

uint64_t _s7CoreIDV25MobileDocumentRequestTypeV7StorageO9hashValueSivg_0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21CD84264();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentRequestType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C198, &qword_21CD9A248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD775A4();
  sub_21CD842A4();
  if (!v2)
  {
    sub_21CD7764C();
    sub_21CD840C4();
    (*(v6 + 8))(v10, v5);
    v12 = v15;
    *a2 = v14;
    *(a2 + 16) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD7577C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_21CD84264();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x21CF17CC0](v4);
    sub_21CD41C30(v6, v1);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v6, v1);
    sub_21CD421F0(v6, v2);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD75818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_21CD19BA8(v11, v2, v5);
  sub_21CD19BA8(v3, v4, v6);
  LOBYTE(v3) = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v11, &v8);
  sub_21CD19C4C(v8, v9, v10);
  sub_21CD19C4C(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_21CD758FC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_21CD84004();
  v11 = result;
  if (*(v8 + 16))
  {
    v38 = v6;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v8 + 56) + 32 * v24;
      if (v39)
      {
        a5(v28, v41);
      }

      else
      {
        sub_21CCB15A8(v28, v41);
      }

      v29 = *(v11 + 40);
      sub_21CD84264();
      sub_21CD83B74();
      result = sub_21CD84294();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a5)(v41, *(v11 + 56) + 32 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v6 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v8 + 32);
    v6 = v38;
    if (v37 >= 64)
    {
      bzero((v8 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_36:
  *v6 = v11;
  return result;
}

uint64_t sub_21CD75BC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
  result = sub_21CD84004();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = a2;
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = *(v5 + 48) + v23;
      v25 = *(v5 + 56) + v23;
      v26 = *(v24 + 8);
      v27 = *v24;
      v40 = *(v25 + 8);
      v39 = *v25;
      v28 = *(v8 + 40);
      sub_21CD84264();
      IdentityElement.rawValue.getter();
      sub_21CD83B74();

      result = sub_21CD84294();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = *(v8 + 48) + v17;
      *v18 = v27;
      *(v18 + 8) = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v39;
      *(v19 + 8) = v40;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v37)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v38;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_21CD75E98(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SynchronousExtensionPointManager.State();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C230, &qword_21CD9AAB8);
  v45 = a2;
  result = sub_21CD84004();
  v13 = result;
  if (*(v10 + 16))
  {
    v42 = v3;
    v43 = v10;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 56);
      v28 = (*(v10 + 48) + 16 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v44 + 72);
      v32 = v27 + v31 * v26;
      if (v45)
      {
        sub_21CD77FB4(v32, v46, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      else
      {
        sub_21CD77EA4(v32, v46, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      v33 = *(v13 + 40);
      sub_21CD84264();
      sub_21CD83B74();
      result = sub_21CD84294();
      v34 = -1 << *(v13 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v20 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v20 + 8 * v36);
          if (v40 != -1)
          {
            v21 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v35) & ~*(v20 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = (*(v13 + 48) + 16 * v21);
      *v22 = v29;
      v22[1] = v30;
      result = sub_21CD77FB4(v46, *(v13 + 56) + v31 * v21, type metadata accessor for SynchronousExtensionPointManager.State);
      ++*(v13 + 16);
      v10 = v43;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v10 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v15, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v41;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_21CD76210(uint64_t a1, int a2)
{
  v3 = v2;
  v62 = sub_21CD837F4();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v62, v8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v61 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MobileDocumentType(0);
  v59 = *(v14 - 8);
  v15 = *(v59 + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v20 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
  v60 = a2;
  result = sub_21CD84004();
  v22 = result;
  if (*(v19 + 16))
  {
    v53 = v3;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v58 = (v6 + 48);
    v54 = (v6 + 8);
    v55 = (v6 + 32);
    v29 = result + 64;
    v64 = v18;
    v56 = v19;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v23 << 6);
      v35 = *(v59 + 72);
      v36 = *(v19 + 48) + v35 * v34;
      v37 = v64;
      if (v60)
      {
        sub_21CD77FB4(v36, v64, type metadata accessor for MobileDocumentType);
        v63 = *(*(v19 + 56) + 8 * v34);
      }

      else
      {
        sub_21CD77EA4(v36, v64, type metadata accessor for MobileDocumentType);
        v63 = *(*(v19 + 56) + 8 * v34);
      }

      v38 = *(v22 + 40);
      sub_21CD84264();
      v39 = v61;
      sub_21CD77EA4(v37, v61, type metadata accessor for MobileDocumentType.Identifier);
      v40 = (*v58)(v39, 2, v62);
      if (v40)
      {
        if (v40 == 1)
        {
          v41 = 0;
        }

        else
        {
          v41 = 2;
        }

        MEMORY[0x21CF17CC0](v41);
      }

      else
      {
        v42 = v57;
        v43 = v62;
        (*v55)(v57, v61, v62);
        MEMORY[0x21CF17CC0](1);
        sub_21CD77F0C(&qword_27CE19380, MEMORY[0x277CC9698]);
        sub_21CD83A64();
        v44 = v43;
        v19 = v56;
        (*v54)(v42, v44);
      }

      result = sub_21CD84294();
      v45 = -1 << *(v22 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v29 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v29 + 8 * v47);
          if (v51 != -1)
          {
            v30 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_9;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v46) & ~*(v29 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      result = sub_21CD77FB4(v64, *(v22 + 48) + v35 * v30, type metadata accessor for MobileDocumentType);
      *(*(v22 + 56) + 8 * v30) = v63;
      ++*(v22 + 16);
    }

    v32 = v23;
    while (1)
    {
      v23 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v23 >= v28)
      {
        break;
      }

      v33 = v24[v23];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_42;
    }

    v52 = 1 << *(v19 + 32);
    v3 = v53;
    if (v52 >= 64)
    {
      bzero(v24, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v52;
    }

    *(v19 + 16) = 0;
  }

LABEL_42:
  *v3 = v22;
  return result;
}

uint64_t sub_21CD7677C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 32 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_21CD767EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SynchronousExtensionPointManager.State();
  result = sub_21CD77FB4(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for SynchronousExtensionPointManager.State);
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

uint64_t sub_21CD76898(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for MobileDocumentType(0);
  result = sub_21CD77FB4(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for MobileDocumentType);
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

void *sub_21CD7699C(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = sub_21CD83FF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_21CCB15A8(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_21CD76B3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
  v2 = *v0;
  v3 = sub_21CD83FF4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v23 + 8) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v2 + 56) + v17;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v4 + 48) + v17;
      *v22 = v19;
      *(v22 + 8) = v18;
      v23 = *(v4 + 56) + v17;
      *v23 = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_21CD76CAC()
{
  v1 = v0;
  v2 = type metadata accessor for SynchronousExtensionPointManager.State();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C230, &qword_21CD9AAB8);
  v6 = *v0;
  v7 = sub_21CD83FF4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_21CD77EA4(*(v6 + 56) + v28, v32, type metadata accessor for SynchronousExtensionPointManager.State);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_21CD77FB4(v27, *(v29 + 56) + v28, type metadata accessor for SynchronousExtensionPointManager.State);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_21CD76F04()
{
  v1 = v0;
  v2 = type metadata accessor for MobileDocumentType(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
  v7 = *v0;
  v8 = sub_21CD83FF4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v25 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v26 + 72) * v22;
        sub_21CD77EA4(*(v7 + 48) + v23, v6, type metadata accessor for MobileDocumentType);
        v24 = *(*(v7 + 56) + 8 * v22);
        sub_21CD77FB4(v6, *(v9 + 48) + v23, type metadata accessor for MobileDocumentType);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        LOBYTE(v4) = 1;
        sub_21CD19BA8(*a2, *(a2 + 8), 1u);
        v8 = v2;
        v9 = v3;
        v10 = 1;
LABEL_10:
        sub_21CD19BA8(v8, v9, v10);
        v11 = sub_21CD72F34(v2, v5);
        goto LABEL_13;
      }
    }

    else if (v7 == 2)
    {
      LOBYTE(v4) = 2;
      sub_21CD19BA8(*a2, *(a2 + 8), 2u);
      v8 = v2;
      v9 = v3;
      v10 = 2;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (*(a2 + 16))
  {
LABEL_11:
    sub_21CD19BA8(*a2, *(a2 + 8), v7);
    sub_21CD19BA8(v2, v3, v4);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  sub_21CD19BA8(*a2, *(a2 + 8), 0);
  sub_21CD19BA8(v2, v3, 0);
  if ((sub_21CD72408(v2, v5) & 1) == 0)
  {
    LOBYTE(v4) = 0;
    LOBYTE(v7) = 0;
    goto LABEL_12;
  }

  v11 = sub_21CD72C10(v3, v6);
  LOBYTE(v4) = 0;
  LOBYTE(v7) = 0;
LABEL_13:
  sub_21CD19C4C(v2, v3, v4);
  sub_21CD19C4C(v5, v6, v7);
  return v11 & 1;
}

unint64_t sub_21CD772A4()
{
  result = qword_27CE1C0E8;
  if (!qword_27CE1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0E8);
  }

  return result;
}

unint64_t sub_21CD772F8()
{
  result = qword_27CE1C0F0;
  if (!qword_27CE1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C0F0);
  }

  return result;
}

unint64_t sub_21CD7734C()
{
  result = qword_27CE1C110;
  if (!qword_27CE1C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C110);
  }

  return result;
}

unint64_t sub_21CD773A0()
{
  result = qword_27CE1C118;
  if (!qword_27CE1C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C118);
  }

  return result;
}

uint64_t sub_21CD773F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C130, &qword_21CD9A210);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CD7746C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C0F8, &qword_21CD9A200);
    sub_21CD77F0C(a2, type metadata accessor for MobileDocumentRequest);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CD77508(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1C120, &qword_21CD9A208);
    sub_21CD77F0C(a2, type metadata accessor for MobileDocumentType);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD775A4()
{
  result = qword_27CE1C188;
  if (!qword_27CE1C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C188);
  }

  return result;
}

unint64_t sub_21CD775F8()
{
  result = qword_27CE1C190;
  if (!qword_27CE1C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C190);
  }

  return result;
}

unint64_t sub_21CD7764C()
{
  result = qword_27CE1C1A0;
  if (!qword_27CE1C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1A0);
  }

  return result;
}

unint64_t sub_21CD776A4()
{
  result = qword_27CE1C1A8;
  if (!qword_27CE1C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1A8);
  }

  return result;
}

unint64_t sub_21CD776FC()
{
  result = qword_27CE1C1B0;
  if (!qword_27CE1C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1B0);
  }

  return result;
}

uint64_t sub_21CD77760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21CD777A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_21CD77858()
{
  result = qword_27CE1C1B8;
  if (!qword_27CE1C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1B8);
  }

  return result;
}

unint64_t sub_21CD778B0()
{
  result = qword_27CE1C1C0;
  if (!qword_27CE1C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1C0);
  }

  return result;
}

unint64_t sub_21CD77908()
{
  result = qword_27CE1C1C8;
  if (!qword_27CE1C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1C8);
  }

  return result;
}

unint64_t sub_21CD77960()
{
  result = qword_27CE1C1D0;
  if (!qword_27CE1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1D0);
  }

  return result;
}

unint64_t sub_21CD779B8()
{
  result = qword_27CE1C1D8;
  if (!qword_27CE1C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1D8);
  }

  return result;
}

unint64_t sub_21CD77A10()
{
  result = qword_27CE1C1E0;
  if (!qword_27CE1C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1E0);
  }

  return result;
}

unint64_t sub_21CD77A68()
{
  result = qword_27CE1C1E8;
  if (!qword_27CE1C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1E8);
  }

  return result;
}

unint64_t sub_21CD77AC0()
{
  result = qword_27CE1C1F0;
  if (!qword_27CE1C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1F0);
  }

  return result;
}

unint64_t sub_21CD77B18()
{
  result = qword_27CE1C1F8;
  if (!qword_27CE1C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C1F8);
  }

  return result;
}

unint64_t sub_21CD77B70()
{
  result = qword_27CE1C200;
  if (!qword_27CE1C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C200);
  }

  return result;
}

unint64_t sub_21CD77BC8()
{
  result = qword_27CE1C208;
  if (!qword_27CE1C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C208);
  }

  return result;
}

unint64_t sub_21CD77C20()
{
  result = qword_27CE1C210;
  if (!qword_27CE1C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C210);
  }

  return result;
}

unint64_t sub_21CD77C78()
{
  result = qword_27CE1C218;
  if (!qword_27CE1C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C218);
  }

  return result;
}

unint64_t sub_21CD77CD0()
{
  result = qword_27CE1C220;
  if (!qword_27CE1C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C220);
  }

  return result;
}

unint64_t sub_21CD77D28()
{
  result = qword_27CE1C228;
  if (!qword_27CE1C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C228);
  }

  return result;
}

uint64_t sub_21CD77D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F79616C70736964 && a2 == 0xEB00000000796C6ELL;
  if (v4 || (sub_21CD841A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E61725461746164 && a2 == 0xEC00000072656673 || (sub_21CD841A4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5261746144776172 && a2 == 0xEE00747365757165)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CD841A4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_21CD77EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD77F0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21CD77F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CD77FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD7803C(uint64_t a1)
{
  v2 = sub_21CD7A5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD78078(uint64_t a1)
{
  v2 = sub_21CD7A5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD780B4(uint64_t a1)
{
  v2 = sub_21CD7A6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD780F0(uint64_t a1)
{
  v2 = sub_21CD7A6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD7812C(uint64_t a1)
{
  v2 = sub_21CD7A65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD78168(uint64_t a1)
{
  v2 = sub_21CD7A65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD781A4(uint64_t a1)
{
  v2 = sub_21CD7A608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD781E0(uint64_t a1)
{
  v2 = sub_21CD7A608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentType.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C280, &qword_21CD9AB80);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v38 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C288, &qword_21CD9AB88);
  v40 = *(v44 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v44, v7);
  v46 = &v38 - v8;
  v9 = sub_21CD837F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v45 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C290, &qword_21CD9AB90);
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for MobileDocumentType.Identifier(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C298, &qword_21CD9AB98);
  v24 = *(v48 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v48, v26);
  v28 = &v38 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7A5B4();
  v30 = v10;
  sub_21CD842B4();
  sub_21CCAC174(v47, v23, type metadata accessor for MobileDocumentType.Identifier);
  v31 = (*(v10 + 48))(v23, 2, v9);
  if (v31)
  {
    if (v31 == 1)
    {
      v49 = 0;
      sub_21CD7A6B0();
      v32 = v48;
      sub_21CD840E4();
      (*(v38 + 8))(v18, v39);
    }

    else
    {
      v51 = 2;
      sub_21CD7A608();
      v37 = v41;
      v32 = v48;
      sub_21CD840E4();
      (*(v42 + 8))(v37, v43);
    }

    return (*(v24 + 8))(v28, v32);
  }

  else
  {
    v33 = v40;
    (*(v10 + 32))(v45, v23, v9);
    v50 = 1;
    sub_21CD7A65C();
    v34 = v48;
    sub_21CD840E4();
    sub_21CD7A704(&qword_27CE19428, MEMORY[0x277CC9698]);
    v35 = v44;
    sub_21CD84164();
    (*(v33 + 8))(v46, v35);
    (*(v30 + 8))(v45, v9);
    return (*(v24 + 8))(v28, v34);
  }
}

uint64_t MobileDocumentType.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2C0, &qword_21CD9ABA0);
  v66 = *(v61 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v61, v4);
  v65 = &v55 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2C8, &qword_21CD9ABA8);
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  MEMORY[0x28223BE20](v60, v7);
  v64 = &v55 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2D0, &qword_21CD9ABB0);
  v63 = *(v59 - 8);
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v59, v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2D8, &unk_21CD9ABB8);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v55 - v16;
  v18 = type metadata accessor for MobileDocumentType.Identifier(0);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v55 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v27);
  sub_21CD7A5B4();
  v29 = v69;
  sub_21CD842A4();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v69 = v18;
  v31 = v63;
  v30 = v64;
  v56 = v23;
  v57 = v26;
  v32 = v65;
  v33 = v66;
  v58 = 0;
  v34 = v67;
  v35 = sub_21CD840D4();
  v36 = (2 * *(v35 + 16)) | 1;
  v71 = v35;
  v72 = v35 + 32;
  v73 = 0;
  v74 = v36;
  v37 = sub_21CCD18D4();
  if (v37 != 3 && v73 == v74 >> 1)
  {
    if (v37)
    {
      v38 = v68;
      if (v37 == 1)
      {
        v75 = 1;
        sub_21CD7A65C();
        v39 = v30;
        v40 = v58;
        sub_21CD84034();
        if (!v40)
        {
          v41 = sub_21CD837F4();
          sub_21CD7A704(&qword_27CE19458, MEMORY[0x277CC9698]);
          v42 = v56;
          v43 = v60;
          sub_21CD840C4();
          (*(v62 + 8))(v39, v43);
          (*(v38 + 8))(v17, v13);
          swift_unknownObjectRelease();
          (*(*(v41 - 8) + 56))(v42, 0, 2, v41);
          v44 = v57;
          sub_21CD7AAC4(v42, v57, type metadata accessor for MobileDocumentType.Identifier);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v75 = 2;
      sub_21CD7A608();
      v52 = v58;
      sub_21CD84034();
      if (v52)
      {
LABEL_16:
        (*(v38 + 8))(v17, v13);
        goto LABEL_10;
      }

      (*(v33 + 8))(v32, v61);
      (*(v38 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v54 = sub_21CD837F4();
      v44 = v57;
      (*(*(v54 - 8) + 56))(v57, 2, 2, v54);
    }

    else
    {
      v75 = 0;
      sub_21CD7A6B0();
      v50 = v58;
      sub_21CD84034();
      v51 = v68;
      if (v50)
      {
        (*(v68 + 8))(v17, v13);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v70);
      }

      (*(v31 + 8))(v12, v59);
      (*(v51 + 8))(v17, v13);
      swift_unknownObjectRelease();
      v53 = sub_21CD837F4();
      v44 = v57;
      (*(*(v53 - 8) + 56))(v57, 1, 2, v53);
    }

LABEL_19:
    sub_21CD7AAC4(v44, v34, type metadata accessor for MobileDocumentType.Identifier);
    return __swift_destroy_boxed_opaque_existential_0(v70);
  }

  v45 = sub_21CD83FA4();
  swift_allocError();
  v47 = v46;
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
  *v47 = v69;
  sub_21CD84044();
  sub_21CD83F94();
  (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
  swift_willThrow();
  (*(v68 + 8))(v17, v13);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_21CD78F34(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCAC174(v2, v14, type metadata accessor for MobileDocumentType.Identifier);
  v15 = (*(v5 + 48))(v14, 2, v4);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    return MEMORY[0x21CF17CC0](v16);
  }

  else
  {
    (*(v5 + 32))(v10, v14, v4);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    return (*(v5 + 8))(v10, v4);
  }
}

uint64_t sub_21CD7910C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_21CD837F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](v9, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v4, v15, type metadata accessor for MobileDocumentType.Identifier);
  v16 = (*(v6 + 48))(v15, 2, v5);
  if (v16)
  {
    if (v16 == 1)
    {
      v17 = 0;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x21CF17CC0](v17);
  }

  else
  {
    (*(v6 + 32))(v11, v15, v5);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v6 + 8))(v11, v5);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD79348(uint64_t a1)
{
  v2 = sub_21CD7AA50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD79384(uint64_t a1)
{
  v2 = sub_21CD7AA50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2E0, &qword_21CD9ABC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentType.Identifier(0);
  sub_21CD7A704(&qword_27CE1C2F0, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CD84164();
  return (*(v3 + 8))(v7, v2);
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO4hash4intoys6HasherVz_tF_0()
{
  v1 = sub_21CD837F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MobileDocumentType.Identifier(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CCAC174(v0, v11, type metadata accessor for MobileDocumentType.Identifier);
  v12 = (*(v2 + 48))(v11, 2, v1);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 2;
    }

    return MEMORY[0x21CF17CC0](v13);
  }

  else
  {
    (*(v2 + 32))(v6, v11, v1);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    return (*(v2 + 8))(v6, v1);
  }
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO9hashValueSivg_0()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v1, v12, type metadata accessor for MobileDocumentType.Identifier);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x21CF17CC0](v14);
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2F8, &qword_21CD9ABD0);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for MobileDocumentType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842A4();
  if (!v2)
  {
    v19 = v22;
    sub_21CD7A704(&qword_27CE1C300, type metadata accessor for MobileDocumentType.Identifier);
    v20 = v24;
    sub_21CD840C4();
    (*(v23 + 8))(v12, v8);
    sub_21CD7AAC4(v20, v17, type metadata accessor for MobileDocumentType.Identifier);
    sub_21CD7AAC4(v17, v19, type metadata accessor for MobileDocumentType);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD79B98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C2E0, &qword_21CD9ABC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD7AA50();
  sub_21CD842B4();
  type metadata accessor for MobileDocumentType.Identifier(0);
  sub_21CD7A704(&qword_27CE1C2F0, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CD84164();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_21CD79D10()
{
  v1 = v0;
  v2 = sub_21CD837F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD84264();
  sub_21CCAC174(v1, v12, type metadata accessor for MobileDocumentType.Identifier);
  v13 = (*(v3 + 48))(v12, 2, v2);
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = 2;
    }

    MEMORY[0x21CF17CC0](v14);
  }

  else
  {
    (*(v3 + 32))(v7, v12, v2);
    MEMORY[0x21CF17CC0](1);
    sub_21CD7A704(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  return sub_21CD84294();
}

uint64_t static MobileDocumentType.isSupportedNationalIDCardRegion(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CD837F4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 2, v7);
  MobileDocumentType.iso18013Identifier.getter();

  sub_21CCAC244(v6, type metadata accessor for MobileDocumentType);
  return 1;
}

uint64_t static MobileDocumentType.nationalIDCard(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CD837F4();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 2, v4);
}

uint64_t sub_21CD7A16C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for MobileDocumentType(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = sub_21CD837F4();
  v8 = *(*(v7 - 8) + 56);

  return v8(v6, a3, 2, v7);
}

uint64_t sub_21CD7A22C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MobileDocumentType(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_21CCAC174(v6, a3, type metadata accessor for MobileDocumentType);
}

uint64_t _s7CoreIDV18MobileDocumentTypeV10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_21CCAC174(a1, &v27 - v19, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCAC174(a2, &v20[v21], type metadata accessor for MobileDocumentType.Identifier);
  v22 = *(v5 + 48);
  v23 = v22(v20, 2, v4);
  if (!v23)
  {
    sub_21CCAC174(v20, v14, type metadata accessor for MobileDocumentType.Identifier);
    if (!v22(&v20[v21], 2, v4))
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v24 = MEMORY[0x21CF17230](v14, v9);
      v26 = *(v5 + 8);
      v26(v9, v4);
      v26(v14, v4);
      sub_21CCAC244(v20, type metadata accessor for MobileDocumentType.Identifier);
      return v24 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v20[v21], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v20[v21], 2, v4) != 2)
  {
LABEL_9:
    sub_21CCAC1DC(v20);
    v24 = 0;
    return v24 & 1;
  }

  sub_21CCAC244(v20, type metadata accessor for MobileDocumentType.Identifier);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_21CD7A5B4()
{
  result = qword_27CE1C2A0;
  if (!qword_27CE1C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2A0);
  }

  return result;
}

unint64_t sub_21CD7A608()
{
  result = qword_27CE1C2A8;
  if (!qword_27CE1C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2A8);
  }

  return result;
}

unint64_t sub_21CD7A65C()
{
  result = qword_27CE1C2B0;
  if (!qword_27CE1C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2B0);
  }

  return result;
}

unint64_t sub_21CD7A6B0()
{
  result = qword_27CE1C2B8;
  if (!qword_27CE1C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2B8);
  }

  return result;
}

uint64_t sub_21CD7A704(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7CoreIDV18MobileDocumentTypeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD837F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MobileDocumentType.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_21CCAC174(a1, &v27 - v19, type metadata accessor for MobileDocumentType.Identifier);
  sub_21CCAC174(a2, &v20[v21], type metadata accessor for MobileDocumentType.Identifier);
  v22 = *(v5 + 48);
  v23 = v22(v20, 2, v4);
  if (v23)
  {
    if (v23 == 1)
    {
      if (v22(&v20[v21], 2, v4) == 1)
      {
        goto LABEL_10;
      }

LABEL_8:
      sub_21CCAC1DC(v20);
      return 0;
    }

    if (v22(&v20[v21], 2, v4) != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_21CCAC174(v20, v14, type metadata accessor for MobileDocumentType.Identifier);
  if (v22(&v20[v21], 2, v4))
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_8;
  }

  (*(v5 + 32))(v9, &v20[v21], v4);
  v25 = MEMORY[0x21CF17230](v14, v9);
  v26 = *(v5 + 8);
  v26(v9, v4);
  v26(v14, v4);
  if (v25)
  {
LABEL_10:
    sub_21CCAC244(v20, type metadata accessor for MobileDocumentType.Identifier);
    return 1;
  }

  sub_21CCAC244(v20, type metadata accessor for MobileDocumentType.Identifier);
  return 0;
}

unint64_t sub_21CD7AA50()
{
  result = qword_27CE1C2E8;
  if (!qword_27CE1C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C2E8);
  }

  return result;
}

uint64_t sub_21CD7AAC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CD7ABE4()
{
  result = type metadata accessor for MobileDocumentType.Identifier(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21CD7ACCC()
{
  result = qword_27CE1C338;
  if (!qword_27CE1C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C338);
  }

  return result;
}

unint64_t sub_21CD7AD24()
{
  result = qword_27CE1C340;
  if (!qword_27CE1C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C340);
  }

  return result;
}

unint64_t sub_21CD7AD7C()
{
  result = qword_27CE1C348;
  if (!qword_27CE1C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C348);
  }

  return result;
}

unint64_t sub_21CD7ADD4()
{
  result = qword_27CE1C350;
  if (!qword_27CE1C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C350);
  }

  return result;
}

unint64_t sub_21CD7AE2C()
{
  result = qword_27CE1C358;
  if (!qword_27CE1C358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C358);
  }

  return result;
}

unint64_t sub_21CD7AE84()
{
  result = qword_27CE1C360;
  if (!qword_27CE1C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C360);
  }

  return result;
}

unint64_t sub_21CD7AEDC()
{
  result = qword_27CE1C368;
  if (!qword_27CE1C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C368);
  }

  return result;
}

unint64_t sub_21CD7AF34()
{
  result = qword_27CE1C370;
  if (!qword_27CE1C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C370);
  }

  return result;
}

unint64_t sub_21CD7AF8C()
{
  result = qword_27CE1C378;
  if (!qword_27CE1C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C378);
  }

  return result;
}

unint64_t sub_21CD7AFE4()
{
  result = qword_27CE1C380;
  if (!qword_27CE1C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C380);
  }

  return result;
}

unint64_t sub_21CD7B03C()
{
  result = qword_27CE1C388;
  if (!qword_27CE1C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C388);
  }

  return result;
}

unint64_t sub_21CD7B094()
{
  result = qword_27CE1C390;
  if (!qword_27CE1C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C390);
  }

  return result;
}

unint64_t sub_21CD7B0EC()
{
  result = qword_27CE1C398;
  if (!qword_27CE1C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C398);
  }

  return result;
}

uint64_t MobileDocumentType.iso18013Identifier.getter()
{
  v1 = sub_21CD837F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = MEMORY[0x28223BE20](v1, v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for MobileDocumentType.Identifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD7B47C(v0, v15);
  v16 = (*(v2 + 48))(v15, 2, v1);
  if (v16)
  {
    if (v16 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000017;
    }
  }

  else
  {
    (*(v2 + 16))(v10, v15, v1);
    sub_21CD837D4();
    sub_21CD7B4E0();
    v18 = sub_21CD83A84();
    v19 = *(v2 + 8);
    v19(v7, v1);
    v19(v10, v1);
    if (v18)
    {
      v19(v15, v1);
      return 0xD000000000000016;
    }

    else
    {
      (*(v2 + 32))(v7, v15, v1);
      v24 = 0;
      v25 = 0xE000000000000000;
      sub_21CD83F74();
      MEMORY[0x21CF175E0](0xD000000000000026, 0x800000021CDA1700);
      v20 = sub_21CD837C4();
      MEMORY[0x21CF175E0](v20);

      MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CDA1730);
      v21 = v24;
      v22 = v25;
      sub_21CCB14E0();
      swift_allocError();
      *v23 = 9;
      *(v23 + 8) = v21;
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      swift_willThrow();
      return (v19)(v7, v1);
    }
  }
}

uint64_t sub_21CD7B47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentType.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CD7B4E0()
{
  result = qword_27CE1C3A0;
  if (!qword_27CE1C3A0)
  {
    sub_21CD837F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3A0);
  }

  return result;
}

uint64_t sub_21CD7B538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_21CCD1750(a3, v25 - v11, &unk_27CE19190, &qword_21CD8E260);
  v13 = sub_21CD83D74();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CCB1928(v12, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CD83CD4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_21CD83B54() + 32;
      sub_21CD7DB6C();

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  sub_21CD7DB6C();
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21CD7B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_21CCD1750(a3, v25 - v11, &unk_27CE19190, &qword_21CD8E260);
  v13 = sub_21CD83D74();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CCB1928(v12, &unk_27CE19190, &qword_21CD8E260);
  }

  else
  {
    sub_21CD83D64();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21CD83CD4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21CD83B54() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21CCB1928(a3, &unk_27CE19190, &qword_21CD8E260);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t WalletSettingsAnalyticsReporter.__allocating_init()()
{
  v0 = swift_allocObject();
  WalletSettingsAnalyticsReporter.init()();
  return v0;
}

uint64_t WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  *(v4 + 320) = v3;
  *(v4 + 352) = *a1;
  *(v4 + 353) = *a2;
  *(v4 + 354) = *a3;
  return MEMORY[0x2822009F8](sub_21CD7BB0C, 0, 0);
}

uint64_t sub_21CD7BB0C()
{
  v1 = *(v0 + 354);
  v2 = *(v0 + 353);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3A8, &qword_21CD9B268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CD8E2C0;
  *(inited + 32) = 0x707954746E657665;
  v6 = MEMORY[0x277D837D0];
  v7 = 0x656C62616E65;
  if (v3)
  {
    v7 = 0x656C6261736964;
  }

  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v7;
  v8 = 0xE600000000000000;
  if (v3)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  *(inited + 56) = v9;
  *(inited + 72) = v6;
  *(inited + 80) = 0x67615465676170;
  *(inited + 88) = 0xE700000000000000;
  strcpy((inited + 96), "IDOnWebsites");
  *(inited + 109) = 0;
  *(inited + 110) = -5120;
  *(inited + 120) = v6;
  *(inited + 128) = 0x54746375646F7270;
  *(inited + 136) = 0xEB00000000657079;
  *(inited + 144) = 0x797469746E656469;
  v10 = 0xE800000000000000;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = v6;
  *(inited + 176) = 0x6C61727265666572;
  v11 = 0x7261506472696874;
  if (v2)
  {
    v11 = 0x73676E6974746573;
  }

  else
  {
    v10 = 0xED00007070417974;
  }

  *(inited + 184) = 0xEE00656372756F53;
  *(inited + 192) = v11;
  *(inited + 200) = v10;
  *(inited + 216) = v6;
  *(inited + 224) = 0x614E726575737369;
  v12 = 20531;
  if (v1)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v12 = 0x74656C6C6177;
  }

  *(inited + 264) = v6;
  *(inited + 232) = 0xEA0000000000656DLL;
  *(inited + 240) = v12;
  *(inited + 248) = v8;
  v13 = sub_21CD7D664(inited);
  *(v0 + 328) = v13;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3B0, &qword_21CD9B270);
  swift_arrayDestroy();
  v14 = *(v4 + 16);
  v15 = swift_task_alloc();
  *(v0 + 336) = v15;
  *v15 = v0;
  v15[1] = sub_21CD7BDA8;

  return sub_21CCAFDC0(v13);
}

uint64_t sub_21CD7BDA8()
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(v4 + 344) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7BEF8, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_21CD7BEF8()
{
  v19 = v0;
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = v1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E24();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[43];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v11 = v0[36];
    v10 = v0[37];
    v12 = v0[38];
    v13 = sub_21CD84224();
    v15 = sub_21CCC02FC(v13, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_21CC90000, v4, v5, "Failed to send wallet settings analytics, error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x21CF18580](v9, -1, -1);
    MEMORY[0x21CF18580](v8, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t WalletSettingsAnalyticsReporter.EventType.rawValue.getter()
{
  if (*v0)
  {
    result = 0x656C6261736964;
  }

  else
  {
    result = 0x656C62616E65;
  }

  *v0;
  return result;
}

uint64_t sub_21CD7C138(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656C6261736964;
  }

  else
  {
    v4 = 0x656C62616E65;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x656C6261736964;
  }

  else
  {
    v6 = 0x656C62616E65;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();
  }

  return v9 & 1;
}

uint64_t sub_21CD7C1DC()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C25C()
{
  *v0;
  sub_21CD83B74();
}

uint64_t sub_21CD7C2C8()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CD7C350(uint64_t *a1@<X8>)
{
  v2 = 0x656C62616E65;
  if (*v1)
  {
    v2 = 0x656C6261736964;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WalletSettingsAnalyticsReporter.ReferralSource.rawValue.getter()
{
  if (*v0)
  {
    result = 0x73676E6974746573;
  }

  else
  {
    result = 0x7261506472696874;
  }

  *v0;
  return result;
}

uint64_t sub_21CD7C3E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73676E6974746573;
  }

  else
  {
    v4 = 0x7261506472696874;
  }

  if (v3)
  {
    v5 = 0xED00007070417974;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x73676E6974746573;
  }

  else
  {
    v6 = 0x7261506472696874;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xED00007070417974;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();
  }

  return v9 & 1;
}

uint64_t sub_21CD7C494()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C524()
{
  *v0;
  sub_21CD83B74();
}

uint64_t sub_21CD7C5A0()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

void sub_21CD7C638(uint64_t *a1@<X8>)
{
  v2 = 0x7261506472696874;
  if (*v1)
  {
    v2 = 0x73676E6974746573;
  }

  v3 = 0xED00007070417974;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21CD7C690@<X0>(char *a1@<X8>)
{
  v2 = sub_21CD84024();

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

uint64_t WalletSettingsAnalyticsReporter.IssuerType.rawValue.getter()
{
  if (*v0)
  {
    result = 20531;
  }

  else
  {
    result = 0x74656C6C6177;
  }

  *v0;
  return result;
}

uint64_t sub_21CD7C71C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 20531;
  }

  else
  {
    v4 = 0x74656C6C6177;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE200000000000000;
  }

  if (*a2)
  {
    v6 = 20531;
  }

  else
  {
    v6 = 0x74656C6C6177;
  }

  if (*a2)
  {
    v7 = 0xE200000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();
  }

  return v9 & 1;
}

uint64_t sub_21CD7C7B4()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C828()
{
  *v0;
  sub_21CD83B74();
}

uint64_t sub_21CD7C888()
{
  v1 = *v0;
  sub_21CD84264();
  sub_21CD83B74();

  return sub_21CD84294();
}

uint64_t sub_21CD7C904@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21CD84024();

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

void sub_21CD7C960(uint64_t *a1@<X8>)
{
  v2 = 20531;
  if (!*v1)
  {
    v2 = 0x74656C6C6177;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t WalletSettingsAnalyticsReporter.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v40[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18EC8, &unk_21CD885C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v40[-v10];
  v12 = sub_21CD83794();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v18 = sub_21CD839F4();
  __swift_project_value_buffer(v18, qword_280F78E40);
  v19 = sub_21CD839D4();
  v20 = sub_21CD83E24();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_21CC90000, v19, v20, "Initing new WalletSettingsAnalyticsReporter", v21, 2u);
    MEMORY[0x21CF18580](v21, -1, -1);
  }

  sub_21CD83784();
  v22 = type metadata accessor for IdentityAnalyticsReporter();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_startTime;
  v27 = sub_21CD83744();
  (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3B8, &qword_21CD9B278);
  v29 = *(v28 + 52);
  v30 = (*(v28 + 48) + 3) & 0x1FFFFFFFCLL;
  v31 = swift_allocObject();
  *(v31 + ((*(*v31 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_21CCFEA1C(v11, v31 + *(*v31 + *MEMORY[0x277D841D0] + 16));
  *(v25 + v26) = v31;
  v32 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_archivedTokenCache;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3C0, &qword_21CD9B280);
  v33 = swift_allocObject();
  *(v33 + 32) = 0;
  *(v33 + 16) = xmmword_21CD94260;
  *(v25 + v32) = v33;
  v34 = OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3C8, &qword_21CD9B288);
  v35 = swift_allocObject();
  *(v35 + 28) = 0;
  *(v35 + 16) = 0;
  *(v35 + 24) = 2;
  *(v25 + v34) = v35;
  (*(v13 + 16))(v25 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_samplingUUID, v17, v12);
  v36 = sub_21CD83D74();
  (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = v25;
  *(v37 + 40) = 0x74656C6C6177;
  *(v37 + 48) = 0xE600000000000000;
  strcpy((v37 + 56), "walletSettings");
  *(v37 + 71) = -18;
  *(v37 + 72) = sub_21CD7CE84;
  *(v37 + 80) = 0;

  sub_21CD7B538(0, 0, v6, &unk_21CD9B290, v37);
  v38 = *(v25 + OBJC_IVAR____TtC7CoreIDV25IdentityAnalyticsReporter_sessionStatus);
  os_unfair_lock_lock(v38 + 7);
  sub_21CD7D888(&v38[4]);
  os_unfair_lock_unlock(v38 + 7);

  (*(v13 + 8))(v17, v12);
  *(v1 + 16) = v25;
  return v1;
}

void sub_21CD7CE84(void *a1)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = a1;
  oslog = sub_21CD839D4();
  v4 = sub_21CD83E34();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_21CC90000, oslog, v4, "WalletSettingsAnalyticsReporter failed to initialize %@", v5, 0xCu);
    sub_21CCB1928(v6, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v6, -1, -1);
    MEMORY[0x21CF18580](v5, -1, -1);
  }
}

uint64_t WalletSettingsAnalyticsReporter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t WalletSettingsAnalyticsReporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21CD7D038(_BYTE *a1, _BYTE *a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21CCC01B8;

  return WalletSettingsAnalyticsReporter.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(a1, a2, a3);
}

unint64_t sub_21CD7D0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C400, &unk_21CD9B590);
    v3 = sub_21CD84014();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21CCA996C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D1E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1A998, &unk_21CD91CC0);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE18EE0, &qword_21CD885D0);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CC91EF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D314(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3E8, &unk_21CD9B550);
    v3 = sub_21CD84014();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21CCA996C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3F8, &unk_21CD9B570);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v11, &qword_27CE18F28, &qword_21CD88618);
      v5 = v11;
      result = sub_21CCAAF8C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21CC91EF8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D550(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C248, &unk_21CD9AAD0);
    v3 = sub_21CD84014();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 16);
      v7 = *(i - 1);
      v8 = *i;
      result = sub_21CCAAE2C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21CD7D664(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C240, &unk_21CD9B580);
    v3 = sub_21CD84014();
    v4 = a1 + 32;

    while (1)
    {
      sub_21CCD1750(v4, &v13, &qword_27CE1C3B0, &qword_21CD9B270);
      v5 = v13;
      v6 = v14;
      result = sub_21CCA996C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21CC91EF8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CD7D794(uint64_t a1)
{
  v4 = v1[3];
  v14 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = v1[10];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21CCC01B8;

  return sub_21CCAD75C(a1, v14, v4, v5, v6, v7, v8, v10);
}

unint64_t sub_21CD7D8A8()
{
  result = qword_27CE1C3D0;
  if (!qword_27CE1C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3D0);
  }

  return result;
}

unint64_t sub_21CD7D900()
{
  result = qword_27CE1C3D8;
  if (!qword_27CE1C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3D8);
  }

  return result;
}

unint64_t sub_21CD7D958()
{
  result = qword_27CE1C3E0;
  if (!qword_27CE1C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1C3E0);
  }

  return result;
}

uint64_t dispatch thunk of WalletSettingsAnalyticsReporting.sendWalletSettingsToggled(eventType:referralSource:issuerType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_21CCC01B8;

  return v15(a1, a2, a3, a4, a5);
}

unint64_t sub_21CD7DB6C()
{
  result = qword_27CE18EF8;
  if (!qword_27CE18EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE18EF8);
  }

  return result;
}

unint64_t sub_21CD7DBB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C3F0, &unk_21CD9B560);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1C238, &unk_21CD9AAC0);
    v9 = sub_21CD84014();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_21CCD1750(v11, v7, &qword_27CE1C3F0, &unk_21CD9B560);
      result = sub_21CCAB040(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = type metadata accessor for MobileDocumentType(0);
      result = sub_21CD3EE50(v7, v16 + *(*(v17 - 8) + 72) * v15);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21CD7DD88()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C408 = result;
  unk_27CE1C410 = v8;
  return result;
}

uint64_t sub_21CD7DEF8()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C418 = result;
  unk_27CE1C420 = v8;
  return result;
}

uint64_t sub_21CD7E068()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C428 = result;
  unk_27CE1C430 = v8;
  return result;
}

uint64_t sub_21CD7E1D8()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C438 = result;
  unk_27CE1C440 = v8;
  return result;
}

uint64_t sub_21CD7E348()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C448 = result;
  unk_27CE1C450 = v8;
  return result;
}

uint64_t sub_21CD7E4B8()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C458 = result;
  unk_27CE1C460 = v8;
  return result;
}

uint64_t sub_21CD7E628()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C468 = result;
  unk_27CE1C470 = v8;
  return result;
}

uint64_t sub_21CD7E798()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83AF4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
    swift_once();
  }

  v6 = qword_27CE3EA38;
  sub_21CD83824();
  result = sub_21CD83B34();
  qword_27CE1C478 = result;
  unk_27CE1C480 = v8;
  return result;
}

uint64_t sub_21CD7E908()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83654();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CD83AF4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21CD83664();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  sub_21CD83A94();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_27CE1C518);
  (*(v4 + 16))(v8, v15, v3);
  sub_21CD83824();
  sub_21CD83684();
  result = sub_21CD83B44();
  qword_27CE1C488 = result;
  unk_27CE1C490 = v17;
  return result;
}

uint64_t sub_21CD7EB7C(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t static WebPresentmentLocalizedString.confirmVerificationBody(deviceName:)()
{
  v0 = sub_21CD83664();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  sub_21CD8298C();
  return sub_21CD83B44();
}

void *SendableXPCConnection.__allocating_init(machServiceName:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v16 = sub_21CD83B04();

  v17 = [v15 initWithMachServiceName:v16 options:4096];

  sub_21CCB3200(a9, v22);
  swift_allocObject();
  v18 = sub_21CD81E3C(v17, a3, a4, a5, a6, a7, a8, v22, a10, a11);

  sub_21CC94F4C(a6);
  sub_21CC94F4C(a4);

  sub_21CCB1928(a9, &qword_27CE19160, &unk_21CD88740);
  return v18;
}

uint64_t SendableXPCConnection.performWithRemoteObjectProxy<A>(_:onCancel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_21CD7EE00, 0, 0);
}

uint64_t sub_21CD7EE00()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v7[2] = v2;
  v7[3] = v4;
  v7[4] = v3;
  v7[5] = v1;
  v8 = *(MEMORY[0x277D85A10] + 4);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_21CD7EF20;
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return MEMORY[0x282200830](v11, &unk_21CD9B618, v5, sub_21CD822A8, v7, 0, 0, v10);
}

uint64_t sub_21CD7EF20()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7F068, 0, 0);
  }

  else
  {
    v5 = v3[9];
    v4 = v3[10];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_21CD7F068()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

id SendableXPCConnection.wrapped.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

uint64_t SendableXPCConnection.interruptionHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_21CD822B4(a1, a2, &block_descriptor_74, &selRef_setInterruptionHandler_);

  return sub_21CC94F4C(a1);
}

uint64_t SendableXPCConnection.invalidationHandler.setter(uint64_t a1, uint64_t a2)
{
  sub_21CD822B4(a1, a2, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_21CC94F4C(a1);
}

uint64_t SendableXPCConnection.exportedObject.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  sub_21CCB3200(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v13, v14);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6, v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_21CD84194();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setExportedObject_];
  swift_unknownObjectRelease();
  os_unfair_lock_unlock((v3 + 24));
  return sub_21CCB1928(a1, &qword_27CE19160, &unk_21CD88740);
}

void SendableXPCConnection.exportedObject.getter(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if ([*(v3 + 16) exportedObject])
  {
    sub_21CD83EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  *a1 = v4;
  a1[1] = v5;

  os_unfair_lock_unlock((v3 + 24));
}

void (*SendableXPCConnection.exportedObject.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  *(v3 + 64) = v1;
  SendableXPCConnection.exportedObject.getter(v3);
  return sub_21CD7F448;
}

void sub_21CD7F448(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    sub_21CCB3200(*a1, v2 + 32);
    SendableXPCConnection.exportedObject.setter(v2 + 32);
    sub_21CCB1928(v2, &qword_27CE19160, &unk_21CD88740);
  }

  else
  {
    SendableXPCConnection.exportedObject.setter(*a1);
  }

  free(v2);
}

uint64_t (*SendableXPCConnection.interruptionHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) interruptionHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21CD823BC;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21CD823CC;
    *(v6 + 24) = v5;
    return sub_21CD82394;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_21CD7F5B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = SendableXPCConnection.interruptionHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_21CD828FC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_21CD7F624(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21CD828E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_21CC91FBC(v3);
  sub_21CD822B4(v6, v5, &block_descriptor_74, &selRef_setInterruptionHandler_);

  return sub_21CC94F4C(v6);
}

uint64_t (*SendableXPCConnection.interruptionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.interruptionHandler.getter();
  a1[1] = v3;
  return sub_21CD7F724;
}

uint64_t (*SendableXPCConnection.invalidationHandler.getter())()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = [*(v1 + 16) invalidationHandler];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21CD828E0;
    *(v5 + 24) = v4;
    os_unfair_lock_unlock((v1 + 24));
    v6 = swift_allocObject();
    *(v6 + 16) = sub_21CD828FC;
    *(v6 + 24) = v5;
    return sub_21CD828E4;
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
    return 0;
  }
}

uint64_t sub_21CD7F82C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = SendableXPCConnection.invalidationHandler.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_21CD828FC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_21CD7F89C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21CD828E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_21CC91FBC(v3);
  sub_21CD822B4(v6, v5, &block_descriptor_71, &selRef_setInvalidationHandler_);

  return sub_21CC94F4C(v6);
}

uint64_t (*SendableXPCConnection.invalidationHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = SendableXPCConnection.invalidationHandler.getter();
  a1[1] = v3;
  return sub_21CD7F99C;
}

uint64_t sub_21CD7F9B0(uint64_t *a1, char a2, uint64_t a3, SEL *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a1;
  if (a2)
  {
    sub_21CC91FBC(v7);
    sub_21CD822B4(v4, v5, a3, a4);
    sub_21CC94F4C(v4);
  }

  else
  {
    sub_21CD822B4(v7, v5, a3, a4);
  }

  return sub_21CC94F4C(v4);
}

void *SendableXPCConnection.__allocating_init(listenerEndpoint:interface:invalidationHandler:interruptionHandler:exportedInterface:exportedObject:connectionErrorMapper:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  sub_21CCB3200(a8, v21);
  swift_allocObject();
  v17 = sub_21CD81E3C(v16, a2, a3, a4, a5, a6, a7, v21, a9, a10);

  sub_21CC94F4C(a5);
  sub_21CC94F4C(a3);

  sub_21CCB1928(a8, &qword_27CE19160, &unk_21CD88740);
  return v17;
}

uint64_t sub_21CD7FBE0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(void *, void *))
{
  v16 = a11(a1, a2);

  sub_21CC94F4C(a5);
  sub_21CC94F4C(a3);

  return v16;
}

uint64_t SendableXPCConnection.deinit()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  return v0;
}

Swift::Void __swiftcall SendableXPCConnection.invalidate()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  [*(v1 + 16) invalidate];

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t SendableXPCConnection.__deallocating_deinit()
{
  SendableXPCConnection.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21CD7FD5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x2822009F8](sub_21CD7FDAC, 0, 0);
}

uint64_t sub_21CD7FDAC()
{
  v1 = v0[7];
  v2 = v0[3];
  v0[8] = SendableXPCConnection.wrapped.getter();
  v3 = *(v1 + 80);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21CD7FE64;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v9 = v0[2];

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v9, v4, v8, v6, v3, v7);
}

uint64_t sub_21CD7FE64()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21CD7FFA0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_21CD7FFA0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  return MEMORY[0x2822009F8](sub_21CD8002C, 0, 0);
}

uint64_t sub_21CD8002C()
{
  v1 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v2 = swift_allocObject();
  *(v0 + 64) = v2;
  *(v2 + 24) = 0;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v2;
  *(v3 + 40) = v4;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_21CD80168;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000023, 0x800000021CD9E250, sub_21CD823F4, v3, v8);
}

uint64_t sub_21CD80168()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_21CD802E8;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_21CD80284;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CD80284()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_21CD802E8()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

void sub_21CD80354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v19 - v11;
  if (a1)
  {
    v13 = sub_21CD83D74();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a4;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = a2;
    sub_21CC91FBC(a1);

    sub_21CD5C550(0, 0, v12, &unk_21CD9B690, v14);
  }

  else
  {
    if (qword_280F77E40 != -1)
    {
      swift_once();
    }

    v15 = sub_21CD839F4();
    __swift_project_value_buffer(v15, qword_280F78E40);
    v20 = sub_21CD839D4();
    v16 = sub_21CD83E24();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21CC90000, v20, v16, "SendableXPCConnection onCancel is nil", v17, 2u);
      MEMORY[0x21CF18580](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_21CD80568(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *a4;
  return MEMORY[0x2822009F8](sub_21CD805B4, 0, 0);
}

uint64_t sub_21CD805B4()
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v1 = sub_21CD839F4();
  v0[7] = __swift_project_value_buffer(v1, qword_280F78E40);
  v2 = sub_21CD839D4();
  v3 = sub_21CD83E14();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CC90000, v2, v3, "SendableXPCConnection executing cancellation handler", v4, 2u);
    MEMORY[0x21CF18580](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  v0[8] = SendableXPCConnection.wrapped.getter();
  v10 = swift_allocObject();
  v0[9] = v10;
  v11 = *(v5 + 80);
  v10[2] = v11;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = v7;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_21CD80784;
  v14 = MEMORY[0x277D84F78] + 8;

  return NSXPCConnection.performWithRemoteObjectProxy<A, B>(of:_:)(v12, v13, &unk_21CD9B6A0, v10, v11, v14);
}

uint64_t sub_21CD80784()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_21CD808A4;
  }

  else
  {
    v6 = *(v2 + 64);
    v5 = *(v2 + 72);

    v4 = sub_21CCB78BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CD808A4()
{
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];

  v5 = v1;
  v6 = sub_21CD839D4();
  v7 = sub_21CD83E34();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[11];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21CC90000, v6, v7, "SendableXPCConnection error occurred when cancelling the task: %@", v10, 0xCu);
    sub_21CCB1928(v11, &qword_27CE18F68, &unk_21CD88800);
    MEMORY[0x21CF18580](v11, -1, -1);
    MEMORY[0x21CF18580](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21CD80A10(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_21CCC01B8;

  return v8(a2);
}

uint64_t SendableXPCConnection.performSynchronouslyWithRemoteObjectProxy<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v31[0] = a3;
  v31[1] = a2;
  v4 = *(*v3 + 80);
  v5 = sub_21CD83EA4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = v31 - v9;
  v11 = *(v4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8, v13);
  v15 = v31 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = SendableXPCConnection.wrapped.getter();
  v39 = sub_21CD82404;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_21CD80FA4;
  v38 = &block_descriptor_9;
  v18 = _Block_copy(&aBlock);
  v41[5] = v16;

  v19 = [v17 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v18);

  sub_21CD83EE4();
  swift_unknownObjectRelease();
  sub_21CCB15A8(v41, &aBlock);
  v20 = swift_dynamicCast();
  v21 = *(v11 + 56);
  if (v20)
  {
    v21(v10, 0, 1, v4);
    (*(v11 + 32))(v15, v10, v4);
    swift_beginAccess();
    v22 = *(v16 + 16);
    if (!v22)
    {
      v32(v15);
      (*(v11 + 8))(v15, v4);
      __swift_destroy_boxed_opaque_existential_0(v41);
    }

    v24 = v3[3];
    v23 = v3[4];
    v25 = v22;
    v24(v22);
    swift_willThrow();

    (*(v11 + 8))(v15, v4);
  }

  else
  {
    v21(v10, 1, 1, v4);
    (*(v33 + 8))(v10, v34);
    aBlock = 0;
    v36 = 0xE000000000000000;
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v41, v41[3]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    v26 = sub_21CD842E4();
    MEMORY[0x21CF175E0](v26);

    v27 = aBlock;
    v28 = v36;
    sub_21CCB14E0();
    swift_allocError();
    *v29 = 2;
    *(v29 + 8) = v27;
    *(v29 + 16) = v28;
    *(v29 + 24) = 0;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
}

id sub_21CD80F50(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_21CD80FA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_21CD8100C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v10 = sub_21CD83D14();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE19190, &qword_21CD8E260);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v26 - v19;
  v21 = sub_21CD83D74();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v11 + 16))(v15, a1, v10);
  v22 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v26;
  *(v23 + 5) = a6;
  *(v23 + 6) = a2;
  (*(v11 + 32))(&v23[v22], v15, v10);
  v24 = &v23[(v12 + v22 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v24 = v27;
  *(v24 + 1) = a4;

  sub_21CD5C550(0, 0, v20, &unk_21CD9B680, v23);
}

uint64_t sub_21CD81250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v18;
  v8[14] = a6;
  v8[15] = a7;
  v8[12] = a4;
  v8[13] = a5;
  v10 = *(*(v18 - 8) + 64) + 15;
  v8[18] = swift_task_alloc();
  v11 = sub_21CD83EA4();
  v8[19] = v11;
  v12 = *(v11 - 8);
  v8[20] = v12;
  v13 = *(v12 + 64) + 15;
  v8[21] = swift_task_alloc();
  v14 = *(a8 - 8);
  v8[22] = v14;
  v15 = *(v14 + 64) + 15;
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CD8139C, 0, 0);
}

uint64_t sub_21CD8139C()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[12];
  v3 = v0[13];
  os_unfair_lock_lock((v4 + 24));
  sub_21CD81A24((v4 + 16), v3, v1, v2, (v0 + 2));
  os_unfair_lock_unlock((v4 + 24));
  v5 = v0[21];
  v6 = v0[22];
  v7 = v0[16];
  sub_21CCB15A8((v0 + 2), (v0 + 6));
  v8 = swift_dynamicCast();
  v9 = *(v6 + 56);
  if (v8)
  {
    v11 = v0[22];
    v10 = v0[23];
    v12 = v0[21];
    v13 = v0[16];
    v14 = v0[14];
    v9(v12, 0, 1, v13);
    (*(v11 + 32))(v10, v12, v13);
    v33 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_21CD81738;
    v17 = v0[23];
    v18 = v0[18];
    v19 = v0[15];

    return v33(v18, v17);
  }

  else
  {
    v22 = v0[20];
    v21 = v0[21];
    v23 = v0[19];
    v24 = v0[17];
    v25 = v0[13];
    v9(v21, 1, 1, v0[16]);
    (*(v22 + 8))(v21, v23);
    sub_21CD83F74();
    MEMORY[0x21CF175E0](0xD000000000000014, 0x800000021CD9E2A0);
    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    sub_21CD84184();
    MEMORY[0x21CF175E0](0xD000000000000013, 0x800000021CD9E2C0);
    v26 = sub_21CD842E4();
    MEMORY[0x21CF175E0](v26);

    sub_21CCB14E0();
    v27 = swift_allocError();
    *v28 = 2;
    *(v28 + 8) = 0;
    *(v28 + 16) = 0xE000000000000000;
    *(v28 + 24) = 0;
    v0[10] = v27;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
    sub_21CD83D14();
    sub_21CD83CF4();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v29 = v0[23];
    v30 = v0[21];
    v31 = v0[18];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_21CD81738()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_21CD8193C;
  }

  else
  {
    v3 = sub_21CD8184C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CD8184C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  sub_21CD83D04();
  (*(v2 + 8))(v1, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[23];
  v8 = v0[21];
  v9 = v0[18];

  v10 = v0[1];

  return v10();
}

uint64_t sub_21CD8193C()
{
  v1 = v0[25];
  v2 = v0[17];
  v3 = v0[13];
  (*(v0[22] + 8))(v0[23], v0[16]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  sub_21CD83CF4();
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CD81A24@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v9 = sub_21CD83D14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v21 - v13;
  v15 = *a1;
  (*(v10 + 16))(v21 - v13, a2, v9);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v10 + 32))(v17 + v16, v14, v9);
  aBlock[4] = sub_21CD82644;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CD80FA4;
  aBlock[3] = &block_descriptor_62;
  v18 = _Block_copy(aBlock);

  v19 = [v15 remoteObjectProxyWithErrorHandler_];
  _Block_release(v18);
  sub_21CD83EE4();
  return swift_unknownObjectRelease();
}

uint64_t sub_21CD81C30(void *a1)
{
  if (qword_280F77E40 != -1)
  {
    swift_once();
  }

  v2 = sub_21CD839F4();
  __swift_project_value_buffer(v2, qword_280F78E40);
  v3 = a1;
  v4 = sub_21CD839D4();
  v5 = sub_21CD83E34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21CD84224();
    v10 = sub_21CCC02FC(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21CC90000, v4, v5, "XPC connection error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x21CF18580](v7, -1, -1);
    MEMORY[0x21CF18580](v6, -1, -1);
  }

  sub_21CCB14E0();
  v11 = swift_allocError();
  *v12 = 4;
  *(v12 + 8) = 0xD000000000000014;
  *(v12 + 16) = 0x800000021CD9E300;
  *(v12 + 24) = a1;
  v15 = v11;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  sub_21CD83D14();
  return sub_21CD83CF4();
}

void *sub_21CD81E3C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  [a1 setRemoteObjectInterface_];
  if (a3)
  {
    v32 = a3;
    v33 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21CCB3270;
    v31 = &block_descriptor_68;
    a3 = _Block_copy(&aBlock);
  }

  [a1 setInvalidationHandler_];
  _Block_release(a3);
  if (a5)
  {
    v32 = a5;
    v33 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21CCB3270;
    v31 = &block_descriptor_65_0;
    a5 = _Block_copy(&aBlock);
  }

  [a1 setInterruptionHandler_];
  _Block_release(a5);
  [a1 setExportedInterface_];
  sub_21CCB3200(a8, &aBlock);
  v18 = v31;
  if (v31)
  {
    v19 = __swift_project_boxed_opaque_existential_0(&aBlock, v31);
    v20 = *(v18 - 1);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19, v19);
    v23 = &aBlock - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_21CD84194();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }

  else
  {
    v24 = 0;
  }

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19170, &unk_21CD8F690);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  *(v25 + 16) = a1;
  v10[2] = v25;
  v10[3] = a9;
  v10[4] = a10;
  v26 = a1;

  [v26 activate];
  sub_21CCB1928(a8, &qword_27CE19160, &unk_21CD88740);
  return v10;
}

uint64_t sub_21CD821E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CCC01B8;

  return sub_21CD7FD5C(a1, v5, v7, v6, v4);
}

void sub_21CD822B4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v9 = *(v4 + 16);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  if (a1)
  {
    v12[4] = a1;
    v12[5] = a2;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_21CCB3270;
    v12[3] = a3;
    v11 = _Block_copy(v12);
  }

  else
  {
    v11 = 0;
  }

  [v10 *a4];
  _Block_release(v11);
  os_unfair_lock_unlock((v9 + 24));
}

uint64_t sub_21CD82394()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_21CD823CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21CD824C8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  v17 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v6 = *(sub_21CD83D14() - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_21CCC498C;

  return sub_21CD81250(a1, v8, v9, v10, v1 + v7, v12, v13, v17);
}

uint64_t sub_21CD82644(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE191A0, &qword_21CD88650);
  v5 = *(*(sub_21CD83D14() - 8) + 80);

  return sub_21CD81C30(a1);
}

uint64_t sub_21CD826EC(uint64_t a1)
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
  v10[1] = sub_21CCC01B8;

  return sub_21CD80568(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_21CD827C0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_21CCC498C;

  return sub_21CD80A10(a1, a2, v9);
}

id sub_21CD82900()
{
  type metadata accessor for BundleToken();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27CE3EA38 = result;
  return result;
}

uint64_t sub_21CD8298C()
{
  v0 = sub_21CD83834();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v3 = sub_21CD83654();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CD83AF4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = sub_21CD83AD4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  sub_21CD83AC4();
  sub_21CD83AB4();
  sub_21CD83AA4();
  sub_21CD83AB4();
  sub_21CD83AE4();
  if (qword_27CE18BB0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_27CE1C518);
  (*(v4 + 16))(v8, v15, v3);
  sub_21CD83824();
  return sub_21CD83674();
}

uint64_t sub_21CD82C4C()
{
  v0 = sub_21CD83654();
  __swift_allocate_value_buffer(v0, qword_27CE1C518);
  v1 = __swift_project_value_buffer(v0, qword_27CE1C518);
  *v1 = type metadata accessor for ResourceBundleClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}